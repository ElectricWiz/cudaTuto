#include<stdio.h>
#include<stdlib.h>

__global__ void print_from_gpu(void) {
    printf("Hello from GPU! from thread {%d,%d} From device %d\n", threadIdx.x,blockIdx.x);
}

int main(void) {
    printf("Hello world from Host!\n");
    print_from_gpu<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}