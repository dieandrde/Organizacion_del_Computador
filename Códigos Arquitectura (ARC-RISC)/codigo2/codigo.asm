.begin

main:   ld [valor], %r1
        andcc %r1,1,%r1
        be espar
        ba esimpar

espar:  or %r0,1,%r2
        or %r0,0,%r3
        ba fin

esimpar: or %r0,0,%r2
        or %r0,1,%r3
        ba fin

valor: 25

fin: ba fin

.end