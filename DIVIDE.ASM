dosseg
model small
.8086

.data
p1 dw 0234h
p2 db 16h                                                   
p3 db  ?
p4 db ?

.code

start:mov ax,@data
mov ds,ax

mov ax,p1
mov bl,p2
div bl
mov p3,al
mov p4,ah

mov ax,4c00h
int 21h

end start
