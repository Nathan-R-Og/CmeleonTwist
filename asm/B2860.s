.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D7460
/* B2860 800D7460 27BDFFF8 */  addiu      $sp, $sp, -8
/* B2864 800D7464 AFA40008 */  sw         $a0, 8($sp)
/* B2868 800D7468 AFA5000C */  sw         $a1, 0xc($sp)
/* B286C 800D746C AFA60010 */  sw         $a2, 0x10($sp)
/* B2870 800D7470 AFA70014 */  sw         $a3, 0x14($sp)
/* B2874 800D7474 03E00008 */  jr         $ra
/* B2878 800D7478 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800D747C
/* B287C 800D747C C4840000 */  lwc1       $f4, ($a0)
/* B2880 800D7480 44803800 */  mtc1       $zero, $f7
/* B2884 800D7484 44803000 */  mtc1       $zero, $f6
/* B2888 800D7488 46002021 */  cvt.d.s    $f0, $f4
/* B288C 800D748C 3C018011 */  lui        $at, 0x8011
/* B2890 800D7490 4626003C */  c.lt.d     $f0, $f6
/* B2894 800D7494 00000000 */  nop
/* B2898 800D7498 45000007 */  bc1f       .L800D74B8
/* B289C 800D749C 00000000 */   nop
/* B28A0 800D74A0 3C018011 */  lui        $at, %hi(D_801107E0)
/* B28A4 800D74A4 D42207E0 */  ldc1       $f2, %lo(D_801107E0)($at)
/* B28A8 800D74A8 46220200 */  add.d      $f8, $f0, $f2
/* B28AC 800D74AC 462042A0 */  cvt.s.d    $f10, $f8
/* B28B0 800D74B0 03E00008 */  jr         $ra
/* B28B4 800D74B4 E48A0000 */   swc1      $f10, ($a0)
.L800D74B8:
/* B28B8 800D74B8 D42207E8 */  ldc1       $f2, 0x7e8($at)
/* B28BC 800D74BC 4620103E */  c.le.d     $f2, $f0
/* B28C0 800D74C0 00000000 */  nop
/* B28C4 800D74C4 45000004 */  bc1f       .L800D74D8
/* B28C8 800D74C8 00000000 */   nop
/* B28CC 800D74CC 46220401 */  sub.d      $f16, $f0, $f2
/* B28D0 800D74D0 462084A0 */  cvt.s.d    $f18, $f16
/* B28D4 800D74D4 E4920000 */  swc1       $f18, ($a0)
.L800D74D8:
/* B28D8 800D74D8 03E00008 */  jr         $ra
/* B28DC 800D74DC 00000000 */   nop

glabel func_800D74E0
/* B28E0 800D74E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B28E4 800D74E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B28E8 800D74E8 E7AC0018 */  swc1       $f12, 0x18($sp)
/* B28EC 800D74EC E7AE001C */  swc1       $f14, 0x1c($sp)
/* B28F0 800D74F0 0C035D1F */  jal        func_800D747C
/* B28F4 800D74F4 27A40018 */   addiu     $a0, $sp, 0x18
/* B28F8 800D74F8 0C035D1F */  jal        func_800D747C
/* B28FC 800D74FC 27A4001C */   addiu     $a0, $sp, 0x1c
/* B2900 800D7500 C7AC0018 */  lwc1       $f12, 0x18($sp)
/* B2904 800D7504 C7AE001C */  lwc1       $f14, 0x1c($sp)
/* B2908 800D7508 8FBF0014 */  lw         $ra, 0x14($sp)
/* B290C 800D750C 3C018011 */  lui        $at, 0x8011
/* B2910 800D7510 460E6032 */  c.eq.s     $f12, $f14
/* B2914 800D7514 27BD0018 */  addiu      $sp, $sp, 0x18
/* B2918 800D7518 45000003 */  bc1f       .L800D7528
/* B291C 800D751C 00000000 */   nop
/* B2920 800D7520 10000022 */  b          .L800D75AC
/* B2924 800D7524 00001825 */   or        $v1, $zero, $zero
.L800D7528:
/* B2928 800D7528 D42207F0 */  ldc1       $f2, 0x7f0($at)
/* B292C 800D752C 46006021 */  cvt.d.s    $f0, $f12
/* B2930 800D7530 4622003C */  c.lt.d     $f0, $f2
/* B2934 800D7534 00000000 */  nop
/* B2938 800D7538 45020010 */  bc1fl      .L800D757C
/* B293C 800D753C 46220201 */   sub.d     $f8, $f0, $f2
/* B2940 800D7540 460E603C */  c.lt.s     $f12, $f14
/* B2944 800D7544 00000000 */  nop
/* B2948 800D7548 45000009 */  bc1f       .L800D7570
/* B294C 800D754C 00000000 */   nop
/* B2950 800D7550 46220100 */  add.d      $f4, $f0, $f2
/* B2954 800D7554 460071A1 */  cvt.d.s    $f6, $f14
/* B2958 800D7558 4624303E */  c.le.d     $f6, $f4
/* B295C 800D755C 00000000 */  nop
/* B2960 800D7560 45000003 */  bc1f       .L800D7570
/* B2964 800D7564 00000000 */   nop
/* B2968 800D7568 10000010 */  b          .L800D75AC
/* B296C 800D756C 24030001 */   addiu     $v1, $zero, 1
.L800D7570:
/* B2970 800D7570 1000000E */  b          .L800D75AC
/* B2974 800D7574 2403FFFF */   addiu     $v1, $zero, -1
/* B2978 800D7578 46220201 */  sub.d      $f8, $f0, $f2
.L800D757C:
/* B297C 800D757C 24030001 */  addiu      $v1, $zero, 1
/* B2980 800D7580 460072A1 */  cvt.d.s    $f10, $f14
/* B2984 800D7584 462A403C */  c.lt.d     $f8, $f10
/* B2988 800D7588 00000000 */  nop
/* B298C 800D758C 45000007 */  bc1f       .L800D75AC
/* B2990 800D7590 00000000 */   nop
/* B2994 800D7594 460C703E */  c.le.s     $f14, $f12
/* B2998 800D7598 00000000 */  nop
/* B299C 800D759C 45000003 */  bc1f       .L800D75AC
/* B29A0 800D75A0 00000000 */   nop
/* B29A4 800D75A4 10000001 */  b          .L800D75AC
/* B29A8 800D75A8 2403FFFF */   addiu     $v1, $zero, -1
.L800D75AC:
/* B29AC 800D75AC 03E00008 */  jr         $ra
/* B29B0 800D75B0 00601025 */   or        $v0, $v1, $zero

glabel func_800D75B4
/* B29B4 800D75B4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* B29B8 800D75B8 24AF0001 */  addiu      $t7, $a1, 1
/* B29BC 800D75BC AFB00018 */  sw         $s0, 0x18($sp)
/* B29C0 800D75C0 2DE10005 */  sltiu      $at, $t7, 5
/* B29C4 800D75C4 00808025 */  or         $s0, $a0, $zero
/* B29C8 800D75C8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B29CC 800D75CC 102000EC */  beqz       $at, .L800D7980
/* B29D0 800D75D0 AFA50084 */   sw        $a1, 0x84($sp)
/* B29D4 800D75D4 000F7880 */  sll        $t7, $t7, 2
/* B29D8 800D75D8 3C018011 */  lui        $at, %hi(D_801107F8)
/* B29DC 800D75DC 002F0821 */  addu       $at, $at, $t7
/* B29E0 800D75E0 8C2F07F8 */  lw         $t7, %lo(D_801107F8)($at)
/* B29E4 800D75E4 01E00008 */  jr         $t7
/* B29E8 800D75E8 00000000 */   nop
/* B29EC 800D75EC 0C02BAD2 */  jal        func_800AEB48
/* B29F0 800D75F0 02002025 */   or        $a0, $s0, $zero
/* B29F4 800D75F4 100000E3 */  b          .L800D7984
/* B29F8 800D75F8 8FAD0084 */   lw        $t5, 0x84($sp)
/* B29FC 800D75FC C6040014 */  lwc1       $f4, 0x14($s0)
/* B2A00 800D7600 C6060008 */  lwc1       $f6, 8($s0)
/* B2A04 800D7604 27B80070 */  addiu      $t8, $sp, 0x70
/* B2A08 800D7608 26020044 */  addiu      $v0, $s0, 0x44
/* B2A0C 800D760C 46062201 */  sub.s      $f8, $f4, $f6
/* B2A10 800D7610 E7A80070 */  swc1       $f8, 0x70($sp)
/* B2A14 800D7614 C604000C */  lwc1       $f4, 0xc($s0)
/* B2A18 800D7618 C60A0018 */  lwc1       $f10, 0x18($s0)
/* B2A1C 800D761C 46045181 */  sub.s      $f6, $f10, $f4
/* B2A20 800D7620 E7A60074 */  swc1       $f6, 0x74($sp)
/* B2A24 800D7624 C60A0010 */  lwc1       $f10, 0x10($s0)
/* B2A28 800D7628 C608001C */  lwc1       $f8, 0x1c($s0)
/* B2A2C 800D762C 460A4101 */  sub.s      $f4, $f8, $f10
/* B2A30 800D7630 E7A40078 */  swc1       $f4, 0x78($sp)
/* B2A34 800D7634 C6080008 */  lwc1       $f8, 8($s0)
/* B2A38 800D7638 C6060020 */  lwc1       $f6, 0x20($s0)
/* B2A3C 800D763C 8F010000 */  lw         $at, ($t8)
/* B2A40 800D7640 C604000C */  lwc1       $f4, 0xc($s0)
/* B2A44 800D7644 46083081 */  sub.s      $f2, $f6, $f8
/* B2A48 800D7648 C60A0024 */  lwc1       $f10, 0x24($s0)
/* B2A4C 800D764C C6080010 */  lwc1       $f8, 0x10($s0)
/* B2A50 800D7650 C6060028 */  lwc1       $f6, 0x28($s0)
/* B2A54 800D7654 AC410000 */  sw         $at, ($v0)
/* B2A58 800D7658 8F090004 */  lw         $t1, 4($t8)
/* B2A5C 800D765C 46045381 */  sub.s      $f14, $f10, $f4
/* B2A60 800D7660 AC490004 */  sw         $t1, 4($v0)
/* B2A64 800D7664 8F010008 */  lw         $at, 8($t8)
/* B2A68 800D7668 46083401 */  sub.s      $f16, $f6, $f8
/* B2A6C 800D766C AC410008 */  sw         $at, 8($v0)
/* B2A70 800D7670 C60A0048 */  lwc1       $f10, 0x48($s0)
/* B2A74 800D7674 C6120044 */  lwc1       $f18, 0x44($s0)
/* B2A78 800D7678 C600004C */  lwc1       $f0, 0x4c($s0)
/* B2A7C 800D767C E7AA002C */  swc1       $f10, 0x2c($sp)
/* B2A80 800D7680 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* B2A84 800D7684 E7B0006C */  swc1       $f16, 0x6c($sp)
/* B2A88 800D7688 E7AE0068 */  swc1       $f14, 0x68($sp)
/* B2A8C 800D768C 46042182 */  mul.s      $f6, $f4, $f4
/* B2A90 800D7690 E7A20064 */  swc1       $f2, 0x64($sp)
/* B2A94 800D7694 AFA20040 */  sw         $v0, 0x40($sp)
/* B2A98 800D7698 46129202 */  mul.s      $f8, $f18, $f18
/* B2A9C 800D769C 46064280 */  add.s      $f10, $f8, $f6
/* B2AA0 800D76A0 46000102 */  mul.s      $f4, $f0, $f0
/* B2AA4 800D76A4 0C036C2C */  jal        func_800DB0B0
/* B2AA8 800D76A8 460A2300 */   add.s     $f12, $f4, $f10
/* B2AAC 800D76AC 44809800 */  mtc1       $zero, $f19
/* B2AB0 800D76B0 44809000 */  mtc1       $zero, $f18
/* B2AB4 800D76B4 46000221 */  cvt.d.s    $f8, $f0
/* B2AB8 800D76B8 8FA20040 */  lw         $v0, 0x40($sp)
/* B2ABC 800D76BC 46289032 */  c.eq.d     $f18, $f8
/* B2AC0 800D76C0 C7A20064 */  lwc1       $f2, 0x64($sp)
/* B2AC4 800D76C4 C7AE0068 */  lwc1       $f14, 0x68($sp)
/* B2AC8 800D76C8 C7B0006C */  lwc1       $f16, 0x6c($sp)
/* B2ACC 800D76CC 45000003 */  bc1f       .L800D76DC
/* B2AD0 800D76D0 240AFFFF */   addiu     $t2, $zero, -1
/* B2AD4 800D76D4 100000AC */  b          .L800D7988
/* B2AD8 800D76D8 AE0A0000 */   sw        $t2, ($s0)
.L800D76DC:
/* B2ADC 800D76DC C4460000 */  lwc1       $f6, ($v0)
/* B2AE0 800D76E0 C44A0004 */  lwc1       $f10, 4($v0)
/* B2AE4 800D76E4 46003103 */  div.s      $f4, $f6, $f0
/* B2AE8 800D76E8 C4460008 */  lwc1       $f6, 8($v0)
/* B2AEC 800D76EC 46005203 */  div.s      $f8, $f10, $f0
/* B2AF0 800D76F0 E4440000 */  swc1       $f4, ($v0)
/* B2AF4 800D76F4 46003103 */  div.s      $f4, $f6, $f0
/* B2AF8 800D76F8 E4480004 */  swc1       $f8, 4($v0)
/* B2AFC 800D76FC E4440008 */  swc1       $f4, 8($v0)
/* B2B00 800D7700 C7AA0074 */  lwc1       $f10, 0x74($sp)
/* B2B04 800D7704 C7A60078 */  lwc1       $f6, 0x78($sp)
/* B2B08 800D7708 46105202 */  mul.s      $f8, $f10, $f16
/* B2B0C 800D770C 00000000 */  nop
/* B2B10 800D7710 460E3102 */  mul.s      $f4, $f6, $f14
/* B2B14 800D7714 46044281 */  sub.s      $f10, $f8, $f4
/* B2B18 800D7718 E44A0018 */  swc1       $f10, 0x18($v0)
/* B2B1C 800D771C C7A60078 */  lwc1       $f6, 0x78($sp)
/* B2B20 800D7720 C7A40070 */  lwc1       $f4, 0x70($sp)
/* B2B24 800D7724 46023202 */  mul.s      $f8, $f6, $f2
/* B2B28 800D7728 00000000 */  nop
/* B2B2C 800D772C 46102282 */  mul.s      $f10, $f4, $f16
/* B2B30 800D7730 460A4181 */  sub.s      $f6, $f8, $f10
/* B2B34 800D7734 E446001C */  swc1       $f6, 0x1c($v0)
/* B2B38 800D7738 C7A40070 */  lwc1       $f4, 0x70($sp)
/* B2B3C 800D773C C7AA0074 */  lwc1       $f10, 0x74($sp)
/* B2B40 800D7740 460E2202 */  mul.s      $f8, $f4, $f14
/* B2B44 800D7744 C44E001C */  lwc1       $f14, 0x1c($v0)
/* B2B48 800D7748 46025182 */  mul.s      $f6, $f10, $f2
/* B2B4C 800D774C C4420018 */  lwc1       $f2, 0x18($v0)
/* B2B50 800D7750 46021282 */  mul.s      $f10, $f2, $f2
/* B2B54 800D7754 46064101 */  sub.s      $f4, $f8, $f6
/* B2B58 800D7758 460E7202 */  mul.s      $f8, $f14, $f14
/* B2B5C 800D775C E4440020 */  swc1       $f4, 0x20($v0)
/* B2B60 800D7760 C4500020 */  lwc1       $f16, 0x20($v0)
/* B2B64 800D7764 AFA20040 */  sw         $v0, 0x40($sp)
/* B2B68 800D7768 46108102 */  mul.s      $f4, $f16, $f16
/* B2B6C 800D776C 46085180 */  add.s      $f6, $f10, $f8
/* B2B70 800D7770 0C036C2C */  jal        func_800DB0B0
/* B2B74 800D7774 46062300 */   add.s     $f12, $f4, $f6
/* B2B78 800D7778 44809800 */  mtc1       $zero, $f19
/* B2B7C 800D777C 44809000 */  mtc1       $zero, $f18
/* B2B80 800D7780 460002A1 */  cvt.d.s    $f10, $f0
/* B2B84 800D7784 8FA20040 */  lw         $v0, 0x40($sp)
/* B2B88 800D7788 462A9032 */  c.eq.d     $f18, $f10
/* B2B8C 800D778C 240BFFFF */  addiu      $t3, $zero, -1
/* B2B90 800D7790 45020004 */  bc1fl      .L800D77A4
/* B2B94 800D7794 C4480018 */   lwc1      $f8, 0x18($v0)
/* B2B98 800D7798 1000007B */  b          .L800D7988
/* B2B9C 800D779C AE0B0000 */   sw        $t3, ($s0)
/* B2BA0 800D77A0 C4480018 */  lwc1       $f8, 0x18($v0)
.L800D77A4:
/* B2BA4 800D77A4 C446001C */  lwc1       $f6, 0x1c($v0)
/* B2BA8 800D77A8 C44C0008 */  lwc1       $f12, 8($v0)
/* B2BAC 800D77AC 46004103 */  div.s      $f4, $f8, $f0
/* B2BB0 800D77B0 C4480020 */  lwc1       $f8, 0x20($v0)
/* B2BB4 800D77B4 C4520004 */  lwc1       $f18, 4($v0)
/* B2BB8 800D77B8 46003283 */  div.s      $f10, $f6, $f0
/* B2BBC 800D77BC E4440018 */  swc1       $f4, 0x18($v0)
/* B2BC0 800D77C0 46004103 */  div.s      $f4, $f8, $f0
/* B2BC4 800D77C4 E44A001C */  swc1       $f10, 0x1c($v0)
/* B2BC8 800D77C8 C44E001C */  lwc1       $f14, 0x1c($v0)
/* B2BCC 800D77CC 460C7182 */  mul.s      $f6, $f14, $f12
/* B2BD0 800D77D0 E4440020 */  swc1       $f4, 0x20($v0)
/* B2BD4 800D77D4 C4500020 */  lwc1       $f16, 0x20($v0)
/* B2BD8 800D77D8 C4440000 */  lwc1       $f4, ($v0)
/* B2BDC 800D77DC 46109282 */  mul.s      $f10, $f18, $f16
/* B2BE0 800D77E0 460A3201 */  sub.s      $f8, $f6, $f10
/* B2BE4 800D77E4 E448000C */  swc1       $f8, 0xc($v0)
/* B2BE8 800D77E8 E7A40024 */  swc1       $f4, 0x24($sp)
/* B2BEC 800D77EC C7A60024 */  lwc1       $f6, 0x24($sp)
/* B2BF0 800D77F0 C4420018 */  lwc1       $f2, 0x18($v0)
/* B2BF4 800D77F4 46068282 */  mul.s      $f10, $f16, $f6
/* B2BF8 800D77F8 00000000 */  nop
/* B2BFC 800D77FC 46026202 */  mul.s      $f8, $f12, $f2
/* B2C00 800D7800 46085101 */  sub.s      $f4, $f10, $f8
/* B2C04 800D7804 46121182 */  mul.s      $f6, $f2, $f18
/* B2C08 800D7808 E4440010 */  swc1       $f4, 0x10($v0)
/* B2C0C 800D780C C7AA0024 */  lwc1       $f10, 0x24($sp)
/* B2C10 800D7810 460E5202 */  mul.s      $f8, $f10, $f14
/* B2C14 800D7814 46083101 */  sub.s      $f4, $f6, $f8
/* B2C18 800D7818 10000059 */  b          .L800D7980
/* B2C1C 800D781C E4440014 */   swc1      $f4, 0x14($v0)
/* B2C20 800D7820 C60A0014 */  lwc1       $f10, 0x14($s0)
/* B2C24 800D7824 C6060008 */  lwc1       $f6, 8($s0)
/* B2C28 800D7828 46065201 */  sub.s      $f8, $f10, $f6
/* B2C2C 800D782C E7A80070 */  swc1       $f8, 0x70($sp)
/* B2C30 800D7830 C60A000C */  lwc1       $f10, 0xc($s0)
/* B2C34 800D7834 C6040018 */  lwc1       $f4, 0x18($s0)
/* B2C38 800D7838 460A2181 */  sub.s      $f6, $f4, $f10
/* B2C3C 800D783C E7A60074 */  swc1       $f6, 0x74($sp)
/* B2C40 800D7840 C6040010 */  lwc1       $f4, 0x10($s0)
/* B2C44 800D7844 C608001C */  lwc1       $f8, 0x1c($s0)
/* B2C48 800D7848 46044281 */  sub.s      $f10, $f8, $f4
/* B2C4C 800D784C E7AA0078 */  swc1       $f10, 0x78($sp)
/* B2C50 800D7850 C6080008 */  lwc1       $f8, 8($s0)
/* B2C54 800D7854 C6060020 */  lwc1       $f6, 0x20($s0)
/* B2C58 800D7858 C60A000C */  lwc1       $f10, 0xc($s0)
/* B2C5C 800D785C C6040024 */  lwc1       $f4, 0x24($s0)
/* B2C60 800D7860 46083081 */  sub.s      $f2, $f6, $f8
/* B2C64 800D7864 C6080010 */  lwc1       $f8, 0x10($s0)
/* B2C68 800D7868 C6060028 */  lwc1       $f6, 0x28($s0)
/* B2C6C 800D786C 460A2381 */  sub.s      $f14, $f4, $f10
/* B2C70 800D7870 C6040044 */  lwc1       $f4, 0x44($s0)
/* B2C74 800D7874 46083401 */  sub.s      $f16, $f6, $f8
/* B2C78 800D7878 46041282 */  mul.s      $f10, $f2, $f4
/* B2C7C 800D787C C6060048 */  lwc1       $f6, 0x48($s0)
/* B2C80 800D7880 46067202 */  mul.s      $f8, $f14, $f6
/* B2C84 800D7884 C606004C */  lwc1       $f6, 0x4c($s0)
/* B2C88 800D7888 46085100 */  add.s      $f4, $f10, $f8
/* B2C8C 800D788C 46103282 */  mul.s      $f10, $f6, $f16
/* B2C90 800D7890 46045200 */  add.s      $f8, $f10, $f4
/* B2C94 800D7894 E7A80050 */  swc1       $f8, 0x50($sp)
/* B2C98 800D7898 C6060050 */  lwc1       $f6, 0x50($s0)
/* B2C9C 800D789C C6040054 */  lwc1       $f4, 0x54($s0)
/* B2CA0 800D78A0 46061282 */  mul.s      $f10, $f2, $f6
/* B2CA4 800D78A4 00000000 */  nop
/* B2CA8 800D78A8 46047202 */  mul.s      $f8, $f14, $f4
/* B2CAC 800D78AC C6040058 */  lwc1       $f4, 0x58($s0)
/* B2CB0 800D78B0 46085180 */  add.s      $f6, $f10, $f8
/* B2CB4 800D78B4 46102282 */  mul.s      $f10, $f4, $f16
/* B2CB8 800D78B8 C7A80070 */  lwc1       $f8, 0x70($sp)
/* B2CBC 800D78BC 46084102 */  mul.s      $f4, $f8, $f8
/* B2CC0 800D78C0 46065480 */  add.s      $f18, $f10, $f6
/* B2CC4 800D78C4 C7AA0074 */  lwc1       $f10, 0x74($sp)
/* B2CC8 800D78C8 460A5182 */  mul.s      $f6, $f10, $f10
/* B2CCC 800D78CC C7AA0078 */  lwc1       $f10, 0x78($sp)
/* B2CD0 800D78D0 E7B20054 */  swc1       $f18, 0x54($sp)
/* B2CD4 800D78D4 46062200 */  add.s      $f8, $f4, $f6
/* B2CD8 800D78D8 460A5102 */  mul.s      $f4, $f10, $f10
/* B2CDC 800D78DC 0C036C2C */  jal        func_800DB0B0
/* B2CE0 800D78E0 46044300 */   add.s     $f12, $f8, $f4
/* B2CE4 800D78E4 C7B20054 */  lwc1       $f18, 0x54($sp)
/* B2CE8 800D78E8 44805800 */  mtc1       $zero, $f11
/* B2CEC 800D78EC 44805000 */  mtc1       $zero, $f10
/* B2CF0 800D78F0 46120182 */  mul.s      $f6, $f0, $f18
/* B2CF4 800D78F4 3C048011 */  lui        $a0, %hi(D_80110720)
/* B2CF8 800D78F8 C7B00050 */  lwc1       $f16, 0x50($sp)
/* B2CFC 800D78FC 240CFFFF */  addiu      $t4, $zero, -1
/* B2D00 800D7900 24840720 */  addiu      $a0, $a0, %lo(D_80110720)
/* B2D04 800D7904 3C013FF0 */  lui        $at, 0x3ff0
/* B2D08 800D7908 46003321 */  cvt.d.s    $f12, $f6
/* B2D0C 800D790C 462C5032 */  c.eq.d     $f10, $f12
/* B2D10 800D7910 00000000 */  nop
/* B2D14 800D7914 45020006 */  bc1fl      .L800D7930
/* B2D18 800D7918 44814800 */   mtc1      $at, $f9
/* B2D1C 800D791C 0C035D18 */  jal        func_800D7460
/* B2D20 800D7920 AE0C0000 */   sw        $t4, ($s0)
/* B2D24 800D7924 10000019 */  b          .L800D798C
/* B2D28 800D7928 8FBF001C */   lw        $ra, 0x1c($sp)
/* B2D2C 800D792C 44814800 */  mtc1       $at, $f9
.L800D7930:
/* B2D30 800D7930 44804000 */  mtc1       $zero, $f8
/* B2D34 800D7934 46008287 */  neg.s      $f10, $f16
/* B2D38 800D7938 44807000 */  mtc1       $zero, $f14
/* B2D3C 800D793C 462C4103 */  div.d      $f4, $f8, $f12
/* B2D40 800D7940 E6000084 */  swc1       $f0, 0x84($s0)
/* B2D44 800D7944 E610008C */  swc1       $f16, 0x8c($s0)
/* B2D48 800D7948 E6120090 */  swc1       $f18, 0x90($s0)
/* B2D4C 800D794C E60E0070 */  swc1       $f14, 0x70($s0)
/* B2D50 800D7950 E60E007C */  swc1       $f14, 0x7c($s0)
/* B2D54 800D7954 E60E0080 */  swc1       $f14, 0x80($s0)
/* B2D58 800D7958 E60E0088 */  swc1       $f14, 0x88($s0)
/* B2D5C 800D795C 462020A0 */  cvt.s.d    $f2, $f4
/* B2D60 800D7960 46029182 */  mul.s      $f6, $f18, $f2
/* B2D64 800D7964 00000000 */  nop
/* B2D68 800D7968 46025202 */  mul.s      $f8, $f10, $f2
/* B2D6C 800D796C 00000000 */  nop
/* B2D70 800D7970 46020102 */  mul.s      $f4, $f0, $f2
/* B2D74 800D7974 E606006C */  swc1       $f6, 0x6c($s0)
/* B2D78 800D7978 E6080074 */  swc1       $f8, 0x74($s0)
/* B2D7C 800D797C E6040078 */  swc1       $f4, 0x78($s0)
.L800D7980:
/* B2D80 800D7980 8FAD0084 */  lw         $t5, 0x84($sp)
.L800D7984:
/* B2D84 800D7984 AE0D0000 */  sw         $t5, ($s0)
.L800D7988:
/* B2D88 800D7988 8FBF001C */  lw         $ra, 0x1c($sp)
.L800D798C:
/* B2D8C 800D798C 8FB00018 */  lw         $s0, 0x18($sp)
/* B2D90 800D7990 27BD0080 */  addiu      $sp, $sp, 0x80
/* B2D94 800D7994 03E00008 */  jr         $ra
/* B2D98 800D7998 00000000 */   nop

glabel func_800D799C
/* B2D9C 800D799C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2DA0 800D79A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2DA4 800D79A4 AFA60020 */  sw         $a2, 0x20($sp)
/* B2DA8 800D79A8 8C8E0000 */  lw         $t6, ($a0)
/* B2DAC 800D79AC 3C048011 */  lui        $a0, %hi(D_8011074C)
/* B2DB0 800D79B0 01C5082A */  slt        $at, $t6, $a1
/* B2DB4 800D79B4 50200008 */  beql       $at, $zero, .L800D79D8
/* B2DB8 800D79B8 8FBF0014 */   lw        $ra, 0x14($sp)
/* B2DBC 800D79BC 0C035D18 */  jal        func_800D7460
/* B2DC0 800D79C0 2484074C */   addiu     $a0, $a0, %lo(D_8011074C)
/* B2DC4 800D79C4 3C048011 */  lui        $a0, %hi(D_8011077C)
/* B2DC8 800D79C8 2484077C */  addiu      $a0, $a0, %lo(D_8011077C)
/* B2DCC 800D79CC 0C035D18 */  jal        func_800D7460
/* B2DD0 800D79D0 8FA50020 */   lw        $a1, 0x20($sp)
/* B2DD4 800D79D4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800D79D8:
/* B2DD8 800D79D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* B2DDC 800D79DC 03E00008 */  jr         $ra
/* B2DE0 800D79E0 00000000 */   nop

glabel func_800D79E4
/* B2DE4 800D79E4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B2DE8 800D79E8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B2DEC 800D79EC AFB20020 */  sw         $s2, 0x20($sp)
/* B2DF0 800D79F0 AFB1001C */  sw         $s1, 0x1c($sp)
/* B2DF4 800D79F4 AFB00018 */  sw         $s0, 0x18($sp)
/* B2DF8 800D79F8 8C820000 */  lw         $v0, ($a0)
/* B2DFC 800D79FC 00A08825 */  or         $s1, $a1, $zero
/* B2E00 800D7A00 00809025 */  or         $s2, $a0, $zero
/* B2E04 800D7A04 0045082A */  slt        $at, $v0, $a1
/* B2E08 800D7A08 1020000A */  beqz       $at, .L800D7A34
/* B2E0C 800D7A0C 24500001 */   addiu     $s0, $v0, 1
/* B2E10 800D7A10 00B0082A */  slt        $at, $a1, $s0
/* B2E14 800D7A14 14200007 */  bnez       $at, .L800D7A34
/* B2E18 800D7A18 02402025 */   or        $a0, $s2, $zero
.L800D7A1C:
/* B2E1C 800D7A1C 0C035D6D */  jal        func_800D75B4
/* B2E20 800D7A20 02002825 */   or        $a1, $s0, $zero
/* B2E24 800D7A24 26100001 */  addiu      $s0, $s0, 1
/* B2E28 800D7A28 0230082A */  slt        $at, $s1, $s0
/* B2E2C 800D7A2C 5020FFFB */  beql       $at, $zero, .L800D7A1C
/* B2E30 800D7A30 02402025 */   or        $a0, $s2, $zero
.L800D7A34:
/* B2E34 800D7A34 8FBF0024 */  lw         $ra, 0x24($sp)
/* B2E38 800D7A38 8FB00018 */  lw         $s0, 0x18($sp)
/* B2E3C 800D7A3C 8FB1001C */  lw         $s1, 0x1c($sp)
/* B2E40 800D7A40 8FB20020 */  lw         $s2, 0x20($sp)
/* B2E44 800D7A44 03E00008 */  jr         $ra
/* B2E48 800D7A48 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800D7A4C
/* B2E4C 800D7A4C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B2E50 800D7A50 AFA60040 */  sw         $a2, 0x40($sp)
/* B2E54 800D7A54 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2E58 800D7A58 AFA40038 */  sw         $a0, 0x38($sp)
/* B2E5C 800D7A5C AFA5003C */  sw         $a1, 0x3c($sp)
/* B2E60 800D7A60 3C068011 */  lui        $a2, %hi(D_8011078C)
/* B2E64 800D7A64 8FA40048 */  lw         $a0, 0x48($sp)
/* B2E68 800D7A68 AFA70044 */  sw         $a3, 0x44($sp)
/* B2E6C 800D7A6C 24C6078C */  addiu      $a2, $a2, %lo(D_8011078C)
/* B2E70 800D7A70 0C035E67 */  jal        func_800D799C
/* B2E74 800D7A74 24050002 */   addiu     $a1, $zero, 2
/* B2E78 800D7A78 8FA40048 */  lw         $a0, 0x48($sp)
/* B2E7C 800D7A7C C7A40040 */  lwc1       $f4, 0x40($sp)
/* B2E80 800D7A80 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* B2E84 800D7A84 C4860048 */  lwc1       $f6, 0x48($a0)
/* B2E88 800D7A88 C4800044 */  lwc1       $f0, 0x44($a0)
/* B2E8C 800D7A8C C7B00044 */  lwc1       $f16, 0x44($sp)
/* B2E90 800D7A90 46062202 */  mul.s      $f8, $f4, $f6
/* B2E94 800D7A94 C4820050 */  lwc1       $f2, 0x50($a0)
/* B2E98 800D7A98 27AE002C */  addiu      $t6, $sp, 0x2c
/* B2E9C 800D7A9C 46009282 */  mul.s      $f10, $f18, $f0
/* B2EA0 800D7AA0 8FA20038 */  lw         $v0, 0x38($sp)
/* B2EA4 800D7AA4 46085180 */  add.s      $f6, $f10, $f8
/* B2EA8 800D7AA8 C48A004C */  lwc1       $f10, 0x4c($a0)
/* B2EAC 800D7AAC 46105202 */  mul.s      $f8, $f10, $f16
/* B2EB0 800D7AB0 C48A0054 */  lwc1       $f10, 0x54($a0)
/* B2EB4 800D7AB4 46064300 */  add.s      $f12, $f8, $f6
/* B2EB8 800D7AB8 460A2202 */  mul.s      $f8, $f4, $f10
/* B2EBC 800D7ABC C48A0058 */  lwc1       $f10, 0x58($a0)
/* B2EC0 800D7AC0 46029182 */  mul.s      $f6, $f18, $f2
/* B2EC4 800D7AC4 46083100 */  add.s      $f4, $f6, $f8
/* B2EC8 800D7AC8 46105182 */  mul.s      $f6, $f10, $f16
/* B2ECC 800D7ACC 46043380 */  add.s      $f14, $f6, $f4
/* B2ED0 800D7AD0 460E1202 */  mul.s      $f8, $f2, $f14
/* B2ED4 800D7AD4 00000000 */  nop
/* B2ED8 800D7AD8 46006282 */  mul.s      $f10, $f12, $f0
/* B2EDC 800D7ADC 460A4180 */  add.s      $f6, $f8, $f10
/* B2EE0 800D7AE0 E7A6002C */  swc1       $f6, 0x2c($sp)
/* B2EE4 800D7AE4 C4840054 */  lwc1       $f4, 0x54($a0)
/* B2EE8 800D7AE8 C48A0048 */  lwc1       $f10, 0x48($a0)
/* B2EEC 800D7AEC 460E2202 */  mul.s      $f8, $f4, $f14
/* B2EF0 800D7AF0 00000000 */  nop
/* B2EF4 800D7AF4 460A6182 */  mul.s      $f6, $f12, $f10
/* B2EF8 800D7AF8 46064100 */  add.s      $f4, $f8, $f6
/* B2EFC 800D7AFC E7A40030 */  swc1       $f4, 0x30($sp)
/* B2F00 800D7B00 C48A0058 */  lwc1       $f10, 0x58($a0)
/* B2F04 800D7B04 C486004C */  lwc1       $f6, 0x4c($a0)
/* B2F08 800D7B08 460E5202 */  mul.s      $f8, $f10, $f14
/* B2F0C 800D7B0C 00000000 */  nop
/* B2F10 800D7B10 46066102 */  mul.s      $f4, $f12, $f6
/* B2F14 800D7B14 46044280 */  add.s      $f10, $f8, $f4
/* B2F18 800D7B18 E7AA0034 */  swc1       $f10, 0x34($sp)
/* B2F1C 800D7B1C 8DC10000 */  lw         $at, ($t6)
/* B2F20 800D7B20 AC410000 */  sw         $at, ($v0)
/* B2F24 800D7B24 8DD90004 */  lw         $t9, 4($t6)
/* B2F28 800D7B28 AC590004 */  sw         $t9, 4($v0)
/* B2F2C 800D7B2C 8DC10008 */  lw         $at, 8($t6)
/* B2F30 800D7B30 AC410008 */  sw         $at, 8($v0)
/* B2F34 800D7B34 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2F38 800D7B38 27BD0038 */  addiu      $sp, $sp, 0x38
/* B2F3C 800D7B3C 03E00008 */  jr         $ra
/* B2F40 800D7B40 00000000 */   nop

glabel func_800D7B44
/* B2F44 800D7B44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B2F48 800D7B48 AFA60030 */  sw         $a2, 0x30($sp)
/* B2F4C 800D7B4C AFBF0014 */  sw         $ra, 0x14($sp)
/* B2F50 800D7B50 AFA40028 */  sw         $a0, 0x28($sp)
/* B2F54 800D7B54 AFA5002C */  sw         $a1, 0x2c($sp)
/* B2F58 800D7B58 3C068011 */  lui        $a2, %hi(D_801107A0)
/* B2F5C 800D7B5C 8FA40038 */  lw         $a0, 0x38($sp)
/* B2F60 800D7B60 AFA70034 */  sw         $a3, 0x34($sp)
/* B2F64 800D7B64 24C607A0 */  addiu      $a2, $a2, %lo(D_801107A0)
/* B2F68 800D7B68 0C035E67 */  jal        func_800D799C
/* B2F6C 800D7B6C 24050002 */   addiu     $a1, $zero, 2
/* B2F70 800D7B70 8FA40038 */  lw         $a0, 0x38($sp)
/* B2F74 800D7B74 C7A0002C */  lwc1       $f0, 0x2c($sp)
/* B2F78 800D7B78 C7A20030 */  lwc1       $f2, 0x30($sp)
/* B2F7C 800D7B7C C4840008 */  lwc1       $f4, 8($a0)
/* B2F80 800D7B80 C486000C */  lwc1       $f6, 0xc($a0)
/* B2F84 800D7B84 C48A0044 */  lwc1       $f10, 0x44($a0)
/* B2F88 800D7B88 46040001 */  sub.s      $f0, $f0, $f4
/* B2F8C 800D7B8C C7AC0034 */  lwc1       $f12, 0x34($sp)
/* B2F90 800D7B90 C4880010 */  lwc1       $f8, 0x10($a0)
/* B2F94 800D7B94 46061081 */  sub.s      $f2, $f2, $f6
/* B2F98 800D7B98 460A0402 */  mul.s      $f16, $f0, $f10
/* B2F9C 800D7B9C C4920048 */  lwc1       $f18, 0x48($a0)
/* B2FA0 800D7BA0 46086301 */  sub.s      $f12, $f12, $f8
/* B2FA4 800D7BA4 C488004C */  lwc1       $f8, 0x4c($a0)
/* B2FA8 800D7BA8 46121102 */  mul.s      $f4, $f2, $f18
/* B2FAC 800D7BAC 27AE001C */  addiu      $t6, $sp, 0x1c
/* B2FB0 800D7BB0 8FA20028 */  lw         $v0, 0x28($sp)
/* B2FB4 800D7BB4 460C4282 */  mul.s      $f10, $f8, $f12
/* B2FB8 800D7BB8 46048180 */  add.s      $f6, $f16, $f4
/* B2FBC 800D7BBC 46065480 */  add.s      $f18, $f10, $f6
/* B2FC0 800D7BC0 E7B2001C */  swc1       $f18, 0x1c($sp)
/* B2FC4 800D7BC4 C4900050 */  lwc1       $f16, 0x50($a0)
/* B2FC8 800D7BC8 C4880054 */  lwc1       $f8, 0x54($a0)
/* B2FCC 800D7BCC C4920058 */  lwc1       $f18, 0x58($a0)
/* B2FD0 800D7BD0 46100102 */  mul.s      $f4, $f0, $f16
/* B2FD4 800D7BD4 00000000 */  nop
/* B2FD8 800D7BD8 46081282 */  mul.s      $f10, $f2, $f8
/* B2FDC 800D7BDC 460A2180 */  add.s      $f6, $f4, $f10
/* B2FE0 800D7BE0 460C9402 */  mul.s      $f16, $f18, $f12
/* B2FE4 800D7BE4 46068200 */  add.s      $f8, $f16, $f6
/* B2FE8 800D7BE8 E7A80020 */  swc1       $f8, 0x20($sp)
/* B2FEC 800D7BEC C484005C */  lwc1       $f4, 0x5c($a0)
/* B2FF0 800D7BF0 C4920060 */  lwc1       $f18, 0x60($a0)
/* B2FF4 800D7BF4 C4880064 */  lwc1       $f8, 0x64($a0)
/* B2FF8 800D7BF8 46040282 */  mul.s      $f10, $f0, $f4
/* B2FFC 800D7BFC 00000000 */  nop
/* B3000 800D7C00 46121402 */  mul.s      $f16, $f2, $f18
/* B3004 800D7C04 46105180 */  add.s      $f6, $f10, $f16
/* B3008 800D7C08 460C4102 */  mul.s      $f4, $f8, $f12
/* B300C 800D7C0C 46062480 */  add.s      $f18, $f4, $f6
/* B3010 800D7C10 E7B20024 */  swc1       $f18, 0x24($sp)
/* B3014 800D7C14 8DC10000 */  lw         $at, ($t6)
/* B3018 800D7C18 AC410000 */  sw         $at, ($v0)
/* B301C 800D7C1C 8DD90004 */  lw         $t9, 4($t6)
/* B3020 800D7C20 AC590004 */  sw         $t9, 4($v0)
/* B3024 800D7C24 8DC10008 */  lw         $at, 8($t6)
/* B3028 800D7C28 AC410008 */  sw         $at, 8($v0)
/* B302C 800D7C2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3030 800D7C30 27BD0028 */  addiu      $sp, $sp, 0x28
/* B3034 800D7C34 03E00008 */  jr         $ra
/* B3038 800D7C38 00000000 */   nop

glabel func_800D7C3C
/* B303C 800D7C3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B3040 800D7C40 AFA60030 */  sw         $a2, 0x30($sp)
/* B3044 800D7C44 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3048 800D7C48 AFA40028 */  sw         $a0, 0x28($sp)
/* B304C 800D7C4C AFA5002C */  sw         $a1, 0x2c($sp)
/* B3050 800D7C50 3C068011 */  lui        $a2, %hi(D_801107B0)
/* B3054 800D7C54 8FA40038 */  lw         $a0, 0x38($sp)
/* B3058 800D7C58 AFA70034 */  sw         $a3, 0x34($sp)
/* B305C 800D7C5C 24C607B0 */  addiu      $a2, $a2, %lo(D_801107B0)
/* B3060 800D7C60 0C035E67 */  jal        func_800D799C
/* B3064 800D7C64 24050002 */   addiu     $a1, $zero, 2
/* B3068 800D7C68 8FA40038 */  lw         $a0, 0x38($sp)
/* B306C 800D7C6C C7A2002C */  lwc1       $f2, 0x2c($sp)
/* B3070 800D7C70 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* B3074 800D7C74 C4840044 */  lwc1       $f4, 0x44($a0)
/* B3078 800D7C78 C4880050 */  lwc1       $f8, 0x50($a0)
/* B307C 800D7C7C C7A00034 */  lwc1       $f0, 0x34($sp)
/* B3080 800D7C80 46041182 */  mul.s      $f6, $f2, $f4
/* B3084 800D7C84 C492005C */  lwc1       $f18, 0x5c($a0)
/* B3088 800D7C88 27AE001C */  addiu      $t6, $sp, 0x1c
/* B308C 800D7C8C 46086282 */  mul.s      $f10, $f12, $f8
/* B3090 800D7C90 8FA20028 */  lw         $v0, 0x28($sp)
/* B3094 800D7C94 46009102 */  mul.s      $f4, $f18, $f0
/* B3098 800D7C98 460A3400 */  add.s      $f16, $f6, $f10
/* B309C 800D7C9C 46102200 */  add.s      $f8, $f4, $f16
/* B30A0 800D7CA0 E7A8001C */  swc1       $f8, 0x1c($sp)
/* B30A4 800D7CA4 C4860048 */  lwc1       $f6, 0x48($a0)
/* B30A8 800D7CA8 C4920054 */  lwc1       $f18, 0x54($a0)
/* B30AC 800D7CAC 46061282 */  mul.s      $f10, $f2, $f6
/* B30B0 800D7CB0 C4860060 */  lwc1       $f6, 0x60($a0)
/* B30B4 800D7CB4 46126102 */  mul.s      $f4, $f12, $f18
/* B30B8 800D7CB8 46045400 */  add.s      $f16, $f10, $f4
/* B30BC 800D7CBC 46003482 */  mul.s      $f18, $f6, $f0
/* B30C0 800D7CC0 46109280 */  add.s      $f10, $f18, $f16
/* B30C4 800D7CC4 E7AA0020 */  swc1       $f10, 0x20($sp)
/* B30C8 800D7CC8 C484004C */  lwc1       $f4, 0x4c($a0)
/* B30CC 800D7CCC C4920058 */  lwc1       $f18, 0x58($a0)
/* B30D0 800D7CD0 46041182 */  mul.s      $f6, $f2, $f4
/* B30D4 800D7CD4 00000000 */  nop
/* B30D8 800D7CD8 46126402 */  mul.s      $f16, $f12, $f18
/* B30DC 800D7CDC C4920064 */  lwc1       $f18, 0x64($a0)
/* B30E0 800D7CE0 46103100 */  add.s      $f4, $f6, $f16
/* B30E4 800D7CE4 46009182 */  mul.s      $f6, $f18, $f0
/* B30E8 800D7CE8 46043400 */  add.s      $f16, $f6, $f4
/* B30EC 800D7CEC E7B00024 */  swc1       $f16, 0x24($sp)
/* B30F0 800D7CF0 C4920008 */  lwc1       $f18, 8($a0)
/* B30F4 800D7CF4 46124180 */  add.s      $f6, $f8, $f18
/* B30F8 800D7CF8 E7A6001C */  swc1       $f6, 0x1c($sp)
/* B30FC 800D7CFC C484000C */  lwc1       $f4, 0xc($a0)
/* B3100 800D7D00 46045200 */  add.s      $f8, $f10, $f4
/* B3104 800D7D04 E7A80020 */  swc1       $f8, 0x20($sp)
/* B3108 800D7D08 C4920010 */  lwc1       $f18, 0x10($a0)
/* B310C 800D7D0C 46128180 */  add.s      $f6, $f16, $f18
/* B3110 800D7D10 E7A60024 */  swc1       $f6, 0x24($sp)
/* B3114 800D7D14 8DC10000 */  lw         $at, ($t6)
/* B3118 800D7D18 AC410000 */  sw         $at, ($v0)
/* B311C 800D7D1C 8DD90004 */  lw         $t9, 4($t6)
/* B3120 800D7D20 AC590004 */  sw         $t9, 4($v0)
/* B3124 800D7D24 8DC10008 */  lw         $at, 8($t6)
/* B3128 800D7D28 AC410008 */  sw         $at, 8($v0)
/* B312C 800D7D2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3130 800D7D30 27BD0028 */  addiu      $sp, $sp, 0x28
/* B3134 800D7D34 03E00008 */  jr         $ra
/* B3138 800D7D38 00000000 */   nop

glabel func_800D7D3C
/* B313C 800D7D3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3140 800D7D40 AFA60020 */  sw         $a2, 0x20($sp)
/* B3144 800D7D44 AFBF0014 */  sw         $ra, 0x14($sp)
/* B3148 800D7D48 AFA40018 */  sw         $a0, 0x18($sp)
/* B314C 800D7D4C AFA5001C */  sw         $a1, 0x1c($sp)
/* B3150 800D7D50 3C068011 */  lui        $a2, %hi(D_801107C0)
/* B3154 800D7D54 24C607C0 */  addiu      $a2, $a2, %lo(D_801107C0)
/* B3158 800D7D58 24050003 */  addiu      $a1, $zero, 3
/* B315C 800D7D5C 00E02025 */  or         $a0, $a3, $zero
/* B3160 800D7D60 0C035E67 */  jal        func_800D799C
/* B3164 800D7D64 AFA70024 */   sw        $a3, 0x24($sp)
/* B3168 800D7D68 8FA70024 */  lw         $a3, 0x24($sp)
/* B316C 800D7D6C C7AC001C */  lwc1       $f12, 0x1c($sp)
/* B3170 800D7D70 C7AE0018 */  lwc1       $f14, 0x18($sp)
/* B3174 800D7D74 C4E40074 */  lwc1       $f4, 0x74($a3)
/* B3178 800D7D78 C4E8006C */  lwc1       $f8, 0x6c($a3)
/* B317C 800D7D7C C4F20078 */  lwc1       $f18, 0x78($a3)
/* B3180 800D7D80 460C2182 */  mul.s      $f6, $f4, $f12
/* B3184 800D7D84 3C018011 */  lui        $at, %hi(D_80110810)
/* B3188 800D7D88 D4300810 */  ldc1       $f16, %lo(D_80110810)($at)
/* B318C 800D7D8C 460E4282 */  mul.s      $f10, $f8, $f14
/* B3190 800D7D90 C4E80070 */  lwc1       $f8, 0x70($a3)
/* B3194 800D7D94 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3198 800D7D98 460C9102 */  mul.s      $f4, $f18, $f12
/* B319C 800D7D9C 460A3000 */  add.s      $f0, $f6, $f10
/* B31A0 800D7DA0 460E4182 */  mul.s      $f6, $f8, $f14
/* B31A4 800D7DA4 460002A1 */  cvt.d.s    $f10, $f0
/* B31A8 800D7DA8 4630503C */  c.lt.d     $f10, $f16
/* B31AC 800D7DAC 46062080 */  add.s      $f2, $f4, $f6
/* B31B0 800D7DB0 45020004 */  bc1fl      .L800D7DC4
/* B31B4 800D7DB4 460014A1 */   cvt.d.s   $f18, $f2
/* B31B8 800D7DB8 10000013 */  b          .L800D7E08
/* B31BC 800D7DBC 00001025 */   or        $v0, $zero, $zero
/* B31C0 800D7DC0 460014A1 */  cvt.d.s    $f18, $f2
.L800D7DC4:
/* B31C4 800D7DC4 4630903C */  c.lt.d     $f18, $f16
/* B31C8 800D7DC8 00000000 */  nop
/* B31CC 800D7DCC 45020004 */  bc1fl      .L800D7DE0
/* B31D0 800D7DD0 46020100 */   add.s     $f4, $f0, $f2
/* B31D4 800D7DD4 1000000C */  b          .L800D7E08
/* B31D8 800D7DD8 00001025 */   or        $v0, $zero, $zero
/* B31DC 800D7DDC 46020100 */  add.s      $f4, $f0, $f2
.L800D7DE0:
/* B31E0 800D7DE0 3C018011 */  lui        $at, %hi(D_80110818)
/* B31E4 800D7DE4 D4280818 */  ldc1       $f8, %lo(D_80110818)($at)
/* B31E8 800D7DE8 24020001 */  addiu      $v0, $zero, 1
/* B31EC 800D7DEC 460021A1 */  cvt.d.s    $f6, $f4
/* B31F0 800D7DF0 4626403C */  c.lt.d     $f8, $f6
/* B31F4 800D7DF4 00000000 */  nop
/* B31F8 800D7DF8 45000003 */  bc1f       .L800D7E08
/* B31FC 800D7DFC 00000000 */   nop
/* B3200 800D7E00 10000001 */  b          .L800D7E08
/* B3204 800D7E04 00001025 */   or        $v0, $zero, $zero
.L800D7E08:
/* B3208 800D7E08 03E00008 */  jr         $ra
/* B320C 800D7E0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800D7E10
/* B3210 800D7E10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3214 800D7E14 AFA60020 */  sw         $a2, 0x20($sp)
/* B3218 800D7E18 AFBF0014 */  sw         $ra, 0x14($sp)
/* B321C 800D7E1C AFA40018 */  sw         $a0, 0x18($sp)
/* B3220 800D7E20 AFA5001C */  sw         $a1, 0x1c($sp)
/* B3224 800D7E24 3C068011 */  lui        $a2, %hi(D_801107D0)
/* B3228 800D7E28 24C607D0 */  addiu      $a2, $a2, %lo(D_801107D0)
/* B322C 800D7E2C 24050002 */  addiu      $a1, $zero, 2
/* B3230 800D7E30 00E02025 */  or         $a0, $a3, $zero
/* B3234 800D7E34 0C035E67 */  jal        func_800D799C
/* B3238 800D7E38 AFA70024 */   sw        $a3, 0x24($sp)
/* B323C 800D7E3C 8FA70024 */  lw         $a3, 0x24($sp)
/* B3240 800D7E40 C7A20018 */  lwc1       $f2, 0x18($sp)
/* B3244 800D7E44 C7AC001C */  lwc1       $f12, 0x1c($sp)
/* B3248 800D7E48 C4E40008 */  lwc1       $f4, 8($a3)
/* B324C 800D7E4C C4E6000C */  lwc1       $f6, 0xc($a3)
/* B3250 800D7E50 C4EA005C */  lwc1       $f10, 0x5c($a3)
/* B3254 800D7E54 46041081 */  sub.s      $f2, $f2, $f4
/* B3258 800D7E58 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* B325C 800D7E5C C4E80010 */  lwc1       $f8, 0x10($a3)
/* B3260 800D7E60 46066301 */  sub.s      $f12, $f12, $f6
/* B3264 800D7E64 460A1482 */  mul.s      $f18, $f2, $f10
/* B3268 800D7E68 C4E40060 */  lwc1       $f4, 0x60($a3)
/* B326C 800D7E6C 46087381 */  sub.s      $f14, $f14, $f8
/* B3270 800D7E70 C4EA0064 */  lwc1       $f10, 0x64($a3)
/* B3274 800D7E74 46046182 */  mul.s      $f6, $f12, $f4
/* B3278 800D7E78 3C01BFF0 */  lui        $at, 0xbff0
/* B327C 800D7E7C 44819800 */  mtc1       $at, $f19
/* B3280 800D7E80 460E5102 */  mul.s      $f4, $f10, $f14
/* B3284 800D7E84 3C013FF0 */  lui        $at, 0x3ff0
/* B3288 800D7E88 8FBF0014 */  lw         $ra, 0x14($sp)
/* B328C 800D7E8C 46069200 */  add.s      $f8, $f18, $f6
/* B3290 800D7E90 44809000 */  mtc1       $zero, $f18
/* B3294 800D7E94 46082400 */  add.s      $f16, $f4, $f8
/* B3298 800D7E98 46008021 */  cvt.d.s    $f0, $f16
/* B329C 800D7E9C 4632003C */  c.lt.d     $f0, $f18
/* B32A0 800D7EA0 00000000 */  nop
/* B32A4 800D7EA4 45020004 */  bc1fl      .L800D7EB8
/* B32A8 800D7EA8 44813800 */   mtc1      $at, $f7
/* B32AC 800D7EAC 1000000A */  b          .L800D7ED8
/* B32B0 800D7EB0 00001025 */   or        $v0, $zero, $zero
/* B32B4 800D7EB4 44813800 */  mtc1       $at, $f7
.L800D7EB8:
/* B32B8 800D7EB8 44803000 */  mtc1       $zero, $f6
/* B32BC 800D7EBC 24020001 */  addiu      $v0, $zero, 1
/* B32C0 800D7EC0 4620303C */  c.lt.d     $f6, $f0
/* B32C4 800D7EC4 00000000 */  nop
/* B32C8 800D7EC8 45000003 */  bc1f       .L800D7ED8
/* B32CC 800D7ECC 00000000 */   nop
/* B32D0 800D7ED0 10000001 */  b          .L800D7ED8
/* B32D4 800D7ED4 00001025 */   or        $v0, $zero, $zero
.L800D7ED8:
/* B32D8 800D7ED8 03E00008 */  jr         $ra
/* B32DC 800D7EDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800D7EE0
/* B32E0 800D7EE0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B32E4 800D7EE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B32E8 800D7EE8 AFA40030 */  sw         $a0, 0x30($sp)
/* B32EC 800D7EEC AFA50034 */  sw         $a1, 0x34($sp)
/* B32F0 800D7EF0 AFA60038 */  sw         $a2, 0x38($sp)
/* B32F4 800D7EF4 AFA7003C */  sw         $a3, 0x3c($sp)
/* B32F8 800D7EF8 0C036B60 */  jal        func_800DAD80
/* B32FC 800D7EFC C7AC0040 */   lwc1      $f12, 0x40($sp)
/* B3300 800D7F00 C7AC0040 */  lwc1       $f12, 0x40($sp)
/* B3304 800D7F04 0C036C30 */  jal        func_800DB0C0
/* B3308 800D7F08 E7A00020 */   swc1      $f0, 0x20($sp)
/* B330C 800D7F0C 8FA20044 */  lw         $v0, 0x44($sp)
/* B3310 800D7F10 C7A20020 */  lwc1       $f2, 0x20($sp)
/* B3314 800D7F14 27AF0034 */  addiu      $t7, $sp, 0x34
/* B3318 800D7F18 1040000C */  beqz       $v0, .L800D7F4C
/* B331C 800D7F1C 27A80024 */   addiu     $t0, $sp, 0x24
/* B3320 800D7F20 24010001 */  addiu      $at, $zero, 1
/* B3324 800D7F24 10410011 */  beq        $v0, $at, .L800D7F6C
/* B3328 800D7F28 C7AE0038 */   lwc1      $f14, 0x38($sp)
/* B332C 800D7F2C 24010002 */  addiu      $at, $zero, 2
/* B3330 800D7F30 1041001B */  beq        $v0, $at, .L800D7FA0
/* B3334 800D7F34 C7B0003C */   lwc1      $f16, 0x3c($sp)
/* B3338 800D7F38 24010003 */  addiu      $at, $zero, 3
/* B333C 800D7F3C 10410025 */  beq        $v0, $at, .L800D7FD4
/* B3340 800D7F40 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* B3344 800D7F44 10000030 */  b          .L800D8008
/* B3348 800D7F48 8FA20030 */   lw        $v0, 0x30($sp)
.L800D7F4C:
/* B334C 800D7F4C 8DE10000 */  lw         $at, ($t7)
/* B3350 800D7F50 27AE0024 */  addiu      $t6, $sp, 0x24
/* B3354 800D7F54 ADC10000 */  sw         $at, ($t6)
/* B3358 800D7F58 8DF90004 */  lw         $t9, 4($t7)
/* B335C 800D7F5C ADD90004 */  sw         $t9, 4($t6)
/* B3360 800D7F60 8DE10008 */  lw         $at, 8($t7)
/* B3364 800D7F64 10000027 */  b          .L800D8004
/* B3368 800D7F68 ADC10008 */   sw        $at, 8($t6)
.L800D7F6C:
/* B336C 800D7F6C 460E0102 */  mul.s      $f4, $f0, $f14
/* B3370 800D7F70 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* B3374 800D7F74 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* B3378 800D7F78 46101182 */  mul.s      $f6, $f2, $f16
/* B337C 800D7F7C E7AC0024 */  swc1       $f12, 0x24($sp)
/* B3380 800D7F80 460E1282 */  mul.s      $f10, $f2, $f14
/* B3384 800D7F84 00000000 */  nop
/* B3388 800D7F88 46100482 */  mul.s      $f18, $f0, $f16
/* B338C 800D7F8C 46062201 */  sub.s      $f8, $f4, $f6
/* B3390 800D7F90 E7A80028 */  swc1       $f8, 0x28($sp)
/* B3394 800D7F94 46125100 */  add.s      $f4, $f10, $f18
/* B3398 800D7F98 1000001A */  b          .L800D8004
/* B339C 800D7F9C E7A4002C */   swc1      $f4, 0x2c($sp)
.L800D7FA0:
/* B33A0 800D7FA0 46101182 */  mul.s      $f6, $f2, $f16
/* B33A4 800D7FA4 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* B33A8 800D7FA8 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* B33AC 800D7FAC 460C0202 */  mul.s      $f8, $f0, $f12
/* B33B0 800D7FB0 E7AE0028 */  swc1       $f14, 0x28($sp)
/* B33B4 800D7FB4 46100482 */  mul.s      $f18, $f0, $f16
/* B33B8 800D7FB8 00000000 */  nop
/* B33BC 800D7FBC 460C1102 */  mul.s      $f4, $f2, $f12
/* B33C0 800D7FC0 46083280 */  add.s      $f10, $f6, $f8
/* B33C4 800D7FC4 E7AA0024 */  swc1       $f10, 0x24($sp)
/* B33C8 800D7FC8 46049181 */  sub.s      $f6, $f18, $f4
/* B33CC 800D7FCC 1000000D */  b          .L800D8004
/* B33D0 800D7FD0 E7A6002C */   swc1      $f6, 0x2c($sp)
.L800D7FD4:
/* B33D4 800D7FD4 460C0202 */  mul.s      $f8, $f0, $f12
/* B33D8 800D7FD8 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* B33DC 800D7FDC C7B0003C */  lwc1       $f16, 0x3c($sp)
/* B33E0 800D7FE0 460E1282 */  mul.s      $f10, $f2, $f14
/* B33E4 800D7FE4 E7B0002C */  swc1       $f16, 0x2c($sp)
/* B33E8 800D7FE8 460C1102 */  mul.s      $f4, $f2, $f12
/* B33EC 800D7FEC 00000000 */  nop
/* B33F0 800D7FF0 460E0182 */  mul.s      $f6, $f0, $f14
/* B33F4 800D7FF4 460A4481 */  sub.s      $f18, $f8, $f10
/* B33F8 800D7FF8 E7B20024 */  swc1       $f18, 0x24($sp)
/* B33FC 800D7FFC 46062200 */  add.s      $f8, $f4, $f6
/* B3400 800D8000 E7A80028 */  swc1       $f8, 0x28($sp)
.L800D8004:
/* B3404 800D8004 8FA20030 */  lw         $v0, 0x30($sp)
.L800D8008:
/* B3408 800D8008 8D010000 */  lw         $at, ($t0)
/* B340C 800D800C AC410000 */  sw         $at, ($v0)
/* B3410 800D8010 8D0B0004 */  lw         $t3, 4($t0)
/* B3414 800D8014 AC4B0004 */  sw         $t3, 4($v0)
/* B3418 800D8018 8D010008 */  lw         $at, 8($t0)
/* B341C 800D801C AC410008 */  sw         $at, 8($v0)
/* B3420 800D8020 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3424 800D8024 27BD0030 */  addiu      $sp, $sp, 0x30
/* B3428 800D8028 03E00008 */  jr         $ra
/* B342C 800D802C 00000000 */   nop

glabel func_800D8030
/* B3430 800D8030 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B3434 800D8034 AFA40018 */  sw         $a0, 0x18($sp)
/* B3438 800D8038 AFA70024 */  sw         $a3, 0x24($sp)
/* B343C 800D803C C7A60024 */  lwc1       $f6, 0x24($sp)
/* B3440 800D8040 C7A40018 */  lwc1       $f4, 0x18($sp)
/* B3444 800D8044 AFA5001C */  sw         $a1, 0x1c($sp)
/* B3448 800D8048 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* B344C 800D804C 46062001 */  sub.s      $f0, $f4, $f6
/* B3450 800D8050 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* B3454 800D8054 AFA60020 */  sw         $a2, 0x20($sp)
/* B3458 800D8058 C7B00020 */  lwc1       $f16, 0x20($sp)
/* B345C 800D805C 460A4081 */  sub.s      $f2, $f8, $f10
/* B3460 800D8060 46000102 */  mul.s      $f4, $f0, $f0
/* B3464 800D8064 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* B3468 800D8068 AFBF0014 */  sw         $ra, 0x14($sp)
/* B346C 800D806C 46021182 */  mul.s      $f6, $f2, $f2
/* B3470 800D8070 46128381 */  sub.s      $f14, $f16, $f18
/* B3474 800D8074 460E7282 */  mul.s      $f10, $f14, $f14
/* B3478 800D8078 46062200 */  add.s      $f8, $f4, $f6
/* B347C 800D807C 0C036C2C */  jal        func_800DB0B0
/* B3480 800D8080 460A4300 */   add.s     $f12, $f8, $f10
/* B3484 800D8084 C7B00030 */  lwc1       $f16, 0x30($sp)
/* B3488 800D8088 8FBF0014 */  lw         $ra, 0x14($sp)
/* B348C 800D808C 00001825 */  or         $v1, $zero, $zero
/* B3490 800D8090 4610003C */  c.lt.s     $f0, $f16
/* B3494 800D8094 27BD0018 */  addiu      $sp, $sp, 0x18
/* B3498 800D8098 45000003 */  bc1f       .L800D80A8
/* B349C 800D809C 00000000 */   nop
/* B34A0 800D80A0 10000001 */  b          .L800D80A8
/* B34A4 800D80A4 24030001 */   addiu     $v1, $zero, 1
.L800D80A8:
/* B34A8 800D80A8 03E00008 */  jr         $ra
/* B34AC 800D80AC 00601025 */   or        $v0, $v1, $zero

glabel func_800D80B0
/* B34B0 800D80B0 AFA40000 */  sw         $a0, ($sp)
/* B34B4 800D80B4 AFA7000C */  sw         $a3, 0xc($sp)
/* B34B8 800D80B8 C7A6000C */  lwc1       $f6, 0xc($sp)
/* B34BC 800D80BC C7A40000 */  lwc1       $f4, ($sp)
/* B34C0 800D80C0 AFA50004 */  sw         $a1, 4($sp)
/* B34C4 800D80C4 AFA60008 */  sw         $a2, 8($sp)
/* B34C8 800D80C8 46062032 */  c.eq.s     $f4, $f6
/* B34CC 800D80CC C7A80004 */  lwc1       $f8, 4($sp)
/* B34D0 800D80D0 C7AA0010 */  lwc1       $f10, 0x10($sp)
/* B34D4 800D80D4 00001825 */  or         $v1, $zero, $zero
/* B34D8 800D80D8 4500000C */  bc1f       .L800D810C
/* B34DC 800D80DC 00000000 */   nop
/* B34E0 800D80E0 460A4032 */  c.eq.s     $f8, $f10
/* B34E4 800D80E4 C7B00008 */  lwc1       $f16, 8($sp)
/* B34E8 800D80E8 C7B20014 */  lwc1       $f18, 0x14($sp)
/* B34EC 800D80EC 45000007 */  bc1f       .L800D810C
/* B34F0 800D80F0 00000000 */   nop
/* B34F4 800D80F4 46128032 */  c.eq.s     $f16, $f18
/* B34F8 800D80F8 00000000 */  nop
/* B34FC 800D80FC 45000003 */  bc1f       .L800D810C
/* B3500 800D8100 00000000 */   nop
/* B3504 800D8104 03E00008 */  jr         $ra
/* B3508 800D8108 24020001 */   addiu     $v0, $zero, 1
.L800D810C:
/* B350C 800D810C 03E00008 */  jr         $ra
/* B3510 800D8110 00601025 */   or        $v0, $v1, $zero

glabel func_800D8114
/* B3514 800D8114 AFA40000 */  sw         $a0, ($sp)
/* B3518 800D8118 AFA7000C */  sw         $a3, 0xc($sp)
/* B351C 800D811C C7A6000C */  lwc1       $f6, 0xc($sp)
/* B3520 800D8120 C7A40000 */  lwc1       $f4, ($sp)
/* B3524 800D8124 AFA50004 */  sw         $a1, 4($sp)
/* B3528 800D8128 AFA60008 */  sw         $a2, 8($sp)
/* B352C 800D812C 46062032 */  c.eq.s     $f4, $f6
/* B3530 800D8130 C7A80004 */  lwc1       $f8, 4($sp)
/* B3534 800D8134 C7AA0010 */  lwc1       $f10, 0x10($sp)
/* B3538 800D8138 00001825 */  or         $v1, $zero, $zero
/* B353C 800D813C 4500000C */  bc1f       .L800D8170
/* B3540 800D8140 00000000 */   nop
/* B3544 800D8144 460A4032 */  c.eq.s     $f8, $f10
/* B3548 800D8148 C7B00008 */  lwc1       $f16, 8($sp)
/* B354C 800D814C C7B20014 */  lwc1       $f18, 0x14($sp)
/* B3550 800D8150 45000007 */  bc1f       .L800D8170
/* B3554 800D8154 00000000 */   nop
/* B3558 800D8158 46128032 */  c.eq.s     $f16, $f18
/* B355C 800D815C 00000000 */  nop
/* B3560 800D8160 45000003 */  bc1f       .L800D8170
/* B3564 800D8164 00000000 */   nop
/* B3568 800D8168 03E00008 */  jr         $ra
/* B356C 800D816C 24020001 */   addiu     $v0, $zero, 1
.L800D8170:
/* B3570 800D8170 03E00008 */  jr         $ra
/* B3574 800D8174 00601025 */   or        $v0, $v1, $zero

glabel func_800D8178
/* B3578 800D8178 44856000 */  mtc1       $a1, $f12
/* B357C 800D817C 44867000 */  mtc1       $a2, $f14
/* B3580 800D8180 AFA7000C */  sw         $a3, 0xc($sp)
/* B3584 800D8184 E48C0000 */  swc1       $f12, ($a0)
/* B3588 800D8188 E48E0004 */  swc1       $f14, 4($a0)
/* B358C 800D818C C7A4000C */  lwc1       $f4, 0xc($sp)
/* B3590 800D8190 03E00008 */  jr         $ra
/* B3594 800D8194 E4840008 */   swc1      $f4, 8($a0)

glabel func_800D8198
/* B3598 800D8198 44800000 */  mtc1       $zero, $f0
/* B359C 800D819C 00000000 */  nop
/* B35A0 800D81A0 E4800000 */  swc1       $f0, ($a0)
/* B35A4 800D81A4 E4800004 */  swc1       $f0, 4($a0)
/* B35A8 800D81A8 03E00008 */  jr         $ra
/* B35AC 800D81AC E4800008 */   swc1      $f0, 8($a0)

glabel func_800D81B0
/* B35B0 800D81B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B35B4 800D81B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B35B8 800D81B8 C4800000 */  lwc1       $f0, ($a0)
/* B35BC 800D81BC C4820004 */  lwc1       $f2, 4($a0)
/* B35C0 800D81C0 C48E0008 */  lwc1       $f14, 8($a0)
/* B35C4 800D81C4 46000102 */  mul.s      $f4, $f0, $f0
/* B35C8 800D81C8 AFA40020 */  sw         $a0, 0x20($sp)
/* B35CC 800D81CC 46021182 */  mul.s      $f6, $f2, $f2
/* B35D0 800D81D0 46062200 */  add.s      $f8, $f4, $f6
/* B35D4 800D81D4 460E7282 */  mul.s      $f10, $f14, $f14
/* B35D8 800D81D8 0C036C2C */  jal        func_800DB0B0
/* B35DC 800D81DC 460A4300 */   add.s     $f12, $f8, $f10
/* B35E0 800D81E0 44808000 */  mtc1       $zero, $f16
/* B35E4 800D81E4 8FA40020 */  lw         $a0, 0x20($sp)
/* B35E8 800D81E8 46000086 */  mov.s      $f2, $f0
/* B35EC 800D81EC 46100032 */  c.eq.s     $f0, $f16
/* B35F0 800D81F0 00000000 */  nop
/* B35F4 800D81F4 45020006 */  bc1fl      .L800D8210
/* B35F8 800D81F8 C4920000 */   lwc1      $f18, ($a0)
/* B35FC 800D81FC 0C036066 */  jal        func_800D8198
/* B3600 800D8200 E7A2001C */   swc1      $f2, 0x1c($sp)
/* B3604 800D8204 1000000A */  b          .L800D8230
/* B3608 800D8208 C7A2001C */   lwc1      $f2, 0x1c($sp)
/* B360C 800D820C C4920000 */  lwc1       $f18, ($a0)
.L800D8210:
/* B3610 800D8210 C4860004 */  lwc1       $f6, 4($a0)
/* B3614 800D8214 C48A0008 */  lwc1       $f10, 8($a0)
/* B3618 800D8218 46009103 */  div.s      $f4, $f18, $f0
/* B361C 800D821C 46003203 */  div.s      $f8, $f6, $f0
/* B3620 800D8220 E4840000 */  swc1       $f4, ($a0)
/* B3624 800D8224 46005403 */  div.s      $f16, $f10, $f0
/* B3628 800D8228 E4880004 */  swc1       $f8, 4($a0)
/* B362C 800D822C E4900008 */  swc1       $f16, 8($a0)
.L800D8230:
/* B3630 800D8230 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3634 800D8234 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3638 800D8238 46001006 */  mov.s      $f0, $f2
/* B363C 800D823C 03E00008 */  jr         $ra
/* B3640 800D8240 00000000 */   nop

glabel func_800D8244
/* B3644 800D8244 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B3648 800D8248 C7AC0044 */  lwc1       $f12, 0x44($sp)
/* B364C 800D824C 44802000 */  mtc1       $zero, $f4
/* B3650 800D8250 AFA5002C */  sw         $a1, 0x2c($sp)
/* B3654 800D8254 00802825 */  or         $a1, $a0, $zero
/* B3658 800D8258 4604603C */  c.lt.s     $f12, $f4
/* B365C 800D825C AFBF0014 */  sw         $ra, 0x14($sp)
/* B3660 800D8260 AFA40028 */  sw         $a0, 0x28($sp)
/* B3664 800D8264 AFA60030 */  sw         $a2, 0x30($sp)
/* B3668 800D8268 45010008 */  bc1t       .L800D828C
/* B366C 800D826C AFA70034 */   sw        $a3, 0x34($sp)
/* B3670 800D8270 3C013F80 */  lui        $at, 0x3f80
/* B3674 800D8274 44813000 */  mtc1       $at, $f6
/* B3678 800D8278 00000000 */  nop
/* B367C 800D827C 460C303C */  c.lt.s     $f6, $f12
/* B3680 800D8280 00000000 */  nop
/* B3684 800D8284 4502000B */  bc1fl      .L800D82B4
/* B3688 800D8288 3C013F80 */   lui       $at, 0x3f80
.L800D828C:
/* B368C 800D828C 46006221 */  cvt.d.s    $f8, $f12
/* B3690 800D8290 3C048011 */  lui        $a0, %hi(D_80110820)
/* B3694 800D8294 44074000 */  mfc1       $a3, $f8
/* B3698 800D8298 44064800 */  mfc1       $a2, $f9
/* B369C 800D829C 24840820 */  addiu      $a0, $a0, %lo(D_80110820)
/* B36A0 800D82A0 0C035D18 */  jal        func_800D7460
/* B36A4 800D82A4 AFA50028 */   sw        $a1, 0x28($sp)
/* B36A8 800D82A8 8FA50028 */  lw         $a1, 0x28($sp)
/* B36AC 800D82AC C7AC0044 */  lwc1       $f12, 0x44($sp)
/* B36B0 800D82B0 3C013F80 */  lui        $at, 0x3f80
.L800D82B4:
/* B36B4 800D82B4 44815000 */  mtc1       $at, $f10
/* B36B8 800D82B8 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* B36BC 800D82BC C7A40038 */  lwc1       $f4, 0x38($sp)
/* B36C0 800D82C0 460C5001 */  sub.s      $f0, $f10, $f12
/* B36C4 800D82C4 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* B36C8 800D82C8 27AE001C */  addiu      $t6, $sp, 0x1c
/* B36CC 800D82CC 00A01025 */  or         $v0, $a1, $zero
/* B36D0 800D82D0 46100482 */  mul.s      $f18, $f0, $f16
/* B36D4 800D82D4 00000000 */  nop
/* B36D8 800D82D8 460C2182 */  mul.s      $f6, $f4, $f12
/* B36DC 800D82DC C7A4003C */  lwc1       $f4, 0x3c($sp)
/* B36E0 800D82E0 460A0402 */  mul.s      $f16, $f0, $f10
/* B36E4 800D82E4 46069200 */  add.s      $f8, $f18, $f6
/* B36E8 800D82E8 460C2482 */  mul.s      $f18, $f4, $f12
/* B36EC 800D82EC C7A40040 */  lwc1       $f4, 0x40($sp)
/* B36F0 800D82F0 E7A8001C */  swc1       $f8, 0x1c($sp)
/* B36F4 800D82F4 C7A80034 */  lwc1       $f8, 0x34($sp)
/* B36F8 800D82F8 46080282 */  mul.s      $f10, $f0, $f8
/* B36FC 800D82FC 46128180 */  add.s      $f6, $f16, $f18
/* B3700 800D8300 460C2402 */  mul.s      $f16, $f4, $f12
/* B3704 800D8304 E7A60020 */  swc1       $f6, 0x20($sp)
/* B3708 800D8308 46105480 */  add.s      $f18, $f10, $f16
/* B370C 800D830C E7B20024 */  swc1       $f18, 0x24($sp)
/* B3710 800D8310 8DC10000 */  lw         $at, ($t6)
/* B3714 800D8314 ACA10000 */  sw         $at, ($a1)
/* B3718 800D8318 8DD90004 */  lw         $t9, 4($t6)
/* B371C 800D831C ACB90004 */  sw         $t9, 4($a1)
/* B3720 800D8320 8DC10008 */  lw         $at, 8($t6)
/* B3724 800D8324 ACA10008 */  sw         $at, 8($a1)
/* B3728 800D8328 8FBF0014 */  lw         $ra, 0x14($sp)
/* B372C 800D832C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B3730 800D8330 03E00008 */  jr         $ra
/* B3734 800D8334 00000000 */   nop

glabel func_800D8338
/* B3738 800D8338 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B373C 800D833C AFA40028 */  sw         $a0, 0x28($sp)
/* B3740 800D8340 C7A40028 */  lwc1       $f4, 0x28($sp)
/* B3744 800D8344 AFA60030 */  sw         $a2, 0x30($sp)
/* B3748 800D8348 C7A60030 */  lwc1       $f6, 0x30($sp)
/* B374C 800D834C 46042002 */  mul.s      $f0, $f4, $f4
/* B3750 800D8350 AFA5002C */  sw         $a1, 0x2c($sp)
/* B3754 800D8354 C7AE002C */  lwc1       $f14, 0x2c($sp)
/* B3758 800D8358 46063082 */  mul.s      $f2, $f6, $f6
/* B375C 800D835C AFBF0014 */  sw         $ra, 0x14($sp)
/* B3760 800D8360 AFA70034 */  sw         $a3, 0x34($sp)
/* B3764 800D8364 460E7202 */  mul.s      $f8, $f14, $f14
/* B3768 800D8368 E7A00020 */  swc1       $f0, 0x20($sp)
/* B376C 800D836C E7A2001C */  swc1       $f2, 0x1c($sp)
/* B3770 800D8370 46080280 */  add.s      $f10, $f0, $f8
/* B3774 800D8374 0C036C2C */  jal        func_800DB0B0
/* B3778 800D8378 46025300 */   add.s     $f12, $f10, $f2
/* B377C 800D837C 44801800 */  mtc1       $zero, $f3
/* B3780 800D8380 44801000 */  mtc1       $zero, $f2
/* B3784 800D8384 46000421 */  cvt.d.s    $f16, $f0
/* B3788 800D8388 8FA20034 */  lw         $v0, 0x34($sp)
/* B378C 800D838C 46301032 */  c.eq.d     $f2, $f16
/* B3790 800D8390 E4400000 */  swc1       $f0, ($v0)
/* B3794 800D8394 8FAE0038 */  lw         $t6, 0x38($sp)
/* B3798 800D8398 45000006 */  bc1f       .L800D83B4
/* B379C 800D839C C7B2002C */   lwc1      $f18, 0x2c($sp)
/* B37A0 800D83A0 44800000 */  mtc1       $zero, $f0
/* B37A4 800D83A4 8FA2003C */  lw         $v0, 0x3c($sp)
/* B37A8 800D83A8 E5C00000 */  swc1       $f0, ($t6)
/* B37AC 800D83AC 1000002A */  b          .L800D8458
/* B37B0 800D83B0 E4400000 */   swc1      $f0, ($v0)
.L800D83B4:
/* B37B4 800D83B4 C4440000 */  lwc1       $f4, ($v0)
/* B37B8 800D83B8 0C0322F9 */  jal        func_800C8BE4
/* B37BC 800D83BC 46049303 */   div.s     $f12, $f18, $f4
/* B37C0 800D83C0 8FAF0038 */  lw         $t7, 0x38($sp)
/* B37C4 800D83C4 E5E00000 */  swc1       $f0, ($t7)
/* B37C8 800D83C8 C7A80020 */  lwc1       $f8, 0x20($sp)
/* B37CC 800D83CC C7A6001C */  lwc1       $f6, 0x1c($sp)
/* B37D0 800D83D0 0C036C2C */  jal        func_800DB0B0
/* B37D4 800D83D4 46083300 */   add.s     $f12, $f6, $f8
/* B37D8 800D83D8 44801800 */  mtc1       $zero, $f3
/* B37DC 800D83DC 44801000 */  mtc1       $zero, $f2
/* B37E0 800D83E0 460002A1 */  cvt.d.s    $f10, $f0
/* B37E4 800D83E4 46000386 */  mov.s      $f14, $f0
/* B37E8 800D83E8 462A1032 */  c.eq.d     $f2, $f10
/* B37EC 800D83EC 8FA2003C */  lw         $v0, 0x3c($sp)
/* B37F0 800D83F0 C7B00030 */  lwc1       $f16, 0x30($sp)
/* B37F4 800D83F4 45000004 */  bc1f       .L800D8408
/* B37F8 800D83F8 00000000 */   nop
/* B37FC 800D83FC 44800000 */  mtc1       $zero, $f0
/* B3800 800D8400 10000015 */  b          .L800D8458
/* B3804 800D8404 E4400000 */   swc1      $f0, ($v0)
.L800D8408:
/* B3808 800D8408 0C0322F9 */  jal        func_800C8BE4
/* B380C 800D840C 460E8303 */   div.s     $f12, $f16, $f14
/* B3810 800D8410 8FA2003C */  lw         $v0, 0x3c($sp)
/* B3814 800D8414 44801800 */  mtc1       $zero, $f3
/* B3818 800D8418 44801000 */  mtc1       $zero, $f2
/* B381C 800D841C E4400000 */  swc1       $f0, ($v0)
/* B3820 800D8420 C7B20028 */  lwc1       $f18, 0x28($sp)
/* B3824 800D8424 3C01BFF0 */  lui        $at, 0xbff0
/* B3828 800D8428 46009121 */  cvt.d.s    $f4, $f18
/* B382C 800D842C 4622203C */  c.lt.d     $f4, $f2
/* B3830 800D8430 00000000 */  nop
/* B3834 800D8434 45020009 */  bc1fl      .L800D845C
/* B3838 800D8438 8FBF0014 */   lw        $ra, 0x14($sp)
/* B383C 800D843C C4460000 */  lwc1       $f6, ($v0)
/* B3840 800D8440 44815800 */  mtc1       $at, $f11
/* B3844 800D8444 44805000 */  mtc1       $zero, $f10
/* B3848 800D8448 46003221 */  cvt.d.s    $f8, $f6
/* B384C 800D844C 462A4402 */  mul.d      $f16, $f8, $f10
/* B3850 800D8450 462084A0 */  cvt.s.d    $f18, $f16
/* B3854 800D8454 E4520000 */  swc1       $f18, ($v0)
.L800D8458:
/* B3858 800D8458 8FBF0014 */  lw         $ra, 0x14($sp)
.L800D845C:
/* B385C 800D845C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B3860 800D8460 03E00008 */  jr         $ra
/* B3864 800D8464 00000000 */   nop

glabel func_800D8468
/* B3868 800D8468 44867000 */  mtc1       $a2, $f14
/* B386C 800D846C 3C018011 */  lui        $at, %hi(D_80110848)
/* B3870 800D8470 D4260848 */  ldc1       $f6, %lo(D_80110848)($at)
/* B3874 800D8474 46007121 */  cvt.d.s    $f4, $f14
/* B3878 800D8478 3C018011 */  lui        $at, %hi(D_80110850)
/* B387C 800D847C 46262202 */  mul.d      $f8, $f4, $f6
/* B3880 800D8480 D42A0850 */  ldc1       $f10, %lo(D_80110850)($at)
/* B3884 800D8484 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B3888 800D8488 AFBF0014 */  sw         $ra, 0x14($sp)
/* B388C 800D848C AFA40030 */  sw         $a0, 0x30($sp)
/* B3890 800D8490 AFA50034 */  sw         $a1, 0x34($sp)
/* B3894 800D8494 AFA7003C */  sw         $a3, 0x3c($sp)
/* B3898 800D8498 462A4403 */  div.d      $f16, $f8, $f10
/* B389C 800D849C 46208320 */  cvt.s.d    $f12, $f16
/* B38A0 800D84A0 0C036B60 */  jal        func_800DAD80
/* B38A4 800D84A4 E7AC001C */   swc1      $f12, 0x1c($sp)
/* B38A8 800D84A8 C7B20034 */  lwc1       $f18, 0x34($sp)
/* B38AC 800D84AC C7A6003C */  lwc1       $f6, 0x3c($sp)
/* B38B0 800D84B0 3C018011 */  lui        $at, %hi(D_80110858)
/* B38B4 800D84B4 46120102 */  mul.s      $f4, $f0, $f18
/* B38B8 800D84B8 D42A0858 */  ldc1       $f10, %lo(D_80110858)($at)
/* B38BC 800D84BC 46003221 */  cvt.d.s    $f8, $f6
/* B38C0 800D84C0 3C018011 */  lui        $at, %hi(D_80110860)
/* B38C4 800D84C4 462A4402 */  mul.d      $f16, $f8, $f10
/* B38C8 800D84C8 D4320860 */  ldc1       $f18, %lo(D_80110860)($at)
/* B38CC 800D84CC E7A40020 */  swc1       $f4, 0x20($sp)
/* B38D0 800D84D0 46328103 */  div.d      $f4, $f16, $f18
/* B38D4 800D84D4 46202320 */  cvt.s.d    $f12, $f4
/* B38D8 800D84D8 0C036B60 */  jal        func_800DAD80
/* B38DC 800D84DC E7AC0018 */   swc1      $f12, 0x18($sp)
/* B38E0 800D84E0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* B38E4 800D84E4 C7AC001C */  lwc1       $f12, 0x1c($sp)
/* B38E8 800D84E8 46060202 */  mul.s      $f8, $f0, $f6
/* B38EC 800D84EC 0C036C30 */  jal        func_800DB0C0
/* B38F0 800D84F0 E7A80024 */   swc1      $f8, 0x24($sp)
/* B38F4 800D84F4 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* B38F8 800D84F8 C7AC0018 */  lwc1       $f12, 0x18($sp)
/* B38FC 800D84FC 460A0402 */  mul.s      $f16, $f0, $f10
/* B3900 800D8500 0C036C30 */  jal        func_800DB0C0
/* B3904 800D8504 E7B00028 */   swc1      $f16, 0x28($sp)
/* B3908 800D8508 C7B20020 */  lwc1       $f18, 0x20($sp)
/* B390C 800D850C 27AE0024 */  addiu      $t6, $sp, 0x24
/* B3910 800D8510 8FA20030 */  lw         $v0, 0x30($sp)
/* B3914 800D8514 46120102 */  mul.s      $f4, $f0, $f18
/* B3918 800D8518 E7A4002C */  swc1       $f4, 0x2c($sp)
/* B391C 800D851C 8DC10000 */  lw         $at, ($t6)
/* B3920 800D8520 AC410000 */  sw         $at, ($v0)
/* B3924 800D8524 8DD90004 */  lw         $t9, 4($t6)
/* B3928 800D8528 AC590004 */  sw         $t9, 4($v0)
/* B392C 800D852C 8DC10008 */  lw         $at, 8($t6)
/* B3930 800D8530 AC410008 */  sw         $at, 8($v0)
/* B3934 800D8534 8FBF0014 */  lw         $ra, 0x14($sp)
/* B3938 800D8538 27BD0030 */  addiu      $sp, $sp, 0x30
/* B393C 800D853C 03E00008 */  jr         $ra
/* B3940 800D8540 00000000 */   nop

glabel func_800D8544
/* B3944 800D8544 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B3948 800D8548 AFA40028 */  sw         $a0, 0x28($sp)
/* B394C 800D854C C7A40028 */  lwc1       $f4, 0x28($sp)
/* B3950 800D8550 AFA5002C */  sw         $a1, 0x2c($sp)
/* B3954 800D8554 AFA60030 */  sw         $a2, 0x30($sp)
/* B3958 800D8558 C7B00030 */  lwc1       $f16, 0x30($sp)
/* B395C 800D855C C7A8002C */  lwc1       $f8, 0x2c($sp)
/* B3960 800D8560 460021A1 */  cvt.d.s    $f6, $f4
/* B3964 800D8564 460084A1 */  cvt.d.s    $f18, $f16
/* B3968 800D8568 460042A1 */  cvt.d.s    $f10, $f8
/* B396C 800D856C AFBF0024 */  sw         $ra, 0x24($sp)
/* B3970 800D8570 44073000 */  mfc1       $a3, $f6
/* B3974 800D8574 44063800 */  mfc1       $a2, $f7
/* B3978 800D8578 3C048011 */  lui        $a0, %hi(D_80110830)
/* B397C 800D857C 24840830 */  addiu      $a0, $a0, %lo(D_80110830)
/* B3980 800D8580 F7AA0010 */  sdc1       $f10, 0x10($sp)
/* B3984 800D8584 0C035D18 */  jal        func_800D7460
/* B3988 800D8588 F7B20018 */   sdc1      $f18, 0x18($sp)
/* B398C 800D858C 8FBF0024 */  lw         $ra, 0x24($sp)
/* B3990 800D8590 27BD0028 */  addiu      $sp, $sp, 0x28
/* B3994 800D8594 03E00008 */  jr         $ra
/* B3998 800D8598 00000000 */   nop
/* B399C 800D859C 00000000 */  nop
