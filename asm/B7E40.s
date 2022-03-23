.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DCA40
/* B7E40 800DCA40 3C013F80 */  lui        $at, 0x3f80
/* B7E44 800DCA44 44811000 */  mtc1       $at, $f2
/* B7E48 800DCA48 04800004 */  bltz       $a0, .L800DCA5C
/* B7E4C 800DCA4C 3C018011 */   lui       $at, 0x8011
/* B7E50 800DCA50 3C018011 */  lui        $at, %hi(D_80110980)
/* B7E54 800DCA54 10000003 */  b          .L800DCA64
/* B7E58 800DCA58 C4200980 */   lwc1      $f0, %lo(D_80110980)($at)
.L800DCA5C:
/* B7E5C 800DCA5C C4200984 */  lwc1       $f0, 0x984($at)
/* B7E60 800DCA60 00042023 */  negu       $a0, $a0
.L800DCA64:
/* B7E64 800DCA64 10800008 */  beqz       $a0, .L800DCA88
.L800DCA68:
/* B7E68 800DCA68 308E0001 */   andi      $t6, $a0, 1
/* B7E6C 800DCA6C 11C00003 */  beqz       $t6, .L800DCA7C
/* B7E70 800DCA70 00047843 */   sra       $t7, $a0, 1
/* B7E74 800DCA74 46001082 */  mul.s      $f2, $f2, $f0
/* B7E78 800DCA78 00000000 */  nop
.L800DCA7C:
/* B7E7C 800DCA7C 46000002 */  mul.s      $f0, $f0, $f0
/* B7E80 800DCA80 15E0FFF9 */  bnez       $t7, .L800DCA68
/* B7E84 800DCA84 01E02025 */   or        $a0, $t7, $zero
.L800DCA88:
/* B7E88 800DCA88 03E00008 */  jr         $ra
/* B7E8C 800DCA8C 46001006 */   mov.s     $f0, $f2

glabel func_800DCA90
/* B7E90 800DCA90 18A00011 */  blez       $a1, .L800DCAD8
/* B7E94 800DCA94 00000000 */   nop
/* B7E98 800DCA98 240B4000 */  addiu      $t3, $zero, 0x4000
/* B7E9C 800DCA9C 00AB082B */  sltu       $at, $a1, $t3
/* B7EA0 800DCAA0 1020000F */  beqz       $at, .L800DCAE0
/* B7EA4 800DCAA4 00000000 */   nop
/* B7EA8 800DCAA8 00804025 */  or         $t0, $a0, $zero
/* B7EAC 800DCAAC 00854821 */  addu       $t1, $a0, $a1
/* B7EB0 800DCAB0 0109082B */  sltu       $at, $t0, $t1
/* B7EB4 800DCAB4 10200008 */  beqz       $at, .L800DCAD8
/* B7EB8 800DCAB8 00000000 */   nop
/* B7EBC 800DCABC 310A001F */  andi       $t2, $t0, 0x1f
/* B7EC0 800DCAC0 2529FFE0 */  addiu      $t1, $t1, -0x20
/* B7EC4 800DCAC4 010A4023 */  subu       $t0, $t0, $t2
.L800DCAC8:
/* B7EC8 800DCAC8 BD100000 */  cache      0x10, ($t0)
/* B7ECC 800DCACC 0109082B */  sltu       $at, $t0, $t1
/* B7ED0 800DCAD0 1420FFFD */  bnez       $at, .L800DCAC8
/* B7ED4 800DCAD4 25080020 */   addiu     $t0, $t0, 0x20
.L800DCAD8:
/* B7ED8 800DCAD8 03E00008 */  jr         $ra
/* B7EDC 800DCADC 00000000 */   nop
.L800DCAE0:
/* B7EE0 800DCAE0 3C088000 */  lui        $t0, 0x8000
/* B7EE4 800DCAE4 010B4821 */  addu       $t1, $t0, $t3
/* B7EE8 800DCAE8 2529FFE0 */  addiu      $t1, $t1, -0x20
.L800DCAEC:
/* B7EEC 800DCAEC BD000000 */  cache      0, ($t0)
/* B7EF0 800DCAF0 0109082B */  sltu       $at, $t0, $t1
/* B7EF4 800DCAF4 1420FFFD */  bnez       $at, .L800DCAEC
/* B7EF8 800DCAF8 25080020 */   addiu     $t0, $t0, 0x20
/* B7EFC 800DCAFC 03E00008 */  jr         $ra
/* B7F00 800DCB00 00000000 */   nop
/* B7F04 800DCB04 00000000 */  nop
/* B7F08 800DCB08 00000000 */  nop
/* B7F0C 800DCB0C 00000000 */  nop
