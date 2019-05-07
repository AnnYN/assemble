segment .data
foo dq 1024

segment .text
global _start
_start:
	; insert code in below
	mov eax, 4 ; 0100b
	bt eax, 2 ; bit 2 in eax == 1
	bt eax, 1 ; bit 1 in eax == 0
	
	; exit syscall
	xor rax, rax ; clear
	xor rbx, rbx ; registers
	mov eax, 1
	mov ebx, 0
	int 0x80
