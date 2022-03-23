.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC550
/* B7950 800DC550 3C088000 */  lui        $t0, 0x8000
/* B7954 800DC554 240A2000 */  addiu      $t2, $zero, 0x2000
/* B7958 800DC558 010A4821 */  addu       $t1, $t0, $t2
/* B795C 800DC55C 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800DC560:
/* B7960 800DC560 BD010000 */  cache      1, ($t0)
/* B7964 800DC564 0109082B */  sltu       $at, $t0, $t1
/* B7968 800DC568 1420FFFD */  bnez       $at, .L800DC560
/* B796C 800DC56C 25080010 */   addiu     $t0, $t0, 0x10
/* B7970 800DC570 03E00008 */  jr         $ra
/* B7974 800DC574 00000000 */   nop
/* B7978 800DC578 00000000 */  nop
/* B797C 800DC57C 00000000 */  nop
