.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF3D0
/* BA7D0 800DF3D0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA7D4 800DF3D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA7D8 800DF3D8 AFA50034 */  sw         $a1, 0x34($sp)
/* BA7DC 800DF3DC 8C820040 */  lw         $v0, 0x40($a0)
/* BA7E0 800DF3E0 00A04025 */  or         $t0, $a1, $zero
/* BA7E4 800DF3E4 240E0002 */  addiu      $t6, $zero, 2
/* BA7E8 800DF3E8 A7AE0020 */  sh         $t6, 0x20($sp)
/* BA7EC 800DF3EC A3A80028 */  sb         $t0, 0x28($sp)
/* BA7F0 800DF3F0 8C8F003C */  lw         $t7, 0x3c($a0)
/* BA7F4 800DF3F4 27A50020 */  addiu      $a1, $sp, 0x20
/* BA7F8 800DF3F8 24840014 */  addiu      $a0, $a0, 0x14
/* BA7FC 800DF3FC 000FC080 */  sll        $t8, $t7, 2
/* BA800 800DF400 030FC023 */  subu       $t8, $t8, $t7
/* BA804 800DF404 0018C100 */  sll        $t8, $t8, 4
/* BA808 800DF408 0302C821 */  addu       $t9, $t8, $v0
/* BA80C 800DF40C AFB90024 */  sw         $t9, 0x24($sp)
/* BA810 800DF410 0C03A0D7 */  jal        func_800E835C
/* BA814 800DF414 00003025 */   or        $a2, $zero, $zero
/* BA818 800DF418 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA81C 800DF41C 27BD0030 */  addiu      $sp, $sp, 0x30
/* BA820 800DF420 03E00008 */  jr         $ra
/* BA824 800DF424 00000000 */   nop
/* BA828 800DF428 00000000 */  nop
/* BA82C 800DF42C 00000000 */  nop
