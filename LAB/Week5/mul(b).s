.DATA
A: .WORD 1,2,3,4,5,6,7,8,9
B: .WORD 9,8,7,6,5,4,3,2,1
C: .WORD 0,0,0,0,0,0,0,0,0
.TEXT
LDR R0,=A
LDR R1,=B
LDR R2,=C
MOV R12,#0
MOV R3,#0
MOV R4,#0
MOV R5,#0
MOV R8,#3
L1: 
    MLA R6,R3,R8,R4
    MLA R7,R4,R8,R5
    LDR R10,[R0,R6,LSL #2]
    LDR R11,[R1,R7,LSL #2]
    MLA R12,R10,R11,R12
    ADD R4,R4,#1
    CMP R4,#3
    BNE L1
    MLA R9,R3,R8,R5
    STR R12,[R2,R9,LSL #2]
    MOV R4,#0
    MOV R12,#0
    ADD R5,R5,#1
    CMP R5,#3
    BNE L1
    MOV R5,#0
    ADD R3,R3,#1
    CMP R3,#3
    BNE L1

SWI 0X11