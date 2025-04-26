.model small
.stack 100h
.data 
m1 db 'Imran Hamid. ID:IT-22010',10,13,'$'
m2 db 10,13,'***********',10,13 
m3 db '***********',10,13 
m4 db '***********',10,13
m5 db '***********',10,13
m6 db '***********',10,13
m7 db '****'
c1 db ?
c2 db ?
c3 db ?
m8 db '****',10,13
m9 db '***********',10,13
m10 db '***********',10,13
m11 db '***********',10,13
m12 db '***********',10,13
m13 db '***********$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,2
    mov dl,'?'
    int 21h
    
    mov ah,1
    int 21h
    mov c1,al
    int 21h
    mov c2,al
    int 21h
    mov c3,al
    
    mov ah,9
    lea dx,m2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    

