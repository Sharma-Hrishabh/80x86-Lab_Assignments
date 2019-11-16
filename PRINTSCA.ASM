dosseg
.model small
.stack 100h
.8086

.data
cr equ 0dh
lf equ 0ah

str1 db 80 dup('$')
msg db "Enter the string:$"

.code
mov ax,@data
mov ds,ax

mov ah,09h
mov dx,offset msg
int 21h

mov si,offset str1
mov cx,0000h

repeat:
mov ah,01h
int 21h
cmp al,0dh
jz stp
mov [si],al
inc si
inc cx
jmp repeat

stp:
mov ah,09h
mov dx,offset str1
int 21h

 mov ax,4c00h
 int 21h


end


