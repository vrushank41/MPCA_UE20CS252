.text
LDR R0,=a
LDR R1,[R0]
MOV R2,R1

L:SUB R2,R2,#1
  MUL R3,R1,R2
  MOV R1,R3
  TEQ R2,#1
  BNE L

SWI 0x011

.data
a:.word 4