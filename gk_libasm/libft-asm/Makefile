# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gkekana <gkekana@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/22 11:20:03 by gkekana           #+#    #+#              #
#    Updated: 2017/09/22 12:35:37 by gkekana          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SHELL = /bin/zsh
ASM_COMPILER= /goinfre/gkekana/.brew/bin/nasm
ASM_OPTIONS = -f macho64 -I ./asm/
C_COMPILER = /usr/bin/cc 
C_OPTIONS = -Wno-implicit-function-declaration -Wl,-no_pie

asm_names = bzero isalpha isdigit isalnum \
			isascii isprint puts strlen toupper \
			tolower strcat isdigit memcpy memset \
			strdup ft_cat

c_names = bzero isalpha isdigit isalnum tolower \
		  toupper strcat strlen puts

asm_obj_files = $(addsuffix .o, $(asm_names))
asm_objs = $(addprefix ./obj/, $(asm_obj_files))
c_exe = $(addprefix ./bin/, $(c_names))

library = libfts.a

all: helper_dirs $(library) $(c_exe) 

helper_dirs:
	@if test -d obj ;\
		then printf "Object folder already exists\n";\
	else;\
		mkdir ./obj;\
	fi
	@if test -d bin ;\
		then printf "Bin folder already exists!\n";\
	else;\
		mkdir bin;\
	fi

bin/%: ./tests/%.c
	$(C_COMPILER) ./obj/$*.o $< -o $@

$(library): $(asm_objs)
	ar rs $(library) $(asm_objs)

obj/%.o: asm/%.s
	$(ASM_COMPILER) $(ASM_OPTIONS) $< -o $@

.PHONY: clean
clean:
	@if test -d ./obj;\
		then rm -rf ./obj;\
	fi

.PHONY: fclean
fclean: clean
	@if test -e $(library);\
		then rm -rf $(library);\
	fi
	@if test -d ./bin;\
		then rm -rf ./bin;\
	fi

.PHONY: re
re: fclean all
