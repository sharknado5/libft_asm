%include "isalpha.s"
%include "isdigit.s"

section .text
	global _ft_isalnum

_ft_isalnum:
	mov rcx, rdi
	call _ft_isdigit
	cmp rax, 1
	je alnum_true
	mov rdi, rcx
	call _ft_isalpha
	cmp rax, 1
	je alnum_true
	jmp alnum_false

alnum_true:
	mov rax, 1
	ret

alnum_false:
	mov rax, 0
	ret
