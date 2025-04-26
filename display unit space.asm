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
    
    repeat:
    mov ah,1
    int 21h
    
    cmp al,' '
    je exit
    jmp repeat
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main