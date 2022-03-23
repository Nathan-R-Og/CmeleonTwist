.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8650
/* C3A50 800E8650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3A54 800E8654 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3A58 800E8658 8CA60008 */  lw         $a2, 8($a1)
/* C3A5C 800E865C 00804025 */  or         $t0, $a0, $zero
/* C3A60 800E8660 00A03825 */  or         $a3, $a1, $zero
/* C3A64 800E8664 50C00023 */  beql       $a2, $zero, .L800E86F4
/* C3A68 800E8668 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3A6C 800E866C 8CCE00D8 */  lw         $t6, 0xd8($a2)
/* C3A70 800E8670 51C0001A */  beql       $t6, $zero, .L800E86DC
/* C3A74 800E8674 01002025 */   or        $a0, $t0, $zero
/* C3A78 800E8678 AFA5001C */  sw         $a1, 0x1c($sp)
/* C3A7C 800E867C 0C037AA8 */  jal        func_800DEAA0
/* C3A80 800E8680 AFA40018 */   sw        $a0, 0x18($sp)
/* C3A84 800E8684 8FA7001C */  lw         $a3, 0x1c($sp)
/* C3A88 800E8688 8FA80018 */  lw         $t0, 0x18($sp)
/* C3A8C 800E868C 10400018 */  beqz       $v0, .L800E86F0
/* C3A90 800E8690 00403025 */   or        $a2, $v0, $zero
/* C3A94 800E8694 8CF80008 */  lw         $t8, 8($a3)
/* C3A98 800E8698 8D0F001C */  lw         $t7, 0x1c($t0)
/* C3A9C 800E869C 24050003 */  addiu      $a1, $zero, 3
/* C3AA0 800E86A0 8F1900D8 */  lw         $t9, 0xd8($t8)
/* C3AA4 800E86A4 A4400008 */  sh         $zero, 8($v0)
/* C3AA8 800E86A8 01F94821 */  addu       $t1, $t7, $t9
/* C3AAC 800E86AC AC490004 */  sw         $t1, 4($v0)
/* C3AB0 800E86B0 8CEA0008 */  lw         $t2, 8($a3)
/* C3AB4 800E86B4 AC4A000C */  sw         $t2, 0xc($v0)
/* C3AB8 800E86B8 8CEB0008 */  lw         $t3, 8($a3)
/* C3ABC 800E86BC 8D64000C */  lw         $a0, 0xc($t3)
/* C3AC0 800E86C0 AFA7001C */  sw         $a3, 0x1c($sp)
/* C3AC4 800E86C4 8C990008 */  lw         $t9, 8($a0)
/* C3AC8 800E86C8 0320F809 */  jalr       $t9
/* C3ACC 800E86CC 00000000 */   nop
/* C3AD0 800E86D0 10000006 */  b          .L800E86EC
/* C3AD4 800E86D4 8FA7001C */   lw        $a3, 0x1c($sp)
/* C3AD8 800E86D8 01002025 */  or         $a0, $t0, $zero
.L800E86DC:
/* C3ADC 800E86DC 00C02825 */  or         $a1, $a2, $zero
/* C3AE0 800E86E0 0C037A7C */  jal        func_800DE9F0
/* C3AE4 800E86E4 AFA7001C */   sw        $a3, 0x1c($sp)
/* C3AE8 800E86E8 8FA7001C */  lw         $a3, 0x1c($sp)
.L800E86EC:
/* C3AEC 800E86EC ACE00008 */  sw         $zero, 8($a3)
.L800E86F0:
/* C3AF0 800E86F0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E86F4:
/* C3AF4 800E86F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C3AF8 800E86F8 03E00008 */  jr         $ra
/* C3AFC 800E86FC 00000000 */   nop

glabel func_800E8700
/* C3B00 800E8700 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C3B04 800E8704 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3B08 800E8708 AFA50024 */  sw         $a1, 0x24($sp)
/* C3B0C 800E870C AFA60028 */  sw         $a2, 0x28($sp)
/* C3B10 800E8710 AFA7002C */  sw         $a3, 0x2c($sp)
/* C3B14 800E8714 8CAF0008 */  lw         $t7, 8($a1)
/* C3B18 800E8718 51E0001D */  beql       $t7, $zero, .L800E8790
/* C3B1C 800E871C 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3B20 800E8720 0C037AA8 */  jal        func_800DEAA0
/* C3B24 800E8724 AFA40020 */   sw        $a0, 0x20($sp)
/* C3B28 800E8728 10400018 */  beqz       $v0, .L800E878C
/* C3B2C 800E872C 8FA40020 */   lw        $a0, 0x20($sp)
/* C3B30 800E8730 8FB90024 */  lw         $t9, 0x24($sp)
/* C3B34 800E8734 8C98001C */  lw         $t8, 0x1c($a0)
/* C3B38 800E8738 240B000B */  addiu      $t3, $zero, 0xb
/* C3B3C 800E873C 8F280008 */  lw         $t0, 8($t9)
/* C3B40 800E8740 8D0900D8 */  lw         $t1, 0xd8($t0)
/* C3B44 800E8744 A44B0008 */  sh         $t3, 8($v0)
/* C3B48 800E8748 03095021 */  addu       $t2, $t8, $t1
/* C3B4C 800E874C AC4A0004 */  sw         $t2, 4($v0)
/* C3B50 800E8750 87AC002A */  lh         $t4, 0x2a($sp)
/* C3B54 800E8754 AC4C000C */  sw         $t4, 0xc($v0)
/* C3B58 800E8758 AFA2001C */  sw         $v0, 0x1c($sp)
/* C3B5C 800E875C 0C037A66 */  jal        func_800DE998
/* C3B60 800E8760 8FA5002C */   lw        $a1, 0x2c($sp)
/* C3B64 800E8764 8FA6001C */  lw         $a2, 0x1c($sp)
/* C3B68 800E8768 24050003 */  addiu      $a1, $zero, 3
/* C3B6C 800E876C ACC20010 */  sw         $v0, 0x10($a2)
/* C3B70 800E8770 ACC00000 */  sw         $zero, ($a2)
/* C3B74 800E8774 8FAD0024 */  lw         $t5, 0x24($sp)
/* C3B78 800E8778 8DAE0008 */  lw         $t6, 8($t5)
/* C3B7C 800E877C 8DC4000C */  lw         $a0, 0xc($t6)
/* C3B80 800E8780 8C990008 */  lw         $t9, 8($a0)
/* C3B84 800E8784 0320F809 */  jalr       $t9
/* C3B88 800E8788 00000000 */   nop
.L800E878C:
/* C3B8C 800E878C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8790:
/* C3B90 800E8790 27BD0020 */  addiu      $sp, $sp, 0x20
/* C3B94 800E8794 03E00008 */  jr         $ra
/* C3B98 800E8798 00000000 */   nop
/* C3B9C 800E879C 00000000 */  nop
