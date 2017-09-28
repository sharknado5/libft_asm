%include "strlen.s"
%include "memcpy.s"

section .text
	global _ft_strdup
	extern _malloc

_ft_strdup:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je return
	mov rax, 0
	push rdi		; save string
	call _ft_strlen
	push rax		; save strlen
	mov rdi, rax	; 1st param of malloc
	call _malloc
	cmp rax, 0		; if malloc return 0 return
	je return
	mov rdi, rax	; 1st param new mem 
	pop rdx			; 3rd param strlen
	pop rsi			; 2nd param orig string
	call _ft_memcpy
	jmp return

return:
	mov rsp, rbp
	pop rbp
	ret
