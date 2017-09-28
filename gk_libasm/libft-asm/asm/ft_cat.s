%define FUNC(nbr) 0x2000000 | nbr

section .data
	buf times 255 db 0
	buf_len equ $ - buf

section .text
	global _ft_cat

_ft_cat:
	push rbp
	mov rbp, rsp

readr:
	push rdi		; save fd
	lea rsi, [rel buf]
	mov rdx, buf_len
	mov rax, FUNC(3)
	syscall
	jc error
	cmp rax, 0
	je return
	mov rdi, 1
	mov rdx, rax
	mov rax, FUNC(4)
	syscall
	jc error
	pop rdi
	jmp readr

error:
	pop rdi
	mov rax, 1
	jmp return

return:
	mov rsp, rbp
	pop rbp
	ret
