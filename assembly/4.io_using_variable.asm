.MODEL SMALL
.STACK 100H
.CODE 
.DATA 

A DB ?
B DB ? 

 MAIN PROC    
   MOV AX,@DATA
   MOV DS,AX 
            
   MOV AH,1  
   
   INT 21H    ;first input
   MOV A,AL
   
   INT 21H    ;second input
   MOV B,AL
                  
   MOV AH,2
        
   MOV DL,A   ;output the input            
   INT 21H  
   MOV DL,B  
   INT 21H 
          
   EXIT:
   MOV AH,4CH
   INT 21H
   MAIN ENDP
 END MAIN