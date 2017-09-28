%include "strlen.s"

section .text
	global _ft_strcat

_ft_strcat:
	mov r8, rdi
	mov al, 0
	repne scasb
	dec rdi
	mov rcx, 0

dump:
	cmp byte[rsi + rcx], 0
	je return
	mov r9, [rsi + rcx]
	mov [rdi + rcx], r9
	inc rcx
	jmp dump

return:
	mov r9, 0
	mov [rdi + rcx], r9
	mov rax, rdi
	ret
