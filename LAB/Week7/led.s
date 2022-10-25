.TEXT
MOV R0,#0
LOOP: SWI 0X201
      ADD R0,R0,#1
      MOV R4,#128000
      DELAY:SUB R4,R4,#1
            CMP R4,#0
            BNE DELAY
      CMP R0,#5
      BLE LOOP

SWI 0X011