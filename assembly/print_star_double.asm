.MODEL SMALL
.STACK 100H
.DATA
.CODE    

MSG DB "Enter Number of Star : ","$" 
VAR DB ?                               
                                          
MAIN PROC    
    .STARTUP      
    
      MOV DX,OFFSET MSG        
      MOV AH,09H   
      INT 21H 
      
      MOV AH,1
      INT 21H        ;first input
      SUB AL,48       
      
      MOV CX,0
      MOV CL,AL
      MOV BX,0
      MOV BL,AL                       
      MOV VAR,AL
      
      MOV AH,2
      MOV DL, 0DH    ;newline   
      INT 21H
      MOV DL,0AH
      INT 21H 
      
      L:
      MOV AH,2            
      MOV DL,'*'     ;print Star  
                     
      INT 21H     
      DEC BL         ;Loop
      
      CMP BL,0 
      JE EXIT
      JMP L
      
    EXIT: 
    
      MOV AH,2
      MOV DL, 0DH    ;newline   
      INT 21H
      MOV DL,0AH
      INT 21H  
            
      MOV BL,VAR
      LOOP L
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN