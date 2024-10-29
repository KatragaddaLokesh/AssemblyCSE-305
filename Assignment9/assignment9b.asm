org 100h 
jmp start

input1 db "Enter Your Number: $"
output db 0Dh, 0Ah, "The number is: $:"

msg: db "Odd", 0Dh,0AH,24h
msg1: db "Even", 0Dh,0AH,24h


start:
    mov dx, offset input1
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov bl,al  
    
    mov dx, offset output
    mov ah, 09h
    int 21h
    
    and al, 0001h
    cmp al,0h
    je Even
    jne Odd

Even:
    mov dx,msg1
    mov ah,09h
    int 21h
ret

Odd:  
    mov dx,msg
    mov ah,09h
    int 21h
ret


         
         
                   
                   
                   
    
    
    
