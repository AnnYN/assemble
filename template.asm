segment .data
foo dq 1024

segment .text
global _start
_start:
	; insert code in below
	
	; exit syscall
	xor rax, rax ; clear
	xor rbx, rbx ; registers
	mov eax, 1
	mov ebx, 0
	int 0x80
