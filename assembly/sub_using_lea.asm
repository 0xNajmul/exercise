.MODEL SMALL
.STACK 100H
.DATA  

MSG1 DB 'ENTER VALUE1: $'
MSG2 DB 'ENTER VALUE2: $' 
MSG3 DB 'SUBTRACTION OF  $' 
MSG4 DB ' FROM $'
MSG5 DB ' IS: $'
    
.CODE
MAIN PROC

    MOV AX,@DATA
    MOV DS, AX

    LEA DX, MSG1
    MOV AH,9        ;ENTER VALUE1:
    INT 21H
    
    MOV AH,1
    INT 21H        ;ist input to BL
    MOV BL,AL 
     
    MOV AH,2
    MOV DL, 0DH      ;newline
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    LEA DX, MSG2      ;ENTER VALUE2:
    MOV AH,9
    INT 21H
        
    MOV AH,1
    INT 21H         ;2nd input to CL
    MOV CL,AL
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H         ;newline
    MOV DL,0AH
    INT 21H 
    
    LEA DX, MSG3
    MOV AH,9         ;SUBTRACTION OF
    INT 21H
     
    MOV AH,2         ;2nd value
    MOV DL,CL
    INT 21H  
      
    LEA DX, MSG4    ; FROM
    MOV AH,9
    INT 21H
    
    MOV AH,2         ;1st value
    MOV DL,BL
    INT 21H  

    LEA DX, MSG5      ;IS
    MOV AH,9
    INT 21H
         
    SUB BL,CL        ;BL = sub
      
    MOV AH,2
    ADD BL, 48
     
    MOV DL,BL
    INT 21H
   
    MOV AH, 4CH
    INT 21H
     MAIN ENDP
END MAIN   