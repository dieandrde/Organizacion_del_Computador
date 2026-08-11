begin
.org 2048
length:     20 ! El macro requiere que estas referencias esten definidas previamente !2048
array:      25  !2052
            -32 !2056
            3   !2060
            -5  !2064
            21  !2068
            .dwb 5
resultado: 0    !2092
! -------------------------------------------------------------------
.macro      mcr_suma_array pos_array, pos_length, varResult
!.
            ld [pos_length],%r1
            and %r0, %r0, %r3
!.
sumar:      add %r1,-4,%r1
            ld %r1,[pos_array],%r2
            add %r2, %r3, %r3
            andcc %r1, %r1, %r0
            be fin
            ba sumar
!.
fin:        st %r3, [varResult]
!.
.endmacro
! -------------------------------------------------------------------
main:       mcr_suma_array array, length, resultado !2096
! -------------------------------------------------------------------
.end