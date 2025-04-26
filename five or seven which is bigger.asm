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
    
    mov ax,5
    mov bx,7
    
    cmp ax,bx
    jg level1
    
    mov cx,bx
    add cx,48
    mov ah,2
    mov dx,cx
    int 21h
    jmp exit
    
    level1:
    mov cx,ax
    add cx,48
    mov ah,2
    mov dx,cx
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    