.MODEL SMALL
.STACK 100H
.DATA
.CODE    

MSG DB "Enter Number of Star : ","$"

MAIN PROC    
    .STARTUP 
    
    LOOP:
      MOV DX,OFFSET MSG        
      MOV AH,09H   
      INT 21H 
      
      MOV AH,1
      INT 21H        ;first input
      MOV BL,AL
      SUB BL,48
               
      MOV AH,2
      MOV DL, 0DH    ;newline   
      INT 21H
      MOV DL,0AH
      INT 21H        
             
      MOV CX,0
      MOV CL,BL
      MOV AH,2            
      MOV DL,'*'     ;print input  
     
      L:
        INT 21H   
      LOOP L   
      
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN