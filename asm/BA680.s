.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF280
/* BA680 800DF280 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA684 800DF284 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA688 800DF288 8C820040 */  lw         $v0, 0x40($a0)
/* BA68C 800DF28C 240E0004 */  addiu      $t6, $zero, 4
/* BA690 800DF290 A7AE0020 */  sh         $t6, 0x20($sp)
/* BA694 800DF294 8C8F003C */  lw         $t7, 0x3c($a0)
/* BA698 800DF298 44856000 */  mtc1       $a1, $f12
/* BA69C 800DF29C 27A50020 */  addiu      $a1, $sp, 0x20
/* BA6A0 800DF2A0 000FC080 */  sll        $t8, $t7, 2
/* BA6A4 800DF2A4 030FC023 */  subu       $t8, $t8, $t7
/* BA6A8 800DF2A8 0018C100 */  sll        $t8, $t8, 4
/* BA6AC 800DF2AC 0302C821 */  addu       $t9, $t8, $v0
/* BA6B0 800DF2B0 AFB90024 */  sw         $t9, 0x24($sp)
/* BA6B4 800DF2B4 24840014 */  addiu      $a0, $a0, 0x14
/* BA6B8 800DF2B8 00003025 */  or         $a2, $zero, $zero
/* BA6BC 800DF2BC 0C03A0D7 */  jal        func_800E835C
/* BA6C0 800DF2C0 E7AC0028 */   swc1      $f12, 0x28($sp)
/* BA6C4 800DF2C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA6C8 800DF2C8 27BD0030 */  addiu      $sp, $sp, 0x30
/* BA6CC 800DF2CC 03E00008 */  jr         $ra
/* BA6D0 800DF2D0 00000000 */   nop
/* BA6D4 800DF2D4 00000000 */  nop
/* BA6D8 800DF2D8 00000000 */  nop
/* BA6DC 800DF2DC 00000000 */  nop
