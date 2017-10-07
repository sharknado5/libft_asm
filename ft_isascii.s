# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:21:46 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:21:48 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_isascii

ft_isascii:
    cmp rdi, 0
    jl false
    cmp rdi, 127
    jg false
    jmp true

false:
    mov rax, 0
    ret

true:
    mov rax, 1
    ret
