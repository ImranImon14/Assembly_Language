.model small
.stack 100h
.data
msg1 db 'Imran Hamid.ID:IT-22010',10,13,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov bh,10 ;row counter
    
    row:
    mov bl,10 ;column counter
    col:
    mov ah,2
    mov dl,'*'
    int 21h
    dec bl
    jnz col  ;repeat 10 times
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    dec bh
    jnz row  ;repeat 10 times
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    
