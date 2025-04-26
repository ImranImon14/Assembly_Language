.model small
.stack 100h
.data
msg db "Imran hamid ID:IT22010",10,13,'$'
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
    mov bl,al
    
    mov ah,2
    mov dl,10 ;new line
    int 21h
    mov dl,13 ;cret
    int 21h
     
     mov dl,bl
     int 21h
     
     mov ah,4ch
     int 21h
     main endp
end main
     
                 
                 