#include <stdio.h>
#include <stdlib.h>
#include "../../../include/sim_api.h"
// #include <omp.h>

#define SIZE 8192*16
#define CACHE_LINE 64  // typical cache line size in bytes

int main() {
    // Allocate arrays with some padding to ensure alignment
    double *A = (double *)aligned_alloc(CACHE_LINE, SIZE * sizeof(double));
    double *B = (double *)aligned_alloc(CACHE_LINE, SIZE * sizeof(double));
    double *C = (double *)aligned_alloc(CACHE_LINE, SIZE * sizeof(double));

    // Initialize arrays
    for(int i = 0; i < SIZE; i++) {
        A[i] = i * 1.0;
        B[i] = i * 2.0;
    }

    // Print addresses for first few elements
    // printf("Array address patterns:\n");
    // for(int i = 0; i < 8; i++) {
    //     printf("A[%d] address: %p, offset: %lu\n", 
    //            i, (void*)&A[i], ((unsigned long)&A[i]) & 0xFF);
    // }
    // printf("\n");

    // Start timing/measurement region
    SimRoiStart();

    // Add arrays with explicit loads to observe memory pattern
    // #pragma omp parallel for
    for(int i = 0; i < SIZE; i++) {
        C[i] = A[i] + B[i];     
    }

    SimRoiEnd();

    // Verify results and prevent optimization
    // double sum = 0;
    // for(int i = 0; i < SIZE; i++) {
    //     sum += C[i];
    // }
    // printf("Checksum: %f\n", sum);

    // Clean up
    free(A);
    free(B);
    free(C);

    return 0;
}