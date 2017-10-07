section .text
    global ft_memcpy

;void *memcpy(void *restrict dst, const void *restrict src, size_t n);
ft_memcpy:
    push rdi
    mov rcx, rdx
    rep movsb
    pop rax
    ret