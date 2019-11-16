dosseg
model small
.8086
.stack 100h

.data
cr equ 0dh
lf equ 0ah

msg db "I am Hrishabh$"


.code
main proc
mov ax,@data
mov ds,ax

call reverse

mov ah,09h
mov dx,offset msg
int 21h

mov ax,4c00h
int 21h
main endp

reverse proc

mov si,offset msg

mov cx,0h

repeat:
mov ax,[si]
cmp al,'$'
je label1

push [si]

inc si
inc cx
jmp repeat

label1:
mov si,offset msg
repeat2:
cmp cx,0
je label2
pop dx


xor dh,dh

mov [si],dx

inc si
dec cx
jmp repeat2

label2:
mov [si],'$'
ret

reverse endp

end main
