segment .data
a dq 151
b dq 310
sum dq 0
segment .text
global _start
_start:
push rbp
mov rbp,rsp
sub rsp,16
mov rax,9;set rax to 9
add [a],rax;add rax to a
mov rax,[b];get b into rax
add rax,10;add 10 to rax
add rax,[a];add the contents of a
mov [sum],rax;save the sum in sum
mov rax, 0
leave
;exit syscall
mov eax,1
mov ebx,0
int 0x80


