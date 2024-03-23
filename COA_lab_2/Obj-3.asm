; Abhijeet Panigrahi
; 2241016151
; section-05

MOV SI, 3500H
MOV DI, 4500H
MOV CX, 06H
L1: MOV AX, [SI]
    MOV [DI], AX
    INC SI
    INC SI
    INC DI
    INC DI
    INC DI
    LOOP L1
HLT