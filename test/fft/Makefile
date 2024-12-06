TARGET=fft
include ../shared/Makefile.shared

$(TARGET): $(TARGET).o
	$(CC) -g $(TARGET).o -lm $(SNIPER_LDFLAGS) -o $(TARGET)
       
run_$(TARGET):

	 ../../run-sniper -v -n 4 -c 3Dmem_64cores_HBM3  ./fft
	# ../../run-sniper -v -n 4 -c gainestown_3Dmem ./fft 
	# ../../benchmarks/run-sniper -v -n 4 -c gainestown_3D --benchmarks=./fft, ./fft, ./fft, ./fft

CLEAN_EXTRA=viz
