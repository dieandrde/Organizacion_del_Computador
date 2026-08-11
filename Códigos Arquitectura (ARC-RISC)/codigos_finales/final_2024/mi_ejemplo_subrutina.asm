.begin
.org 2048
main:
call sbr_add
ba final
!--------------------------------------------------
sbr_add: ld [x], %r1
ld [y], %r2
add %r1, %r2, %r3
st %r3, [resultado]
jmpl %r15 + 4, %r0
!---------------------------------------------------
x: 15
y: 5
resultado: 0
final: ba final
.end
