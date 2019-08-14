CC = gcc
CCFLAGS = -fopenmp --shared -fPIC -march=haswell -O3
SRCFILE = src/gemm_kernel.S src/gemm_driver.c

default: DGEMM.so SGEMM.so

DGEMM.so: $SRCFILE
	$(CC) -DDOUBLE $(CCFLAGS) $^ -o $@
  
SGEMM.so: $SRCFILE
	$(CC) $(CCFLAGS) $^ -o $@

clean:
	rm -f DGEMM.so SGEMM.so
