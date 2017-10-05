section .text
    global ft_isdigit

ft_isdigit:
    cmp rdi, 48
    jl false
    cmp rdi, 57
    jg false
    jmp true

false:
    mov rax, 0
    ret

true:
    mov rax, 1
    ret