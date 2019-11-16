dosseg
model small
.8086

.data
p1 db 02h
p2 db 03h
gcd db ?
lcm db ?
.code
start:	mov ax,@data
        mov ds,ax

        mov al,p1
        mov bl,p2

label1: cmp bl,00h
      jz complete
      mov dl,bl
      mov ah,00h
      div bl
      mov bl,ah
      mov al,dl
      jmp label1

complete:mov gcd,al

mov al,p1
mov bl,p2
mul bl
mov gcd,bl
div bl
mov lcm,al

mov ax,4c00h
int 21h
end start


