.model small
.stack 100h
.data
msg db 'Imran Hamid . ID: IT22010 ',10,13,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    sub al,48 ;convert ascii to int
    mov bl,al 
    
     mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov al,5
    sub al,bl
    add al,48  ;convert int to ascii 
    
   
    mov ah,2
    mov dl,al
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    