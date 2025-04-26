.model small
.stack 100h
.data
m1 db 'in decimal it is 1'
c1 db ?,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub al,11h
    mov c1,al
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    