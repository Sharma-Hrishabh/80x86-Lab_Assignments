dosseg
.model small
.stack 100h
.8086


.data
d1 dw 028Fh


.code
main proc far
mov ax,@data
mov ds,ax

mov ax,d1
call print

mov ax,4c00h
int 21h

main endp

print proc
mov cx,0
mov dx,0

repeat:
     cmp ax,0
     je fwd
     mov bx,10
     div bx
     push dx
     inc cx
     xor dx,dx
     jmp repeat

fwd:cmp cx,0
    je stp
    pop dx
    dec cx
    add dx,48

    mov ah,02h
    int 21h
    jmp fwd

 stp:  ret
 print endp
 end main










