dosseg
.model small
.stack 100h
.8086

.data
arr db 05h,09h,21h,01h,02h

.code
mov ax,@data
mov ds,ax

mov cl,04h
repeat:
lea bx,arr
cmp cl,00h
jz stp
	mov ch,04h
	repeat2:cmp ch,00h
			jz fwd2
			mov al,[bx]
			mov dl,[bx+1]
			cmp al,dl
			jc fwd
			xchg al,dl
			mov [bx],al
			mov [bx+1],dl
			fwd:inc bx
				dec ch	
				jmp repeat2
fwd2:dec cl
jmp repeat
stp:mov ax,4c00h
	int 21h
end
