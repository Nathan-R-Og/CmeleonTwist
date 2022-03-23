.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF5B0
/* BA9B0 800DF5B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA9B4 800DF5B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA9B8 800DF5B8 240E0011 */  addiu      $t6, $zero, 0x11
/* BA9BC 800DF5BC A7AE0018 */  sh         $t6, 0x18($sp)
/* BA9C0 800DF5C0 27A50018 */  addiu      $a1, $sp, 0x18
/* BA9C4 800DF5C4 24840048 */  addiu      $a0, $a0, 0x48
/* BA9C8 800DF5C8 0C03A0D7 */  jal        func_800E835C
/* BA9CC 800DF5CC 00003025 */   or        $a2, $zero, $zero
/* BA9D0 800DF5D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA9D4 800DF5D4 27BD0028 */  addiu      $sp, $sp, 0x28
/* BA9D8 800DF5D8 03E00008 */  jr         $ra
/* BA9DC 800DF5DC 00000000 */   nop

glabel func_800DF5E0
/* BA9E0 800DF5E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA9E4 800DF5E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA9E8 800DF5E8 240E000F */  addiu      $t6, $zero, 0xf
/* BA9EC 800DF5EC A7AE0018 */  sh         $t6, 0x18($sp)
/* BA9F0 800DF5F0 27A50018 */  addiu      $a1, $sp, 0x18
/* BA9F4 800DF5F4 24840048 */  addiu      $a0, $a0, 0x48
/* BA9F8 800DF5F8 0C03A0D7 */  jal        func_800E835C
/* BA9FC 800DF5FC 00003025 */   or        $a2, $zero, $zero
/* BAA00 800DF600 8FBF0014 */  lw         $ra, 0x14($sp)
/* BAA04 800DF604 27BD0028 */  addiu      $sp, $sp, 0x28
/* BAA08 800DF608 03E00008 */  jr         $ra
/* BAA0C 800DF60C 00000000 */   nop

glabel func_800DF610
/* BAA10 800DF610 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BAA14 800DF614 3C0100FF */  lui        $at, 0xff
/* BAA18 800DF618 00A1C824 */  and        $t9, $a1, $at
/* BAA1C 800DF61C 30AAFF00 */  andi       $t2, $a1, 0xff00
/* BAA20 800DF620 AFBF0014 */  sw         $ra, 0x14($sp)
/* BAA24 800DF624 240E0007 */  addiu      $t6, $zero, 7
/* BAA28 800DF628 240F00FF */  addiu      $t7, $zero, 0xff
/* BAA2C 800DF62C 24180051 */  addiu      $t8, $zero, 0x51
/* BAA30 800DF630 00194C03 */  sra        $t1, $t9, 0x10
/* BAA34 800DF634 000A5A03 */  sra        $t3, $t2, 8
/* BAA38 800DF638 00A06025 */  or         $t4, $a1, $zero
/* BAA3C 800DF63C A7AE0018 */  sh         $t6, 0x18($sp)
/* BAA40 800DF640 A3AF0020 */  sb         $t7, 0x20($sp)
/* BAA44 800DF644 A3B80021 */  sb         $t8, 0x21($sp)
/* BAA48 800DF648 A3A90023 */  sb         $t1, 0x23($sp)
/* BAA4C 800DF64C A3AB0024 */  sb         $t3, 0x24($sp)
/* BAA50 800DF650 A3AC0025 */  sb         $t4, 0x25($sp)
/* BAA54 800DF654 27A50018 */  addiu      $a1, $sp, 0x18
/* BAA58 800DF658 24840048 */  addiu      $a0, $a0, 0x48
/* BAA5C 800DF65C 0C03A0D7 */  jal        func_800E835C
/* BAA60 800DF660 00003025 */   or        $a2, $zero, $zero
/* BAA64 800DF664 8FBF0014 */  lw         $ra, 0x14($sp)
/* BAA68 800DF668 27BD0028 */  addiu      $sp, $sp, 0x28
/* BAA6C 800DF66C 03E00008 */  jr         $ra
/* BAA70 800DF670 00000000 */   nop
/* BAA74 800DF674 00000000 */  nop
/* BAA78 800DF678 00000000 */  nop
/* BAA7C 800DF67C 00000000 */  nop
