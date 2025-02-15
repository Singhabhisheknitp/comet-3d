#include <vector>
#include "dram_cntlr.h"
#include "dram_trace_collect.h"
#include "memory_manager.h"
#include "core.h"
#include "log.h"
#include "subsecond_time.h"
#include "stats.h"
#include "fault_injection.h"
#include "shmem_perf.h"
#include "simulator.h"
#include "magic_server.h"
#include <stdint.h>
#include <inttypes.h>
#include "config.hpp"
#include "config.h"
#include "math.h"

using namespace std;

#define LOW_POWER 0     // Memory power mode.
#define NORMAL_POWER 1
#define HBM2E
#define BANK_COUNTERS
// #define HMC


// Global variables are initialized to 0 by default

#ifdef BANK_COUNTERS
    #define ACCUMULATION_TIME     (1000)    // Till 200 us bank counts will be accumalated

    #ifndef HBM2E
        UInt64 BANK_ADDRESS_BITS;
        UInt64 BANK_OFFSET_IN_PA;
        UInt64 NUM_OF_CHANNELS;
        UInt64 BANK_MASK;
    #endif

    UInt64 NUM_OF_BANKS;

    UInt64 BANKS_PER_LAYER;
    UInt64 BANKS_PER_CHANNEL;
  
    String TYPE_OF_STACK;

    unsigned long num_of_dram_reads;
    unsigned long num_of_dram_writes;

    UInt64 read_access_count_per_bank[MAX_NUM_OF_BANKS];
    UInt64 read_access_count_export[MAX_NUM_OF_BANKS];

    UInt64 read_access_count_per_bank_lowpower[MAX_NUM_OF_BANKS];
    UInt64 read_access_count_export_lowpower[MAX_NUM_OF_BANKS];
    UInt64 bank_mode_export[MAX_NUM_OF_BANKS]; // For tracking memory bank power modes.

    UInt32 read_access_count;
    UInt64 read_interval_start_time;
    UInt32 read_bank_accessed;
    UInt32 read_last_printed_timestamp;

    UInt64 write_access_count_per_bank[MAX_NUM_OF_BANKS];
    UInt64 write_access_count_export[MAX_NUM_OF_BANKS];

    UInt64 write_access_count_per_bank_lowpower[MAX_NUM_OF_BANKS];
    UInt64 write_access_count_export_lowpower[MAX_NUM_OF_BANKS];

    UInt32 write_access_count;
    UInt64 write_interval_start_time;
    UInt32 write_bank_accessed;
    UInt32 write_last_printed_timestamp;

    UInt32 total_access_count;
    uintptr_t address_ptr;
        
    int on_entry_to_roi_read;
    int on_entry_to_roi_write;
    UInt64 roi_start_time_read;
    UInt64 roi_start_time_write;

        
    vector<read_trace_data> rdt;
    vector<write_trace_data> wrt;
    UInt64 read_adv_count;
    UInt64 write_adv_count;
    UInt32 row_accessed;

#endif

#define ENABLE_CHANNEL_PARTITIONING 0


UInt32 MCP_FLAG;
UInt32 HBM_FLAG;




#ifdef HBM2E
    #define BANK_OFFSET_IN_PA       (6)
    #define ROW_OFFSET_IN_PA        (18)

    #define BANK_ADDRESS_BITS       (8)
    #define ROW_ADDRESS_BITS        (14)

    #define BANK_MASK             ( ( ( 1<<(BANK_ADDRESS_BITS) ) - 1) << BANK_OFFSET_IN_PA) // Bank Address starts bank_offset bits from LSB
    #define ROW_MASK             ( ( ( 1<<(ROW_ADDRESS_BITS) ) - 1) << ROW_OFFSET_IN_PA) 
    
    
    #define HBM_CHANNEL_MASK        (15)
    #define HBM_BANK_MASK           (3) 
    #define HBM_BANK_GROUP_MASK     (1)

    #define NUM_OF_CHANNEL_ADD_BITS (4)       //log(NUM_OF_CHANNELS) with base 2.
    #define NUM_OF_CH_AND_BANK_BITS (6)      // log(NUM_OF_CHANNELS) + log(BANKS_PER_BG)
   
    
    #define NUM_OF_CHANNELS         (16)
    #define BANK_GROUPS_PER_CHANNEL (2)
    #define BANKS_PER_BG            (4)  

        
#endif

#ifdef HBM2e
    #define BANK_OFFSET_IN_PA       (6)
    #define ROW_OFFSET_IN_PA        (18)

    #define BANK_ADDRESS_BITS       (8)
    #define ROW_ADDRESS_BITS        (14)

    #define BANK_MASK             ( ( ( 1<<(BANK_ADDRESS_BITS) ) - 1) << BANK_OFFSET_IN_PA) // Bank Address starts bank_offset bits from LSB
    #define ROW_MASK             ( ( ( 1<<(ROW_ADDRESS_BITS) ) - 1) << ROW_OFFSET_IN_PA) 
    
    
    #define HBM_CHANNEL_MASK        (15)
    #define HBM_BANK_MASK           (3) 
    #define HBM_BANK_GROUP_MASK     (1)

    #define NUM_OF_CHANNEL_ADD_BITS (4)       //log(NUM_OF_CHANNELS) with base 2.
    #define NUM_OF_CH_AND_BANK_BITS (6)      // log(NUM_OF_CHANNELS) + log(BANKS_PER_BG)
   
    
    #define NUM_OF_CHANNELS         (16)
    #define BANK_GROUPS_PER_CHANNEL (2)
    #define BANKS_PER_BG            (4)  

        
#endif

//#define CALL_TRACE 0
    
void read_memory_config(core_id_t requester)
{    TYPE_OF_STACK = Sim()->getCfg()->getStringArray("memory/type_of_stack", requester);
     NUM_OF_BANKS = Sim()->getCfg()->getInt("memory/num_banks");

    #ifdef HMC
        NUM_OF_CHANNELS = Sim()->getCfg()->getInt("memory/num_channels");
        BANK_OFFSET_IN_PA = Sim()->getCfg()->getInt("memory/bank_offset_in_pa");
        BANK_ADDRESS_BITS = log2(NUM_OF_BANKS);
        if (TYPE_OF_STACK == "DDR")
            BANKS_PER_LAYER = NUM_OF_BANKS;
        else
            BANKS_PER_LAYER = NUM_OF_CHANNELS;

        BANK_MASK = (((1<<(BANK_ADDRESS_BITS))-1) << BANK_OFFSET_IN_PA);
    #endif
   
    
    BANKS_PER_CHANNEL = (NUM_OF_BANKS/NUM_OF_CHANNELS) - 1;
}

void dram_read_trace(IntPtr address, core_id_t requester, SubsecondTime now, UInt64 m_reads)  
{

    address_ptr = address;

    SInt32 memory_controllers_interleaving = 0;
    memory_controllers_interleaving = Sim()->getCfg()->getInt("perf_model/dram/controllers_interleaving");

    if(Sim()->getMagicServer()->inROI())
    {
          
        if(on_entry_to_roi_read==0)
        {
            on_entry_to_roi_read=1;
            roi_start_time_read = now.getUS();
            read_last_printed_timestamp = roi_start_time_read;
        }
        num_of_dram_reads++;
  
        UInt32 i = 0;
        if(total_access_count==0){
            registerStatsMetric("dram", 0 , "myreads", &m_reads);
            for(i = 0; i < NUM_OF_BANKS; i = i + 1){
                read_access_count_per_bank[i]=0;
                read_access_count_per_bank_lowpower[i]=0;
            }
        }

        ++total_access_count;
        
        //read_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);
        
        #ifdef HBM2E
            UInt32 temp = ((address & BANK_MASK) >> BANK_OFFSET_IN_PA);
            row_accessed = ((address & ROW_MASK) >> ROW_OFFSET_IN_PA);
            UInt32 HBM_Channel = temp & HBM_CHANNEL_MASK;
            UInt32 HBM_Bank    = ((temp & (HBM_BANK_MASK << NUM_OF_CHANNEL_ADD_BITS)) >> NUM_OF_CHANNEL_ADD_BITS);
            UInt32 HBM_BankGroup = ((temp & (HBM_BANK_GROUP_MASK << NUM_OF_CH_AND_BANK_BITS)) >> NUM_OF_CH_AND_BANK_BITS);
            //printf("temp=%d, HBM_Channel=%d, HB_Bank=%d, HBM_BankGroup=%d\n", temp, HBM_Channel, HBM_Bank, HBM_BankGroup);
            if(ENABLE_CHANNEL_PARTITIONING){
                read_bank_accessed = ((requester/memory_controllers_interleaving + HBM_FLAG*NUM_OF_CHANNELS) * BANK_GROUPS_PER_CHANNEL + HBM_BankGroup) * BANKS_PER_BG + HBM_Bank;
                HBM_FLAG++;
                if(HBM_FLAG == 2)
                    HBM_FLAG = 0;
            }
            else{
                read_bank_accessed = ((HBM_Channel + HBM_FLAG*8) * BANK_GROUPS_PER_CHANNEL + HBM_BankGroup) * BANKS_PER_BG + HBM_Bank;
                HBM_FLAG++;
                if(HBM_FLAG == 2)
                    HBM_FLAG = 0;
            }
        #endif



        #ifdef HMC

            if(TYPE_OF_STACK ==  "3Dmem" || TYPE_OF_STACK == "2.5D") {
                if(ENABLE_CHANNEL_PARTITIONING)
                    read_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);
                else {
                    read_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + MCP_FLAG % NUM_OF_CHANNELS;
                    MCP_FLAG++;
                    if(MCP_FLAG == NUM_OF_CHANNELS)
                        MCP_FLAG = 0;
                }
            }
            else {
                if(TYPE_OF_STACK == "3D") {
                    if(ENABLE_CHANNEL_PARTITIONING)
                        read_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);
                    else {
                        read_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + MCP_FLAG % (NUM_OF_CHANNELS*1);
                        MCP_FLAG++;
                        if(MCP_FLAG == (NUM_OF_CHANNELS*1))
                            MCP_FLAG = 0;
                    }  
                }
                else {
                    if(TYPE_OF_STACK ==  "DDR") {
                        read_bank_accessed = ((address & BANK_MASK) >> BANK_OFFSET_IN_PA);
                        // printf("read_bank_accessed is %lu\n", read_bank_accessed);
                    }
                    else {
                        printf("Invalid type of stack\n");
                        exit(0);
                    }
                }
                
            }
        
        #endif
        //printf("\nRead banked accessed %d\n", read_bank_accessed) ;

        UInt64 current_time = now.getUS();
        //printf("Current time is %lu\n", current_time);
        
        
        if (current_time > ACCUMULATION_TIME + read_interval_start_time){
            read_interval_start_time = current_time - (current_time % ACCUMULATION_TIME);
            rdt.push_back(read_trace_data());
            while(read_last_printed_timestamp + ACCUMULATION_TIME < read_interval_start_time){
                rdt[read_adv_count].rd_interval_start_time = read_last_printed_timestamp + ACCUMULATION_TIME;
                rdt[read_adv_count].read_access_count_per_epoch = 0;
                for(UInt32 i = 0; i < NUM_OF_BANKS; i = i + 1 ){
                    rdt[read_adv_count].bank_read_access_count[i] = 0;
                    rdt[read_adv_count].bank_read_access_count_lowpower[i] = 0;
                }
                ++read_adv_count;
                read_last_printed_timestamp =  read_last_printed_timestamp + ACCUMULATION_TIME;
                rdt.push_back(read_trace_data());
            }

            rdt[read_adv_count].rd_interval_start_time = read_interval_start_time;
            rdt[read_adv_count].read_access_count_per_epoch = read_access_count;
           
            for(UInt32 i = 0; i < NUM_OF_BANKS; i = i + 1 ){
                rdt[read_adv_count].bank_read_access_count[i] = read_access_count_per_bank[i];
                rdt[read_adv_count].bank_read_access_count_lowpower[i] = read_access_count_per_bank_lowpower[i];
                read_access_count_export[i] = read_access_count_per_bank[i];
                read_access_count_export_lowpower[i] = read_access_count_per_bank_lowpower[i];
                read_access_count_per_bank[i]=0;
                read_access_count_per_bank_lowpower[i]=0;
              }
            ++read_adv_count;
            read_access_count=0;
            read_last_printed_timestamp = read_interval_start_time;
        }
        else {
            if (Sim()->m_bank_modes[read_bank_accessed] == NORMAL_POWER)
            {
                ++read_access_count_per_bank[read_bank_accessed];
               
            }
            else
            {
                ++read_access_count_per_bank_lowpower[read_bank_accessed];
            }
            ++read_access_count;
        }
    }
    // printf("address is  : %lu and read_bank_accessed is : %lu",address,read_bank_accessed);
}

void
dram_write_trace(IntPtr address, core_id_t requester, SubsecondTime now, UInt64 m_writes)
{
    address_ptr = address;
   
    SInt32 memory_controllers_interleaving = 0;
    memory_controllers_interleaving = Sim()->getCfg()->getInt("perf_model/dram/controllers_interleaving");

    if(Sim()->getMagicServer()->inROI())
    {

        if(on_entry_to_roi_write==0)
        {
            on_entry_to_roi_write=1;
            roi_start_time_write = now.getUS();
            write_last_printed_timestamp = roi_start_time_write;
        }
        num_of_dram_writes++;
    
        #ifdef DEBUG
        static int access_count = 1;
        printf("Dir. MSI: Write Access Count = %d\n",access_count++);
        #endif

        UInt32 i = 0;
        if(total_access_count==0){
            registerStatsMetric("dram", 0 , "mywrites", &m_writes);
            for(i = 0; i < NUM_OF_BANKS; i = i + 1){
                write_access_count_per_bank[i]=0;
                write_access_count_per_bank_lowpower[i]=0;
            }
        }

        ++total_access_count;
        
        //write_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);


        #ifdef HBM2E
            UInt32 temp= ((address & BANK_MASK) >> BANK_OFFSET_IN_PA);
            UInt32 HBM_Channel = temp & HBM_CHANNEL_MASK;
            UInt32 HBM_Bank    = ((temp & (HBM_BANK_MASK << NUM_OF_CHANNEL_ADD_BITS)) >> NUM_OF_CHANNEL_ADD_BITS);
            UInt32 HBM_BankGroup = ((temp & (HBM_BANK_GROUP_MASK << NUM_OF_CH_AND_BANK_BITS)) >> NUM_OF_CH_AND_BANK_BITS);
            if(ENABLE_CHANNEL_PARTITIONING){
                write_bank_accessed = ((requester/memory_controllers_interleaving + HBM_FLAG*NUM_OF_CHANNELS) * BANK_GROUPS_PER_CHANNEL + HBM_BankGroup) * BANKS_PER_BG + HBM_Bank;
                HBM_FLAG++;
                if(HBM_FLAG == 2)
                    HBM_FLAG = 0;
            }
            else{
                write_bank_accessed = ((HBM_Channel + HBM_FLAG*8) * BANK_GROUPS_PER_CHANNEL + HBM_BankGroup) * BANKS_PER_BG + HBM_Bank;
                HBM_FLAG++;
                if(HBM_FLAG == 2)
                    HBM_FLAG = 0;
            }
        #endif


        #ifdef HMC
            if(TYPE_OF_STACK ==  "3Dmem" || TYPE_OF_STACK == "2.5D") {
                if(ENABLE_CHANNEL_PARTITIONING)
                    write_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);
                else {
                    write_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + MCP_FLAG % NUM_OF_CHANNELS;
                    MCP_FLAG++;
                    if(MCP_FLAG == NUM_OF_CHANNELS)
                        MCP_FLAG = 0;
                }
            }
            else {
                if(TYPE_OF_STACK == "3D") {
                    if(ENABLE_CHANNEL_PARTITIONING)
                        write_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);
                    else {
                        write_bank_accessed = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + MCP_FLAG % (NUM_OF_CHANNELS*1);
                        MCP_FLAG++;
                        if(MCP_FLAG == (NUM_OF_CHANNELS*1))
                            MCP_FLAG = 0;
                    }
                }
                else {
                    if(TYPE_OF_STACK ==  "DDR") {
                        write_bank_accessed = ((address & BANK_MASK) >> BANK_OFFSET_IN_PA);
                    }
                    else {
                        printf("Invalid type of stack\n");
                        exit(0);
                    }
                }
                
            }
        #endif  
       
        UInt64 current_time = now.getUS();
       
        
        
        if (current_time > ACCUMULATION_TIME + write_interval_start_time){
            write_interval_start_time = current_time - (current_time % ACCUMULATION_TIME);
            wrt.push_back(write_trace_data());
            while(write_last_printed_timestamp + ACCUMULATION_TIME < write_interval_start_time){
                wrt[write_adv_count].wr_interval_start_time = write_last_printed_timestamp + ACCUMULATION_TIME;
                wrt[write_adv_count].write_access_count_per_epoch = 0;
                for(UInt32 i = 0; i < NUM_OF_BANKS; i = i + 1 ){
                    wrt[write_adv_count].bank_write_access_count[i] = 0;
                    wrt[write_adv_count].bank_write_access_count_lowpower[i] = 0;
                }
                ++write_adv_count;
                write_last_printed_timestamp =  write_last_printed_timestamp + ACCUMULATION_TIME;
                wrt.push_back(write_trace_data());
            }

            wrt[write_adv_count].wr_interval_start_time = write_interval_start_time;
            wrt[write_adv_count].write_access_count_per_epoch = write_access_count;
            //printf("\nWrite:");
            for(UInt32 i = 0; i < NUM_OF_BANKS; i = i + 1 ){
                //printf("%d,", write_access_count_per_bank[i]);
                wrt[write_adv_count].bank_write_access_count[i] = write_access_count_per_bank[i];
                write_access_count_export[i] = write_access_count_per_bank[i];
                write_access_count_per_bank[i]=0;

                wrt[write_adv_count].bank_write_access_count_lowpower[i] = write_access_count_per_bank_lowpower[i];
                write_access_count_export_lowpower[i] = write_access_count_per_bank_lowpower[i];
                write_access_count_per_bank_lowpower[i]=0;
              }
            ++write_adv_count;
            write_access_count=0;
            write_last_printed_timestamp = write_interval_start_time;
        }
        else {
            
            if (Sim()->m_bank_modes[write_bank_accessed] == NORMAL_POWER)
            {
                ++write_access_count_per_bank[write_bank_accessed];
                
            }
            else
            {
                ++write_access_count_per_bank_lowpower[write_bank_accessed];
            }
            ++write_access_count;
        }
    }
    // printf("address is  : %lu and read_bank_accessed is : %lu",address,read_bank_accessed);
}

//  Moved this to a separate function to be used by other files.
UInt32
get_address_bank(IntPtr address, core_id_t requester)
{
    SInt32 memory_controllers_interleaving = 0;
    memory_controllers_interleaving = Sim()->getCfg()->getInt("perf_model/dram/controllers_interleaving");

    UInt32 bank = -1;

    if(TYPE_OF_STACK ==  "3Dmem" || TYPE_OF_STACK == "2.5D") {
        if(ENABLE_CHANNEL_PARTITIONING) {
            bank = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);
            return bank;
        }
        else {
            bank = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + MCP_FLAG % NUM_OF_CHANNELS;
            return bank;
        }
    }
    else {
        if(TYPE_OF_STACK == "3D") {
            if(ENABLE_CHANNEL_PARTITIONING)
            {
                bank = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + (requester/memory_controllers_interleaving);
                return bank;
            }
            else {
                bank = (((address & BANK_MASK) >> BANK_OFFSET_IN_PA) & BANKS_PER_CHANNEL) * BANKS_PER_LAYER + MCP_FLAG % (NUM_OF_CHANNELS*1);
                return bank;
            }
        }
        else {
            if(TYPE_OF_STACK ==  "DDR") {
                bank = ((address & BANK_MASK) >> BANK_OFFSET_IN_PA);
                return bank;
            }
            else {
                printf("Invalid type of stack\n");
                return -1;
            }
        }
    }
}
