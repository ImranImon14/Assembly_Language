.model small
.stack 100h
.data
msg db 'Imran Hamid. ID:IT-22010',10,13,'$'
msg1 db 'Enter three initials: $'
msg2 db 10,13
c1 db ?,10,13
c2 db ?,10,13
c3 db ?,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov c1,al
    mov ah,1
    int 21h
    mov c2,al
    
     mov ah,1 
     int 21h
    mov c3,al
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main