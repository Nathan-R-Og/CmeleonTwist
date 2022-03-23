.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E3540
/* BE940 800E3540 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE944 800E3544 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE948 800E3548 240E0001 */  addiu      $t6, $zero, 1
/* BE94C 800E354C 3C018011 */  lui        $at, %hi(D_80109EA0)
/* BE950 800E3550 3C048025 */  lui        $a0, %hi(D_8024C288)
/* BE954 800E3554 3C058025 */  lui        $a1, %hi(D_8024C280)
/* BE958 800E3558 AC2E9EA0 */  sw         $t6, %lo(D_80109EA0)($at)
/* BE95C 800E355C 24A5C280 */  addiu      $a1, $a1, %lo(D_8024C280)
/* BE960 800E3560 2484C288 */  addiu      $a0, $a0, %lo(D_8024C288)
/* BE964 800E3564 0C036938 */  jal        func_800DA4E0
/* BE968 800E3568 24060001 */   addiu     $a2, $zero, 1
/* BE96C 800E356C 3C048025 */  lui        $a0, %hi(D_8024C288)
/* BE970 800E3570 2484C288 */  addiu      $a0, $a0, %lo(D_8024C288)
/* BE974 800E3574 00002825 */  or         $a1, $zero, $zero
/* BE978 800E3578 0C037100 */  jal        func_800DC400
/* BE97C 800E357C 00003025 */   or        $a2, $zero, $zero
/* BE980 800E3580 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE984 800E3584 27BD0018 */  addiu      $sp, $sp, 0x18
/* BE988 800E3588 03E00008 */  jr         $ra
/* BE98C 800E358C 00000000 */   nop

glabel func_800E3590
/* BE990 800E3590 3C0E8011 */  lui        $t6, %hi(D_80109EA0)
/* BE994 800E3594 8DCE9EA0 */  lw         $t6, %lo(D_80109EA0)($t6)
/* BE998 800E3598 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BE99C 800E359C AFBF0014 */  sw         $ra, 0x14($sp)
/* BE9A0 800E35A0 15C00003 */  bnez       $t6, .L800E35B0
/* BE9A4 800E35A4 00000000 */   nop
/* BE9A8 800E35A8 0C038D50 */  jal        func_800E3540
/* BE9AC 800E35AC 00000000 */   nop
.L800E35B0:
/* BE9B0 800E35B0 3C048025 */  lui        $a0, %hi(D_8024C288)
/* BE9B4 800E35B4 2484C288 */  addiu      $a0, $a0, %lo(D_8024C288)
/* BE9B8 800E35B8 27A5001C */  addiu      $a1, $sp, 0x1c
/* BE9BC 800E35BC 0C036988 */  jal        func_800DA620
/* BE9C0 800E35C0 24060001 */   addiu     $a2, $zero, 1
/* BE9C4 800E35C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE9C8 800E35C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* BE9CC 800E35CC 03E00008 */  jr         $ra
/* BE9D0 800E35D0 00000000 */   nop

glabel func_800E35D4
/* BE9D4 800E35D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE9D8 800E35D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE9DC 800E35DC 3C048025 */  lui        $a0, %hi(D_8024C288)
/* BE9E0 800E35E0 2484C288 */  addiu      $a0, $a0, %lo(D_8024C288)
/* BE9E4 800E35E4 00002825 */  or         $a1, $zero, $zero
/* BE9E8 800E35E8 0C037100 */  jal        func_800DC400
/* BE9EC 800E35EC 00003025 */   or        $a2, $zero, $zero
/* BE9F0 800E35F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE9F4 800E35F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* BE9F8 800E35F8 03E00008 */  jr         $ra
/* BE9FC 800E35FC 00000000 */   nop

glabel func_800E3600
/* BEA00 800E3600 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BEA04 800E3604 AFBF001C */  sw         $ra, 0x1c($sp)
/* BEA08 800E3608 AFA40028 */  sw         $a0, 0x28($sp)
/* BEA0C 800E360C AFA5002C */  sw         $a1, 0x2c($sp)
/* BEA10 800E3610 AFA60030 */  sw         $a2, 0x30($sp)
/* BEA14 800E3614 AFA70034 */  sw         $a3, 0x34($sp)
/* BEA18 800E3618 AFB10018 */  sw         $s1, 0x18($sp)
/* BEA1C 800E361C AFB00014 */  sw         $s0, 0x14($sp)
/* BEA20 800E3620 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* BEA24 800E3624 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* BEA28 800E3628 320F0003 */  andi       $t7, $s0, 3
/* BEA2C 800E362C 11E00006 */  beqz       $t7, .L800E3648
/* BEA30 800E3630 00000000 */   nop
.L800E3634:
/* BEA34 800E3634 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* BEA38 800E3638 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* BEA3C 800E363C 32190003 */  andi       $t9, $s0, 3
/* BEA40 800E3640 1720FFFC */  bnez       $t9, .L800E3634
/* BEA44 800E3644 00000000 */   nop
.L800E3648:
/* BEA48 800E3648 0C037228 */  jal        func_800DC8A0
/* BEA4C 800E364C 8FA40030 */   lw        $a0, 0x30($sp)
/* BEA50 800E3650 3C08A460 */  lui        $t0, 0xa460
/* BEA54 800E3654 AD020000 */  sw         $v0, ($t0)
/* BEA58 800E3658 3C098000 */  lui        $t1, %hi(D_80000308)
/* BEA5C 800E365C 8D290308 */  lw         $t1, %lo(D_80000308)($t1)
/* BEA60 800E3660 8FAA002C */  lw         $t2, 0x2c($sp)
/* BEA64 800E3664 3C011FFF */  lui        $at, 0x1fff
/* BEA68 800E3668 3421FFFF */  ori        $at, $at, 0xffff
/* BEA6C 800E366C 012A5825 */  or         $t3, $t1, $t2
/* BEA70 800E3670 01616024 */  and        $t4, $t3, $at
/* BEA74 800E3674 3C0DA460 */  lui        $t5, %hi(D_A4600004)
/* BEA78 800E3678 ADAC0004 */  sw         $t4, %lo(D_A4600004)($t5)
/* BEA7C 800E367C 8FB10028 */  lw         $s1, 0x28($sp)
/* BEA80 800E3680 12200005 */  beqz       $s1, .L800E3698
/* BEA84 800E3684 24010001 */   addiu     $at, $zero, 1
/* BEA88 800E3688 12210008 */  beq        $s1, $at, .L800E36AC
/* BEA8C 800E368C 00000000 */   nop
/* BEA90 800E3690 1000000B */  b          .L800E36C0
/* BEA94 800E3694 00000000 */   nop
.L800E3698:
/* BEA98 800E3698 8FAE0034 */  lw         $t6, 0x34($sp)
/* BEA9C 800E369C 3C18A460 */  lui        $t8, %hi(D_A460000C)
/* BEAA0 800E36A0 25CFFFFF */  addiu      $t7, $t6, -1
/* BEAA4 800E36A4 10000008 */  b          .L800E36C8
/* BEAA8 800E36A8 AF0F000C */   sw        $t7, %lo(D_A460000C)($t8)
.L800E36AC:
/* BEAAC 800E36AC 8FB90034 */  lw         $t9, 0x34($sp)
/* BEAB0 800E36B0 3C09A460 */  lui        $t1, %hi(D_A4600008)
/* BEAB4 800E36B4 2728FFFF */  addiu      $t0, $t9, -1
/* BEAB8 800E36B8 10000003 */  b          .L800E36C8
/* BEABC 800E36BC AD280008 */   sw        $t0, %lo(D_A4600008)($t1)
.L800E36C0:
/* BEAC0 800E36C0 10000002 */  b          .L800E36CC
/* BEAC4 800E36C4 2402FFFF */   addiu     $v0, $zero, -1
.L800E36C8:
/* BEAC8 800E36C8 00001025 */  or         $v0, $zero, $zero
.L800E36CC:
/* BEACC 800E36CC 8FBF001C */  lw         $ra, 0x1c($sp)
/* BEAD0 800E36D0 8FB00014 */  lw         $s0, 0x14($sp)
/* BEAD4 800E36D4 8FB10018 */  lw         $s1, 0x18($sp)
/* BEAD8 800E36D8 03E00008 */  jr         $ra
/* BEADC 800E36DC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800E36E0
/* BEAE0 800E36E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BEAE4 800E36E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* BEAE8 800E36E8 AFA40028 */  sw         $a0, 0x28($sp)
/* BEAEC 800E36EC AFA5002C */  sw         $a1, 0x2c($sp)
/* BEAF0 800E36F0 AFA60030 */  sw         $a2, 0x30($sp)
/* BEAF4 800E36F4 AFA70034 */  sw         $a3, 0x34($sp)
/* BEAF8 800E36F8 AFB10018 */  sw         $s1, 0x18($sp)
/* BEAFC 800E36FC AFB00014 */  sw         $s0, 0x14($sp)
/* BEB00 800E3700 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* BEB04 800E3704 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* BEB08 800E3708 320F0003 */  andi       $t7, $s0, 3
/* BEB0C 800E370C 11E00006 */  beqz       $t7, .L800E3728
/* BEB10 800E3710 00000000 */   nop
.L800E3714:
/* BEB14 800E3714 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* BEB18 800E3718 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* BEB1C 800E371C 32190003 */  andi       $t9, $s0, 3
/* BEB20 800E3720 1720FFFC */  bnez       $t9, .L800E3714
/* BEB24 800E3724 00000000 */   nop
.L800E3728:
/* BEB28 800E3728 0C037228 */  jal        func_800DC8A0
/* BEB2C 800E372C 8FA40034 */   lw        $a0, 0x34($sp)
/* BEB30 800E3730 3C08A460 */  lui        $t0, 0xa460
/* BEB34 800E3734 AD020000 */  sw         $v0, ($t0)
/* BEB38 800E3738 8FA90028 */  lw         $t1, 0x28($sp)
/* BEB3C 800E373C 8FAB0030 */  lw         $t3, 0x30($sp)
/* BEB40 800E3740 3C011FFF */  lui        $at, 0x1fff
/* BEB44 800E3744 8D2A000C */  lw         $t2, 0xc($t1)
/* BEB48 800E3748 3421FFFF */  ori        $at, $at, 0xffff
/* BEB4C 800E374C 3C0EA460 */  lui        $t6, %hi(D_A4600004)
/* BEB50 800E3750 014B6025 */  or         $t4, $t2, $t3
/* BEB54 800E3754 01816824 */  and        $t5, $t4, $at
/* BEB58 800E3758 ADCD0004 */  sw         $t5, %lo(D_A4600004)($t6)
/* BEB5C 800E375C 8FB1002C */  lw         $s1, 0x2c($sp)
/* BEB60 800E3760 12200005 */  beqz       $s1, .L800E3778
/* BEB64 800E3764 24010001 */   addiu     $at, $zero, 1
/* BEB68 800E3768 12210008 */  beq        $s1, $at, .L800E378C
/* BEB6C 800E376C 00000000 */   nop
/* BEB70 800E3770 1000000B */  b          .L800E37A0
/* BEB74 800E3774 00000000 */   nop
.L800E3778:
/* BEB78 800E3778 8FAF0038 */  lw         $t7, 0x38($sp)
/* BEB7C 800E377C 3C19A460 */  lui        $t9, %hi(D_A460000C)
/* BEB80 800E3780 25F8FFFF */  addiu      $t8, $t7, -1
/* BEB84 800E3784 10000008 */  b          .L800E37A8
/* BEB88 800E3788 AF38000C */   sw        $t8, %lo(D_A460000C)($t9)
.L800E378C:
/* BEB8C 800E378C 8FA80038 */  lw         $t0, 0x38($sp)
/* BEB90 800E3790 3C0AA460 */  lui        $t2, %hi(D_A4600008)
/* BEB94 800E3794 2509FFFF */  addiu      $t1, $t0, -1
/* BEB98 800E3798 10000003 */  b          .L800E37A8
/* BEB9C 800E379C AD490008 */   sw        $t1, %lo(D_A4600008)($t2)
.L800E37A0:
/* BEBA0 800E37A0 10000002 */  b          .L800E37AC
/* BEBA4 800E37A4 2402FFFF */   addiu     $v0, $zero, -1
.L800E37A8:
/* BEBA8 800E37A8 00001025 */  or         $v0, $zero, $zero
.L800E37AC:
/* BEBAC 800E37AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* BEBB0 800E37B0 8FB00014 */  lw         $s0, 0x14($sp)
/* BEBB4 800E37B4 8FB10018 */  lw         $s1, 0x18($sp)
/* BEBB8 800E37B8 03E00008 */  jr         $ra
/* BEBBC 800E37BC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800E37C0
/* BEBC0 800E37C0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BEBC4 800E37C4 AFA40040 */  sw         $a0, 0x40($sp)
/* BEBC8 800E37C8 8FAE0040 */  lw         $t6, 0x40($sp)
/* BEBCC 800E37CC AFBF001C */  sw         $ra, 0x1c($sp)
/* BEBD0 800E37D0 AFA00028 */  sw         $zero, 0x28($sp)
/* BEBD4 800E37D4 AFA0003C */  sw         $zero, 0x3c($sp)
/* BEBD8 800E37D8 AFA00030 */  sw         $zero, 0x30($sp)
/* BEBDC 800E37DC AFAE002C */  sw         $t6, 0x2c($sp)
.L800E37E0:
/* BEBE0 800E37E0 8FAF002C */  lw         $t7, 0x2c($sp)
/* BEBE4 800E37E4 27A5003C */  addiu      $a1, $sp, 0x3c
/* BEBE8 800E37E8 24060001 */  addiu      $a2, $zero, 1
/* BEBEC 800E37EC 0C036988 */  jal        func_800DA620
/* BEBF0 800E37F0 8DE40008 */   lw        $a0, 8($t7)
/* BEBF4 800E37F4 8FB8003C */  lw         $t8, 0x3c($sp)
/* BEBF8 800E37F8 8F190014 */  lw         $t9, 0x14($t8)
/* BEBFC 800E37FC 13200065 */  beqz       $t9, .L800E3994
/* BEC00 800E3800 00000000 */   nop
/* BEC04 800E3804 93280004 */  lbu        $t0, 4($t9)
/* BEC08 800E3808 24010002 */  addiu      $at, $zero, 2
/* BEC0C 800E380C 15010061 */  bne        $t0, $at, .L800E3994
/* BEC10 800E3810 00000000 */   nop
/* BEC14 800E3814 8F290014 */  lw         $t1, 0x14($t9)
/* BEC18 800E3818 11200003 */  beqz       $t1, .L800E3828
/* BEC1C 800E381C 24010001 */   addiu     $at, $zero, 1
/* BEC20 800E3820 1521005C */  bne        $t1, $at, .L800E3994
/* BEC24 800E3824 00000000 */   nop
.L800E3828:
/* BEC28 800E3828 8FAA003C */  lw         $t2, 0x3c($sp)
/* BEC2C 800E382C 2408FFFF */  addiu      $t0, $zero, -1
/* BEC30 800E3830 24010003 */  addiu      $at, $zero, 3
/* BEC34 800E3834 8D4B0014 */  lw         $t3, 0x14($t2)
/* BEC38 800E3838 256C0014 */  addiu      $t4, $t3, 0x14
/* BEC3C 800E383C AFAC0020 */  sw         $t4, 0x20($sp)
/* BEC40 800E3840 958D0006 */  lhu        $t5, 6($t4)
/* BEC44 800E3844 000D70C0 */  sll        $t6, $t5, 3
/* BEC48 800E3848 01CD7021 */  addu       $t6, $t6, $t5
/* BEC4C 800E384C 000E7080 */  sll        $t6, $t6, 2
/* BEC50 800E3850 018E7821 */  addu       $t7, $t4, $t6
/* BEC54 800E3854 25F80018 */  addiu      $t8, $t7, 0x18
/* BEC58 800E3858 AFB80024 */  sw         $t8, 0x24($sp)
/* BEC5C 800E385C AD880008 */  sw         $t0, 8($t4)
/* BEC60 800E3860 8FB90020 */  lw         $t9, 0x20($sp)
/* BEC64 800E3864 97290004 */  lhu        $t1, 4($t9)
/* BEC68 800E3868 11210006 */  beq        $t1, $at, .L800E3884
/* BEC6C 800E386C 00000000 */   nop
/* BEC70 800E3870 8FAA0024 */  lw         $t2, 0x24($sp)
/* BEC74 800E3874 8D4B0004 */  lw         $t3, 4($t2)
/* BEC78 800E3878 8D4D000C */  lw         $t5, 0xc($t2)
/* BEC7C 800E387C 016D7023 */  subu       $t6, $t3, $t5
/* BEC80 800E3880 AD4E0004 */  sw         $t6, 4($t2)
.L800E3884:
/* BEC84 800E3884 8FAF0020 */  lw         $t7, 0x20($sp)
/* BEC88 800E3888 24010002 */  addiu      $at, $zero, 2
/* BEC8C 800E388C 95F80004 */  lhu        $t8, 4($t7)
/* BEC90 800E3890 17010009 */  bne        $t8, $at, .L800E38B8
/* BEC94 800E3894 00000000 */   nop
/* BEC98 800E3898 8FA8003C */  lw         $t0, 0x3c($sp)
/* BEC9C 800E389C 8D0C0014 */  lw         $t4, 0x14($t0)
/* BECA0 800E38A0 8D990014 */  lw         $t9, 0x14($t4)
/* BECA4 800E38A4 17200004 */  bnez       $t9, .L800E38B8
/* BECA8 800E38A8 00000000 */   nop
/* BECAC 800E38AC 24090001 */  addiu      $t1, $zero, 1
/* BECB0 800E38B0 10000002 */  b          .L800E38BC
/* BECB4 800E38B4 AFA90028 */   sw        $t1, 0x28($sp)
.L800E38B8:
/* BECB8 800E38B8 AFA00028 */  sw         $zero, 0x28($sp)
.L800E38BC:
/* BECBC 800E38BC 8FAB002C */  lw         $t3, 0x2c($sp)
/* BECC0 800E38C0 27A50034 */  addiu      $a1, $sp, 0x34
/* BECC4 800E38C4 24060001 */  addiu      $a2, $zero, 1
/* BECC8 800E38C8 0C036988 */  jal        func_800DA620
/* BECCC 800E38CC 8D640010 */   lw        $a0, 0x10($t3)
/* BECD0 800E38D0 3C040010 */  lui        $a0, 0x10
/* BECD4 800E38D4 0C03AF84 */  jal        func_800EBE10
/* BECD8 800E38D8 34840401 */   ori       $a0, $a0, 0x401
/* BECDC 800E38DC 8FAE0020 */  lw         $t6, 0x20($sp)
/* BECE0 800E38E0 8FAD003C */  lw         $t5, 0x3c($sp)
/* BECE4 800E38E4 3C018000 */  lui        $at, 0x8000
/* BECE8 800E38E8 8DC60010 */  lw         $a2, 0x10($t6)
/* BECEC 800E38EC 3C050500 */  lui        $a1, 0x500
/* BECF0 800E38F0 34A50510 */  ori        $a1, $a1, 0x510
/* BECF4 800E38F4 00C15025 */  or         $t2, $a2, $at
/* BECF8 800E38F8 01403025 */  or         $a2, $t2, $zero
/* BECFC 800E38FC 0C03AF9C */  jal        func_800EBE70
/* BED00 800E3900 8DA40014 */   lw        $a0, 0x14($t5)
.L800E3904:
/* BED04 800E3904 8FAF002C */  lw         $t7, 0x2c($sp)
/* BED08 800E3908 27A50038 */  addiu      $a1, $sp, 0x38
/* BED0C 800E390C 24060001 */  addiu      $a2, $zero, 1
/* BED10 800E3910 0C036988 */  jal        func_800DA620
/* BED14 800E3914 8DE4000C */   lw        $a0, 0xc($t7)
/* BED18 800E3918 8FB8003C */  lw         $t8, 0x3c($sp)
/* BED1C 800E391C 00003025 */  or         $a2, $zero, $zero
/* BED20 800E3920 8F040004 */  lw         $a0, 4($t8)
/* BED24 800E3924 0C037100 */  jal        func_800DC400
/* BED28 800E3928 03002825 */   or        $a1, $t8, $zero
/* BED2C 800E392C 8FA80028 */  lw         $t0, 0x28($sp)
/* BED30 800E3930 24010001 */  addiu      $at, $zero, 1
/* BED34 800E3934 15010008 */  bne        $t0, $at, .L800E3958
/* BED38 800E3938 00000000 */   nop
/* BED3C 800E393C 8FAC003C */  lw         $t4, 0x3c($sp)
/* BED40 800E3940 8D990014 */  lw         $t9, 0x14($t4)
/* BED44 800E3944 8F29002C */  lw         $t1, 0x2c($t9)
/* BED48 800E3948 15200003 */  bnez       $t1, .L800E3958
/* BED4C 800E394C 00000000 */   nop
/* BED50 800E3950 1000FFEC */  b          .L800E3904
/* BED54 800E3954 AFA00028 */   sw        $zero, 0x28($sp)
.L800E3958:
/* BED58 800E3958 8FAB002C */  lw         $t3, 0x2c($sp)
/* BED5C 800E395C 00002825 */  or         $a1, $zero, $zero
/* BED60 800E3960 00003025 */  or         $a2, $zero, $zero
/* BED64 800E3964 0C037100 */  jal        func_800DC400
/* BED68 800E3968 8D640010 */   lw        $a0, 0x10($t3)
/* BED6C 800E396C 8FAD003C */  lw         $t5, 0x3c($sp)
/* BED70 800E3970 24010001 */  addiu      $at, $zero, 1
/* BED74 800E3974 8DAE0014 */  lw         $t6, 0x14($t5)
/* BED78 800E3978 95CA001A */  lhu        $t2, 0x1a($t6)
/* BED7C 800E397C 1541FF98 */  bne        $t2, $at, .L800E37E0
/* BED80 800E3980 00000000 */   nop
/* BED84 800E3984 0C03AFB0 */  jal        func_800EBEC0
/* BED88 800E3988 00000000 */   nop
/* BED8C 800E398C 1000FF94 */  b          .L800E37E0
/* BED90 800E3990 00000000 */   nop
.L800E3994:
/* BED94 800E3994 8FAF003C */  lw         $t7, 0x3c($sp)
/* BED98 800E3998 95F80000 */  lhu        $t8, ($t7)
/* BED9C 800E399C 2708FFF6 */  addiu      $t0, $t8, -0xa
/* BEDA0 800E39A0 2D010007 */  sltiu      $at, $t0, 7
/* BEDA4 800E39A4 10200052 */  beqz       $at, .L800E3AF0
/* BEDA8 800E39A8 00000000 */   nop
/* BEDAC 800E39AC 00084080 */  sll        $t0, $t0, 2
/* BEDB0 800E39B0 3C018011 */  lui        $at, %hi(D_80110C80)
/* BEDB4 800E39B4 00280821 */  addu       $at, $at, $t0
/* BEDB8 800E39B8 8C280C80 */  lw         $t0, %lo(D_80110C80)($at)
/* BEDBC 800E39BC 01000008 */  jr         $t0
/* BEDC0 800E39C0 00000000 */   nop
/* BEDC4 800E39C4 8FAC002C */  lw         $t4, 0x2c($sp)
/* BEDC8 800E39C8 27A50034 */  addiu      $a1, $sp, 0x34
/* BEDCC 800E39CC 24060001 */  addiu      $a2, $zero, 1
/* BEDD0 800E39D0 0C036988 */  jal        func_800DA620
/* BEDD4 800E39D4 8D840010 */   lw        $a0, 0x10($t4)
/* BEDD8 800E39D8 8FB9003C */  lw         $t9, 0x3c($sp)
/* BEDDC 800E39DC 8FA9002C */  lw         $t1, 0x2c($sp)
/* BEDE0 800E39E0 00002025 */  or         $a0, $zero, $zero
/* BEDE4 800E39E4 8F25000C */  lw         $a1, 0xc($t9)
/* BEDE8 800E39E8 8F260008 */  lw         $a2, 8($t9)
/* BEDEC 800E39EC 8F270010 */  lw         $a3, 0x10($t9)
/* BEDF0 800E39F0 8D390014 */  lw         $t9, 0x14($t1)
/* BEDF4 800E39F4 0320F809 */  jalr       $t9
/* BEDF8 800E39F8 00000000 */   nop
/* BEDFC 800E39FC 1000003E */  b          .L800E3AF8
/* BEE00 800E3A00 AFA20030 */   sw        $v0, 0x30($sp)
/* BEE04 800E3A04 8FAB002C */  lw         $t3, 0x2c($sp)
/* BEE08 800E3A08 27A50034 */  addiu      $a1, $sp, 0x34
/* BEE0C 800E3A0C 24060001 */  addiu      $a2, $zero, 1
/* BEE10 800E3A10 0C036988 */  jal        func_800DA620
/* BEE14 800E3A14 8D640010 */   lw        $a0, 0x10($t3)
/* BEE18 800E3A18 8FAE002C */  lw         $t6, 0x2c($sp)
/* BEE1C 800E3A1C 8FAD003C */  lw         $t5, 0x3c($sp)
/* BEE20 800E3A20 24040001 */  addiu      $a0, $zero, 1
/* BEE24 800E3A24 8DD90014 */  lw         $t9, 0x14($t6)
/* BEE28 800E3A28 8DA5000C */  lw         $a1, 0xc($t5)
/* BEE2C 800E3A2C 8DA60008 */  lw         $a2, 8($t5)
/* BEE30 800E3A30 0320F809 */  jalr       $t9
/* BEE34 800E3A34 8DA70010 */   lw        $a3, 0x10($t5)
/* BEE38 800E3A38 1000002F */  b          .L800E3AF8
/* BEE3C 800E3A3C AFA20030 */   sw        $v0, 0x30($sp)
/* BEE40 800E3A40 8FAA002C */  lw         $t2, 0x2c($sp)
/* BEE44 800E3A44 27A50034 */  addiu      $a1, $sp, 0x34
/* BEE48 800E3A48 24060001 */  addiu      $a2, $zero, 1
/* BEE4C 800E3A4C 0C036988 */  jal        func_800DA620
/* BEE50 800E3A50 8D440010 */   lw        $a0, 0x10($t2)
/* BEE54 800E3A54 8FAF003C */  lw         $t7, 0x3c($sp)
/* BEE58 800E3A58 8FA8002C */  lw         $t0, 0x2c($sp)
/* BEE5C 800E3A5C 00002825 */  or         $a1, $zero, $zero
/* BEE60 800E3A60 8DF80010 */  lw         $t8, 0x10($t7)
/* BEE64 800E3A64 8DE40014 */  lw         $a0, 0x14($t7)
/* BEE68 800E3A68 8DE6000C */  lw         $a2, 0xc($t7)
/* BEE6C 800E3A6C 8DE70008 */  lw         $a3, 8($t7)
/* BEE70 800E3A70 AFB80010 */  sw         $t8, 0x10($sp)
/* BEE74 800E3A74 8D190018 */  lw         $t9, 0x18($t0)
/* BEE78 800E3A78 0320F809 */  jalr       $t9
/* BEE7C 800E3A7C 00000000 */   nop
/* BEE80 800E3A80 1000001D */  b          .L800E3AF8
/* BEE84 800E3A84 AFA20030 */   sw        $v0, 0x30($sp)
/* BEE88 800E3A88 8FAC002C */  lw         $t4, 0x2c($sp)
/* BEE8C 800E3A8C 27A50034 */  addiu      $a1, $sp, 0x34
/* BEE90 800E3A90 24060001 */  addiu      $a2, $zero, 1
/* BEE94 800E3A94 0C036988 */  jal        func_800DA620
/* BEE98 800E3A98 8D840010 */   lw        $a0, 0x10($t4)
/* BEE9C 800E3A9C 8FA9003C */  lw         $t1, 0x3c($sp)
/* BEEA0 800E3AA0 8FAD002C */  lw         $t5, 0x2c($sp)
/* BEEA4 800E3AA4 24050001 */  addiu      $a1, $zero, 1
/* BEEA8 800E3AA8 8D2B0010 */  lw         $t3, 0x10($t1)
/* BEEAC 800E3AAC 8D240014 */  lw         $a0, 0x14($t1)
/* BEEB0 800E3AB0 8D26000C */  lw         $a2, 0xc($t1)
/* BEEB4 800E3AB4 8D270008 */  lw         $a3, 8($t1)
/* BEEB8 800E3AB8 AFAB0010 */  sw         $t3, 0x10($sp)
/* BEEBC 800E3ABC 8DB90018 */  lw         $t9, 0x18($t5)
/* BEEC0 800E3AC0 0320F809 */  jalr       $t9
/* BEEC4 800E3AC4 00000000 */   nop
/* BEEC8 800E3AC8 1000000B */  b          .L800E3AF8
/* BEECC 800E3ACC AFA20030 */   sw        $v0, 0x30($sp)
/* BEED0 800E3AD0 8FAE003C */  lw         $t6, 0x3c($sp)
/* BEED4 800E3AD4 00003025 */  or         $a2, $zero, $zero
/* BEED8 800E3AD8 8DC40004 */  lw         $a0, 4($t6)
/* BEEDC 800E3ADC 0C037100 */  jal        func_800DC400
/* BEEE0 800E3AE0 01C02825 */   or        $a1, $t6, $zero
/* BEEE4 800E3AE4 240AFFFF */  addiu      $t2, $zero, -1
/* BEEE8 800E3AE8 10000003 */  b          .L800E3AF8
/* BEEEC 800E3AEC AFAA0030 */   sw        $t2, 0x30($sp)
.L800E3AF0:
/* BEEF0 800E3AF0 240FFFFF */  addiu      $t7, $zero, -1
/* BEEF4 800E3AF4 AFAF0030 */  sw         $t7, 0x30($sp)
.L800E3AF8:
/* BEEF8 800E3AF8 8FB80030 */  lw         $t8, 0x30($sp)
/* BEEFC 800E3AFC 1700FF38 */  bnez       $t8, .L800E37E0
/* BEF00 800E3B00 00000000 */   nop
/* BEF04 800E3B04 8FA8002C */  lw         $t0, 0x2c($sp)
/* BEF08 800E3B08 27A50038 */  addiu      $a1, $sp, 0x38
/* BEF0C 800E3B0C 24060001 */  addiu      $a2, $zero, 1
/* BEF10 800E3B10 0C036988 */  jal        func_800DA620
/* BEF14 800E3B14 8D04000C */   lw        $a0, 0xc($t0)
/* BEF18 800E3B18 8FAC003C */  lw         $t4, 0x3c($sp)
/* BEF1C 800E3B1C 00003025 */  or         $a2, $zero, $zero
/* BEF20 800E3B20 8D840004 */  lw         $a0, 4($t4)
/* BEF24 800E3B24 0C037100 */  jal        func_800DC400
/* BEF28 800E3B28 01802825 */   or        $a1, $t4, $zero
/* BEF2C 800E3B2C 8FA9002C */  lw         $t1, 0x2c($sp)
/* BEF30 800E3B30 00002825 */  or         $a1, $zero, $zero
/* BEF34 800E3B34 00003025 */  or         $a2, $zero, $zero
/* BEF38 800E3B38 0C037100 */  jal        func_800DC400
/* BEF3C 800E3B3C 8D240010 */   lw        $a0, 0x10($t1)
/* BEF40 800E3B40 1000FF27 */  b          .L800E37E0
/* BEF44 800E3B44 00000000 */   nop
/* BEF48 800E3B48 00000000 */  nop
/* BEF4C 800E3B4C 00000000 */  nop
/* BEF50 800E3B50 00000000 */  nop
/* BEF54 800E3B54 00000000 */  nop
/* BEF58 800E3B58 00000000 */  nop
/* BEF5C 800E3B5C 00000000 */  nop
/* BEF60 800E3B60 8FBF001C */  lw         $ra, 0x1c($sp)
/* BEF64 800E3B64 27BD0040 */  addiu      $sp, $sp, 0x40
/* BEF68 800E3B68 03E00008 */  jr         $ra
/* BEF6C 800E3B6C 00000000 */   nop

glabel func_800E3B70
/* BEF70 800E3B70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BEF74 800E3B74 AFBF001C */  sw         $ra, 0x1c($sp)
/* BEF78 800E3B78 AFA40028 */  sw         $a0, 0x28($sp)
/* BEF7C 800E3B7C AFA5002C */  sw         $a1, 0x2c($sp)
/* BEF80 800E3B80 AFA60030 */  sw         $a2, 0x30($sp)
/* BEF84 800E3B84 AFB10018 */  sw         $s1, 0x18($sp)
/* BEF88 800E3B88 0C038AF8 */  jal        func_800E2BE0
/* BEF8C 800E3B8C AFB00014 */   sw        $s0, 0x14($sp)
/* BEF90 800E3B90 8FAE0028 */  lw         $t6, 0x28($sp)
/* BEF94 800E3B94 00408025 */  or         $s0, $v0, $zero
/* BEF98 800E3B98 8DCF0008 */  lw         $t7, 8($t6)
/* BEF9C 800E3B9C 8DD80010 */  lw         $t8, 0x10($t6)
/* BEFA0 800E3BA0 01F8082A */  slt        $at, $t7, $t8
/* BEFA4 800E3BA4 14200018 */  bnez       $at, .L800E3C08
/* BEFA8 800E3BA8 00000000 */   nop
.L800E3BAC:
/* BEFAC 800E3BAC 8FB90030 */  lw         $t9, 0x30($sp)
/* BEFB0 800E3BB0 24010001 */  addiu      $at, $zero, 1
/* BEFB4 800E3BB4 1721000A */  bne        $t9, $at, .L800E3BE0
/* BEFB8 800E3BB8 00000000 */   nop
/* BEFBC 800E3BBC 3C098011 */  lui        $t1, %hi(D_80109E10)
/* BEFC0 800E3BC0 8D299E10 */  lw         $t1, %lo(D_80109E10)($t1)
/* BEFC4 800E3BC4 24080008 */  addiu      $t0, $zero, 8
/* BEFC8 800E3BC8 A5280010 */  sh         $t0, 0x10($t1)
/* BEFCC 800E3BCC 8FA40028 */  lw         $a0, 0x28($sp)
/* BEFD0 800E3BD0 0C0387D3 */  jal        func_800E1F4C
/* BEFD4 800E3BD4 24840004 */   addiu     $a0, $a0, 4
/* BEFD8 800E3BD8 10000005 */  b          .L800E3BF0
/* BEFDC 800E3BDC 00000000 */   nop
.L800E3BE0:
/* BEFE0 800E3BE0 0C038B00 */  jal        func_800E2C00
/* BEFE4 800E3BE4 02002025 */   or        $a0, $s0, $zero
/* BEFE8 800E3BE8 10000030 */  b          .L800E3CAC
/* BEFEC 800E3BEC 2402FFFF */   addiu     $v0, $zero, -1
.L800E3BF0:
/* BEFF0 800E3BF0 8FAA0028 */  lw         $t2, 0x28($sp)
/* BEFF4 800E3BF4 8D4B0008 */  lw         $t3, 8($t2)
/* BEFF8 800E3BF8 8D4C0010 */  lw         $t4, 0x10($t2)
/* BEFFC 800E3BFC 016C082A */  slt        $at, $t3, $t4
/* BF000 800E3C00 1020FFEA */  beqz       $at, .L800E3BAC
/* BF004 800E3C04 00000000 */   nop
.L800E3C08:
/* BF008 800E3C08 8FAD0028 */  lw         $t5, 0x28($sp)
/* BF00C 800E3C0C 8DAE000C */  lw         $t6, 0xc($t5)
/* BF010 800E3C10 8DAF0010 */  lw         $t7, 0x10($t5)
/* BF014 800E3C14 01CFC021 */  addu       $t8, $t6, $t7
/* BF018 800E3C18 2719FFFF */  addiu      $t9, $t8, -1
/* BF01C 800E3C1C 032F001A */  div        $zero, $t9, $t7
/* BF020 800E3C20 00004010 */  mfhi       $t0
/* BF024 800E3C24 ADA8000C */  sw         $t0, 0xc($t5)
/* BF028 800E3C28 8FAA0028 */  lw         $t2, 0x28($sp)
/* BF02C 800E3C2C 8FA9002C */  lw         $t1, 0x2c($sp)
/* BF030 800E3C30 15E00002 */  bnez       $t7, .L800E3C3C
/* BF034 800E3C34 00000000 */   nop
/* BF038 800E3C38 0007000D */  break      7
.L800E3C3C:
/* BF03C 800E3C3C 2401FFFF */   addiu     $at, $zero, -1
/* BF040 800E3C40 15E10004 */  bne        $t7, $at, .L800E3C54
/* BF044 800E3C44 3C018000 */   lui       $at, 0x8000
/* BF048 800E3C48 17210002 */  bne        $t9, $at, .L800E3C54
/* BF04C 800E3C4C 00000000 */   nop
/* BF050 800E3C50 0006000D */  break      6
.L800E3C54:
/* BF054 800E3C54 8D4C000C */   lw        $t4, 0xc($t2)
/* BF058 800E3C58 8D4B0014 */  lw         $t3, 0x14($t2)
/* BF05C 800E3C5C 000C7080 */  sll        $t6, $t4, 2
/* BF060 800E3C60 016EC021 */  addu       $t8, $t3, $t6
/* BF064 800E3C64 AF090000 */  sw         $t1, ($t8)
/* BF068 800E3C68 8FB90028 */  lw         $t9, 0x28($sp)
/* BF06C 800E3C6C 8F2F0008 */  lw         $t7, 8($t9)
/* BF070 800E3C70 25E80001 */  addiu      $t0, $t7, 1
/* BF074 800E3C74 AF280008 */  sw         $t0, 8($t9)
/* BF078 800E3C78 8FAD0028 */  lw         $t5, 0x28($sp)
/* BF07C 800E3C7C 8DAA0000 */  lw         $t2, ($t5)
/* BF080 800E3C80 8D4C0000 */  lw         $t4, ($t2)
/* BF084 800E3C84 11800006 */  beqz       $t4, .L800E3CA0
/* BF088 800E3C88 00000000 */   nop
/* BF08C 800E3C8C 0C038825 */  jal        func_800E2094
/* BF090 800E3C90 01A02025 */   or        $a0, $t5, $zero
/* BF094 800E3C94 00408825 */  or         $s1, $v0, $zero
/* BF098 800E3C98 0C0366C8 */  jal        func_800D9B20
/* BF09C 800E3C9C 02202025 */   or        $a0, $s1, $zero
.L800E3CA0:
/* BF0A0 800E3CA0 0C038B00 */  jal        func_800E2C00
/* BF0A4 800E3CA4 02002025 */   or        $a0, $s0, $zero
/* BF0A8 800E3CA8 00001025 */  or         $v0, $zero, $zero
.L800E3CAC:
/* BF0AC 800E3CAC 8FBF001C */  lw         $ra, 0x1c($sp)
/* BF0B0 800E3CB0 8FB00014 */  lw         $s0, 0x14($sp)
/* BF0B4 800E3CB4 8FB10018 */  lw         $s1, 0x18($sp)
/* BF0B8 800E3CB8 03E00008 */  jr         $ra
/* BF0BC 800E3CBC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800E3CC0
/* BF0C0 800E3CC0 3C0E8011 */  lui        $t6, %hi(D_80109D70)
/* BF0C4 800E3CC4 8DCE9D70 */  lw         $t6, %lo(D_80109D70)($t6)
/* BF0C8 800E3CC8 15C00003 */  bnez       $t6, .L800E3CD8
/* BF0CC 800E3CCC 00000000 */   nop
/* BF0D0 800E3CD0 03E00008 */  jr         $ra
/* BF0D4 800E3CD4 00001025 */   or        $v0, $zero, $zero
.L800E3CD8:
/* BF0D8 800E3CD8 3C028011 */  lui        $v0, %hi(D_80109D78)
/* BF0DC 800E3CDC 8C429D78 */  lw         $v0, %lo(D_80109D78)($v0)
/* BF0E0 800E3CE0 03E00008 */  jr         $ra
/* BF0E4 800E3CE4 00000000 */   nop
/* BF0E8 800E3CE8 00000000 */  nop
/* BF0EC 800E3CEC 00000000 */  nop
