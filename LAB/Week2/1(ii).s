.TEXT
LDR R0, =A
LDR R1, =B
MOV R4,#1

L:  
    LDRH R2,[R0]
    ;LDRH R3,[R1]
    MOV R3,R2
    STRH R3,[R1]
    ADD R0,R0,#4
    ADD R1,R1,#4
    ADD R4,R4,#1
    CMP R4,#11
    BNE L



SWI 0X011

.DATA
A: .HWORD 10,20,30,40,50,60,70,80,90,100
B: .HWORD 0,0,0,0,0,0,0,0,0,0