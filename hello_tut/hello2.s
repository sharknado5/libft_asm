section .data
    msg db 'Hello, World!', 10
    len equ $ - msg

section .text
    global _main

_main:
    mov rdi, 1          ;   tut1
    mov rsi, msg
    mov rdx, len
    mov rax, 4
    syscall
    mov rdi, 0
    mov rax, 60
    syscall