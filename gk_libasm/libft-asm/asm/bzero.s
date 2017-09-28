section .text
	global _ft_bzero

_ft_bzero:
	jmp loop

loop:
	dec rsi
	cmp rsi, 0
	jl return
	mov byte[rdi + rsi], 0
	jmp loop

return:
	ret
