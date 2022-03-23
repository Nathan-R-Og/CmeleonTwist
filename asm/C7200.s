.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBE00
/* C7200 800EBE00 40845800 */  mtc0       $a0, $11
/* C7204 800EBE04 03E00008 */  jr         $ra
/* C7208 800EBE08 00000000 */   nop
/* C720C 800EBE0C 00000000 */  nop
