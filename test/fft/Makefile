TARGET=fft
include ../shared/Makefile.shared

$(TARGET): $(TARGET).o
	$(CC) -g $(TARGET).o -lm $(SNIPER_LDFLAGS) -o $(TARGET)
       
run_$(TARGET):

	strace -f -e trace=execve /../run-sniper -v -n 4 -c check  ./fft
	# ../../run-sniper -v -n 4 -c gainestown_3Dmem ./fft 
	# ../../benchmarks/run-sniper -v -n 4 -c gainestown_3D --benchmarks=./fft, ./fft, ./fft, ./fft

CLEAN_EXTRA=viz
