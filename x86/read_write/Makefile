all: read_write

read_write:read_write.o
	ld -m elf_i386 -o read_write read_write.o

read_write.o:read_write.asm
	nasm -f elf32 read_write.asm

clean:
	rm *.o read_write
