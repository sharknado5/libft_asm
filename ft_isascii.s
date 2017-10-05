section .text
    global ft_isascii

ft_isascii:
    cmp rdi, 0
    jl false
    cmp rdi, 127
    jg false
    jmp true

false:
    mov rax, 0
    ret

true:
    mov rax, 1
    ret