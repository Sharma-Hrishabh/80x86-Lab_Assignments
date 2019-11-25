lxi sp,2000h
lxi h,5000h
lxi d,7000h
mov a,m
mov b,a
rrc
rrc
rrc
rrc
call ascii
stax d
inx d
mov a,b
call ascii
stax d
hlt


ascii: ani 0FH
	cpi 0Ah
	jc fwd
	adi 07H
	fwd: adi 30h
	ret

