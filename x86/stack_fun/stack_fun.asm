[SECTION .text]

global _start

_start:
    ADD eax, 0x1
    PUSH eax
    ADD eax, 0x7b
    PUSH eax
    POP ebx
    POP ebx
    POP ebx
    RET
