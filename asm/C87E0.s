.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ED3E0
/* C87E0 800ED3E0 44853000 */  mtc1       $a1, $f6
/* C87E4 800ED3E4 C4840010 */  lwc1       $f4, 0x10($a0)
/* C87E8 800ED3E8 C4900014 */  lwc1       $f16, 0x14($a0)
/* C87EC 800ED3EC 46803220 */  cvt.s.w    $f8, $f6
/* C87F0 800ED3F0 3C014000 */  lui        $at, 0x4000
/* C87F4 800ED3F4 44812800 */  mtc1       $at, $f5
/* C87F8 800ED3F8 3C014010 */  lui        $at, 0x4010
/* C87FC 800ED3FC 46082282 */  mul.s      $f10, $f4, $f8
/* C8800 800ED400 44802000 */  mtc1       $zero, $f4
/* C8804 800ED404 460A8480 */  add.s      $f18, $f16, $f10
/* C8808 800ED408 E4920014 */  swc1       $f18, 0x14($a0)
/* C880C 800ED40C C4860014 */  lwc1       $f6, 0x14($a0)
/* C8810 800ED410 46003021 */  cvt.d.s    $f0, $f6
/* C8814 800ED414 44803000 */  mtc1       $zero, $f6
/* C8818 800ED418 4620203C */  c.lt.d     $f4, $f0
/* C881C 800ED41C 00000000 */  nop
/* C8820 800ED420 45020009 */  bc1fl      .L800ED448
/* C8824 800ED424 462004A0 */   cvt.s.d   $f18, $f0
/* C8828 800ED428 44814800 */  mtc1       $at, $f9
/* C882C 800ED42C 44804000 */  mtc1       $zero, $f8
/* C8830 800ED430 00000000 */  nop
/* C8834 800ED434 46280401 */  sub.d      $f16, $f0, $f8
/* C8838 800ED438 462082A0 */  cvt.s.d    $f10, $f16
/* C883C 800ED43C 10000003 */  b          .L800ED44C
/* C8840 800ED440 E48A0014 */   swc1      $f10, 0x14($a0)
/* C8844 800ED444 462004A0 */  cvt.s.d    $f18, $f0
.L800ED448:
/* C8848 800ED448 E4920014 */  swc1       $f18, 0x14($a0)
.L800ED44C:
/* C884C 800ED44C C4820014 */  lwc1       $f2, 0x14($a0)
/* C8850 800ED450 3C013FF0 */  lui        $at, 0x3ff0
/* C8854 800ED454 44814800 */  mtc1       $at, $f9
/* C8858 800ED458 4606103C */  c.lt.s     $f2, $f6
/* C885C 800ED45C 44804000 */  mtc1       $zero, $f8
/* C8860 800ED460 45020003 */  bc1fl      .L800ED470
/* C8864 800ED464 46001121 */   cvt.d.s   $f4, $f2
/* C8868 800ED468 46001087 */  neg.s      $f2, $f2
/* C886C 800ED46C 46001121 */  cvt.d.s    $f4, $f2
.L800ED470:
/* C8870 800ED470 C48A001C */  lwc1       $f10, 0x1c($a0)
/* C8874 800ED474 46282401 */  sub.d      $f16, $f4, $f8
/* C8878 800ED478 462080A0 */  cvt.s.d    $f2, $f16
/* C887C 800ED47C 46025002 */  mul.s      $f0, $f10, $f2
/* C8880 800ED480 03E00008 */  jr         $ra
/* C8884 800ED484 00000000 */   nop

glabel func_800ED488
/* C8888 800ED488 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C888C 800ED48C AFBF0014 */  sw         $ra, 0x14($sp)
/* C8890 800ED490 30A2FFFF */  andi       $v0, $a1, 0xffff
/* C8894 800ED494 0006C040 */  sll        $t8, $a2, 1
/* C8898 800ED498 3319FFFF */  andi       $t9, $t8, 0xffff
/* C889C 800ED49C 00027C00 */  sll        $t7, $v0, 0x10
/* C88A0 800ED4A0 3C010800 */  lui        $at, 0x800
/* C88A4 800ED4A4 3C0A0B00 */  lui        $t2, 0xb00
/* C88A8 800ED4A8 00417025 */  or         $t6, $v0, $at
/* C88AC 800ED4AC 01F94825 */  or         $t1, $t7, $t9
/* C88B0 800ED4B0 354A0020 */  ori        $t2, $t2, 0x20
/* C88B4 800ED4B4 00804025 */  or         $t0, $a0, $zero
/* C88B8 800ED4B8 ACE90004 */  sw         $t1, 4($a3)
/* C88BC 800ED4BC ACEE0000 */  sw         $t6, ($a3)
/* C88C0 800ED4C0 ACEA0008 */  sw         $t2, 8($a3)
/* C88C4 800ED4C4 AFA80028 */  sw         $t0, 0x28($sp)
/* C88C8 800ED4C8 AFA70034 */  sw         $a3, 0x34($sp)
/* C88CC 800ED4CC 0C037228 */  jal        func_800DC8A0
/* C88D0 800ED4D0 24840008 */   addiu     $a0, $a0, 8
/* C88D4 800ED4D4 8FA70034 */  lw         $a3, 0x34($sp)
/* C88D8 800ED4D8 8FA80028 */  lw         $t0, 0x28($sp)
/* C88DC 800ED4DC 3C010E00 */  lui        $at, 0xe00
/* C88E0 800ED4E0 24E30010 */  addiu      $v1, $a3, 0x10
/* C88E4 800ED4E4 246B0008 */  addiu      $t3, $v1, 8
/* C88E8 800ED4E8 ACE2000C */  sw         $v0, 0xc($a3)
/* C88EC 800ED4EC AFAB0024 */  sw         $t3, 0x24($sp)
/* C88F0 800ED4F0 8D0C002C */  lw         $t4, 0x2c($t0)
/* C88F4 800ED4F4 850F0002 */  lh         $t7, 2($t0)
/* C88F8 800ED4F8 318D00FF */  andi       $t5, $t4, 0xff
/* C88FC 800ED4FC 000D7400 */  sll        $t6, $t5, 0x10
/* C8900 800ED500 01C1C025 */  or         $t8, $t6, $at
/* C8904 800ED504 31F9FFFF */  andi       $t9, $t7, 0xffff
/* C8908 800ED508 03194825 */  or         $t1, $t8, $t9
/* C890C 800ED50C AC690000 */  sw         $t1, ($v1)
/* C8910 800ED510 8D040028 */  lw         $a0, 0x28($t0)
/* C8914 800ED514 0C037228 */  jal        func_800DC8A0
/* C8918 800ED518 AFA30018 */   sw        $v1, 0x18($sp)
/* C891C 800ED51C 8FA50018 */  lw         $a1, 0x18($sp)
/* C8920 800ED520 8FA80028 */  lw         $t0, 0x28($sp)
/* C8924 800ED524 ACA20004 */  sw         $v0, 4($a1)
/* C8928 800ED528 AD00002C */  sw         $zero, 0x2c($t0)
/* C892C 800ED52C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C8930 800ED530 8FA20024 */  lw         $v0, 0x24($sp)
/* C8934 800ED534 27BD0028 */  addiu      $sp, $sp, 0x28
/* C8938 800ED538 03E00008 */  jr         $ra
/* C893C 800ED53C 00000000 */   nop

glabel func_800ED540
/* C8940 800ED540 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C8944 800ED544 AFBF001C */  sw         $ra, 0x1c($sp)
/* C8948 800ED548 AFB00018 */  sw         $s0, 0x18($sp)
/* C894C 800ED54C 8C83001C */  lw         $v1, 0x1c($a0)
/* C8950 800ED550 8C820014 */  lw         $v0, 0x14($a0)
/* C8954 800ED554 8FA80070 */  lw         $t0, 0x70($sp)
/* C8958 800ED558 00037040 */  sll        $t6, $v1, 1
/* C895C 800ED55C 00A2082B */  sltu       $at, $a1, $v0
/* C8960 800ED560 00805025 */  or         $t2, $a0, $zero
/* C8964 800ED564 00C06825 */  or         $t5, $a2, $zero
/* C8968 800ED568 00E05825 */  or         $t3, $a3, $zero
/* C896C 800ED56C 10200002 */  beqz       $at, .L800ED578
/* C8970 800ED570 004E4821 */   addu      $t1, $v0, $t6
/* C8974 800ED574 00AE2821 */  addu       $a1, $a1, $t6
.L800ED578:
/* C8978 800ED578 000B3040 */  sll        $a2, $t3, 1
/* C897C 800ED57C 00C53821 */  addu       $a3, $a2, $a1
/* C8980 800ED580 0127082B */  sltu       $at, $t1, $a3
/* C8984 800ED584 1020003C */  beqz       $at, .L800ED678
/* C8988 800ED588 25100008 */   addiu     $s0, $t0, 8
/* C898C 800ED58C 01255823 */  subu       $t3, $t1, $a1
/* C8990 800ED590 000BC043 */  sra        $t8, $t3, 1
/* C8994 800ED594 3C0F0800 */  lui        $t7, 0x800
/* C8998 800ED598 AD0F0000 */  sw         $t7, ($t0)
/* C899C 800ED59C 00185840 */  sll        $t3, $t8, 1
/* C89A0 800ED5A0 3178FFFF */  andi       $t8, $t3, 0xffff
/* C89A4 800ED5A4 000D7C00 */  sll        $t7, $t5, 0x10
/* C89A8 800ED5A8 01F8C825 */  or         $t9, $t7, $t8
/* C89AC 800ED5AC 25100008 */  addiu      $s0, $t0, 8
/* C89B0 800ED5B0 AD190004 */  sw         $t9, 4($t0)
/* C89B4 800ED5B4 02006025 */  or         $t4, $s0, $zero
/* C89B8 800ED5B8 3C0E0600 */  lui        $t6, 0x600
/* C89BC 800ED5BC AD8E0000 */  sw         $t6, ($t4)
/* C89C0 800ED5C0 AFAD0068 */  sw         $t5, 0x68($sp)
/* C89C4 800ED5C4 AFAC0044 */  sw         $t4, 0x44($sp)
/* C89C8 800ED5C8 AFAB0024 */  sw         $t3, 0x24($sp)
/* C89CC 800ED5CC AFAA0060 */  sw         $t2, 0x60($sp)
/* C89D0 800ED5D0 AFA9004C */  sw         $t1, 0x4c($sp)
/* C89D4 800ED5D4 AFA70028 */  sw         $a3, 0x28($sp)
/* C89D8 800ED5D8 AFA6002C */  sw         $a2, 0x2c($sp)
/* C89DC 800ED5DC 26100008 */  addiu      $s0, $s0, 8
/* C89E0 800ED5E0 0C037228 */  jal        func_800DC8A0
/* C89E4 800ED5E4 00A02025 */   or        $a0, $a1, $zero
/* C89E8 800ED5E8 8FAC0044 */  lw         $t4, 0x44($sp)
/* C89EC 800ED5EC 8FA70028 */  lw         $a3, 0x28($sp)
/* C89F0 800ED5F0 8FA9004C */  lw         $t1, 0x4c($sp)
/* C89F4 800ED5F4 8FAB0024 */  lw         $t3, 0x24($sp)
/* C89F8 800ED5F8 8FAD0068 */  lw         $t5, 0x68($sp)
/* C89FC 800ED5FC 8FAA0060 */  lw         $t2, 0x60($sp)
/* C8A00 800ED600 02001825 */  or         $v1, $s0, $zero
/* C8A04 800ED604 3C0F0800 */  lui        $t7, 0x800
/* C8A08 800ED608 AD820004 */  sw         $v0, 4($t4)
/* C8A0C 800ED60C AC6F0000 */  sw         $t7, ($v1)
/* C8A10 800ED610 00E97823 */  subu       $t7, $a3, $t1
/* C8A14 800ED614 016DC821 */  addu       $t9, $t3, $t5
/* C8A18 800ED618 00197400 */  sll        $t6, $t9, 0x10
/* C8A1C 800ED61C 000FC043 */  sra        $t8, $t7, 1
/* C8A20 800ED620 0018C840 */  sll        $t9, $t8, 1
/* C8A24 800ED624 332FFFFF */  andi       $t7, $t9, 0xffff
/* C8A28 800ED628 01CFC025 */  or         $t8, $t6, $t7
/* C8A2C 800ED62C 26100008 */  addiu      $s0, $s0, 8
/* C8A30 800ED630 AC780004 */  sw         $t8, 4($v1)
/* C8A34 800ED634 02002825 */  or         $a1, $s0, $zero
/* C8A38 800ED638 3C190600 */  lui        $t9, 0x600
/* C8A3C 800ED63C ACB90000 */  sw         $t9, ($a1)
/* C8A40 800ED640 8D440014 */  lw         $a0, 0x14($t2)
/* C8A44 800ED644 AFA5003C */  sw         $a1, 0x3c($sp)
/* C8A48 800ED648 0C037228 */  jal        func_800DC8A0
/* C8A4C 800ED64C 26100008 */   addiu     $s0, $s0, 8
/* C8A50 800ED650 8FA5003C */  lw         $a1, 0x3c($sp)
/* C8A54 800ED654 8FA6002C */  lw         $a2, 0x2c($sp)
/* C8A58 800ED658 02001825 */  or         $v1, $s0, $zero
/* C8A5C 800ED65C 3C0E0800 */  lui        $t6, 0x800
/* C8A60 800ED660 ACA20004 */  sw         $v0, 4($a1)
/* C8A64 800ED664 30CFFFFF */  andi       $t7, $a2, 0xffff
/* C8A68 800ED668 AC6F0004 */  sw         $t7, 4($v1)
/* C8A6C 800ED66C AC6E0000 */  sw         $t6, ($v1)
/* C8A70 800ED670 10000010 */  b          .L800ED6B4
/* C8A74 800ED674 26100008 */   addiu     $s0, $s0, 8
.L800ED678:
/* C8A78 800ED678 3C180800 */  lui        $t8, 0x800
/* C8A7C 800ED67C AD180000 */  sw         $t8, ($t0)
/* C8A80 800ED680 000D7400 */  sll        $t6, $t5, 0x10
/* C8A84 800ED684 30CFFFFF */  andi       $t7, $a2, 0xffff
/* C8A88 800ED688 01CFC025 */  or         $t8, $t6, $t7
/* C8A8C 800ED68C AD180004 */  sw         $t8, 4($t0)
/* C8A90 800ED690 02001825 */  or         $v1, $s0, $zero
/* C8A94 800ED694 3C190600 */  lui        $t9, 0x600
/* C8A98 800ED698 AC790000 */  sw         $t9, ($v1)
/* C8A9C 800ED69C AFA30030 */  sw         $v1, 0x30($sp)
/* C8AA0 800ED6A0 26100008 */  addiu      $s0, $s0, 8
/* C8AA4 800ED6A4 0C037228 */  jal        func_800DC8A0
/* C8AA8 800ED6A8 00A02025 */   or        $a0, $a1, $zero
/* C8AAC 800ED6AC 8FA30030 */  lw         $v1, 0x30($sp)
/* C8AB0 800ED6B0 AC620004 */  sw         $v0, 4($v1)
.L800ED6B4:
/* C8AB4 800ED6B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* C8AB8 800ED6B8 02001025 */  or         $v0, $s0, $zero
/* C8ABC 800ED6BC 8FB00018 */  lw         $s0, 0x18($sp)
/* C8AC0 800ED6C0 03E00008 */  jr         $ra
/* C8AC4 800ED6C4 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800ED6C8
/* C8AC8 800ED6C8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C8ACC 800ED6CC AFBF001C */  sw         $ra, 0x1c($sp)
/* C8AD0 800ED6D0 AFB00018 */  sw         $s0, 0x18($sp)
/* C8AD4 800ED6D4 8C83001C */  lw         $v1, 0x1c($a0)
/* C8AD8 800ED6D8 8C820014 */  lw         $v0, 0x14($a0)
/* C8ADC 800ED6DC 8FA80070 */  lw         $t0, 0x70($sp)
/* C8AE0 800ED6E0 00037040 */  sll        $t6, $v1, 1
/* C8AE4 800ED6E4 00A2082B */  sltu       $at, $a1, $v0
/* C8AE8 800ED6E8 00805025 */  or         $t2, $a0, $zero
/* C8AEC 800ED6EC 00C06825 */  or         $t5, $a2, $zero
/* C8AF0 800ED6F0 00E05825 */  or         $t3, $a3, $zero
/* C8AF4 800ED6F4 10200002 */  beqz       $at, .L800ED700
/* C8AF8 800ED6F8 004E4821 */   addu      $t1, $v0, $t6
/* C8AFC 800ED6FC 00AE2821 */  addu       $a1, $a1, $t6
.L800ED700:
/* C8B00 800ED700 000B3040 */  sll        $a2, $t3, 1
/* C8B04 800ED704 00C53821 */  addu       $a3, $a2, $a1
/* C8B08 800ED708 0127082B */  sltu       $at, $t1, $a3
/* C8B0C 800ED70C 10200037 */  beqz       $at, .L800ED7EC
/* C8B10 800ED710 25100008 */   addiu     $s0, $t0, 8
/* C8B14 800ED714 31AFFFFF */  andi       $t7, $t5, 0xffff
/* C8B18 800ED718 3C010800 */  lui        $at, 0x800
/* C8B1C 800ED71C 01255823 */  subu       $t3, $t1, $a1
/* C8B20 800ED720 000BC843 */  sra        $t9, $t3, 1
/* C8B24 800ED724 01E1C025 */  or         $t8, $t7, $at
/* C8B28 800ED728 00197040 */  sll        $t6, $t9, 1
/* C8B2C 800ED72C 31CFFFFF */  andi       $t7, $t6, 0xffff
/* C8B30 800ED730 AD180000 */  sw         $t8, ($t0)
/* C8B34 800ED734 25100008 */  addiu      $s0, $t0, 8
/* C8B38 800ED738 AD0F0004 */  sw         $t7, 4($t0)
/* C8B3C 800ED73C 02006025 */  or         $t4, $s0, $zero
/* C8B40 800ED740 3C180400 */  lui        $t8, 0x400
/* C8B44 800ED744 AD980000 */  sw         $t8, ($t4)
/* C8B48 800ED748 AFAD0068 */  sw         $t5, 0x68($sp)
/* C8B4C 800ED74C AFAC0044 */  sw         $t4, 0x44($sp)
/* C8B50 800ED750 AFAE0024 */  sw         $t6, 0x24($sp)
/* C8B54 800ED754 AFAA0060 */  sw         $t2, 0x60($sp)
/* C8B58 800ED758 AFA9004C */  sw         $t1, 0x4c($sp)
/* C8B5C 800ED75C AFA70028 */  sw         $a3, 0x28($sp)
/* C8B60 800ED760 AFA6002C */  sw         $a2, 0x2c($sp)
/* C8B64 800ED764 26100008 */  addiu      $s0, $s0, 8
/* C8B68 800ED768 0C037228 */  jal        func_800DC8A0
/* C8B6C 800ED76C 00A02025 */   or        $a0, $a1, $zero
/* C8B70 800ED770 8FAB0024 */  lw         $t3, 0x24($sp)
/* C8B74 800ED774 8FAD0068 */  lw         $t5, 0x68($sp)
/* C8B78 800ED778 8FA70028 */  lw         $a3, 0x28($sp)
/* C8B7C 800ED77C 8FA9004C */  lw         $t1, 0x4c($sp)
/* C8B80 800ED780 8FAC0044 */  lw         $t4, 0x44($sp)
/* C8B84 800ED784 016DC821 */  addu       $t9, $t3, $t5
/* C8B88 800ED788 332EFFFF */  andi       $t6, $t9, 0xffff
/* C8B8C 800ED78C 3C010800 */  lui        $at, 0x800
/* C8B90 800ED790 8FAA0060 */  lw         $t2, 0x60($sp)
/* C8B94 800ED794 01C17825 */  or         $t7, $t6, $at
/* C8B98 800ED798 00E9C023 */  subu       $t8, $a3, $t1
/* C8B9C 800ED79C 0018C843 */  sra        $t9, $t8, 1
/* C8BA0 800ED7A0 02001825 */  or         $v1, $s0, $zero
/* C8BA4 800ED7A4 AD820004 */  sw         $v0, 4($t4)
/* C8BA8 800ED7A8 AC6F0000 */  sw         $t7, ($v1)
/* C8BAC 800ED7AC 00197040 */  sll        $t6, $t9, 1
/* C8BB0 800ED7B0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* C8BB4 800ED7B4 26100008 */  addiu      $s0, $s0, 8
/* C8BB8 800ED7B8 AC6F0004 */  sw         $t7, 4($v1)
/* C8BBC 800ED7BC 02002825 */  or         $a1, $s0, $zero
/* C8BC0 800ED7C0 3C180400 */  lui        $t8, 0x400
/* C8BC4 800ED7C4 ACB80000 */  sw         $t8, ($a1)
/* C8BC8 800ED7C8 8D440014 */  lw         $a0, 0x14($t2)
/* C8BCC 800ED7CC AFA5003C */  sw         $a1, 0x3c($sp)
/* C8BD0 800ED7D0 0C037228 */  jal        func_800DC8A0
/* C8BD4 800ED7D4 26100008 */   addiu     $s0, $s0, 8
/* C8BD8 800ED7D8 8FA5003C */  lw         $a1, 0x3c($sp)
/* C8BDC 800ED7DC 8FA6002C */  lw         $a2, 0x2c($sp)
/* C8BE0 800ED7E0 ACA20004 */  sw         $v0, 4($a1)
/* C8BE4 800ED7E4 10000012 */  b          .L800ED830
/* C8BE8 800ED7E8 30C7FFFF */   andi      $a3, $a2, 0xffff
.L800ED7EC:
/* C8BEC 800ED7EC 31B9FFFF */  andi       $t9, $t5, 0xffff
/* C8BF0 800ED7F0 3C010800 */  lui        $at, 0x800
/* C8BF4 800ED7F4 03217025 */  or         $t6, $t9, $at
/* C8BF8 800ED7F8 30C7FFFF */  andi       $a3, $a2, 0xffff
/* C8BFC 800ED7FC AD070004 */  sw         $a3, 4($t0)
/* C8C00 800ED800 AD0E0000 */  sw         $t6, ($t0)
/* C8C04 800ED804 02001825 */  or         $v1, $s0, $zero
/* C8C08 800ED808 3C0F0400 */  lui        $t7, 0x400
/* C8C0C 800ED80C AC6F0000 */  sw         $t7, ($v1)
/* C8C10 800ED810 AFA70028 */  sw         $a3, 0x28($sp)
/* C8C14 800ED814 AFA30034 */  sw         $v1, 0x34($sp)
/* C8C18 800ED818 26100008 */  addiu      $s0, $s0, 8
/* C8C1C 800ED81C 0C037228 */  jal        func_800DC8A0
/* C8C20 800ED820 00A02025 */   or        $a0, $a1, $zero
/* C8C24 800ED824 8FA30034 */  lw         $v1, 0x34($sp)
/* C8C28 800ED828 8FA70028 */  lw         $a3, 0x28($sp)
/* C8C2C 800ED82C AC620004 */  sw         $v0, 4($v1)
.L800ED830:
/* C8C30 800ED830 02001825 */  or         $v1, $s0, $zero
/* C8C34 800ED834 3C180800 */  lui        $t8, 0x800
/* C8C38 800ED838 AC780000 */  sw         $t8, ($v1)
/* C8C3C 800ED83C AC670004 */  sw         $a3, 4($v1)
/* C8C40 800ED840 8FBF001C */  lw         $ra, 0x1c($sp)
/* C8C44 800ED844 26020008 */  addiu      $v0, $s0, 8
/* C8C48 800ED848 8FB00018 */  lw         $s0, 0x18($sp)
/* C8C4C 800ED84C 03E00008 */  jr         $ra
/* C8C50 800ED850 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800ED854
/* C8C54 800ED854 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C8C58 800ED858 AFBF0024 */  sw         $ra, 0x24($sp)
/* C8C5C 800ED85C AFB10020 */  sw         $s1, 0x20($sp)
/* C8C60 800ED860 AFB0001C */  sw         $s0, 0x1c($sp)
/* C8C64 800ED864 AFA60068 */  sw         $a2, 0x68($sp)
/* C8C68 800ED868 8CAE0024 */  lw         $t6, 0x24($a1)
/* C8C6C 800ED86C 00A08025 */  or         $s0, $a1, $zero
/* C8C70 800ED870 00E08825 */  or         $s1, $a3, $zero
/* C8C74 800ED874 11C0006E */  beqz       $t6, .L800EDA30
/* C8C78 800ED878 00805025 */   or        $t2, $a0, $zero
/* C8C7C 800ED87C 8CAF0004 */  lw         $t7, 4($a1)
/* C8C80 800ED880 8CB80000 */  lw         $t8, ($a1)
/* C8C84 800ED884 00A02025 */  or         $a0, $a1, $zero
/* C8C88 800ED888 00E02825 */  or         $a1, $a3, $zero
/* C8C8C 800ED88C 01F8C823 */  subu       $t9, $t7, $t8
/* C8C90 800ED890 AFB90038 */  sw         $t9, 0x38($sp)
/* C8C94 800ED894 0C03B4F8 */  jal        func_800ED3E0
/* C8C98 800ED898 AFAA0060 */   sw        $t2, 0x60($sp)
/* C8C9C 800ED89C 8FAC0038 */  lw         $t4, 0x38($sp)
/* C8CA0 800ED8A0 3C014700 */  lui        $at, 0x4700
/* C8CA4 800ED8A4 44817000 */  mtc1       $at, $f14
/* C8CA8 800ED8A8 448C3000 */  mtc1       $t4, $f6
/* C8CAC 800ED8AC 3C013FF0 */  lui        $at, 0x3ff0
/* C8CB0 800ED8B0 44812800 */  mtc1       $at, $f5
/* C8CB4 800ED8B4 46803220 */  cvt.s.w    $f8, $f6
/* C8CB8 800ED8B8 44802000 */  mtc1       $zero, $f4
/* C8CBC 800ED8BC 8FA40060 */  lw         $a0, 0x60($sp)
/* C8CC0 800ED8C0 24060280 */  addiu      $a2, $zero, 0x280
/* C8CC4 800ED8C4 46080283 */  div.s      $f10, $f0, $f8
/* C8CC8 800ED8C8 460E5402 */  mul.s      $f16, $f10, $f14
/* C8CCC 800ED8CC 4600848D */  trunc.w.s  $f18, $f16
/* C8CD0 800ED8D0 440E9000 */  mfc1       $t6, $f18
/* C8CD4 800ED8D4 00000000 */  nop
/* C8CD8 800ED8D8 448E3000 */  mtc1       $t6, $f6
/* C8CDC 800ED8DC 00000000 */  nop
/* C8CE0 800ED8E0 46803220 */  cvt.s.w    $f8, $f6
/* C8CE4 800ED8E4 460E4283 */  div.s      $f10, $f8, $f14
/* C8CE8 800ED8E8 44914000 */  mtc1       $s1, $f8
/* C8CEC 800ED8EC 46005421 */  cvt.d.s    $f16, $f10
/* C8CF0 800ED8F0 468042A0 */  cvt.s.w    $f10, $f8
/* C8CF4 800ED8F4 46302481 */  sub.d      $f18, $f4, $f16
/* C8CF8 800ED8F8 462090A0 */  cvt.s.d    $f2, $f18
/* C8CFC 800ED8FC 460A1102 */  mul.s      $f4, $f2, $f10
/* C8D00 800ED900 E7A20044 */  swc1       $f2, 0x44($sp)
/* C8D04 800ED904 8E020024 */  lw         $v0, 0x24($s0)
/* C8D08 800ED908 C4460020 */  lwc1       $f6, 0x20($v0)
/* C8D0C 800ED90C 46043300 */  add.s      $f12, $f6, $f4
/* C8D10 800ED910 4600640D */  trunc.w.s  $f16, $f12
/* C8D14 800ED914 44098000 */  mfc1       $t1, $f16
/* C8D18 800ED918 00000000 */  nop
/* C8D1C 800ED91C 44899000 */  mtc1       $t1, $f18
/* C8D20 800ED920 00000000 */  nop
/* C8D24 800ED924 46809220 */  cvt.s.w    $f8, $f18
/* C8D28 800ED928 46086281 */  sub.s      $f10, $f12, $f8
/* C8D2C 800ED92C E44A0020 */  swc1       $f10, 0x20($v0)
/* C8D30 800ED930 8E190018 */  lw         $t9, 0x18($s0)
/* C8D34 800ED934 8E180004 */  lw         $t8, 4($s0)
/* C8D38 800ED938 8C8F0018 */  lw         $t7, 0x18($a0)
/* C8D3C 800ED93C AFA9002C */  sw         $t1, 0x2c($sp)
/* C8D40 800ED940 03196023 */  subu       $t4, $t8, $t9
/* C8D44 800ED944 000C6823 */  negu       $t5, $t4
/* C8D48 800ED948 000D7040 */  sll        $t6, $t5, 1
/* C8D4C 800ED94C 01EE4021 */  addu       $t0, $t7, $t6
/* C8D50 800ED950 31030007 */  andi       $v1, $t0, 7
/* C8D54 800ED954 8FB90070 */  lw         $t9, 0x70($sp)
/* C8D58 800ED958 0003C043 */  sra        $t8, $v1, 1
/* C8D5C 800ED95C 00185840 */  sll        $t3, $t8, 1
/* C8D60 800ED960 010B2823 */  subu       $a1, $t0, $t3
/* C8D64 800ED964 AFAB0028 */  sw         $t3, 0x28($sp)
/* C8D68 800ED968 03001825 */  or         $v1, $t8, $zero
/* C8D6C 800ED96C 01383821 */  addu       $a3, $t1, $t8
/* C8D70 800ED970 0C03B5B2 */  jal        func_800ED6C8
/* C8D74 800ED974 AFB90010 */   sw        $t9, 0x10($sp)
/* C8D78 800ED978 8FAB0028 */  lw         $t3, 0x28($sp)
/* C8D7C 800ED97C 3C010800 */  lui        $at, 0x800
/* C8D80 800ED980 244E0008 */  addiu      $t6, $v0, 8
/* C8D84 800ED984 256C0280 */  addiu      $t4, $t3, 0x280
/* C8D88 800ED988 318DFFFF */  andi       $t5, $t4, 0xffff
/* C8D8C 800ED98C 01A17825 */  or         $t7, $t5, $at
/* C8D90 800ED990 AC4F0000 */  sw         $t7, ($v0)
/* C8D94 800ED994 8FB80068 */  lw         $t8, 0x68($sp)
/* C8D98 800ED998 00116040 */  sll        $t4, $s1, 1
/* C8D9C 800ED99C 318DFFFF */  andi       $t5, $t4, 0xffff
/* C8DA0 800ED9A0 0018CC00 */  sll        $t9, $t8, 0x10
/* C8DA4 800ED9A4 032D7825 */  or         $t7, $t9, $t5
/* C8DA8 800ED9A8 AC4F0004 */  sw         $t7, 4($v0)
/* C8DAC 800ED9AC 3C014700 */  lui        $at, 0x4700
/* C8DB0 800ED9B0 44812000 */  mtc1       $at, $f4
/* C8DB4 800ED9B4 C7A60044 */  lwc1       $f6, 0x44($sp)
/* C8DB8 800ED9B8 AFAE0030 */  sw         $t6, 0x30($sp)
/* C8DBC 800ED9BC 8E0D0024 */  lw         $t5, 0x24($s0)
/* C8DC0 800ED9C0 46043402 */  mul.s      $f16, $f6, $f4
/* C8DC4 800ED9C4 3C010500 */  lui        $at, 0x500
/* C8DC8 800ED9C8 8DAF0024 */  lw         $t7, 0x24($t5)
/* C8DCC 800ED9CC 24430010 */  addiu      $v1, $v0, 0x10
/* C8DD0 800ED9D0 31EE00FF */  andi       $t6, $t7, 0xff
/* C8DD4 800ED9D4 000EC400 */  sll        $t8, $t6, 0x10
/* C8DD8 800ED9D8 4600848D */  trunc.w.s  $f18, $f16
/* C8DDC 800ED9DC 440C9000 */  mfc1       $t4, $f18
/* C8DE0 800ED9E0 00000000 */  nop
/* C8DE4 800ED9E4 3199FFFF */  andi       $t9, $t4, 0xffff
/* C8DE8 800ED9E8 03016025 */  or         $t4, $t8, $at
/* C8DEC 800ED9EC 01996825 */  or         $t5, $t4, $t9
/* C8DF0 800ED9F0 AC4D0008 */  sw         $t5, 8($v0)
/* C8DF4 800ED9F4 8E0F0024 */  lw         $t7, 0x24($s0)
/* C8DF8 800ED9F8 8DE40014 */  lw         $a0, 0x14($t7)
/* C8DFC 800ED9FC 0C037228 */  jal        func_800DC8A0
/* C8E00 800EDA00 AFA3005C */   sw        $v1, 0x5c($sp)
/* C8E04 800EDA04 8FAE0030 */  lw         $t6, 0x30($sp)
/* C8E08 800EDA08 8FA9002C */  lw         $t1, 0x2c($sp)
/* C8E0C 800EDA0C 8FA3005C */  lw         $v1, 0x5c($sp)
/* C8E10 800EDA10 ADC20004 */  sw         $v0, 4($t6)
/* C8E14 800EDA14 8E180024 */  lw         $t8, 0x24($s0)
/* C8E18 800EDA18 AF000024 */  sw         $zero, 0x24($t8)
/* C8E1C 800EDA1C 8E0C0018 */  lw         $t4, 0x18($s0)
/* C8E20 800EDA20 0189C821 */  addu       $t9, $t4, $t1
/* C8E24 800EDA24 03316823 */  subu       $t5, $t9, $s1
/* C8E28 800EDA28 1000000D */  b          .L800EDA60
/* C8E2C 800EDA2C AE0D0018 */   sw        $t5, 0x18($s0)
.L800EDA30:
/* C8E30 800EDA30 8E0E0004 */  lw         $t6, 4($s0)
/* C8E34 800EDA34 8D4F0018 */  lw         $t7, 0x18($t2)
/* C8E38 800EDA38 8FB90070 */  lw         $t9, 0x70($sp)
/* C8E3C 800EDA3C 000EC023 */  negu       $t8, $t6
/* C8E40 800EDA40 00186040 */  sll        $t4, $t8, 1
/* C8E44 800EDA44 01402025 */  or         $a0, $t2, $zero
/* C8E48 800EDA48 8FA60068 */  lw         $a2, 0x68($sp)
/* C8E4C 800EDA4C 02203825 */  or         $a3, $s1, $zero
/* C8E50 800EDA50 01EC2821 */  addu       $a1, $t7, $t4
/* C8E54 800EDA54 0C03B5B2 */  jal        func_800ED6C8
/* C8E58 800EDA58 AFB90010 */   sw        $t9, 0x10($sp)
/* C8E5C 800EDA5C 00401825 */  or         $v1, $v0, $zero
.L800EDA60:
/* C8E60 800EDA60 8FBF0024 */  lw         $ra, 0x24($sp)
/* C8E64 800EDA64 8FB0001C */  lw         $s0, 0x1c($sp)
/* C8E68 800EDA68 8FB10020 */  lw         $s1, 0x20($sp)
/* C8E6C 800EDA6C 27BD0060 */  addiu      $sp, $sp, 0x60
/* C8E70 800EDA70 03E00008 */  jr         $ra
/* C8E74 800EDA74 00601025 */   or        $v0, $v1, $zero

glabel func_800EDA78
/* C8E78 800EDA78 24A3FFFE */  addiu      $v1, $a1, -2
/* C8E7C 800EDA7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8E80 800EDA80 306E0007 */  andi       $t6, $v1, 7
/* C8E84 800EDA84 AFBF0014 */  sw         $ra, 0x14($sp)
/* C8E88 800EDA88 2DC10008 */  sltiu      $at, $t6, 8
/* C8E8C 800EDA8C 00803825 */  or         $a3, $a0, $zero
/* C8E90 800EDA90 1020008B */  beqz       $at, .L800EDCC0
/* C8E94 800EDA94 8CC80000 */   lw        $t0, ($a2)
/* C8E98 800EDA98 000E7080 */  sll        $t6, $t6, 2
/* C8E9C 800EDA9C 3C018011 */  lui        $at, %hi(D_801111A0)
/* C8EA0 800EDAA0 002E0821 */  addu       $at, $at, $t6
/* C8EA4 800EDAA4 8C2E11A0 */  lw         $t6, %lo(D_801111A0)($at)
/* C8EA8 800EDAA8 01C00008 */  jr         $t6
/* C8EAC 800EDAAC 00000000 */   nop
/* C8EB0 800EDAB0 2401FFF8 */  addiu      $at, $zero, -8
/* C8EB4 800EDAB4 01017824 */  and        $t7, $t0, $at
/* C8EB8 800EDAB8 8CF80020 */  lw         $t8, 0x20($a3)
/* C8EBC 800EDABC 04610003 */  bgez       $v1, .L800EDACC
/* C8EC0 800EDAC0 0003C8C3 */   sra       $t9, $v1, 3
/* C8EC4 800EDAC4 24610007 */  addiu      $at, $v1, 7
/* C8EC8 800EDAC8 0001C8C3 */  sra        $t9, $at, 3
.L800EDACC:
/* C8ECC 800EDACC 00194880 */  sll        $t1, $t9, 2
/* C8ED0 800EDAD0 01394821 */  addu       $t1, $t1, $t9
/* C8ED4 800EDAD4 000948C0 */  sll        $t1, $t1, 3
/* C8ED8 800EDAD8 03095021 */  addu       $t2, $t8, $t1
/* C8EDC 800EDADC 10000078 */  b          .L800EDCC0
/* C8EE0 800EDAE0 AD4F0000 */   sw        $t7, ($t2)
/* C8EE4 800EDAE4 2401FFF8 */  addiu      $at, $zero, -8
/* C8EE8 800EDAE8 01015824 */  and        $t3, $t0, $at
/* C8EEC 800EDAEC 8CEC0020 */  lw         $t4, 0x20($a3)
/* C8EF0 800EDAF0 04610003 */  bgez       $v1, .L800EDB00
/* C8EF4 800EDAF4 000368C3 */   sra       $t5, $v1, 3
/* C8EF8 800EDAF8 24610007 */  addiu      $at, $v1, 7
/* C8EFC 800EDAFC 000168C3 */  sra        $t5, $at, 3
.L800EDB00:
/* C8F00 800EDB00 000D7080 */  sll        $t6, $t5, 2
/* C8F04 800EDB04 01CD7021 */  addu       $t6, $t6, $t5
/* C8F08 800EDB08 000E70C0 */  sll        $t6, $t6, 3
/* C8F0C 800EDB0C 018EC821 */  addu       $t9, $t4, $t6
/* C8F10 800EDB10 1000006B */  b          .L800EDCC0
/* C8F14 800EDB14 AF2B0004 */   sw        $t3, 4($t9)
/* C8F18 800EDB18 8CF80020 */  lw         $t8, 0x20($a3)
/* C8F1C 800EDB1C 04610003 */  bgez       $v1, .L800EDB2C
/* C8F20 800EDB20 000348C3 */   sra       $t1, $v1, 3
/* C8F24 800EDB24 24610007 */  addiu      $at, $v1, 7
/* C8F28 800EDB28 000148C3 */  sra        $t1, $at, 3
.L800EDB2C:
/* C8F2C 800EDB2C 00097880 */  sll        $t7, $t1, 2
/* C8F30 800EDB30 01E97821 */  addu       $t7, $t7, $t1
/* C8F34 800EDB34 000F78C0 */  sll        $t7, $t7, 3
/* C8F38 800EDB38 030F5021 */  addu       $t2, $t8, $t7
/* C8F3C 800EDB3C 10000060 */  b          .L800EDCC0
/* C8F40 800EDB40 A5480008 */   sh        $t0, 8($t2)
/* C8F44 800EDB44 8CED0020 */  lw         $t5, 0x20($a3)
/* C8F48 800EDB48 04610003 */  bgez       $v1, .L800EDB58
/* C8F4C 800EDB4C 000360C3 */   sra       $t4, $v1, 3
/* C8F50 800EDB50 24610007 */  addiu      $at, $v1, 7
/* C8F54 800EDB54 000160C3 */  sra        $t4, $at, 3
.L800EDB58:
/* C8F58 800EDB58 000C7080 */  sll        $t6, $t4, 2
/* C8F5C 800EDB5C 01CC7021 */  addu       $t6, $t6, $t4
/* C8F60 800EDB60 000E70C0 */  sll        $t6, $t6, 3
/* C8F64 800EDB64 01AE5821 */  addu       $t3, $t5, $t6
/* C8F68 800EDB68 10000055 */  b          .L800EDCC0
/* C8F6C 800EDB6C A568000A */   sh        $t0, 0xa($t3)
/* C8F70 800EDB70 8CF90020 */  lw         $t9, 0x20($a3)
/* C8F74 800EDB74 04610003 */  bgez       $v1, .L800EDB84
/* C8F78 800EDB78 000348C3 */   sra       $t1, $v1, 3
/* C8F7C 800EDB7C 24610007 */  addiu      $at, $v1, 7
/* C8F80 800EDB80 000148C3 */  sra        $t1, $at, 3
.L800EDB84:
/* C8F84 800EDB84 0009C080 */  sll        $t8, $t1, 2
/* C8F88 800EDB88 0309C021 */  addu       $t8, $t8, $t1
/* C8F8C 800EDB8C 0018C0C0 */  sll        $t8, $t8, 3
/* C8F90 800EDB90 03387821 */  addu       $t7, $t9, $t8
/* C8F94 800EDB94 1000004A */  b          .L800EDCC0
/* C8F98 800EDB98 A5E8000C */   sh        $t0, 0xc($t7)
/* C8F9C 800EDB9C 44882000 */  mtc1       $t0, $f4
/* C8FA0 800EDBA0 3C01447A */  lui        $at, 0x447a
/* C8FA4 800EDBA4 44814000 */  mtc1       $at, $f8
/* C8FA8 800EDBA8 468021A0 */  cvt.s.w    $f6, $f4
/* C8FAC 800EDBAC 3C0A8011 */  lui        $t2, %hi(D_80109DA0)
/* C8FB0 800EDBB0 8D4A9DA0 */  lw         $t2, %lo(D_80109DA0)($t2)
/* C8FB4 800EDBB4 8CED0020 */  lw         $t5, 0x20($a3)
/* C8FB8 800EDBB8 8D4C0044 */  lw         $t4, 0x44($t2)
/* C8FBC 800EDBBC 46083283 */  div.s      $f10, $f6, $f8
/* C8FC0 800EDBC0 448C9000 */  mtc1       $t4, $f18
/* C8FC4 800EDBC4 00000000 */  nop
/* C8FC8 800EDBC8 46809121 */  cvt.d.w    $f4, $f18
/* C8FCC 800EDBCC 46005021 */  cvt.d.s    $f0, $f10
/* C8FD0 800EDBD0 46200400 */  add.d      $f16, $f0, $f0
/* C8FD4 800EDBD4 46248183 */  div.d      $f6, $f16, $f4
/* C8FD8 800EDBD8 46203220 */  cvt.s.d    $f8, $f6
/* C8FDC 800EDBDC 04610003 */  bgez       $v1, .L800EDBEC
/* C8FE0 800EDBE0 000370C3 */   sra       $t6, $v1, 3
/* C8FE4 800EDBE4 24610007 */  addiu      $at, $v1, 7
/* C8FE8 800EDBE8 000170C3 */  sra        $t6, $at, 3
.L800EDBEC:
/* C8FEC 800EDBEC 000E5880 */  sll        $t3, $t6, 2
/* C8FF0 800EDBF0 016E5821 */  addu       $t3, $t3, $t6
/* C8FF4 800EDBF4 000B58C0 */  sll        $t3, $t3, 3
/* C8FF8 800EDBF8 01AB4821 */  addu       $t1, $t5, $t3
/* C8FFC 800EDBFC 10000030 */  b          .L800EDCC0
/* C9000 800EDC00 E5280010 */   swc1      $f8, 0x10($t1)
/* C9004 800EDC04 8CF90020 */  lw         $t9, 0x20($a3)
/* C9008 800EDC08 04610003 */  bgez       $v1, .L800EDC18
/* C900C 800EDC0C 0003C0C3 */   sra       $t8, $v1, 3
/* C9010 800EDC10 24610007 */  addiu      $at, $v1, 7
/* C9014 800EDC14 0001C0C3 */  sra        $t8, $at, 3
.L800EDC18:
/* C9018 800EDC18 00187880 */  sll        $t7, $t8, 2
/* C901C 800EDC1C 01F87821 */  addu       $t7, $t7, $t8
/* C9020 800EDC20 000F78C0 */  sll        $t7, $t7, 3
/* C9024 800EDC24 032F1021 */  addu       $v0, $t9, $t7
/* C9028 800EDC28 8C4A0004 */  lw         $t2, 4($v0)
/* C902C 800EDC2C 8C4C0000 */  lw         $t4, ($v0)
/* C9030 800EDC30 44882000 */  mtc1       $t0, $f4
/* C9034 800EDC34 3C0141F0 */  lui        $at, 0x41f0
/* C9038 800EDC38 014C7023 */  subu       $t6, $t2, $t4
/* C903C 800EDC3C 448E5000 */  mtc1       $t6, $f10
/* C9040 800EDC40 468021A0 */  cvt.s.w    $f6, $f4
/* C9044 800EDC44 05C10005 */  bgez       $t6, .L800EDC5C
/* C9048 800EDC48 468054A1 */   cvt.d.w   $f18, $f10
/* C904C 800EDC4C 44818800 */  mtc1       $at, $f17
/* C9050 800EDC50 44808000 */  mtc1       $zero, $f16
/* C9054 800EDC54 00000000 */  nop
/* C9058 800EDC58 46309480 */  add.d      $f18, $f18, $f16
.L800EDC5C:
/* C905C 800EDC5C 3C018011 */  lui        $at, %hi(D_801111C0)
/* C9060 800EDC60 D42A11C0 */  ldc1       $f10, %lo(D_801111C0)($at)
/* C9064 800EDC64 46003221 */  cvt.d.s    $f8, $f6
/* C9068 800EDC68 462A4403 */  div.d      $f16, $f8, $f10
/* C906C 800EDC6C 46309102 */  mul.d      $f4, $f18, $f16
/* C9070 800EDC70 462021A0 */  cvt.s.d    $f6, $f4
/* C9074 800EDC74 10000012 */  b          .L800EDCC0
/* C9078 800EDC78 E446001C */   swc1      $f6, 0x1c($v0)
/* C907C 800EDC7C 04610003 */  bgez       $v1, .L800EDC8C
/* C9080 800EDC80 000310C3 */   sra       $v0, $v1, 3
/* C9084 800EDC84 24610007 */  addiu      $at, $v1, 7
/* C9088 800EDC88 000110C3 */  sra        $v0, $at, 3
.L800EDC8C:
/* C908C 800EDC8C 8CEB0020 */  lw         $t3, 0x20($a3)
/* C9090 800EDC90 00026880 */  sll        $t5, $v0, 2
/* C9094 800EDC94 01A26821 */  addu       $t5, $t5, $v0
/* C9098 800EDC98 000D68C0 */  sll        $t5, $t5, 3
/* C909C 800EDC9C 016D4821 */  addu       $t1, $t3, $t5
/* C90A0 800EDCA0 8D250020 */  lw         $a1, 0x20($t1)
/* C90A4 800EDCA4 50A00007 */  beql       $a1, $zero, .L800EDCC4
/* C90A8 800EDCA8 8FBF0014 */   lw        $ra, 0x14($sp)
/* C90AC 800EDCAC A4A80000 */  sh         $t0, ($a1)
/* C90B0 800EDCB0 8CF80020 */  lw         $t8, 0x20($a3)
/* C90B4 800EDCB4 030DC821 */  addu       $t9, $t8, $t5
/* C90B8 800EDCB8 0C03A41C */  jal        func_800E9070
/* C90BC 800EDCBC 8F240020 */   lw        $a0, 0x20($t9)
.L800EDCC0:
/* C90C0 800EDCC0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800EDCC4:
/* C90C4 800EDCC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C90C8 800EDCC8 00001025 */  or         $v0, $zero, $zero
/* C90CC 800EDCCC 03E00008 */  jr         $ra
/* C90D0 800EDCD0 00000000 */   nop

glabel func_800EDCD4
/* C90D4 800EDCD4 24010001 */  addiu      $at, $zero, 1
/* C90D8 800EDCD8 14A10002 */  bne        $a1, $at, .L800EDCE4
/* C90DC 800EDCDC 00000000 */   nop
/* C90E0 800EDCE0 AC860000 */  sw         $a2, ($a0)
.L800EDCE4:
/* C90E4 800EDCE4 03E00008 */  jr         $ra
/* C90E8 800EDCE8 00001025 */   or        $v0, $zero, $zero

glabel func_800EDCEC
/* C90EC 800EDCEC 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* C90F0 800EDCF0 AFB3002C */  sw         $s3, 0x2c($sp)
/* C90F4 800EDCF4 00809825 */  or         $s3, $a0, $zero
/* C90F8 800EDCF8 AFBF0044 */  sw         $ra, 0x44($sp)
/* C90FC 800EDCFC AFBE0040 */  sw         $fp, 0x40($sp)
/* C9100 800EDD00 AFB7003C */  sw         $s7, 0x3c($sp)
/* C9104 800EDD04 AFB60038 */  sw         $s6, 0x38($sp)
/* C9108 800EDD08 AFB50034 */  sw         $s5, 0x34($sp)
/* C910C 800EDD0C AFB40030 */  sw         $s4, 0x30($sp)
/* C9110 800EDD10 AFB20028 */  sw         $s2, 0x28($sp)
/* C9114 800EDD14 AFB10024 */  sw         $s1, 0x24($sp)
/* C9118 800EDD18 AFB00020 */  sw         $s0, 0x20($sp)
/* C911C 800EDD1C 8C840000 */  lw         $a0, ($a0)
/* C9120 800EDD20 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* C9124 800EDD24 AFA00080 */  sw         $zero, 0x80($sp)
/* C9128 800EDD28 00C0B025 */  or         $s6, $a2, $zero
/* C912C 800EDD2C AFAE0010 */  sw         $t6, 0x10($sp)
/* C9130 800EDD30 8C990004 */  lw         $t9, 4($a0)
/* C9134 800EDD34 0320F809 */  jalr       $t9
/* C9138 800EDD38 00000000 */   nop
/* C913C 800EDD3C 00168840 */  sll        $s1, $s6, 1
/* C9140 800EDD40 3C180C00 */  lui        $t8, 0xc00
/* C9144 800EDD44 3C0A06C0 */  lui        $t2, 0x6c0
/* C9148 800EDD48 3C0B0C00 */  lui        $t3, 0xc00
/* C914C 800EDD4C 3C0C0800 */  lui        $t4, 0x800
/* C9150 800EDD50 3229FFFF */  andi       $t1, $s1, 0xffff
/* C9154 800EDD54 3C0F0800 */  lui        $t7, 0x800
/* C9158 800EDD58 354A06C0 */  ori        $t2, $t2, 0x6c0
/* C915C 800EDD5C 3718DA83 */  ori        $t8, $t8, 0xda83
/* C9160 800EDD60 358C06C0 */  ori        $t4, $t4, 0x6c0
/* C9164 800EDD64 356B5A82 */  ori        $t3, $t3, 0x5a82
/* C9168 800EDD68 AC4F0000 */  sw         $t7, ($v0)
/* C916C 800EDD6C AC490004 */  sw         $t1, 4($v0)
/* C9170 800EDD70 AC580008 */  sw         $t8, 8($v0)
/* C9174 800EDD74 AC4A000C */  sw         $t2, 0xc($v0)
/* C9178 800EDD78 AC4B0010 */  sw         $t3, 0x10($v0)
/* C917C 800EDD7C AC4C0014 */  sw         $t4, 0x14($v0)
/* C9180 800EDD80 8E650018 */  lw         $a1, 0x18($s3)
/* C9184 800EDD84 244D0018 */  addiu      $t5, $v0, 0x18
/* C9188 800EDD88 0000A825 */  or         $s5, $zero, $zero
/* C918C 800EDD8C 24120140 */  addiu      $s2, $zero, 0x140
/* C9190 800EDD90 AFAD0010 */  sw         $t5, 0x10($sp)
/* C9194 800EDD94 AFA90048 */  sw         $t1, 0x48($sp)
/* C9198 800EDD98 AFB10050 */  sw         $s1, 0x50($sp)
/* C919C 800EDD9C 02602025 */  or         $a0, $s3, $zero
/* C91A0 800EDDA0 240606C0 */  addiu      $a2, $zero, 0x6c0
/* C91A4 800EDDA4 0C03B550 */  jal        func_800ED540
/* C91A8 800EDDA8 02C03825 */   or        $a3, $s6, $zero
/* C91AC 800EDDAC 8FA30080 */  lw         $v1, 0x80($sp)
/* C91B0 800EDDB0 3C0E0200 */  lui        $t6, 0x200
/* C91B4 800EDDB4 35CE0800 */  ori        $t6, $t6, 0x800
/* C91B8 800EDDB8 AC4E0000 */  sw         $t6, ($v0)
/* C91BC 800EDDBC AC510004 */  sw         $s1, 4($v0)
/* C91C0 800EDDC0 92790024 */  lbu        $t9, 0x24($s3)
/* C91C4 800EDDC4 24500008 */  addiu      $s0, $v0, 8
/* C91C8 800EDDC8 0000B825 */  or         $s7, $zero, $zero
/* C91CC 800EDDCC 5B200077 */  blezl      $t9, .L800EDFAC
/* C91D0 800EDDD0 8E63001C */   lw        $v1, 0x1c($s3)
/* C91D4 800EDDD4 8E620018 */  lw         $v0, 0x18($s3)
.L800EDDD8:
/* C91D8 800EDDD8 8E6F0020 */  lw         $t7, 0x20($s3)
/* C91DC 800EDDDC 0017C080 */  sll        $t8, $s7, 2
/* C91E0 800EDDE0 0317C021 */  addu       $t8, $t8, $s7
/* C91E4 800EDDE4 0018C0C0 */  sll        $t8, $t8, 3
/* C91E8 800EDDE8 01F88821 */  addu       $s1, $t7, $t8
/* C91EC 800EDDEC 8E2A0000 */  lw         $t2, ($s1)
/* C91F0 800EDDF0 8E2D0004 */  lw         $t5, 4($s1)
/* C91F4 800EDDF4 02602025 */  or         $a0, $s3, $zero
/* C91F8 800EDDF8 000A5823 */  negu       $t3, $t2
/* C91FC 800EDDFC 000B6040 */  sll        $t4, $t3, 1
/* C9200 800EDE00 000D7023 */  negu       $t6, $t5
/* C9204 800EDE04 004CA021 */  addu       $s4, $v0, $t4
/* C9208 800EDE08 000EC840 */  sll        $t9, $t6, 1
/* C920C 800EDE0C 16830009 */  bne        $s4, $v1, .L800EDE34
/* C9210 800EDE10 0059F021 */   addu      $fp, $v0, $t9
/* C9214 800EDE14 02407825 */  or         $t7, $s2, $zero
/* C9218 800EDE18 00159400 */  sll        $s2, $s5, 0x10
/* C921C 800EDE1C 000FAC00 */  sll        $s5, $t7, 0x10
/* C9220 800EDE20 00155403 */  sra        $t2, $s5, 0x10
/* C9224 800EDE24 0012C403 */  sra        $t8, $s2, 0x10
/* C9228 800EDE28 03009025 */  or         $s2, $t8, $zero
/* C922C 800EDE2C 10000007 */  b          .L800EDE4C
/* C9230 800EDE30 0140A825 */   or        $s5, $t2, $zero
.L800EDE34:
/* C9234 800EDE34 02802825 */  or         $a1, $s4, $zero
/* C9238 800EDE38 02A03025 */  or         $a2, $s5, $zero
/* C923C 800EDE3C 02C03825 */  or         $a3, $s6, $zero
/* C9240 800EDE40 0C03B5B2 */  jal        func_800ED6C8
/* C9244 800EDE44 AFB00010 */   sw        $s0, 0x10($sp)
/* C9248 800EDE48 00408025 */  or         $s0, $v0, $zero
.L800EDE4C:
/* C924C 800EDE4C 02602025 */  or         $a0, $s3, $zero
/* C9250 800EDE50 02202825 */  or         $a1, $s1, $zero
/* C9254 800EDE54 02403025 */  or         $a2, $s2, $zero
/* C9258 800EDE58 02C03825 */  or         $a3, $s6, $zero
/* C925C 800EDE5C 0C03B615 */  jal        func_800ED854
/* C9260 800EDE60 AFB00010 */   sw        $s0, 0x10($sp)
/* C9264 800EDE64 86240008 */  lh         $a0, 8($s1)
/* C9268 800EDE68 00408025 */  or         $s0, $v0, $zero
/* C926C 800EDE6C 3C010C00 */  lui        $at, 0xc00
/* C9270 800EDE70 10800014 */  beqz       $a0, .L800EDEC4
/* C9274 800EDE74 308CFFFF */   andi      $t4, $a0, 0xffff
/* C9278 800EDE78 0015CC00 */  sll        $t9, $s5, 0x10
/* C927C 800EDE7C 324FFFFF */  andi       $t7, $s2, 0xffff
/* C9280 800EDE80 032FC025 */  or         $t8, $t9, $t7
/* C9284 800EDE84 01816825 */  or         $t5, $t4, $at
/* C9288 800EDE88 AC4D0000 */  sw         $t5, ($v0)
/* C928C 800EDE8C AC580004 */  sw         $t8, 4($v0)
/* C9290 800EDE90 8E2A0024 */  lw         $t2, 0x24($s1)
/* C9294 800EDE94 24500008 */  addiu      $s0, $v0, 8
/* C9298 800EDE98 5540000B */  bnel       $t2, $zero, .L800EDEC8
/* C929C 800EDE9C 8623000A */   lh        $v1, 0xa($s1)
/* C92A0 800EDEA0 8E2B0020 */  lw         $t3, 0x20($s1)
/* C92A4 800EDEA4 02602025 */  or         $a0, $s3, $zero
/* C92A8 800EDEA8 03C02825 */  or         $a1, $fp, $zero
/* C92AC 800EDEAC 15600005 */  bnez       $t3, .L800EDEC4
/* C92B0 800EDEB0 02403025 */   or        $a2, $s2, $zero
/* C92B4 800EDEB4 02C03825 */  or         $a3, $s6, $zero
/* C92B8 800EDEB8 0C03B550 */  jal        func_800ED540
/* C92BC 800EDEBC AFB00010 */   sw        $s0, 0x10($sp)
/* C92C0 800EDEC0 00408025 */  or         $s0, $v0, $zero
.L800EDEC4:
/* C92C4 800EDEC4 8623000A */  lh         $v1, 0xa($s1)
.L800EDEC8:
/* C92C8 800EDEC8 02001025 */  or         $v0, $s0, $zero
/* C92CC 800EDECC 3C010C00 */  lui        $at, 0xc00
/* C92D0 800EDED0 1060000F */  beqz       $v1, .L800EDF10
/* C92D4 800EDED4 306DFFFF */   andi      $t5, $v1, 0xffff
/* C92D8 800EDED8 00127C00 */  sll        $t7, $s2, 0x10
/* C92DC 800EDEDC 32B8FFFF */  andi       $t8, $s5, 0xffff
/* C92E0 800EDEE0 01F85025 */  or         $t2, $t7, $t8
/* C92E4 800EDEE4 01A17025 */  or         $t6, $t5, $at
/* C92E8 800EDEE8 AC4E0000 */  sw         $t6, ($v0)
/* C92EC 800EDEEC AC4A0004 */  sw         $t2, 4($v0)
/* C92F0 800EDEF0 26100008 */  addiu      $s0, $s0, 8
/* C92F4 800EDEF4 AFB00010 */  sw         $s0, 0x10($sp)
/* C92F8 800EDEF8 02602025 */  or         $a0, $s3, $zero
/* C92FC 800EDEFC 02802825 */  or         $a1, $s4, $zero
/* C9300 800EDF00 02A03025 */  or         $a2, $s5, $zero
/* C9304 800EDF04 0C03B550 */  jal        func_800ED540
/* C9308 800EDF08 02C03825 */   or        $a3, $s6, $zero
/* C930C 800EDF0C 00408025 */  or         $s0, $v0, $zero
.L800EDF10:
/* C9310 800EDF10 8E240020 */  lw         $a0, 0x20($s1)
/* C9314 800EDF14 02402825 */  or         $a1, $s2, $zero
/* C9318 800EDF18 02C03025 */  or         $a2, $s6, $zero
/* C931C 800EDF1C 50800005 */  beql       $a0, $zero, .L800EDF34
/* C9320 800EDF20 8E2B0024 */   lw        $t3, 0x24($s1)
/* C9324 800EDF24 0C03B522 */  jal        func_800ED488
/* C9328 800EDF28 02003825 */   or        $a3, $s0, $zero
/* C932C 800EDF2C 00408025 */  or         $s0, $v0, $zero
/* C9330 800EDF30 8E2B0024 */  lw         $t3, 0x24($s1)
.L800EDF34:
/* C9334 800EDF34 02602025 */  or         $a0, $s3, $zero
/* C9338 800EDF38 03C02825 */  or         $a1, $fp, $zero
/* C933C 800EDF3C 15600005 */  bnez       $t3, .L800EDF54
/* C9340 800EDF40 02403025 */   or        $a2, $s2, $zero
/* C9344 800EDF44 02C03825 */  or         $a3, $s6, $zero
/* C9348 800EDF48 0C03B550 */  jal        func_800ED540
/* C934C 800EDF4C AFB00010 */   sw        $s0, 0x10($sp)
/* C9350 800EDF50 00408025 */  or         $s0, $v0, $zero
.L800EDF54:
/* C9354 800EDF54 8623000C */  lh         $v1, 0xc($s1)
/* C9358 800EDF58 26F70001 */  addiu      $s7, $s7, 1
/* C935C 800EDF5C 00176400 */  sll        $t4, $s7, 0x10
/* C9360 800EDF60 1060000A */  beqz       $v1, .L800EDF8C
/* C9364 800EDF64 000CBC03 */   sra       $s7, $t4, 0x10
/* C9368 800EDF68 02001025 */  or         $v0, $s0, $zero
/* C936C 800EDF6C 306DFFFF */  andi       $t5, $v1, 0xffff
/* C9370 800EDF70 3C010C00 */  lui        $at, 0xc00
/* C9374 800EDF74 00127C00 */  sll        $t7, $s2, 0x10
/* C9378 800EDF78 35F80800 */  ori        $t8, $t7, 0x800
/* C937C 800EDF7C 01A17025 */  or         $t6, $t5, $at
/* C9380 800EDF80 AC4E0000 */  sw         $t6, ($v0)
/* C9384 800EDF84 AC580004 */  sw         $t8, 4($v0)
/* C9388 800EDF88 26100008 */  addiu      $s0, $s0, 8
.L800EDF8C:
/* C938C 800EDF8C 926E0024 */  lbu        $t6, 0x24($s3)
/* C9390 800EDF90 8E2A0004 */  lw         $t2, 4($s1)
/* C9394 800EDF94 8E620018 */  lw         $v0, 0x18($s3)
/* C9398 800EDF98 02EE082A */  slt        $at, $s7, $t6
/* C939C 800EDF9C 000A5840 */  sll        $t3, $t2, 1
/* C93A0 800EDFA0 1420FF8D */  bnez       $at, .L800EDDD8
/* C93A4 800EDFA4 004B1821 */   addu      $v1, $v0, $t3
/* C93A8 800EDFA8 8E63001C */  lw         $v1, 0x1c($s3)
.L800EDFAC:
/* C93AC 800EDFAC 8E790018 */  lw         $t9, 0x18($s3)
/* C93B0 800EDFB0 8FAF0050 */  lw         $t7, 0x50($sp)
/* C93B4 800EDFB4 8E6B0014 */  lw         $t3, 0x14($s3)
/* C93B8 800EDFB8 00035040 */  sll        $t2, $v1, 1
/* C93BC 800EDFBC 032FC021 */  addu       $t8, $t9, $t7
/* C93C0 800EDFC0 016A6021 */  addu       $t4, $t3, $t2
/* C93C4 800EDFC4 0198082B */  sltu       $at, $t4, $t8
/* C93C8 800EDFC8 10200003 */  beqz       $at, .L800EDFD8
/* C93CC 800EDFCC AE780018 */   sw        $t8, 0x18($s3)
/* C93D0 800EDFD0 030A6823 */  subu       $t5, $t8, $t2
/* C93D4 800EDFD4 AE6D0018 */  sw         $t5, 0x18($s3)
.L800EDFD8:
/* C93D8 800EDFD8 3C0E0A00 */  lui        $t6, 0xa00
/* C93DC 800EDFDC 35CE0800 */  ori        $t6, $t6, 0x800
/* C93E0 800EDFE0 02001825 */  or         $v1, $s0, $zero
/* C93E4 800EDFE4 AC6E0000 */  sw         $t6, ($v1)
/* C93E8 800EDFE8 8FB90048 */  lw         $t9, 0x48($sp)
/* C93EC 800EDFEC 3C0106C0 */  lui        $at, 0x6c0
/* C93F0 800EDFF0 26020008 */  addiu      $v0, $s0, 8
/* C93F4 800EDFF4 03217825 */  or         $t7, $t9, $at
/* C93F8 800EDFF8 AC6F0004 */  sw         $t7, 4($v1)
/* C93FC 800EDFFC 8FBF0044 */  lw         $ra, 0x44($sp)
/* C9400 800EE000 8FBE0040 */  lw         $fp, 0x40($sp)
/* C9404 800EE004 8FB7003C */  lw         $s7, 0x3c($sp)
/* C9408 800EE008 8FB60038 */  lw         $s6, 0x38($sp)
/* C940C 800EE00C 8FB50034 */  lw         $s5, 0x34($sp)
/* C9410 800EE010 8FB40030 */  lw         $s4, 0x30($sp)
/* C9414 800EE014 8FB3002C */  lw         $s3, 0x2c($sp)
/* C9418 800EE018 8FB20028 */  lw         $s2, 0x28($sp)
/* C941C 800EE01C 8FB10024 */  lw         $s1, 0x24($sp)
/* C9420 800EE020 8FB00020 */  lw         $s0, 0x20($sp)
/* C9424 800EE024 03E00008 */  jr         $ra
/* C9428 800EE028 27BD00A8 */   addiu     $sp, $sp, 0xa8
/* C942C 800EE02C 00000000 */  nop
