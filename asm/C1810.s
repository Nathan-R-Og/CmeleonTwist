.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E6410
/* C1810 800E6410 10C0001A */  beqz       $a2, .L800E647C
/* C1814 800E6414 00A03825 */   or        $a3, $a1, $zero
/* C1818 800E6418 10850018 */  beq        $a0, $a1, .L800E647C
/* C181C 800E641C 00A4082A */   slt       $at, $a1, $a0
/* C1820 800E6420 54200008 */  bnel       $at, $zero, .L800E6444
/* C1824 800E6424 28C10010 */   slti      $at, $a2, 0x10
/* C1828 800E6428 00861020 */  add        $v0, $a0, $a2
/* C182C 800E642C 00A2082A */  slt        $at, $a1, $v0
/* C1830 800E6430 50200004 */  beql       $at, $zero, .L800E6444
/* C1834 800E6434 28C10010 */   slti      $at, $a2, 0x10
/* C1838 800E6438 1000005B */  b          .L800E65A8
/* C183C 800E643C 28C10010 */   slti      $at, $a2, 0x10
/* C1840 800E6440 28C10010 */  slti       $at, $a2, 0x10
.L800E6444:
/* C1844 800E6444 14200005 */  bnez       $at, .L800E645C
/* C1848 800E6448 00000000 */   nop
/* C184C 800E644C 30820003 */  andi       $v0, $a0, 3
/* C1850 800E6450 30A30003 */  andi       $v1, $a1, 3
/* C1854 800E6454 1043000B */  beq        $v0, $v1, .L800E6484
/* C1858 800E6458 00000000 */   nop
.L800E645C:
/* C185C 800E645C 10C00007 */  beqz       $a2, .L800E647C
/* C1860 800E6460 00000000 */   nop
/* C1864 800E6464 00861821 */  addu       $v1, $a0, $a2
.L800E6468:
/* C1868 800E6468 80820000 */  lb         $v0, ($a0)
/* C186C 800E646C 24840001 */  addiu      $a0, $a0, 1
/* C1870 800E6470 24A50001 */  addiu      $a1, $a1, 1
/* C1874 800E6474 1483FFFC */  bne        $a0, $v1, .L800E6468
/* C1878 800E6478 A0A2FFFF */   sb        $v0, -1($a1)
.L800E647C:
/* C187C 800E647C 03E00008 */  jr         $ra
/* C1880 800E6480 00E01025 */   or        $v0, $a3, $zero
.L800E6484:
/* C1884 800E6484 10400018 */  beqz       $v0, .L800E64E8
/* C1888 800E6488 24010001 */   addiu     $at, $zero, 1
/* C188C 800E648C 1041000F */  beq        $v0, $at, .L800E64CC
/* C1890 800E6490 24010002 */   addiu     $at, $zero, 2
/* C1894 800E6494 50410008 */  beql       $v0, $at, .L800E64B8
/* C1898 800E6498 84820000 */   lh        $v0, ($a0)
/* C189C 800E649C 80820000 */  lb         $v0, ($a0)
/* C18A0 800E64A0 24840001 */  addiu      $a0, $a0, 1
/* C18A4 800E64A4 24A50001 */  addiu      $a1, $a1, 1
/* C18A8 800E64A8 24C6FFFF */  addiu      $a2, $a2, -1
/* C18AC 800E64AC 1000000E */  b          .L800E64E8
/* C18B0 800E64B0 A0A2FFFF */   sb        $v0, -1($a1)
/* C18B4 800E64B4 84820000 */  lh         $v0, ($a0)
.L800E64B8:
/* C18B8 800E64B8 24840002 */  addiu      $a0, $a0, 2
/* C18BC 800E64BC 24A50002 */  addiu      $a1, $a1, 2
/* C18C0 800E64C0 24C6FFFE */  addiu      $a2, $a2, -2
/* C18C4 800E64C4 10000008 */  b          .L800E64E8
/* C18C8 800E64C8 A4A2FFFE */   sh        $v0, -2($a1)
.L800E64CC:
/* C18CC 800E64CC 80820000 */  lb         $v0, ($a0)
/* C18D0 800E64D0 84830001 */  lh         $v1, 1($a0)
/* C18D4 800E64D4 24840003 */  addiu      $a0, $a0, 3
/* C18D8 800E64D8 24A50003 */  addiu      $a1, $a1, 3
/* C18DC 800E64DC 24C6FFFD */  addiu      $a2, $a2, -3
/* C18E0 800E64E0 A0A2FFFD */  sb         $v0, -3($a1)
/* C18E4 800E64E4 A4A3FFFE */  sh         $v1, -2($a1)
.L800E64E8:
/* C18E8 800E64E8 28C10020 */  slti       $at, $a2, 0x20
/* C18EC 800E64EC 54200016 */  bnel       $at, $zero, .L800E6548
/* C18F0 800E64F0 28C10010 */   slti      $at, $a2, 0x10
/* C18F4 800E64F4 8C820000 */  lw         $v0, ($a0)
/* C18F8 800E64F8 8C830004 */  lw         $v1, 4($a0)
/* C18FC 800E64FC 8C880008 */  lw         $t0, 8($a0)
/* C1900 800E6500 8C89000C */  lw         $t1, 0xc($a0)
/* C1904 800E6504 8C8A0010 */  lw         $t2, 0x10($a0)
/* C1908 800E6508 8C8B0014 */  lw         $t3, 0x14($a0)
/* C190C 800E650C 8C8C0018 */  lw         $t4, 0x18($a0)
/* C1910 800E6510 8C8D001C */  lw         $t5, 0x1c($a0)
/* C1914 800E6514 24840020 */  addiu      $a0, $a0, 0x20
/* C1918 800E6518 24A50020 */  addiu      $a1, $a1, 0x20
/* C191C 800E651C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* C1920 800E6520 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* C1924 800E6524 ACA3FFE4 */  sw         $v1, -0x1c($a1)
/* C1928 800E6528 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* C192C 800E652C ACA9FFEC */  sw         $t1, -0x14($a1)
/* C1930 800E6530 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* C1934 800E6534 ACABFFF4 */  sw         $t3, -0xc($a1)
/* C1938 800E6538 ACACFFF8 */  sw         $t4, -8($a1)
/* C193C 800E653C 1000FFEA */  b          .L800E64E8
/* C1940 800E6540 ACADFFFC */   sw        $t5, -4($a1)
.L800E6544:
/* C1944 800E6544 28C10010 */  slti       $at, $a2, 0x10
.L800E6548:
/* C1948 800E6548 5420000E */  bnel       $at, $zero, .L800E6584
/* C194C 800E654C 28C10004 */   slti      $at, $a2, 4
/* C1950 800E6550 8C820000 */  lw         $v0, ($a0)
/* C1954 800E6554 8C830004 */  lw         $v1, 4($a0)
/* C1958 800E6558 8C880008 */  lw         $t0, 8($a0)
/* C195C 800E655C 8C89000C */  lw         $t1, 0xc($a0)
/* C1960 800E6560 24840010 */  addiu      $a0, $a0, 0x10
/* C1964 800E6564 24A50010 */  addiu      $a1, $a1, 0x10
/* C1968 800E6568 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* C196C 800E656C ACA2FFF0 */  sw         $v0, -0x10($a1)
/* C1970 800E6570 ACA3FFF4 */  sw         $v1, -0xc($a1)
/* C1974 800E6574 ACA8FFF8 */  sw         $t0, -8($a1)
/* C1978 800E6578 1000FFF2 */  b          .L800E6544
/* C197C 800E657C ACA9FFFC */   sw        $t1, -4($a1)
.L800E6580:
/* C1980 800E6580 28C10004 */  slti       $at, $a2, 4
.L800E6584:
/* C1984 800E6584 1420FFB5 */  bnez       $at, .L800E645C
/* C1988 800E6588 00000000 */   nop
/* C198C 800E658C 8C820000 */  lw         $v0, ($a0)
/* C1990 800E6590 24840004 */  addiu      $a0, $a0, 4
/* C1994 800E6594 24A50004 */  addiu      $a1, $a1, 4
/* C1998 800E6598 24C6FFFC */  addiu      $a2, $a2, -4
/* C199C 800E659C 1000FFF8 */  b          .L800E6580
/* C19A0 800E65A0 ACA2FFFC */   sw        $v0, -4($a1)
/* C19A4 800E65A4 28C10010 */  slti       $at, $a2, 0x10
.L800E65A8:
/* C19A8 800E65A8 00862020 */  add        $a0, $a0, $a2
/* C19AC 800E65AC 14200005 */  bnez       $at, .L800E65C4
/* C19B0 800E65B0 00A62820 */   add       $a1, $a1, $a2
/* C19B4 800E65B4 30820003 */  andi       $v0, $a0, 3
/* C19B8 800E65B8 30A30003 */  andi       $v1, $a1, 3
/* C19BC 800E65BC 1043000D */  beq        $v0, $v1, .L800E65F4
/* C19C0 800E65C0 00000000 */   nop
.L800E65C4:
/* C19C4 800E65C4 10C0FFAD */  beqz       $a2, .L800E647C
/* C19C8 800E65C8 00000000 */   nop
/* C19CC 800E65CC 2484FFFF */  addiu      $a0, $a0, -1
/* C19D0 800E65D0 24A5FFFF */  addiu      $a1, $a1, -1
/* C19D4 800E65D4 00861823 */  subu       $v1, $a0, $a2
.L800E65D8:
/* C19D8 800E65D8 80820000 */  lb         $v0, ($a0)
/* C19DC 800E65DC 2484FFFF */  addiu      $a0, $a0, -1
/* C19E0 800E65E0 24A5FFFF */  addiu      $a1, $a1, -1
/* C19E4 800E65E4 1483FFFC */  bne        $a0, $v1, .L800E65D8
/* C19E8 800E65E8 A0A20001 */   sb        $v0, 1($a1)
/* C19EC 800E65EC 03E00008 */  jr         $ra
/* C19F0 800E65F0 00E01025 */   or        $v0, $a3, $zero
.L800E65F4:
/* C19F4 800E65F4 10400018 */  beqz       $v0, .L800E6658
/* C19F8 800E65F8 24010003 */   addiu     $at, $zero, 3
/* C19FC 800E65FC 1041000F */  beq        $v0, $at, .L800E663C
/* C1A00 800E6600 24010002 */   addiu     $at, $zero, 2
/* C1A04 800E6604 50410008 */  beql       $v0, $at, .L800E6628
/* C1A08 800E6608 8482FFFE */   lh        $v0, -2($a0)
/* C1A0C 800E660C 8082FFFF */  lb         $v0, -1($a0)
/* C1A10 800E6610 2484FFFF */  addiu      $a0, $a0, -1
/* C1A14 800E6614 24A5FFFF */  addiu      $a1, $a1, -1
/* C1A18 800E6618 24C6FFFF */  addiu      $a2, $a2, -1
/* C1A1C 800E661C 1000000E */  b          .L800E6658
/* C1A20 800E6620 A0A20000 */   sb        $v0, ($a1)
/* C1A24 800E6624 8482FFFE */  lh         $v0, -2($a0)
.L800E6628:
/* C1A28 800E6628 2484FFFE */  addiu      $a0, $a0, -2
/* C1A2C 800E662C 24A5FFFE */  addiu      $a1, $a1, -2
/* C1A30 800E6630 24C6FFFE */  addiu      $a2, $a2, -2
/* C1A34 800E6634 10000008 */  b          .L800E6658
/* C1A38 800E6638 A4A20000 */   sh        $v0, ($a1)
.L800E663C:
/* C1A3C 800E663C 8082FFFF */  lb         $v0, -1($a0)
/* C1A40 800E6640 8483FFFD */  lh         $v1, -3($a0)
/* C1A44 800E6644 2484FFFD */  addiu      $a0, $a0, -3
/* C1A48 800E6648 24A5FFFD */  addiu      $a1, $a1, -3
/* C1A4C 800E664C 24C6FFFD */  addiu      $a2, $a2, -3
/* C1A50 800E6650 A0A20002 */  sb         $v0, 2($a1)
/* C1A54 800E6654 A4A30000 */  sh         $v1, ($a1)
.L800E6658:
/* C1A58 800E6658 28C10020 */  slti       $at, $a2, 0x20
/* C1A5C 800E665C 54200016 */  bnel       $at, $zero, .L800E66B8
/* C1A60 800E6660 28C10010 */   slti      $at, $a2, 0x10
/* C1A64 800E6664 8C82FFFC */  lw         $v0, -4($a0)
/* C1A68 800E6668 8C83FFF8 */  lw         $v1, -8($a0)
/* C1A6C 800E666C 8C88FFF4 */  lw         $t0, -0xc($a0)
/* C1A70 800E6670 8C89FFF0 */  lw         $t1, -0x10($a0)
/* C1A74 800E6674 8C8AFFEC */  lw         $t2, -0x14($a0)
/* C1A78 800E6678 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* C1A7C 800E667C 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* C1A80 800E6680 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* C1A84 800E6684 2484FFE0 */  addiu      $a0, $a0, -0x20
/* C1A88 800E6688 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* C1A8C 800E668C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* C1A90 800E6690 ACA2001C */  sw         $v0, 0x1c($a1)
/* C1A94 800E6694 ACA30018 */  sw         $v1, 0x18($a1)
/* C1A98 800E6698 ACA80014 */  sw         $t0, 0x14($a1)
/* C1A9C 800E669C ACA90010 */  sw         $t1, 0x10($a1)
/* C1AA0 800E66A0 ACAA000C */  sw         $t2, 0xc($a1)
/* C1AA4 800E66A4 ACAB0008 */  sw         $t3, 8($a1)
/* C1AA8 800E66A8 ACAC0004 */  sw         $t4, 4($a1)
/* C1AAC 800E66AC 1000FFEA */  b          .L800E6658
/* C1AB0 800E66B0 ACAD0000 */   sw        $t5, ($a1)
.L800E66B4:
/* C1AB4 800E66B4 28C10010 */  slti       $at, $a2, 0x10
.L800E66B8:
/* C1AB8 800E66B8 5420000E */  bnel       $at, $zero, .L800E66F4
/* C1ABC 800E66BC 28C10004 */   slti      $at, $a2, 4
/* C1AC0 800E66C0 8C82FFFC */  lw         $v0, -4($a0)
/* C1AC4 800E66C4 8C83FFF8 */  lw         $v1, -8($a0)
/* C1AC8 800E66C8 8C88FFF4 */  lw         $t0, -0xc($a0)
/* C1ACC 800E66CC 8C89FFF0 */  lw         $t1, -0x10($a0)
/* C1AD0 800E66D0 2484FFF0 */  addiu      $a0, $a0, -0x10
/* C1AD4 800E66D4 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* C1AD8 800E66D8 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* C1ADC 800E66DC ACA2000C */  sw         $v0, 0xc($a1)
/* C1AE0 800E66E0 ACA30008 */  sw         $v1, 8($a1)
/* C1AE4 800E66E4 ACA80004 */  sw         $t0, 4($a1)
/* C1AE8 800E66E8 1000FFF2 */  b          .L800E66B4
/* C1AEC 800E66EC ACA90000 */   sw        $t1, ($a1)
.L800E66F0:
/* C1AF0 800E66F0 28C10004 */  slti       $at, $a2, 4
.L800E66F4:
/* C1AF4 800E66F4 1420FFB3 */  bnez       $at, .L800E65C4
/* C1AF8 800E66F8 00000000 */   nop
/* C1AFC 800E66FC 8C82FFFC */  lw         $v0, -4($a0)
/* C1B00 800E6700 2484FFFC */  addiu      $a0, $a0, -4
/* C1B04 800E6704 24A5FFFC */  addiu      $a1, $a1, -4
/* C1B08 800E6708 24C6FFFC */  addiu      $a2, $a2, -4
/* C1B0C 800E670C 1000FFF8 */  b          .L800E66F0
/* C1B10 800E6710 ACA20000 */   sw        $v0, ($a1)
/* C1B14 800E6714 00000000 */  nop
/* C1B18 800E6718 00000000 */  nop
/* C1B1C 800E671C 00000000 */  nop

glabel func_800E6720
/* C1B20 800E6720 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* C1B24 800E6724 03E00008 */  jr         $ra
/* C1B28 800E6728 ADC40010 */   sw        $a0, %lo(D_A4040010)($t6)
/* C1B2C 800E672C 00000000 */  nop
