all : exit maximum endian length test address

exit : exit.o
	ld -o exit exit.o
exit.o : exit.s
	as -o exit.o exit.s


maximum : maximum.o
	ld -o maximum maximum.o
maximum.o : maximum.s
	as -o maximum.o maximum.s


endian : endian.o
	ld -o endian endian.o
endian.o : endian.s
	as -o endian.o endian.s


length : length.o
	ld -o length length.o
length.o : length.s
	as -o length.o length.s

test : test.o
	ld -o test test.o
test.o : test.s
	as -o test.o test.s

address : address.o
	ld -o address address.o
address.o : address.s
	as -o address.o address.s

