        .begin
        .org 2048
main:   andcc %r3, %r0, %r3  !2048
        ld     [length], %r1   !2052   
for:    andcc   %r1, %r1, %r0   !2056
        be done                 !2060
        addcc   %r1, -4, %r1    !2064
        ld      %r1, [arrayA], %r5 !2068 
        addcc   %r3, %r5, %r3   !2072
        ba      for             !2076
done:   jmpl    %r15 + 4, %r0   !2080
length: 20  !2084
arrayA: 25  !2088
        -10 !2092
        31  !2096
        -5  !2100
        7   !2104
        .end