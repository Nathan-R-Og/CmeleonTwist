.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DBA80
/* B6E80 800DBA80 AFA40000 */  sw         $a0, ($sp)
/* B6E84 800DBA84 AFA50004 */  sw         $a1, 4($sp)
/* B6E88 800DBA88 AFA60008 */  sw         $a2, 8($sp)
/* B6E8C 800DBA8C 03E00008 */  jr         $ra
/* B6E90 800DBA90 24020001 */   addiu     $v0, $zero, 1

glabel func_800DBA94
/* B6E94 800DBA94 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6E98 800DBA98 AFA40020 */  sw         $a0, 0x20($sp)
/* B6E9C 800DBA9C AFBF0014 */  sw         $ra, 0x14($sp)
/* B6EA0 800DBAA0 AFA50024 */  sw         $a1, 0x24($sp)
/* B6EA4 800DBAA4 AFA60028 */  sw         $a2, 0x28($sp)
/* B6EA8 800DBAA8 AFA7002C */  sw         $a3, 0x2c($sp)
/* B6EAC 800DBAAC 3C04800E */  lui        $a0, %hi(func_800DBA80)
/* B6EB0 800DBAB0 2484BA80 */  addiu      $a0, $a0, %lo(func_800DBA80)
/* B6EB4 800DBAB4 27A70024 */  addiu      $a3, $sp, 0x24
/* B6EB8 800DBAB8 8FA60020 */  lw         $a2, 0x20($sp)
/* B6EBC 800DBABC 0C039770 */  jal        func_800E5DC0
/* B6EC0 800DBAC0 00002825 */   or        $a1, $zero, $zero
/* B6EC4 800DBAC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6EC8 800DBAC8 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6ECC 800DBACC 03E00008 */  jr         $ra
/* B6ED0 800DBAD0 00000000 */   nop
/* B6ED4 800DBAD4 00000000 */  nop
/* B6ED8 800DBAD8 00000000 */  nop
/* B6EDC 800DBADC 00000000 */  nop
