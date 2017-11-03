.MODEL SMALL
.STACK 100H
.CODE  

 MAIN PROC         
           
   MOV AH,1
   INT 21H    ;get input from the user
   MOV BL,AL   
            
   MOV AH,2
   MOV DL,10
   INT 21H    ;code for newline
   MOV DL,13
   INT 21H 
   
   MOV AH,2
   MOV DL,BL  ;output the input
   INT 21H  
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN