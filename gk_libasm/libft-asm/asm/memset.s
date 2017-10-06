section .text
	global _ft_memset

_ft_memset:
	push rdi
	mov rcx, rdx ;Data Register (DX). Arithmetic and I/O operations
				;Counter Register (CX). Used in shift/rotate instructions and loops
	mov rax, rsi ; Source Index Register (SI). Used as Pointer to source in stream operation
	rep stosb
	pop rax
	ret
