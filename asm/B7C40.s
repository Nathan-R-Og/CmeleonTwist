.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC840
/* B7C40 800DC840 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7C44 800DC844 AFBF001C */  sw         $ra, 0x1c($sp)
/* B7C48 800DC848 E7AC0028 */  swc1       $f12, 0x28($sp)
/* B7C4C 800DC84C 0C038AF8 */  jal        func_800E2BE0
/* B7C50 800DC850 AFB00018 */   sw        $s0, 0x18($sp)
/* B7C54 800DC854 3C0E8011 */  lui        $t6, %hi(D_80109E94)
/* B7C58 800DC858 8DCE9E94 */  lw         $t6, %lo(D_80109E94)($t6)
/* B7C5C 800DC85C C7A40028 */  lwc1       $f4, 0x28($sp)
/* B7C60 800DC860 3C0F8011 */  lui        $t7, %hi(D_80109E94)
/* B7C64 800DC864 00408025 */  or         $s0, $v0, $zero
/* B7C68 800DC868 E5C40024 */  swc1       $f4, 0x24($t6)
/* B7C6C 800DC86C 8DEF9E94 */  lw         $t7, %lo(D_80109E94)($t7)
/* B7C70 800DC870 02002025 */  or         $a0, $s0, $zero
/* B7C74 800DC874 95F80000 */  lhu        $t8, ($t7)
/* B7C78 800DC878 37190004 */  ori        $t9, $t8, 4
/* B7C7C 800DC87C 0C038B00 */  jal        func_800E2C00
/* B7C80 800DC880 A5F90000 */   sh        $t9, ($t7)
/* B7C84 800DC884 8FBF001C */  lw         $ra, 0x1c($sp)
/* B7C88 800DC888 8FB00018 */  lw         $s0, 0x18($sp)
/* B7C8C 800DC88C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7C90 800DC890 03E00008 */  jr         $ra
/* B7C94 800DC894 00000000 */   nop
/* B7C98 800DC898 00000000 */  nop
/* B7C9C 800DC89C 00000000 */  nop
