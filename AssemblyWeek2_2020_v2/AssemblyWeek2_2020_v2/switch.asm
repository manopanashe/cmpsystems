%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    GET_CHAR al

    ;write your code here
    
    PRINT_STRING "no match"
    
    xor eax, eax
    ret