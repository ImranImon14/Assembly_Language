.model small
.stack 100h
.data
msg db 'Imran Hamid. ID:IT-22010',10,13,'$'
msg1 db 10,13,'The sum of '
c1 db ?,' and '
c2 db ?,' is '
c3 db ?,'$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov c1,al
    
    mov ah,1
    int 21h
    mov c2,al
    
    add al,c1
    sub al,48
    mov c3,al
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main