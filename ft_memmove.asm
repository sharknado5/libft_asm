	.file	"ft_memmove.c"
	.intel_syntax noprefix
	.text
	.globl	ft_memmove
	.type	ft_memmove, @function
ft_memmove:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi
	mov	QWORD PTR -48[rbp], rsi
	mov	QWORD PTR -56[rbp], rdx
	mov	QWORD PTR -24[rbp], 0
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -40[rbp]
	mov	QWORD PTR -8[rbp], rax
	mov	rax, QWORD PTR -48[rbp]
	cmp	rax, QWORD PTR -40[rbp]
	jnb	.L6
	mov	rdx, QWORD PTR -48[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rdx
	cmp	rax, QWORD PTR -40[rbp]
	jbe	.L6
	jmp	.L3
.L4:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	sub	QWORD PTR -56[rbp], 1
.L3:
	cmp	QWORD PTR -56[rbp], 0
	jne	.L4
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -56[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	jmp	.L5
.L7:
	mov	rdx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rdx, rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rcx
	movzx	eax, BYTE PTR [rax]
	mov	BYTE PTR [rdx], al
	add	QWORD PTR -24[rbp], 1
.L6:
	mov	rax, QWORD PTR -24[rbp]
	cmp	rax, QWORD PTR -56[rbp]
	jb	.L7
.L5:
	mov	rax, QWORD PTR -8[rbp]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ft_memmove, .-ft_memmove
	.ident	"GCC: (Ubuntu 6.3.0-12ubuntu2) 6.3.0 20170406"
	.section	.note.GNU-stack,"",@progbits
