/*
Filename: assemblyCodeRepresentation.c
Description: This file contains a C function representative of the assemply code
             given in our Question 2 for Assignment 4
Author: Asheesh Yadav
Date: March 1st, 2024
*/

// the function takes in a long and integer paramter and returns a long value
//the function provided is a C function that is similar to the assembly code
//attached also comments statung where the code came from in the assembly code

//Parameter to register mapping: long x-> %rdi, int n-> %esi
long func(long x, int n) {

    //long result-> %rax
    // result is in %rax, initialized to 0 (movl $0, %eax)
    long result = 0; 

    //long mask-> %rdx
    long mask;

    // (1) mask stored in %rdx, initialized to 1 (movl $1, %edx)
    // (2) the loop continues as long as mask is not 0 (testq %rdx, %rdx)
    // (3) mask is left-shifted by n places in each iteration (salq %cl, %rdx)

    for (mask = 1 /*(1)*/; mask != 0/*(2)*/; mask = mask << n/*(3)*/) {

        // result is updated with the bitwise OR of its current value and 
        //the bitwise AND of x and mask (orq %r8, %rax)
        result |= (x & mask);

    }

    // result is returned in %rax
    return result;
}