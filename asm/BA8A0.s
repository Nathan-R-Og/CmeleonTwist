.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF4A0
/* BA8A0 800DF4A0 8C8E003C */  lw         $t6, 0x3c($a0)
/* BA8A4 800DF4A4 8C830040 */  lw         $v1, 0x40($a0)
/* BA8A8 800DF4A8 000E7880 */  sll        $t7, $t6, 2
/* BA8AC 800DF4AC 01EE7823 */  subu       $t7, $t7, $t6
/* BA8B0 800DF4B0 000F7900 */  sll        $t7, $t7, 4
/* BA8B4 800DF4B4 01E3C021 */  addu       $t8, $t7, $v1
/* BA8B8 800DF4B8 03E00008 */  jr         $ra
/* BA8BC 800DF4BC 8F020028 */   lw        $v0, 0x28($t8)

glabel func_800DF4C0
/* BA8C0 800DF4C0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA8C4 800DF4C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA8C8 800DF4C8 8C820040 */  lw         $v0, 0x40($a0)
/* BA8CC 800DF4CC 240E0001 */  addiu      $t6, $zero, 1
/* BA8D0 800DF4D0 A7AE0020 */  sh         $t6, 0x20($sp)
/* BA8D4 800DF4D4 8C8F003C */  lw         $t7, 0x3c($a0)
/* BA8D8 800DF4D8 27A50020 */  addiu      $a1, $sp, 0x20
/* BA8DC 800DF4DC 24840014 */  addiu      $a0, $a0, 0x14
/* BA8E0 800DF4E0 000FC080 */  sll        $t8, $t7, 2
/* BA8E4 800DF4E4 030FC023 */  subu       $t8, $t8, $t7
/* BA8E8 800DF4E8 0018C100 */  sll        $t8, $t8, 4
/* BA8EC 800DF4EC 0302C821 */  addu       $t9, $t8, $v0
/* BA8F0 800DF4F0 AFB90024 */  sw         $t9, 0x24($sp)
/* BA8F4 800DF4F4 0C03A0D7 */  jal        func_800E835C
/* BA8F8 800DF4F8 00003025 */   or        $a2, $zero, $zero
/* BA8FC 800DF4FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA900 800DF500 27BD0030 */  addiu      $sp, $sp, 0x30
/* BA904 800DF504 03E00008 */  jr         $ra
/* BA908 800DF508 00000000 */   nop
/* BA90C 800DF50C 00000000 */  nop
