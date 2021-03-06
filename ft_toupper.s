# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:22:33 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:22:34 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_toupper

extern ft_isalpha

ft_toupper:
    call ft_isalpha
    cmp  rax, 1
    jne  exit
    cmp  rdi, 97
    jl   exit
    sub  rdi, 32
    jmp  exit

exit:
    mov rax, rdi
    ret
