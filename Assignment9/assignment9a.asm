org 100h 
jmp start

input1 db "Enter Your Number: $"
input2 db 0Dh, 0Ah, "Enter Your Number: $"
output db 0Dh, 0Ah, "The cmp of Two Digits is: $"
msg: db "Yes", 0Dh,0AH,24h
msg1: db "No", 0Dh,0AH,24h

start:
    mov dx, offset input1
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov bl,al
    
    mov dx, offset input2
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    mov bh, al
    
    mov dx, offset output
    mov ah, 09h
    int 21h 
     
    cmp bl,bh
    je Equal 
    jne NotEqual
                 
Equal:
    mov dx,msg
    mov ah,09h
    int 21h 
    ret
             
NotEqual: 
    mov dx,msg1
    mov ah,09h
    int 21h
    
    
    mov ah,04h
    int 21h
    ret
    
    
    
