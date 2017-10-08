# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:23:04 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:23:29 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strdup
    extern ft_strlen
    extern ft_memcpy
    extern malloc

ft_strdup:
    push    rbp
    mov     rbp, rsp
    jmp     main

main:
    cmp     rdi, 0  ;check if rdi is 0
    je      ret0 
    mov     rax, 0  
    push    rdi     ;push arg to stack
    call    ft_strlen; get len of rdi
    push    rax;    push rax value to top of stack;
    mov     rdi, rax    ;value of strlen is now 1st arg of malloc
    call    malloc
    cmp     rax, 0  ;if !malloc, return err
    je      ret0
    mov     rdi, rax;move new mem to 1st param
    pop     rdx
    pop     rsi
    call    ft_memcpy
    jmp     return
    
return:
    mov     rsp, rbp
    pop     rbp
    ret

ret0:
    mov     rax, 0
    ret
