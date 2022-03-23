.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DAFE0
/* B63E0 800DAFE0 18A00011 */  blez       $a1, .L800DB028
/* B63E4 800DAFE4 00000000 */   nop
/* B63E8 800DAFE8 240B2000 */  addiu      $t3, $zero, 0x2000
/* B63EC 800DAFEC 00AB082B */  sltu       $at, $a1, $t3
/* B63F0 800DAFF0 1020000F */  beqz       $at, .L800DB030
/* B63F4 800DAFF4 00000000 */   nop
/* B63F8 800DAFF8 00804025 */  or         $t0, $a0, $zero
/* B63FC 800DAFFC 00854821 */  addu       $t1, $a0, $a1
/* B6400 800DB000 0109082B */  sltu       $at, $t0, $t1
/* B6404 800DB004 10200008 */  beqz       $at, .L800DB028
/* B6408 800DB008 00000000 */   nop
/* B640C 800DB00C 310A000F */  andi       $t2, $t0, 0xf
/* B6410 800DB010 2529FFF0 */  addiu      $t1, $t1, -0x10
/* B6414 800DB014 010A4023 */  subu       $t0, $t0, $t2
.L800DB018:
/* B6418 800DB018 BD190000 */  cache      0x19, ($t0)
/* B641C 800DB01C 0109082B */  sltu       $at, $t0, $t1
/* B6420 800DB020 1420FFFD */  bnez       $at, .L800DB018
/* B6424 800DB024 25080010 */   addiu     $t0, $t0, 0x10
.L800DB028:
/* B6428 800DB028 03E00008 */  jr         $ra
/* B642C 800DB02C 00000000 */   nop
.L800DB030:
/* B6430 800DB030 3C088000 */  lui        $t0, 0x8000
/* B6434 800DB034 010B4821 */  addu       $t1, $t0, $t3
/* B6438 800DB038 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800DB03C:
/* B643C 800DB03C BD010000 */  cache      1, ($t0)
/* B6440 800DB040 0109082B */  sltu       $at, $t0, $t1
/* B6444 800DB044 1420FFFD */  bnez       $at, .L800DB03C
/* B6448 800DB048 25080010 */   addiu     $t0, $t0, 0x10
/* B644C 800DB04C 03E00008 */  jr         $ra
/* B6450 800DB050 00000000 */   nop
/* B6454 800DB054 00000000 */  nop
/* B6458 800DB058 00000000 */  nop
/* B645C 800DB05C 00000000 */  nop
