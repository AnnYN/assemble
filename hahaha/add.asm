  segment .data
a dq 175
b dq 4097
  segment .text
  global _start
_start:
  mov rax, [a]
  add rax, [b]
  xor rax, rax
  ; exit syscall
  mov eax, 1
  mov ebx, 0
  int 0x80
