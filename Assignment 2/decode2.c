/*
 * FileName: decode2.c
 * Class Description: transcribe the assembly code from HW 3.58 
 *                    and write the corresponding C code.
 * Class Invariant: Must function exactly as the assembly code given to us.
 * Author: AL and Asheesh
 * Last modified on: February 11, 2024
 */
#include <stdio.h>

//  parameter-to-register mapping:
//  x-> %rdi, y-> %rsi, z-> %rdx
long decode2(long x, long y, long z) {

    // Subtract z from y and store the result into delta
    long delta = y - z; // subq %rdx, %rsi -> %rsi = %rsi - %rdx

    // Multiply x with the delta and store it into x
    x = x * delta; // imulq %rsi, %rdi -> %rdi = %rdi * %rsi
    
    // Store the value of delta into shifterVar
    long shifterVar = delta; // movq %rsi, %rax -> %rax = %rsi

    // Shift delta left by 63 bits and store the result in shifterVar
    shifterVar = delta << 63;  // salq $63, %rax -> %rax = %rax << 63

    // Shift ShifterVar right by 63 bits
    shifterVar = shifterVar >> 63; // sarq $63, %rax -> %rax = %rax >> 63

    // Return the result of a bitwise XOR operation between x and shifterVar
    return x ^ shifterVar; // xorq %rdi, %rax -> %rax = %rdi ^ %rax

} // ret 