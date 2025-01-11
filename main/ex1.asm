.MODEL SMALL
.STACK 100h

.DATA
RESULT db  'Result: $' , 0
number db ?

.CODE

MAIN PROC

    MOV AX, @DATA
    MOV DS,AX

    MOV AH, 09h      
    LEA DX, Result
    INT 21h

    ;add
    mov al, 5
    add al, 3


    ;convert to hex
    add al,30h
    mov number,al

    ;print add

    mov ah, 02h
    lea dx, number

    

    MOV AH, 4Ch      ; Function to terminate the program
    INT 21h          ; Call DOS interrupt to exit
MAIN ENDP

END MAIN
