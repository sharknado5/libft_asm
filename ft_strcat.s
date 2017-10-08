# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:22:10 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:22:11 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_strcat

ft_strcat:
    mov r8, rdi
    cmp byte[rdi], 0
    je copy_s2

    inc rdi
    jmp ft_strcat

copy_s2:
    mov al, byte[rsi]
    mov byte[rdi], al
    cmp byte[rsi], 0
    je  to_exit 
    inc rsi
    inc rdi
    jmp copy_s2

to_exit:
    mov rax, r8
    ; leave -   does not work on strcat
    ret
