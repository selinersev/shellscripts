all : ShellScripting

ShellScripting : ShellScripting.o
	gcc -o ShellScripting ShellScripting.o

ShellScripting.o : ShellScripting.c
	gcc -c ShellScripting.c

clean :
	rm ShellScripting *.o
