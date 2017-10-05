NAME = libfts.a

NASM = nasm

CC = gcc

MAC_FLAG = -f macho64 --prefix _

LINUX_FLAG = -f elf64

LIBSRC = ft_bzero.s ft_strcat.s

LIBOBJ = $(LIBSRC:.s=.o)

SRC = main.c

OBJ = main.o

all: $(NAME)
$(NAME): $(LIBOBJ)
	$(CC) -c $(SRC)
	ar rcs $(NAME) $(LIBOBJ)
	$(CC) -o asm_main $(NAME) $(OBJ) -I libfts.h
	# ld $(OBJ) -macosx_version_min 10.12 -lSystem

%.o: %.s
	$(NASM) $(MAC_FLAG) $< 

linux:
	$(NASM) $(LINUX_FLAG) $(SRC) -o $(OBJ)
	ld $(OBJ)

clean:
	rm -f $(LIBOBJ)
