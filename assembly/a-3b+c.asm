.MODEL SMALL
.STACK 100H
.CODE  

 MAIN PROC

    MOV BL,11  ;INPUT 1 (A)
    MOV CL,2  ;INPUT 2 (C) 
                                ;A-3B+C
    MOV AL,2  ;INPUT 2 (B)      ;9-8    
    MOV DL,3  ;INPUT 2 (3)  
      
    MUL DL 
    
    ADD CL,AL
    SUB BL,CL
   
    MOV AH,2
    MOV DL,BL
    INT 21H     
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN