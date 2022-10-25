;multiplication by 9
.text
ldr r0, =a
ldr r1, [r0]
add r2, r1, r1, lsl #3
str r2,[r3]
swi 0x011


.data
a:.word 49
