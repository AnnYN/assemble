segment .text
global _start
_start:
mov rax,0x123456780
xor eax,eax;set to 0
mov rax,0x1234
xor rax,0xf
;exit syscall
mov eax,1
mov ebx,0
int 0x80

