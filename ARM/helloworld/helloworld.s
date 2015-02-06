.data

    HelloWorldString:
        .ascii "Hello World\n"

.text

.global main
.func main

main:
    /* load args for write() */
    mov r7, #4 /* This is the syscall */
    mov r0, #1
    ldr r1, =HelloWorldString /* the string */
    mov r2, #12 /* Size of the string */
    svc #1

    /* Now exit */
    mov r7, #1
    mov r0, #0
    svc #1
