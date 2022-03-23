.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E1860
/* BCC60 800E1860 40846000 */  mtc0       $a0, $12
/* BCC64 800E1864 00000000 */  nop
/* BCC68 800E1868 03E00008 */  jr         $ra
/* BCC6C 800E186C 00000000 */   nop

glabel func_800E1870
/* BCC70 800E1870 40026000 */  mfc0       $v0, $12
/* BCC74 800E1874 03E00008 */  jr         $ra
/* BCC78 800E1878 00000000 */   nop
/* BCC7C 800E187C 00000000 */  nop
