section .text
    global ft_memset

;eg: my_func(rdi, rsi, rdx, rcx, r8, r9);
; Counter Register (CX). Used in shift/rotate instructions and loops
;Data Register (DX). Arithmetic and I/O operations

; void *memset(void *b, int c, size_t len);
ft_memset:
    mov     r10, rax
    mov     rdx, rcx
    mov     al, sil
    jmp stock
    jmp end
stock:
    cld
    rep stosb

end:
    mov rax, r10
    ret
