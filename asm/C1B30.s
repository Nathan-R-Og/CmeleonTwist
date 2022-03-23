.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E6730
/* C1B30 800E6730 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* C1B34 800E6734 8DC50010 */  lw         $a1, %lo(D_A4040010)($t6)
/* C1B38 800E6738 27BDFFF8 */  addiu      $sp, $sp, -8
/* C1B3C 800E673C 30AF0001 */  andi       $t7, $a1, 1
/* C1B40 800E6740 15E00003 */  bnez       $t7, .L800E6750
/* C1B44 800E6744 00000000 */   nop
/* C1B48 800E6748 10000004 */  b          .L800E675C
/* C1B4C 800E674C 2402FFFF */   addiu     $v0, $zero, -1
.L800E6750:
/* C1B50 800E6750 3C18A408 */  lui        $t8, 0xa408
/* C1B54 800E6754 AF040000 */  sw         $a0, ($t8)
/* C1B58 800E6758 00001025 */  or         $v0, $zero, $zero
.L800E675C:
/* C1B5C 800E675C 03E00008 */  jr         $ra
/* C1B60 800E6760 27BD0008 */   addiu     $sp, $sp, 8
/* C1B64 800E6764 00000000 */  nop
/* C1B68 800E6768 00000000 */  nop
/* C1B6C 800E676C 00000000 */  nop
