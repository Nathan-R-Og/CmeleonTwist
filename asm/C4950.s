.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E9550
/* C4950 800E9550 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C4954 800E9554 00054400 */  sll        $t0, $a1, 0x10
/* C4958 800E9558 00087403 */  sra        $t6, $t0, 0x10
/* C495C 800E955C AFB10018 */  sw         $s1, 0x18($sp)
/* C4960 800E9560 000E8880 */  sll        $s1, $t6, 2
/* C4964 800E9564 AFBF001C */  sw         $ra, 0x1c($sp)
/* C4968 800E9568 AFB00014 */  sw         $s0, 0x14($sp)
/* C496C 800E956C AFA50024 */  sw         $a1, 0x24($sp)
/* C4970 800E9570 022E8821 */  addu       $s1, $s1, $t6
/* C4974 800E9574 8C8F0034 */  lw         $t7, 0x34($a0)
/* C4978 800E9578 00118880 */  sll        $s1, $s1, 2
/* C497C 800E957C 022E8823 */  subu       $s1, $s1, $t6
/* C4980 800E9580 00808025 */  or         $s0, $a0, $zero
/* C4984 800E9584 00118880 */  sll        $s1, $s1, 2
/* C4988 800E9588 00C02825 */  or         $a1, $a2, $zero
/* C498C 800E958C 01F12021 */  addu       $a0, $t7, $s1
/* C4990 800E9590 24840020 */  addiu      $a0, $a0, 0x20
/* C4994 800E9594 0C03A444 */  jal        func_800E9110
/* C4998 800E9598 00E03025 */   or        $a2, $a3, $zero
/* C499C 800E959C 8E180034 */  lw         $t8, 0x34($s0)
/* C49A0 800E95A0 24050001 */  addiu      $a1, $zero, 1
/* C49A4 800E95A4 03113021 */  addu       $a2, $t8, $s1
/* C49A8 800E95A8 0C03B735 */  jal        func_800EDCD4
/* C49AC 800E95AC 24C40020 */   addiu     $a0, $a2, 0x20
/* C49B0 800E95B0 8E190034 */  lw         $t9, 0x34($s0)
/* C49B4 800E95B4 8E040030 */  lw         $a0, 0x30($s0)
/* C49B8 800E95B8 24050002 */  addiu      $a1, $zero, 2
/* C49BC 800E95BC 03313021 */  addu       $a2, $t9, $s1
/* C49C0 800E95C0 0C03A57C */  jal        func_800E95F0
/* C49C4 800E95C4 24C60020 */   addiu     $a2, $a2, 0x20
/* C49C8 800E95C8 8E0A0034 */  lw         $t2, 0x34($s0)
/* C49CC 800E95CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* C49D0 800E95D0 8FB00014 */  lw         $s0, 0x14($sp)
/* C49D4 800E95D4 01511021 */  addu       $v0, $t2, $s1
/* C49D8 800E95D8 8FB10018 */  lw         $s1, 0x18($sp)
/* C49DC 800E95DC 27BD0020 */  addiu      $sp, $sp, 0x20
/* C49E0 800E95E0 03E00008 */  jr         $ra
/* C49E4 800E95E4 24420020 */   addiu     $v0, $v0, 0x20
/* C49E8 800E95E8 00000000 */  nop
/* C49EC 800E95EC 00000000 */  nop
