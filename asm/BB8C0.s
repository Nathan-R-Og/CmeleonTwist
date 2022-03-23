.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E04C0
/* BB8C0 800E04C0 AFA40000 */  sw         $a0, ($sp)
/* BB8C4 800E04C4 AFA50004 */  sw         $a1, 4($sp)
/* BB8C8 800E04C8 AFA60008 */  sw         $a2, 8($sp)
/* BB8CC 800E04CC AFA7000C */  sw         $a3, 0xc($sp)
/* BB8D0 800E04D0 DFAF0008 */  ld         $t7, 8($sp)
/* BB8D4 800E04D4 DFAE0000 */  ld         $t6, ($sp)
/* BB8D8 800E04D8 01EE1016 */  dsrlv      $v0, $t6, $t7
/* BB8DC 800E04DC 0002183C */  dsll32     $v1, $v0, 0
/* BB8E0 800E04E0 0003183F */  dsra32     $v1, $v1, 0
/* BB8E4 800E04E4 03E00008 */  jr         $ra
/* BB8E8 800E04E8 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E04EC
/* BB8EC 800E04EC AFA40000 */  sw         $a0, ($sp)
/* BB8F0 800E04F0 AFA50004 */  sw         $a1, 4($sp)
/* BB8F4 800E04F4 AFA60008 */  sw         $a2, 8($sp)
/* BB8F8 800E04F8 AFA7000C */  sw         $a3, 0xc($sp)
/* BB8FC 800E04FC DFAF0008 */  ld         $t7, 8($sp)
/* BB900 800E0500 DFAE0000 */  ld         $t6, ($sp)
/* BB904 800E0504 01CF001F */  ddivu      $zero, $t6, $t7
/* BB908 800E0508 15E00002 */  bnez       $t7, .L800E0514
/* BB90C 800E050C 00000000 */   nop
/* BB910 800E0510 0007000D */  break      7
.L800E0514:
/* BB914 800E0514 00001010 */   mfhi      $v0
/* BB918 800E0518 0002183C */  dsll32     $v1, $v0, 0
/* BB91C 800E051C 0003183F */  dsra32     $v1, $v1, 0
/* BB920 800E0520 03E00008 */  jr         $ra
/* BB924 800E0524 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E0528
/* BB928 800E0528 AFA40000 */  sw         $a0, ($sp)
/* BB92C 800E052C AFA50004 */  sw         $a1, 4($sp)
/* BB930 800E0530 AFA60008 */  sw         $a2, 8($sp)
/* BB934 800E0534 AFA7000C */  sw         $a3, 0xc($sp)
/* BB938 800E0538 DFAF0008 */  ld         $t7, 8($sp)
/* BB93C 800E053C DFAE0000 */  ld         $t6, ($sp)
/* BB940 800E0540 01CF001F */  ddivu      $zero, $t6, $t7
/* BB944 800E0544 15E00002 */  bnez       $t7, .L800E0550
/* BB948 800E0548 00000000 */   nop
/* BB94C 800E054C 0007000D */  break      7
.L800E0550:
/* BB950 800E0550 00001012 */   mflo      $v0
/* BB954 800E0554 0002183C */  dsll32     $v1, $v0, 0
/* BB958 800E0558 0003183F */  dsra32     $v1, $v1, 0
/* BB95C 800E055C 03E00008 */  jr         $ra
/* BB960 800E0560 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E0564
/* BB964 800E0564 AFA40000 */  sw         $a0, ($sp)
/* BB968 800E0568 AFA50004 */  sw         $a1, 4($sp)
/* BB96C 800E056C AFA60008 */  sw         $a2, 8($sp)
/* BB970 800E0570 AFA7000C */  sw         $a3, 0xc($sp)
/* BB974 800E0574 DFAF0008 */  ld         $t7, 8($sp)
/* BB978 800E0578 DFAE0000 */  ld         $t6, ($sp)
/* BB97C 800E057C 01EE1014 */  dsllv      $v0, $t6, $t7
/* BB980 800E0580 0002183C */  dsll32     $v1, $v0, 0
/* BB984 800E0584 0003183F */  dsra32     $v1, $v1, 0
/* BB988 800E0588 03E00008 */  jr         $ra
/* BB98C 800E058C 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E0590
/* BB990 800E0590 AFA40000 */  sw         $a0, ($sp)
/* BB994 800E0594 AFA50004 */  sw         $a1, 4($sp)
/* BB998 800E0598 AFA60008 */  sw         $a2, 8($sp)
/* BB99C 800E059C AFA7000C */  sw         $a3, 0xc($sp)
/* BB9A0 800E05A0 DFAF0008 */  ld         $t7, 8($sp)
/* BB9A4 800E05A4 DFAE0000 */  ld         $t6, ($sp)
/* BB9A8 800E05A8 01CF001F */  ddivu      $zero, $t6, $t7
/* BB9AC 800E05AC 15E00002 */  bnez       $t7, .L800E05B8
/* BB9B0 800E05B0 00000000 */   nop
/* BB9B4 800E05B4 0007000D */  break      7
.L800E05B8:
/* BB9B8 800E05B8 00001010 */   mfhi      $v0
/* BB9BC 800E05BC 0002183C */  dsll32     $v1, $v0, 0
/* BB9C0 800E05C0 0003183F */  dsra32     $v1, $v1, 0
/* BB9C4 800E05C4 03E00008 */  jr         $ra
/* BB9C8 800E05C8 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E05CC
/* BB9CC 800E05CC AFA40000 */  sw         $a0, ($sp)
/* BB9D0 800E05D0 AFA50004 */  sw         $a1, 4($sp)
/* BB9D4 800E05D4 AFA60008 */  sw         $a2, 8($sp)
/* BB9D8 800E05D8 AFA7000C */  sw         $a3, 0xc($sp)
/* BB9DC 800E05DC DFAF0008 */  ld         $t7, 8($sp)
/* BB9E0 800E05E0 DFAE0000 */  ld         $t6, ($sp)
/* BB9E4 800E05E4 01CF001E */  ddiv       $zero, $t6, $t7
/* BB9E8 800E05E8 00000000 */  nop
/* BB9EC 800E05EC 15E00002 */  bnez       $t7, .L800E05F8
/* BB9F0 800E05F0 00000000 */   nop
/* BB9F4 800E05F4 0007000D */  break      7
.L800E05F8:
/* BB9F8 800E05F8 6401FFFF */   daddiu    $at, $zero, -1
/* BB9FC 800E05FC 15E10005 */  bne        $t7, $at, .L800E0614
/* BBA00 800E0600 64010001 */   daddiu    $at, $zero, 1
/* BBA04 800E0604 00010FFC */  dsll32     $at, $at, 0x1f
/* BBA08 800E0608 15C10002 */  bne        $t6, $at, .L800E0614
/* BBA0C 800E060C 00000000 */   nop
/* BBA10 800E0610 0006000D */  break      6
.L800E0614:
/* BBA14 800E0614 00001012 */   mflo      $v0
/* BBA18 800E0618 0002183C */  dsll32     $v1, $v0, 0
/* BBA1C 800E061C 0003183F */  dsra32     $v1, $v1, 0
/* BBA20 800E0620 03E00008 */  jr         $ra
/* BBA24 800E0624 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E0628
/* BBA28 800E0628 AFA40000 */  sw         $a0, ($sp)
/* BBA2C 800E062C AFA50004 */  sw         $a1, 4($sp)
/* BBA30 800E0630 AFA60008 */  sw         $a2, 8($sp)
/* BBA34 800E0634 AFA7000C */  sw         $a3, 0xc($sp)
/* BBA38 800E0638 DFAF0008 */  ld         $t7, 8($sp)
/* BBA3C 800E063C DFAE0000 */  ld         $t6, ($sp)
/* BBA40 800E0640 01CF001D */  dmultu     $t6, $t7
/* BBA44 800E0644 00001012 */  mflo       $v0
/* BBA48 800E0648 0002183C */  dsll32     $v1, $v0, 0
/* BBA4C 800E064C 0003183F */  dsra32     $v1, $v1, 0
/* BBA50 800E0650 03E00008 */  jr         $ra
/* BBA54 800E0654 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E0658
/* BBA58 800E0658 87AF0012 */  lh         $t7, 0x12($sp)
/* BBA5C 800E065C AFA60008 */  sw         $a2, 8($sp)
/* BBA60 800E0660 AFA7000C */  sw         $a3, 0xc($sp)
/* BBA64 800E0664 DFAE0008 */  ld         $t6, 8($sp)
/* BBA68 800E0668 01E0C025 */  or         $t8, $t7, $zero
/* BBA6C 800E066C 0300C825 */  or         $t9, $t8, $zero
/* BBA70 800E0670 01D9001F */  ddivu      $zero, $t6, $t9
/* BBA74 800E0674 17200002 */  bnez       $t9, .L800E0680
/* BBA78 800E0678 00000000 */   nop
/* BBA7C 800E067C 0007000D */  break      7
.L800E0680:
/* BBA80 800E0680 00004012 */   mflo      $t0
/* BBA84 800E0684 FC880000 */  sd         $t0, ($a0)
/* BBA88 800E0688 87AA0012 */  lh         $t2, 0x12($sp)
/* BBA8C 800E068C DFA90008 */  ld         $t1, 8($sp)
/* BBA90 800E0690 01405825 */  or         $t3, $t2, $zero
/* BBA94 800E0694 01606025 */  or         $t4, $t3, $zero
/* BBA98 800E0698 012C001F */  ddivu      $zero, $t1, $t4
/* BBA9C 800E069C 15800002 */  bnez       $t4, .L800E06A8
/* BBAA0 800E06A0 00000000 */   nop
/* BBAA4 800E06A4 0007000D */  break      7
.L800E06A8:
/* BBAA8 800E06A8 00006810 */   mfhi      $t5
/* BBAAC 800E06AC FCAD0000 */  sd         $t5, ($a1)
/* BBAB0 800E06B0 03E00008 */  jr         $ra
/* BBAB4 800E06B4 00000000 */   nop

glabel func_800E06B8
/* BBAB8 800E06B8 27BDFFF8 */  addiu      $sp, $sp, -8
/* BBABC 800E06BC AFA40008 */  sw         $a0, 8($sp)
/* BBAC0 800E06C0 AFA5000C */  sw         $a1, 0xc($sp)
/* BBAC4 800E06C4 AFA60010 */  sw         $a2, 0x10($sp)
/* BBAC8 800E06C8 AFA70014 */  sw         $a3, 0x14($sp)
/* BBACC 800E06CC DFAF0010 */  ld         $t7, 0x10($sp)
/* BBAD0 800E06D0 DFAE0008 */  ld         $t6, 8($sp)
/* BBAD4 800E06D4 01CF001E */  ddiv       $zero, $t6, $t7
/* BBAD8 800E06D8 00000000 */  nop
/* BBADC 800E06DC 15E00002 */  bnez       $t7, .L800E06E8
/* BBAE0 800E06E0 00000000 */   nop
/* BBAE4 800E06E4 0007000D */  break      7
.L800E06E8:
/* BBAE8 800E06E8 6401FFFF */   daddiu    $at, $zero, -1
/* BBAEC 800E06EC 15E10005 */  bne        $t7, $at, .L800E0704
/* BBAF0 800E06F0 64010001 */   daddiu    $at, $zero, 1
/* BBAF4 800E06F4 00010FFC */  dsll32     $at, $at, 0x1f
/* BBAF8 800E06F8 15C10002 */  bne        $t6, $at, .L800E0704
/* BBAFC 800E06FC 00000000 */   nop
/* BBB00 800E0700 0006000D */  break      6
.L800E0704:
/* BBB04 800E0704 0000C010 */   mfhi      $t8
/* BBB08 800E0708 FFB80000 */  sd         $t8, ($sp)
/* BBB0C 800E070C 07010003 */  bgez       $t8, .L800E071C
/* BBB10 800E0710 00000000 */   nop
/* BBB14 800E0714 1DE00007 */  bgtz       $t7, .L800E0734
/* BBB18 800E0718 00000000 */   nop
.L800E071C:
/* BBB1C 800E071C DFB90000 */  ld         $t9, ($sp)
/* BBB20 800E0720 1B200008 */  blez       $t9, .L800E0744
/* BBB24 800E0724 00000000 */   nop
/* BBB28 800E0728 DFA80010 */  ld         $t0, 0x10($sp)
/* BBB2C 800E072C 05010005 */  bgez       $t0, .L800E0744
/* BBB30 800E0730 00000000 */   nop
.L800E0734:
/* BBB34 800E0734 DFA90000 */  ld         $t1, ($sp)
/* BBB38 800E0738 DFAA0010 */  ld         $t2, 0x10($sp)
/* BBB3C 800E073C 012A582D */  daddu      $t3, $t1, $t2
/* BBB40 800E0740 FFAB0000 */  sd         $t3, ($sp)
.L800E0744:
/* BBB44 800E0744 8FA20000 */  lw         $v0, ($sp)
/* BBB48 800E0748 8FA30004 */  lw         $v1, 4($sp)
/* BBB4C 800E074C 03E00008 */  jr         $ra
/* BBB50 800E0750 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800E0754
/* BBB54 800E0754 AFA40000 */  sw         $a0, ($sp)
/* BBB58 800E0758 AFA50004 */  sw         $a1, 4($sp)
/* BBB5C 800E075C AFA60008 */  sw         $a2, 8($sp)
/* BBB60 800E0760 AFA7000C */  sw         $a3, 0xc($sp)
/* BBB64 800E0764 DFAF0008 */  ld         $t7, 8($sp)
/* BBB68 800E0768 DFAE0000 */  ld         $t6, ($sp)
/* BBB6C 800E076C 01EE1017 */  dsrav      $v0, $t6, $t7
/* BBB70 800E0770 0002183C */  dsll32     $v1, $v0, 0
/* BBB74 800E0774 0003183F */  dsra32     $v1, $v1, 0
/* BBB78 800E0778 03E00008 */  jr         $ra
/* BBB7C 800E077C 0002103F */   dsra32    $v0, $v0, 0

glabel func_800E0780
/* BBB80 800E0780 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BBB84 800E0784 AFBF0014 */  sw         $ra, 0x14($sp)
/* BBB88 800E0788 AFA40020 */  sw         $a0, 0x20($sp)
/* BBB8C 800E078C 0C038398 */  jal        func_800E0E60
/* BBB90 800E0790 AFA0001C */   sw        $zero, 0x1c($sp)
/* BBB94 800E0794 8FA40020 */  lw         $a0, 0x20($sp)
/* BBB98 800E0798 0C03ADAF */  jal        func_800EB6BC
/* BBB9C 800E079C 27A50018 */   addiu     $a1, $sp, 0x18
/* BBBA0 800E07A0 AFA2001C */  sw         $v0, 0x1c($sp)
/* BBBA4 800E07A4 8FAE001C */  lw         $t6, 0x1c($sp)
/* BBBA8 800E07A8 15C00008 */  bnez       $t6, .L800E07CC
/* BBBAC 800E07AC 00000000 */   nop
/* BBBB0 800E07B0 97AF0018 */  lhu        $t7, 0x18($sp)
/* BBBB4 800E07B4 31F88000 */  andi       $t8, $t7, 0x8000
/* BBBB8 800E07B8 13000004 */  beqz       $t8, .L800E07CC
/* BBBBC 800E07BC 00000000 */   nop
/* BBBC0 800E07C0 24190001 */  addiu      $t9, $zero, 1
/* BBBC4 800E07C4 10000002 */  b          .L800E07D0
/* BBBC8 800E07C8 AFB9001C */   sw        $t9, 0x1c($sp)
.L800E07CC:
/* BBBCC 800E07CC AFA0001C */  sw         $zero, 0x1c($sp)
.L800E07D0:
/* BBBD0 800E07D0 0C0383A9 */  jal        func_800E0EA4
/* BBBD4 800E07D4 00000000 */   nop
/* BBBD8 800E07D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BBBDC 800E07DC 8FA2001C */  lw         $v0, 0x1c($sp)
/* BBBE0 800E07E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* BBBE4 800E07E4 03E00008 */  jr         $ra
/* BBBE8 800E07E8 00000000 */   nop
/* BBBEC 800E07EC 00000000 */  nop
