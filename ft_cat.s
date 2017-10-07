section .data
    buf times 255 db 0
    buf_len equ $ - buf

section .text
    global ft_cat
    extern ft_puts

;eg: my_func(rdi, rsi, rdx, rcx, r8, r9);
ft_cat:
    push rbp
    mov rbp, rsp
    jmp main

main: 
;ssize_t    read(int fildes, void *buf, size_t nbyte);
    push rdi    ;save fd
    mov rax, 0x2000003 ; move READ syscall (3) into rax
    lea rsi, [rel buf] ; buf to read to
    mov rdx, buf_len ; for nbyte times
    syscall
    cmp rax, 0; if nothing is read return. rax now holds number of bytes read
    je return
;ssize_t     write(int fildes, const void *buf, size_t nbyte);
    mov rdi, 1 ; fd to write to
    mov rdx, rax ; amount of bytes read 
    mov rax, 0x2000004
    syscall
    jc return
    pop rdi
    jmp main

err:
    pop rdi
    ret

return:
    mov rsp, rbp
    pop rbp
    ret
