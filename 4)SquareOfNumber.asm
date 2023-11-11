   
   ;Question 4) write an 8086 program to find the square of the given number
 mov dx,msg offset
 mov ah,9h
 int 21h
     mov ah,1
     int 21h
     cmp al,30h
     JL error
     cmp al,39h
     JG error  
     mov bl ,al
     sub bl,30h
         
     mov ax,0000h
     mov al,bl
     mul al
     AAM
     mov bx,0000h
     mov bx,ax    
     
     push bx
     mov dx,msg2 offset  
     mov ah,9h
     int 21h
     mov dx,0000h
     pop dx
     
     mov dl,dh
     add dl,30h
     mov ah,2h
     int 21h
     
     
     mov dl,bl
     add dl,30h
     mov ah,2h
     int 21h
     
     
    hlt
    error:
         mov dx,errormsg offset
         mov ah,9h
         int 21h
         errormsg db  0ah,0dh ,'The character is not number try again $'  
         hlt
         
         msg db 'please enter a number the number you whant to squre=$'
         msg2 db 0ah, 0dh,' squred $'  
         
         
         
         
         
         
         
     