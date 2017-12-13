
.MODEL SMALL
.STACK 100H
.DATA
b1 DB ?
b2 DB ?
Msg1 DB 10,13,'Type a binary number,up to 8 digits:$'
Msg2 DB 10,13,'The binary sum is: $' 
.CODE
MAIN PROC

     MOV AX,@DATA 
     MOV DS,AX
     MOV AH,9 
     LEA DX,Msg1
     INT 21H
     MOV BL,0
     MOV CX,8
     MOV AH,1
     L1: 
     INT 21H
     CMP AL,0DH
     JE OUT
     SUB AL,30H 
     SHL BL,1
     OR BL,AL
     LOOP L1
     OUT: 
     MOV b1,BL 
     MOV AH,9 
     INT 21H
     MOV BL,0 
     MOV CX,8
     MOV AH,1
     L2: 
     INT 21H
     CMP AL,0DH
     JE OUT2
     SUB AL,30H
     SHL BL,1
     OR BL,AL
     LOOP L2

     OUT2: 
     MOV b2,BL 
     MOV AH,9 
     LEA DX,Msg2
     INT 21H
     ADD BL,B1 
     MOV AH,2
     MOV CX,8

     L3: 
     SHL BL,1 

     JC ONE
     MOV DL,'0'
     INT 21H
     JMP continue
     ONE: 
     MOV DL,'1'
     INT 21H
     continue: 
     LOOP L3

     MOV AH,4CH 
     INT 21H
     MAIN ENDP
END MAIN
    
