.begin
valuno  .equ 9800
valdos  .equ 100
val_max .equ valuno + valdos

.org 2048
limite: 16
vector: val_max
.org 2072
alpha:  50
.org 2084
ld [limite], %r1
ld [vector], %r2
ld [alpha], %r3
sub %r3, %r1, %r4
call calcular_offset
and %r0, %r0, %r15
or %r2, %r1, %r6
and %r6, %r3, %r7
add %r15, 8, %r8
sub %r8, %r15, %r9
.org 3028
calcular_offset: add %r4, %r2, %r5
jmpl %r15+4, %r0
.end