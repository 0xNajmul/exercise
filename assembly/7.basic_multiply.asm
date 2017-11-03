.MODEL SMALL
.STACK 100H
.CODE  

 MAIN PROC

    MOV AL,2  ;INPUT 1 (A)           
    MOV BL,3  ;INPUT 2 (B)         
   
    MUL BL    ; BL always multiply with AL
    ADD AL,30H 
   
    MOV AH,2
    MOV DL,AL
    INT 21H     
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN