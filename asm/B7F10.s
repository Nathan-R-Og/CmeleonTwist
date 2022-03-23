.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DCB10
/* B7F10 800DCB10 18A0001F */  blez       $a1, .L800DCB90
/* B7F14 800DCB14 00000000 */   nop
/* B7F18 800DCB18 240B2000 */  addiu      $t3, $zero, 0x2000
/* B7F1C 800DCB1C 00AB082B */  sltu       $at, $a1, $t3
/* B7F20 800DCB20 1020001D */  beqz       $at, .L800DCB98
/* B7F24 800DCB24 00000000 */   nop
/* B7F28 800DCB28 00804025 */  or         $t0, $a0, $zero
/* B7F2C 800DCB2C 00854821 */  addu       $t1, $a0, $a1
/* B7F30 800DCB30 0109082B */  sltu       $at, $t0, $t1
/* B7F34 800DCB34 10200016 */  beqz       $at, .L800DCB90
/* B7F38 800DCB38 00000000 */   nop
/* B7F3C 800DCB3C 310A000F */  andi       $t2, $t0, 0xf
/* B7F40 800DCB40 11400007 */  beqz       $t2, .L800DCB60
/* B7F44 800DCB44 2529FFF0 */   addiu     $t1, $t1, -0x10
/* B7F48 800DCB48 010A4023 */  subu       $t0, $t0, $t2
/* B7F4C 800DCB4C BD150000 */  cache      0x15, ($t0)
/* B7F50 800DCB50 0109082B */  sltu       $at, $t0, $t1
/* B7F54 800DCB54 1020000E */  beqz       $at, .L800DCB90
/* B7F58 800DCB58 00000000 */   nop
/* B7F5C 800DCB5C 25080010 */  addiu      $t0, $t0, 0x10
.L800DCB60:
/* B7F60 800DCB60 312A000F */  andi       $t2, $t1, 0xf
/* B7F64 800DCB64 11400006 */  beqz       $t2, .L800DCB80
/* B7F68 800DCB68 00000000 */   nop
/* B7F6C 800DCB6C 012A4823 */  subu       $t1, $t1, $t2
/* B7F70 800DCB70 BD350010 */  cache      0x15, 0x10($t1)
/* B7F74 800DCB74 0128082B */  sltu       $at, $t1, $t0
/* B7F78 800DCB78 14200005 */  bnez       $at, .L800DCB90
/* B7F7C 800DCB7C 00000000 */   nop
.L800DCB80:
/* B7F80 800DCB80 BD110000 */  cache      0x11, ($t0)
/* B7F84 800DCB84 0109082B */  sltu       $at, $t0, $t1
/* B7F88 800DCB88 1420FFFD */  bnez       $at, .L800DCB80
/* B7F8C 800DCB8C 25080010 */   addiu     $t0, $t0, 0x10
.L800DCB90:
/* B7F90 800DCB90 03E00008 */  jr         $ra
/* B7F94 800DCB94 00000000 */   nop
.L800DCB98:
/* B7F98 800DCB98 3C088000 */  lui        $t0, 0x8000
/* B7F9C 800DCB9C 010B4821 */  addu       $t1, $t0, $t3
/* B7FA0 800DCBA0 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800DCBA4:
/* B7FA4 800DCBA4 BD010000 */  cache      1, ($t0)
/* B7FA8 800DCBA8 0109082B */  sltu       $at, $t0, $t1
/* B7FAC 800DCBAC 1420FFFD */  bnez       $at, .L800DCBA4
/* B7FB0 800DCBB0 25080010 */   addiu     $t0, $t0, 0x10
/* B7FB4 800DCBB4 03E00008 */  jr         $ra
/* B7FB8 800DCBB8 00000000 */   nop
/* B7FBC 800DCBBC 00000000 */  nop
