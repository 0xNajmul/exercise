.MODEL SMALL
.STACK 100H
.CODE 

 MAIN PROC
   MOV AH,1  
   
   INT 21H    ;first input
   MOV BL,AL
   
   INT 21H    ;second input
   MOV CL,AL
   
   SUB BL,CL  ;sub
                  
   MOV AH,2
   ADD BL,48  ;show output
   MOV DL,BL
   INT 21H     
   
   EXIT:
   MOV AH,4CH
   INT 21H
   MAIN ENDP
 END MAIN