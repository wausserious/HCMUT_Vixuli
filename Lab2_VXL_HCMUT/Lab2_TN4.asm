ORG 		2000H
MAIN:
REVERSE:	MOV 		R1,#1H
			MOV 		R0,#1H
INCLOOP:	ACALL 		DisplayLED
			ACALL 		Delay1sIns
			INC			R0
			INC 		R1
			CJNE		R0,#5h,INCLOOP
			SJMP		REVERSE

DisplayLED: 
			MOV 		B, R1 
			MOV 		A, #11110111B
SHIFTLOOP: 
			RL 			A 
			DJNZ 		B, SHIFTLOOP
			ANL 		A, #0F0H 
			PUSH 		ACC 
			MOV 		A, R0 
			ANL 		A, #0FH 
			MOV 		R0, A 
			POP 		ACC 
			ORL 		A, R0 
			MOV 		DPTR,#0001H
			MOVX 		@DPTR,A	 	
			RET

Delay1sIns:
			MOV 		R7,#8;
LP2:		MOV 		R6,#250;
LP1:		MOV 		R5,#250
			DJNZ 		R5,$;
			DJNZ 		R6, LP1;
			DJNZ 		R7, LP2;
			RET

		
			END
