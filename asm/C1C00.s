.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E6800
/* C1C00 800E6800 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* C1C04 800E6804 8DC40010 */  lw         $a0, %lo(D_A4040010)($t6)
/* C1C08 800E6808 27BDFFF8 */  addiu      $sp, $sp, -8
/* C1C0C 800E680C 308F001C */  andi       $t7, $a0, 0x1c
/* C1C10 800E6810 11E00003 */  beqz       $t7, .L800E6820
/* C1C14 800E6814 00000000 */   nop
/* C1C18 800E6818 10000002 */  b          .L800E6824
/* C1C1C 800E681C 24020001 */   addiu     $v0, $zero, 1
.L800E6820:
/* C1C20 800E6820 00001025 */  or         $v0, $zero, $zero
.L800E6824:
/* C1C24 800E6824 03E00008 */  jr         $ra
/* C1C28 800E6828 27BD0008 */   addiu     $sp, $sp, 8
/* C1C2C 800E682C 00000000 */  nop
