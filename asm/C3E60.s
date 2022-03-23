.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8A60
/* C3E60 800E8A60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C3E64 800E8A64 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3E68 800E8A68 AFA50024 */  sw         $a1, 0x24($sp)
/* C3E6C 800E8A6C AFA60028 */  sw         $a2, 0x28($sp)
/* C3E70 800E8A70 AFA7002C */  sw         $a3, 0x2c($sp)
/* C3E74 800E8A74 8CAE0008 */  lw         $t6, 8($a1)
/* C3E78 800E8A78 51C0002F */  beql       $t6, $zero, .L800E8B38
/* C3E7C 800E8A7C 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3E80 800E8A80 AFA40020 */  sw         $a0, 0x20($sp)
/* C3E84 800E8A84 0C037AA8 */  jal        func_800DEAA0
/* C3E88 800E8A88 AFA50024 */   sw        $a1, 0x24($sp)
/* C3E8C 800E8A8C 8FA40020 */  lw         $a0, 0x20($sp)
/* C3E90 800E8A90 8FA70024 */  lw         $a3, 0x24($sp)
/* C3E94 800E8A94 10400027 */  beqz       $v0, .L800E8B34
/* C3E98 800E8A98 00403025 */   or        $a2, $v0, $zero
/* C3E9C 800E8A9C 93A3003B */  lbu        $v1, 0x3b($sp)
/* C3EA0 800E8AA0 04610004 */  bgez       $v1, .L800E8AB4
/* C3EA4 800E8AA4 00601025 */   or        $v0, $v1, $zero
/* C3EA8 800E8AA8 00021823 */  negu       $v1, $v0
/* C3EAC 800E8AAC 306F00FF */  andi       $t7, $v1, 0xff
/* C3EB0 800E8AB0 01E01825 */  or         $v1, $t7, $zero
.L800E8AB4:
/* C3EB4 800E8AB4 8CF90008 */  lw         $t9, 8($a3)
/* C3EB8 800E8AB8 8C98001C */  lw         $t8, 0x1c($a0)
/* C3EBC 800E8ABC 240A000D */  addiu      $t2, $zero, 0xd
/* C3EC0 800E8AC0 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C3EC4 800E8AC4 ACC00000 */  sw         $zero, ($a2)
/* C3EC8 800E8AC8 A4CA0008 */  sh         $t2, 8($a2)
/* C3ECC 800E8ACC 03084821 */  addu       $t1, $t8, $t0
/* C3ED0 800E8AD0 ACC90004 */  sw         $t1, 4($a2)
/* C3ED4 800E8AD4 84EB001A */  lh         $t3, 0x1a($a3)
/* C3ED8 800E8AD8 A4CB000A */  sh         $t3, 0xa($a2)
/* C3EDC 800E8ADC 93AC0037 */  lbu        $t4, 0x37($sp)
/* C3EE0 800E8AE0 A0CC0012 */  sb         $t4, 0x12($a2)
/* C3EE4 800E8AE4 87AD0032 */  lh         $t5, 0x32($sp)
/* C3EE8 800E8AE8 A0C30013 */  sb         $v1, 0x13($a2)
/* C3EEC 800E8AEC A4CD0010 */  sh         $t5, 0x10($a2)
/* C3EF0 800E8AF0 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* C3EF4 800E8AF4 E4C4000C */  swc1       $f4, 0xc($a2)
/* C3EF8 800E8AF8 AFA70024 */  sw         $a3, 0x24($sp)
/* C3EFC 800E8AFC AFA6001C */  sw         $a2, 0x1c($sp)
/* C3F00 800E8B00 0C037A66 */  jal        func_800DE998
/* C3F04 800E8B04 8FA5003C */   lw        $a1, 0x3c($sp)
/* C3F08 800E8B08 8FA6001C */  lw         $a2, 0x1c($sp)
/* C3F0C 800E8B0C 8FA70024 */  lw         $a3, 0x24($sp)
/* C3F10 800E8B10 24050003 */  addiu      $a1, $zero, 3
/* C3F14 800E8B14 ACC20014 */  sw         $v0, 0x14($a2)
/* C3F18 800E8B18 8FAE0028 */  lw         $t6, 0x28($sp)
/* C3F1C 800E8B1C ACCE0018 */  sw         $t6, 0x18($a2)
/* C3F20 800E8B20 8CEF0008 */  lw         $t7, 8($a3)
/* C3F24 800E8B24 8DE4000C */  lw         $a0, 0xc($t7)
/* C3F28 800E8B28 8C990008 */  lw         $t9, 8($a0)
/* C3F2C 800E8B2C 0320F809 */  jalr       $t9
/* C3F30 800E8B30 00000000 */   nop
.L800E8B34:
/* C3F34 800E8B34 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8B38:
/* C3F38 800E8B38 27BD0020 */  addiu      $sp, $sp, 0x20
/* C3F3C 800E8B3C 03E00008 */  jr         $ra
/* C3F40 800E8B40 00000000 */   nop
/* C3F44 800E8B44 00000000 */  nop
/* C3F48 800E8B48 00000000 */  nop
/* C3F4C 800E8B4C 00000000 */  nop
