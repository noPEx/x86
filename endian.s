# useful hack to determine endianness
# my system is little endian.
# declare a long integer i.e 0x103
# print the first character it will be 0x03 as it gets stored first
# print the second character it will be 0x1
.section .data

data_items:							#These are the data items
	.long 259,67,222,45,75,54,34,44,33,22,11,66,0

.section .text
.globl _start

_start :
	movl $0,%edi
	movl data_items(,%edi,1), %ebx
	incl %edi
	movl data_items(,%edi,1), %ebx
	movl $1,%eax
	int $0x80
