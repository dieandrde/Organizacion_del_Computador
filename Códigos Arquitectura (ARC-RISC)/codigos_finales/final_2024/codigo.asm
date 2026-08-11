.begin
a_start .equ 9000
.org 3000
length: 20
address: a_start

.org 1000
a: 25
.org 2048   
ld [length], %r1
ld [address], %r2
ld [a], %r3
and %r3, %r0, %r4
sub %r3, %r1, %r5
and %r1, %r1, %r0
add %r1, -4, %r7
add %r1, %r3, %r6
or %r1, %r2, %r8
sub %r6, %r2, %r6
add %r15, 4, %r6

.end