.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ED3C0
/* C87C0 800ED3C0 AC800000 */  sw         $zero, ($a0)
/* C87C4 800ED3C4 AC850004 */  sw         $a1, 4($a0)
/* C87C8 800ED3C8 AC860008 */  sw         $a2, 8($a0)
/* C87CC 800ED3CC A480000C */  sh         $zero, 0xc($a0)
/* C87D0 800ED3D0 A480000E */  sh         $zero, 0xe($a0)
/* C87D4 800ED3D4 03E00008 */  jr         $ra
/* C87D8 800ED3D8 AC870010 */   sw        $a3, 0x10($a0)
/* C87DC 800ED3DC 00000000 */  nop
