.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E07F0
/* BBBF0 800E07F0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BBBF4 800E07F4 AFA50044 */  sw         $a1, 0x44($sp)
/* BBBF8 800E07F8 93AE0047 */  lbu        $t6, 0x47($sp)
/* BBBFC 800E07FC AFBF0024 */  sw         $ra, 0x24($sp)
/* BBC00 800E0800 AFA40040 */  sw         $a0, 0x40($sp)
/* BBC04 800E0804 29C10041 */  slti       $at, $t6, 0x41
/* BBC08 800E0808 AFA60048 */  sw         $a2, 0x48($sp)
/* BBC0C 800E080C AFA7004C */  sw         $a3, 0x4c($sp)
/* BBC10 800E0810 14200003 */  bnez       $at, .L800E0820
/* BBC14 800E0814 AFA0003C */   sw        $zero, 0x3c($sp)
/* BBC18 800E0818 10000040 */  b          .L800E091C
/* BBC1C 800E081C 2402FFFF */   addiu     $v0, $zero, -1
.L800E0820:
/* BBC20 800E0820 8FAF004C */  lw         $t7, 0x4c($sp)
/* BBC24 800E0824 19E0003C */  blez       $t7, .L800E0918
/* BBC28 800E0828 00000000 */   nop
.L800E082C:
/* BBC2C 800E082C 8FA40040 */  lw         $a0, 0x40($sp)
/* BBC30 800E0830 93A50047 */  lbu        $a1, 0x47($sp)
/* BBC34 800E0834 0C03AE38 */  jal        func_800EB8E0
/* BBC38 800E0838 8FA60048 */   lw        $a2, 0x48($sp)
/* BBC3C 800E083C AFA2003C */  sw         $v0, 0x3c($sp)
/* BBC40 800E0840 8FB8003C */  lw         $t8, 0x3c($sp)
/* BBC44 800E0844 13000003 */  beqz       $t8, .L800E0854
/* BBC48 800E0848 00000000 */   nop
/* BBC4C 800E084C 10000033 */  b          .L800E091C
/* BBC50 800E0850 03001025 */   or        $v0, $t8, $zero
.L800E0854:
/* BBC54 800E0854 8FB9004C */  lw         $t9, 0x4c($sp)
/* BBC58 800E0858 93A90047 */  lbu        $t1, 0x47($sp)
/* BBC5C 800E085C 8FAB0048 */  lw         $t3, 0x48($sp)
/* BBC60 800E0860 3C068011 */  lui        $a2, 0x8011
/* BBC64 800E0864 3C078011 */  lui        $a3, 0x8011
/* BBC68 800E0868 2728FFF8 */  addiu      $t0, $t9, -8
/* BBC6C 800E086C 252A0001 */  addiu      $t2, $t1, 1
/* BBC70 800E0870 256C0008 */  addiu      $t4, $t3, 8
/* BBC74 800E0874 AFA8004C */  sw         $t0, 0x4c($sp)
/* BBC78 800E0878 A3AA0047 */  sb         $t2, 0x47($sp)
/* BBC7C 800E087C AFAC0048 */  sw         $t4, 0x48($sp)
/* BBC80 800E0880 8CE79014 */  lw         $a3, -0x6fec($a3)
/* BBC84 800E0884 8CC69010 */  lw         $a2, -0x6ff0($a2)
/* BBC88 800E0888 24040000 */  addiu      $a0, $zero, 0
/* BBC8C 800E088C 0C03818A */  jal        func_800E0628
/* BBC90 800E0890 24052EE0 */   addiu     $a1, $zero, 0x2ee0
/* BBC94 800E0894 AFA20028 */  sw         $v0, 0x28($sp)
/* BBC98 800E0898 AFA3002C */  sw         $v1, 0x2c($sp)
/* BBC9C 800E089C 3C07000F */  lui        $a3, 0xf
/* BBCA0 800E08A0 34E74240 */  ori        $a3, $a3, 0x4240
/* BBCA4 800E08A4 8FA5002C */  lw         $a1, 0x2c($sp)
/* BBCA8 800E08A8 8FA40028 */  lw         $a0, 0x28($sp)
/* BBCAC 800E08AC 0C03814A */  jal        func_800E0528
/* BBCB0 800E08B0 24060000 */   addiu     $a2, $zero, 0
/* BBCB4 800E08B4 3C0D8025 */  lui        $t5, %hi(D_8024B168)
/* BBCB8 800E08B8 3C188025 */  lui        $t8, %hi(D_8024B180)
/* BBCBC 800E08BC 2718B180 */  addiu      $t8, $t8, %lo(D_8024B180)
/* BBCC0 800E08C0 25ADB168 */  addiu      $t5, $t5, %lo(D_8024B168)
/* BBCC4 800E08C4 AFA20030 */  sw         $v0, 0x30($sp)
/* BBCC8 800E08C8 AFA30034 */  sw         $v1, 0x34($sp)
/* BBCCC 800E08CC 3C048025 */  lui        $a0, %hi(D_8024B148)
/* BBCD0 800E08D0 240E0000 */  addiu      $t6, $zero, 0
/* BBCD4 800E08D4 240F0000 */  addiu      $t7, $zero, 0
/* BBCD8 800E08D8 AFAF0014 */  sw         $t7, 0x14($sp)
/* BBCDC 800E08DC AFAE0010 */  sw         $t6, 0x10($sp)
/* BBCE0 800E08E0 2484B148 */  addiu      $a0, $a0, %lo(D_8024B148)
/* BBCE4 800E08E4 8FA70034 */  lw         $a3, 0x34($sp)
/* BBCE8 800E08E8 8FA60030 */  lw         $a2, 0x30($sp)
/* BBCEC 800E08EC AFAD0018 */  sw         $t5, 0x18($sp)
/* BBCF0 800E08F0 0C0370C8 */  jal        func_800DC320
/* BBCF4 800E08F4 AFB8001C */   sw        $t8, 0x1c($sp)
/* BBCF8 800E08F8 3C048025 */  lui        $a0, %hi(D_8024B168)
/* BBCFC 800E08FC 2484B168 */  addiu      $a0, $a0, %lo(D_8024B168)
/* BBD00 800E0900 00002825 */  or         $a1, $zero, $zero
/* BBD04 800E0904 0C036988 */  jal        func_800DA620
/* BBD08 800E0908 24060001 */   addiu     $a2, $zero, 1
/* BBD0C 800E090C 8FB9004C */  lw         $t9, 0x4c($sp)
/* BBD10 800E0910 1F20FFC6 */  bgtz       $t9, .L800E082C
/* BBD14 800E0914 00000000 */   nop
.L800E0918:
/* BBD18 800E0918 8FA2003C */  lw         $v0, 0x3c($sp)
.L800E091C:
/* BBD1C 800E091C 8FBF0024 */  lw         $ra, 0x24($sp)
/* BBD20 800E0920 27BD0040 */  addiu      $sp, $sp, 0x40
/* BBD24 800E0924 03E00008 */  jr         $ra
/* BBD28 800E0928 00000000 */   nop
/* BBD2C 800E092C 00000000 */  nop
