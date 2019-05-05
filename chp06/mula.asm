segment .text
global _start
_start:
mov rax,10
imul rax,5
;exit syscall
mov eax ,1
mov ebx ,0
int 0x80
