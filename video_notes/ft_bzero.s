global _main

section .text
    mov rdi

    ;exit
    mov rax, 0x2000001
    mov rdi, 0
    syscall