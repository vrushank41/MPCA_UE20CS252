.DATA
ODD:.ASCIZ "ODD PARITY NUMBER"
EVEN:.ASCIZ "EVEN PARITY NUMBER"
A:.WORD 0X12345678

.TEXT
LDR R2,=A
LDR R3,[R2]
MOV R4,#0
MOV R5,#0

L1: TST R3,#1
    BNE LOOP
    ADD R5,R5,#1


LOOP: MOV R3,R3,LSR #1
      ADD R4,R4,#1
      CMP R4,#32
      BNE L1


BNE E

LDR R0,=ODD
  SWI 0X02  
  B EXIT

E:LDR R0,=EVEN
  SWI 0X02

EXIT: SWI 0X011
  