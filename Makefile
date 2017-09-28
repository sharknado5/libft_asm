all:
	nasm -f macho64 hello3.s -o hello3.o
	ld hello3.o -macosx_version_min 10.8 -lSystem

linux:
	nasm -f elf64 hello3.s -o hello3.o
	ld hello3.o
