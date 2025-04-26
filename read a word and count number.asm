.model small
.stack 100h
.code
main proc
    mov cx,0
    
    read_loop:
    mov ah,1
    int 21h
    cmp al,13
    je done
    inc cx
    jmp read_loop
    
    done:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov dx,cx
    mov ah,2 
    add dl,'0'
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    