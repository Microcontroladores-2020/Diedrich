INIT:
	ORG 0X00
	BCF STATUS,RP1
	BSF STATUS,RP0
	CLRF TRISC ; TRISC = 0 para portC ser OUTPUT
	BCF STATUS,RP0 ; 
	MOVLW 85 ; SETANDO A PORTA C COM 01010101 85 Decimal
	MOVWF PORTC
LOOP:
	COMF PORTC,1 ; SETANDO A PORTA C COM O SEU COMPLEMENTAR
	GOTO LOOP