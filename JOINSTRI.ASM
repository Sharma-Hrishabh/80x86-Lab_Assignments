dosseg
.model small
.stack 100h
.8086

.data
cr equ 0dh
lf equ 0ah
str1 db 80 dup('$')
str2 db 80 dup('$')
str3 db 80 dup('$')
msg db cr,lf,"Enter the string$"
msg2 db cr,lf,"Length is:$"
length1 dw ?
length2 dw ?

.code
print macro msg
mov ah,09h
mov dx,offset msg
int 21h
endm

main proc far
mov ax,@data
mov ds,ax

print msg
mov si,offset str1
mov bx,length1
call scanstring
mov length1,bx
print str1
print msg
mov si,offset str2
mov bx,length2
call scanstring
mov length2,bx
print str2

;join
mov si,offset str1
mov bx,offset str2
mov dx,length1
add si,dx
mov cx,length2
repeat2:
       cmp cx,0000h
       jz fwd2
       mov al,[bx]
       mov [si],al
       dec cx
       inc si
       inc bx
       jmp repeat2

fwd2:
mov ax,4c00h
int 21h
main endp

scanstring proc
mov cx,0000h
repeat:mov ah,01h
       int 21h
       cmp al,0dh
       jz stp
       mov [si],al
       inc si
       inc cx
       mov bx,cx
       jmp repeat
stp:ret
scanstring endp
end main

