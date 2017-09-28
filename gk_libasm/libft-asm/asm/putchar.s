section .text
	global _ft_putchar

_ft_putchar:
	mov r8, rdi
	mov rdi, 1
	mov rsi, r8
	mov rdx, 1
	mov rax, 0x2000000 | 4
	syscall
	ret
