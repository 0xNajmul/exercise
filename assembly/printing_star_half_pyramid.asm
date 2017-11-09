.MODEL SMALL
.STACK 100H
.CODE 
.DATA 

STRING DB "Number of Star: ","$"  
SPACE DW 16               ;sorry this code is not dynamic
STAR DW 1

 MAIN PROC    
    .STARTUP   
    
   MOV DX,OFFSET STRING        
   MOV AH,09H               ;STRING MSG
   INT 21H  
   
   MOV AH,1                 ;INPUT
   INT 21H 
   SUB AL,48 
   
   MOV AH,2
   MOV DL,10                ;NEWLINE
   INT 21H   
   MOV DL,13
   INT 21H
   
   MOV CX,5
   OUTER:
   MOV BX,CX   
   MOV CX,SPACE
          
   L1:
   MOV DL,32
   MOV AH,2
   INT 21H       
          
          
   LOOP L1
   DEC SPACE
   
   
   MOV CX,STAR
   K1: 
   MOV DL,'*'
   MOV AH,2
   INT 21H
   
   LOOP K1
   ADD STAR,2
   
   MOV AH,2
   MOV DL,10
   INT 21H                  ;NEWLINE
   MOV DL,13
   INT 21H
   
   MOV CX,BX 
    
   LOOP OUTER       
   EXIT:
   MOV AH,4CH    
   INT 21H       
   MAIN ENDP     
 END MAIN   