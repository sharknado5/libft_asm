section .text
    global ft_puts

extern ft_strlen

ft_puts:
    push	rbp
	mov		rbp, rsp  ; Re-alligns the stack. Put in all functions

	jmp main

main:
    mov rcx, rdi    ; Counter Register (CX). Used in shift/rotate instructions and loops
    call ft_strlen
    mov rdi, 1 ;    STDOUT
    mov rdx, rax ; (DX). Arithmetic and I/O operations
    mov rax, 0x2000000 | 4
    mov rsi, rcx ;   (SI). Used as Pointer to source in stream operation
    syscall
    ; mov rdi, 1
    mov rdx, 1
    mov rax, 0x2000000 | 4
    lea rsi, [rel nl]
    syscall
    leave
    ret

section .data
    nl db 0x0a
; exit:
;     mov rax, 0x2000001
;     mov rdi, 0
;     syscall