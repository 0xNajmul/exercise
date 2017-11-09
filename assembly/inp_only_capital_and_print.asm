.MODEL SMALL
.STACK 100H
.CODE 
.DATA 

STRING DB "Enter a Char: ","$"  
ERROR DB "Wront Char !","$"

MAIN PROC  
    .STARTUP
     
    MOV DX,OFFSET STRING        
    MOV AH,09H   
    INT 21H 
     
    MOV AH,1
    INT 21H    
    MOV BL,AL 
    INT 21H    
    MOV CL,AL   
         
    CMP BL,'A'
    JGE CAP
    JMP EXIT
    
    CAP:
    CMP AL,'Z'     
    JLE POP 
    
    MOV AH,2
    MOV DL,10
    INT 21H    
    MOV DL,13
    INT 21H 
    
    JMP ERR
    JMP EXIT
    
    POP:
    CMP BL,CL
    JGE L
    JLE H
      
    H:
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    L:
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,BL
    INT 21H
    JMP EXIT 
    
    ERR:
    MOV DX,OFFSET ERROR        
    MOV AH,09H   
    INT 21H          
         
    EXIT:
    MOV AH,4CH    
    INT 21H       
    MAIN ENDP     
END MAIN   