.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EB300
/* C6700 800EB300 24010001 */  addiu      $at, $zero, 1
/* C6704 800EB304 10A10006 */  beq        $a1, $at, .L800EB320
/* C6708 800EB308 00001025 */   or        $v0, $zero, $zero
/* C670C 800EB30C 24010006 */  addiu      $at, $zero, 6
/* C6710 800EB310 50A10006 */  beql       $a1, $at, .L800EB32C
/* C6714 800EB314 AC860014 */   sw        $a2, 0x14($a0)
/* C6718 800EB318 03E00008 */  jr         $ra
/* C671C 800EB31C 00001025 */   or        $v0, $zero, $zero
.L800EB320:
/* C6720 800EB320 03E00008 */  jr         $ra
/* C6724 800EB324 AC860000 */   sw        $a2, ($a0)
/* C6728 800EB328 AC860014 */  sw         $a2, 0x14($a0)
.L800EB32C:
/* C672C 800EB32C 03E00008 */  jr         $ra
/* C6730 800EB330 00001025 */   or        $v0, $zero, $zero

glabel func_800EB334
/* C6734 800EB334 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C6738 800EB338 AFBF001C */  sw         $ra, 0x1c($sp)
/* C673C 800EB33C AFA40020 */  sw         $a0, 0x20($sp)
/* C6740 800EB340 8C840000 */  lw         $a0, ($a0)
/* C6744 800EB344 8FAF0030 */  lw         $t7, 0x30($sp)
/* C6748 800EB348 AFA60028 */  sw         $a2, 0x28($sp)
/* C674C 800EB34C AFAF0010 */  sw         $t7, 0x10($sp)
/* C6750 800EB350 8C990004 */  lw         $t9, 4($a0)
/* C6754 800EB354 0320F809 */  jalr       $t9
/* C6758 800EB358 00000000 */   nop
/* C675C 800EB35C 8FA60028 */  lw         $a2, 0x28($sp)
/* C6760 800EB360 3C030800 */  lui        $v1, 0x800
/* C6764 800EB364 3C0A0440 */  lui        $t2, 0x440
/* C6768 800EB368 0006C040 */  sll        $t8, $a2, 1
/* C676C 800EB36C 00065880 */  sll        $t3, $a2, 2
/* C6770 800EB370 3308FFFF */  andi       $t0, $t8, 0xffff
/* C6774 800EB374 354A0580 */  ori        $t2, $t2, 0x580
/* C6778 800EB378 3C090D00 */  lui        $t1, 0xd00
/* C677C 800EB37C 316CFFFF */  andi       $t4, $t3, 0xffff
/* C6780 800EB380 3C0D0600 */  lui        $t5, 0x600
/* C6784 800EB384 AC480004 */  sw         $t0, 4($v0)
/* C6788 800EB388 AC430000 */  sw         $v1, ($v0)
/* C678C 800EB38C AC490008 */  sw         $t1, 8($v0)
/* C6790 800EB390 AC4A000C */  sw         $t2, 0xc($v0)
/* C6794 800EB394 AC4C0014 */  sw         $t4, 0x14($v0)
/* C6798 800EB398 AC430010 */  sw         $v1, 0x10($v0)
/* C679C 800EB39C AC4D0018 */  sw         $t5, 0x18($v0)
/* C67A0 800EB3A0 8FAE0020 */  lw         $t6, 0x20($sp)
/* C67A4 800EB3A4 24420020 */  addiu      $v0, $v0, 0x20
/* C67A8 800EB3A8 8DCF0014 */  lw         $t7, 0x14($t6)
/* C67AC 800EB3AC AC4FFFFC */  sw         $t7, -4($v0)
/* C67B0 800EB3B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* C67B4 800EB3B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* C67B8 800EB3B8 03E00008 */  jr         $ra
/* C67BC 800EB3BC 00000000 */   nop

glabel func_800EB3C0
/* C67C0 800EB3C0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* C67C4 800EB3C4 03E00008 */  jr         $ra
/* C67C8 800EB3C8 8DC20010 */   lw        $v0, %lo(D_A4040010)($t6)
/* C67CC 800EB3CC 00000000 */  nop
