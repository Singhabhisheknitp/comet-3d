#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#define ARRAY_SIZE 16


int main() {
    // Allocate an array with some padding to ensure alignment
    int *array = (int *)malloc(ARRAY_SIZE * sizeof(int));
    
    // Initialize array with some values
    for (int i = 0; i < ARRAY_SIZE; i++) {
        array[i] = i;
    }
    
    free(array);
    return 0;
}