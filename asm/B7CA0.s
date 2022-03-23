.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC8A0
/* B7CA0 800DC8A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7CA4 800DC8A4 AFA40018 */  sw         $a0, 0x18($sp)
/* B7CA8 800DC8A8 8FAE0018 */  lw         $t6, 0x18($sp)
/* B7CAC 800DC8AC 3C018000 */  lui        $at, 0x8000
/* B7CB0 800DC8B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7CB4 800DC8B4 01C1082B */  sltu       $at, $t6, $at
/* B7CB8 800DC8B8 14200007 */  bnez       $at, .L800DC8D8
/* B7CBC 800DC8BC 3C01A000 */   lui       $at, 0xa000
/* B7CC0 800DC8C0 01C1082B */  sltu       $at, $t6, $at
/* B7CC4 800DC8C4 10200004 */  beqz       $at, .L800DC8D8
/* B7CC8 800DC8C8 3C011FFF */   lui       $at, 0x1fff
/* B7CCC 800DC8CC 3421FFFF */  ori        $at, $at, 0xffff
/* B7CD0 800DC8D0 1000000E */  b          .L800DC90C
/* B7CD4 800DC8D4 01C11024 */   and       $v0, $t6, $at
.L800DC8D8:
/* B7CD8 800DC8D8 8FAF0018 */  lw         $t7, 0x18($sp)
/* B7CDC 800DC8DC 3C01A000 */  lui        $at, 0xa000
/* B7CE0 800DC8E0 01E1082B */  sltu       $at, $t7, $at
/* B7CE4 800DC8E4 14200007 */  bnez       $at, .L800DC904
/* B7CE8 800DC8E8 3C01C000 */   lui       $at, 0xc000
/* B7CEC 800DC8EC 01E1082B */  sltu       $at, $t7, $at
/* B7CF0 800DC8F0 10200004 */  beqz       $at, .L800DC904
/* B7CF4 800DC8F4 3C011FFF */   lui       $at, 0x1fff
/* B7CF8 800DC8F8 3421FFFF */  ori        $at, $at, 0xffff
/* B7CFC 800DC8FC 10000003 */  b          .L800DC90C
/* B7D00 800DC900 01E11024 */   and       $v0, $t7, $at
.L800DC904:
/* B7D04 800DC904 0C039A0C */  jal        func_800E6830
/* B7D08 800DC908 8FA40018 */   lw        $a0, 0x18($sp)
.L800DC90C:
/* B7D0C 800DC90C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7D10 800DC910 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7D14 800DC914 03E00008 */  jr         $ra
/* B7D18 800DC918 00000000 */   nop
/* B7D1C 800DC91C 00000000 */  nop
