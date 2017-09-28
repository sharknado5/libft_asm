section .text
	global _ft_strlen

_ft_strlen:
	mov rsi, rdi
	mov al, 0
	repne scasb
	sub rdi, rsi
	dec rdi
	mov rax, rdi
	ret	
