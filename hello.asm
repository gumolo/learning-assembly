section .data
    msg db "Hello, world!", 10   ; message + newline
    len equ $ - msg              ; length of message

section .text
    global _start                ; entry point

_start:
    mov rax, 1                  ; syscall number: sys_write
    mov rdi, 1                  ; file descriptor: stdout
    mov rsi, msg                ; pointer to message
    mov rdx, len                ; message length
    syscall                     ; invoke kernel

    mov rax, 60                 ; syscall number: sys_exit
    xor rdi, rdi                ; exit status 0
    syscall                     ; terminate process
