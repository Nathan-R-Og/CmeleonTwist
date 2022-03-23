.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF340
/* BA740 800DF340 00057400 */  sll        $t6, $a1, 0x10
/* BA744 800DF344 000E7C03 */  sra        $t7, $t6, 0x10
/* BA748 800DF348 AFA50004 */  sw         $a1, 4($sp)
/* BA74C 800DF34C AFA60008 */  sw         $a2, 8($sp)
/* BA750 800DF350 8C820040 */  lw         $v0, 0x40($a0)
/* BA754 800DF354 000FC880 */  sll        $t9, $t7, 2
/* BA758 800DF358 032FC823 */  subu       $t9, $t9, $t7
/* BA75C 800DF35C 0019C900 */  sll        $t9, $t9, 4
/* BA760 800DF360 30D800FF */  andi       $t8, $a2, 0xff
/* BA764 800DF364 00594021 */  addu       $t0, $v0, $t9
/* BA768 800DF368 03E00008 */  jr         $ra
/* BA76C 800DF36C A5180020 */   sh        $t8, 0x20($t0)

glabel func_800DF370
/* BA770 800DF370 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA774 800DF374 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA778 800DF378 AFA50034 */  sw         $a1, 0x34($sp)
/* BA77C 800DF37C 8C820040 */  lw         $v0, 0x40($a0)
/* BA780 800DF380 240F0003 */  addiu      $t7, $zero, 3
/* BA784 800DF384 A7AF0020 */  sh         $t7, 0x20($sp)
/* BA788 800DF388 8C98003C */  lw         $t8, 0x3c($a0)
/* BA78C 800DF38C 00A07025 */  or         $t6, $a1, $zero
/* BA790 800DF390 A7AE0028 */  sh         $t6, 0x28($sp)
/* BA794 800DF394 0018C880 */  sll        $t9, $t8, 2
/* BA798 800DF398 0338C823 */  subu       $t9, $t9, $t8
/* BA79C 800DF39C 0019C900 */  sll        $t9, $t9, 4
/* BA7A0 800DF3A0 03224821 */  addu       $t1, $t9, $v0
/* BA7A4 800DF3A4 AFA90024 */  sw         $t1, 0x24($sp)
/* BA7A8 800DF3A8 27A50020 */  addiu      $a1, $sp, 0x20
/* BA7AC 800DF3AC 24840014 */  addiu      $a0, $a0, 0x14
/* BA7B0 800DF3B0 0C03A0D7 */  jal        func_800E835C
/* BA7B4 800DF3B4 00003025 */   or        $a2, $zero, $zero
/* BA7B8 800DF3B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA7BC 800DF3BC 27BD0030 */  addiu      $sp, $sp, 0x30
/* BA7C0 800DF3C0 03E00008 */  jr         $ra
/* BA7C4 800DF3C4 00000000 */   nop
/* BA7C8 800DF3C8 00000000 */  nop
/* BA7CC 800DF3CC 00000000 */  nop
