.begin
.org 2048
valorA: 5
valorB: 2
resultado: 0
!-----------------------------------------------------
.macro mcr_sumar var1, var2, resultado
ld [var1], %r1
ld[var2], %r2
add %r1,%r2,%r3
st %r3, [resultado]
.endmacro
!----------------------------------------------------
main: mcr_sumar valorA, valorB, resultado
.end
