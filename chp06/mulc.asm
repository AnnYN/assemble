segment .data
a dq 100
segment .text
global _start
_start:
imul rbx, [a],100; store 100 *10 in rbx
imul rdx, rbx,50; store 50*rbx in rdx
;exit syscall
mov eax,1
mov ebx,0
int 0x80
