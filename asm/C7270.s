.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBE70
/* C7270 800EBE70 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* C7274 800EBE74 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* C7278 800EBE78 27BDFFF8 */  addiu      $sp, $sp, -8
/* C727C 800EBE7C 30EF0003 */  andi       $t7, $a3, 3
/* C7280 800EBE80 11E00006 */  beqz       $t7, .L800EBE9C
/* C7284 800EBE84 00000000 */   nop
.L800EBE88:
/* C7288 800EBE88 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* C728C 800EBE8C 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* C7290 800EBE90 30F90003 */  andi       $t9, $a3, 3
/* C7294 800EBE94 1720FFFC */  bnez       $t9, .L800EBE88
/* C7298 800EBE98 00000000 */   nop
.L800EBE9C:
/* C729C 800EBE9C 8C88000C */  lw         $t0, 0xc($a0)
/* C72A0 800EBEA0 3C01A000 */  lui        $at, 0xa000
/* C72A4 800EBEA4 27BD0008 */  addiu      $sp, $sp, 8
/* C72A8 800EBEA8 01054825 */  or         $t1, $t0, $a1
/* C72AC 800EBEAC 01215025 */  or         $t2, $t1, $at
/* C72B0 800EBEB0 AD460000 */  sw         $a2, ($t2)
/* C72B4 800EBEB4 03E00008 */  jr         $ra
/* C72B8 800EBEB8 00001025 */   or        $v0, $zero, $zero
/* C72BC 800EBEBC 00000000 */  nop
