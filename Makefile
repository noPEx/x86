all : exit maximum

exit : exit.o
	ld -o exit exit.o
exit.o : exit.s
	as -o exit.o exit.s


maximum : maximum.o
	ld -o maximum maximum.o
maximum.o : maximum.s
	as -o maximum.o maximum.s
