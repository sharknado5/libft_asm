# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:21:57 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:21:58 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_isprint

ft_isprint:
    cmp rdi, 33
    jl false
    cmp rdi, 126
    jg false
    jmp true

true:
    mov rax, 1
    ret

false:
    mov rax, 0
    ret
