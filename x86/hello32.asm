; hello32.asm
; sudo apt install nasm binutils
; nasm -f elf32 hello32.asm
; ld -m elf_i386 hello32.o -o run
; ./run

section .data
    msg1 db "Hello, world!", 10
    len1 equ $ - msg1

    msg2 db "I'm learning Assembly.", 10
    len2 equ $ - msg2

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1
    mov edx, len1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg2
    mov edx, len2
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80