%include "isalnum.s"

section .text
	global _ft_isprint

_ft_isprint:
	mov rcx, rdi
	call _ft_isalnum
	cmp rax, 1
	je print_true
	cmp rcx, 32
	jl print_false
	cmp rcx, 48
	jl print_true
	cmp rcx, 123
	jl print_false
	cmp rcx, 126
	jg print_false
	jmp print_true

print_true:
	mov rax, 1
	ret

print_false:
	mov rax, 0
	ret
