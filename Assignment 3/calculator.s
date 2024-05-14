#   Filename: calculator.s
#   Author: Asheesh Yadav 
#   Description: This file constains the implementations of a calculator from main.c
                 # that takes in 2 integers and does the following: finds the smallest number 
                # gets sum, difference, and product. 
#   Date: March 1st, 2024

    
	.globl	is_lessThan 
	.globl	plus
	.globl	minus
	.globl	mul

# Register Mapping: x->%edi, y->%esi, result->%eax
is_lessThan: # Description: will compare two integers and return 1 if first is less then second,
							#0 otherwise 
	xorl	%eax, %eax # Set the result(%eax) value to 0
	cmpl	%esi, %edi # Compare the first(%edi) and second(%esi) numbers
	setl	%al         # Set the return value to 1 if the first is less than the second  
	ret                 # Return the result(%eax)

plus: # Description: Performs integer addition
# Requirement:
# - you cannot use add* instruction
# - you cannot use a loop

leal (%edi, %esi), %eax #add x(%edi) and y(%esi) then store value in
                        # in result(%eax)
ret #return result (%eax)

minus: # Description: Performs integer subtraction
# Requirement:
# - you cannot use sub* instruction
# - you cannot use a loop

notl %esi # negavatize y(%esi) number bit patter
          # through 2's complement

incl %esi #add 1 to y(%esi) (as per the end step of 2's complement)

leal (%edi, %esi), %eax #add x(%edi) and your negative value y(%esi)
                        # then store it into result(%eax)

ret #return result (%eax)


mul: # Description: Performs integer multiplication - when both operands are non-negative!
# You can assume that both operands are non-negative.
# Requirements:
# - you cannot use imul* instruction 
#   (or any kind of instruction that multiplies such as mul)
# - you must use a loop

# algorithm logic: 
    #  Initialize the result(%eax) to 0
    #  While the second number (%esi) is not zero:
    #  Add the x(%edi) to the result
    #  knock down the y(%esi) by 1 
    #  Return the result(%eax)
    # its sort of like a counter that keeps adding 
    # using the logic of 3+3+3+3+3 = 3*5 = 15
    #when we get the second value to 0 we stop and return our countr(result) 

    xorl    %eax, %eax # Initialize the result to 0

1:  testl   %esi, %esi # Check if the second operand is 0

    jz      2f # jump to end if its true

    addl    %edi, %eax # Add the first number to the result

    decl    %esi # knock down the second number by 1

    jmp     1b # Repeat the loop
    
2:  ret # return the result(%eax)

