.begin

sumando1: 10
sumando2: 15
resultado: 0
paridad: 0

main:   call sumar
        or %r3, %r0, %r1
        call esimpar
        st %r3,[resultado]
        st %r4,[paridad]
        ba fin

sumar:  ld [sumando1], %r1
        ld [sumando2], %r2
        addcc %r1,%r2,%r3
        jmpl %r15+4, %r0

esimpar: andcc %r1, 1, %r4
        jmpl %r15+4, %r0

fin: ba fin

.end
