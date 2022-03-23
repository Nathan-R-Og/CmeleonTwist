.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E68F0
/* C1CF0 800E68F0 03E00008 */  jr         $ra
/* C1CF4 800E68F4 AC800000 */   sw        $zero, ($a0)
/* C1CF8 800E68F8 00000000 */  nop
/* C1CFC 800E68FC 00000000 */  nop
