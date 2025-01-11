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
    mov al, 10
    add al, 5


   ;convert to hex

   ;if <= 9
   cmp al, 9
   jbe print
   add al,7 ;if >9, add 7 to jump from 39h(9) to 41h(A).

 print:
    add al,30h
    mov number,al

    ;print add
    mov ah, 02h
    mov dl, number
    int 21h
    
;exit 
    MOV AH, 4Ch      ; Function to terminate the program
    INT 21h          ; Call DOS interrupt to exit
MAIN ENDP

END MAIN
