.MODEL SMALL
.STACK 100H
.CODE  
.DATA

MSG1 DB "Enter a Word : ","$"
MSG2 DB "Your Entered : ","$"

 MAIN PROC  
    .STARTUP 

   MOV DX,OFFSET MSG1        
   MOV AH,09H   
   INT 21H 
         
   MOV AH,1
   INT 21H    ;get input from the user
   MOV BL,AL  
   
   MOV AH,2
   MOV DL,10
   INT 21H    ;code for newline
   MOV DL,13
   INT 21H 
      
   MOV DX,OFFSET MSG2        
   MOV AH,09H   
   INT 21H                     
            
   MOV AH,2
   MOV DL,BL  ;output the input
   INT 21H             
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN