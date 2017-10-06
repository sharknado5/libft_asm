section .text
    global ft_puts

ft_puts:
    ; cmp rdi, 0
    ; je exit
    mov rax, 0x2000004
    ; syscall
    ; inc rdi
    ; call ft_puts
    mov rsi, rdi
    mov rdi, 1
    mov rdx, msg.len
    syscall

    jmp exit

exit:
    mov rax, 0x2000001
    mov rdi, 0
    syscall