;here we are finding the sum of n numbers at odd locations
.DATA
A:.WORD 10,20,30,40,50,60
SUM:.WORD 0

.TEXT
MOV R2,#0
LDR R1,=A
LDR R3,=SUM
MOV R6,#0
SUB R1,R1,#8

LOOP:LDR R4,[R1,#8]!
ADD R2,R2,R4
ADD R6,R6,#2
CMP R6,#6
BNE LOOP
STR R2,[R3]
.END
