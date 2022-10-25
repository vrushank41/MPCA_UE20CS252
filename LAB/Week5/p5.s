;Addition of two matrix

.DATA
A:.WORD 10,20,30,40,40,50,60,70,80,90
B:.WORD 10,20,30,40,40,50,60,70,80,90
C:.WORD 0,0,0,0,0,0,0,0,0

.TEXT

LDR R0,=A
LDR R1,=B
LDR R2,=C
MOV R3,#0   ;Inner loop counts j index
MOV R4,#0   ;Outer loop count i index
MOV R10,#3
MOV R12,#4

Loop1:LDR R5,[R0],#4
LDR R6,[R1],#4
ADD R7,R5,R6
STR R7,[R2],#4
ADD R4,R4,#1
CMP R4,#3
BNE Loop1
ADD R3,R3,#1
MOV R4,#0
CMP R3,#3
BNE LOOP1
SWI 0X011