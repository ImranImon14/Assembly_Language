.model small
.stack 100h
.data
msg db 'Imran Hamid . ID: IT22010 $'
msg1 db 10,13,'Enter A:$'
msg2 db 10,13,'Enter B:$'
msg3 db 10,13,'Result:$' 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
     
    mov ah,9
    lea dx,msg1
    int 21h
    mov ah,1
    int 21h
    sub al,48
    mov bl,al
     
    mov ah,9
    lea dx,msg2
    int 21h
    mov ah,1
    int 21h
    sub al,48
    shl bl,1 ;left shift operation: 2A
    sub al,bl; B-2A
    mov bh,al
    add bh,48 
     
    mov ah,9
    lea dx,msg3 
    int 21h
    mov ah,2
    mov dl,bh
    int 21h
     
     exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    