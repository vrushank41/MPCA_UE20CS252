.DATA
A:.WORD 10,20,30,40,50,60,70,80,90,100
SUM:.WORD 0

.TEXT
LDR R0,=A
LDR R1,=SUM

MOV R2,#0
MOV R3,#4
MOV R4,#1
SUB R0,R0,#4

LOOP: LDR R5,[R0,R3]! ;R5<-MEM[R0+R3],R0<-R0+R3
      ADD R2,R2,R5
      ADD R4,R4,#1
      CMP R4,#11
      BNE LOOP

STR R2,[R1]

.END