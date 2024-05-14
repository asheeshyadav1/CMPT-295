# FileName: decode2.s
# Class Description: transcribe the assembly code from HW 3.58 
 				   # and write the corresponding C code and covert it 
  				   # to assembly code using the compiler. 
# Class Invariant: Must function exactly as the assembly code given to us.
# Author: Asheesh
# Last modified on: February 11, 2024

    .file	"decode2.c"
    .text
    .globl	decode2
    .type	decode2, @function
decode2:
.LFB23:
    .cfi_startproc
    endbr64
	# Parameter to register mapping: x -> %rdi, y -> %rsi, z -> %rdx
	
    # Subtract z (%rdx) from y (%rsi), store result in %rsi
    subq	%rdx, %rsi

    # Multiply x (%rdi) with difference, store in %rdi
    imulq	%rsi, %rdi

    # Shift %rsi left 63 bits
    salq	$63, %rsi

    # Shift %rsi right 63 bits
    sarq	$63, %rsi

    # Move product (%rdi) to %rax
    movq	%rdi, %rax

    # Perform bitwise XOR on %rax and %rsi, store in %rax
    xorq	%rsi, %rax

    # Return the result in %rax
    ret
    .cfi_endproc
.LFE23:
    .size	decode2, .-decode2
    .ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
    .section	.note.GNU-stack,"",@progbits
    .section	.note.gnu.property,"a"
    .align 8
    .long	1f - 0f
    .long	4f - 1f
    .long	5
0:
    .string	"GNU"
1:
    .align 8
    .long	0xc0000002
    .long	3f - 2f
2:
    .long	0x3
3:
    .align 8
4: