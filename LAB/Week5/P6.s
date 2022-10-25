;Multiplication of two matrix using MLA instruction

.DATA
A:.WORD 1,1,1,1,1,1,1,1,1
B:.WORD 1,1,1,1,1,1,1,1,1
C:.WORD 0,0,0,0,0,0,0,0,0

.TEXT

LDR R0,=A
LDR R1,=B
LDR R2,=C
MOV R8,#0   ;Outer loop count i index
MOV R9,#0   ;Inner loop counts j index
MOV R10,#0   ;K index

Loop1:
LDR R3,[R0],#4
LDR R4,[R1],#12
MLA R5,R3,R4,R5
ADD R8,R8,#1
CMP R8,#3
BNE Loop1
STR R5,[R2],#4
MOV R5,#0
SUB R0,R0,#12
SUB R1,R1,#32
MOV R8,#0
ADD R9,R9,#1
CMP R9,#3
BNE Loop1
MOV R5,#0
MOV R9,#0
SUB R1,R1,#44
ADD R10,R10,#1
CMP R10,#2
ADD R1,R1,#20
CMP R10,#3
BNE Loop1
SWI 0X11
