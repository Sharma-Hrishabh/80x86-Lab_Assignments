dosseg
.model small
.8086

.data
a db 11h
b db 08h
c db ?

.code
mov ax,@data
mov ds,ax

mov al,a
sub al,b
mov c,al

mov ax,4c00h
int 21h
end
