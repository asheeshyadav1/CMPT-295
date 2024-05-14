/*
 * Filename: main.c
 *
 * Purpose: Test driver for our calculator 
 *          in Assignment 4 Question 3
 * 
 * Date: Feb. 2023
 *
 */

#include <stdlib.h>  // atoi()
#include <stdio.h>   // printf()

int is_lessThan(int x, int y);  // changed XX to is_lessThan
int plus(int x, int y);
int minus(int x, int y);
int mul(int x, int y);


int main(int argc, char *argv[]) {
  int x = 0;
  int y = 0;
  int result = 0;

  if (argc == 3) {
    x = atoi(argv[1]);
    y = atoi(argv[2]);

    result = is_lessThan(x, y); // changed XX to is_lessThan
    printf("%d < %d -> %d\n", x, y, result); //changed ??? to <

    result = plus(x, y);
    printf("%d + %d = %d\n", x, y, result);

    result = minus(x, y);
    printf("%d - %d = %d\n", x, y, result);

    result = mul(x, y);
     printf("%d * %d = %d\n", x, y, result);

  } else {
      printf("Must supply 2 integers arguments.\n");
      return 1;
  }

  return 0;
}
