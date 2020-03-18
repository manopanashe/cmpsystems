%include "io.inc"

section .data
var1    db 0xef
var2    dw 0xabcd
var3    dd 0x12345678

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    mov eax,[var1]
    mov dword [var1],0xaabbccddee

    xor eax, eax
    ret