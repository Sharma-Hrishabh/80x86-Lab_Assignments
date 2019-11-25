lxi sp,2000h
lxi h,5000h
mvi c,03h
lxi d,6000h

repeat: mov a,m
	call pwrten
	inx h
	inx d
	dcr c
	jnz repeat
hlt

pwrten: push h
	xchg 
	mvi b,64H
	call bintobcd
	mvi b,0Ah
	call bintobcd
	mov m,a
	xchg
	pop h
	ret


bintobcd: mvi m,0ffh
	loop: inr m
		sub b
		jnc loop
		add b
		inx h

	mov m,a

	ret

