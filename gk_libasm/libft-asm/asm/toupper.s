%include "isalpha.s"

section .text
	global _ft_toupper

_ft_toupper:
	mov rcx, rdi
	call _ft_isalpha
	cmp rax, 0
	je return
	cmp rcx, 97
	jl return
	cmp rcx, 122
	jg return
	sub rcx, 32
	mov rax, rcx
	ret

return:
	mov rax, rcx
	ret
