;   Counting no. of zeroes in 8-bit number

MOV BX, 2000H   ;   SI can be used instead of BX
MOV AX, [BX]    ;   Data to be entered in 2000 memory
MOV CL, 16H
MOV CH, 00H
L2: SHR AX, 1H
JC L1
INC CH
L1: DEC CL
JNZ L2
INC BX
MOV [BX], CH     ;  Result to be checked in 2001
HLT