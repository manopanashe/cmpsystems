%include "io.inc"

section .data
var1    db 0xef
var2    dw 0xabcd
var3    dd 0x12345678

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    ; initialise registers to known values
    mov eax,0xbadc0c0a
    mov ebx,0xdec0ded9
    mov ecx,0xacedecaf
    
    ;
    ; direct addressing
    ;
    
    mov eax,[var3]
    add eax,0x11111111
    mov [var3],eax
    ; add code here    
            
    mov bx,[var2]
    add bx,0x1111
    mov [var2],bx
    ; add code here

    mov cl,[var1]
    add cl,0x11
    mov [var1],cl
    ; add code here

    ;
    ; Register indirect addressing
    ;
    
    mov edx,var3    ; note edx is now the address of var3, not its value
    mov ebx,[edx]
    add ebx,0x11111111
    mov [edx],ebx
    ; add code here

    xor eax, eax
    ret