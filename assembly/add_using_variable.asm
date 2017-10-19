.MODEL SMALL
.STACK 100H
.CODE 
.DATA 

A DB 2
B DB 4 
C DB 3

 MAIN PROC    
   MOV AX,@DATA
   MOV DS,AX 
   
   MOV AL,A
   MOV BL,B   
   MOV CL,C 
   
   ADD AL,BL
   ADD AL,CL
   ADD AL,48
                  
   MOV AH,2        
   MOV DL,AL   ;output the input            
   INT 21H 
          
   EXIT:
   MOV AH,4CH
   INT 21H
   MAIN ENDP
 END MAIN