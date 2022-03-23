.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DA510
/* B5910 800DA510 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5914 800DA514 3C0E8011 */  lui        $t6, %hi(D_80109D70)
/* B5918 800DA518 8DCE9D70 */  lw         $t6, %lo(D_80109D70)($t6)
/* B591C 800DA51C AFBF001C */  sw         $ra, 0x1c($sp)
/* B5920 800DA520 AFA40028 */  sw         $a0, 0x28($sp)
/* B5924 800DA524 AFA5002C */  sw         $a1, 0x2c($sp)
/* B5928 800DA528 AFA60030 */  sw         $a2, 0x30($sp)
/* B592C 800DA52C AFA70034 */  sw         $a3, 0x34($sp)
/* B5930 800DA530 AFB10018 */  sw         $s1, 0x18($sp)
/* B5934 800DA534 15C00003 */  bnez       $t6, .L800DA544
/* B5938 800DA538 AFB00014 */   sw        $s0, 0x14($sp)
/* B593C 800DA53C 10000032 */  b          .L800DA608
/* B5940 800DA540 2402FFFF */   addiu     $v0, $zero, -1
.L800DA544:
/* B5944 800DA544 8FAF0030 */  lw         $t7, 0x30($sp)
/* B5948 800DA548 15E00005 */  bnez       $t7, .L800DA560
/* B594C 800DA54C 00000000 */   nop
/* B5950 800DA550 8FB90028 */  lw         $t9, 0x28($sp)
/* B5954 800DA554 2418000B */  addiu      $t8, $zero, 0xb
/* B5958 800DA558 10000004 */  b          .L800DA56C
/* B595C 800DA55C A7380000 */   sh        $t8, ($t9)
.L800DA560:
/* B5960 800DA560 8FA90028 */  lw         $t1, 0x28($sp)
/* B5964 800DA564 2408000C */  addiu      $t0, $zero, 0xc
/* B5968 800DA568 A5280000 */  sh         $t0, ($t1)
.L800DA56C:
/* B596C 800DA56C 8FAA002C */  lw         $t2, 0x2c($sp)
/* B5970 800DA570 8FAB0028 */  lw         $t3, 0x28($sp)
/* B5974 800DA574 24010001 */  addiu      $at, $zero, 1
/* B5978 800DA578 A16A0002 */  sb         $t2, 2($t3)
/* B597C 800DA57C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B5980 800DA580 8FAC0040 */  lw         $t4, 0x40($sp)
/* B5984 800DA584 ADAC0004 */  sw         $t4, 4($t5)
/* B5988 800DA588 8FAF0028 */  lw         $t7, 0x28($sp)
/* B598C 800DA58C 8FAE0038 */  lw         $t6, 0x38($sp)
/* B5990 800DA590 ADEE0008 */  sw         $t6, 8($t7)
/* B5994 800DA594 8FB90028 */  lw         $t9, 0x28($sp)
/* B5998 800DA598 8FB80034 */  lw         $t8, 0x34($sp)
/* B599C 800DA59C AF38000C */  sw         $t8, 0xc($t9)
/* B59A0 800DA5A0 8FA90028 */  lw         $t1, 0x28($sp)
/* B59A4 800DA5A4 8FA8003C */  lw         $t0, 0x3c($sp)
/* B59A8 800DA5A8 AD280010 */  sw         $t0, 0x10($t1)
/* B59AC 800DA5AC 8FAA0028 */  lw         $t2, 0x28($sp)
/* B59B0 800DA5B0 AD400014 */  sw         $zero, 0x14($t2)
/* B59B4 800DA5B4 8FAB002C */  lw         $t3, 0x2c($sp)
/* B59B8 800DA5B8 1561000A */  bne        $t3, $at, .L800DA5E4
/* B59BC 800DA5BC 00000000 */   nop
/* B59C0 800DA5C0 0C038F30 */  jal        func_800E3CC0
/* B59C4 800DA5C4 00000000 */   nop
/* B59C8 800DA5C8 00408825 */  or         $s1, $v0, $zero
/* B59CC 800DA5CC 02202025 */  or         $a0, $s1, $zero
/* B59D0 800DA5D0 8FA50028 */  lw         $a1, 0x28($sp)
/* B59D4 800DA5D4 0C038EDC */  jal        func_800E3B70
/* B59D8 800DA5D8 00003025 */   or        $a2, $zero, $zero
/* B59DC 800DA5DC 10000009 */  b          .L800DA604
/* B59E0 800DA5E0 00408025 */   or        $s0, $v0, $zero
.L800DA5E4:
/* B59E4 800DA5E4 0C038F30 */  jal        func_800E3CC0
/* B59E8 800DA5E8 00000000 */   nop
/* B59EC 800DA5EC 00408825 */  or         $s1, $v0, $zero
/* B59F0 800DA5F0 02202025 */  or         $a0, $s1, $zero
/* B59F4 800DA5F4 8FA50028 */  lw         $a1, 0x28($sp)
/* B59F8 800DA5F8 0C037100 */  jal        func_800DC400
/* B59FC 800DA5FC 00003025 */   or        $a2, $zero, $zero
/* B5A00 800DA600 00408025 */  or         $s0, $v0, $zero
.L800DA604:
/* B5A04 800DA604 02001025 */  or         $v0, $s0, $zero
.L800DA608:
/* B5A08 800DA608 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5A0C 800DA60C 8FB00014 */  lw         $s0, 0x14($sp)
/* B5A10 800DA610 8FB10018 */  lw         $s1, 0x18($sp)
/* B5A14 800DA614 03E00008 */  jr         $ra
/* B5A18 800DA618 27BD0028 */   addiu     $sp, $sp, 0x28
/* B5A1C 800DA61C 00000000 */  nop
