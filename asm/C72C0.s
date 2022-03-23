.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBEC0
/* C72C0 800EBEC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C72C4 800EBEC4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C72C8 800EBEC8 0C038AF8 */  jal        func_800E2BE0
/* C72CC 800EBECC AFB00018 */   sw        $s0, 0x18($sp)
/* C72D0 800EBED0 3C0F8011 */  lui        $t7, %hi(D_80109E10)
/* C72D4 800EBED4 8DEF9E10 */  lw         $t7, %lo(D_80109E10)($t7)
/* C72D8 800EBED8 240E0002 */  addiu      $t6, $zero, 2
/* C72DC 800EBEDC 3C048011 */  lui        $a0, %hi(D_80109E08)
/* C72E0 800EBEE0 00408025 */  or         $s0, $v0, $zero
/* C72E4 800EBEE4 24849E08 */  addiu      $a0, $a0, %lo(D_80109E08)
/* C72E8 800EBEE8 0C0387D3 */  jal        func_800E1F4C
/* C72EC 800EBEEC A5EE0010 */   sh        $t6, 0x10($t7)
/* C72F0 800EBEF0 0C038B00 */  jal        func_800E2C00
/* C72F4 800EBEF4 02002025 */   or        $a0, $s0, $zero
/* C72F8 800EBEF8 8FBF001C */  lw         $ra, 0x1c($sp)
/* C72FC 800EBEFC 8FB00018 */  lw         $s0, 0x18($sp)
/* C7300 800EBF00 27BD0028 */  addiu      $sp, $sp, 0x28
/* C7304 800EBF04 03E00008 */  jr         $ra
/* C7308 800EBF08 00000000 */   nop
/* C730C 800EBF0C 00000000 */  nop
