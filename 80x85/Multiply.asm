lxi sp,2000h
mvi h,10h
mvi b,10h
mvi c,00h
call multiply

hlt


multiply: mvi a,00h
	loop: add h
		jnc fwd
		inr c		
		fwd: dcr b
		jnz loop

	sta 6000h
	mov a,c
	sta 6001h	
	ret

	 



