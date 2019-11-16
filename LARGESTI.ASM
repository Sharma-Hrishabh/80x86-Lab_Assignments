dosseg
model small
.8086


.data
arr db 10h,23h,11h,98h,5h
largest db 00h
smallest db 0ffh

.code
mov ax,@data
mov ds,ax
mov cx,05h
lea bx,arr
mov dh,largest
mov dl,smallest
repeat:mov al,[bx]
       cmp dh,al
       jnc fwd2
       mov dh,al

       fwd2:cmp dl,al
       jc fwd
       mov dl,al

       fwd:inc bx
       dec cx
       jnz repeat


       mov largest,dh
       mov smallest,dl
       mov ax,4c00h
       int 21h

 end

