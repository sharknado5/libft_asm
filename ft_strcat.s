section .text
    global ft_strcat

ft_strcat:
    mov r8, rdi
    cmp byte[rdi], 0
    je copy_s2

    inc rdi
    jmp ft_strcat

copy_s2:
    mov al, byte[rsi]
    mov byte[rdi], al
    cmp byte[rsi], 0
    je  to_exit 
    inc rsi
    inc rdi
    jmp copy_s2

to_exit:
    mov rax, r8
    ret
