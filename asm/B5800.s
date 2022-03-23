.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DA400
/* B5800 800DA400 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5804 800DA404 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5808 800DA408 AFA40028 */  sw         $a0, 0x28($sp)
/* B580C 800DA40C AFA5002C */  sw         $a1, 0x2c($sp)
/* B5810 800DA410 0C038AF8 */  jal        func_800E2BE0
/* B5814 800DA414 AFB00018 */   sw        $s0, 0x18($sp)
/* B5818 800DA418 8FAE0028 */  lw         $t6, 0x28($sp)
/* B581C 800DA41C 00408025 */  or         $s0, $v0, $zero
/* B5820 800DA420 15C00004 */  bnez       $t6, .L800DA434
/* B5824 800DA424 00000000 */   nop
/* B5828 800DA428 3C0F8011 */  lui        $t7, %hi(D_80109E10)
/* B582C 800DA42C 8DEF9E10 */  lw         $t7, %lo(D_80109E10)($t7)
/* B5830 800DA430 AFAF0028 */  sw         $t7, 0x28($sp)
.L800DA434:
/* B5834 800DA434 8FB80028 */  lw         $t8, 0x28($sp)
/* B5838 800DA438 8FA8002C */  lw         $t0, 0x2c($sp)
/* B583C 800DA43C 8F190004 */  lw         $t9, 4($t8)
/* B5840 800DA440 13280020 */  beq        $t9, $t0, .L800DA4C4
/* B5844 800DA444 00000000 */   nop
/* B5848 800DA448 AF080004 */  sw         $t0, 4($t8)
/* B584C 800DA44C 3C0A8011 */  lui        $t2, %hi(D_80109E10)
/* B5850 800DA450 8D4A9E10 */  lw         $t2, %lo(D_80109E10)($t2)
/* B5854 800DA454 8FA90028 */  lw         $t1, 0x28($sp)
/* B5858 800DA458 112A000C */  beq        $t1, $t2, .L800DA48C
/* B585C 800DA45C 00000000 */   nop
/* B5860 800DA460 952B0010 */  lhu        $t3, 0x10($t1)
/* B5864 800DA464 24010001 */  addiu      $at, $zero, 1
/* B5868 800DA468 11610008 */  beq        $t3, $at, .L800DA48C
/* B586C 800DA46C 00000000 */   nop
/* B5870 800DA470 8D240008 */  lw         $a0, 8($t1)
/* B5874 800DA474 0C038B08 */  jal        func_800E2C20
/* B5878 800DA478 01202825 */   or        $a1, $t1, $zero
/* B587C 800DA47C 8FAC0028 */  lw         $t4, 0x28($sp)
/* B5880 800DA480 8D840008 */  lw         $a0, 8($t4)
/* B5884 800DA484 0C038813 */  jal        func_800E204C
/* B5888 800DA488 01802825 */   or        $a1, $t4, $zero
.L800DA48C:
/* B588C 800DA48C 3C0D8011 */  lui        $t5, %hi(D_80109E10)
/* B5890 800DA490 3C0F8011 */  lui        $t7, %hi(D_80109E08)
/* B5894 800DA494 8DEF9E08 */  lw         $t7, %lo(D_80109E08)($t7)
/* B5898 800DA498 8DAD9E10 */  lw         $t5, %lo(D_80109E10)($t5)
/* B589C 800DA49C 8DF90004 */  lw         $t9, 4($t7)
/* B58A0 800DA4A0 8DAE0004 */  lw         $t6, 4($t5)
/* B58A4 800DA4A4 01D9082A */  slt        $at, $t6, $t9
/* B58A8 800DA4A8 10200006 */  beqz       $at, .L800DA4C4
/* B58AC 800DA4AC 00000000 */   nop
/* B58B0 800DA4B0 24080002 */  addiu      $t0, $zero, 2
/* B58B4 800DA4B4 3C048011 */  lui        $a0, %hi(D_80109E08)
/* B58B8 800DA4B8 A5A80010 */  sh         $t0, 0x10($t5)
/* B58BC 800DA4BC 0C0387D3 */  jal        func_800E1F4C
/* B58C0 800DA4C0 24849E08 */   addiu     $a0, $a0, %lo(D_80109E08)
.L800DA4C4:
/* B58C4 800DA4C4 0C038B00 */  jal        func_800E2C00
/* B58C8 800DA4C8 02002025 */   or        $a0, $s0, $zero
/* B58CC 800DA4CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* B58D0 800DA4D0 8FB00018 */  lw         $s0, 0x18($sp)
/* B58D4 800DA4D4 27BD0028 */  addiu      $sp, $sp, 0x28
/* B58D8 800DA4D8 03E00008 */  jr         $ra
/* B58DC 800DA4DC 00000000 */   nop

glabel func_800DA4E0
/* B58E0 800DA4E0 3C0E8011 */  lui        $t6, %hi(D_80109E00)
/* B58E4 800DA4E4 3C0F8011 */  lui        $t7, %hi(D_80109E00)
/* B58E8 800DA4E8 25CE9E00 */  addiu      $t6, $t6, %lo(D_80109E00)
/* B58EC 800DA4EC 25EF9E00 */  addiu      $t7, $t7, %lo(D_80109E00)
/* B58F0 800DA4F0 AC8E0000 */  sw         $t6, ($a0)
/* B58F4 800DA4F4 AC8F0004 */  sw         $t7, 4($a0)
/* B58F8 800DA4F8 AC800008 */  sw         $zero, 8($a0)
/* B58FC 800DA4FC AC80000C */  sw         $zero, 0xc($a0)
/* B5900 800DA500 AC860010 */  sw         $a2, 0x10($a0)
/* B5904 800DA504 03E00008 */  jr         $ra
/* B5908 800DA508 AC850014 */   sw        $a1, 0x14($a0)
/* B590C 800DA50C 00000000 */  nop
