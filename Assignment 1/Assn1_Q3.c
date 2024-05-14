/* 
 * Filename: Assn1_Q3.c
 * Class Invariants: None
 * Description: functions showing memeory address, binary conversion and masking concepts
 * Date: 1/26/2024 
 * Authors: Computer Systems(3rd Edition) + AL + Asheesh Yadav
 * Student number: 301584113
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h> 

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, size_t len) {
  size_t i;
  for (i = 0; i < len; i++)
    printf("%p\n", (void*)&start[i]);

  printf("\n");

  for (i = 0; i < len; i++)
    printf("%.2x\t", start[i]);

  return; 
}


// Question 3 b.
/* 

In the output of the code we can see it is little endian
based on where Most Significant Byte(MSB) and Least 
Significant BYTE(LSB) were placed. In the output we
got that 00 was storeed at the highest address and that
39 was stored at the Lowest address, this then goes to 
signify the computer we are working on is little
endian(putting the LSB first and then putting the
highest at the end).

*/

// Question 3 c.
void show_bytes_2(byte_pointer start, size_t len) {
  size_t i;
  for (i = 0; i < len; i++)
    printf("%p 0x%.2x\n", (void*)(start + i), *(start + i)); //this line of code does everything
                                                          // everything done in the first func()
                                                          // just in a different way
  printf("\n");
  return;		
}

// Question 3 d.
void show_bits(int decimal) {

    int bitsLength = 0;

    // getting the length for the bit; got it through the help of chatgpt
    for (unsigned int mask = 1; mask != 0; mask <<= 1) {
        ++bitsLength;
    }

    // Print the sign bit
    if (decimal < 0) {
        printf("1");
        decimal = ~(~decimal + 1); // done to get the twos complement 
                                  // for a number that is negative
                                  // bing AI helped me in understanding this 
                                  // and fixed my original code to this 
    } else {
        printf("0");
    }

    // printing the bits in reverse order(as shown in lecture)
    for (int i = bitsLength - 1; i >= 0; i--) {
        // logic statement to get the binary bits(0's and 1s)
        int binaryValue = (decimal >> i) & 1; 
        printf("%d", binaryValue);
    }

    printf("\n");
}

// Question 3 e. 
int mask_LSbits(int n) {

  int value = 0; // var to store masked value

  int maskedBits = 0; //var to work with masked values

  //initial size of bits(from lecture)
  int initialSize = pow(2,3); 

  // increase size depending on number
  int trueSize = sizeof(int) * initialSize; 

  // invalid input that is too small
  if (n <= 0) { 
        return 0;
  }

  if (n >= trueSize) {
      return ~0; // sets all bits to 1
  }

  // this sets the value to 2^n using left shift
  value = 1 << n; 
  
  // sets all bits from LSb to MSb to 1
  maskedBits = -1 + value; 

  return maskedBits;

}

// Pre-written code from the original zip file 
void show_int(int x) {
  printf("\nival = %d\n", x); 
  show_bytes((byte_pointer) &x, sizeof(int)); 
  show_bytes_2((byte_pointer) &x, sizeof(int)); 
  return;	
}

void show_float(float x) {
  printf("fval = %f\n", x); 	
  show_bytes((byte_pointer) &x, sizeof(float));
  show_bytes_2((byte_pointer) &x, sizeof(float)); 
  return;	
}

void show_pointer(void *x) {
  printf("pval = %p\n", x); 
  show_bytes((byte_pointer) &x, sizeof(void *));
  show_bytes_2((byte_pointer) &x, sizeof(void *));
  return;	
}
