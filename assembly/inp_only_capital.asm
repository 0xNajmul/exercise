.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC       
    MOV AH,1
    INT 21H
    
    CMP AL,'A'
    JGE END_IF
    JMP EXIT
    
    END_IF:
    CMP AL,'Z'     
    JLE POP 
    
    JMP EXIT
    
    POP:
      
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP