[SECTION .text]
global _start

_start:
    jmp short ender

    starter:

    xor eax, eax ; clean up registers
    xor ebx, ebx
    xor edx, edx
    xor ecx, ecx

    mov al, 4   ; write
    mov bl, 1   ; stdout
    pop ecx     ; get address of string from stack
    mov dl, 5   ; string length
    int 0x80

    xor eax, eax
    mov al, 1   ; exit
    xor ebx, ebx
    int 0x80

    ender:
    call starter    ; put address of string in stack
    db 'hello'
