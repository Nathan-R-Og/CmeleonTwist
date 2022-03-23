.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF430
/* BA830 800DF430 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA834 800DF434 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA838 800DF438 8C8E003C */  lw         $t6, 0x3c($a0)
/* BA83C 800DF43C 24030030 */  addiu      $v1, $zero, 0x30
/* BA840 800DF440 8C820040 */  lw         $v0, 0x40($a0)
/* BA844 800DF444 01C30019 */  multu      $t6, $v1
/* BA848 800DF448 00007812 */  mflo       $t7
/* BA84C 800DF44C 01E2C021 */  addu       $t8, $t7, $v0
/* BA850 800DF450 8F190028 */  lw         $t9, 0x28($t8)
/* BA854 800DF454 5720000C */  bnel       $t9, $zero, .L800DF488
/* BA858 800DF458 8FBF0014 */   lw        $ra, 0x14($sp)
/* BA85C 800DF45C A7A00020 */  sh         $zero, 0x20($sp)
/* BA860 800DF460 8C88003C */  lw         $t0, 0x3c($a0)
/* BA864 800DF464 24840014 */  addiu      $a0, $a0, 0x14
/* BA868 800DF468 27A50020 */  addiu      $a1, $sp, 0x20
/* BA86C 800DF46C 01030019 */  multu      $t0, $v1
/* BA870 800DF470 00003025 */  or         $a2, $zero, $zero
/* BA874 800DF474 00004812 */  mflo       $t1
/* BA878 800DF478 01225021 */  addu       $t2, $t1, $v0
/* BA87C 800DF47C 0C03A0D7 */  jal        func_800E835C
/* BA880 800DF480 AFAA0024 */   sw        $t2, 0x24($sp)
/* BA884 800DF484 8FBF0014 */  lw         $ra, 0x14($sp)
.L800DF488:
/* BA888 800DF488 27BD0030 */  addiu      $sp, $sp, 0x30
/* BA88C 800DF48C 03E00008 */  jr         $ra
/* BA890 800DF490 00000000 */   nop
/* BA894 800DF494 00000000 */  nop
/* BA898 800DF498 00000000 */  nop
/* BA89C 800DF49C 00000000 */  nop
