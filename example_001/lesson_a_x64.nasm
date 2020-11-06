; Writes "Hello, World" to the console using only system calls.  Runs on 64-bit linux only.
; To assembly and run:
;   nasm -f elf64 lesson_a_x64.nasm 
;   ld lesson_a_x64.o 
;   ./a.out

global _start

segment .text

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, 13
    syscall
    mov rax, 60
    xor rdi, rdi
    syscall

section .data
message:
    db  "Hello, World",10