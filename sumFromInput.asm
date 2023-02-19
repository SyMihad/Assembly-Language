.MODEL SMALL
.STACK 100H
.DATA
    firstMsg db "Enter 1st Number: $"
    secondMsg db "Enter 2nd Number: $"
    sum db "Sum= $"

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX,firstMsg
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    MOV BL, AL
    SUB BL, 48
    
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    
    LEA DX, secondMsg
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    MOV CL, AL
    SUB CL, 48
    
    
    ADD BL, CL
    ADD BL, 48
    
    MOV DL, 0DH
    MOV AH, 2
    INT 21H
    
    MOV DL, 0AH
    MOV AH, 2
    INT 21H
    
    LEA DX, sum
    MOV AH, 9
    INT 21H
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP

END MAIN
    
     
    