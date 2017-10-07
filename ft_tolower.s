# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:22:28 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:22:29 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_tolower

extern ft_isalpha

 ft_tolower:
    call ft_isalpha
    cmp  rax, 1
    jne  exit
    cmp  rdi, 90
    jg   exit
    add  rdi, 32
    jmp  exit

exit:
    mov rax, rdi
    ret
