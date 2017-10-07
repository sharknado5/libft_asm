# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:21:24 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:21:26 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_isalnum

extern ft_isalpha
extern ft_isdigit

ft_isalnum:
    call ft_isalpha
    cmp rax, 1
    je exit
    call ft_isdigit
    jmp exit

exit:
    ret
