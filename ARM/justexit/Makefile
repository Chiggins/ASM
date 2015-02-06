all: justexit

justexit: justexit.o
	gcc -o $@ $+

justexit.o : justexit.s
	as -o $@ $<

clean:
	rm -vf justexit *.o
