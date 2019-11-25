lxi sp,2000h
lxi h,5000h
mvi d,04h
lxi b,6000h
loop: call bcdtobin
	stax b
	inx b
	inx h
	dcr d
	jnz loop

hlt

bcdtobin: push b
push d
mov b,m
mvi a,0Fh
ana b
mov c,a
mvi a,0F0h
ana b
jz bcd1
rrc
rrc
rrc
rrc
mov d,a
mvi e,0AH
xra a
sum: add e
	dcr d
	jnz sum

bcd1: add c
pop d
pop b
ret

