
lxi sp,2000h
mvi c,04h
mvi d,01h

call factorial

hlt


factorial: nop
	loop: call multiply
	dcr c
	jnz loop
	ret

multiply: mov e,c
	mvi a,00h
	repeat: add d
	dcr e
	jnz repeat
	mov d,a
	ret
		 
	 
	


