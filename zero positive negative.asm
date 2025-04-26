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
    
    mov ax,-7
    cmp ax,0
    je zero
    jg positive
    jl negative
    zero:
    mov ah,2
    mov dx,0
    add dx,48
    int 21h
    jmp exit
    
    positive:
    mov ah,2
    mov dx,1
    add dx,48
    int 21h
    jmp exit
    
    negative:
    mov ah,2
    mov dx,45
    int 21h
    mov dx,1
    add dx,48
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    