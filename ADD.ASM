dosseg
model small
.8086

.data
p1 dw 2312h
p2 dw 4456h
p3 dw ?

.code
mov ax,@data
mov ds,ax

mov ax,p1
add ax,p2
mov p3,ax


mov ax,4c00h
int 21h
end
