# GEMM_AVX2_FMA3
sgemm and dgemm subroutine for large matrices, slightly outperform Intel MKL(2019 update 4).

Instructions: AVX2, FMA3

Interface: FORTRAN, 32-bit integer

Performance: SGEMM 963-976 GFLOPS (MKL2019: 944-951), DGEMM 477-481 GFLOPS (MKL2019: 466-469), at M=N=K=20000, on i9-9900K with AVX-offset = 6 and OMP_NUM_THREADS=8.
