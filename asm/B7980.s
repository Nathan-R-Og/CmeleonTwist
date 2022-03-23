.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC580
/* B7980 800DC580 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7984 800DC584 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7988 800DC588 3C058025 */  lui        $a1, %hi(D_8024B1A0)
/* B798C 800DC58C 24A5B1A0 */  addiu      $a1, $a1, %lo(D_8024B1A0)
/* B7990 800DC590 0C039904 */  jal        func_800E6410
/* B7994 800DC594 24060040 */   addiu     $a2, $zero, 0x40
/* B7998 800DC598 3C048025 */  lui        $a0, %hi(D_8024B1B0)
/* B799C 800DC59C 8C84B1B0 */  lw         $a0, %lo(D_8024B1B0)($a0)
/* B79A0 800DC5A0 10800005 */  beqz       $a0, .L800DC5B8
/* B79A4 800DC5A4 00000000 */   nop
/* B79A8 800DC5A8 0C037228 */  jal        func_800DC8A0
/* B79AC 800DC5AC 00000000 */   nop
/* B79B0 800DC5B0 3C018025 */  lui        $at, %hi(D_8024B1B0)
/* B79B4 800DC5B4 AC22B1B0 */  sw         $v0, %lo(D_8024B1B0)($at)
.L800DC5B8:
/* B79B8 800DC5B8 3C048025 */  lui        $a0, %hi(D_8024B1B8)
/* B79BC 800DC5BC 8C84B1B8 */  lw         $a0, %lo(D_8024B1B8)($a0)
/* B79C0 800DC5C0 10800005 */  beqz       $a0, .L800DC5D8
/* B79C4 800DC5C4 00000000 */   nop
/* B79C8 800DC5C8 0C037228 */  jal        func_800DC8A0
/* B79CC 800DC5CC 00000000 */   nop
/* B79D0 800DC5D0 3C018025 */  lui        $at, %hi(D_8024B1B8)
/* B79D4 800DC5D4 AC22B1B8 */  sw         $v0, %lo(D_8024B1B8)($at)
.L800DC5D8:
/* B79D8 800DC5D8 3C048025 */  lui        $a0, %hi(D_8024B1C0)
/* B79DC 800DC5DC 8C84B1C0 */  lw         $a0, %lo(D_8024B1C0)($a0)
/* B79E0 800DC5E0 10800005 */  beqz       $a0, .L800DC5F8
/* B79E4 800DC5E4 00000000 */   nop
/* B79E8 800DC5E8 0C037228 */  jal        func_800DC8A0
/* B79EC 800DC5EC 00000000 */   nop
/* B79F0 800DC5F0 3C018025 */  lui        $at, %hi(D_8024B1C0)
/* B79F4 800DC5F4 AC22B1C0 */  sw         $v0, %lo(D_8024B1C0)($at)
.L800DC5F8:
/* B79F8 800DC5F8 3C048025 */  lui        $a0, %hi(D_8024B1C8)
/* B79FC 800DC5FC 8C84B1C8 */  lw         $a0, %lo(D_8024B1C8)($a0)
/* B7A00 800DC600 10800005 */  beqz       $a0, .L800DC618
/* B7A04 800DC604 00000000 */   nop
/* B7A08 800DC608 0C037228 */  jal        func_800DC8A0
/* B7A0C 800DC60C 00000000 */   nop
/* B7A10 800DC610 3C018025 */  lui        $at, %hi(D_8024B1C8)
/* B7A14 800DC614 AC22B1C8 */  sw         $v0, %lo(D_8024B1C8)($at)
.L800DC618:
/* B7A18 800DC618 3C048025 */  lui        $a0, %hi(D_8024B1CC)
/* B7A1C 800DC61C 8C84B1CC */  lw         $a0, %lo(D_8024B1CC)($a0)
/* B7A20 800DC620 10800005 */  beqz       $a0, .L800DC638
/* B7A24 800DC624 00000000 */   nop
/* B7A28 800DC628 0C037228 */  jal        func_800DC8A0
/* B7A2C 800DC62C 00000000 */   nop
/* B7A30 800DC630 3C018025 */  lui        $at, %hi(D_8024B1CC)
/* B7A34 800DC634 AC22B1CC */  sw         $v0, %lo(D_8024B1CC)($at)
.L800DC638:
/* B7A38 800DC638 3C048025 */  lui        $a0, %hi(D_8024B1D0)
/* B7A3C 800DC63C 8C84B1D0 */  lw         $a0, %lo(D_8024B1D0)($a0)
/* B7A40 800DC640 10800005 */  beqz       $a0, .L800DC658
/* B7A44 800DC644 00000000 */   nop
/* B7A48 800DC648 0C037228 */  jal        func_800DC8A0
/* B7A4C 800DC64C 00000000 */   nop
/* B7A50 800DC650 3C018025 */  lui        $at, %hi(D_8024B1D0)
/* B7A54 800DC654 AC22B1D0 */  sw         $v0, %lo(D_8024B1D0)($at)
.L800DC658:
/* B7A58 800DC658 3C048025 */  lui        $a0, %hi(D_8024B1D8)
/* B7A5C 800DC65C 8C84B1D8 */  lw         $a0, %lo(D_8024B1D8)($a0)
/* B7A60 800DC660 50800006 */  beql       $a0, $zero, .L800DC67C
/* B7A64 800DC664 8FBF0014 */   lw        $ra, 0x14($sp)
/* B7A68 800DC668 0C037228 */  jal        func_800DC8A0
/* B7A6C 800DC66C 00000000 */   nop
/* B7A70 800DC670 3C018025 */  lui        $at, %hi(D_8024B1D8)
/* B7A74 800DC674 AC22B1D8 */  sw         $v0, %lo(D_8024B1D8)($at)
/* B7A78 800DC678 8FBF0014 */  lw         $ra, 0x14($sp)
.L800DC67C:
/* B7A7C 800DC67C 3C028025 */  lui        $v0, %hi(D_8024B1A0)
/* B7A80 800DC680 2442B1A0 */  addiu      $v0, $v0, %lo(D_8024B1A0)
/* B7A84 800DC684 03E00008 */  jr         $ra
/* B7A88 800DC688 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800DC68C
/* B7A8C 800DC68C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B7A90 800DC690 AFBF0024 */  sw         $ra, 0x24($sp)
/* B7A94 800DC694 AFB00014 */  sw         $s0, 0x14($sp)
/* B7A98 800DC698 00808025 */  or         $s0, $a0, $zero
/* B7A9C 800DC69C AFB30020 */  sw         $s3, 0x20($sp)
/* B7AA0 800DC6A0 AFB2001C */  sw         $s2, 0x1c($sp)
/* B7AA4 800DC6A4 0C037160 */  jal        func_800DC580
/* B7AA8 800DC6A8 AFB10018 */   sw        $s1, 0x18($sp)
/* B7AAC 800DC6AC 8C4E0004 */  lw         $t6, 4($v0)
/* B7AB0 800DC6B0 00409025 */  or         $s2, $v0, $zero
/* B7AB4 800DC6B4 02402025 */  or         $a0, $s2, $zero
/* B7AB8 800DC6B8 31CF0001 */  andi       $t7, $t6, 1
/* B7ABC 800DC6BC 11E00013 */  beqz       $t7, .L800DC70C
/* B7AC0 800DC6C0 00000000 */   nop
/* B7AC4 800DC6C4 8C580038 */  lw         $t8, 0x38($v0)
/* B7AC8 800DC6C8 8C59003C */  lw         $t9, 0x3c($v0)
/* B7ACC 800DC6CC 2401FFFE */  addiu      $at, $zero, -2
/* B7AD0 800DC6D0 AC580018 */  sw         $t8, 0x18($v0)
/* B7AD4 800DC6D4 AC59001C */  sw         $t9, 0x1c($v0)
/* B7AD8 800DC6D8 8E080004 */  lw         $t0, 4($s0)
/* B7ADC 800DC6DC 01014824 */  and        $t1, $t0, $at
/* B7AE0 800DC6E0 AE090004 */  sw         $t1, 4($s0)
/* B7AE4 800DC6E4 8C4A0004 */  lw         $t2, 4($v0)
/* B7AE8 800DC6E8 314B0004 */  andi       $t3, $t2, 4
/* B7AEC 800DC6EC 11600007 */  beqz       $t3, .L800DC70C
/* B7AF0 800DC6F0 00000000 */   nop
/* B7AF4 800DC6F4 8E0C0038 */  lw         $t4, 0x38($s0)
/* B7AF8 800DC6F8 3C01A000 */  lui        $at, 0xa000
/* B7AFC 800DC6FC 258D0BFC */  addiu      $t5, $t4, 0xbfc
/* B7B00 800DC700 01A17025 */  or         $t6, $t5, $at
/* B7B04 800DC704 8DCF0000 */  lw         $t7, ($t6)
/* B7B08 800DC708 AC4F0010 */  sw         $t7, 0x10($v0)
.L800DC70C:
/* B7B0C 800DC70C 0C036BF8 */  jal        func_800DAFE0
/* B7B10 800DC710 24050040 */   addiu     $a1, $zero, 0x40
/* B7B14 800DC714 0C0399C8 */  jal        func_800E6720
/* B7B18 800DC718 24042B00 */   addiu     $a0, $zero, 0x2b00
/* B7B1C 800DC71C 3C130400 */  lui        $s3, 0x400
/* B7B20 800DC720 36731000 */  ori        $s3, $s3, 0x1000
/* B7B24 800DC724 0C0399CC */  jal        func_800E6730
/* B7B28 800DC728 02602025 */   or        $a0, $s3, $zero
/* B7B2C 800DC72C 2411FFFF */  addiu      $s1, $zero, -1
/* B7B30 800DC730 54510006 */  bnel       $v0, $s1, .L800DC74C
/* B7B34 800DC734 3C100400 */   lui       $s0, 0x400
.L800DC738:
/* B7B38 800DC738 0C0399CC */  jal        func_800E6730
/* B7B3C 800DC73C 02602025 */   or        $a0, $s3, $zero
/* B7B40 800DC740 1051FFFD */  beq        $v0, $s1, .L800DC738
/* B7B44 800DC744 00000000 */   nop
/* B7B48 800DC748 3C100400 */  lui        $s0, 0x400
.L800DC74C:
/* B7B4C 800DC74C 36100FC0 */  ori        $s0, $s0, 0xfc0
/* B7B50 800DC750 02002825 */  or         $a1, $s0, $zero
/* B7B54 800DC754 24040001 */  addiu      $a0, $zero, 1
/* B7B58 800DC758 02403025 */  or         $a2, $s2, $zero
/* B7B5C 800DC75C 0C0399DC */  jal        func_800E6770
/* B7B60 800DC760 24070040 */   addiu     $a3, $zero, 0x40
/* B7B64 800DC764 14510007 */  bne        $v0, $s1, .L800DC784
/* B7B68 800DC768 24040001 */   addiu     $a0, $zero, 1
.L800DC76C:
/* B7B6C 800DC76C 02002825 */  or         $a1, $s0, $zero
/* B7B70 800DC770 02403025 */  or         $a2, $s2, $zero
/* B7B74 800DC774 0C0399DC */  jal        func_800E6770
/* B7B78 800DC778 24070040 */   addiu     $a3, $zero, 0x40
/* B7B7C 800DC77C 5051FFFB */  beql       $v0, $s1, .L800DC76C
/* B7B80 800DC780 24040001 */   addiu     $a0, $zero, 1
.L800DC784:
/* B7B84 800DC784 0C039A00 */  jal        func_800E6800
/* B7B88 800DC788 00000000 */   nop
/* B7B8C 800DC78C 50400006 */  beql       $v0, $zero, .L800DC7A8
/* B7B90 800DC790 24040001 */   addiu     $a0, $zero, 1
.L800DC794:
/* B7B94 800DC794 0C039A00 */  jal        func_800E6800
/* B7B98 800DC798 00000000 */   nop
/* B7B9C 800DC79C 1440FFFD */  bnez       $v0, .L800DC794
/* B7BA0 800DC7A0 00000000 */   nop
/* B7BA4 800DC7A4 24040001 */  addiu      $a0, $zero, 1
.L800DC7A8:
/* B7BA8 800DC7A8 02602825 */  or         $a1, $s3, $zero
/* B7BAC 800DC7AC 8E460008 */  lw         $a2, 8($s2)
/* B7BB0 800DC7B0 0C0399DC */  jal        func_800E6770
/* B7BB4 800DC7B4 8E47000C */   lw        $a3, 0xc($s2)
/* B7BB8 800DC7B8 14510007 */  bne        $v0, $s1, .L800DC7D8
/* B7BBC 800DC7BC 24040001 */   addiu     $a0, $zero, 1
.L800DC7C0:
/* B7BC0 800DC7C0 02602825 */  or         $a1, $s3, $zero
/* B7BC4 800DC7C4 8E460008 */  lw         $a2, 8($s2)
/* B7BC8 800DC7C8 0C0399DC */  jal        func_800E6770
/* B7BCC 800DC7CC 8E47000C */   lw        $a3, 0xc($s2)
/* B7BD0 800DC7D0 5051FFFB */  beql       $v0, $s1, .L800DC7C0
/* B7BD4 800DC7D4 24040001 */   addiu     $a0, $zero, 1
.L800DC7D8:
/* B7BD8 800DC7D8 8FBF0024 */  lw         $ra, 0x24($sp)
/* B7BDC 800DC7DC 8FB00014 */  lw         $s0, 0x14($sp)
/* B7BE0 800DC7E0 8FB10018 */  lw         $s1, 0x18($sp)
/* B7BE4 800DC7E4 8FB2001C */  lw         $s2, 0x1c($sp)
/* B7BE8 800DC7E8 8FB30020 */  lw         $s3, 0x20($sp)
/* B7BEC 800DC7EC 03E00008 */  jr         $ra
/* B7BF0 800DC7F0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800DC7F4
/* B7BF4 800DC7F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7BF8 800DC7F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7BFC 800DC7FC 0C039A00 */  jal        func_800E6800
/* B7C00 800DC800 AFA40018 */   sw        $a0, 0x18($sp)
/* B7C04 800DC804 10400005 */  beqz       $v0, .L800DC81C
/* B7C08 800DC808 00000000 */   nop
.L800DC80C:
/* B7C0C 800DC80C 0C039A00 */  jal        func_800E6800
/* B7C10 800DC810 00000000 */   nop
/* B7C14 800DC814 1440FFFD */  bnez       $v0, .L800DC80C
/* B7C18 800DC818 00000000 */   nop
.L800DC81C:
/* B7C1C 800DC81C 0C0399C8 */  jal        func_800E6720
/* B7C20 800DC820 24040125 */   addiu     $a0, $zero, 0x125
/* B7C24 800DC824 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7C28 800DC828 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7C2C 800DC82C 03E00008 */  jr         $ra
/* B7C30 800DC830 00000000 */   nop
/* B7C34 800DC834 00000000 */  nop
/* B7C38 800DC838 00000000 */  nop
/* B7C3C 800DC83C 00000000 */  nop
