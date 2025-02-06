

AMD DOC: https://docs.amd.com/r/en-US/pg276-axi-hbm/HBM-Address-Map-and-Protocol-Considerations
RAx---BDx---BAx----CAx
Row 0, Bank Group 0, Bank address 0, Column 0.
Row 0, Bank Group 1, Bank address 0, and Column 0.
CH-BG-BNK


Bank Groups as Secondary Parallelism:
Each channel contains multiple bank groups (BGs). Interleaving by BG next allows overlapping commands to different BGs, leveraging tCCD_L (shorter latency between BGs) vs. tCCD_S (longer latency within the same BG).


https://www.synopsys.com/designware-ip/technical-bulletin/ddr4-bank-groups.html
https://www.cs.utexas.edu/~skeckler/pubs/MICRO_2017_Fine_Grained_DRAM.pdf








-----------------------------------------------------------------------------------------------------


Shailja


ro-- row, ra-- rank, bg-- bank group, ba-- bank, ch-- channel, co-- column


but 8H just simply have 8 bank groups each channel so 4 bank group each PC(Psuedo channel)


so in 8H if 256 banks 8 bits then


b0-b3: channel PC0-PC15
b4-b5: banks in a bank_group B0,B1,B2,B3
b6-b7: 4 nos. bank groups in a PC in 8H, So SID bit gets added with BG here as MSB, but she used HBM flag instead,as if addresses keep alternating between the SIDs so no consecutive read/write accesses are










-------------------------------------------------------------------------------------------------------


Logic


1. First interleaving: channels : as independednt channels so managed by independednt controllers so direct parallel access of sequential address
2. Bnak-groups: parllelsim within a channel
3. Banks: parallislm within a bank group
4. SID: last as it justs add the storage capacity ??


bank = ((((ch + (sid << 3)) * bg_count) + bg) * banks_per_bg) + b









