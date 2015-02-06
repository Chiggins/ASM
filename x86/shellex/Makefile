all: shellex

shellex:shellex.o
	ld -m elf_i386 -o shellex shellex.o

shellex.o:shellex.asm
	nasm -f elf32 shellex.asm

clean:
	rm *.o shellex
