.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBBE0
/* C6FE0 800EBBE0 3C0EA480 */  lui        $t6, %hi(D_A4800018)
/* C6FE4 800EBBE4 8DC40018 */  lw         $a0, %lo(D_A4800018)($t6)
/* C6FE8 800EBBE8 27BDFFF8 */  addiu      $sp, $sp, -8
/* C6FEC 800EBBEC 308F0003 */  andi       $t7, $a0, 3
/* C6FF0 800EBBF0 11E00003 */  beqz       $t7, .L800EBC00
/* C6FF4 800EBBF4 00000000 */   nop
/* C6FF8 800EBBF8 10000002 */  b          .L800EBC04
/* C6FFC 800EBBFC 24020001 */   addiu     $v0, $zero, 1
.L800EBC00:
/* C7000 800EBC00 00001025 */  or         $v0, $zero, $zero
.L800EBC04:
/* C7004 800EBC04 03E00008 */  jr         $ra
/* C7008 800EBC08 27BD0008 */   addiu     $sp, $sp, 8
/* C700C 800EBC0C 00000000 */  nop
