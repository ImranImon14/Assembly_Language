.model small
.stack 100h
.data
msg db 'Imran hamid ID:IT22010',10,13,'$'
msg1 db 10,13,'Enter a lowercase letter:$'
msg2 db 10,13,'In uppercase it is:$'
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
    sub al,32
    
    mov ah,9
    lea dx,msg2
    int 21h
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    