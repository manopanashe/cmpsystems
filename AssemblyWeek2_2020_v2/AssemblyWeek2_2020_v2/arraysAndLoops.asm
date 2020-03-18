%include "io.inc"

section .data
    ; put your array definition here
arraySize   equ 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging

    ;write your code here
    
    
    ;PRINT_DEC 4, ????? < register name here
        
    xor eax, eax
    ret