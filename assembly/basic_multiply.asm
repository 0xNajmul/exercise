.MODEL SMALL
.STACK 100H
.CODE 

 MAIN PROC    
      
   MOV AL,3   ;first input    
    
   MOV CL,2   ;second input
   
   MUL CL     ;mul always work with AL
                  
   MOV AH,2 
   ADD AL,48  ;show output
   MOV DL,AL  ;show output
   INT 21H 
          
   EXIT:
   MOV AH,4CH
   INT 21H
   MAIN ENDP
 END MAIN