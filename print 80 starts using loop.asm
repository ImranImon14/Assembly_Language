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
    mov cx,80
    mov dl,'*'
    
    top:
    int 21h
    dec cx
    jnz top
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main