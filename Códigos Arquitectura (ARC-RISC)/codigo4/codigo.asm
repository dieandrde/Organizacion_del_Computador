.begin
.org 2048
    ld [x], %r1
    ld [y], %r2
    addcc %r14, -4, %r14
    st %r1, %r14
    addcc %r14, -4, %r14
    st %r2, %r14
    call sbr_add
    ld %r14,%r3
    addcc %r14, 4, %r14
    st %r3, [z]
    ba final
! ----------------------------------------------------

sbr_add: ld %r14, %r8
        addcc %r14, 4, %r14
        ld %r14, %r9
        addcc %r8, %r9, %r10
        st %r10, %r14
        jmpl %r15 + 4, %r0

x: 15
y: 9
z: 0

final: ba final

.end