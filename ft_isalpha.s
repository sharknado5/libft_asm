section .text           
    global ft_isalpha

;int    ft_islpha(int c);
ft_isalpha:
    cmp rdi, 65
    jl  false
    cmp rdi, 122
    jg  false
    jmp is_upper
    
is_upper:
    cmp rdi, 90
    jg  is_lower
    jmp true

is_lower:
    cmp rdi, 97
    jl false
    jmp true

false:
    mov rax, 0
    ret

true:
    mov rax, 1
    ret
