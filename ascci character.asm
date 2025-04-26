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
    
    mov cx,80h ;loop 128 times
    mov bh,80h ;start from ascii 80h
    mov bl,0 ; counter 10 char per line
    
    mov ah,2
    print_loop:
    mov dl,bh
    int 21h    
    mov dl,' ' ;ascii space char
    int 21h
    
    inc bh   ;move to next ascii
    inc bl   ;incr char count
    
    cmp bl,10 ;if 10 char printed
    jne continue ; if not continue
    
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov bl,0   ;reset char count
    
    continue:
    loop print_loop ;repeat until cx=0
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
    