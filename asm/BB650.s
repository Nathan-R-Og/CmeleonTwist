.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0250
/* BB650 800E0250 40024800 */  mfc0       $v0, $9
/* BB654 800E0254 03E00008 */  jr         $ra
/* BB658 800E0258 00000000 */   nop
/* BB65C 800E025C 00000000 */  nop
