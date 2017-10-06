section .text
    global ft_strlen

ft_strlen:
    push	rbp
	mov		rbp, rsp  ; Re-alligns the stack. Put in all functions

    mov al, 0
    jmp main

main:
    cmp byte[rdi], 0
    je  return
    inc rdi
    inc rax
    jmp main


return: 
    leave
    ret