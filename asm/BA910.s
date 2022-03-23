.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF510
/* BA910 800DF510 00057400 */  sll        $t6, $a1, 0x10
/* BA914 800DF514 000E7C03 */  sra        $t7, $t6, 0x10
/* BA918 800DF518 AFA50004 */  sw         $a1, 4($sp)
/* BA91C 800DF51C 8C820040 */  lw         $v0, 0x40($a0)
/* BA920 800DF520 000F1880 */  sll        $v1, $t7, 2
/* BA924 800DF524 006F1823 */  subu       $v1, $v1, $t7
/* BA928 800DF528 00031900 */  sll        $v1, $v1, 4
/* BA92C 800DF52C 0062C021 */  addu       $t8, $v1, $v0
/* BA930 800DF530 8F190028 */  lw         $t9, 0x28($t8)
/* BA934 800DF534 00434021 */  addu       $t0, $v0, $v1
/* BA938 800DF538 17200007 */  bnez       $t9, .L800DF558
/* BA93C 800DF53C 00000000 */   nop
/* BA940 800DF540 AD00001C */  sw         $zero, 0x1c($t0)
/* BA944 800DF544 8C89003C */  lw         $t1, 0x3c($a0)
/* BA948 800DF548 240AFFFF */  addiu      $t2, $zero, -1
/* BA94C 800DF54C 15E90002 */  bne        $t7, $t1, .L800DF558
/* BA950 800DF550 00000000 */   nop
/* BA954 800DF554 AC8A003C */  sw         $t2, 0x3c($a0)
.L800DF558:
/* BA958 800DF558 03E00008 */  jr         $ra
/* BA95C 800DF55C 00000000 */   nop

glabel func_800DF560
/* BA960 800DF560 03E00008 */  jr         $ra
/* BA964 800DF564 8C82002C */   lw        $v0, 0x2c($a0)
/* BA968 800DF568 00000000 */  nop
/* BA96C 800DF56C 00000000 */  nop
