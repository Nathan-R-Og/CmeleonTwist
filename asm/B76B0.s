.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC2B0
/* B76B0 800DC2B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B76B4 800DC2B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B76B8 800DC2B8 AFA40028 */  sw         $a0, 0x28($sp)
/* B76BC 800DC2BC AFA5002C */  sw         $a1, 0x2c($sp)
/* B76C0 800DC2C0 AFA60030 */  sw         $a2, 0x30($sp)
/* B76C4 800DC2C4 0C038AF8 */  jal        func_800E2BE0
/* B76C8 800DC2C8 AFB00018 */   sw        $s0, 0x18($sp)
/* B76CC 800DC2CC 3C0F8011 */  lui        $t7, %hi(D_80109E94)
/* B76D0 800DC2D0 8DEF9E94 */  lw         $t7, %lo(D_80109E94)($t7)
/* B76D4 800DC2D4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B76D8 800DC2D8 3C198011 */  lui        $t9, %hi(D_80109E94)
/* B76DC 800DC2DC 3C098011 */  lui        $t1, 0x8011
/* B76E0 800DC2E0 ADEE0010 */  sw         $t6, 0x10($t7)
/* B76E4 800DC2E4 8F399E94 */  lw         $t9, %lo(D_80109E94)($t9)
/* B76E8 800DC2E8 8FB8002C */  lw         $t8, 0x2c($sp)
/* B76EC 800DC2EC 00408025 */  or         $s0, $v0, $zero
/* B76F0 800DC2F0 02002025 */  or         $a0, $s0, $zero
/* B76F4 800DC2F4 AF380014 */  sw         $t8, 0x14($t9)
/* B76F8 800DC2F8 8D299E94 */  lw         $t1, -0x616c($t1)
/* B76FC 800DC2FC 8FA80030 */  lw         $t0, 0x30($sp)
/* B7700 800DC300 0C038B00 */  jal        func_800E2C00
/* B7704 800DC304 A5280002 */   sh        $t0, 2($t1)
/* B7708 800DC308 8FBF001C */  lw         $ra, 0x1c($sp)
/* B770C 800DC30C 8FB00018 */  lw         $s0, 0x18($sp)
/* B7710 800DC310 27BD0028 */  addiu      $sp, $sp, 0x28
/* B7714 800DC314 03E00008 */  jr         $ra
/* B7718 800DC318 00000000 */   nop
/* B771C 800DC31C 00000000 */  nop
