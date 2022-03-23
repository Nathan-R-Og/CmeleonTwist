.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC400
/* B7800 800DC400 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B7804 800DC404 AFBF0024 */  sw         $ra, 0x24($sp)
/* B7808 800DC408 AFA40038 */  sw         $a0, 0x38($sp)
/* B780C 800DC40C AFA5003C */  sw         $a1, 0x3c($sp)
/* B7810 800DC410 AFA60040 */  sw         $a2, 0x40($sp)
/* B7814 800DC414 AFB20020 */  sw         $s2, 0x20($sp)
/* B7818 800DC418 AFB1001C */  sw         $s1, 0x1c($sp)
/* B781C 800DC41C 0C038AF8 */  jal        func_800E2BE0
/* B7820 800DC420 AFB00018 */   sw        $s0, 0x18($sp)
/* B7824 800DC424 8FAE0038 */  lw         $t6, 0x38($sp)
/* B7828 800DC428 00408025 */  or         $s0, $v0, $zero
/* B782C 800DC42C 8DCF0008 */  lw         $t7, 8($t6)
/* B7830 800DC430 8DD80010 */  lw         $t8, 0x10($t6)
/* B7834 800DC434 01F8082A */  slt        $at, $t7, $t8
/* B7838 800DC438 14200018 */  bnez       $at, .L800DC49C
/* B783C 800DC43C 00000000 */   nop
.L800DC440:
/* B7840 800DC440 8FB90040 */  lw         $t9, 0x40($sp)
/* B7844 800DC444 24010001 */  addiu      $at, $zero, 1
/* B7848 800DC448 1721000A */  bne        $t9, $at, .L800DC474
/* B784C 800DC44C 00000000 */   nop
/* B7850 800DC450 3C098011 */  lui        $t1, %hi(D_80109E10)
/* B7854 800DC454 8D299E10 */  lw         $t1, %lo(D_80109E10)($t1)
/* B7858 800DC458 24080008 */  addiu      $t0, $zero, 8
/* B785C 800DC45C A5280010 */  sh         $t0, 0x10($t1)
/* B7860 800DC460 8FA40038 */  lw         $a0, 0x38($sp)
/* B7864 800DC464 0C0387D3 */  jal        func_800E1F4C
/* B7868 800DC468 24840004 */   addiu     $a0, $a0, 4
/* B786C 800DC46C 10000005 */  b          .L800DC484
/* B7870 800DC470 00000000 */   nop
.L800DC474:
/* B7874 800DC474 0C038B00 */  jal        func_800E2C00
/* B7878 800DC478 02002025 */   or        $a0, $s0, $zero
/* B787C 800DC47C 1000002D */  b          .L800DC534
/* B7880 800DC480 2402FFFF */   addiu     $v0, $zero, -1
.L800DC484:
/* B7884 800DC484 8FAA0038 */  lw         $t2, 0x38($sp)
/* B7888 800DC488 8D4B0008 */  lw         $t3, 8($t2)
/* B788C 800DC48C 8D4C0010 */  lw         $t4, 0x10($t2)
/* B7890 800DC490 016C082A */  slt        $at, $t3, $t4
/* B7894 800DC494 1020FFEA */  beqz       $at, .L800DC440
/* B7898 800DC498 00000000 */   nop
.L800DC49C:
/* B789C 800DC49C 8FAD0038 */  lw         $t5, 0x38($sp)
/* B78A0 800DC4A0 8FA8003C */  lw         $t0, 0x3c($sp)
/* B78A4 800DC4A4 8DAE000C */  lw         $t6, 0xc($t5)
/* B78A8 800DC4A8 8DAF0008 */  lw         $t7, 8($t5)
/* B78AC 800DC4AC 8DB90010 */  lw         $t9, 0x10($t5)
/* B78B0 800DC4B0 8DA90014 */  lw         $t1, 0x14($t5)
/* B78B4 800DC4B4 01CFC021 */  addu       $t8, $t6, $t7
/* B78B8 800DC4B8 0319001A */  div        $zero, $t8, $t9
/* B78BC 800DC4BC 00008810 */  mfhi       $s1
/* B78C0 800DC4C0 00115080 */  sll        $t2, $s1, 2
/* B78C4 800DC4C4 012A5821 */  addu       $t3, $t1, $t2
/* B78C8 800DC4C8 AD680000 */  sw         $t0, ($t3)
/* B78CC 800DC4CC 8FAC0038 */  lw         $t4, 0x38($sp)
/* B78D0 800DC4D0 17200002 */  bnez       $t9, .L800DC4DC
/* B78D4 800DC4D4 00000000 */   nop
/* B78D8 800DC4D8 0007000D */  break      7
.L800DC4DC:
/* B78DC 800DC4DC 2401FFFF */   addiu     $at, $zero, -1
/* B78E0 800DC4E0 17210004 */  bne        $t9, $at, .L800DC4F4
/* B78E4 800DC4E4 3C018000 */   lui       $at, 0x8000
/* B78E8 800DC4E8 17010002 */  bne        $t8, $at, .L800DC4F4
/* B78EC 800DC4EC 00000000 */   nop
/* B78F0 800DC4F0 0006000D */  break      6
.L800DC4F4:
/* B78F4 800DC4F4 8D8E0008 */   lw        $t6, 8($t4)
/* B78F8 800DC4F8 25CF0001 */  addiu      $t7, $t6, 1
/* B78FC 800DC4FC AD8F0008 */  sw         $t7, 8($t4)
/* B7900 800DC500 8FB80038 */  lw         $t8, 0x38($sp)
/* B7904 800DC504 8F190000 */  lw         $t9, ($t8)
/* B7908 800DC508 8F2D0000 */  lw         $t5, ($t9)
/* B790C 800DC50C 11A00006 */  beqz       $t5, .L800DC528
/* B7910 800DC510 00000000 */   nop
/* B7914 800DC514 0C038825 */  jal        func_800E2094
/* B7918 800DC518 03002025 */   or        $a0, $t8, $zero
/* B791C 800DC51C 00409025 */  or         $s2, $v0, $zero
/* B7920 800DC520 0C0366C8 */  jal        func_800D9B20
/* B7924 800DC524 02402025 */   or        $a0, $s2, $zero
.L800DC528:
/* B7928 800DC528 0C038B00 */  jal        func_800E2C00
/* B792C 800DC52C 02002025 */   or        $a0, $s0, $zero
/* B7930 800DC530 00001025 */  or         $v0, $zero, $zero
.L800DC534:
/* B7934 800DC534 8FBF0024 */  lw         $ra, 0x24($sp)
/* B7938 800DC538 8FB00018 */  lw         $s0, 0x18($sp)
/* B793C 800DC53C 8FB1001C */  lw         $s1, 0x1c($sp)
/* B7940 800DC540 8FB20020 */  lw         $s2, 0x20($sp)
/* B7944 800DC544 03E00008 */  jr         $ra
/* B7948 800DC548 27BD0038 */   addiu     $sp, $sp, 0x38
/* B794C 800DC54C 00000000 */  nop
