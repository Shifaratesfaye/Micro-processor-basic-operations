       ;Question 5) write a 8086 program to find th reverse of the give number
       
       
       mov dx,number offset
       mov ah,9h
       int 21h
       
       
       mov ah,1h                                                               
       int 21h
       sub al,30h
       
       mov cl,al
       mov bl,cl
       reverse:
            mov dx,msg offset
            mov ah,9h
            int 21h
            
            mov ah,1h
            int 21h
            push ax
            dec cx
            JNZ reverse 
             
            mov cl,bl
            JMP  newline
            JZ reverse2
            hlt
            
            newline:
            mov dx,msg2 offset
            mov ah,9h
            int 21h
            
            JMP reverse2
            reverse2:
                pop ax
                mov dx,ax
                mov ah,6h
                int 21h
                dec cx
                JNZ reverse2
                ret
                hlt
          msg db 0ah,0dh,'PLease Enter the number you want to reverse$' 
          msg2 db 0ah,0dh,' $' 
          number db  0ah,0dh,'number of items to entered $'
                
                
                
                
                
                
                
                
                
                
                
                
                  