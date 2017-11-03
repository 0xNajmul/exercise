.MODEL SMALL
.STACK 100H
.CODE 
.DATA 

STRING DB "Hello World","$"

 MAIN PROC     
                 ; // .STARTUP or,
    .STARTUP     ; MOV AX,@DATA
                 ; MOV DS,AX
    
   MOV DX,OFFSET STRING        
   MOV AH,09H   
   INT 21H 
          
   EXIT:
   MOV AH,4CH    ; // .EXIT or,
   INT 21H       ; MOV AX,4CH
   MAIN ENDP     ; INT 21H
 END MAIN   