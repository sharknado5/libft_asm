NAME = libfts.a

NASM = nasm

CC = gcc

MAC_FLAG = -f macho64

LINUX_FLAG = -f elf64

SRC = ft_bzero.s

OBJ = $(SRC:.s=.o)

all:
	$(NASM) $(MAC_FLAG) $(SRC) -o $(OBJ)
	ld $(OBJ) -macosx_version_min 10.8 -lSystem

linux:
	$(NASM) $(LINUX_FLAG) $(SRC) -o $(OBJ)
	ld $(OBJ)

clean:
	rm -f *.o
