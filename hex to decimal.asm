.model small
.stack 100h
.data
msg1 db 'Imran Hamid.ID:IT-22010$'
msg2 db 10,13,'Enter a hex digit:$'
msg3 db 10,13,'In decimal it is: 1'
c1 db ?,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    
    sub al,11h ;convert hex to decimal
    mov c1,al
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    


                            