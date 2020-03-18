%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    ; watch the registers change
    
    mov eax,0xaaaaaaaa
    mov al, 0xff
    mov ah, 0xee
    mov ax, 0xdddd
    
    mov ebx,0xffffffff
    mov bh, 0xbb
    mov bl, 0xcc
    
    add ax,bx
    
    PRINT_HEX 4,eax
    NEWLINE
    PRINT_HEX 2,ax
    NEWLINE
    PRINT_HEX 1,al
    
    xor eax, eax
    ret