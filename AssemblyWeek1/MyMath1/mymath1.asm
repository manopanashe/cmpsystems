%include "io.inc"

section .data
open_message db 'My Maths example!', 0

section .text
    global CMAIN
CMAIN:
    mov ebp, esp                ;Set up a stack frame for the debugger
    PRINT_STRING open_message
    NEWLINE
    
    ; write your code here
  mov ebx,4
  mov ecx, 13
  mov edx, 6
  
  add ebx , ecx
  PRINT_DEC 4, ebx
  NEWLINE
  
   imul  ebx, 7
   PRINT_DEC 4,ebx
   NEWLINE
   
   sub edx, 6
   PRINT_DEC 4,edx
   NEWLINE
   
   imul ebx , edx
   PRINT_DEC 4, ebx
   
  
   

 
                    
    xor eax, eax                
    ret