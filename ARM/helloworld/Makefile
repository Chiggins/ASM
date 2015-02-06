all: helloworld

helloworld: helloworld.o
	gcc -o $@ $+

helloworld.o : helloworld.s
	as -o $@ $<

clean:
	rm -vf helloworld *.o
