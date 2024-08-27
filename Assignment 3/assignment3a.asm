org 100h

num1 db 40h
num2 db 32h

start:
    mov al,num1
    sub al,num2
    
    mov bl,al
    
    mov ah,al
    and ah,0F0h
    shr ah,4
    add ah,30h
    cmp ah,039h
    jle first_digit
    add ah,7
    
    first_digit:
            mov dl,ah
            mov ah,02h
            int 21h
           
    mov ah,bl
    and ah,0Fh
    add ah,30h
    cmp ah,039h
    jle second_digit
    add ah,7
    
    second_digit:
        mov dl,ah
        mov ah,02h
        int 21h
 
    
    mov ah,4Ch
    int 21h 
    
    
       
    