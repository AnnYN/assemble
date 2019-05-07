segment .text
global _start
_start:
mov rax,0
not rax; 
mov rdx,0
mov rbx,15
div rbx
not rax
;exit syscall
mov eax,1
mov ebx,0
int 0x80
