.model small
.stack 100h
.data
m1 db 'Imran Hamid. ID:IT-22010',10,13,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    cmp bl,bh
    jg print1
    jmp print2
    
    print1:
    mov ah,2
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    jmp exit
    
    print2:
     mov ah,2
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main