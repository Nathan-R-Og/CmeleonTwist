.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E14B0
/* BC8B0 800E14B0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* BC8B4 800E14B4 3C0E8025 */  lui        $t6, %hi(D_8024B1E0)
/* BC8B8 800E14B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* BC8BC 800E14BC 25CEB1E0 */  addiu      $t6, $t6, %lo(D_8024B1E0)
/* BC8C0 800E14C0 240F0002 */  addiu      $t7, $zero, 2
/* BC8C4 800E14C4 AFA40060 */  sw         $a0, 0x60($sp)
/* BC8C8 800E14C8 AFA50064 */  sw         $a1, 0x64($sp)
/* BC8CC 800E14CC AFA60068 */  sw         $a2, 0x68($sp)
/* BC8D0 800E14D0 AFA7006C */  sw         $a3, 0x6c($sp)
/* BC8D4 800E14D4 AFB00018 */  sw         $s0, 0x18($sp)
/* BC8D8 800E14D8 AFA0005C */  sw         $zero, 0x5c($sp)
/* BC8DC 800E14DC AFAE0054 */  sw         $t6, 0x54($sp)
/* BC8E0 800E14E0 0C038398 */  jal        func_800E0E60
/* BC8E4 800E14E4 AFAF0028 */   sw        $t7, 0x28($sp)
/* BC8E8 800E14E8 24180002 */  addiu      $t8, $zero, 2
/* BC8EC 800E14EC 3C018025 */  lui        $at, %hi(D_8024B140)
/* BC8F0 800E14F0 A038B140 */  sb         $t8, %lo(D_8024B140)($at)
/* BC8F4 800E14F4 8FA40064 */  lw         $a0, 0x64($sp)
/* BC8F8 800E14F8 0C0385BD */  jal        func_800E16F4
/* BC8FC 800E14FC 97A5006A */   lhu       $a1, 0x6a($sp)
/* BC900 800E1500 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* BC904 800E1504 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* BC908 800E1508 0C0383B4 */  jal        func_800E0ED0
/* BC90C 800E150C 24040001 */   addiu     $a0, $zero, 1
/* BC910 800E1510 AFA2005C */  sw         $v0, 0x5c($sp)
/* BC914 800E1514 8FA40060 */  lw         $a0, 0x60($sp)
/* BC918 800E1518 00002825 */  or         $a1, $zero, $zero
/* BC91C 800E151C 0C036988 */  jal        func_800DA620
/* BC920 800E1520 24060001 */   addiu     $a2, $zero, 1
.L800E1524:
/* BC924 800E1524 AFA00058 */  sw         $zero, 0x58($sp)
.L800E1528:
/* BC928 800E1528 8FA80058 */  lw         $t0, 0x58($sp)
/* BC92C 800E152C 8FAA0058 */  lw         $t2, 0x58($sp)
/* BC930 800E1530 3C018025 */  lui        $at, %hi(D_8024B1E0)
/* BC934 800E1534 00084880 */  sll        $t1, $t0, 2
/* BC938 800E1538 00290821 */  addu       $at, $at, $t1
/* BC93C 800E153C 241900FF */  addiu      $t9, $zero, 0xff
/* BC940 800E1540 AC39B1E0 */  sw         $t9, %lo(D_8024B1E0)($at)
/* BC944 800E1544 254B0001 */  addiu      $t3, $t2, 1
/* BC948 800E1548 29610010 */  slti       $at, $t3, 0x10
/* BC94C 800E154C 1420FFF6 */  bnez       $at, .L800E1528
/* BC950 800E1550 AFAB0058 */   sw        $t3, 0x58($sp)
/* BC954 800E1554 3C018025 */  lui        $at, %hi(D_8024B21C)
/* BC958 800E1558 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* BC95C 800E155C AC20B21C */  sw         $zero, %lo(D_8024B21C)($at)
/* BC960 800E1560 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* BC964 800E1564 0C0383B4 */  jal        func_800E0ED0
/* BC968 800E1568 00002025 */   or        $a0, $zero, $zero
/* BC96C 800E156C AFA2005C */  sw         $v0, 0x5c($sp)
/* BC970 800E1570 8FA40060 */  lw         $a0, 0x60($sp)
/* BC974 800E1574 00002825 */  or         $a1, $zero, $zero
/* BC978 800E1578 0C036988 */  jal        func_800DA620
/* BC97C 800E157C 24060001 */   addiu     $a2, $zero, 1
/* BC980 800E1580 8FAD0064 */  lw         $t5, 0x64($sp)
/* BC984 800E1584 3C0C8025 */  lui        $t4, %hi(D_8024B1E0)
/* BC988 800E1588 258CB1E0 */  addiu      $t4, $t4, %lo(D_8024B1E0)
/* BC98C 800E158C 11A0000C */  beqz       $t5, .L800E15C0
/* BC990 800E1590 AFAC0054 */   sw        $t4, 0x54($sp)
/* BC994 800E1594 19A0000A */  blez       $t5, .L800E15C0
/* BC998 800E1598 AFA00058 */   sw        $zero, 0x58($sp)
.L800E159C:
/* BC99C 800E159C 8FB80058 */  lw         $t8, 0x58($sp)
/* BC9A0 800E15A0 8FB90064 */  lw         $t9, 0x64($sp)
/* BC9A4 800E15A4 8FAE0054 */  lw         $t6, 0x54($sp)
/* BC9A8 800E15A8 27080001 */  addiu      $t0, $t8, 1
/* BC9AC 800E15AC 0119082A */  slt        $at, $t0, $t9
/* BC9B0 800E15B0 25CF0001 */  addiu      $t7, $t6, 1
/* BC9B4 800E15B4 AFA80058 */  sw         $t0, 0x58($sp)
/* BC9B8 800E15B8 1420FFF8 */  bnez       $at, .L800E159C
/* BC9BC 800E15BC AFAF0054 */   sw        $t7, 0x54($sp)
.L800E15C0:
/* BC9C0 800E15C0 8FAA0054 */  lw         $t2, 0x54($sp)
/* BC9C4 800E15C4 27A9002C */  addiu      $t1, $sp, 0x2c
/* BC9C8 800E15C8 254C0024 */  addiu      $t4, $t2, 0x24
.L800E15CC:
/* BC9CC 800E15CC 89410000 */  lwl        $at, ($t2)
/* BC9D0 800E15D0 99410003 */  lwr        $at, 3($t2)
/* BC9D4 800E15D4 254A000C */  addiu      $t2, $t2, 0xc
/* BC9D8 800E15D8 2529000C */  addiu      $t1, $t1, 0xc
/* BC9DC 800E15DC AD21FFF4 */  sw         $at, -0xc($t1)
/* BC9E0 800E15E0 8941FFF8 */  lwl        $at, -8($t2)
/* BC9E4 800E15E4 9941FFFB */  lwr        $at, -5($t2)
/* BC9E8 800E15E8 AD21FFF8 */  sw         $at, -8($t1)
/* BC9EC 800E15EC 8941FFFC */  lwl        $at, -4($t2)
/* BC9F0 800E15F0 9941FFFF */  lwr        $at, -1($t2)
/* BC9F4 800E15F4 154CFFF5 */  bne        $t2, $t4, .L800E15CC
/* BC9F8 800E15F8 AD21FFFC */   sw        $at, -4($t1)
/* BC9FC 800E15FC 89410000 */  lwl        $at, ($t2)
/* BCA00 800E1600 99410003 */  lwr        $at, 3($t2)
/* BCA04 800E1604 AD210000 */  sw         $at, ($t1)
/* BCA08 800E1608 93AD002E */  lbu        $t5, 0x2e($sp)
/* BCA0C 800E160C 31AE00C0 */  andi       $t6, $t5, 0xc0
/* BCA10 800E1610 000E7903 */  sra        $t7, $t6, 4
/* BCA14 800E1614 15E00025 */  bnez       $t7, .L800E16AC
/* BCA18 800E1618 AFAF005C */   sw        $t7, 0x5c($sp)
/* BCA1C 800E161C 27A4002C */  addiu      $a0, $sp, 0x2c
/* BCA20 800E1620 0C03840C */  jal        func_800E1030
/* BCA24 800E1624 24840006 */   addiu     $a0, $a0, 6
/* BCA28 800E1628 A3A20027 */  sb         $v0, 0x27($sp)
/* BCA2C 800E162C 93B80027 */  lbu        $t8, 0x27($sp)
/* BCA30 800E1630 93A80052 */  lbu        $t0, 0x52($sp)
/* BCA34 800E1634 1308000F */  beq        $t8, $t0, .L800E1674
/* BCA38 800E1638 00000000 */   nop
/* BCA3C 800E163C 8FA40060 */  lw         $a0, 0x60($sp)
/* BCA40 800E1640 0C036DC5 */  jal        func_800DB714
/* BCA44 800E1644 8FA50064 */   lw        $a1, 0x64($sp)
/* BCA48 800E1648 AFA2005C */  sw         $v0, 0x5c($sp)
/* BCA4C 800E164C 8FB9005C */  lw         $t9, 0x5c($sp)
/* BCA50 800E1650 13200005 */  beqz       $t9, .L800E1668
/* BCA54 800E1654 00000000 */   nop
/* BCA58 800E1658 0C0383A9 */  jal        func_800E0EA4
/* BCA5C 800E165C 00000000 */   nop
/* BCA60 800E1660 1000001F */  b          .L800E16E0
/* BCA64 800E1664 8FA2005C */   lw        $v0, 0x5c($sp)
.L800E1668:
/* BCA68 800E1668 240B0004 */  addiu      $t3, $zero, 4
/* BCA6C 800E166C 1000000F */  b          .L800E16AC
/* BCA70 800E1670 AFAB005C */   sw        $t3, 0x5c($sp)
.L800E1674:
/* BCA74 800E1674 AFA00058 */  sw         $zero, 0x58($sp)
.L800E1678:
/* BCA78 800E1678 8FAC0058 */  lw         $t4, 0x58($sp)
/* BCA7C 800E167C 8FA9006C */  lw         $t1, 0x6c($sp)
/* BCA80 800E1680 03AC5021 */  addu       $t2, $sp, $t4
/* BCA84 800E1684 914A0032 */  lbu        $t2, 0x32($t2)
/* BCA88 800E1688 A12A0000 */  sb         $t2, ($t1)
/* BCA8C 800E168C 8FAF0058 */  lw         $t7, 0x58($sp)
/* BCA90 800E1690 8FAD006C */  lw         $t5, 0x6c($sp)
/* BCA94 800E1694 25F80001 */  addiu      $t8, $t7, 1
/* BCA98 800E1698 2B010020 */  slti       $at, $t8, 0x20
/* BCA9C 800E169C 25AE0001 */  addiu      $t6, $t5, 1
/* BCAA0 800E16A0 AFB80058 */  sw         $t8, 0x58($sp)
/* BCAA4 800E16A4 1420FFF4 */  bnez       $at, .L800E1678
/* BCAA8 800E16A8 AFAE006C */   sw        $t6, 0x6c($sp)
.L800E16AC:
/* BCAAC 800E16AC 8FA8005C */  lw         $t0, 0x5c($sp)
/* BCAB0 800E16B0 24010004 */  addiu      $at, $zero, 4
/* BCAB4 800E16B4 15010007 */  bne        $t0, $at, .L800E16D4
/* BCAB8 800E16B8 00000000 */   nop
/* BCABC 800E16BC 8FB90028 */  lw         $t9, 0x28($sp)
/* BCAC0 800E16C0 2B300000 */  slti       $s0, $t9, 0
/* BCAC4 800E16C4 3A100001 */  xori       $s0, $s0, 1
/* BCAC8 800E16C8 272BFFFF */  addiu      $t3, $t9, -1
/* BCACC 800E16CC 1600FF95 */  bnez       $s0, .L800E1524
/* BCAD0 800E16D0 AFAB0028 */   sw        $t3, 0x28($sp)
.L800E16D4:
/* BCAD4 800E16D4 0C0383A9 */  jal        func_800E0EA4
/* BCAD8 800E16D8 00000000 */   nop
/* BCADC 800E16DC 8FA2005C */  lw         $v0, 0x5c($sp)
.L800E16E0:
/* BCAE0 800E16E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* BCAE4 800E16E4 8FB00018 */  lw         $s0, 0x18($sp)
/* BCAE8 800E16E8 27BD0060 */  addiu      $sp, $sp, 0x60
/* BCAEC 800E16EC 03E00008 */  jr         $ra
/* BCAF0 800E16F0 00000000 */   nop

glabel func_800E16F4
/* BCAF4 800E16F4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* BCAF8 800E16F8 3C0E8025 */  lui        $t6, %hi(D_8024B1E0)
/* BCAFC 800E16FC 25CEB1E0 */  addiu      $t6, $t6, %lo(D_8024B1E0)
/* BCB00 800E1700 AFBF0014 */  sw         $ra, 0x14($sp)
/* BCB04 800E1704 AFA40048 */  sw         $a0, 0x48($sp)
/* BCB08 800E1708 AFA5004C */  sw         $a1, 0x4c($sp)
/* BCB0C 800E170C AFAE0044 */  sw         $t6, 0x44($sp)
/* BCB10 800E1710 AFA00018 */  sw         $zero, 0x18($sp)
.L800E1714:
/* BCB14 800E1714 8FAF0018 */  lw         $t7, 0x18($sp)
/* BCB18 800E1718 8FB90018 */  lw         $t9, 0x18($sp)
/* BCB1C 800E171C 3C018025 */  lui        $at, %hi(D_8024B1E0)
/* BCB20 800E1720 000FC080 */  sll        $t8, $t7, 2
/* BCB24 800E1724 00380821 */  addu       $at, $at, $t8
/* BCB28 800E1728 AC20B1E0 */  sw         $zero, %lo(D_8024B1E0)($at)
/* BCB2C 800E172C 27280001 */  addiu      $t0, $t9, 1
/* BCB30 800E1730 29010010 */  slti       $at, $t0, 0x10
/* BCB34 800E1734 1420FFF7 */  bnez       $at, .L800E1714
/* BCB38 800E1738 AFA80018 */   sw        $t0, 0x18($sp)
/* BCB3C 800E173C 24090001 */  addiu      $t1, $zero, 1
/* BCB40 800E1740 3C018025 */  lui        $at, %hi(D_8024B21C)
/* BCB44 800E1744 240A00FF */  addiu      $t2, $zero, 0xff
/* BCB48 800E1748 240B0003 */  addiu      $t3, $zero, 3
/* BCB4C 800E174C 240C0021 */  addiu      $t4, $zero, 0x21
/* BCB50 800E1750 240D0002 */  addiu      $t5, $zero, 2
/* BCB54 800E1754 AC29B21C */  sw         $t1, %lo(D_8024B21C)($at)
/* BCB58 800E1758 A3AA001C */  sb         $t2, 0x1c($sp)
/* BCB5C 800E175C A3AB001D */  sb         $t3, 0x1d($sp)
/* BCB60 800E1760 A3AC001E */  sb         $t4, 0x1e($sp)
/* BCB64 800E1764 A3AD001F */  sb         $t5, 0x1f($sp)
/* BCB68 800E1768 0C0383E0 */  jal        func_800E0F80
/* BCB6C 800E176C 97A4004E */   lhu       $a0, 0x4e($sp)
/* BCB70 800E1770 97AE004E */  lhu        $t6, 0x4e($sp)
/* BCB74 800E1774 241900FF */  addiu      $t9, $zero, 0xff
/* BCB78 800E1778 A3B90042 */  sb         $t9, 0x42($sp)
/* BCB7C 800E177C 000E7940 */  sll        $t7, $t6, 5
/* BCB80 800E1780 004FC025 */  or         $t8, $v0, $t7
/* BCB84 800E1784 A7B80020 */  sh         $t8, 0x20($sp)
/* BCB88 800E1788 AFA00018 */  sw         $zero, 0x18($sp)
.L800E178C:
/* BCB8C 800E178C 8FA90018 */  lw         $t1, 0x18($sp)
/* BCB90 800E1790 240800FF */  addiu      $t0, $zero, 0xff
/* BCB94 800E1794 03A95021 */  addu       $t2, $sp, $t1
/* BCB98 800E1798 A1480022 */  sb         $t0, 0x22($t2)
/* BCB9C 800E179C 8FAB0018 */  lw         $t3, 0x18($sp)
/* BCBA0 800E17A0 256C0001 */  addiu      $t4, $t3, 1
/* BCBA4 800E17A4 29810020 */  slti       $at, $t4, 0x20
/* BCBA8 800E17A8 1420FFF8 */  bnez       $at, .L800E178C
/* BCBAC 800E17AC AFAC0018 */   sw        $t4, 0x18($sp)
/* BCBB0 800E17B0 8FAD0048 */  lw         $t5, 0x48($sp)
/* BCBB4 800E17B4 11A0000E */  beqz       $t5, .L800E17F0
/* BCBB8 800E17B8 00000000 */   nop
/* BCBBC 800E17BC 19A0000C */  blez       $t5, .L800E17F0
/* BCBC0 800E17C0 AFA00018 */   sw        $zero, 0x18($sp)
.L800E17C4:
/* BCBC4 800E17C4 8FAE0044 */  lw         $t6, 0x44($sp)
/* BCBC8 800E17C8 A1C00000 */  sb         $zero, ($t6)
/* BCBCC 800E17CC 8FB90018 */  lw         $t9, 0x18($sp)
/* BCBD0 800E17D0 8FA90048 */  lw         $t1, 0x48($sp)
/* BCBD4 800E17D4 8FAF0044 */  lw         $t7, 0x44($sp)
/* BCBD8 800E17D8 27280001 */  addiu      $t0, $t9, 1
/* BCBDC 800E17DC 0109082A */  slt        $at, $t0, $t1
/* BCBE0 800E17E0 25F80001 */  addiu      $t8, $t7, 1
/* BCBE4 800E17E4 AFA80018 */  sw         $t0, 0x18($sp)
/* BCBE8 800E17E8 1420FFF6 */  bnez       $at, .L800E17C4
/* BCBEC 800E17EC AFB80044 */   sw        $t8, 0x44($sp)
.L800E17F0:
/* BCBF0 800E17F0 27AB001C */  addiu      $t3, $sp, 0x1c
/* BCBF4 800E17F4 256D0024 */  addiu      $t5, $t3, 0x24
/* BCBF8 800E17F8 8FAA0044 */  lw         $t2, 0x44($sp)
.L800E17FC:
/* BCBFC 800E17FC 8D610000 */  lw         $at, ($t3)
/* BCC00 800E1800 256B000C */  addiu      $t3, $t3, 0xc
/* BCC04 800E1804 254A000C */  addiu      $t2, $t2, 0xc
/* BCC08 800E1808 A941FFF4 */  swl        $at, -0xc($t2)
/* BCC0C 800E180C B941FFF7 */  swr        $at, -9($t2)
/* BCC10 800E1810 8D61FFF8 */  lw         $at, -8($t3)
/* BCC14 800E1814 A941FFF8 */  swl        $at, -8($t2)
/* BCC18 800E1818 B941FFFB */  swr        $at, -5($t2)
/* BCC1C 800E181C 8D61FFFC */  lw         $at, -4($t3)
/* BCC20 800E1820 A941FFFC */  swl        $at, -4($t2)
/* BCC24 800E1824 156DFFF5 */  bne        $t3, $t5, .L800E17FC
/* BCC28 800E1828 B941FFFF */   swr       $at, -1($t2)
/* BCC2C 800E182C 8D610000 */  lw         $at, ($t3)
/* BCC30 800E1830 241800FE */  addiu      $t8, $zero, 0xfe
/* BCC34 800E1834 A9410000 */  swl        $at, ($t2)
/* BCC38 800E1838 B9410003 */  swr        $at, 3($t2)
/* BCC3C 800E183C 8FAE0044 */  lw         $t6, 0x44($sp)
/* BCC40 800E1840 25CF0028 */  addiu      $t7, $t6, 0x28
/* BCC44 800E1844 AFAF0044 */  sw         $t7, 0x44($sp)
/* BCC48 800E1848 A1F80000 */  sb         $t8, ($t7)
/* BCC4C 800E184C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BCC50 800E1850 27BD0048 */  addiu      $sp, $sp, 0x48
/* BCC54 800E1854 03E00008 */  jr         $ra
/* BCC58 800E1858 00000000 */   nop
/* BCC5C 800E185C 00000000 */  nop
