org 100h

mov cx,26
num db 90

l1: 
   mov dl,num
   mov ah,02h
   int 21h
   dec num    
   
loop l1
    mov ah,4Ch
    int 21h
ret

    
    