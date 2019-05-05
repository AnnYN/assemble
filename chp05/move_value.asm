segment .data
a dq 175
b dq 4097
segment .text
global _start
_start:
mov rax , [a]; mov a into rax
add rax , [b]; add b t o rax
xor rax , rax
ret
