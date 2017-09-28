section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jl digit_false
	cmp rdi, 57
	jg digit_false
	jmp digit_true

digit_true:
	mov rax, 1
	ret

digit_false:
	mov rax, 0
	ret
