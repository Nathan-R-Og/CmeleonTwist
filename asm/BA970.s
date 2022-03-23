.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF570
/* BA970 800DF570 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA974 800DF574 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA978 800DF578 AFA5002C */  sw         $a1, 0x2c($sp)
/* BA97C 800DF57C 00A07025 */  or         $t6, $a1, $zero
/* BA980 800DF580 240F000A */  addiu      $t7, $zero, 0xa
/* BA984 800DF584 A7AF0018 */  sh         $t7, 0x18($sp)
/* BA988 800DF588 A7AE001C */  sh         $t6, 0x1c($sp)
/* BA98C 800DF58C 27A50018 */  addiu      $a1, $sp, 0x18
/* BA990 800DF590 24840048 */  addiu      $a0, $a0, 0x48
/* BA994 800DF594 0C03A0D7 */  jal        func_800E835C
/* BA998 800DF598 00003025 */   or        $a2, $zero, $zero
/* BA99C 800DF59C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA9A0 800DF5A0 27BD0028 */  addiu      $sp, $sp, 0x28
/* BA9A4 800DF5A4 03E00008 */  jr         $ra
/* BA9A8 800DF5A8 00000000 */   nop
/* BA9AC 800DF5AC 00000000 */  nop
