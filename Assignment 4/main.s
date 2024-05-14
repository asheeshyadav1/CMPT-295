	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Lloh0:
	adrp	x0, l_str@PAGE
Lloh1:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
Lloh2:
	adrp	x22, _A@PAGE
Lloh3:
	add	x22, x22, _A@PAGEOFF
	ldrsb	x8, [x22]
	str	x8, [sp]
Lloh4:
	adrp	x19, l_.str.5@PAGE
Lloh5:
	add	x19, x19, l_.str.5@PAGEOFF
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #1]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #3]
	str	x8, [sp]
Lloh6:
	adrp	x20, l_.str.4@PAGE
Lloh7:
	add	x20, x20, l_.str.4@PAGEOFF
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x22, #4]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #5]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #6]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #7]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x22, #8]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #9]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #10]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #11]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x22, #12]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #13]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #14]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x22, #15]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	mov	w0, #10
	bl	_putchar
Lloh8:
	adrp	x0, l_str.7@PAGE
Lloh9:
	add	x0, x0, l_str.7@PAGEOFF
	bl	_puts
Lloh10:
	adrp	x21, _C@GOTPAGE
Lloh11:
	ldr	x21, [x21, _C@GOTPAGEOFF]
	mov	x0, x22
	mov	x1, x21
	mov	w2, #4
	bl	_copy
Lloh12:
	adrp	x0, l_str.8@PAGE
Lloh13:
	add	x0, x0, l_str.8@PAGEOFF
	bl	_puts
	ldrsb	x8, [x21]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #1]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #3]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x21, #4]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #5]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #6]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #7]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x21, #8]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #9]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #10]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #11]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x21, #12]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #13]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #14]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #15]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	mov	w0, #10
	bl	_putchar
Lloh14:
	adrp	x0, l_str.9@PAGE
Lloh15:
	add	x0, x0, l_str.9@PAGEOFF
	bl	_puts
	mov	x0, x21
	mov	w1, #4
	bl	_transpose
	mov	x0, x21
	mov	w1, #4
	bl	_reverseColumns
	ldrsb	x8, [x21]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #1]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #2]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #3]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x21, #4]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #5]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #6]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #7]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x21, #8]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #9]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #10]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #11]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	ldrsb	x8, [x21, #12]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #13]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #14]
	str	x8, [sp]
	mov	x0, x19
	bl	_printf
	ldrsb	x8, [x21, #15]
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
	mov	w0, #10
	bl	_putchar
	mov	w0, #10
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #64
	b	_putchar
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_printMatrixByRow               ; -- Begin function printMatrixByRow
	.p2align	2
_printMatrixByRow:                      ; @printMatrixByRow
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	cbz	w1, LBB1_5
; %bb.1:
	mov	x19, x1
	mov	w21, #0
	mov	x22, #0
	sub	w20, w1, #1
	mov	w24, w1
Lloh16:
	adrp	x25, l_.str.5@PAGE
Lloh17:
	add	x25, x25, l_.str.5@PAGEOFF
Lloh18:
	adrp	x26, l_.str.4@PAGE
Lloh19:
	add	x26, x26, l_.str.4@PAGEOFF
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_3 Depth 2
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x27, x8, w21, uxtw
	mov	x28, x24
	mov	x23, x20
LBB1_3:                                 ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	x23, #0
	csel	x0, x26, x25, eq
	ldrsb	x8, [x27], #1
	str	x8, [sp]
	bl	_printf
	sub	x23, x23, #1
	subs	x28, x28, #1
	b.ne	LBB1_3
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	mov	w0, #10
	bl	_putchar
	add	x22, x22, #1
	add	w21, w21, w19
	cmp	x22, x24
	b.ne	LBB1_2
LBB1_5:
	mov	w0, #10
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	_putchar
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_A                              ; @A
_A:
	.ascii	"\001\376\003\374"
	.ascii	"\373\006\371\b"
	.ascii	"\377\002\375\004"
	.ascii	"\005\372\007\370"

	.comm	_C,16,0                         ; @C
	.section	__TEXT,__cstring,cstring_literals
l_.str.4:                               ; @.str.4
	.asciz	"%4d"

l_.str.5:                               ; @.str.5
	.asciz	"%4d "

l_str:                                  ; @str
	.asciz	"Matrix A: "

l_str.7:                                ; @str.7
	.asciz	"Copy A to C"

l_str.8:                                ; @str.8
	.asciz	"\nMatrix C: "

l_str.9:                                ; @str.9
	.asciz	"Rotating the matrix C by 90 degrees clockwise: "

.subsections_via_symbols
