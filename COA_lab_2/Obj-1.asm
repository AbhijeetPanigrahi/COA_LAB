;   ABHIJEET PANIGRAHI
;   2241016151

; ------------ Objective-1 ---------------

MOV SI, 2000H
MOV CL, [SI]            ; Declared N in the 2000H memory location 
MOV CH, 00H
MOV BX,CX
MOV AX,0000H
L2: INC SI              ; 16-bit data can be given from 2002H memory location onwards
    INC SI
    ADD AX, [SI]
    JNC L1
    INC CH
L1: DEC CL
    JNZ L2
    INC SI
    INC SI
    MOV [SI], AX         ; Sum stored in next consecutive location 
    INC SI
    INC SI
    MOV [SI], CH         ; carry stored in next consecutive location
    MOV DL,CH
    DIV BX               ; (DXAX/Bx)
    INC SI
    INC SI               
    MOV [SI], AX         ; result (quotient) to be checked in next consecutive location 
    INC SI
    INC SI
    MOV [SI], DX         ;  result (remainder) to be checked in next consecutive location



