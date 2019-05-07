segment .text
global _start
_start:
mov rax,0x1000
or rax,1;make the number odd
or rax,0xff00;set bits 15-8
;exit syscall
mov eax,1
mov ebx,0
int 0x80
