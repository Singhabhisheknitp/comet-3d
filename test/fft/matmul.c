#include <stdio.h>
#include <stdlib.h>
#include "../../include/sim_api.h"

#define N 128

int main() {
    double A[N][N], B[N][N], C[N][N];
    int i, j, k;


    // Initialize matrices with some values
    for(i = 0; i < N; i++) {
        for(j = 0; j < N; j++) {
            A[i][j] = (double)(i + j);
            B[i][j] = (double)(i * j);
            C[i][j] = 0.0;
        }
    }

    // Matrix multiplication
     SimRoiStart();
    for(i = 0; i < N; i++) {
        for(j = 0; j < N; j++) {
            for(k = 0; k < N; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
     SimRoiEnd();

    // Just print a single value to verify computation happened
    printf("C[50][50] = %f\n", C[50][50]);

    return 0;
}