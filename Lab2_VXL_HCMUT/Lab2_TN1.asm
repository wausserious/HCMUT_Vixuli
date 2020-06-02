			ORG	2000H
MAIN:		ACALL DisplayLED
DisplayLED:	MOV		A,#0E9h
			MOV 	DPTR,#0000h
			MOVX	@DPTR,A
			RET
			END
				