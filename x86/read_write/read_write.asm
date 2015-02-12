section .data
    msg1 db "Enter a number:"
    msg1l equ $ - msg1

global _start

_start:
    mov eax, 4      ; sys_write
    mov ebx, 1      ; stdout
    mov ecx, msg1   ; text to output
    mov edx, msg1l  ; string length
    int 0x80

    mov eax, 3      ; sys_read
    mov ebx, 0      ; stdin
    mov ecx, inp    ; input to buffer
    int 0x80

    ; We're assuming only one number is entered
    mov eax, 4
    mov ebx, 1
    mov edx, 1
    int 0x80

    mov eax, 1      ; sys_exit
    mov ebx, 0      ; exit code
    int 0x80

section .bss
    inp resb 1
