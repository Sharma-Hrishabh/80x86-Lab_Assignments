mvi c,06h
lxi sp,2000h
lxi h,5000h
call fibonaci
hlt

fibonaci: mvi m,01h
	dcr c
	inx h
	mvi m,01h
	dcr c
	inx h

	loop: dcx h
		mov d,m
		dcx h
		mov a,m
		inx h
		inx h
		add d
		mov m,a
		inx h
		dcr c
		jnz loop

ret

 

