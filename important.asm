.model small
.stack 100h
.data
msg db 'Imran Hamid. ID:IT-22010',10,13,'$'
m1 db 10,13,'Enter a hex digit: $'
m2 db 10,13,'In decimal it is: '
c1 db ?,'$'
m3 db 10,13,'Do you want to do it again?','Y/N $'
m4 db 10,13,'Illegal characer-Enter 0..9 or A..F $'
m5 db 10,13,'In decimal it is: 1'
c2 db ?,'$'
m6 db 10,13,'Try again later$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    begin:
    mov ah,9
    lea dx,m1
    int 21h
    mov cx,'0'
    
    input:
    mov ah,1
    int 21h
    
    cmp al,'0'
    jl illegal_check
    cmp al,'9'
    jg illegal_check
    
    mov c1,al
    mov ah,9
    lea dx,m2
    int 21h
    
    msg_show:
    mov ah,9
    lea dx,m3
    int 21h
    
    mov ah,1
    int 21h
    cmp al,'Y'
    je begin
    cmp al,'y'
    je begin
    jmp exit
    
    illegal_check:
    cmp al,'A'
    jl illegal
    cmp al,'F'
    jg illegal
    
    sub al,11h
    mov c2,al
    mov ah,9
    lea dx,m5
    int 21h
    jmp msg_show:
    
    illegal:
    cmp cx,'3'
    je terminate
    mov ah,9
    lea dx,m4
    int 21h
    inc cx
    jmp input
    
    terminate:
    mov ah,9
    lea dx,m6
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
