.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DA620
/* B5A20 800DA620 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5A24 800DA624 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5A28 800DA628 AFA40028 */  sw         $a0, 0x28($sp)
/* B5A2C 800DA62C AFA5002C */  sw         $a1, 0x2c($sp)
/* B5A30 800DA630 AFA60030 */  sw         $a2, 0x30($sp)
/* B5A34 800DA634 AFB10018 */  sw         $s1, 0x18($sp)
/* B5A38 800DA638 0C038AF8 */  jal        func_800E2BE0
/* B5A3C 800DA63C AFB00014 */   sw        $s0, 0x14($sp)
/* B5A40 800DA640 8FAE0028 */  lw         $t6, 0x28($sp)
/* B5A44 800DA644 00408025 */  or         $s0, $v0, $zero
/* B5A48 800DA648 8DCF0008 */  lw         $t7, 8($t6)
/* B5A4C 800DA64C 15E00012 */  bnez       $t7, .L800DA698
/* B5A50 800DA650 00000000 */   nop
.L800DA654:
/* B5A54 800DA654 8FB80030 */  lw         $t8, 0x30($sp)
/* B5A58 800DA658 17000005 */  bnez       $t8, .L800DA670
/* B5A5C 800DA65C 00000000 */   nop
/* B5A60 800DA660 0C038B00 */  jal        func_800E2C00
/* B5A64 800DA664 02002025 */   or        $a0, $s0, $zero
/* B5A68 800DA668 10000036 */  b          .L800DA744
/* B5A6C 800DA66C 2402FFFF */   addiu     $v0, $zero, -1
.L800DA670:
/* B5A70 800DA670 3C088011 */  lui        $t0, %hi(D_80109E10)
/* B5A74 800DA674 8D089E10 */  lw         $t0, %lo(D_80109E10)($t0)
/* B5A78 800DA678 24190008 */  addiu      $t9, $zero, 8
/* B5A7C 800DA67C A5190010 */  sh         $t9, 0x10($t0)
/* B5A80 800DA680 0C0387D3 */  jal        func_800E1F4C
/* B5A84 800DA684 8FA40028 */   lw        $a0, 0x28($sp)
/* B5A88 800DA688 8FA90028 */  lw         $t1, 0x28($sp)
/* B5A8C 800DA68C 8D2A0008 */  lw         $t2, 8($t1)
/* B5A90 800DA690 1140FFF0 */  beqz       $t2, .L800DA654
/* B5A94 800DA694 00000000 */   nop
.L800DA698:
/* B5A98 800DA698 8FAB002C */  lw         $t3, 0x2c($sp)
/* B5A9C 800DA69C 11600008 */  beqz       $t3, .L800DA6C0
/* B5AA0 800DA6A0 00000000 */   nop
/* B5AA4 800DA6A4 8FAC0028 */  lw         $t4, 0x28($sp)
/* B5AA8 800DA6A8 8D8E000C */  lw         $t6, 0xc($t4)
/* B5AAC 800DA6AC 8D8D0014 */  lw         $t5, 0x14($t4)
/* B5AB0 800DA6B0 000E7880 */  sll        $t7, $t6, 2
/* B5AB4 800DA6B4 01AFC021 */  addu       $t8, $t5, $t7
/* B5AB8 800DA6B8 8F190000 */  lw         $t9, ($t8)
/* B5ABC 800DA6BC AD790000 */  sw         $t9, ($t3)
.L800DA6C0:
/* B5AC0 800DA6C0 8FA80028 */  lw         $t0, 0x28($sp)
/* B5AC4 800DA6C4 8D09000C */  lw         $t1, 0xc($t0)
/* B5AC8 800DA6C8 8D0C0010 */  lw         $t4, 0x10($t0)
/* B5ACC 800DA6CC 252A0001 */  addiu      $t2, $t1, 1
/* B5AD0 800DA6D0 014C001A */  div        $zero, $t2, $t4
/* B5AD4 800DA6D4 00007010 */  mfhi       $t6
/* B5AD8 800DA6D8 AD0E000C */  sw         $t6, 0xc($t0)
/* B5ADC 800DA6DC 8FAD0028 */  lw         $t5, 0x28($sp)
/* B5AE0 800DA6E0 15800002 */  bnez       $t4, .L800DA6EC
/* B5AE4 800DA6E4 00000000 */   nop
/* B5AE8 800DA6E8 0007000D */  break      7
.L800DA6EC:
/* B5AEC 800DA6EC 2401FFFF */   addiu     $at, $zero, -1
/* B5AF0 800DA6F0 15810004 */  bne        $t4, $at, .L800DA704
/* B5AF4 800DA6F4 3C018000 */   lui       $at, 0x8000
/* B5AF8 800DA6F8 15410002 */  bne        $t2, $at, .L800DA704
/* B5AFC 800DA6FC 00000000 */   nop
/* B5B00 800DA700 0006000D */  break      6
.L800DA704:
/* B5B04 800DA704 8DAF0008 */   lw        $t7, 8($t5)
/* B5B08 800DA708 25F8FFFF */  addiu      $t8, $t7, -1
/* B5B0C 800DA70C ADB80008 */  sw         $t8, 8($t5)
/* B5B10 800DA710 8FB90028 */  lw         $t9, 0x28($sp)
/* B5B14 800DA714 8F2B0004 */  lw         $t3, 4($t9)
/* B5B18 800DA718 8D690000 */  lw         $t1, ($t3)
/* B5B1C 800DA71C 11200006 */  beqz       $t1, .L800DA738
/* B5B20 800DA720 00000000 */   nop
/* B5B24 800DA724 0C038825 */  jal        func_800E2094
/* B5B28 800DA728 27240004 */   addiu     $a0, $t9, 4
/* B5B2C 800DA72C 00408825 */  or         $s1, $v0, $zero
/* B5B30 800DA730 0C0366C8 */  jal        func_800D9B20
/* B5B34 800DA734 02202025 */   or        $a0, $s1, $zero
.L800DA738:
/* B5B38 800DA738 0C038B00 */  jal        func_800E2C00
/* B5B3C 800DA73C 02002025 */   or        $a0, $s0, $zero
/* B5B40 800DA740 00001025 */  or         $v0, $zero, $zero
.L800DA744:
/* B5B44 800DA744 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5B48 800DA748 8FB00014 */  lw         $s0, 0x14($sp)
/* B5B4C 800DA74C 8FB10018 */  lw         $s1, 0x18($sp)
/* B5B50 800DA750 03E00008 */  jr         $ra
/* B5B54 800DA754 27BD0028 */   addiu     $sp, $sp, 0x28
/* B5B58 800DA758 00000000 */  nop
/* B5B5C 800DA75C 00000000 */  nop
