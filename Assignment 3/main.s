	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	cmp	w0, #3
	b.ne	LBB0_2
; %bb.1:
	mov	x20, x1
	ldr	x0, [x1, #8]
	bl	_atoi
	mov	x19, x0
	ldr	x0, [x20, #16]
	bl	_atoi
	mov	x20, x0
	mov	x0, x19
	mov	x1, x20
	bl	_is_less_than
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x20, x0, [sp, #8]
	str	x19, [sp]
Lloh0:
	adrp	x0, l_.str@PAGE
Lloh1:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	x0, x19
	mov	x1, x20
	bl	_plus
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x20, x0, [sp, #8]
	str	x19, [sp]
Lloh2:
	adrp	x0, l_.str.1@PAGE
Lloh3:
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	x0, x19
	mov	x1, x20
	bl	_minus
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x20, x0, [sp, #8]
	str	x19, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	x0, x19
	mov	x1, x20
	bl	_mul
                                        ; kill: def $w0 killed $w0 def $x0
	stp	x20, x0, [sp, #8]
	str	x19, [sp]
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	mov	w0, #0
	b	LBB0_3
LBB0_2:
Lloh8:
	adrp	x0, l_str@PAGE
Lloh9:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	w0, #1
LBB0_3:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d ??? %d -> %d\n"

l_.str.1:                               ; @.str.1
	.asciz	"%d + %d = %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"%d - %d = %d\n"

l_.str.3:                               ; @.str.3
	.asciz	"%d * %d = %d\n"

l_str:                                  ; @str
	.asciz	"Must supply 2 integers arguments."

.subsections_via_symbols
