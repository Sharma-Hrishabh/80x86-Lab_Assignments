dosseg
.model small
.stack 100h
.8086


.data
cr equ 0dh
lf equ 0ah
p1 dw 0004h
a1 dw ?
a2 dw ?
msg1 db "Enter the number$"
msg2 db cr,lf,"The factorial is:$"

.code
print macro msg
        mov ah,09h
        mov dx,offset msg
        int 21h
endm

main proc far
mov ax,@data
mov ds,ax
mov cx,p1
mov ax,0001h
mov dx,0000h
repeat:mul cx
      loop repeat
mov a1,ax
mov a2,dx

mov dx,a1
add dx,30h
mov ah,02h
int 21h


mov ax,4c00h
int 21h

main endp

end main
