segment .text
global _start
_start:
mov rax, 10
imul rax, 100
mov r8 ,1
mov r9,1
imul r8, 10
imul r9, r8
;exit syscall
mov eax,1
mov ebx,0
int 0x80

