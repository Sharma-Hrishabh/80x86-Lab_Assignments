dosseg
model small
.8086


.data
arr dw 0001H,0002H,0003H
sum dw 0000H

.code
start:mov ax,@data
mov ds,ax
lea bx,arr
mov cx,0003h
mov dx,sum
repeat_again:
       mov ax,[bx]
       add dx,ax
       inc bx
       inc bx
       dec cx
       jnz repeat_again
       mov sum,dx

       mov ax,4c00h
       int 21h
end start



