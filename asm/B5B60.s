.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DA760
/* B5B60 800DA760 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* B5B64 800DA764 8DC60010 */  lw         $a2, %lo(D_A4600010)($t6)
/* B5B68 800DA768 27BDFFF8 */  addiu      $sp, $sp, -8
/* B5B6C 800DA76C 30CF0003 */  andi       $t7, $a2, 3
/* B5B70 800DA770 11E00006 */  beqz       $t7, .L800DA78C
/* B5B74 800DA774 00000000 */   nop
.L800DA778:
/* B5B78 800DA778 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* B5B7C 800DA77C 8F060010 */  lw         $a2, %lo(D_A4600010)($t8)
/* B5B80 800DA780 30D90003 */  andi       $t9, $a2, 3
/* B5B84 800DA784 1720FFFC */  bnez       $t9, .L800DA778
/* B5B88 800DA788 00000000 */   nop
.L800DA78C:
/* B5B8C 800DA78C 3C088000 */  lui        $t0, %hi(D_80000308)
/* B5B90 800DA790 8D080308 */  lw         $t0, %lo(D_80000308)($t0)
/* B5B94 800DA794 3C01A000 */  lui        $at, 0xa000
/* B5B98 800DA798 00001025 */  or         $v0, $zero, $zero
/* B5B9C 800DA79C 01044825 */  or         $t1, $t0, $a0
/* B5BA0 800DA7A0 01215025 */  or         $t2, $t1, $at
/* B5BA4 800DA7A4 8D4B0000 */  lw         $t3, ($t2)
/* B5BA8 800DA7A8 27BD0008 */  addiu      $sp, $sp, 8
/* B5BAC 800DA7AC 03E00008 */  jr         $ra
/* B5BB0 800DA7B0 ACAB0000 */   sw        $t3, ($a1)
/* B5BB4 800DA7B4 00000000 */  nop
/* B5BB8 800DA7B8 00000000 */  nop
/* B5BBC 800DA7BC 00000000 */  nop
