.model small
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    cmp al,'A'
    jl lo
    cmp al,'Z'
    jg lo
    cmp al,'a'
    jl up
    cmp al,'z'
    jg up
    
    lo:
    sub al,32
    mov ah,2
    mov dl,al
    int 21h
    jmp exit
    up:
    add al,32
    mov ah,2
    mov dl,al
    int 21h
    exit:
    mov ah,4ch
    int 21h
    main endp
end main