/* 
 * Filename: Assn1_main.c
 *
 * Description: Test driver for Assn1_Q3.c
 *
 * Authors: AL + Asheesh Yadav
 * Student number: 301584113
 */
 
#include <stdio.h>
#include <stdlib.h>


typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer, size_t);
void show_bytes_2(byte_pointer, size_t);
void show_bits(int);
void show_int(int);
void show_float(float);
void show_pointer(void *);
int  mask_LSbits(int);

int main() {
    int ival = 12345;
    float fval = (float) ival;
    int *pval = &ival;

    show_int(ival);
    show_float(fval);
    show_pointer(pval);

    
    show_bits(12345);
    show_bits(-12345);

    int result1 = mask_LSbits(15);
    printf("mask_LSbits(4): %d\n", result1);

    int result2 = mask_LSbits(32);
    printf("mask_LSbits(0): %d\n", result2);  // Expected output: 0

    return 0;

}