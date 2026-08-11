.begin

main:   nop
        addcc %r1, 4, %r1
        ld %r1, [array+8],%r7

array:  25
        32
        3
        5
        9

.end