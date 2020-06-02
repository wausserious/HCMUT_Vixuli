         ORG 2000H
   LOOP: MOV C,P1.0
         MOV P3.0, C
		 SJMP LOOP
		 END