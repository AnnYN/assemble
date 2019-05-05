segment .data
a dq 100
b dq -100
segment .text
global _start
_start:
mov rax, [a];set rax to 100
mov rbx, rax;save original value
neg rax;negate rax
cmovl rax, rbx;replace rax if negative
mov rax, 0
mov rax ,[b]
mov rbx,rax
neg rax
cmovl rax, rbx
;exit syscall
mov eax ,1
mov ebx,0
int 0x80
