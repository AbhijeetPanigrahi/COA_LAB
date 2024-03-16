;   Abhijeet Panigrahi
;   2241016151

; -------  OBJECTIVE - 1  ----------


; Multiplication

MOV AL, 4H
MOV BL, 4H
MUL BL          ; AX => 00 10  

; Division

MOV AX, 1389H
MOV BL, 19H
DIV BL          ; AX => 01 C8  C8 is quotient(AL) and 01 is reminder(AH)  


; Addition

MOV AX, 1234H
MOV CX, 0002H
ADD AX,CX       ; AX => 12 36

;Subtraction

MOV CX, 1284H
MOV BX, 0054H
SUB CX,BX       ; CX => 12 30

; Multiplication (given by ma'am)

MOV AX, 0006H
MOV BX, 0003H
MUL BX  


; ---------  OBJECTIVE - 2  ------------


; Swap

MOV CX, 1454H
MOV BX, 4571H
XCHG CX,BX 

; And or xor

MOV AX, 12H
MOV BX, 20H
MOV CX, AX
AND CX, BX
XOR AX, BX
OR  CX, AX


; ---------  OBJECTIVE - 3  ------------


; Binary to gray code

MOV AX, 05H
MOV BX,AX      ; Storing AX in BX
SHR AX,01      ; Shifted by 01
XOR AX,BX      ; AX => 07
MOV [1230], AX ; AX => 07   


; ---------  OBJECTIVE - 4  ------------


; 2's complement of an 8-bit number    

MOV AL, 1            ; Load the immediate value 1 into AL                     
NOT AL               ; Negate each bit                     
ADD AL, 1            ; Add 1 to the result (perform 2's complement)
MOV BL, AL           ; Store the result in BL