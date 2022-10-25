.text
ldr r0, =a
ldr r1, =b
ldr r2, =c
ldr r3, [r0]
ldr r4, [r1]
ldr r5, [r2]
;if(a==b)
cmp r3, r4
bne x
add r6, r3, r4
b endif

;else if(b==c)
x:
cmp r4, r5
bne y
sub r6, r3, r4
b endif

;else
y:  
mul r7, r3, r4

endif:
swi 0x011

.data
a:.word 4
b:.word 5
c:.word 6
