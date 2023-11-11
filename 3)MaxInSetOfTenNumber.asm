
    ;3) write the 8086 programm to find maximum number in th given then set of number

   push  0278h   
   push  1234h
   push  6275h
   push  0009h
   push  0278h
   push  0234h
   push  0236h
   push  0238h
   push  8023h
   push  5023h
   push  3023h
                   
  mov al,0000h
  mov cl,0010h
    
                       
  Repeat:
      clc
      pop bx
      jb Greater
      dec cx
      jnz Repeat
      
 ret
 
 Greater:
      mov ax,bx
      dec cx
      jnz Repeat
      
  ret         
 
   
   