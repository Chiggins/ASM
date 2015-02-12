all: stack_fun

stack_fun:stack_fun.o
	ld -m elf_i386 -o stack_fun stack_fun.o

stack_fun.o:stack_fun.asm
	nasm -f elf32 stack_fun.asm

clean:
	rm *.o stack_fun
