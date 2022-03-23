.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF680
/* BAA80 800DF680 8C830018 */  lw         $v1, 0x18($a0)
/* BAA84 800DF684 54600004 */  bnel       $v1, $zero, .L800DF698
/* BAA88 800DF688 8C8E0024 */   lw        $t6, 0x24($a0)
/* BAA8C 800DF68C 03E00008 */  jr         $ra
/* BAA90 800DF690 00001025 */   or        $v0, $zero, $zero
/* BAA94 800DF694 8C8E0024 */  lw         $t6, 0x24($a0)
.L800DF698:
/* BAA98 800DF698 C4680008 */  lwc1       $f8, 8($v1)
/* BAA9C 800DF69C 448E2000 */  mtc1       $t6, $f4
/* BAAA0 800DF6A0 00000000 */  nop
/* BAAA4 800DF6A4 468021A0 */  cvt.s.w    $f6, $f4
/* BAAA8 800DF6A8 46083283 */  div.s      $f10, $f6, $f8
/* BAAAC 800DF6AC 4600540D */  trunc.w.s  $f16, $f10
/* BAAB0 800DF6B0 44028000 */  mfc1       $v0, $f16
/* BAAB4 800DF6B4 00000000 */  nop
/* BAAB8 800DF6B8 03E00008 */  jr         $ra
/* BAABC 800DF6BC 00000000 */   nop

glabel func_800DF6C0
/* BAAC0 800DF6C0 8C8E0004 */  lw         $t6, 4($a0)
/* BAAC4 800DF6C4 00803025 */  or         $a2, $a0, $zero
/* BAAC8 800DF6C8 00804025 */  or         $t0, $a0, $zero
/* BAACC 800DF6CC ACAE0000 */  sw         $t6, ($a1)
/* BAAD0 800DF6D0 8C8F000C */  lw         $t7, 0xc($a0)
/* BAAD4 800DF6D4 00001025 */  or         $v0, $zero, $zero
/* BAAD8 800DF6D8 00A01825 */  or         $v1, $a1, $zero
/* BAADC 800DF6DC ACAF0004 */  sw         $t7, 4($a1)
/* BAAE0 800DF6E0 8C980010 */  lw         $t8, 0x10($a0)
/* BAAE4 800DF6E4 24040010 */  addiu      $a0, $zero, 0x10
/* BAAE8 800DF6E8 00A03825 */  or         $a3, $a1, $zero
/* BAAEC 800DF6EC ACB80008 */  sw         $t8, 8($a1)
.L800DF6F0:
/* BAAF0 800DF6F0 8CD90018 */  lw         $t9, 0x18($a2)
/* BAAF4 800DF6F4 24420002 */  addiu      $v0, $v0, 2
/* BAAF8 800DF6F8 24630008 */  addiu      $v1, $v1, 8
/* BAAFC 800DF6FC AC790004 */  sw         $t9, 4($v1)
/* BAB00 800DF700 8CC90058 */  lw         $t1, 0x58($a2)
/* BAB04 800DF704 24C60008 */  addiu      $a2, $a2, 8
/* BAB08 800DF708 24E70002 */  addiu      $a3, $a3, 2
/* BAB0C 800DF70C AC690044 */  sw         $t1, 0x44($v1)
/* BAB10 800DF710 910A0098 */  lbu        $t2, 0x98($t0)
/* BAB14 800DF714 25080002 */  addiu      $t0, $t0, 2
/* BAB18 800DF718 A0EA008A */  sb         $t2, 0x8a($a3)
/* BAB1C 800DF71C 910B00A6 */  lbu        $t3, 0xa6($t0)
/* BAB20 800DF720 A0EB009A */  sb         $t3, 0x9a($a3)
/* BAB24 800DF724 8CCC00B0 */  lw         $t4, 0xb0($a2)
/* BAB28 800DF728 AC6C00A4 */  sw         $t4, 0xa4($v1)
/* BAB2C 800DF72C 8CCD0014 */  lw         $t5, 0x14($a2)
/* BAB30 800DF730 AC6D0008 */  sw         $t5, 8($v1)
/* BAB34 800DF734 8CCE0054 */  lw         $t6, 0x54($a2)
/* BAB38 800DF738 AC6E0048 */  sw         $t6, 0x48($v1)
/* BAB3C 800DF73C 910F0097 */  lbu        $t7, 0x97($t0)
/* BAB40 800DF740 A0EF008B */  sb         $t7, 0x8b($a3)
/* BAB44 800DF744 911800A7 */  lbu        $t8, 0xa7($t0)
/* BAB48 800DF748 A0F8009B */  sb         $t8, 0x9b($a3)
/* BAB4C 800DF74C 8CD900B4 */  lw         $t9, 0xb4($a2)
/* BAB50 800DF750 1444FFE7 */  bne        $v0, $a0, .L800DF6F0
/* BAB54 800DF754 AC7900A8 */   sw        $t9, 0xa8($v1)
/* BAB58 800DF758 03E00008 */  jr         $ra
/* BAB5C 800DF75C 00000000 */   nop

glabel func_800DF760
/* BAB60 800DF760 8CAE0000 */  lw         $t6, ($a1)
/* BAB64 800DF764 00801825 */  or         $v1, $a0, $zero
/* BAB68 800DF768 00803825 */  or         $a3, $a0, $zero
/* BAB6C 800DF76C AC8E0004 */  sw         $t6, 4($a0)
/* BAB70 800DF770 8CAF0004 */  lw         $t7, 4($a1)
/* BAB74 800DF774 00001025 */  or         $v0, $zero, $zero
/* BAB78 800DF778 00A03025 */  or         $a2, $a1, $zero
/* BAB7C 800DF77C AC8F000C */  sw         $t7, 0xc($a0)
/* BAB80 800DF780 8CB80008 */  lw         $t8, 8($a1)
/* BAB84 800DF784 00A04025 */  or         $t0, $a1, $zero
/* BAB88 800DF788 AC980010 */  sw         $t8, 0x10($a0)
/* BAB8C 800DF78C 24040010 */  addiu      $a0, $zero, 0x10
.L800DF790:
/* BAB90 800DF790 8CD9000C */  lw         $t9, 0xc($a2)
/* BAB94 800DF794 24420002 */  addiu      $v0, $v0, 2
/* BAB98 800DF798 24630008 */  addiu      $v1, $v1, 8
/* BAB9C 800DF79C AC790010 */  sw         $t9, 0x10($v1)
/* BABA0 800DF7A0 8CC9004C */  lw         $t1, 0x4c($a2)
/* BABA4 800DF7A4 24C60008 */  addiu      $a2, $a2, 8
/* BABA8 800DF7A8 24E70002 */  addiu      $a3, $a3, 2
/* BABAC 800DF7AC AC690050 */  sw         $t1, 0x50($v1)
/* BABB0 800DF7B0 910A008C */  lbu        $t2, 0x8c($t0)
/* BABB4 800DF7B4 25080002 */  addiu      $t0, $t0, 2
/* BABB8 800DF7B8 A0EA0096 */  sb         $t2, 0x96($a3)
/* BABBC 800DF7BC 910B009A */  lbu        $t3, 0x9a($t0)
/* BABC0 800DF7C0 A0EB00A6 */  sb         $t3, 0xa6($a3)
/* BABC4 800DF7C4 8CCC00A4 */  lw         $t4, 0xa4($a2)
/* BABC8 800DF7C8 AC6C00B0 */  sw         $t4, 0xb0($v1)
/* BABCC 800DF7CC 8CCD0008 */  lw         $t5, 8($a2)
/* BABD0 800DF7D0 AC6D0014 */  sw         $t5, 0x14($v1)
/* BABD4 800DF7D4 8CCE0048 */  lw         $t6, 0x48($a2)
/* BABD8 800DF7D8 AC6E0054 */  sw         $t6, 0x54($v1)
/* BABDC 800DF7DC 910F008B */  lbu        $t7, 0x8b($t0)
/* BABE0 800DF7E0 A0EF0097 */  sb         $t7, 0x97($a3)
/* BABE4 800DF7E4 9118009B */  lbu        $t8, 0x9b($t0)
/* BABE8 800DF7E8 A0F800A7 */  sb         $t8, 0xa7($a3)
/* BABEC 800DF7EC 8CD900A8 */  lw         $t9, 0xa8($a2)
/* BABF0 800DF7F0 1444FFE7 */  bne        $v0, $a0, .L800DF790
/* BABF4 800DF7F4 AC7900B4 */   sw        $t9, 0xb4($v1)
/* BABF8 800DF7F8 03E00008 */  jr         $ra
/* BABFC 800DF7FC 00000000 */   nop

glabel func_800DF800
/* BAC00 800DF800 00851021 */  addu       $v0, $a0, $a1
/* BAC04 800DF804 904E0098 */  lbu        $t6, 0x98($v0)
/* BAC08 800DF808 00057880 */  sll        $t7, $a1, 2
/* BAC0C 800DF80C 008F3021 */  addu       $a2, $a0, $t7
/* BAC10 800DF810 51C0000D */  beql       $t6, $zero, .L800DF848
/* BAC14 800DF814 8CC70018 */   lw        $a3, 0x18($a2)
/* BAC18 800DF818 00057880 */  sll        $t7, $a1, 2
/* BAC1C 800DF81C 008F3021 */  addu       $a2, $a0, $t7
/* BAC20 800DF820 8CC70058 */  lw         $a3, 0x58($a2)
/* BAC24 800DF824 90E30000 */  lbu        $v1, ($a3)
/* BAC28 800DF828 24F80001 */  addiu      $t8, $a3, 1
/* BAC2C 800DF82C ACD80058 */  sw         $t8, 0x58($a2)
/* BAC30 800DF830 90590098 */  lbu        $t9, 0x98($v0)
/* BAC34 800DF834 272EFFFF */  addiu      $t6, $t9, -1
/* BAC38 800DF838 A04E0098 */  sb         $t6, 0x98($v0)
/* BAC3C 800DF83C 03E00008 */  jr         $ra
/* BAC40 800DF840 00601025 */   or        $v0, $v1, $zero
/* BAC44 800DF844 8CC70018 */  lw         $a3, 0x18($a2)
.L800DF848:
/* BAC48 800DF848 240800FE */  addiu      $t0, $zero, 0xfe
/* BAC4C 800DF84C 90E30000 */  lbu        $v1, ($a3)
/* BAC50 800DF850 24F80001 */  addiu      $t8, $a3, 1
/* BAC54 800DF854 ACD80018 */  sw         $t8, 0x18($a2)
/* BAC58 800DF858 15030018 */  bne        $t0, $v1, .L800DF8BC
/* BAC5C 800DF85C 00000000 */   nop
/* BAC60 800DF860 93040000 */  lbu        $a0, ($t8)
/* BAC64 800DF864 27190001 */  addiu      $t9, $t8, 1
/* BAC68 800DF868 ACD90018 */  sw         $t9, 0x18($a2)
/* BAC6C 800DF86C 11040013 */  beq        $t0, $a0, .L800DF8BC
/* BAC70 800DF870 272E0001 */   addiu     $t6, $t9, 1
/* BAC74 800DF874 93230000 */  lbu        $v1, ($t9)
/* BAC78 800DF878 ACCE0018 */  sw         $t6, 0x18($a2)
/* BAC7C 800DF87C 91C50000 */  lbu        $a1, ($t6)
/* BAC80 800DF880 25CF0001 */  addiu      $t7, $t6, 1
/* BAC84 800DF884 0004CA00 */  sll        $t9, $a0, 8
/* BAC88 800DF888 ACCF0018 */  sw         $t7, 0x18($a2)
/* BAC8C 800DF88C 03237021 */  addu       $t6, $t9, $v1
/* BAC90 800DF890 01EE7823 */  subu       $t7, $t7, $t6
/* BAC94 800DF894 25F9FFFC */  addiu      $t9, $t7, -4
/* BAC98 800DF898 ACD90058 */  sw         $t9, 0x58($a2)
/* BAC9C 800DF89C A0450098 */  sb         $a1, 0x98($v0)
/* BACA0 800DF8A0 8CC70058 */  lw         $a3, 0x58($a2)
/* BACA4 800DF8A4 90E30000 */  lbu        $v1, ($a3)
/* BACA8 800DF8A8 24F80001 */  addiu      $t8, $a3, 1
/* BACAC 800DF8AC ACD80058 */  sw         $t8, 0x58($a2)
/* BACB0 800DF8B0 904E0098 */  lbu        $t6, 0x98($v0)
/* BACB4 800DF8B4 25CFFFFF */  addiu      $t7, $t6, -1
/* BACB8 800DF8B8 A04F0098 */  sb         $t7, 0x98($v0)
.L800DF8BC:
/* BACBC 800DF8BC 03E00008 */  jr         $ra
/* BACC0 800DF8C0 00601025 */   or        $v0, $v1, $zero

glabel func_800DF8C4
/* BACC4 800DF8C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BACC8 800DF8C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BACCC 800DF8CC 01402025 */  or         $a0, $t2, $zero
/* BACD0 800DF8D0 0C037E00 */  jal        func_800DF800
/* BACD4 800DF8D4 01602825 */   or        $a1, $t3, $zero
/* BACD8 800DF8D8 304E0080 */  andi       $t6, $v0, 0x80
/* BACDC 800DF8DC 11C0000A */  beqz       $t6, .L800DF908
/* BACE0 800DF8E0 00404825 */   or        $t1, $v0, $zero
/* BACE4 800DF8E4 3049007F */  andi       $t1, $v0, 0x7f
.L800DF8E8:
/* BACE8 800DF8E8 01402025 */  or         $a0, $t2, $zero
/* BACEC 800DF8EC 0C037E00 */  jal        func_800DF800
/* BACF0 800DF8F0 01602825 */   or        $a1, $t3, $zero
/* BACF4 800DF8F4 000979C0 */  sll        $t7, $t1, 7
/* BACF8 800DF8F8 3058007F */  andi       $t8, $v0, 0x7f
/* BACFC 800DF8FC 30590080 */  andi       $t9, $v0, 0x80
/* BAD00 800DF900 1720FFF9 */  bnez       $t9, .L800DF8E8
/* BAD04 800DF904 01F84821 */   addu      $t1, $t7, $t8
.L800DF908:
/* BAD08 800DF908 8FBF0014 */  lw         $ra, 0x14($sp)
/* BAD0C 800DF90C 27BD0018 */  addiu      $sp, $sp, 0x18
/* BAD10 800DF910 01201025 */  or         $v0, $t1, $zero
/* BAD14 800DF914 03E00008 */  jr         $ra
/* BAD18 800DF918 00000000 */   nop

glabel func_800DF91C
/* BAD1C 800DF91C 03E00008 */  jr         $ra
/* BAD20 800DF920 00000000 */   nop

glabel func_800DF924
/* BAD24 800DF924 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BAD28 800DF928 AFB00018 */  sw         $s0, 0x18($sp)
/* BAD2C 800DF92C 00A08025 */  or         $s0, $a1, $zero
/* BAD30 800DF930 AFBF001C */  sw         $ra, 0x1c($sp)
/* BAD34 800DF934 00806025 */  or         $t4, $a0, $zero
/* BAD38 800DF938 2409FFFF */  addiu      $t1, $zero, -1
/* BAD3C 800DF93C 8C860010 */  lw         $a2, 0x10($a0)
/* BAD40 800DF940 24050010 */  addiu      $a1, $zero, 0x10
/* BAD44 800DF944 8FAB0024 */  lw         $t3, 0x24($sp)
/* BAD48 800DF948 00001025 */  or         $v0, $zero, $zero
/* BAD4C 800DF94C 8D8E0004 */  lw         $t6, 4($t4)
.L800DF950:
/* BAD50 800DF950 004E7806 */  srlv       $t7, $t6, $v0
/* BAD54 800DF954 31F80001 */  andi       $t8, $t7, 1
/* BAD58 800DF958 53000010 */  beql       $t8, $zero, .L800DF99C
/* BAD5C 800DF95C 24420001 */   addiu     $v0, $v0, 1
/* BAD60 800DF960 8D8E0014 */  lw         $t6, 0x14($t4)
/* BAD64 800DF964 0002C880 */  sll        $t9, $v0, 2
/* BAD68 800DF968 01991821 */  addu       $v1, $t4, $t9
/* BAD6C 800DF96C 51C00005 */  beql       $t6, $zero, .L800DF984
/* BAD70 800DF970 8C6400B8 */   lw        $a0, 0xb8($v1)
/* BAD74 800DF974 8C6F00B8 */  lw         $t7, 0xb8($v1)
/* BAD78 800DF978 01E6C023 */  subu       $t8, $t7, $a2
/* BAD7C 800DF97C AC7800B8 */  sw         $t8, 0xb8($v1)
/* BAD80 800DF980 8C6400B8 */  lw         $a0, 0xb8($v1)
.L800DF984:
/* BAD84 800DF984 0089082B */  sltu       $at, $a0, $t1
/* BAD88 800DF988 50200004 */  beql       $at, $zero, .L800DF99C
/* BAD8C 800DF98C 24420001 */   addiu     $v0, $v0, 1
/* BAD90 800DF990 00804825 */  or         $t1, $a0, $zero
/* BAD94 800DF994 00405825 */  or         $t3, $v0, $zero
/* BAD98 800DF998 24420001 */  addiu      $v0, $v0, 1
.L800DF99C:
/* BAD9C 800DF99C 5445FFEC */  bnel       $v0, $a1, .L800DF950
/* BADA0 800DF9A0 8D8E0004 */   lw        $t6, 4($t4)
/* BADA4 800DF9A4 01802025 */  or         $a0, $t4, $zero
/* BADA8 800DF9A8 0C037E00 */  jal        func_800DF800
/* BADAC 800DF9AC 01602825 */   or        $a1, $t3, $zero
/* BADB0 800DF9B0 240100FF */  addiu      $at, $zero, 0xff
/* BADB4 800DF9B4 304A00FF */  andi       $t2, $v0, 0xff
/* BADB8 800DF9B8 1441005A */  bne        $v0, $at, .L800DFB24
/* BADBC 800DF9BC 00401825 */   or        $v1, $v0, $zero
/* BADC0 800DF9C0 01802025 */  or         $a0, $t4, $zero
/* BADC4 800DF9C4 0C037E00 */  jal        func_800DF800
/* BADC8 800DF9C8 01602825 */   or        $a1, $t3, $zero
/* BADCC 800DF9CC 24010051 */  addiu      $at, $zero, 0x51
/* BADD0 800DF9D0 304600FF */  andi       $a2, $v0, 0xff
/* BADD4 800DF9D4 14410014 */  bne        $v0, $at, .L800DFA28
/* BADD8 800DF9D8 00401825 */   or        $v1, $v0, $zero
/* BADDC 800DF9DC 24190003 */  addiu      $t9, $zero, 3
/* BADE0 800DF9E0 A6190000 */  sh         $t9, ($s0)
/* BADE4 800DF9E4 A20A0008 */  sb         $t2, 8($s0)
/* BADE8 800DF9E8 A2060009 */  sb         $a2, 9($s0)
/* BADEC 800DF9EC 01802025 */  or         $a0, $t4, $zero
/* BADF0 800DF9F0 0C037E00 */  jal        func_800DF800
/* BADF4 800DF9F4 01602825 */   or        $a1, $t3, $zero
/* BADF8 800DF9F8 A202000B */  sb         $v0, 0xb($s0)
/* BADFC 800DF9FC 01802025 */  or         $a0, $t4, $zero
/* BAE00 800DFA00 0C037E00 */  jal        func_800DF800
/* BAE04 800DFA04 01602825 */   or        $a1, $t3, $zero
/* BAE08 800DFA08 A202000C */  sb         $v0, 0xc($s0)
/* BAE0C 800DFA0C 01802025 */  or         $a0, $t4, $zero
/* BAE10 800DFA10 0C037E00 */  jal        func_800DF800
/* BAE14 800DFA14 01602825 */   or        $a1, $t3, $zero
/* BAE18 800DFA18 A202000D */  sb         $v0, 0xd($s0)
/* BAE1C 800DFA1C 018B7021 */  addu       $t6, $t4, $t3
/* BAE20 800DFA20 10000067 */  b          .L800DFBC0
/* BAE24 800DFA24 A1C000A8 */   sb        $zero, 0xa8($t6)
.L800DFA28:
/* BAE28 800DFA28 2401002F */  addiu      $at, $zero, 0x2f
/* BAE2C 800DFA2C 5461000E */  bnel       $v1, $at, .L800DFA68
/* BAE30 800DFA30 2401002E */   addiu     $at, $zero, 0x2e
/* BAE34 800DFA34 8D8F0004 */  lw         $t7, 4($t4)
/* BAE38 800DFA38 24180001 */  addiu      $t8, $zero, 1
/* BAE3C 800DFA3C 0178C804 */  sllv       $t9, $t8, $t3
/* BAE40 800DFA40 01F97026 */  xor        $t6, $t7, $t9
/* BAE44 800DFA44 11C00004 */  beqz       $t6, .L800DFA58
/* BAE48 800DFA48 AD8E0004 */   sw        $t6, 4($t4)
/* BAE4C 800DFA4C 240F0012 */  addiu      $t7, $zero, 0x12
/* BAE50 800DFA50 1000005B */  b          .L800DFBC0
/* BAE54 800DFA54 A60F0000 */   sh        $t7, ($s0)
.L800DFA58:
/* BAE58 800DFA58 24190004 */  addiu      $t9, $zero, 4
/* BAE5C 800DFA5C 10000058 */  b          .L800DFBC0
/* BAE60 800DFA60 A6190000 */   sh        $t9, ($s0)
/* BAE64 800DFA64 2401002E */  addiu      $at, $zero, 0x2e
.L800DFA68:
/* BAE68 800DFA68 1461000B */  bne        $v1, $at, .L800DFA98
/* BAE6C 800DFA6C 01802025 */   or        $a0, $t4, $zero
/* BAE70 800DFA70 0C037E00 */  jal        func_800DF800
/* BAE74 800DFA74 01602825 */   or        $a1, $t3, $zero
/* BAE78 800DFA78 01802025 */  or         $a0, $t4, $zero
/* BAE7C 800DFA7C 0C037E00 */  jal        func_800DF800
/* BAE80 800DFA80 01602825 */   or        $a1, $t3, $zero
/* BAE84 800DFA84 018B7021 */  addu       $t6, $t4, $t3
/* BAE88 800DFA88 A1C000A8 */  sb         $zero, 0xa8($t6)
/* BAE8C 800DFA8C 24180013 */  addiu      $t8, $zero, 0x13
/* BAE90 800DFA90 1000004B */  b          .L800DFBC0
/* BAE94 800DFA94 A6180000 */   sh        $t8, ($s0)
.L800DFA98:
/* BAE98 800DFA98 2401002D */  addiu      $at, $zero, 0x2d
/* BAE9C 800DFA9C 14610048 */  bne        $v1, $at, .L800DFBC0
/* BAEA0 800DFAA0 000B7880 */   sll       $t7, $t3, 2
/* BAEA4 800DFAA4 018F6821 */  addu       $t5, $t4, $t7
/* BAEA8 800DFAA8 8DA20018 */  lw         $v0, 0x18($t5)
/* BAEAC 800DFAAC 240100FF */  addiu      $at, $zero, 0xff
/* BAEB0 800DFAB0 90440001 */  lbu        $a0, 1($v0)
/* BAEB4 800DFAB4 24420001 */  addiu      $v0, $v0, 1
/* BAEB8 800DFAB8 24590005 */  addiu      $t9, $v0, 5
/* BAEBC 800DFABC 14800004 */  bnez       $a0, .L800DFAD0
/* BAEC0 800DFAC0 9045FFFF */   lbu       $a1, -1($v0)
/* BAEC4 800DFAC4 A0450000 */  sb         $a1, ($v0)
/* BAEC8 800DFAC8 10000011 */  b          .L800DFB10
/* BAECC 800DFACC ADB90018 */   sw        $t9, 0x18($t5)
.L800DFAD0:
/* BAED0 800DFAD0 10810002 */  beq        $a0, $at, .L800DFADC
/* BAED4 800DFAD4 248EFFFF */   addiu     $t6, $a0, -1
/* BAED8 800DFAD8 A04E0000 */  sb         $t6, ($v0)
.L800DFADC:
/* BAEDC 800DFADC 904F0002 */  lbu        $t7, 2($v0)
/* BAEE0 800DFAE0 90430001 */  lbu        $v1, 1($v0)
/* BAEE4 800DFAE4 904E0003 */  lbu        $t6, 3($v0)
/* BAEE8 800DFAE8 000FCC00 */  sll        $t9, $t7, 0x10
/* BAEEC 800DFAEC 0003C600 */  sll        $t8, $v1, 0x18
/* BAEF0 800DFAF0 904F0004 */  lbu        $t7, 4($v0)
/* BAEF4 800DFAF4 03191821 */  addu       $v1, $t8, $t9
/* BAEF8 800DFAF8 000EC200 */  sll        $t8, $t6, 8
/* BAEFC 800DFAFC 00781821 */  addu       $v1, $v1, $t8
/* BAF00 800DFB00 24420005 */  addiu      $v0, $v0, 5
/* BAF04 800DFB04 006F1821 */  addu       $v1, $v1, $t7
/* BAF08 800DFB08 0043C823 */  subu       $t9, $v0, $v1
/* BAF0C 800DFB0C ADB90018 */  sw         $t9, 0x18($t5)
.L800DFB10:
/* BAF10 800DFB10 018B7021 */  addu       $t6, $t4, $t3
/* BAF14 800DFB14 A1C000A8 */  sb         $zero, 0xa8($t6)
/* BAF18 800DFB18 24180014 */  addiu      $t8, $zero, 0x14
/* BAF1C 800DFB1C 10000028 */  b          .L800DFBC0
/* BAF20 800DFB20 A6180000 */   sh        $t8, ($s0)
.L800DFB24:
/* BAF24 800DFB24 240F0001 */  addiu      $t7, $zero, 1
/* BAF28 800DFB28 30790080 */  andi       $t9, $v1, 0x80
/* BAF2C 800DFB2C 13200009 */  beqz       $t9, .L800DFB54
/* BAF30 800DFB30 A60F0000 */   sh        $t7, ($s0)
/* BAF34 800DFB34 A20A0008 */  sb         $t2, 8($s0)
/* BAF38 800DFB38 01802025 */  or         $a0, $t4, $zero
/* BAF3C 800DFB3C 0C037E00 */  jal        func_800DF800
/* BAF40 800DFB40 01602825 */   or        $a1, $t3, $zero
/* BAF44 800DFB44 A2020009 */  sb         $v0, 9($s0)
/* BAF48 800DFB48 018B7021 */  addu       $t6, $t4, $t3
/* BAF4C 800DFB4C 10000005 */  b          .L800DFB64
/* BAF50 800DFB50 A1CA00A8 */   sb        $t2, 0xa8($t6)
.L800DFB54:
/* BAF54 800DFB54 018BC021 */  addu       $t8, $t4, $t3
/* BAF58 800DFB58 930F00A8 */  lbu        $t7, 0xa8($t8)
/* BAF5C 800DFB5C A2020009 */  sb         $v0, 9($s0)
/* BAF60 800DFB60 A20F0008 */  sb         $t7, 8($s0)
.L800DFB64:
/* BAF64 800DFB64 92020008 */  lbu        $v0, 8($s0)
/* BAF68 800DFB68 240100C0 */  addiu      $at, $zero, 0xc0
/* BAF6C 800DFB6C 305900F0 */  andi       $t9, $v0, 0xf0
/* BAF70 800DFB70 13210012 */  beq        $t9, $at, .L800DFBBC
/* BAF74 800DFB74 240100D0 */   addiu     $at, $zero, 0xd0
/* BAF78 800DFB78 13210010 */  beq        $t9, $at, .L800DFBBC
/* BAF7C 800DFB7C 01802025 */   or        $a0, $t4, $zero
/* BAF80 800DFB80 0C037E00 */  jal        func_800DF800
/* BAF84 800DFB84 01602825 */   or        $a1, $t3, $zero
/* BAF88 800DFB88 920E0008 */  lbu        $t6, 8($s0)
/* BAF8C 800DFB8C 24010090 */  addiu      $at, $zero, 0x90
/* BAF90 800DFB90 A202000A */  sb         $v0, 0xa($s0)
/* BAF94 800DFB94 31D800F0 */  andi       $t8, $t6, 0xf0
/* BAF98 800DFB98 17010009 */  bne        $t8, $at, .L800DFBC0
/* BAF9C 800DFB9C 01805025 */   or        $t2, $t4, $zero
/* BAFA0 800DFBA0 AFA90028 */  sw         $t1, 0x28($sp)
/* BAFA4 800DFBA4 0C037E31 */  jal        func_800DF8C4
/* BAFA8 800DFBA8 AFAB0024 */   sw        $t3, 0x24($sp)
/* BAFAC 800DFBAC 8FA90028 */  lw         $t1, 0x28($sp)
/* BAFB0 800DFBB0 8FAB0024 */  lw         $t3, 0x24($sp)
/* BAFB4 800DFBB4 10000002 */  b          .L800DFBC0
/* BAFB8 800DFBB8 AE02000C */   sw        $v0, 0xc($s0)
.L800DFBBC:
/* BAFBC 800DFBBC A200000A */  sb         $zero, 0xa($s0)
.L800DFBC0:
/* BAFC0 800DFBC0 AE090004 */  sw         $t1, 4($s0)
/* BAFC4 800DFBC4 8D8F000C */  lw         $t7, 0xc($t4)
/* BAFC8 800DFBC8 AD890010 */  sw         $t1, 0x10($t4)
/* BAFCC 800DFBCC 24010012 */  addiu      $at, $zero, 0x12
/* BAFD0 800DFBD0 01E9C821 */  addu       $t9, $t7, $t1
/* BAFD4 800DFBD4 AD99000C */  sw         $t9, 0xc($t4)
/* BAFD8 800DFBD8 860E0000 */  lh         $t6, ($s0)
/* BAFDC 800DFBDC 01805025 */  or         $t2, $t4, $zero
/* BAFE0 800DFBE0 000BC080 */  sll        $t8, $t3, 2
/* BAFE4 800DFBE4 51C10007 */  beql       $t6, $at, .L800DFC04
/* BAFE8 800DFBE8 240E0001 */   addiu     $t6, $zero, 1
/* BAFEC 800DFBEC 0C037E31 */  jal        func_800DF8C4
/* BAFF0 800DFBF0 01986821 */   addu      $t5, $t4, $t8
/* BAFF4 800DFBF4 8DAF00B8 */  lw         $t7, 0xb8($t5)
/* BAFF8 800DFBF8 01E2C821 */  addu       $t9, $t7, $v0
/* BAFFC 800DFBFC ADB900B8 */  sw         $t9, 0xb8($t5)
/* BB000 800DFC00 240E0001 */  addiu      $t6, $zero, 1
.L800DFC04:
/* BB004 800DFC04 AD8E0014 */  sw         $t6, 0x14($t4)
/* BB008 800DFC08 8FBF001C */  lw         $ra, 0x1c($sp)
/* BB00C 800DFC0C 8FB00018 */  lw         $s0, 0x18($sp)
/* BB010 800DFC10 27BD0030 */  addiu      $sp, $sp, 0x30
/* BB014 800DFC14 03E00008 */  jr         $ra
/* BB018 800DFC18 00000000 */   nop

glabel func_800DFC1C
/* BB01C 800DFC1C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BB020 800DFC20 AFB40028 */  sw         $s4, 0x28($sp)
/* BB024 800DFC24 AFB30024 */  sw         $s3, 0x24($sp)
/* BB028 800DFC28 AFB20020 */  sw         $s2, 0x20($sp)
/* BB02C 800DFC2C AFB1001C */  sw         $s1, 0x1c($sp)
/* BB030 800DFC30 AFB00018 */  sw         $s0, 0x18($sp)
/* BB034 800DFC34 AFBF002C */  sw         $ra, 0x2c($sp)
/* BB038 800DFC38 240E0001 */  addiu      $t6, $zero, 1
/* BB03C 800DFC3C 00808025 */  or         $s0, $a0, $zero
/* BB040 800DFC40 00A0A025 */  or         $s4, $a1, $zero
/* BB044 800DFC44 AC850000 */  sw         $a1, ($a0)
/* BB048 800DFC48 AC800004 */  sw         $zero, 4($a0)
/* BB04C 800DFC4C AC800010 */  sw         $zero, 0x10($a0)
/* BB050 800DFC50 AC80000C */  sw         $zero, 0xc($a0)
/* BB054 800DFC54 AC8E0014 */  sw         $t6, 0x14($a0)
/* BB058 800DFC58 00808825 */  or         $s1, $a0, $zero
/* BB05C 800DFC5C 00009025 */  or         $s2, $zero, $zero
/* BB060 800DFC60 24130010 */  addiu      $s3, $zero, 0x10
/* BB064 800DFC64 00006825 */  or         $t5, $zero, $zero
/* BB068 800DFC68 00806025 */  or         $t4, $a0, $zero
.L800DFC6C:
/* BB06C 800DFC6C A22000A8 */  sb         $zero, 0xa8($s1)
/* BB070 800DFC70 AD800058 */  sw         $zero, 0x58($t4)
/* BB074 800DFC74 A2200098 */  sb         $zero, 0x98($s1)
/* BB078 800DFC78 8E0F0000 */  lw         $t7, ($s0)
/* BB07C 800DFC7C 240E0001 */  addiu      $t6, $zero, 1
/* BB080 800DFC80 01F2C021 */  addu       $t8, $t7, $s2
/* BB084 800DFC84 8F020000 */  lw         $v0, ($t8)
/* BB088 800DFC88 01AE7804 */  sllv       $t7, $t6, $t5
/* BB08C 800DFC8C 1040000A */  beqz       $v0, .L800DFCB8
/* BB090 800DFC90 02827021 */   addu      $t6, $s4, $v0
/* BB094 800DFC94 8E190004 */  lw         $t9, 4($s0)
/* BB098 800DFC98 02005025 */  or         $t2, $s0, $zero
/* BB09C 800DFC9C 01A05825 */  or         $t3, $t5, $zero
/* BB0A0 800DFCA0 032FC025 */  or         $t8, $t9, $t7
/* BB0A4 800DFCA4 AE180004 */  sw         $t8, 4($s0)
/* BB0A8 800DFCA8 0C037E31 */  jal        func_800DF8C4
/* BB0AC 800DFCAC AD8E0018 */   sw        $t6, 0x18($t4)
/* BB0B0 800DFCB0 10000002 */  b          .L800DFCBC
/* BB0B4 800DFCB4 AD8200B8 */   sw        $v0, 0xb8($t4)
.L800DFCB8:
/* BB0B8 800DFCB8 AD800018 */  sw         $zero, 0x18($t4)
.L800DFCBC:
/* BB0BC 800DFCBC 25AD0001 */  addiu      $t5, $t5, 1
/* BB0C0 800DFCC0 26310001 */  addiu      $s1, $s1, 1
/* BB0C4 800DFCC4 26520004 */  addiu      $s2, $s2, 4
/* BB0C8 800DFCC8 15B3FFE8 */  bne        $t5, $s3, .L800DFC6C
/* BB0CC 800DFCCC 258C0004 */   addiu     $t4, $t4, 4
/* BB0D0 800DFCD0 8E190000 */  lw         $t9, ($s0)
/* BB0D4 800DFCD4 3C013FF0 */  lui        $at, 0x3ff0
/* BB0D8 800DFCD8 44812800 */  mtc1       $at, $f5
/* BB0DC 800DFCDC 8F2F0040 */  lw         $t7, 0x40($t9)
/* BB0E0 800DFCE0 44802000 */  mtc1       $zero, $f4
/* BB0E4 800DFCE4 3C014F80 */  lui        $at, 0x4f80
/* BB0E8 800DFCE8 448F3000 */  mtc1       $t7, $f6
/* BB0EC 800DFCEC 05E10004 */  bgez       $t7, .L800DFD00
/* BB0F0 800DFCF0 46803220 */   cvt.s.w   $f8, $f6
/* BB0F4 800DFCF4 44815000 */  mtc1       $at, $f10
/* BB0F8 800DFCF8 00000000 */  nop
/* BB0FC 800DFCFC 460A4200 */  add.s      $f8, $f8, $f10
.L800DFD00:
/* BB100 800DFD00 460041A1 */  cvt.d.s    $f6, $f8
/* BB104 800DFD04 46262283 */  div.d      $f10, $f4, $f6
/* BB108 800DFD08 46205220 */  cvt.s.d    $f8, $f10
/* BB10C 800DFD0C E6080008 */  swc1       $f8, 8($s0)
/* BB110 800DFD10 8FBF002C */  lw         $ra, 0x2c($sp)
/* BB114 800DFD14 8FB40028 */  lw         $s4, 0x28($sp)
/* BB118 800DFD18 8FB30024 */  lw         $s3, 0x24($sp)
/* BB11C 800DFD1C 8FB20020 */  lw         $s2, 0x20($sp)
/* BB120 800DFD20 8FB1001C */  lw         $s1, 0x1c($sp)
/* BB124 800DFD24 8FB00018 */  lw         $s0, 0x18($sp)
/* BB128 800DFD28 03E00008 */  jr         $ra
/* BB12C 800DFD2C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800DFD30
/* BB130 800DFD30 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* BB134 800DFD34 AFB30020 */  sw         $s3, 0x20($sp)
/* BB138 800DFD38 AFB10018 */  sw         $s1, 0x18($sp)
/* BB13C 800DFD3C 00A08825 */  or         $s1, $a1, $zero
/* BB140 800DFD40 27B30048 */  addiu      $s3, $sp, 0x48
/* BB144 800DFD44 AFBF002C */  sw         $ra, 0x2c($sp)
/* BB148 800DFD48 AFB50028 */  sw         $s5, 0x28($sp)
/* BB14C 800DFD4C AFB40024 */  sw         $s4, 0x24($sp)
/* BB150 800DFD50 AFB2001C */  sw         $s2, 0x1c($sp)
/* BB154 800DFD54 AFB00014 */  sw         $s0, 0x14($sp)
/* BB158 800DFD58 00803825 */  or         $a3, $a0, $zero
/* BB15C 800DFD5C 00C09025 */  or         $s2, $a2, $zero
/* BB160 800DFD60 8CE50000 */  lw         $a1, ($a3)
/* BB164 800DFD64 0C037F07 */  jal        func_800DFC1C
/* BB168 800DFD68 02602025 */   or        $a0, $s3, $zero
/* BB16C 800DFD6C 24150004 */  addiu      $s5, $zero, 4
/* BB170 800DFD70 27B40140 */  addiu      $s4, $sp, 0x140
/* BB174 800DFD74 27B00058 */  addiu      $s0, $sp, 0x58
/* BB178 800DFD78 8FAE004C */  lw         $t6, 0x4c($sp)
.L800DFD7C:
/* BB17C 800DFD7C 27A40048 */  addiu      $a0, $sp, 0x48
/* BB180 800DFD80 00801825 */  or         $v1, $a0, $zero
/* BB184 800DFD84 AE2E0000 */  sw         $t6, ($s1)
/* BB188 800DFD88 8FAF0054 */  lw         $t7, 0x54($sp)
/* BB18C 800DFD8C 02201025 */  or         $v0, $s1, $zero
/* BB190 800DFD90 02202825 */  or         $a1, $s1, $zero
/* BB194 800DFD94 AE2F0004 */  sw         $t7, 4($s1)
/* BB198 800DFD98 8FB80058 */  lw         $t8, 0x58($sp)
/* BB19C 800DFD9C AE380008 */  sw         $t8, 8($s1)
.L800DFDA0:
/* BB1A0 800DFDA0 8C680018 */  lw         $t0, 0x18($v1)
/* BB1A4 800DFDA4 24840004 */  addiu      $a0, $a0, 4
/* BB1A8 800DFDA8 24420010 */  addiu      $v0, $v0, 0x10
/* BB1AC 800DFDAC AC48FFFC */  sw         $t0, -4($v0)
/* BB1B0 800DFDB0 8C690058 */  lw         $t1, 0x58($v1)
/* BB1B4 800DFDB4 24630010 */  addiu      $v1, $v1, 0x10
/* BB1B8 800DFDB8 24A50004 */  addiu      $a1, $a1, 4
/* BB1BC 800DFDBC AC49003C */  sw         $t1, 0x3c($v0)
/* BB1C0 800DFDC0 908A0094 */  lbu        $t2, 0x94($a0)
/* BB1C4 800DFDC4 A0AA0088 */  sb         $t2, 0x88($a1)
/* BB1C8 800DFDC8 908B00A4 */  lbu        $t3, 0xa4($a0)
/* BB1CC 800DFDCC A0AB0098 */  sb         $t3, 0x98($a1)
/* BB1D0 800DFDD0 8C6C00A8 */  lw         $t4, 0xa8($v1)
/* BB1D4 800DFDD4 AC4C009C */  sw         $t4, 0x9c($v0)
/* BB1D8 800DFDD8 8C6D000C */  lw         $t5, 0xc($v1)
/* BB1DC 800DFDDC AC4D0000 */  sw         $t5, ($v0)
/* BB1E0 800DFDE0 8C6E004C */  lw         $t6, 0x4c($v1)
/* BB1E4 800DFDE4 AC4E0040 */  sw         $t6, 0x40($v0)
/* BB1E8 800DFDE8 908F0095 */  lbu        $t7, 0x95($a0)
/* BB1EC 800DFDEC A0AF0089 */  sb         $t7, 0x89($a1)
/* BB1F0 800DFDF0 909800A5 */  lbu        $t8, 0xa5($a0)
/* BB1F4 800DFDF4 A0B80099 */  sb         $t8, 0x99($a1)
/* BB1F8 800DFDF8 8C7900AC */  lw         $t9, 0xac($v1)
/* BB1FC 800DFDFC AC5900A0 */  sw         $t9, 0xa0($v0)
/* BB200 800DFE00 8C680010 */  lw         $t0, 0x10($v1)
/* BB204 800DFE04 AC480004 */  sw         $t0, 4($v0)
/* BB208 800DFE08 8C690050 */  lw         $t1, 0x50($v1)
/* BB20C 800DFE0C AC490044 */  sw         $t1, 0x44($v0)
/* BB210 800DFE10 908A0096 */  lbu        $t2, 0x96($a0)
/* BB214 800DFE14 A0AA008A */  sb         $t2, 0x8a($a1)
/* BB218 800DFE18 908B00A6 */  lbu        $t3, 0xa6($a0)
/* BB21C 800DFE1C A0AB009A */  sb         $t3, 0x9a($a1)
/* BB220 800DFE20 8C6C00B0 */  lw         $t4, 0xb0($v1)
/* BB224 800DFE24 AC4C00A4 */  sw         $t4, 0xa4($v0)
/* BB228 800DFE28 8C6D0014 */  lw         $t5, 0x14($v1)
/* BB22C 800DFE2C AC4D0008 */  sw         $t5, 8($v0)
/* BB230 800DFE30 8C6E0054 */  lw         $t6, 0x54($v1)
/* BB234 800DFE34 AC4E0048 */  sw         $t6, 0x48($v0)
/* BB238 800DFE38 908F0097 */  lbu        $t7, 0x97($a0)
/* BB23C 800DFE3C A0AF008B */  sb         $t7, 0x8b($a1)
/* BB240 800DFE40 909800A7 */  lbu        $t8, 0xa7($a0)
/* BB244 800DFE44 A0B8009B */  sb         $t8, 0x9b($a1)
/* BB248 800DFE48 8C7900B4 */  lw         $t9, 0xb4($v1)
/* BB24C 800DFE4C 1490FFD4 */  bne        $a0, $s0, .L800DFDA0
/* BB250 800DFE50 AC5900A8 */   sw        $t9, 0xa8($v0)
/* BB254 800DFE54 02602025 */  or         $a0, $s3, $zero
/* BB258 800DFE58 0C037E49 */  jal        func_800DF924
/* BB25C 800DFE5C 02802825 */   or        $a1, $s4, $zero
/* BB260 800DFE60 87A80140 */  lh         $t0, 0x140($sp)
/* BB264 800DFE64 8FA90054 */  lw         $t1, 0x54($sp)
/* BB268 800DFE68 11150003 */  beq        $t0, $s5, .L800DFE78
/* BB26C 800DFE6C 0132082B */   sltu      $at, $t1, $s2
/* BB270 800DFE70 5420FFC2 */  bnel       $at, $zero, .L800DFD7C
/* BB274 800DFE74 8FAE004C */   lw        $t6, 0x4c($sp)
.L800DFE78:
/* BB278 800DFE78 8FBF002C */  lw         $ra, 0x2c($sp)
/* BB27C 800DFE7C 8FB00014 */  lw         $s0, 0x14($sp)
/* BB280 800DFE80 8FB10018 */  lw         $s1, 0x18($sp)
/* BB284 800DFE84 8FB2001C */  lw         $s2, 0x1c($sp)
/* BB288 800DFE88 8FB30020 */  lw         $s3, 0x20($sp)
/* BB28C 800DFE8C 8FB40024 */  lw         $s4, 0x24($sp)
/* BB290 800DFE90 8FB50028 */  lw         $s5, 0x28($sp)
/* BB294 800DFE94 03E00008 */  jr         $ra
/* BB298 800DFE98 27BD0150 */   addiu     $sp, $sp, 0x150

glabel func_800DFE9C
/* BB29C 800DFE9C 03E00008 */  jr         $ra
/* BB2A0 800DFEA0 8C82000C */   lw        $v0, 0xc($a0)

glabel func_800DFEA4
/* BB2A4 800DFEA4 8C8E0000 */  lw         $t6, ($a0)
/* BB2A8 800DFEA8 44856000 */  mtc1       $a1, $f12
/* BB2AC 800DFEAC 3C018011 */  lui        $at, %hi(D_80110C20)
/* BB2B0 800DFEB0 8DCF0040 */  lw         $t7, 0x40($t6)
/* BB2B4 800DFEB4 D4260C20 */  ldc1       $f6, %lo(D_80110C20)($at)
/* BB2B8 800DFEB8 46006121 */  cvt.d.s    $f4, $f12
/* BB2BC 800DFEBC 448F5000 */  mtc1       $t7, $f10
/* BB2C0 800DFEC0 46262202 */  mul.d      $f8, $f4, $f6
/* BB2C4 800DFEC4 3C0141F0 */  lui        $at, 0x41f0
/* BB2C8 800DFEC8 05E10005 */  bgez       $t7, .L800DFEE0
/* BB2CC 800DFECC 46805421 */   cvt.d.w   $f16, $f10
/* BB2D0 800DFED0 44819800 */  mtc1       $at, $f19
/* BB2D4 800DFED4 44809000 */  mtc1       $zero, $f18
/* BB2D8 800DFED8 00000000 */  nop
/* BB2DC 800DFEDC 46328400 */  add.d      $f16, $f16, $f18
.L800DFEE0:
/* BB2E0 800DFEE0 44863000 */  mtc1       $a2, $f6
/* BB2E4 800DFEE4 46304102 */  mul.d      $f4, $f8, $f16
/* BB2E8 800DFEE8 3C0141F0 */  lui        $at, 0x41f0
/* BB2EC 800DFEEC 04C10005 */  bgez       $a2, .L800DFF04
/* BB2F0 800DFEF0 468032A1 */   cvt.d.w   $f10, $f6
/* BB2F4 800DFEF4 44819800 */  mtc1       $at, $f19
/* BB2F8 800DFEF8 44809000 */  mtc1       $zero, $f18
/* BB2FC 800DFEFC 00000000 */  nop
/* BB300 800DFF00 46325280 */  add.d      $f10, $f10, $f18
.L800DFF04:
/* BB304 800DFF04 462A2203 */  div.d      $f8, $f4, $f10
/* BB308 800DFF08 24020001 */  addiu      $v0, $zero, 1
/* BB30C 800DFF0C 3C0141E0 */  lui        $at, 0x41e0
/* BB310 800DFF10 4458F800 */  cfc1       $t8, $31
/* BB314 800DFF14 44C2F800 */  ctc1       $v0, $31
/* BB318 800DFF18 00000000 */  nop
/* BB31C 800DFF1C 46204424 */  cvt.w.d    $f16, $f8
/* BB320 800DFF20 4442F800 */  cfc1       $v0, $31
/* BB324 800DFF24 00000000 */  nop
/* BB328 800DFF28 30420078 */  andi       $v0, $v0, 0x78
/* BB32C 800DFF2C 50400016 */  beql       $v0, $zero, .L800DFF88
/* BB330 800DFF30 44028000 */   mfc1      $v0, $f16
/* BB334 800DFF34 44818800 */  mtc1       $at, $f17
/* BB338 800DFF38 44808000 */  mtc1       $zero, $f16
/* BB33C 800DFF3C 24020001 */  addiu      $v0, $zero, 1
/* BB340 800DFF40 3C018000 */  lui        $at, 0x8000
/* BB344 800DFF44 46304401 */  sub.d      $f16, $f8, $f16
/* BB348 800DFF48 44C2F800 */  ctc1       $v0, $31
/* BB34C 800DFF4C 00000000 */  nop
/* BB350 800DFF50 46208424 */  cvt.w.d    $f16, $f16
/* BB354 800DFF54 4442F800 */  cfc1       $v0, $31
/* BB358 800DFF58 00000000 */  nop
/* BB35C 800DFF5C 30420078 */  andi       $v0, $v0, 0x78
/* BB360 800DFF60 54400006 */  bnel       $v0, $zero, .L800DFF7C
/* BB364 800DFF64 44D8F800 */   ctc1      $t8, $31
/* BB368 800DFF68 44028000 */  mfc1       $v0, $f16
/* BB36C 800DFF6C 44D8F800 */  ctc1       $t8, $31
/* BB370 800DFF70 03E00008 */  jr         $ra
/* BB374 800DFF74 00411025 */   or        $v0, $v0, $at
/* BB378 800DFF78 44D8F800 */  ctc1       $t8, $31
.L800DFF7C:
/* BB37C 800DFF7C 03E00008 */  jr         $ra
/* BB380 800DFF80 2402FFFF */   addiu     $v0, $zero, -1
/* BB384 800DFF84 44028000 */  mfc1       $v0, $f16
.L800DFF88:
/* BB388 800DFF88 00000000 */  nop
/* BB38C 800DFF8C 0442FFFB */  bltzl      $v0, .L800DFF7C
/* BB390 800DFF90 44D8F800 */   ctc1      $t8, $31
/* BB394 800DFF94 44D8F800 */  ctc1       $t8, $31
/* BB398 800DFF98 03E00008 */  jr         $ra
/* BB39C 800DFF9C 00000000 */   nop

glabel func_800DFFA0
/* BB3A0 800DFFA0 44852000 */  mtc1       $a1, $f4
/* BB3A4 800DFFA4 44864000 */  mtc1       $a2, $f8
/* BB3A8 800DFFA8 3C014F80 */  lui        $at, 0x4f80
/* BB3AC 800DFFAC 468021A0 */  cvt.s.w    $f6, $f4
/* BB3B0 800DFFB0 04C10004 */  bgez       $a2, .L800DFFC4
/* BB3B4 800DFFB4 468042A0 */   cvt.s.w   $f10, $f8
/* BB3B8 800DFFB8 44818000 */  mtc1       $at, $f16
/* BB3BC 800DFFBC 00000000 */  nop
/* BB3C0 800DFFC0 46105280 */  add.s      $f10, $f10, $f16
.L800DFFC4:
/* BB3C4 800DFFC4 8C8E0000 */  lw         $t6, ($a0)
/* BB3C8 800DFFC8 460A3482 */  mul.s      $f18, $f6, $f10
/* BB3CC 800DFFCC 3C014F80 */  lui        $at, 0x4f80
/* BB3D0 800DFFD0 8DCF0040 */  lw         $t7, 0x40($t6)
/* BB3D4 800DFFD4 448F4000 */  mtc1       $t7, $f8
/* BB3D8 800DFFD8 46009121 */  cvt.d.s    $f4, $f18
/* BB3DC 800DFFDC 05E10004 */  bgez       $t7, .L800DFFF0
/* BB3E0 800DFFE0 46804420 */   cvt.s.w   $f16, $f8
/* BB3E4 800DFFE4 44813000 */  mtc1       $at, $f6
/* BB3E8 800DFFE8 00000000 */  nop
/* BB3EC 800DFFEC 46068400 */  add.s      $f16, $f16, $f6
.L800DFFF0:
/* BB3F0 800DFFF0 3C018011 */  lui        $at, %hi(D_80110C28)
/* BB3F4 800DFFF4 D4320C28 */  ldc1       $f18, %lo(D_80110C28)($at)
/* BB3F8 800DFFF8 460082A1 */  cvt.d.s    $f10, $f16
/* BB3FC 800DFFFC 46325202 */  mul.d      $f8, $f10, $f18
/* BB400 800E0000 46282183 */  div.d      $f6, $f4, $f8
/* BB404 800E0004 03E00008 */  jr         $ra
/* BB408 800E0008 46203020 */   cvt.s.d   $f0, $f6

glabel func_800E000C
/* BB40C 800E000C 8C8E0004 */  lw         $t6, 4($a0)
/* BB410 800E0010 00A04825 */  or         $t1, $a1, $zero
/* BB414 800E0014 2403FFFF */  addiu      $v1, $zero, -1
/* BB418 800E0018 15C00003 */  bnez       $t6, .L800E0028
/* BB41C 800E001C 8C820010 */   lw        $v0, 0x10($a0)
/* BB420 800E0020 03E00008 */  jr         $ra
/* BB424 800E0024 00001025 */   or        $v0, $zero, $zero
.L800E0028:
/* BB428 800E0028 00003025 */  or         $a2, $zero, $zero
/* BB42C 800E002C 240A0010 */  addiu      $t2, $zero, 0x10
/* BB430 800E0030 8C850004 */  lw         $a1, 4($a0)
.L800E0034:
/* BB434 800E0034 24CE0001 */  addiu      $t6, $a2, 1
/* BB438 800E0038 00C57806 */  srlv       $t7, $a1, $a2
/* BB43C 800E003C 31F80001 */  andi       $t8, $t7, 1
/* BB440 800E0040 53000010 */  beql       $t8, $zero, .L800E0084
/* BB444 800E0044 01C57806 */   srlv      $t7, $a1, $t6
/* BB448 800E0048 8C8B0014 */  lw         $t3, 0x14($a0)
/* BB44C 800E004C 0006C880 */  sll        $t9, $a2, 2
/* BB450 800E0050 00993821 */  addu       $a3, $a0, $t9
/* BB454 800E0054 51600006 */  beql       $t3, $zero, .L800E0070
/* BB458 800E0058 8CE800B8 */   lw        $t0, 0xb8($a3)
/* BB45C 800E005C 8CEC00B8 */  lw         $t4, 0xb8($a3)
/* BB460 800E0060 01826823 */  subu       $t5, $t4, $v0
/* BB464 800E0064 ACED00B8 */  sw         $t5, 0xb8($a3)
/* BB468 800E0068 8C850004 */  lw         $a1, 4($a0)
/* BB46C 800E006C 8CE800B8 */  lw         $t0, 0xb8($a3)
.L800E0070:
/* BB470 800E0070 0103082B */  sltu       $at, $t0, $v1
/* BB474 800E0074 50200003 */  beql       $at, $zero, .L800E0084
/* BB478 800E0078 01C57806 */   srlv      $t7, $a1, $t6
/* BB47C 800E007C 01001825 */  or         $v1, $t0, $zero
/* BB480 800E0080 01C57806 */  srlv       $t7, $a1, $t6
.L800E0084:
/* BB484 800E0084 31F80001 */  andi       $t8, $t7, 1
/* BB488 800E0088 1300000F */  beqz       $t8, .L800E00C8
/* BB48C 800E008C 24CE0002 */   addiu     $t6, $a2, 2
/* BB490 800E0090 8C8B0014 */  lw         $t3, 0x14($a0)
/* BB494 800E0094 0006C880 */  sll        $t9, $a2, 2
/* BB498 800E0098 00993821 */  addu       $a3, $a0, $t9
/* BB49C 800E009C 51600006 */  beql       $t3, $zero, .L800E00B8
/* BB4A0 800E00A0 8CE800BC */   lw        $t0, 0xbc($a3)
/* BB4A4 800E00A4 8CEC00BC */  lw         $t4, 0xbc($a3)
/* BB4A8 800E00A8 01826823 */  subu       $t5, $t4, $v0
/* BB4AC 800E00AC ACED00BC */  sw         $t5, 0xbc($a3)
/* BB4B0 800E00B0 8C850004 */  lw         $a1, 4($a0)
/* BB4B4 800E00B4 8CE800BC */  lw         $t0, 0xbc($a3)
.L800E00B8:
/* BB4B8 800E00B8 0103082B */  sltu       $at, $t0, $v1
/* BB4BC 800E00BC 50200003 */  beql       $at, $zero, .L800E00CC
/* BB4C0 800E00C0 01C57806 */   srlv      $t7, $a1, $t6
/* BB4C4 800E00C4 01001825 */  or         $v1, $t0, $zero
.L800E00C8:
/* BB4C8 800E00C8 01C57806 */  srlv       $t7, $a1, $t6
.L800E00CC:
/* BB4CC 800E00CC 31F80001 */  andi       $t8, $t7, 1
/* BB4D0 800E00D0 1300000F */  beqz       $t8, .L800E0110
/* BB4D4 800E00D4 24CE0003 */   addiu     $t6, $a2, 3
/* BB4D8 800E00D8 8C8B0014 */  lw         $t3, 0x14($a0)
/* BB4DC 800E00DC 0006C880 */  sll        $t9, $a2, 2
/* BB4E0 800E00E0 00993821 */  addu       $a3, $a0, $t9
/* BB4E4 800E00E4 51600006 */  beql       $t3, $zero, .L800E0100
/* BB4E8 800E00E8 8CE800C0 */   lw        $t0, 0xc0($a3)
/* BB4EC 800E00EC 8CEC00C0 */  lw         $t4, 0xc0($a3)
/* BB4F0 800E00F0 01826823 */  subu       $t5, $t4, $v0
/* BB4F4 800E00F4 ACED00C0 */  sw         $t5, 0xc0($a3)
/* BB4F8 800E00F8 8C850004 */  lw         $a1, 4($a0)
/* BB4FC 800E00FC 8CE800C0 */  lw         $t0, 0xc0($a3)
.L800E0100:
/* BB500 800E0100 0103082B */  sltu       $at, $t0, $v1
/* BB504 800E0104 50200003 */  beql       $at, $zero, .L800E0114
/* BB508 800E0108 01C57806 */   srlv      $t7, $a1, $t6
/* BB50C 800E010C 01001825 */  or         $v1, $t0, $zero
.L800E0110:
/* BB510 800E0110 01C57806 */  srlv       $t7, $a1, $t6
.L800E0114:
/* BB514 800E0114 31F80001 */  andi       $t8, $t7, 1
/* BB518 800E0118 5300000F */  beql       $t8, $zero, .L800E0158
/* BB51C 800E011C 24C60004 */   addiu     $a2, $a2, 4
/* BB520 800E0120 8C8B0014 */  lw         $t3, 0x14($a0)
/* BB524 800E0124 0006C880 */  sll        $t9, $a2, 2
/* BB528 800E0128 00993821 */  addu       $a3, $a0, $t9
/* BB52C 800E012C 51600005 */  beql       $t3, $zero, .L800E0144
/* BB530 800E0130 8CE500C4 */   lw        $a1, 0xc4($a3)
/* BB534 800E0134 8CEC00C4 */  lw         $t4, 0xc4($a3)
/* BB538 800E0138 01826823 */  subu       $t5, $t4, $v0
/* BB53C 800E013C ACED00C4 */  sw         $t5, 0xc4($a3)
/* BB540 800E0140 8CE500C4 */  lw         $a1, 0xc4($a3)
.L800E0144:
/* BB544 800E0144 00A3082B */  sltu       $at, $a1, $v1
/* BB548 800E0148 50200003 */  beql       $at, $zero, .L800E0158
/* BB54C 800E014C 24C60004 */   addiu     $a2, $a2, 4
/* BB550 800E0150 00A01825 */  or         $v1, $a1, $zero
/* BB554 800E0154 24C60004 */  addiu      $a2, $a2, 4
.L800E0158:
/* BB558 800E0158 54CAFFB6 */  bnel       $a2, $t2, .L800E0034
/* BB55C 800E015C 8C850004 */   lw        $a1, 4($a0)
/* BB560 800E0160 AC800014 */  sw         $zero, 0x14($a0)
/* BB564 800E0164 AD230000 */  sw         $v1, ($t1)
/* BB568 800E0168 24020001 */  addiu      $v0, $zero, 1
/* BB56C 800E016C 03E00008 */  jr         $ra
/* BB570 800E0170 00000000 */   nop
/* BB574 800E0174 00000000 */  nop
/* BB578 800E0178 00000000 */  nop
/* BB57C 800E017C 00000000 */  nop
