org 100h

mov cx,11
num db 48

l1: 
   mov dl,num
   mov ah,02h
   int 21h 
   inc num    
   
loop l1
    mov ah,4Ch
    int 21h
ret

    
    