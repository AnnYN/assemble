segment .data
a dd    4
b dd 4.4
c times 10 dd 0
d dw 1,2
e db 0xfb
f db "hello, world", 0

segment .bss

g resd 1
h resd 10
i resd 100

segment .text
global main ; let the liner know abut main

main: 
push rbp ;set up a stack frame for main
mov rbp, rsp;set rbp to point to the stack fram
sub rsp, 16;leave somen room for local variable
;leave rsp on a 16 byte boundary
xor eax,eax;set rax to 0 for return value
leave ;undo the stack frame manipulations
ret





















