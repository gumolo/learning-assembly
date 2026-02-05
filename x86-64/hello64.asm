; hello64.asm
; sudo apt install nasm binutils
; nasm -f elf64 hello64.asm
; ld hello64.o -o run
; ./run

section .data
    msg1 db "Hello, world!", 10
    len1 equ $ - msg1

    msg2 db "I'm learning Assembly.", 10
    len2 equ $ - msg2

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg1
    mov rdx, len1
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, msg2
    mov rdx, len2
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall