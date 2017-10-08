# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:22:49 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:22:51 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_memcpy

;void *memcpy(void *restrict dst, const void *restrict src, size_t n);
ft_memcpy:
    push rdi
    mov rcx, rdx
    rep movsb; The MOVS command copies data from DS:(SI/ESI/RSI) to ES:(DI/EDI/RDI)
    pop rax
    ret
