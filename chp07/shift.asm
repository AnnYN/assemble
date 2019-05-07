segment .text
global _start
_start:
mov rax,0x12345678
shr rax,8;i want bits 8-15
and rax,0xff;rax now holds 0x56
mov rax,0x12345678;i want to replace bits 8-15
mov rdx,0xaa;rax holds replace ment field
mov rbx,0xff;i need an 8 bit mask
shl rbx ,8;shift mask to align 0 bit 8
not rbx;rbx is the 8-25 are all 0
and rax,rbx;now bits 8-15 are all 0
shl rdx,8;shift the has 0x1234aa78
or rax,rdx;rax now has 0x1234aa78
