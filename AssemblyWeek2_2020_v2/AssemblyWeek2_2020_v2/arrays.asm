%include "io.inc"

section .data

squares dd 1,2,4,9,16,25,36,49

section .text    
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    ; part 1
    mov eax,[squares]       ; element 0  ( 4 bytes/element * 0 )
    mov eax,[squares+4]     ; element 1  ( 4 bytes/element * 1 )
    mov eax,[squares+16]    ; element 4  ( 4 bytes/element * 4 )
    
    ; part 2
    mov ebx,squares         ; get address of first element
    mov eax,[ebx]           ; element 0
    add ebx,4               ; increment address by 4
    mov eax,[ebx]           ; element 1
    add ebx,4               ; increment address by 4
    mov eax,[ebx]           ; element 2

    ; part 3
    mov ecx,0                   ; first index of 0
    mov eax,[squares+ecx*4]     ; element 0
    inc ecx                     ; increment index to 1
    mov eax,[squares+ecx*4]     ; element 1
    mov ecx,5                   ; set index to 5
    mov eax,[squares+ecx*4]     ; element 5

    ; part 4
    mov ebx,squares             ; get address of first element
    mov ecx,0                   ; first index of 0
    mov eax,[ebx+ecx*4]         ; element 0
    inc ecx                     ; increment index to 1
    mov eax,[ebx+ecx*4]         ; element 1
    mov ecx,5                   ; set index to 5
    mov eax,[ebx+ecx*4]         ; element 5         
    
    xor eax, eax
    ret