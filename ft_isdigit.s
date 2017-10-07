# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:21:39 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:21:41 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_isdigit

ft_isdigit:
    cmp rdi, 48
    jl false
    cmp rdi, 57
    jg false
    jmp true

false:
    mov rax, 0
    ret

true:
    mov rax, 1
    ret
