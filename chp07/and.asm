segment .text
global _start
_start:
mov rax,0x12345678
mov rbx,rax
and rbx,0xf
mov rdx,0
mov rcx,16
idiv rcx
and rax,0xf
;exit syscall
mov eax ,1
mov ebx ,0
int 0x80
