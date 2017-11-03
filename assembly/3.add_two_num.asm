.MODEL SMALL
.STACK 100H
.CODE  

 MAIN PROC 
            
   MOV AH,1
   INT 21H    ;first input
   MOV BL,AL   
   
   MOV AH,1
   INT 21H    ;second input
   MOV CL,AL 
    
   ADD BL,CL  ;add
   SUB BL,48 
    
   MOV AH,2    
   MOV DL,BL  ;output the input
   INT 21H  
           
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN