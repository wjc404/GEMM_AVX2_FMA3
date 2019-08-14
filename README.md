# GEMM_AVX2_FMA3
sgemm and dgemm subroutine for large matrices, slightly outperform Intel MKL2018

Instructions: AVX2, FMA3

Interface: FORTRAN, 32-bit integer

Performance: SGEMM 970-975 GFLOPS (MKL2018: 945-948), DGEMM 480 GFLOPS (MKL2018: 468), at M=N=K=20000, on i9-9900K with AVX-offset = 6 and OMP_NUM_THREADS=8.
