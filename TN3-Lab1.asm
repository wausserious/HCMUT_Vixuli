ORG 2000H
		MAIN:
		CLR P1.0               
		ACALL Delay1sIns	   
		SETB P1.0			   
		ACALL Delay1sIns		
		SJMP MAIN				
Delay1sIns:
		MOV R7,#8;
LP2:	MOV R6,#250;
LP1:	MOV R5,#250
		DJNZ R5,$;
		DJNZ R6, LP1;
		DJNZ R7, LP2;
		RET
		END

