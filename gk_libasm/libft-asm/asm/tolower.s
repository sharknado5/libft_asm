%include "isalpha.s"

section .text
	global _ft_tolower

_ft_tolower:
	mov rcx, rdi
	call _ft_isalpha
	cmp rax, 0
	je return
	cmp rcx, 65
	jl return
	cmp rcx, 90
	jg return
	add rcx, 32
	mov rax, rcx
	ret

return:
	mov rax, rcx
	ret
