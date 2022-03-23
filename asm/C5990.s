.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EA590
/* C5990 800EA590 10C00007 */  beqz       $a2, .L800EA5B0
/* C5994 800EA594 240E0001 */   addiu     $t6, $zero, 1
/* C5998 800EA598 00CE7804 */  sllv       $t7, $t6, $a2
/* C599C 800EA59C 448F2000 */  mtc1       $t7, $f4
/* C59A0 800EA5A0 00000000 */  nop
/* C59A4 800EA5A4 468021A1 */  cvt.d.w    $f6, $f4
/* C59A8 800EA5A8 46266302 */  mul.d      $f12, $f12, $f6
/* C59AC 800EA5AC 00000000 */  nop
.L800EA5B0:
/* C59B0 800EA5B0 03E00008 */  jr         $ra
/* C59B4 800EA5B4 46206006 */   mov.d     $f0, $f12

glabel func_800EA5B8
/* C59B8 800EA5B8 44801800 */  mtc1       $zero, $f3
/* C59BC 800EA5BC 44801000 */  mtc1       $zero, $f2
/* C59C0 800EA5C0 ACC00000 */  sw         $zero, ($a2)
/* C59C4 800EA5C4 3C013FF0 */  lui        $at, 0x3ff0
/* C59C8 800EA5C8 46226032 */  c.eq.d     $f12, $f2
/* C59CC 800EA5CC 00000000 */  nop
/* C59D0 800EA5D0 45020004 */  bc1fl      .L800EA5E4
/* C59D4 800EA5D4 462C103C */   c.lt.d    $f2, $f12
/* C59D8 800EA5D8 03E00008 */  jr         $ra
/* C59DC 800EA5DC 46206006 */   mov.d     $f0, $f12
/* C59E0 800EA5E0 462C103C */  c.lt.d     $f2, $f12
.L800EA5E4:
/* C59E4 800EA5E4 44817800 */  mtc1       $at, $f15
/* C59E8 800EA5E8 44807000 */  mtc1       $zero, $f14
/* C59EC 800EA5EC 3C013FE0 */  lui        $at, 0x3fe0
/* C59F0 800EA5F0 45020004 */  bc1fl      .L800EA604
/* C59F4 800EA5F4 46206007 */   neg.d     $f0, $f12
/* C59F8 800EA5F8 10000002 */  b          .L800EA604
/* C59FC 800EA5FC 46206006 */   mov.d     $f0, $f12
/* C5A00 800EA600 46206007 */  neg.d      $f0, $f12
.L800EA604:
/* C5A04 800EA604 4620703E */  c.le.d     $f14, $f0
/* C5A08 800EA608 00000000 */  nop
/* C5A0C 800EA60C 4502000D */  bc1fl      .L800EA644
/* C5A10 800EA610 3C013FE0 */   lui       $at, 0x3fe0
/* C5A14 800EA614 44818800 */  mtc1       $at, $f17
/* C5A18 800EA618 44808000 */  mtc1       $zero, $f16
/* C5A1C 800EA61C 00000000 */  nop
.L800EA620:
/* C5A20 800EA620 46300002 */  mul.d      $f0, $f0, $f16
/* C5A24 800EA624 8CCE0000 */  lw         $t6, ($a2)
/* C5A28 800EA628 25CF0001 */  addiu      $t7, $t6, 1
/* C5A2C 800EA62C ACCF0000 */  sw         $t7, ($a2)
/* C5A30 800EA630 4620703E */  c.le.d     $f14, $f0
/* C5A34 800EA634 00000000 */  nop
/* C5A38 800EA638 4501FFF9 */  bc1t       .L800EA620
/* C5A3C 800EA63C 00000000 */   nop
/* C5A40 800EA640 3C013FE0 */  lui        $at, 0x3fe0
.L800EA644:
/* C5A44 800EA644 44818800 */  mtc1       $at, $f17
/* C5A48 800EA648 44808000 */  mtc1       $zero, $f16
/* C5A4C 800EA64C 00000000 */  nop
/* C5A50 800EA650 4630003C */  c.lt.d     $f0, $f16
/* C5A54 800EA654 00000000 */  nop
/* C5A58 800EA658 45020009 */  bc1fl      .L800EA680
/* C5A5C 800EA65C 462C103C */   c.lt.d    $f2, $f12
/* C5A60 800EA660 46200000 */  add.d      $f0, $f0, $f0
.L800EA664:
/* C5A64 800EA664 8CD80000 */  lw         $t8, ($a2)
/* C5A68 800EA668 4630003C */  c.lt.d     $f0, $f16
/* C5A6C 800EA66C 2719FFFF */  addiu      $t9, $t8, -1
/* C5A70 800EA670 ACD90000 */  sw         $t9, ($a2)
/* C5A74 800EA674 4503FFFB */  bc1tl      .L800EA664
/* C5A78 800EA678 46200000 */   add.d     $f0, $f0, $f0
/* C5A7C 800EA67C 462C103C */  c.lt.d     $f2, $f12
.L800EA680:
/* C5A80 800EA680 00000000 */  nop
/* C5A84 800EA684 45020004 */  bc1fl      .L800EA698
/* C5A88 800EA688 46200087 */   neg.d     $f2, $f0
/* C5A8C 800EA68C 10000002 */  b          .L800EA698
/* C5A90 800EA690 46200086 */   mov.d     $f2, $f0
/* C5A94 800EA694 46200087 */  neg.d      $f2, $f0
.L800EA698:
/* C5A98 800EA698 46201006 */  mov.d      $f0, $f2
/* C5A9C 800EA69C 03E00008 */  jr         $ra
/* C5AA0 800EA6A0 00000000 */   nop

glabel func_800EA6A4
/* C5AA4 800EA6A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C5AA8 800EA6A8 24020001 */  addiu      $v0, $zero, 1
/* C5AAC 800EA6AC AFBF0014 */  sw         $ra, 0x14($sp)
/* C5AB0 800EA6B0 10A20027 */  beq        $a1, $v0, .L800EA750
/* C5AB4 800EA6B4 00803825 */   or        $a3, $a0, $zero
/* C5AB8 800EA6B8 24010003 */  addiu      $at, $zero, 3
/* C5ABC 800EA6BC 10A10007 */  beq        $a1, $at, .L800EA6DC
/* C5AC0 800EA6C0 24010004 */   addiu     $at, $zero, 4
/* C5AC4 800EA6C4 10A1000D */  beq        $a1, $at, .L800EA6FC
/* C5AC8 800EA6C8 24010009 */   addiu     $at, $zero, 9
/* C5ACC 800EA6CC 50A10017 */  beql       $a1, $at, .L800EA72C
/* C5AD0 800EA6D0 8CE40000 */   lw        $a0, ($a3)
/* C5AD4 800EA6D4 10000021 */  b          .L800EA75C
/* C5AD8 800EA6D8 8CE40000 */   lw        $a0, ($a3)
.L800EA6DC:
/* C5ADC 800EA6DC 8CE20040 */  lw         $v0, 0x40($a3)
/* C5AE0 800EA6E0 50400004 */  beql       $v0, $zero, .L800EA6F4
/* C5AE4 800EA6E4 ACE6003C */   sw        $a2, 0x3c($a3)
/* C5AE8 800EA6E8 10000002 */  b          .L800EA6F4
/* C5AEC 800EA6EC AC460000 */   sw        $a2, ($v0)
/* C5AF0 800EA6F0 ACE6003C */  sw         $a2, 0x3c($a3)
.L800EA6F4:
/* C5AF4 800EA6F4 1000001E */  b          .L800EA770
/* C5AF8 800EA6F8 ACE60040 */   sw        $a2, 0x40($a3)
.L800EA6FC:
/* C5AFC 800EA6FC 8CE40000 */  lw         $a0, ($a3)
/* C5B00 800EA700 ACE20038 */  sw         $v0, 0x38($a3)
/* C5B04 800EA704 ACE00048 */  sw         $zero, 0x48($a3)
/* C5B08 800EA708 10800019 */  beqz       $a0, .L800EA770
/* C5B0C 800EA70C A4E2001A */   sh        $v0, 0x1a($a3)
/* C5B10 800EA710 8C990008 */  lw         $t9, 8($a0)
/* C5B14 800EA714 24050004 */  addiu      $a1, $zero, 4
/* C5B18 800EA718 0320F809 */  jalr       $t9
/* C5B1C 800EA71C 00000000 */   nop
/* C5B20 800EA720 10000014 */  b          .L800EA774
/* C5B24 800EA724 8FBF0014 */   lw        $ra, 0x14($sp)
/* C5B28 800EA728 8CE40000 */  lw         $a0, ($a3)
.L800EA72C:
/* C5B2C 800EA72C ACE20048 */  sw         $v0, 0x48($a3)
/* C5B30 800EA730 50800010 */  beql       $a0, $zero, .L800EA774
/* C5B34 800EA734 8FBF0014 */   lw        $ra, 0x14($sp)
/* C5B38 800EA738 8C990008 */  lw         $t9, 8($a0)
/* C5B3C 800EA73C 24050009 */  addiu      $a1, $zero, 9
/* C5B40 800EA740 0320F809 */  jalr       $t9
/* C5B44 800EA744 00000000 */   nop
/* C5B48 800EA748 1000000A */  b          .L800EA774
/* C5B4C 800EA74C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800EA750:
/* C5B50 800EA750 10000007 */  b          .L800EA770
/* C5B54 800EA754 ACE60000 */   sw        $a2, ($a3)
/* C5B58 800EA758 8CE40000 */  lw         $a0, ($a3)
.L800EA75C:
/* C5B5C 800EA75C 50800005 */  beql       $a0, $zero, .L800EA774
/* C5B60 800EA760 8FBF0014 */   lw        $ra, 0x14($sp)
/* C5B64 800EA764 8C990008 */  lw         $t9, 8($a0)
/* C5B68 800EA768 0320F809 */  jalr       $t9
/* C5B6C 800EA76C 00000000 */   nop
.L800EA770:
/* C5B70 800EA770 8FBF0014 */  lw         $ra, 0x14($sp)
.L800EA774:
/* C5B74 800EA774 27BD0018 */  addiu      $sp, $sp, 0x18
/* C5B78 800EA778 00001025 */  or         $v0, $zero, $zero
/* C5B7C 800EA77C 03E00008 */  jr         $ra
/* C5B80 800EA780 00000000 */   nop

glabel func_800EA784
/* C5B84 800EA784 27BDFF18 */  addiu      $sp, $sp, -0xe8
/* C5B88 800EA788 1480000B */  bnez       $a0, .L800EA7B8
/* C5B8C 800EA78C AFBF0014 */   sw        $ra, 0x14($sp)
/* C5B90 800EA790 462E803E */  c.le.d     $f16, $f14
/* C5B94 800EA794 340EFFFF */  ori        $t6, $zero, 0xffff
/* C5B98 800EA798 00001025 */  or         $v0, $zero, $zero
/* C5B9C 800EA79C 45000004 */  bc1f       .L800EA7B0
/* C5BA0 800EA7A0 00000000 */   nop
/* C5BA4 800EA7A4 A62E0000 */  sh         $t6, ($s1)
/* C5BA8 800EA7A8 10000066 */  b          .L800EA944
/* C5BAC 800EA7AC 24027FFF */   addiu     $v0, $zero, 0x7fff
.L800EA7B0:
/* C5BB0 800EA7B0 10000064 */  b          .L800EA944
/* C5BB4 800EA7B4 A6200000 */   sh        $zero, ($s1)
.L800EA7B8:
/* C5BB8 800EA7B8 3C013FF0 */  lui        $at, 0x3ff0
/* C5BBC 800EA7BC 4481B800 */  mtc1       $at, $f23
/* C5BC0 800EA7C0 4480B000 */  mtc1       $zero, $f22
/* C5BC4 800EA7C4 44802800 */  mtc1       $zero, $f5
/* C5BC8 800EA7C8 44802000 */  mtc1       $zero, $f4
/* C5BCC 800EA7CC 4636703C */  c.lt.d     $f14, $f22
/* C5BD0 800EA7D0 27B20068 */  addiu      $s2, $sp, 0x68
/* C5BD4 800EA7D4 3C0F8011 */  lui        $t7, %hi(D_8010A190)
/* C5BD8 800EA7D8 25EFA190 */  addiu      $t7, $t7, %lo(D_8010A190)
/* C5BDC 800EA7DC 45000002 */  bc1f       .L800EA7E8
/* C5BE0 800EA7E0 02407025 */   or        $t6, $s2, $zero
/* C5BE4 800EA7E4 4620B386 */  mov.d      $f14, $f22
.L800EA7E8:
/* C5BE8 800EA7E8 4624803E */  c.le.d     $f16, $f4
/* C5BEC 800EA7EC 3C013FF0 */  lui        $at, 0x3ff0
/* C5BF0 800EA7F0 25F9003C */  addiu      $t9, $t7, 0x3c
/* C5BF4 800EA7F4 45000004 */  bc1f       .L800EA808
/* C5BF8 800EA7F8 00000000 */   nop
/* C5BFC 800EA7FC 44818800 */  mtc1       $at, $f17
/* C5C00 800EA800 44808000 */  mtc1       $zero, $f16
/* C5C04 800EA804 00000000 */  nop
.L800EA808:
/* C5C08 800EA808 8DE10000 */  lw         $at, ($t7)
/* C5C0C 800EA80C 25EF000C */  addiu      $t7, $t7, 0xc
/* C5C10 800EA810 25CE000C */  addiu      $t6, $t6, 0xc
/* C5C14 800EA814 ADC1FFF4 */  sw         $at, -0xc($t6)
/* C5C18 800EA818 8DE1FFF8 */  lw         $at, -8($t7)
/* C5C1C 800EA81C ADC1FFF8 */  sw         $at, -8($t6)
/* C5C20 800EA820 8DE1FFFC */  lw         $at, -4($t7)
/* C5C24 800EA824 15F9FFF8 */  bne        $t7, $t9, .L800EA808
/* C5C28 800EA828 ADC1FFFC */   sw        $at, -4($t6)
/* C5C2C 800EA82C 44844000 */  mtc1       $a0, $f8
/* C5C30 800EA830 3C184000 */  lui        $t8, 0x4000
/* C5C34 800EA834 44983000 */  mtc1       $t8, $f6
/* C5C38 800EA838 468042A1 */  cvt.d.w    $f10, $f8
/* C5C3C 800EA83C 8DE10000 */  lw         $at, ($t7)
/* C5C40 800EA840 27A600B0 */  addiu      $a2, $sp, 0xb0
/* C5C44 800EA844 46803521 */  cvt.d.w    $f20, $f6
/* C5C48 800EA848 ADC10000 */  sw         $at, ($t6)
/* C5C4C 800EA84C 462AB103 */  div.d      $f4, $f22, $f10
/* C5C50 800EA850 46307303 */  div.d      $f12, $f14, $f16
/* C5C54 800EA854 46342082 */  mul.d      $f2, $f4, $f20
/* C5C58 800EA858 4620118D */  trunc.w.d  $f6, $f2
/* C5C5C 800EA85C 44103000 */  mfc1       $s0, $f6
/* C5C60 800EA860 0C03A96E */  jal        func_800EA5B8
/* C5C64 800EA864 00000000 */   nop
/* C5C68 800EA868 240F0010 */  addiu      $t7, $zero, 0x10
/* C5C6C 800EA86C 448F4000 */  mtc1       $t7, $f8
/* C5C70 800EA870 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* C5C74 800EA874 3C018011 */  lui        $at, %hi(D_801110D0)
/* C5C78 800EA878 468042A1 */  cvt.d.w    $f10, $f8
/* C5C7C 800EA87C 448E4000 */  mtc1       $t6, $f8
/* C5C80 800EA880 462A0082 */  mul.d      $f2, $f0, $f10
/* C5C84 800EA884 468042A1 */  cvt.d.w    $f10, $f8
/* C5C88 800EA888 D42810D0 */  ldc1       $f8, %lo(D_801110D0)($at)
/* C5C8C 800EA88C 3C013FF0 */  lui        $at, 0x3ff0
/* C5C90 800EA890 4620110D */  trunc.w.d  $f4, $f2
/* C5C94 800EA894 4620B086 */  mov.d      $f2, $f22
/* C5C98 800EA898 44182000 */  mfc1       $t8, $f4
/* C5C9C 800EA89C 00000000 */  nop
/* C5CA0 800EA8A0 0018C8C0 */  sll        $t9, $t8, 3
/* C5CA4 800EA8A4 02597821 */  addu       $t7, $s2, $t9
/* C5CA8 800EA8A8 D5E6FFC0 */  ldc1       $f6, -0x40($t7)
/* C5CAC 800EA8AC 462A3100 */  add.d      $f4, $f6, $f10
/* C5CB0 800EA8B0 44803000 */  mtc1       $zero, $f6
/* C5CB4 800EA8B4 44813800 */  mtc1       $at, $f7
/* C5CB8 800EA8B8 46282302 */  mul.d      $f12, $f4, $f8
/* C5CBC 800EA8BC 00000000 */  nop
/* C5CC0 800EA8C0 46343382 */  mul.d      $f14, $f6, $f20
/* C5CC4 800EA8C4 462E6303 */  div.d      $f12, $f12, $f14
/* C5CC8 800EA8C8 12000009 */  beqz       $s0, .L800EA8F0
/* C5CCC 800EA8CC 462CB000 */   add.d     $f0, $f22, $f12
.L800EA8D0:
/* C5CD0 800EA8D0 32180001 */  andi       $t8, $s0, 1
/* C5CD4 800EA8D4 13000003 */  beqz       $t8, .L800EA8E4
/* C5CD8 800EA8D8 0010C843 */   sra       $t9, $s0, 1
/* C5CDC 800EA8DC 46201082 */  mul.d      $f2, $f2, $f0
/* C5CE0 800EA8E0 00000000 */  nop
.L800EA8E4:
/* C5CE4 800EA8E4 46200002 */  mul.d      $f0, $f0, $f0
/* C5CE8 800EA8E8 1720FFF9 */  bnez       $t9, .L800EA8D0
/* C5CEC 800EA8EC 03208025 */   or        $s0, $t9, $zero
.L800EA8F0:
/* C5CF0 800EA8F0 46221002 */  mul.d      $f0, $f2, $f2
/* C5CF4 800EA8F4 3C018011 */  lui        $at, 0x8011
/* C5CF8 800EA8F8 46200302 */  mul.d      $f12, $f0, $f0
/* C5CFC 800EA8FC 00000000 */  nop
/* C5D00 800EA900 462C6082 */  mul.d      $f2, $f12, $f12
/* C5D04 800EA904 4620128D */  trunc.w.d  $f10, $f2
/* C5D08 800EA908 44035000 */  mfc1       $v1, $f10
/* C5D0C 800EA90C 00000000 */  nop
/* C5D10 800EA910 00037400 */  sll        $t6, $v1, 0x10
/* C5D14 800EA914 000E1403 */  sra        $v0, $t6, 0x10
/* C5D18 800EA918 44822000 */  mtc1       $v0, $f4
/* C5D1C 800EA91C 00000000 */  nop
/* C5D20 800EA920 46802220 */  cvt.s.w    $f8, $f4
/* C5D24 800EA924 D42410D8 */  ldc1       $f4, 0x10d8($at)
/* C5D28 800EA928 460041A1 */  cvt.d.s    $f6, $f8
/* C5D2C 800EA92C 46261281 */  sub.d      $f10, $f2, $f6
/* C5D30 800EA930 46245202 */  mul.d      $f8, $f10, $f4
/* C5D34 800EA934 4620418D */  trunc.w.d  $f6, $f8
/* C5D38 800EA938 440F3000 */  mfc1       $t7, $f6
/* C5D3C 800EA93C 00000000 */  nop
/* C5D40 800EA940 A62F0000 */  sh         $t7, ($s1)
.L800EA944:
/* C5D44 800EA944 8FBF0014 */  lw         $ra, 0x14($sp)
/* C5D48 800EA948 27BD00E8 */  addiu      $sp, $sp, 0xe8
/* C5D4C 800EA94C 03E00008 */  jr         $ra
/* C5D50 800EA950 00000000 */   nop

glabel func_800EA954
/* C5D54 800EA954 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C5D58 800EA958 AFBF001C */  sw         $ra, 0x1c($sp)
/* C5D5C 800EA95C 8E6E0048 */  lw         $t6, 0x48($s3)
/* C5D60 800EA960 24010001 */  addiu      $at, $zero, 1
/* C5D64 800EA964 8E640000 */  lw         $a0, ($s3)
/* C5D68 800EA968 15C10003 */  bne        $t6, $at, .L800EA978
/* C5D6C 800EA96C 00000000 */   nop
/* C5D70 800EA970 56A00004 */  bnel       $s5, $zero, .L800EA984
/* C5D74 800EA974 AFA80010 */   sw        $t0, 0x10($sp)
.L800EA978:
/* C5D78 800EA978 10000098 */  b          .L800EABDC
/* C5D7C 800EA97C 01001025 */   or        $v0, $t0, $zero
/* C5D80 800EA980 AFA80010 */  sw         $t0, 0x10($sp)
.L800EA984:
/* C5D84 800EA984 8C990004 */  lw         $t9, 4($a0)
/* C5D88 800EA988 02C02825 */  or         $a1, $s6, $zero
/* C5D8C 800EA98C 02A03025 */  or         $a2, $s5, $zero
/* C5D90 800EA990 0320F809 */  jalr       $t9
/* C5D94 800EA994 00000000 */   nop
/* C5D98 800EA998 86CF0000 */  lh         $t7, ($s6)
/* C5D9C 800EA99C 3C010800 */  lui        $at, 0x800
/* C5DA0 800EA9A0 0015B840 */  sll        $s7, $s5, 1
/* C5DA4 800EA9A4 31F8FFFF */  andi       $t8, $t7, 0xffff
/* C5DA8 800EA9A8 03017025 */  or         $t6, $t8, $at
/* C5DAC 800EA9AC AC4E0000 */  sw         $t6, ($v0)
/* C5DB0 800EA9B0 86190000 */  lh         $t9, ($s0)
/* C5DB4 800EA9B4 3C010808 */  lui        $at, 0x808
/* C5DB8 800EA9B8 24540010 */  addiu      $s4, $v0, 0x10
/* C5DBC 800EA9BC 27380440 */  addiu      $t8, $t9, 0x440
/* C5DC0 800EA9C0 00187400 */  sll        $t6, $t8, 0x10
/* C5DC4 800EA9C4 32F9FFFF */  andi       $t9, $s7, 0xffff
/* C5DC8 800EA9C8 01D97825 */  or         $t7, $t6, $t9
/* C5DCC 800EA9CC AC4F0004 */  sw         $t7, 4($v0)
/* C5DD0 800EA9D0 86180000 */  lh         $t8, ($s0)
/* C5DD4 800EA9D4 270E0580 */  addiu      $t6, $t8, 0x580
/* C5DD8 800EA9D8 31D9FFFF */  andi       $t9, $t6, 0xffff
/* C5DDC 800EA9DC 03217825 */  or         $t7, $t9, $at
/* C5DE0 800EA9E0 AC4F0008 */  sw         $t7, 8($v0)
/* C5DE4 800EA9E4 86030000 */  lh         $v1, ($s0)
/* C5DE8 800EA9E8 02808025 */  or         $s0, $s4, $zero
/* C5DEC 800EA9EC 24780800 */  addiu      $t8, $v1, 0x800
/* C5DF0 800EA9F0 330EFFFF */  andi       $t6, $t8, 0xffff
/* C5DF4 800EA9F4 246F06C0 */  addiu      $t7, $v1, 0x6c0
/* C5DF8 800EA9F8 000FC400 */  sll        $t8, $t7, 0x10
/* C5DFC 800EA9FC 01D8C825 */  or         $t9, $t6, $t8
/* C5E00 800EAA00 AC59000C */  sw         $t9, 0xc($v0)
/* C5E04 800EAA04 8E6F0038 */  lw         $t7, 0x38($s3)
/* C5E08 800EAA08 3C198011 */  lui        $t9, 0x8011
/* C5E0C 800EAA0C 51E00067 */  beql       $t7, $zero, .L800EABAC
/* C5E10 800EAA10 3C0F0308 */   lui       $t7, 0x308
/* C5E14 800EAA14 866E0018 */  lh         $t6, 0x18($s3)
/* C5E18 800EAA18 AE600038 */  sw         $zero, 0x38($s3)
/* C5E1C 800EAA1C 866F001A */  lh         $t7, 0x1a($s3)
/* C5E20 800EAA20 000EC040 */  sll        $t8, $t6, 1
/* C5E24 800EAA24 0338C821 */  addu       $t9, $t9, $t8
/* C5E28 800EAA28 8739A090 */  lh         $t9, -0x5f70($t9)
/* C5E2C 800EAA2C 8E640034 */  lw         $a0, 0x34($s3)
/* C5E30 800EAA30 26710024 */  addiu      $s1, $s3, 0x24
/* C5E34 800EAA34 032F0019 */  multu      $t9, $t7
/* C5E38 800EAA38 8679001C */  lh         $t9, 0x1c($s3)
/* C5E3C 800EAA3C 44992000 */  mtc1       $t9, $f4
/* C5E40 800EAA40 00000000 */  nop
/* C5E44 800EAA44 46802421 */  cvt.d.w    $f16, $f4
/* C5E48 800EAA48 00007012 */  mflo       $t6
/* C5E4C 800EAA4C 000EC3C3 */  sra        $t8, $t6, 0xf
/* C5E50 800EAA50 A6780028 */  sh         $t8, 0x28($s3)
/* C5E54 800EAA54 866F0028 */  lh         $t7, 0x28($s3)
/* C5E58 800EAA58 448F3000 */  mtc1       $t7, $f6
/* C5E5C 800EAA5C 0C03A9E1 */  jal        func_800EA784
/* C5E60 800EAA60 468033A1 */   cvt.d.w   $f14, $f6
/* C5E64 800EAA64 866E0018 */  lh         $t6, 0x18($s3)
/* C5E68 800EAA68 3C0F8011 */  lui        $t7, %hi(D_8010A18E)
/* C5E6C 800EAA6C A6620026 */  sh         $v0, 0x26($s3)
/* C5E70 800EAA70 000EC040 */  sll        $t8, $t6, 1
/* C5E74 800EAA74 0018C823 */  negu       $t9, $t8
/* C5E78 800EAA78 01F97821 */  addu       $t7, $t7, $t9
/* C5E7C 800EAA7C 85EFA18E */  lh         $t7, %lo(D_8010A18E)($t7)
/* C5E80 800EAA80 866E001A */  lh         $t6, 0x1a($s3)
/* C5E84 800EAA84 8E640034 */  lw         $a0, 0x34($s3)
/* C5E88 800EAA88 2671002A */  addiu      $s1, $s3, 0x2a
/* C5E8C 800EAA8C 01EE0019 */  multu      $t7, $t6
/* C5E90 800EAA90 866F001E */  lh         $t7, 0x1e($s3)
/* C5E94 800EAA94 448F4000 */  mtc1       $t7, $f8
/* C5E98 800EAA98 00000000 */  nop
/* C5E9C 800EAA9C 46804421 */  cvt.d.w    $f16, $f8
/* C5EA0 800EAAA0 0000C012 */  mflo       $t8
/* C5EA4 800EAAA4 0018CBC3 */  sra        $t9, $t8, 0xf
/* C5EA8 800EAAA8 A679002E */  sh         $t9, 0x2e($s3)
/* C5EAC 800EAAAC 866E002E */  lh         $t6, 0x2e($s3)
/* C5EB0 800EAAB0 448E5000 */  mtc1       $t6, $f10
/* C5EB4 800EAAB4 0C03A9E1 */  jal        func_800EA784
/* C5EB8 800EAAB8 468053A1 */   cvt.d.w   $f14, $f10
/* C5EBC 800EAABC 8678001C */  lh         $t8, 0x1c($s3)
/* C5EC0 800EAAC0 A662002C */  sh         $v0, 0x2c($s3)
/* C5EC4 800EAAC4 02801825 */  or         $v1, $s4, $zero
/* C5EC8 800EAAC8 3C010906 */  lui        $at, 0x906
/* C5ECC 800EAACC 3319FFFF */  andi       $t9, $t8, 0xffff
/* C5ED0 800EAAD0 03217825 */  or         $t7, $t9, $at
/* C5ED4 800EAAD4 AC6F0000 */  sw         $t7, ($v1)
/* C5ED8 800EAAD8 AC600004 */  sw         $zero, 4($v1)
/* C5EDC 800EAADC 866E001E */  lh         $t6, 0x1e($s3)
/* C5EE0 800EAAE0 26940008 */  addiu      $s4, $s4, 8
/* C5EE4 800EAAE4 02802025 */  or         $a0, $s4, $zero
/* C5EE8 800EAAE8 3C010904 */  lui        $at, 0x904
/* C5EEC 800EAAEC 31D8FFFF */  andi       $t8, $t6, 0xffff
/* C5EF0 800EAAF0 0301C825 */  or         $t9, $t8, $at
/* C5EF4 800EAAF4 AC990000 */  sw         $t9, ($a0)
/* C5EF8 800EAAF8 AC800004 */  sw         $zero, 4($a0)
/* C5EFC 800EAAFC 866F0028 */  lh         $t7, 0x28($s3)
/* C5F00 800EAB00 26940008 */  addiu      $s4, $s4, 8
/* C5F04 800EAB04 3C010902 */  lui        $at, 0x902
/* C5F08 800EAB08 31EEFFFF */  andi       $t6, $t7, 0xffff
/* C5F0C 800EAB0C 01C1C025 */  or         $t8, $t6, $at
/* C5F10 800EAB10 02802825 */  or         $a1, $s4, $zero
/* C5F14 800EAB14 ACB80000 */  sw         $t8, ($a1)
/* C5F18 800EAB18 866F0026 */  lh         $t7, 0x26($s3)
/* C5F1C 800EAB1C 96790024 */  lhu        $t9, 0x24($s3)
/* C5F20 800EAB20 26940008 */  addiu      $s4, $s4, 8
/* C5F24 800EAB24 000F7400 */  sll        $t6, $t7, 0x10
/* C5F28 800EAB28 01D97825 */  or         $t7, $t6, $t9
/* C5F2C 800EAB2C ACAF0004 */  sw         $t7, 4($a1)
/* C5F30 800EAB30 8678002E */  lh         $t8, 0x2e($s3)
/* C5F34 800EAB34 3C010900 */  lui        $at, 0x900
/* C5F38 800EAB38 02803025 */  or         $a2, $s4, $zero
/* C5F3C 800EAB3C 330EFFFF */  andi       $t6, $t8, 0xffff
/* C5F40 800EAB40 01C1C825 */  or         $t9, $t6, $at
/* C5F44 800EAB44 ACD90000 */  sw         $t9, ($a2)
/* C5F48 800EAB48 8678002C */  lh         $t8, 0x2c($s3)
/* C5F4C 800EAB4C 966F002A */  lhu        $t7, 0x2a($s3)
/* C5F50 800EAB50 26940008 */  addiu      $s4, $s4, 8
/* C5F54 800EAB54 00187400 */  sll        $t6, $t8, 0x10
/* C5F58 800EAB58 01CFC025 */  or         $t8, $t6, $t7
/* C5F5C 800EAB5C ACD80004 */  sw         $t8, 4($a2)
/* C5F60 800EAB60 86790020 */  lh         $t9, 0x20($s3)
/* C5F64 800EAB64 3C010908 */  lui        $at, 0x908
/* C5F68 800EAB68 02801025 */  or         $v0, $s4, $zero
/* C5F6C 800EAB6C 332EFFFF */  andi       $t6, $t9, 0xffff
/* C5F70 800EAB70 01C17825 */  or         $t7, $t6, $at
/* C5F74 800EAB74 AC4F0000 */  sw         $t7, ($v0)
/* C5F78 800EAB78 86780022 */  lh         $t8, 0x22($s3)
/* C5F7C 800EAB7C 26940008 */  addiu      $s4, $s4, 8
/* C5F80 800EAB80 02808025 */  or         $s0, $s4, $zero
/* C5F84 800EAB84 3319FFFF */  andi       $t9, $t8, 0xffff
/* C5F88 800EAB88 AC590004 */  sw         $t9, 4($v0)
/* C5F8C 800EAB8C 3C0E0309 */  lui        $t6, 0x309
/* C5F90 800EAB90 AE0E0000 */  sw         $t6, ($s0)
/* C5F94 800EAB94 8E640014 */  lw         $a0, 0x14($s3)
/* C5F98 800EAB98 0C037228 */  jal        func_800DC8A0
/* C5F9C 800EAB9C 26940008 */   addiu     $s4, $s4, 8
/* C5FA0 800EABA0 10000007 */  b          .L800EABC0
/* C5FA4 800EABA4 AE020004 */   sw        $v0, 4($s0)
/* C5FA8 800EABA8 3C0F0308 */  lui        $t7, 0x308
.L800EABAC:
/* C5FAC 800EABAC AE0F0000 */  sw         $t7, ($s0)
/* C5FB0 800EABB0 8E640014 */  lw         $a0, 0x14($s3)
/* C5FB4 800EABB4 0C037228 */  jal        func_800DC8A0
/* C5FB8 800EABB8 26940008 */   addiu     $s4, $s4, 8
/* C5FBC 800EABBC AE020004 */  sw         $v0, 4($s0)
.L800EABC0:
/* C5FC0 800EABC0 86D80000 */  lh         $t8, ($s6)
/* C5FC4 800EABC4 02801025 */  or         $v0, $s4, $zero
/* C5FC8 800EABC8 0317C821 */  addu       $t9, $t8, $s7
/* C5FCC 800EABCC A6D90000 */  sh         $t9, ($s6)
/* C5FD0 800EABD0 8E6E0030 */  lw         $t6, 0x30($s3)
/* C5FD4 800EABD4 01D57821 */  addu       $t7, $t6, $s5
/* C5FD8 800EABD8 AE6F0030 */  sw         $t7, 0x30($s3)
.L800EABDC:
/* C5FDC 800EABDC 8FBF001C */  lw         $ra, 0x1c($sp)
/* C5FE0 800EABE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* C5FE4 800EABE4 03E00008 */  jr         $ra
/* C5FE8 800EABE8 00000000 */   nop

glabel func_800EABEC
/* C5FEC 800EABEC AFA50008 */  sw         $a1, 8($sp)
/* C5FF0 800EABF0 00057400 */  sll        $t6, $a1, 0x10
/* C5FF4 800EABF4 AFA6000C */  sw         $a2, 0xc($sp)
/* C5FF8 800EABF8 30D8FFFF */  andi       $t8, $a2, 0xffff
/* C5FFC 800EABFC 0004C8C3 */  sra        $t9, $a0, 3
/* C6000 800EAC00 03003025 */  or         $a2, $t8, $zero
/* C6004 800EAC04 000E2C03 */  sra        $a1, $t6, 0x10
/* C6008 800EAC08 17200003 */  bnez       $t9, .L800EAC18
/* C600C 800EAC0C 03202025 */   or        $a0, $t9, $zero
/* C6010 800EAC10 03E00008 */  jr         $ra
/* C6014 800EAC14 46006006 */   mov.s     $f0, $f12
.L800EAC18:
/* C6018 800EAC18 00057400 */  sll        $t6, $a1, 0x10
/* C601C 800EAC1C 448E2000 */  mtc1       $t6, $f4
/* C6020 800EAC20 44864000 */  mtc1       $a2, $f8
/* C6024 800EAC24 00001025 */  or         $v0, $zero, $zero
/* C6028 800EAC28 468021A0 */  cvt.s.w    $f6, $f4
/* C602C 800EAC2C 04C10005 */  bgez       $a2, .L800EAC44
/* C6030 800EAC30 468042A0 */   cvt.s.w   $f10, $f8
/* C6034 800EAC34 3C014F80 */  lui        $at, 0x4f80
/* C6038 800EAC38 44812000 */  mtc1       $at, $f4
/* C603C 800EAC3C 00000000 */  nop
/* C6040 800EAC40 46045280 */  add.s      $f10, $f10, $f4
.L800EAC44:
/* C6044 800EAC44 3C014780 */  lui        $at, 0x4780
/* C6048 800EAC48 460A3200 */  add.s      $f8, $f6, $f10
/* C604C 800EAC4C 44812000 */  mtc1       $at, $f4
/* C6050 800EAC50 3C013F80 */  lui        $at, 0x3f80
/* C6054 800EAC54 44811000 */  mtc1       $at, $f2
/* C6058 800EAC58 24030020 */  addiu      $v1, $zero, 0x20
/* C605C 800EAC5C 46044003 */  div.s      $f0, $f8, $f4
/* C6060 800EAC60 308F0001 */  andi       $t7, $a0, 1
.L800EAC64:
/* C6064 800EAC64 11E00003 */  beqz       $t7, .L800EAC74
/* C6068 800EAC68 0004C043 */   sra       $t8, $a0, 1
/* C606C 800EAC6C 46001082 */  mul.s      $f2, $f2, $f0
/* C6070 800EAC70 00000000 */  nop
.L800EAC74:
/* C6074 800EAC74 13000005 */  beqz       $t8, .L800EAC8C
/* C6078 800EAC78 03002025 */   or        $a0, $t8, $zero
/* C607C 800EAC7C 24420001 */  addiu      $v0, $v0, 1
/* C6080 800EAC80 46000002 */  mul.s      $f0, $f0, $f0
/* C6084 800EAC84 5443FFF7 */  bnel       $v0, $v1, .L800EAC64
/* C6088 800EAC88 308F0001 */   andi      $t7, $a0, 1
.L800EAC8C:
/* C608C 800EAC8C 46026002 */  mul.s      $f0, $f12, $f2
/* C6090 800EAC90 00000000 */  nop
/* C6094 800EAC94 03E00008 */  jr         $ra
/* C6098 800EAC98 00000000 */   nop

glabel func_800EAC9C
/* C609C 800EAC9C 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* C60A0 800EACA0 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* C60A4 800EACA4 AFBF0054 */  sw         $ra, 0x54($sp)
/* C60A8 800EACA8 AFBE0050 */  sw         $fp, 0x50($sp)
/* C60AC 800EACAC AFB7004C */  sw         $s7, 0x4c($sp)
/* C60B0 800EACB0 AFB60048 */  sw         $s6, 0x48($sp)
/* C60B4 800EACB4 AFB50044 */  sw         $s5, 0x44($sp)
/* C60B8 800EACB8 AFB40040 */  sw         $s4, 0x40($sp)
/* C60BC 800EACBC AFB3003C */  sw         $s3, 0x3c($sp)
/* C60C0 800EACC0 AFB20038 */  sw         $s2, 0x38($sp)
/* C60C4 800EACC4 AFB10034 */  sw         $s1, 0x34($sp)
/* C60C8 800EACC8 AFB00030 */  sw         $s0, 0x30($sp)
/* C60CC 800EACCC F7B60028 */  sdc1       $f22, 0x28($sp)
/* C60D0 800EACD0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* C60D4 800EACD4 AFA500AC */  sw         $a1, 0xac($sp)
/* C60D8 800EACD8 AFA600B0 */  sw         $a2, 0xb0($sp)
/* C60DC 800EACDC AFA700B4 */  sw         $a3, 0xb4($sp)
/* C60E0 800EACE0 AFA400A0 */  sw         $a0, 0xa0($sp)
/* C60E4 800EACE4 AFA70094 */  sw         $a3, 0x94($sp)
/* C60E8 800EACE8 A7A0008E */  sh         $zero, 0x8e($sp)
/* C60EC 800EACEC A7A0009E */  sh         $zero, 0x9e($sp)
/* C60F0 800EACF0 AFAE00A4 */  sw         $t6, 0xa4($sp)
/* C60F4 800EACF4 8C98003C */  lw         $t8, 0x3c($a0)
/* C60F8 800EACF8 0080F025 */  or         $fp, $a0, $zero
/* C60FC 800EACFC 24110001 */  addiu      $s1, $zero, 1
/* C6100 800EAD00 5300011C */  beql       $t8, $zero, .L800EB174
/* C6104 800EAD04 03C09825 */   or        $s3, $fp, $zero
/* C6108 800EAD08 8FC3003C */  lw         $v1, 0x3c($fp)
.L800EAD0C:
/* C610C 800EAD0C 8FA20094 */  lw         $v0, 0x94($sp)
/* C6110 800EAD10 8FB800B0 */  lw         $t8, 0xb0($sp)
/* C6114 800EAD14 8C790004 */  lw         $t9, 4($v1)
/* C6118 800EAD18 03227823 */  subu       $t7, $t9, $v0
/* C611C 800EAD1C 030F082A */  slt        $at, $t8, $t7
/* C6120 800EAD20 AFAF0060 */  sw         $t7, 0x60($sp)
/* C6124 800EAD24 14200112 */  bnez       $at, .L800EB170
/* C6128 800EAD28 AFB90094 */   sw        $t9, 0x94($sp)
/* C612C 800EAD2C 94790008 */  lhu        $t9, 8($v1)
/* C6130 800EAD30 2F210011 */  sltiu      $at, $t9, 0x11
/* C6134 800EAD34 102000EC */  beqz       $at, .L800EB0E8
/* C6138 800EAD38 0019C880 */   sll       $t9, $t9, 2
/* C613C 800EAD3C 3C018011 */  lui        $at, %hi(D_801110E0)
/* C6140 800EAD40 00390821 */  addu       $at, $at, $t9
/* C6144 800EAD44 8C3910E0 */  lw         $t9, %lo(D_801110E0)($at)
/* C6148 800EAD48 03200008 */  jr         $t9
/* C614C 800EAD4C 00000000 */   nop
/* C6150 800EAD50 846E000A */  lh         $t6, 0xa($v1)
/* C6154 800EAD54 00608025 */  or         $s0, $v1, $zero
/* C6158 800EAD58 51C00007 */  beql       $t6, $zero, .L800EAD78
/* C615C 800EAD5C 8FD90008 */   lw        $t9, 8($fp)
/* C6160 800EAD60 8FD90008 */  lw         $t9, 8($fp)
/* C6164 800EAD64 03C02025 */  or         $a0, $fp, $zero
/* C6168 800EAD68 24050008 */  addiu      $a1, $zero, 8
/* C616C 800EAD6C 0320F809 */  jalr       $t9
/* C6170 800EAD70 00003025 */   or        $a2, $zero, $zero
/* C6174 800EAD74 8FD90008 */  lw         $t9, 8($fp)
.L800EAD78:
/* C6178 800EAD78 03C02025 */  or         $a0, $fp, $zero
/* C617C 800EAD7C 24050005 */  addiu      $a1, $zero, 5
/* C6180 800EAD80 0320F809 */  jalr       $t9
/* C6184 800EAD84 8E060018 */   lw        $a2, 0x18($s0)
/* C6188 800EAD88 8FD90008 */  lw         $t9, 8($fp)
/* C618C 800EAD8C 03C02025 */  or         $a0, $fp, $zero
/* C6190 800EAD90 24050009 */  addiu      $a1, $zero, 9
/* C6194 800EAD94 0320F809 */  jalr       $t9
/* C6198 800EAD98 00003025 */   or        $a2, $zero, $zero
/* C619C 800EAD9C AFD10038 */  sw         $s1, 0x38($fp)
/* C61A0 800EADA0 AFC00030 */  sw         $zero, 0x30($fp)
/* C61A4 800EADA4 8E180014 */  lw         $t8, 0x14($s0)
/* C61A8 800EADA8 AFD80034 */  sw         $t8, 0x34($fp)
/* C61AC 800EADAC 86030010 */  lh         $v1, 0x10($s0)
/* C61B0 800EADB0 00630019 */  multu      $v1, $v1
/* C61B4 800EADB4 00002012 */  mflo       $a0
/* C61B8 800EADB8 00047BC3 */  sra        $t7, $a0, 0xf
/* C61BC 800EADBC A7CF001A */  sh         $t7, 0x1a($fp)
/* C61C0 800EADC0 920E0012 */  lbu        $t6, 0x12($s0)
/* C61C4 800EADC4 3C0F8011 */  lui        $t7, %hi(D_8010A090)
/* C61C8 800EADC8 A7CE0018 */  sh         $t6, 0x18($fp)
/* C61CC 800EADCC 92190013 */  lbu        $t9, 0x13($s0)
/* C61D0 800EADD0 0019C040 */  sll        $t8, $t9, 1
/* C61D4 800EADD4 01F87821 */  addu       $t7, $t7, $t8
/* C61D8 800EADD8 85EFA090 */  lh         $t7, %lo(D_8010A090)($t7)
/* C61DC 800EADDC A7CF0020 */  sh         $t7, 0x20($fp)
/* C61E0 800EADE0 920E0013 */  lbu        $t6, 0x13($s0)
/* C61E4 800EADE4 3C0F8011 */  lui        $t7, %hi(D_8010A18E)
/* C61E8 800EADE8 000EC840 */  sll        $t9, $t6, 1
/* C61EC 800EADEC 0019C023 */  negu       $t8, $t9
/* C61F0 800EADF0 01F87821 */  addu       $t7, $t7, $t8
/* C61F4 800EADF4 85EFA18E */  lh         $t7, %lo(D_8010A18E)($t7)
/* C61F8 800EADF8 A7CF0022 */  sh         $t7, 0x22($fp)
/* C61FC 800EADFC 8E0E0014 */  lw         $t6, 0x14($s0)
/* C6200 800EAE00 51C00005 */  beql       $t6, $zero, .L800EAE18
/* C6204 800EAE04 87C20018 */   lh        $v0, 0x18($fp)
/* C6208 800EAE08 A7D1001C */  sh         $s1, 0x1c($fp)
/* C620C 800EAE0C 10000013 */  b          .L800EAE5C
/* C6210 800EAE10 A7D1001E */   sh        $s1, 0x1e($fp)
/* C6214 800EAE14 87C20018 */  lh         $v0, 0x18($fp)
.L800EAE18:
/* C6218 800EAE18 3C188011 */  lui        $t8, %hi(D_8010A090)
/* C621C 800EAE1C 87C3001A */  lh         $v1, 0x1a($fp)
/* C6220 800EAE20 0002C840 */  sll        $t9, $v0, 1
/* C6224 800EAE24 0319C021 */  addu       $t8, $t8, $t9
/* C6228 800EAE28 8718A090 */  lh         $t8, %lo(D_8010A090)($t8)
/* C622C 800EAE2C 0019C823 */  negu       $t9, $t9
/* C6230 800EAE30 03030019 */  multu      $t8, $v1
/* C6234 800EAE34 3C188011 */  lui        $t8, %hi(D_8010A18E)
/* C6238 800EAE38 0319C021 */  addu       $t8, $t8, $t9
/* C623C 800EAE3C 00007812 */  mflo       $t7
/* C6240 800EAE40 000F73C3 */  sra        $t6, $t7, 0xf
/* C6244 800EAE44 A7CE001C */  sh         $t6, 0x1c($fp)
/* C6248 800EAE48 8718A18E */  lh         $t8, %lo(D_8010A18E)($t8)
/* C624C 800EAE4C 03030019 */  multu      $t8, $v1
/* C6250 800EAE50 00007812 */  mflo       $t7
/* C6254 800EAE54 000F73C3 */  sra        $t6, $t7, 0xf
/* C6258 800EAE58 A7CE001E */  sh         $t6, 0x1e($fp)
.L800EAE5C:
/* C625C 800EAE5C 8FD90000 */  lw         $t9, ($fp)
/* C6260 800EAE60 532000B1 */  beql       $t9, $zero, .L800EB128
/* C6264 800EAE64 8FB80060 */   lw        $t8, 0x60($sp)
/* C6268 800EAE68 C604000C */  lwc1       $f4, 0xc($s0)
/* C626C 800EAE6C 24050007 */  addiu      $a1, $zero, 7
/* C6270 800EAE70 E7A40074 */  swc1       $f4, 0x74($sp)
/* C6274 800EAE74 8FC40000 */  lw         $a0, ($fp)
/* C6278 800EAE78 8FA60074 */  lw         $a2, 0x74($sp)
/* C627C 800EAE7C 8C990008 */  lw         $t9, 8($a0)
/* C6280 800EAE80 0320F809 */  jalr       $t9
/* C6284 800EAE84 00000000 */   nop
/* C6288 800EAE88 100000A7 */  b          .L800EB128
/* C628C 800EAE8C 8FB80060 */   lw        $t8, 0x60($sp)
/* C6290 800EAE90 03C09825 */  or         $s3, $fp, $zero
/* C6294 800EAE94 27B6009E */  addiu      $s6, $sp, 0x9e
/* C6298 800EAE98 27B0008E */  addiu      $s0, $sp, 0x8e
/* C629C 800EAE9C 8FB50060 */  lw         $s5, 0x60($sp)
/* C62A0 800EAEA0 8FA700B4 */  lw         $a3, 0xb4($sp)
/* C62A4 800EAEA4 0C03AA55 */  jal        func_800EA954
/* C62A8 800EAEA8 8FA800A4 */   lw        $t0, 0xa4($sp)
/* C62AC 800EAEAC AFA200A4 */  sw         $v0, 0xa4($sp)
/* C62B0 800EAEB0 8FC40034 */  lw         $a0, 0x34($fp)
/* C62B4 800EAEB4 8FC70030 */  lw         $a3, 0x30($fp)
/* C62B8 800EAEB8 24110001 */  addiu      $s1, $zero, 1
/* C62BC 800EAEBC 00E4082A */  slt        $at, $a3, $a0
/* C62C0 800EAEC0 5420001A */  bnel       $at, $zero, .L800EAF2C
/* C62C4 800EAEC4 87CE001C */   lh        $t6, 0x1c($fp)
/* C62C8 800EAEC8 87C20018 */  lh         $v0, 0x18($fp)
/* C62CC 800EAECC 3C0F8011 */  lui        $t7, %hi(D_8010A090)
/* C62D0 800EAED0 87C3001A */  lh         $v1, 0x1a($fp)
/* C62D4 800EAED4 0002C040 */  sll        $t8, $v0, 1
/* C62D8 800EAED8 01F87821 */  addu       $t7, $t7, $t8
/* C62DC 800EAEDC 85EFA090 */  lh         $t7, %lo(D_8010A090)($t7)
/* C62E0 800EAEE0 0018C023 */  negu       $t8, $t8
/* C62E4 800EAEE4 01E30019 */  multu      $t7, $v1
/* C62E8 800EAEE8 3C0F8011 */  lui        $t7, %hi(D_8010A18E)
/* C62EC 800EAEEC 01F87821 */  addu       $t7, $t7, $t8
/* C62F0 800EAEF0 00007012 */  mflo       $t6
/* C62F4 800EAEF4 000ECBC3 */  sra        $t9, $t6, 0xf
/* C62F8 800EAEF8 A7D90028 */  sh         $t9, 0x28($fp)
/* C62FC 800EAEFC 85EFA18E */  lh         $t7, %lo(D_8010A18E)($t7)
/* C6300 800EAF00 87D80028 */  lh         $t8, 0x28($fp)
/* C6304 800EAF04 AFC40030 */  sw         $a0, 0x30($fp)
/* C6308 800EAF08 01E30019 */  multu      $t7, $v1
/* C630C 800EAF0C A7D8001C */  sh         $t8, 0x1c($fp)
/* C6310 800EAF10 00007012 */  mflo       $t6
/* C6314 800EAF14 000ECBC3 */  sra        $t9, $t6, 0xf
/* C6318 800EAF18 A7D9002E */  sh         $t9, 0x2e($fp)
/* C631C 800EAF1C 87CF002E */  lh         $t7, 0x2e($fp)
/* C6320 800EAF20 10000016 */  b          .L800EAF7C
/* C6324 800EAF24 A7CF001E */   sh        $t7, 0x1e($fp)
/* C6328 800EAF28 87CE001C */  lh         $t6, 0x1c($fp)
.L800EAF2C:
/* C632C 800EAF2C 00E02025 */  or         $a0, $a3, $zero
/* C6330 800EAF30 87C50026 */  lh         $a1, 0x26($fp)
/* C6334 800EAF34 448E3000 */  mtc1       $t6, $f6
/* C6338 800EAF38 97C60024 */  lhu        $a2, 0x24($fp)
/* C633C 800EAF3C 0C03AAFB */  jal        func_800EABEC
/* C6340 800EAF40 46803320 */   cvt.s.w   $f12, $f6
/* C6344 800EAF44 4600020D */  trunc.w.s  $f8, $f0
/* C6348 800EAF48 87CF001E */  lh         $t7, 0x1e($fp)
/* C634C 800EAF4C 8FC40030 */  lw         $a0, 0x30($fp)
/* C6350 800EAF50 87C5002C */  lh         $a1, 0x2c($fp)
/* C6354 800EAF54 44184000 */  mfc1       $t8, $f8
/* C6358 800EAF58 448F5000 */  mtc1       $t7, $f10
/* C635C 800EAF5C 97C6002A */  lhu        $a2, 0x2a($fp)
/* C6360 800EAF60 A7D8001C */  sh         $t8, 0x1c($fp)
/* C6364 800EAF64 0C03AAFB */  jal        func_800EABEC
/* C6368 800EAF68 46805320 */   cvt.s.w   $f12, $f10
/* C636C 800EAF6C 4600010D */  trunc.w.s  $f4, $f0
/* C6370 800EAF70 44192000 */  mfc1       $t9, $f4
/* C6374 800EAF74 00000000 */  nop
/* C6378 800EAF78 A7D9001E */  sh         $t9, 0x1e($fp)
.L800EAF7C:
/* C637C 800EAF7C 87D8001C */  lh         $t8, 0x1c($fp)
/* C6380 800EAF80 57000003 */  bnel       $t8, $zero, .L800EAF90
/* C6384 800EAF84 87CF001E */   lh        $t7, 0x1e($fp)
/* C6388 800EAF88 A7D1001C */  sh         $s1, 0x1c($fp)
/* C638C 800EAF8C 87CF001E */  lh         $t7, 0x1e($fp)
.L800EAF90:
/* C6390 800EAF90 55E00003 */  bnel       $t7, $zero, .L800EAFA0
/* C6394 800EAF94 8FC3003C */   lw        $v1, 0x3c($fp)
/* C6398 800EAF98 A7D1001E */  sh         $s1, 0x1e($fp)
/* C639C 800EAF9C 8FC3003C */  lw         $v1, 0x3c($fp)
.L800EAFA0:
/* C63A0 800EAFA0 2401000C */  addiu      $at, $zero, 0xc
/* C63A4 800EAFA4 84640008 */  lh         $a0, 8($v1)
/* C63A8 800EAFA8 54810005 */  bnel       $a0, $at, .L800EAFC0
/* C63AC 800EAFAC 2401000B */   addiu     $at, $zero, 0xb
/* C63B0 800EAFB0 8C6E000C */  lw         $t6, 0xc($v1)
/* C63B4 800EAFB4 A7CE0018 */  sh         $t6, 0x18($fp)
/* C63B8 800EAFB8 84640008 */  lh         $a0, 8($v1)
/* C63BC 800EAFBC 2401000B */  addiu      $at, $zero, 0xb
.L800EAFC0:
/* C63C0 800EAFC0 5481000B */  bnel       $a0, $at, .L800EAFF0
/* C63C4 800EAFC4 24010010 */   addiu     $at, $zero, 0x10
/* C63C8 800EAFC8 AFC00030 */  sw         $zero, 0x30($fp)
/* C63CC 800EAFCC 8C62000C */  lw         $v0, 0xc($v1)
/* C63D0 800EAFD0 00420019 */  multu      $v0, $v0
/* C63D4 800EAFD4 00001012 */  mflo       $v0
/* C63D8 800EAFD8 0002CBC3 */  sra        $t9, $v0, 0xf
/* C63DC 800EAFDC A7D9001A */  sh         $t9, 0x1a($fp)
/* C63E0 800EAFE0 8C780010 */  lw         $t8, 0x10($v1)
/* C63E4 800EAFE4 AFD80034 */  sw         $t8, 0x34($fp)
/* C63E8 800EAFE8 84640008 */  lh         $a0, 8($v1)
/* C63EC 800EAFEC 24010010 */  addiu      $at, $zero, 0x10
.L800EAFF0:
/* C63F0 800EAFF0 1481000E */  bne        $a0, $at, .L800EB02C
/* C63F4 800EAFF4 00000000 */   nop
/* C63F8 800EAFF8 8C6F000C */  lw         $t7, 0xc($v1)
/* C63FC 800EAFFC 3C198011 */  lui        $t9, %hi(D_8010A090)
/* C6400 800EB000 000F7040 */  sll        $t6, $t7, 1
/* C6404 800EB004 032EC821 */  addu       $t9, $t9, $t6
/* C6408 800EB008 8739A090 */  lh         $t9, %lo(D_8010A090)($t9)
/* C640C 800EB00C A7D90020 */  sh         $t9, 0x20($fp)
/* C6410 800EB010 8C78000C */  lw         $t8, 0xc($v1)
/* C6414 800EB014 3C198011 */  lui        $t9, %hi(D_8010A18E)
/* C6418 800EB018 00187840 */  sll        $t7, $t8, 1
/* C641C 800EB01C 000F7023 */  negu       $t6, $t7
/* C6420 800EB020 032EC821 */  addu       $t9, $t9, $t6
/* C6424 800EB024 8739A18E */  lh         $t9, %lo(D_8010A18E)($t9)
/* C6428 800EB028 A7D90022 */  sh         $t9, 0x22($fp)
.L800EB02C:
/* C642C 800EB02C 1000003D */  b          .L800EB124
/* C6430 800EB030 AFD10038 */   sw        $s1, 0x38($fp)
/* C6434 800EB034 8478000A */  lh         $t8, 0xa($v1)
/* C6438 800EB038 00608025 */  or         $s0, $v1, $zero
/* C643C 800EB03C 53000007 */  beql       $t8, $zero, .L800EB05C
/* C6440 800EB040 8FD90008 */   lw        $t9, 8($fp)
/* C6444 800EB044 8FD90008 */  lw         $t9, 8($fp)
/* C6448 800EB048 03C02025 */  or         $a0, $fp, $zero
/* C644C 800EB04C 24050008 */  addiu      $a1, $zero, 8
/* C6450 800EB050 0320F809 */  jalr       $t9
/* C6454 800EB054 00003025 */   or        $a2, $zero, $zero
/* C6458 800EB058 8FD90008 */  lw         $t9, 8($fp)
.L800EB05C:
/* C645C 800EB05C 03C02025 */  or         $a0, $fp, $zero
/* C6460 800EB060 24050005 */  addiu      $a1, $zero, 5
/* C6464 800EB064 0320F809 */  jalr       $t9
/* C6468 800EB068 8E06000C */   lw        $a2, 0xc($s0)
/* C646C 800EB06C 8FD90008 */  lw         $t9, 8($fp)
/* C6470 800EB070 03C02025 */  or         $a0, $fp, $zero
/* C6474 800EB074 24050009 */  addiu      $a1, $zero, 9
/* C6478 800EB078 0320F809 */  jalr       $t9
/* C647C 800EB07C 00003025 */   or        $a2, $zero, $zero
/* C6480 800EB080 10000029 */  b          .L800EB128
/* C6484 800EB084 8FB80060 */   lw        $t8, 0x60($sp)
/* C6488 800EB088 03C09825 */  or         $s3, $fp, $zero
/* C648C 800EB08C 27B6009E */  addiu      $s6, $sp, 0x9e
/* C6490 800EB090 27B0008E */  addiu      $s0, $sp, 0x8e
/* C6494 800EB094 8FB50060 */  lw         $s5, 0x60($sp)
/* C6498 800EB098 8FA700B4 */  lw         $a3, 0xb4($sp)
/* C649C 800EB09C 0C03AA55 */  jal        func_800EA954
/* C64A0 800EB0A0 8FA800A4 */   lw        $t0, 0xa4($sp)
/* C64A4 800EB0A4 AFA200A4 */  sw         $v0, 0xa4($sp)
/* C64A8 800EB0A8 8FD90008 */  lw         $t9, 8($fp)
/* C64AC 800EB0AC 24110001 */  addiu      $s1, $zero, 1
/* C64B0 800EB0B0 03C02025 */  or         $a0, $fp, $zero
/* C64B4 800EB0B4 24050004 */  addiu      $a1, $zero, 4
/* C64B8 800EB0B8 0320F809 */  jalr       $t9
/* C64BC 800EB0BC 00003025 */   or        $a2, $zero, $zero
/* C64C0 800EB0C0 10000019 */  b          .L800EB128
/* C64C4 800EB0C4 8FB80060 */   lw        $t8, 0x60($sp)
/* C64C8 800EB0C8 8C6F000C */  lw         $t7, 0xc($v1)
/* C64CC 800EB0CC 3C048011 */  lui        $a0, %hi(D_80109DA0)
/* C64D0 800EB0D0 8C849DA0 */  lw         $a0, %lo(D_80109DA0)($a0)
/* C64D4 800EB0D4 ADE000D8 */  sw         $zero, 0xd8($t7)
/* C64D8 800EB0D8 0C037A7C */  jal        func_800DE9F0
/* C64DC 800EB0DC 8C65000C */   lw        $a1, 0xc($v1)
/* C64E0 800EB0E0 10000011 */  b          .L800EB128
/* C64E4 800EB0E4 8FB80060 */   lw        $t8, 0x60($sp)
.L800EB0E8:
/* C64E8 800EB0E8 03C09825 */  or         $s3, $fp, $zero
/* C64EC 800EB0EC 27B6009E */  addiu      $s6, $sp, 0x9e
/* C64F0 800EB0F0 27B0008E */  addiu      $s0, $sp, 0x8e
/* C64F4 800EB0F4 8FB50060 */  lw         $s5, 0x60($sp)
/* C64F8 800EB0F8 8FA700B4 */  lw         $a3, 0xb4($sp)
/* C64FC 800EB0FC 0C03AA55 */  jal        func_800EA954
/* C6500 800EB100 8FA800A4 */   lw        $t0, 0xa4($sp)
/* C6504 800EB104 AFA200A4 */  sw         $v0, 0xa4($sp)
/* C6508 800EB108 8FD90008 */  lw         $t9, 8($fp)
/* C650C 800EB10C 8FC3003C */  lw         $v1, 0x3c($fp)
/* C6510 800EB110 24110001 */  addiu      $s1, $zero, 1
/* C6514 800EB114 03C02025 */  or         $a0, $fp, $zero
/* C6518 800EB118 84650008 */  lh         $a1, 8($v1)
/* C651C 800EB11C 0320F809 */  jalr       $t9
/* C6520 800EB120 8C66000C */   lw        $a2, 0xc($v1)
.L800EB124:
/* C6524 800EB124 8FB80060 */  lw         $t8, 0x60($sp)
.L800EB128:
/* C6528 800EB128 87AE008E */  lh         $t6, 0x8e($sp)
/* C652C 800EB12C 00187840 */  sll        $t7, $t8, 1
/* C6530 800EB130 01CFC821 */  addu       $t9, $t6, $t7
/* C6534 800EB134 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* C6538 800EB138 A7B9008E */  sh         $t9, 0x8e($sp)
/* C653C 800EB13C 01D87823 */  subu       $t7, $t6, $t8
/* C6540 800EB140 AFAF00B0 */  sw         $t7, 0xb0($sp)
/* C6544 800EB144 8FC4003C */  lw         $a0, 0x3c($fp)
/* C6548 800EB148 8C990000 */  lw         $t9, ($a0)
/* C654C 800EB14C 17200002 */  bnez       $t9, .L800EB158
/* C6550 800EB150 AFD9003C */   sw        $t9, 0x3c($fp)
/* C6554 800EB154 AFC00040 */  sw         $zero, 0x40($fp)
.L800EB158:
/* C6558 800EB158 0C037AA2 */  jal        func_800DEA88
/* C655C 800EB15C 00000000 */   nop
/* C6560 800EB160 8FB800A0 */  lw         $t8, 0xa0($sp)
/* C6564 800EB164 8F0F003C */  lw         $t7, 0x3c($t8)
/* C6568 800EB168 55E0FEE8 */  bnel       $t7, $zero, .L800EAD0C
/* C656C 800EB16C 8FC3003C */   lw        $v1, 0x3c($fp)
.L800EB170:
/* C6570 800EB170 03C09825 */  or         $s3, $fp, $zero
.L800EB174:
/* C6574 800EB174 27B6009E */  addiu      $s6, $sp, 0x9e
/* C6578 800EB178 27B0008E */  addiu      $s0, $sp, 0x8e
/* C657C 800EB17C 8FB500B0 */  lw         $s5, 0xb0($sp)
/* C6580 800EB180 8FA700B4 */  lw         $a3, 0xb4($sp)
/* C6584 800EB184 0C03AA55 */  jal        func_800EA954
/* C6588 800EB188 8FA800A4 */   lw        $t0, 0xa4($sp)
/* C658C 800EB18C AFA200A4 */  sw         $v0, 0xa4($sp)
/* C6590 800EB190 8FD90030 */  lw         $t9, 0x30($fp)
/* C6594 800EB194 8FC40034 */  lw         $a0, 0x34($fp)
/* C6598 800EB198 0099082A */  slt        $at, $a0, $t9
/* C659C 800EB19C 50200003 */  beql       $at, $zero, .L800EB1AC
/* C65A0 800EB1A0 8FBF0054 */   lw        $ra, 0x54($sp)
/* C65A4 800EB1A4 AFC40030 */  sw         $a0, 0x30($fp)
/* C65A8 800EB1A8 8FBF0054 */  lw         $ra, 0x54($sp)
.L800EB1AC:
/* C65AC 800EB1AC 8FA200A4 */  lw         $v0, 0xa4($sp)
/* C65B0 800EB1B0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* C65B4 800EB1B4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* C65B8 800EB1B8 8FB00030 */  lw         $s0, 0x30($sp)
/* C65BC 800EB1BC 8FB10034 */  lw         $s1, 0x34($sp)
/* C65C0 800EB1C0 8FB20038 */  lw         $s2, 0x38($sp)
/* C65C4 800EB1C4 8FB3003C */  lw         $s3, 0x3c($sp)
/* C65C8 800EB1C8 8FB40040 */  lw         $s4, 0x40($sp)
/* C65CC 800EB1CC 8FB50044 */  lw         $s5, 0x44($sp)
/* C65D0 800EB1D0 8FB60048 */  lw         $s6, 0x48($sp)
/* C65D4 800EB1D4 8FB7004C */  lw         $s7, 0x4c($sp)
/* C65D8 800EB1D8 8FBE0050 */  lw         $fp, 0x50($sp)
/* C65DC 800EB1DC 03E00008 */  jr         $ra
/* C65E0 800EB1E0 27BD00A8 */   addiu     $sp, $sp, 0xa8
/* C65E4 800EB1E4 00000000 */  nop
/* C65E8 800EB1E8 00000000 */  nop
/* C65EC 800EB1EC 00000000 */  nop
