dosseg
model small
.8086

.data
p1 dw 2312h
p2 dw 4456h
p3 dw ?
p4 dw ?

.code
mov ax,@data
mov ds,ax

mov ax,p1
mov bx,p2

mul bx
mov p3,dx
mov p4,ax

mov ax,4c00h
int 21h
end


