section .text
    global ft_puts

extern ft_strlen

ft_puts:
    push	rbp
	mov		rbp, rsp  ; Re-alligns the stack. Put in all functions

	jmp main

main:
    mov rcx, rdi
    call ft_strlen
    mov rdi, 1 ;    STDOUT
    mov rdx, rax ; 
    mov rax, 0x2000000 | 4 ;WRITE
    mov rsi, rcx ;   
    syscall
    mov rdx, 1
    mov rax, 0x2000000 | 4
    lea rsi, [rel nl]; null terminate
    syscall
    leave
    ret

section .data
    nl db 0x0a