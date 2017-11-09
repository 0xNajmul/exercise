.MODEL SMALL
.STACK 100H
.DATA
.CODE

VAR DB 0

MAIN PROC    
    MOV AH,1    
    INT 21H       ;input one
    SUB AL,30H
    MOV BH,AL
    
    MOV AH,2
    MOV DL,10     ;newline
    INT 21H
    MOV DL,13
    INT 21H   
    
    MOV BL,1
    MOV CX,0
    MOV CL,BL
   
    L2:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    LOOP L2
    
    MOV AH,2
    MOV DL,10     ;output
    INT 21H       
    MOV DL,13
    INT 21H
   
    CMP BL,BH
    JE EXIT
    INC BL
    MOV CL,BL
    JMP L2
    
   EXIT:    
    MOV AH,4CH
    INT 21H     
    MAIN ENDP
END MAIN

