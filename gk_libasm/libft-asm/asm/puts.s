%include "strlen.s"

section .data
	nl db 0x0a

section .text
	global _ft_puts

_ft_puts:
	mov r8, rdi
	call _ft_strlen
	mov rdi, 1
	mov rsi, r8
	mov rdx, rax
	mov rax, 0x2000000 | 4
	syscall
	mov rdi, 1
	mov rsi, nl
	mov rdx, 1
	mov rax, 0x2000000 | 4
	syscall
	leave
	ret
