section .text
    global ft_isprint

ft_isprint:
    cmp rdi, 33
    jl false
    cmp rdi, 126
    jg false
    jmp true

true:
    mov rax, 1
    ret

false:
    mov rax, 0
    ret