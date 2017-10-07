# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lkoekemo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/10/07 21:20:59 by lkoekemo          #+#    #+#              #
#    Updated: 2017/10/07 21:21:06 by lkoekemo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text			;must be declared for using gcc
	global ft_bzero

ft_bzero:
	push	rbp
	mov		rbp, rsp  ; Re-alligns the stack. Put in all functions

	jmp main

main:
	
	cmp rsi, 0		; check if rsi(len) value is lower than 0
	jl return		; if so, return
	mov byte[rdi], 0	; move 0 to string[rdi]
	inc rdi			; inc string-pointer?
	dec rsi			; dec len(rsi)
	jmp main		; repeat

return:
	leave
	ret
