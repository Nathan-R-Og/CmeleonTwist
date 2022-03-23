.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF2E0
/* BA6E0 800DF2E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BA6E4 800DF2E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA6E8 800DF2E8 AFA50034 */  sw         $a1, 0x34($sp)
/* BA6EC 800DF2EC 8C820040 */  lw         $v0, 0x40($a0)
/* BA6F0 800DF2F0 240E0008 */  addiu      $t6, $zero, 8
/* BA6F4 800DF2F4 A7AE0020 */  sh         $t6, 0x20($sp)
/* BA6F8 800DF2F8 8C8F003C */  lw         $t7, 0x3c($a0)
/* BA6FC 800DF2FC 00A04025 */  or         $t0, $a1, $zero
/* BA700 800DF300 A3A80028 */  sb         $t0, 0x28($sp)
/* BA704 800DF304 000FC080 */  sll        $t8, $t7, 2
/* BA708 800DF308 030FC023 */  subu       $t8, $t8, $t7
/* BA70C 800DF30C 0018C100 */  sll        $t8, $t8, 4
/* BA710 800DF310 0302C821 */  addu       $t9, $t8, $v0
/* BA714 800DF314 AFB90024 */  sw         $t9, 0x24($sp)
/* BA718 800DF318 27A50020 */  addiu      $a1, $sp, 0x20
/* BA71C 800DF31C 24840014 */  addiu      $a0, $a0, 0x14
/* BA720 800DF320 0C03A0D7 */  jal        func_800E835C
/* BA724 800DF324 00003025 */   or        $a2, $zero, $zero
/* BA728 800DF328 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA72C 800DF32C 27BD0030 */  addiu      $sp, $sp, 0x30
/* BA730 800DF330 03E00008 */  jr         $ra
/* BA734 800DF334 00000000 */   nop
/* BA738 800DF338 00000000 */  nop
/* BA73C 800DF33C 00000000 */  nop
