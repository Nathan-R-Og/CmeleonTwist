.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DCBC0
/* B7FC0 800DCBC0 24030010 */  addiu      $v1, $zero, 0x10
/* B7FC4 800DCBC4 30AE000F */  andi       $t6, $a1, 0xf
/* B7FC8 800DCBC8 006E1023 */  subu       $v0, $v1, $t6
/* B7FCC 800DCBCC 10620003 */  beq        $v1, $v0, .L800DCBDC
/* B7FD0 800DCBD0 00A27821 */   addu      $t7, $a1, $v0
/* B7FD4 800DCBD4 10000002 */  b          .L800DCBE0
/* B7FD8 800DCBD8 AC8F0000 */   sw        $t7, ($a0)
.L800DCBDC:
/* B7FDC 800DCBDC AC850000 */  sw         $a1, ($a0)
.L800DCBE0:
/* B7FE0 800DCBE0 8C980000 */  lw         $t8, ($a0)
/* B7FE4 800DCBE4 AC860008 */  sw         $a2, 8($a0)
/* B7FE8 800DCBE8 AC80000C */  sw         $zero, 0xc($a0)
/* B7FEC 800DCBEC 03E00008 */  jr         $ra
/* B7FF0 800DCBF0 AC980004 */   sw        $t8, 4($a0)
/* B7FF4 800DCBF4 00000000 */  nop
/* B7FF8 800DCBF8 00000000 */  nop
/* B7FFC 800DCBFC 00000000 */  nop
