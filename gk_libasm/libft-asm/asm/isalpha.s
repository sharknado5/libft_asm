section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 97
	jge upper
	cmp rdi, 65
	jge lower
	jmp alpha_false

upper:
	cmp rdi, 122
	jle alpha_true
	jmp alpha_false

lower:
	cmp rdi, 90
	jle alpha_true
	jmp alpha_false

alpha_true:
	mov rax, 1
	ret

alpha_false:
	mov rax, 0
	ret
