.DATA
A: .WORD 32

.TEXT
LDR R0,=A
MOV R1,#15
LDR R2,[R0]
MOV R3,#8

LOOP: ANDS R4,R1,R2
    ADDS R5,R5,R4
    MOV R2, R2,LSR #4
    SUB R3,R3,#1
    CMP R3,#0
    BNE LOOP

SWI 0X011
