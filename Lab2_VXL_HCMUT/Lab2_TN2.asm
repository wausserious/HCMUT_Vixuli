ORG 		2000H
MAIN:
			MOV 		R1,#1011B
			MOV 		R0,#0111B
			ACALL 		DisplayLED
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
			END

				