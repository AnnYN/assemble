segment .data
a dq 100
b dq 200
diff dq 0
segment .text
global _start
_start:
push rbp
mov rbp ,rsp
sub rbp,rsp
mov rax,10
sub [a],rax;subtract 10 from a
sub [b], rax; subtract 10 from b
mov rax,[b];move b into rax
sub rax,[a];set rax to b-a
mov [diff] ,rax;move the difference  to diff
mov rax, 0
leave
;exit syscall
mov eax , 1
mov ebx ,0
int 0x80
