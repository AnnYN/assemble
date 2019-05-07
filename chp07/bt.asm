segment .text
global _start
_start:
mov rbx,rax;copy bit number to rbx
shr rbx,6;
mov rcx,rax
and rcx,0x3f
xor edx,edx
bt [data+8*rbx].rcx
setc d1
bts [data+8*rbx],rcx
btr [data+8*rbx],rcx
;exit syscall
mov eax,1
mov ebx,0
int 0x80
