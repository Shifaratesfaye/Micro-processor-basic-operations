;1) write 8086 programm to find if the given number is even or odd
mov  ax,4311h
mov bx,0002h
  div bx
  add dx,0000h 
  jne odd
  je  even
  ret
  odd:
    mov dx,msgodd offset
    mov ah,9h
    int 21h
    
 ret
 even:
      mov dx,msgeven offset
    mov ah,9h
    int 21h  
    
 ret
 msgodd db 'oddnumber$'
 msgeven db 'Even number$'