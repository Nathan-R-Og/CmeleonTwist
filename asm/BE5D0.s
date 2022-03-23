.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E31D0
/* BE5D0 800E31D0 3C028011 */  lui        $v0, %hi(D_80109E90)
/* BE5D4 800E31D4 03E00008 */  jr         $ra
/* BE5D8 800E31D8 8C429E90 */   lw        $v0, %lo(D_80109E90)($v0)
/* BE5DC 800E31DC 00000000 */  nop
