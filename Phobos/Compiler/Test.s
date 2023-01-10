
.globl InitialiseGlobals
InitialiseGlobals:
          bx      lr

.globl Phobos.Compiler.Main
Phobos.Compiler.Main:
          ldr     r0, [pc, #20]
          ldr     r1, [pc, #20]
          mov     r2, #262144
          str     r2, [r0]
          mov     r3, #65536
          str     r3, [r1]
          bx      lr
          .word 0x20200004
          .word 0x20200028
