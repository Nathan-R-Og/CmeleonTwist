.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBE10
/* C7210 800EBE10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C7214 800EBE14 AFBF001C */  sw         $ra, 0x1c($sp)
/* C7218 800EBE18 AFA40028 */  sw         $a0, 0x28($sp)
/* C721C 800EBE1C 0C038AF8 */  jal        func_800E2BE0
/* C7220 800EBE20 AFB00018 */   sw        $s0, 0x18($sp)
/* C7224 800EBE24 8FAF0028 */  lw         $t7, 0x28($sp)
/* C7228 800EBE28 3C0E8011 */  lui        $t6, %hi(D_8010901C)
/* C722C 800EBE2C 8DCE901C */  lw         $t6, %lo(D_8010901C)($t6)
/* C7230 800EBE30 2401FBFE */  addiu      $at, $zero, -0x402
/* C7234 800EBE34 01E1C024 */  and        $t8, $t7, $at
/* C7238 800EBE38 0300C827 */  not        $t9, $t8
/* C723C 800EBE3C 00408025 */  or         $s0, $v0, $zero
/* C7240 800EBE40 3C018011 */  lui        $at, %hi(D_8010901C)
/* C7244 800EBE44 01D94024 */  and        $t0, $t6, $t9
/* C7248 800EBE48 AC28901C */  sw         $t0, %lo(D_8010901C)($at)
/* C724C 800EBE4C 0C038B00 */  jal        func_800E2C00
/* C7250 800EBE50 02002025 */   or        $a0, $s0, $zero
/* C7254 800EBE54 8FBF001C */  lw         $ra, 0x1c($sp)
/* C7258 800EBE58 8FB00018 */  lw         $s0, 0x18($sp)
/* C725C 800EBE5C 27BD0028 */  addiu      $sp, $sp, 0x28
/* C7260 800EBE60 03E00008 */  jr         $ra
/* C7264 800EBE64 00000000 */   nop
/* C7268 800EBE68 00000000 */  nop
/* C726C 800EBE6C 00000000 */  nop
