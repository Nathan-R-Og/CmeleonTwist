.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF260
/* BA660 800DF260 00057400 */  sll        $t6, $a1, 0x10
/* BA664 800DF264 000E7C03 */  sra        $t7, $t6, 0x10
/* BA668 800DF268 AFA50004 */  sw         $a1, 4($sp)
/* BA66C 800DF26C 03E00008 */  jr         $ra
/* BA670 800DF270 AC8F003C */   sw        $t7, 0x3c($a0)
/* BA674 800DF274 00000000 */  nop
/* BA678 800DF278 00000000 */  nop
/* BA67C 800DF27C 00000000 */  nop
