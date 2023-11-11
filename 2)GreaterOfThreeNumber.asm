     
    ; 2) write the 8086 programm to find the greatest  of three given number 

   push 05h
   push 85h
   push 25h
   
   mov ax, 0000h
   mov cx,0003h
   
   procd:
   clc                
   pop bx
   cmp ax,bx
   jb Greater
   dec cx
   jnz procd
   
 ret
 Greater:
     mov ax,bx
     dec cx
     jnz procd
     ret
   