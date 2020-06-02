ORG 0000H
MAIN:			
LAP:	CLR 	P1.0
		ACALL 	Delay1sIns
		SETB 	P1.0
		CLR 	P1.1
		ACALL 	Delay1sIns
		SETB 	P1.1
		CLR 	P1.2
		ACALL 	Delay1sIns
		SETB 	P1.2
		CLR 	P1.3
		ACALL 	Delay1sIns
		SETB 	P1.3
		CLR 	P1.4
		ACALL 	Delay1sIns
		SETB 	P1.4
		CLR 	P1.5
		ACALL 	Delay1sIns
		SETB 	P1.5
		CLR 	P1.6
		ACALL 	Delay1sIns
		SETB 	P1.6
		CLR 	P1.7
		ACALL 	Delay1sIns
		SETB 	P1.7
		ACALL 	Delay1sIns
		SJMP 	LAP
			 	
Delay1sIns:	
		MOV R5, #8	 ;
LP2:	MOV R6, #250 ;
LP1: 	MOV R7, #250
		DJNZ	R7,$ ;
		DJNZ	R6,LP1;
		DJNZ	R5,LP2 ;
		RET
		END