.MODEL SMALL
.STACK 100H
.DATA
.CODE  

MAIN PROC    
    .STARTUP 
  L: 
    MOV AH,1
    INT 21H        ;first input
    MOV BL,AL  
      
    MOV AH,2            
    MOV DL,BL      ;print input  
    INT 21H   
    
    MOV AH,2
    MOV DL, 0DH    ;newline   
    INT 21H
    MOV DL,0AH
    INT 21H    

    CMP BL,65      ;A //if press A the program will terminate 
    JE EXIT        ;loop exit
    JMP L          ;loop jump

    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN