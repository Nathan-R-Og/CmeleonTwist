.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0930
/* BBD30 800E0930 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BBD34 800E0934 AFA50044 */  sw         $a1, 0x44($sp)
/* BBD38 800E0938 93AE0047 */  lbu        $t6, 0x47($sp)
/* BBD3C 800E093C AFBF0024 */  sw         $ra, 0x24($sp)
/* BBD40 800E0940 AFA40040 */  sw         $a0, 0x40($sp)
/* BBD44 800E0944 29C10041 */  slti       $at, $t6, 0x41
/* BBD48 800E0948 AFA60048 */  sw         $a2, 0x48($sp)
/* BBD4C 800E094C AFA7004C */  sw         $a3, 0x4c($sp)
/* BBD50 800E0950 14200003 */  bnez       $at, .L800E0960
/* BBD54 800E0954 AFA0003C */   sw        $zero, 0x3c($sp)
/* BBD58 800E0958 10000040 */  b          .L800E0A5C
/* BBD5C 800E095C 2402FFFF */   addiu     $v0, $zero, -1
.L800E0960:
/* BBD60 800E0960 8FAF004C */  lw         $t7, 0x4c($sp)
/* BBD64 800E0964 19E0003C */  blez       $t7, .L800E0A58
/* BBD68 800E0968 00000000 */   nop
.L800E096C:
/* BBD6C 800E096C 8FA40040 */  lw         $a0, 0x40($sp)
/* BBD70 800E0970 93A50047 */  lbu        $a1, 0x47($sp)
/* BBD74 800E0974 0C03AD00 */  jal        func_800EB400
/* BBD78 800E0978 8FA60048 */   lw        $a2, 0x48($sp)
/* BBD7C 800E097C AFA2003C */  sw         $v0, 0x3c($sp)
/* BBD80 800E0980 8FB8003C */  lw         $t8, 0x3c($sp)
/* BBD84 800E0984 13000003 */  beqz       $t8, .L800E0994
/* BBD88 800E0988 00000000 */   nop
/* BBD8C 800E098C 10000033 */  b          .L800E0A5C
/* BBD90 800E0990 03001025 */   or        $v0, $t8, $zero
.L800E0994:
/* BBD94 800E0994 8FB9004C */  lw         $t9, 0x4c($sp)
/* BBD98 800E0998 93A90047 */  lbu        $t1, 0x47($sp)
/* BBD9C 800E099C 8FAB0048 */  lw         $t3, 0x48($sp)
/* BBDA0 800E09A0 3C068011 */  lui        $a2, 0x8011
/* BBDA4 800E09A4 3C078011 */  lui        $a3, 0x8011
/* BBDA8 800E09A8 2728FFF8 */  addiu      $t0, $t9, -8
/* BBDAC 800E09AC 252A0001 */  addiu      $t2, $t1, 1
/* BBDB0 800E09B0 256C0008 */  addiu      $t4, $t3, 8
/* BBDB4 800E09B4 AFA8004C */  sw         $t0, 0x4c($sp)
/* BBDB8 800E09B8 A3AA0047 */  sb         $t2, 0x47($sp)
/* BBDBC 800E09BC AFAC0048 */  sw         $t4, 0x48($sp)
/* BBDC0 800E09C0 8CE79014 */  lw         $a3, -0x6fec($a3)
/* BBDC4 800E09C4 8CC69010 */  lw         $a2, -0x6ff0($a2)
/* BBDC8 800E09C8 24040000 */  addiu      $a0, $zero, 0
/* BBDCC 800E09CC 0C03818A */  jal        func_800E0628
/* BBDD0 800E09D0 24052EE0 */   addiu     $a1, $zero, 0x2ee0
/* BBDD4 800E09D4 AFA20028 */  sw         $v0, 0x28($sp)
/* BBDD8 800E09D8 AFA3002C */  sw         $v1, 0x2c($sp)
/* BBDDC 800E09DC 3C07000F */  lui        $a3, 0xf
/* BBDE0 800E09E0 34E74240 */  ori        $a3, $a3, 0x4240
/* BBDE4 800E09E4 8FA5002C */  lw         $a1, 0x2c($sp)
/* BBDE8 800E09E8 8FA40028 */  lw         $a0, 0x28($sp)
/* BBDEC 800E09EC 0C03814A */  jal        func_800E0528
/* BBDF0 800E09F0 24060000 */   addiu     $a2, $zero, 0
/* BBDF4 800E09F4 3C0D8025 */  lui        $t5, %hi(D_8024B168)
/* BBDF8 800E09F8 3C188025 */  lui        $t8, %hi(D_8024B180)
/* BBDFC 800E09FC 2718B180 */  addiu      $t8, $t8, %lo(D_8024B180)
/* BBE00 800E0A00 25ADB168 */  addiu      $t5, $t5, %lo(D_8024B168)
/* BBE04 800E0A04 AFA20030 */  sw         $v0, 0x30($sp)
/* BBE08 800E0A08 AFA30034 */  sw         $v1, 0x34($sp)
/* BBE0C 800E0A0C 3C048025 */  lui        $a0, %hi(D_8024B148)
/* BBE10 800E0A10 240E0000 */  addiu      $t6, $zero, 0
/* BBE14 800E0A14 240F0000 */  addiu      $t7, $zero, 0
/* BBE18 800E0A18 AFAF0014 */  sw         $t7, 0x14($sp)
/* BBE1C 800E0A1C AFAE0010 */  sw         $t6, 0x10($sp)
/* BBE20 800E0A20 2484B148 */  addiu      $a0, $a0, %lo(D_8024B148)
/* BBE24 800E0A24 8FA70034 */  lw         $a3, 0x34($sp)
/* BBE28 800E0A28 8FA60030 */  lw         $a2, 0x30($sp)
/* BBE2C 800E0A2C AFAD0018 */  sw         $t5, 0x18($sp)
/* BBE30 800E0A30 0C0370C8 */  jal        func_800DC320
/* BBE34 800E0A34 AFB8001C */   sw        $t8, 0x1c($sp)
/* BBE38 800E0A38 3C048025 */  lui        $a0, %hi(D_8024B168)
/* BBE3C 800E0A3C 2484B168 */  addiu      $a0, $a0, %lo(D_8024B168)
/* BBE40 800E0A40 00002825 */  or         $a1, $zero, $zero
/* BBE44 800E0A44 0C036988 */  jal        func_800DA620
/* BBE48 800E0A48 24060001 */   addiu     $a2, $zero, 1
/* BBE4C 800E0A4C 8FB9004C */  lw         $t9, 0x4c($sp)
/* BBE50 800E0A50 1F20FFC6 */  bgtz       $t9, .L800E096C
/* BBE54 800E0A54 00000000 */   nop
.L800E0A58:
/* BBE58 800E0A58 8FA2003C */  lw         $v0, 0x3c($sp)
.L800E0A5C:
/* BBE5C 800E0A5C 8FBF0024 */  lw         $ra, 0x24($sp)
/* BBE60 800E0A60 27BD0040 */  addiu      $sp, $sp, 0x40
/* BBE64 800E0A64 03E00008 */  jr         $ra
/* BBE68 800E0A68 00000000 */   nop
/* BBE6C 800E0A6C 00000000 */  nop
