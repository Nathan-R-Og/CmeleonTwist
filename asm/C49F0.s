.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E95F0
/* C49F0 800E95F0 24010002 */  addiu      $at, $zero, 2
/* C49F4 800E95F4 14A10008 */  bne        $a1, $at, .L800E9618
/* C49F8 800E95F8 8C82001C */   lw        $v0, 0x1c($a0)
/* C49FC 800E95FC 8C8E0014 */  lw         $t6, 0x14($a0)
/* C4A00 800E9600 000E7880 */  sll        $t7, $t6, 2
/* C4A04 800E9604 004FC021 */  addu       $t8, $v0, $t7
/* C4A08 800E9608 AF060000 */  sw         $a2, ($t8)
/* C4A0C 800E960C 8C990014 */  lw         $t9, 0x14($a0)
/* C4A10 800E9610 27280001 */  addiu      $t0, $t9, 1
/* C4A14 800E9614 AC880014 */  sw         $t0, 0x14($a0)
.L800E9618:
/* C4A18 800E9618 03E00008 */  jr         $ra
/* C4A1C 800E961C 00001025 */   or        $v0, $zero, $zero

glabel func_800E9620
/* C4A20 800E9620 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C4A24 800E9624 8FA80058 */  lw         $t0, 0x58($sp)
/* C4A28 800E9628 AFBF0044 */  sw         $ra, 0x44($sp)
/* C4A2C 800E962C AFBE0040 */  sw         $fp, 0x40($sp)
/* C4A30 800E9630 AFB7003C */  sw         $s7, 0x3c($sp)
/* C4A34 800E9634 AFB60038 */  sw         $s6, 0x38($sp)
/* C4A38 800E9638 AFB50034 */  sw         $s5, 0x34($sp)
/* C4A3C 800E963C AFB40030 */  sw         $s4, 0x30($sp)
/* C4A40 800E9640 AFB3002C */  sw         $s3, 0x2c($sp)
/* C4A44 800E9644 AFB20028 */  sw         $s2, 0x28($sp)
/* C4A48 800E9648 AFB10024 */  sw         $s1, 0x24($sp)
/* C4A4C 800E964C AFB00020 */  sw         $s0, 0x20($sp)
/* C4A50 800E9650 8C83001C */  lw         $v1, 0x1c($a0)
/* C4A54 800E9654 3C0E0200 */  lui        $t6, 0x200
/* C4A58 800E9658 00061040 */  sll        $v0, $a2, 1
/* C4A5C 800E965C 3C0F0200 */  lui        $t7, 0x200
/* C4A60 800E9660 35CE0440 */  ori        $t6, $t6, 0x440
/* C4A64 800E9664 35EF0580 */  ori        $t7, $t7, 0x580
/* C4A68 800E9668 AD0E0000 */  sw         $t6, ($t0)
/* C4A6C 800E966C AD020004 */  sw         $v0, 4($t0)
/* C4A70 800E9670 AD0F0008 */  sw         $t7, 8($t0)
/* C4A74 800E9674 AD02000C */  sw         $v0, 0xc($t0)
/* C4A78 800E9678 8C980014 */  lw         $t8, 0x14($a0)
/* C4A7C 800E967C 00C0A825 */  or         $s5, $a2, $zero
/* C4A80 800E9680 00A0B825 */  or         $s7, $a1, $zero
/* C4A84 800E9684 00E0F025 */  or         $fp, $a3, $zero
/* C4A88 800E9688 0080A025 */  or         $s4, $a0, $zero
/* C4A8C 800E968C 00008025 */  or         $s0, $zero, $zero
/* C4A90 800E9690 1B00001E */  blez       $t8, .L800E970C
/* C4A94 800E9694 25130010 */   addiu     $s3, $t0, 0x10
/* C4A98 800E9698 3C120C00 */  lui        $s2, 0xc00
/* C4A9C 800E969C 36527FFF */  ori        $s2, $s2, 0x7fff
/* C4AA0 800E96A0 00608825 */  or         $s1, $v1, $zero
/* C4AA4 800E96A4 3056FFFF */  andi       $s6, $v0, 0xffff
.L800E96A8:
/* C4AA8 800E96A8 8E240000 */  lw         $a0, ($s1)
/* C4AAC 800E96AC AFB30010 */  sw         $s3, 0x10($sp)
/* C4AB0 800E96B0 02E02825 */  or         $a1, $s7, $zero
/* C4AB4 800E96B4 8C990004 */  lw         $t9, 4($a0)
/* C4AB8 800E96B8 02A03025 */  or         $a2, $s5, $zero
/* C4ABC 800E96BC 03C03825 */  or         $a3, $fp, $zero
/* C4AC0 800E96C0 0320F809 */  jalr       $t9
/* C4AC4 800E96C4 00000000 */   nop
/* C4AC8 800E96C8 3C0A06C0 */  lui        $t2, 0x6c0
/* C4ACC 800E96CC 3C0B0800 */  lui        $t3, 0x800
/* C4AD0 800E96D0 3C090800 */  lui        $t1, 0x800
/* C4AD4 800E96D4 354A0440 */  ori        $t2, $t2, 0x440
/* C4AD8 800E96D8 356B0580 */  ori        $t3, $t3, 0x580
/* C4ADC 800E96DC AC490000 */  sw         $t1, ($v0)
/* C4AE0 800E96E0 AC560004 */  sw         $s6, 4($v0)
/* C4AE4 800E96E4 AC4A000C */  sw         $t2, 0xc($v0)
/* C4AE8 800E96E8 AC520008 */  sw         $s2, 8($v0)
/* C4AEC 800E96EC AC4B0014 */  sw         $t3, 0x14($v0)
/* C4AF0 800E96F0 AC520010 */  sw         $s2, 0x10($v0)
/* C4AF4 800E96F4 8E8C0014 */  lw         $t4, 0x14($s4)
/* C4AF8 800E96F8 26100001 */  addiu      $s0, $s0, 1
/* C4AFC 800E96FC 26310004 */  addiu      $s1, $s1, 4
/* C4B00 800E9700 020C082A */  slt        $at, $s0, $t4
/* C4B04 800E9704 1420FFE8 */  bnez       $at, .L800E96A8
/* C4B08 800E9708 24530018 */   addiu     $s3, $v0, 0x18
.L800E970C:
/* C4B0C 800E970C 8FBF0044 */  lw         $ra, 0x44($sp)
/* C4B10 800E9710 02601025 */  or         $v0, $s3, $zero
/* C4B14 800E9714 8FB3002C */  lw         $s3, 0x2c($sp)
/* C4B18 800E9718 8FB00020 */  lw         $s0, 0x20($sp)
/* C4B1C 800E971C 8FB10024 */  lw         $s1, 0x24($sp)
/* C4B20 800E9720 8FB20028 */  lw         $s2, 0x28($sp)
/* C4B24 800E9724 8FB40030 */  lw         $s4, 0x30($sp)
/* C4B28 800E9728 8FB50034 */  lw         $s5, 0x34($sp)
/* C4B2C 800E972C 8FB60038 */  lw         $s6, 0x38($sp)
/* C4B30 800E9730 8FB7003C */  lw         $s7, 0x3c($sp)
/* C4B34 800E9734 8FBE0040 */  lw         $fp, 0x40($sp)
/* C4B38 800E9738 03E00008 */  jr         $ra
/* C4B3C 800E973C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800E9740
/* C4B40 800E9740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4B44 800E9744 24010004 */  addiu      $at, $zero, 4
/* C4B48 800E9748 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4B4C 800E974C 10A10055 */  beq        $a1, $at, .L800E98A4
/* C4B50 800E9750 00803825 */   or        $a3, $a0, $zero
/* C4B54 800E9754 24010005 */  addiu      $at, $zero, 5
/* C4B58 800E9758 54A1006B */  bnel       $a1, $at, .L800E9908
/* C4B5C 800E975C 8FBF0014 */   lw        $ra, 0x14($sp)
/* C4B60 800E9760 AC860028 */  sw         $a2, 0x28($a0)
/* C4B64 800E9764 8CCE0000 */  lw         $t6, ($a2)
/* C4B68 800E9768 AC800038 */  sw         $zero, 0x38($a0)
/* C4B6C 800E976C 3C0F800F */  lui        $t7, 0x800f
/* C4B70 800E9770 AC8E0044 */  sw         $t6, 0x44($a0)
/* C4B74 800E9774 90C20008 */  lbu        $v0, 8($a2)
/* C4B78 800E9778 50400007 */  beql       $v0, $zero, .L800E9798
/* C4B7C 800E977C 8CE20028 */   lw        $v0, 0x28($a3)
/* C4B80 800E9780 24040001 */  addiu      $a0, $zero, 1
/* C4B84 800E9784 10440034 */  beq        $v0, $a0, .L800E9858
/* C4B88 800E9788 3C08800F */   lui       $t0, 0x800f
/* C4B8C 800E978C 1000005E */  b          .L800E9908
/* C4B90 800E9790 8FBF0014 */   lw        $ra, 0x14($sp)
/* C4B94 800E9794 8CE20028 */  lw         $v0, 0x28($a3)
.L800E9798:
/* C4B98 800E9798 25EF9DEC */  addiu      $t7, $t7, -0x6214
/* C4B9C 800E979C ACEF0004 */  sw         $t7, 4($a3)
/* C4BA0 800E97A0 8C580004 */  lw         $t8, 4($v0)
/* C4BA4 800E97A4 24050009 */  addiu      $a1, $zero, 9
/* C4BA8 800E97A8 0305001A */  div        $zero, $t8, $a1
/* C4BAC 800E97AC 0000C812 */  mflo       $t9
/* C4BB0 800E97B0 14A00002 */  bnez       $a1, .L800E97BC
/* C4BB4 800E97B4 00000000 */   nop
/* C4BB8 800E97B8 0007000D */  break      7
.L800E97BC:
/* C4BBC 800E97BC 2401FFFF */   addiu     $at, $zero, -1
/* C4BC0 800E97C0 14A10004 */  bne        $a1, $at, .L800E97D4
/* C4BC4 800E97C4 3C018000 */   lui       $at, 0x8000
/* C4BC8 800E97C8 17010002 */  bne        $t8, $at, .L800E97D4
/* C4BCC 800E97CC 00000000 */   nop
/* C4BD0 800E97D0 0006000D */  break      6
.L800E97D4:
/* C4BD4 800E97D4 03250019 */   multu     $t9, $a1
/* C4BD8 800E97D8 00004012 */  mflo       $t0
/* C4BDC 800E97DC AC480004 */  sw         $t0, 4($v0)
/* C4BE0 800E97E0 8CE20028 */  lw         $v0, 0x28($a3)
/* C4BE4 800E97E4 8C440010 */  lw         $a0, 0x10($v0)
/* C4BE8 800E97E8 8C890000 */  lw         $t1, ($a0)
/* C4BEC 800E97EC 8C8B0004 */  lw         $t3, 4($a0)
/* C4BF0 800E97F0 00095100 */  sll        $t2, $t1, 4
/* C4BF4 800E97F4 014B0019 */  multu      $t2, $t3
/* C4BF8 800E97F8 00006012 */  mflo       $t4
/* C4BFC 800E97FC ACEC002C */  sw         $t4, 0x2c($a3)
/* C4C00 800E9800 8C43000C */  lw         $v1, 0xc($v0)
/* C4C04 800E9804 50600011 */  beql       $v1, $zero, .L800E984C
/* C4C08 800E9808 ACE00024 */   sw        $zero, 0x24($a3)
/* C4C0C 800E980C 8C6D0000 */  lw         $t5, ($v1)
/* C4C10 800E9810 8CE50018 */  lw         $a1, 0x18($a3)
/* C4C14 800E9814 24060020 */  addiu      $a2, $zero, 0x20
/* C4C18 800E9818 ACED001C */  sw         $t5, 0x1c($a3)
/* C4C1C 800E981C 8C4E000C */  lw         $t6, 0xc($v0)
/* C4C20 800E9820 8DCF0004 */  lw         $t7, 4($t6)
/* C4C24 800E9824 ACEF0020 */  sw         $t7, 0x20($a3)
/* C4C28 800E9828 8C58000C */  lw         $t8, 0xc($v0)
/* C4C2C 800E982C 8F190008 */  lw         $t9, 8($t8)
/* C4C30 800E9830 ACF90024 */  sw         $t9, 0x24($a3)
/* C4C34 800E9834 8C44000C */  lw         $a0, 0xc($v0)
/* C4C38 800E9838 0C03B4D0 */  jal        func_800ED340
/* C4C3C 800E983C 2484000C */   addiu     $a0, $a0, 0xc
/* C4C40 800E9840 10000031 */  b          .L800E9908
/* C4C44 800E9844 8FBF0014 */   lw        $ra, 0x14($sp)
/* C4C48 800E9848 ACE00024 */  sw         $zero, 0x24($a3)
.L800E984C:
/* C4C4C 800E984C ACE00020 */  sw         $zero, 0x20($a3)
/* C4C50 800E9850 1000002C */  b          .L800E9904
/* C4C54 800E9854 ACE0001C */   sw        $zero, 0x1c($a3)
.L800E9858:
/* C4C58 800E9858 8CE20028 */  lw         $v0, 0x28($a3)
/* C4C5C 800E985C 25089914 */  addiu      $t0, $t0, -0x66ec
/* C4C60 800E9860 ACE80004 */  sw         $t0, 4($a3)
/* C4C64 800E9864 8C43000C */  lw         $v1, 0xc($v0)
/* C4C68 800E9868 5060000B */  beql       $v1, $zero, .L800E9898
/* C4C6C 800E986C ACE00024 */   sw        $zero, 0x24($a3)
/* C4C70 800E9870 8C690000 */  lw         $t1, ($v1)
/* C4C74 800E9874 ACE9001C */  sw         $t1, 0x1c($a3)
/* C4C78 800E9878 8C4A000C */  lw         $t2, 0xc($v0)
/* C4C7C 800E987C 8D4B0004 */  lw         $t3, 4($t2)
/* C4C80 800E9880 ACEB0020 */  sw         $t3, 0x20($a3)
/* C4C84 800E9884 8C4C000C */  lw         $t4, 0xc($v0)
/* C4C88 800E9888 8D8D0008 */  lw         $t5, 8($t4)
/* C4C8C 800E988C 1000001D */  b          .L800E9904
/* C4C90 800E9890 ACED0024 */   sw        $t5, 0x24($a3)
/* C4C94 800E9894 ACE00024 */  sw         $zero, 0x24($a3)
.L800E9898:
/* C4C98 800E9898 ACE00020 */  sw         $zero, 0x20($a3)
/* C4C9C 800E989C 10000019 */  b          .L800E9904
/* C4CA0 800E98A0 ACE0001C */   sw        $zero, 0x1c($a3)
.L800E98A4:
/* C4CA4 800E98A4 8CE20028 */  lw         $v0, 0x28($a3)
/* C4CA8 800E98A8 24040001 */  addiu      $a0, $zero, 1
/* C4CAC 800E98AC ACE0003C */  sw         $zero, 0x3c($a3)
/* C4CB0 800E98B0 ACE40040 */  sw         $a0, 0x40($a3)
/* C4CB4 800E98B4 10400013 */  beqz       $v0, .L800E9904
/* C4CB8 800E98B8 ACE00038 */   sw        $zero, 0x38($a3)
/* C4CBC 800E98BC 8C4E0000 */  lw         $t6, ($v0)
/* C4CC0 800E98C0 ACEE0044 */  sw         $t6, 0x44($a3)
/* C4CC4 800E98C4 90430008 */  lbu        $v1, 8($v0)
/* C4CC8 800E98C8 14600007 */  bnez       $v1, .L800E98E8
/* C4CCC 800E98CC 00000000 */   nop
/* C4CD0 800E98D0 8C43000C */  lw         $v1, 0xc($v0)
/* C4CD4 800E98D4 5060000C */  beql       $v1, $zero, .L800E9908
/* C4CD8 800E98D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* C4CDC 800E98DC 8C6F0008 */  lw         $t7, 8($v1)
/* C4CE0 800E98E0 10000008 */  b          .L800E9904
/* C4CE4 800E98E4 ACEF0024 */   sw        $t7, 0x24($a3)
.L800E98E8:
/* C4CE8 800E98E8 54830007 */  bnel       $a0, $v1, .L800E9908
/* C4CEC 800E98EC 8FBF0014 */   lw        $ra, 0x14($sp)
/* C4CF0 800E98F0 8C43000C */  lw         $v1, 0xc($v0)
/* C4CF4 800E98F4 50600004 */  beql       $v1, $zero, .L800E9908
/* C4CF8 800E98F8 8FBF0014 */   lw        $ra, 0x14($sp)
/* C4CFC 800E98FC 8C780008 */  lw         $t8, 8($v1)
/* C4D00 800E9900 ACF80024 */  sw         $t8, 0x24($a3)
.L800E9904:
/* C4D04 800E9904 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E9908:
/* C4D08 800E9908 27BD0018 */  addiu      $sp, $sp, 0x18
/* C4D0C 800E990C 03E00008 */  jr         $ra
/* C4D10 800E9910 00000000 */   nop

glabel func_800E9914
/* C4D14 800E9914 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C4D18 800E9918 8FA80060 */  lw         $t0, 0x60($sp)
/* C4D1C 800E991C AFB30020 */  sw         $s3, 0x20($sp)
/* C4D20 800E9920 AFB00014 */  sw         $s0, 0x14($sp)
/* C4D24 800E9924 00808025 */  or         $s0, $a0, $zero
/* C4D28 800E9928 00C09825 */  or         $s3, $a2, $zero
/* C4D2C 800E992C AFBF0024 */  sw         $ra, 0x24($sp)
/* C4D30 800E9930 AFB2001C */  sw         $s2, 0x1c($sp)
/* C4D34 800E9934 AFB10018 */  sw         $s1, 0x18($sp)
/* C4D38 800E9938 AFA7005C */  sw         $a3, 0x5c($sp)
/* C4D3C 800E993C 00A05025 */  or         $t2, $a1, $zero
/* C4D40 800E9940 14C00003 */  bnez       $a2, .L800E9950
/* C4D44 800E9944 01004825 */   or        $t1, $t0, $zero
/* C4D48 800E9948 100000D6 */  b          .L800E9CA4
/* C4D4C 800E994C 01001025 */   or        $v0, $t0, $zero
.L800E9950:
/* C4D50 800E9950 8E020038 */  lw         $v0, 0x38($s0)
/* C4D54 800E9954 8E030020 */  lw         $v1, 0x20($s0)
/* C4D58 800E9958 00537021 */  addu       $t6, $v0, $s3
/* C4D5C 800E995C 006E082B */  sltu       $at, $v1, $t6
/* C4D60 800E9960 50200084 */  beql       $at, $zero, .L800E9B74
/* C4D64 800E9964 8E020028 */   lw        $v0, 0x28($s0)
/* C4D68 800E9968 8E0F0024 */  lw         $t7, 0x24($s0)
/* C4D6C 800E996C 00629023 */  subu       $s2, $v1, $v0
/* C4D70 800E9970 51E00080 */  beql       $t7, $zero, .L800E9B74
/* C4D74 800E9974 8E020028 */   lw        $v0, 0x28($s0)
/* C4D78 800E9978 1A40001E */  blez       $s2, .L800E99F4
/* C4D7C 800E997C 00128840 */   sll       $s1, $s2, 1
/* C4D80 800E9980 8E040044 */  lw         $a0, 0x44($s0)
/* C4D84 800E9984 8E060034 */  lw         $a2, 0x34($s0)
/* C4D88 800E9988 AFAA0054 */  sw         $t2, 0x54($sp)
/* C4D8C 800E998C 8E190030 */  lw         $t9, 0x30($s0)
/* C4D90 800E9990 02202825 */  or         $a1, $s1, $zero
/* C4D94 800E9994 0320F809 */  jalr       $t9
/* C4D98 800E9998 00000000 */   nop
/* C4D9C 800E999C 8FAA0054 */  lw         $t2, 0x54($sp)
/* C4DA0 800E99A0 30460007 */  andi       $a2, $v0, 7
/* C4DA4 800E99A4 8FA80060 */  lw         $t0, 0x60($sp)
/* C4DA8 800E99A8 85580000 */  lh         $t8, ($t2)
/* C4DAC 800E99AC 02263821 */  addu       $a3, $s1, $a2
/* C4DB0 800E99B0 30ED0007 */  andi       $t5, $a3, 7
/* C4DB4 800E99B4 00ED7023 */  subu       $t6, $a3, $t5
/* C4DB8 800E99B8 3C010800 */  lui        $at, 0x800
/* C4DBC 800E99BC 330BFFFF */  andi       $t3, $t8, 0xffff
/* C4DC0 800E99C0 01616025 */  or         $t4, $t3, $at
/* C4DC4 800E99C4 25CF0008 */  addiu      $t7, $t6, 8
/* C4DC8 800E99C8 25090008 */  addiu      $t1, $t0, 8
/* C4DCC 800E99CC 31F9FFFF */  andi       $t9, $t7, 0xffff
/* C4DD0 800E99D0 01202025 */  or         $a0, $t1, $zero
/* C4DD4 800E99D4 00465823 */  subu       $t3, $v0, $a2
/* C4DD8 800E99D8 3C180400 */  lui        $t8, 0x400
/* C4DDC 800E99DC AD190004 */  sw         $t9, 4($t0)
/* C4DE0 800E99E0 AD0C0000 */  sw         $t4, ($t0)
/* C4DE4 800E99E4 AC8B0004 */  sw         $t3, 4($a0)
/* C4DE8 800E99E8 AC980000 */  sw         $t8, ($a0)
/* C4DEC 800E99EC 10000002 */  b          .L800E99F8
/* C4DF0 800E99F0 25290008 */   addiu     $t1, $t1, 8
.L800E99F4:
/* C4DF4 800E99F4 00003025 */  or         $a2, $zero, $zero
.L800E99F8:
/* C4DF8 800E99F8 854C0000 */  lh         $t4, ($t2)
/* C4DFC 800E99FC 0253082A */  slt        $at, $s2, $s3
/* C4E00 800E9A00 01866821 */  addu       $t5, $t4, $a2
/* C4E04 800E9A04 A54D0000 */  sh         $t5, ($t2)
/* C4E08 800E9A08 8E0E0028 */  lw         $t6, 0x28($s0)
/* C4E0C 800E9A0C 8E02001C */  lw         $v0, 0x1c($s0)
/* C4E10 800E9A10 8DCF0000 */  lw         $t7, ($t6)
/* C4E14 800E9A14 0002C840 */  sll        $t9, $v0, 1
/* C4E18 800E9A18 AE020038 */  sw         $v0, 0x38($s0)
/* C4E1C 800E9A1C 01F9C021 */  addu       $t8, $t7, $t9
/* C4E20 800E9A20 AE180044 */  sw         $t8, 0x44($s0)
/* C4E24 800E9A24 10200049 */  beqz       $at, .L800E9B4C
/* C4E28 800E9A28 85480000 */   lh        $t0, ($t2)
/* C4E2C 800E9A2C 8E020024 */  lw         $v0, 0x24($s0)
.L800E9A30:
/* C4E30 800E9A30 2401FFFF */  addiu      $at, $zero, -1
/* C4E34 800E9A34 01114021 */  addu       $t0, $t0, $s1
/* C4E38 800E9A38 10410004 */  beq        $v0, $at, .L800E9A4C
/* C4E3C 800E9A3C 02729823 */   subu      $s3, $s3, $s2
/* C4E40 800E9A40 10400002 */  beqz       $v0, .L800E9A4C
/* C4E44 800E9A44 244BFFFF */   addiu     $t3, $v0, -1
/* C4E48 800E9A48 AE0B0024 */  sw         $t3, 0x24($s0)
.L800E9A4C:
/* C4E4C 800E9A4C 8E0C0020 */  lw         $t4, 0x20($s0)
/* C4E50 800E9A50 8E0D001C */  lw         $t5, 0x1c($s0)
/* C4E54 800E9A54 018D1023 */  subu       $v0, $t4, $t5
/* C4E58 800E9A58 0262082B */  sltu       $at, $s3, $v0
/* C4E5C 800E9A5C 10200003 */  beqz       $at, .L800E9A6C
/* C4E60 800E9A60 00409025 */   or        $s2, $v0, $zero
/* C4E64 800E9A64 10000001 */  b          .L800E9A6C
/* C4E68 800E9A68 02609025 */   or        $s2, $s3, $zero
.L800E9A6C:
/* C4E6C 800E9A6C 8E040044 */  lw         $a0, 0x44($s0)
/* C4E70 800E9A70 8E060034 */  lw         $a2, 0x34($s0)
/* C4E74 800E9A74 AFA9004C */  sw         $t1, 0x4c($sp)
/* C4E78 800E9A78 AFA8002C */  sw         $t0, 0x2c($sp)
/* C4E7C 800E9A7C 8E190030 */  lw         $t9, 0x30($s0)
/* C4E80 800E9A80 00128840 */  sll        $s1, $s2, 1
/* C4E84 800E9A84 02202825 */  or         $a1, $s1, $zero
/* C4E88 800E9A88 0320F809 */  jalr       $t9
/* C4E8C 800E9A8C 00000000 */   nop
/* C4E90 800E9A90 8FA8002C */  lw         $t0, 0x2c($sp)
/* C4E94 800E9A94 30450007 */  andi       $a1, $v0, 7
/* C4E98 800E9A98 8FA9004C */  lw         $t1, 0x4c($sp)
/* C4E9C 800E9A9C 31030007 */  andi       $v1, $t0, 7
/* C4EA0 800E9AA0 10600004 */  beqz       $v1, .L800E9AB4
/* C4EA4 800E9AA4 02253821 */   addu      $a3, $s1, $a1
/* C4EA8 800E9AA8 240E0008 */  addiu      $t6, $zero, 8
/* C4EAC 800E9AAC 10000002 */  b          .L800E9AB8
/* C4EB0 800E9AB0 01C33023 */   subu      $a2, $t6, $v1
.L800E9AB4:
/* C4EB4 800E9AB4 00003025 */  or         $a2, $zero, $zero
.L800E9AB8:
/* C4EB8 800E9AB8 01067821 */  addu       $t7, $t0, $a2
/* C4EBC 800E9ABC 30EC0007 */  andi       $t4, $a3, 7
/* C4EC0 800E9AC0 00EC6823 */  subu       $t5, $a3, $t4
/* C4EC4 800E9AC4 31F8FFFF */  andi       $t8, $t7, 0xffff
/* C4EC8 800E9AC8 01201825 */  or         $v1, $t1, $zero
/* C4ECC 800E9ACC 3C010800 */  lui        $at, 0x800
/* C4ED0 800E9AD0 03015825 */  or         $t3, $t8, $at
/* C4ED4 800E9AD4 25290008 */  addiu      $t1, $t1, 8
/* C4ED8 800E9AD8 25B90008 */  addiu      $t9, $t5, 8
/* C4EDC 800E9ADC 332EFFFF */  andi       $t6, $t9, 0xffff
/* C4EE0 800E9AE0 01202025 */  or         $a0, $t1, $zero
/* C4EE4 800E9AE4 AC6E0004 */  sw         $t6, 4($v1)
/* C4EE8 800E9AE8 AC6B0000 */  sw         $t3, ($v1)
/* C4EEC 800E9AEC 0045C023 */  subu       $t8, $v0, $a1
/* C4EF0 800E9AF0 3C0F0400 */  lui        $t7, 0x400
/* C4EF4 800E9AF4 AC8F0000 */  sw         $t7, ($a0)
/* C4EF8 800E9AF8 AC980004 */  sw         $t8, 4($a0)
/* C4EFC 800E9AFC 14A00002 */  bnez       $a1, .L800E9B08
/* C4F00 800E9B00 25290008 */   addiu     $t1, $t1, 8
/* C4F04 800E9B04 10C0000E */  beqz       $a2, .L800E9B40
.L800E9B08:
/* C4F08 800E9B08 01055821 */   addu      $t3, $t0, $a1
/* C4F0C 800E9B0C 3C0100FF */  lui        $at, 0xff
/* C4F10 800E9B10 3421FFFF */  ori        $at, $at, 0xffff
/* C4F14 800E9B14 01666021 */  addu       $t4, $t3, $a2
/* C4F18 800E9B18 01816824 */  and        $t5, $t4, $at
/* C4F1C 800E9B1C 01201025 */  or         $v0, $t1, $zero
/* C4F20 800E9B20 3C010A00 */  lui        $at, 0xa00
/* C4F24 800E9B24 00087C00 */  sll        $t7, $t0, 0x10
/* C4F28 800E9B28 3238FFFF */  andi       $t8, $s1, 0xffff
/* C4F2C 800E9B2C 01F85825 */  or         $t3, $t7, $t8
/* C4F30 800E9B30 01A1C825 */  or         $t9, $t5, $at
/* C4F34 800E9B34 AC590000 */  sw         $t9, ($v0)
/* C4F38 800E9B38 AC4B0004 */  sw         $t3, 4($v0)
/* C4F3C 800E9B3C 25290008 */  addiu      $t1, $t1, 8
.L800E9B40:
/* C4F40 800E9B40 0253082A */  slt        $at, $s2, $s3
/* C4F44 800E9B44 5420FFBA */  bnel       $at, $zero, .L800E9A30
/* C4F48 800E9B48 8E020024 */   lw        $v0, 0x24($s0)
.L800E9B4C:
/* C4F4C 800E9B4C 8E0C0038 */  lw         $t4, 0x38($s0)
/* C4F50 800E9B50 8E190044 */  lw         $t9, 0x44($s0)
/* C4F54 800E9B54 00137040 */  sll        $t6, $s3, 1
/* C4F58 800E9B58 01936821 */  addu       $t5, $t4, $s3
/* C4F5C 800E9B5C 032E7821 */  addu       $t7, $t9, $t6
/* C4F60 800E9B60 AE0D0038 */  sw         $t5, 0x38($s0)
/* C4F64 800E9B64 AE0F0044 */  sw         $t7, 0x44($s0)
/* C4F68 800E9B68 1000004E */  b          .L800E9CA4
/* C4F6C 800E9B6C 01201025 */   or        $v0, $t1, $zero
/* C4F70 800E9B70 8E020028 */  lw         $v0, 0x28($s0)
.L800E9B74:
/* C4F74 800E9B74 8E040044 */  lw         $a0, 0x44($s0)
/* C4F78 800E9B78 00138840 */  sll        $s1, $s3, 1
/* C4F7C 800E9B7C 8C580000 */  lw         $t8, ($v0)
/* C4F80 800E9B80 8C4C0004 */  lw         $t4, 4($v0)
/* C4F84 800E9B84 00911821 */  addu       $v1, $a0, $s1
/* C4F88 800E9B88 00785823 */  subu       $t3, $v1, $t8
/* C4F8C 800E9B8C 016C9023 */  subu       $s2, $t3, $t4
/* C4F90 800E9B90 06430003 */  bgezl      $s2, .L800E9BA0
/* C4F94 800E9B94 0232082A */   slt       $at, $s1, $s2
/* C4F98 800E9B98 00009025 */  or         $s2, $zero, $zero
/* C4F9C 800E9B9C 0232082A */  slt        $at, $s1, $s2
.L800E9BA0:
/* C4FA0 800E9BA0 50200003 */  beql       $at, $zero, .L800E9BB0
/* C4FA4 800E9BA4 0251082A */   slt       $at, $s2, $s1
/* C4FA8 800E9BA8 02209025 */  or         $s2, $s1, $zero
/* C4FAC 800E9BAC 0251082A */  slt        $at, $s2, $s1
.L800E9BB0:
/* C4FB0 800E9BB0 5020002C */  beql       $at, $zero, .L800E9C64
/* C4FB4 800E9BB4 AE030044 */   sw        $v1, 0x44($s0)
/* C4FB8 800E9BB8 1A60001F */  blez       $s3, .L800E9C38
/* C4FBC 800E9BBC 00003025 */   or        $a2, $zero, $zero
/* C4FC0 800E9BC0 8E060034 */  lw         $a2, 0x34($s0)
/* C4FC4 800E9BC4 02322823 */  subu       $a1, $s1, $s2
/* C4FC8 800E9BC8 AFA50048 */  sw         $a1, 0x48($sp)
/* C4FCC 800E9BCC AFAA0054 */  sw         $t2, 0x54($sp)
/* C4FD0 800E9BD0 8E190030 */  lw         $t9, 0x30($s0)
/* C4FD4 800E9BD4 0320F809 */  jalr       $t9
/* C4FD8 800E9BD8 00000000 */   nop
/* C4FDC 800E9BDC 8FAA0054 */  lw         $t2, 0x54($sp)
/* C4FE0 800E9BE0 8FA70048 */  lw         $a3, 0x48($sp)
/* C4FE4 800E9BE4 30460007 */  andi       $a2, $v0, 7
/* C4FE8 800E9BE8 854D0000 */  lh         $t5, ($t2)
/* C4FEC 800E9BEC 8FA80060 */  lw         $t0, 0x60($sp)
/* C4FF0 800E9BF0 00E63821 */  addu       $a3, $a3, $a2
/* C4FF4 800E9BF4 30F80007 */  andi       $t8, $a3, 7
/* C4FF8 800E9BF8 00F85823 */  subu       $t3, $a3, $t8
/* C4FFC 800E9BFC 3C010800 */  lui        $at, 0x800
/* C5000 800E9C00 31AEFFFF */  andi       $t6, $t5, 0xffff
/* C5004 800E9C04 01C17825 */  or         $t7, $t6, $at
/* C5008 800E9C08 256C0008 */  addiu      $t4, $t3, 8
/* C500C 800E9C0C 25090008 */  addiu      $t1, $t0, 8
/* C5010 800E9C10 3199FFFF */  andi       $t9, $t4, 0xffff
/* C5014 800E9C14 01202025 */  or         $a0, $t1, $zero
/* C5018 800E9C18 00467023 */  subu       $t6, $v0, $a2
/* C501C 800E9C1C 3C0D0400 */  lui        $t5, 0x400
/* C5020 800E9C20 AD190004 */  sw         $t9, 4($t0)
/* C5024 800E9C24 AD0F0000 */  sw         $t7, ($t0)
/* C5028 800E9C28 AC8E0004 */  sw         $t6, 4($a0)
/* C502C 800E9C2C AC8D0000 */  sw         $t5, ($a0)
/* C5030 800E9C30 10000001 */  b          .L800E9C38
/* C5034 800E9C34 25290008 */   addiu     $t1, $t1, 8
.L800E9C38:
/* C5038 800E9C38 854F0000 */  lh         $t7, ($t2)
/* C503C 800E9C3C 01E6C021 */  addu       $t8, $t7, $a2
/* C5040 800E9C40 A5580000 */  sh         $t8, ($t2)
/* C5044 800E9C44 8E0B0038 */  lw         $t3, 0x38($s0)
/* C5048 800E9C48 8E190044 */  lw         $t9, 0x44($s0)
/* C504C 800E9C4C 01736021 */  addu       $t4, $t3, $s3
/* C5050 800E9C50 03316821 */  addu       $t5, $t9, $s1
/* C5054 800E9C54 AE0C0038 */  sw         $t4, 0x38($s0)
/* C5058 800E9C58 10000002 */  b          .L800E9C64
/* C505C 800E9C5C AE0D0044 */   sw        $t5, 0x44($s0)
/* C5060 800E9C60 AE030044 */  sw         $v1, 0x44($s0)
.L800E9C64:
/* C5064 800E9C64 1240000E */  beqz       $s2, .L800E9CA0
/* C5068 800E9C68 02321823 */   subu      $v1, $s1, $s2
/* C506C 800E9C6C 04610002 */  bgez       $v1, .L800E9C78
/* C5070 800E9C70 01201025 */   or        $v0, $t1, $zero
/* C5074 800E9C74 00001825 */  or         $v1, $zero, $zero
.L800E9C78:
/* C5078 800E9C78 854E0000 */  lh         $t6, ($t2)
/* C507C 800E9C7C 3C0100FF */  lui        $at, 0xff
/* C5080 800E9C80 3421FFFF */  ori        $at, $at, 0xffff
/* C5084 800E9C84 01C37821 */  addu       $t7, $t6, $v1
/* C5088 800E9C88 01E1C024 */  and        $t8, $t7, $at
/* C508C 800E9C8C 3C010200 */  lui        $at, 0x200
/* C5090 800E9C90 03015825 */  or         $t3, $t8, $at
/* C5094 800E9C94 AC4B0000 */  sw         $t3, ($v0)
/* C5098 800E9C98 AC520004 */  sw         $s2, 4($v0)
/* C509C 800E9C9C 25290008 */  addiu      $t1, $t1, 8
.L800E9CA0:
/* C50A0 800E9CA0 01201025 */  or         $v0, $t1, $zero
.L800E9CA4:
/* C50A4 800E9CA4 8FBF0024 */  lw         $ra, 0x24($sp)
/* C50A8 800E9CA8 8FB00014 */  lw         $s0, 0x14($sp)
/* C50AC 800E9CAC 8FB10018 */  lw         $s1, 0x18($sp)
/* C50B0 800E9CB0 8FB2001C */  lw         $s2, 0x1c($sp)
/* C50B4 800E9CB4 8FB30020 */  lw         $s3, 0x20($sp)
/* C50B8 800E9CB8 03E00008 */  jr         $ra
/* C50BC 800E9CBC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800E9CC0
/* C50C0 800E9CC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C50C4 800E9CC4 AFB3002C */  sw         $s3, 0x2c($sp)
/* C50C8 800E9CC8 AFB50028 */  sw         $s5, 0x28($sp)
/* C50CC 800E9CCC 00137400 */  sll        $t6, $s3, 0x10
/* C50D0 800E9CD0 0015C400 */  sll        $t8, $s5, 0x10
/* C50D4 800E9CD4 0018AC03 */  sra        $s5, $t8, 0x10
/* C50D8 800E9CD8 000E9C03 */  sra        $s3, $t6, 0x10
/* C50DC 800E9CDC 1A20001A */  blez       $s1, .L800E9D48
/* C50E0 800E9CE0 AFBF0014 */   sw        $ra, 0x14($sp)
/* C50E4 800E9CE4 8E590030 */  lw         $t9, 0x30($s2)
/* C50E8 800E9CE8 8E440044 */  lw         $a0, 0x44($s2)
/* C50EC 800E9CEC 02202825 */  or         $a1, $s1, $zero
/* C50F0 800E9CF0 0320F809 */  jalr       $t9
/* C50F4 800E9CF4 8E460034 */   lw        $a2, 0x34($s2)
/* C50F8 800E9CF8 30460007 */  andi       $a2, $v0, 7
/* C50FC 800E9CFC 02268821 */  addu       $s1, $s1, $a2
/* C5100 800E9D00 326EFFFF */  andi       $t6, $s3, 0xffff
/* C5104 800E9D04 3C010800 */  lui        $at, 0x800
/* C5108 800E9D08 01C17825 */  or         $t7, $t6, $at
/* C510C 800E9D0C 32380007 */  andi       $t8, $s1, 7
/* C5110 800E9D10 02002025 */  or         $a0, $s0, $zero
/* C5114 800E9D14 0238C823 */  subu       $t9, $s1, $t8
/* C5118 800E9D18 272E0008 */  addiu      $t6, $t9, 8
/* C511C 800E9D1C AC8F0000 */  sw         $t7, ($a0)
/* C5120 800E9D20 26100008 */  addiu      $s0, $s0, 8
/* C5124 800E9D24 31CFFFFF */  andi       $t7, $t6, 0xffff
/* C5128 800E9D28 02002825 */  or         $a1, $s0, $zero
/* C512C 800E9D2C AC8F0004 */  sw         $t7, 4($a0)
/* C5130 800E9D30 0046C823 */  subu       $t9, $v0, $a2
/* C5134 800E9D34 3C180400 */  lui        $t8, 0x400
/* C5138 800E9D38 ACB80000 */  sw         $t8, ($a1)
/* C513C 800E9D3C ACB90004 */  sw         $t9, 4($a1)
/* C5140 800E9D40 10000002 */  b          .L800E9D4C
/* C5144 800E9D44 26100008 */   addiu     $s0, $s0, 8
.L800E9D48:
/* C5148 800E9D48 00003025 */  or         $a2, $zero, $zero
.L800E9D4C:
/* C514C 800E9D4C 328E0002 */  andi       $t6, $s4, 2
/* C5150 800E9D50 11C00009 */  beqz       $t6, .L800E9D78
/* C5154 800E9D54 02001025 */   or        $v0, $s0, $zero
/* C5158 800E9D58 3C0F0F00 */  lui        $t7, 0xf00
/* C515C 800E9D5C AC4F0000 */  sw         $t7, ($v0)
/* C5160 800E9D60 8E580018 */  lw         $t8, 0x18($s2)
/* C5164 800E9D64 3C011FFF */  lui        $at, 0x1fff
/* C5168 800E9D68 3421FFFF */  ori        $at, $at, 0xffff
/* C516C 800E9D6C 0301C824 */  and        $t9, $t8, $at
/* C5170 800E9D70 AC590004 */  sw         $t9, 4($v0)
/* C5174 800E9D74 26100008 */  addiu      $s0, $s0, 8
.L800E9D78:
/* C5178 800E9D78 02667021 */  addu       $t6, $s3, $a2
/* C517C 800E9D7C 31CFFFFF */  andi       $t7, $t6, 0xffff
/* C5180 800E9D80 3C010800 */  lui        $at, 0x800
/* C5184 800E9D84 01E1C025 */  or         $t8, $t7, $at
/* C5188 800E9D88 02001825 */  or         $v1, $s0, $zero
/* C518C 800E9D8C AC780000 */  sw         $t8, ($v1)
/* C5190 800E9D90 00167840 */  sll        $t7, $s6, 1
/* C5194 800E9D94 31F8FFFF */  andi       $t8, $t7, 0xffff
/* C5198 800E9D98 00157400 */  sll        $t6, $s5, 0x10
/* C519C 800E9D9C 01D8C825 */  or         $t9, $t6, $t8
/* C51A0 800E9DA0 328F00FF */  andi       $t7, $s4, 0xff
/* C51A4 800E9DA4 26100008 */  addiu      $s0, $s0, 8
/* C51A8 800E9DA8 000F7400 */  sll        $t6, $t7, 0x10
/* C51AC 800E9DAC 3C010100 */  lui        $at, 0x100
/* C51B0 800E9DB0 AC790004 */  sw         $t9, 4($v1)
/* C51B4 800E9DB4 01C1C025 */  or         $t8, $t6, $at
/* C51B8 800E9DB8 02002025 */  or         $a0, $s0, $zero
/* C51BC 800E9DBC AC980000 */  sw         $t8, ($a0)
/* C51C0 800E9DC0 8E590014 */  lw         $t9, 0x14($s2)
/* C51C4 800E9DC4 3C011FFF */  lui        $at, 0x1fff
/* C51C8 800E9DC8 3421FFFF */  ori        $at, $at, 0xffff
/* C51CC 800E9DCC 03217824 */  and        $t7, $t9, $at
/* C51D0 800E9DD0 AC8F0004 */  sw         $t7, 4($a0)
/* C51D4 800E9DD4 AE400040 */  sw         $zero, 0x40($s2)
/* C51D8 800E9DD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C51DC 800E9DDC 26100008 */  addiu      $s0, $s0, 8
/* C51E0 800E9DE0 02001025 */  or         $v0, $s0, $zero
/* C51E4 800E9DE4 03E00008 */  jr         $ra
/* C51E8 800E9DE8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800E9DEC
/* C51EC 800E9DEC 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* C51F0 800E9DF0 AFB70044 */  sw         $s7, 0x44($sp)
/* C51F4 800E9DF4 AFA700BC */  sw         $a3, 0xbc($sp)
/* C51F8 800E9DF8 00A03825 */  or         $a3, $a1, $zero
/* C51FC 800E9DFC 0080B825 */  or         $s7, $a0, $zero
/* C5200 800E9E00 AFBF004C */  sw         $ra, 0x4c($sp)
/* C5204 800E9E04 AFBE0048 */  sw         $fp, 0x48($sp)
/* C5208 800E9E08 AFB60040 */  sw         $s6, 0x40($sp)
/* C520C 800E9E0C AFB5003C */  sw         $s5, 0x3c($sp)
/* C5210 800E9E10 AFB40038 */  sw         $s4, 0x38($sp)
/* C5214 800E9E14 AFB30034 */  sw         $s3, 0x34($sp)
/* C5218 800E9E18 AFB20030 */  sw         $s2, 0x30($sp)
/* C521C 800E9E1C AFB1002C */  sw         $s1, 0x2c($sp)
/* C5220 800E9E20 AFB00028 */  sw         $s0, 0x28($sp)
/* C5224 800E9E24 AFA500B4 */  sw         $a1, 0xb4($sp)
/* C5228 800E9E28 00C04025 */  or         $t0, $a2, $zero
/* C522C 800E9E2C 14C00003 */  bnez       $a2, .L800E9E3C
/* C5230 800E9E30 00006825 */   or        $t5, $zero, $zero
/* C5234 800E9E34 10000109 */  b          .L800EA25C
/* C5238 800E9E38 8FA200C0 */   lw        $v0, 0xc0($sp)
.L800E9E3C:
/* C523C 800E9E3C 8EEE002C */  lw         $t6, 0x2c($s7)
/* C5240 800E9E40 3C0100FF */  lui        $at, 0xff
/* C5244 800E9E44 3421FFFF */  ori        $at, $at, 0xffff
/* C5248 800E9E48 8FA500C0 */  lw         $a1, 0xc0($sp)
/* C524C 800E9E4C 01C17824 */  and        $t7, $t6, $at
/* C5250 800E9E50 3C010B00 */  lui        $at, 0xb00
/* C5254 800E9E54 01E1C025 */  or         $t8, $t7, $at
/* C5258 800E9E58 ACB80000 */  sw         $t8, ($a1)
/* C525C 800E9E5C 8EF90028 */  lw         $t9, 0x28($s7)
/* C5260 800E9E60 3C011FFF */  lui        $at, 0x1fff
/* C5264 800E9E64 3421FFFF */  ori        $at, $at, 0xffff
/* C5268 800E9E68 8F2E0010 */  lw         $t6, 0x10($t9)
/* C526C 800E9E6C 24AA0008 */  addiu      $t2, $a1, 8
/* C5270 800E9E70 00003025 */  or         $a2, $zero, $zero
/* C5274 800E9E74 25CF0008 */  addiu      $t7, $t6, 8
/* C5278 800E9E78 01E1C024 */  and        $t8, $t7, $at
/* C527C 800E9E7C ACB80004 */  sw         $t8, 4($a1)
/* C5280 800E9E80 8EE30038 */  lw         $v1, 0x38($s7)
/* C5284 800E9E84 8EE40020 */  lw         $a0, 0x20($s7)
/* C5288 800E9E88 01002825 */  or         $a1, $t0, $zero
/* C528C 800E9E8C 0068C821 */  addu       $t9, $v1, $t0
/* C5290 800E9E90 0099482B */  sltu       $t1, $a0, $t9
/* C5294 800E9E94 11200004 */  beqz       $t1, .L800E9EA8
/* C5298 800E9E98 240F0010 */   addiu     $t7, $zero, 0x10
/* C529C 800E9E9C 8EE90024 */  lw         $t1, 0x24($s7)
/* C52A0 800E9EA0 0009702B */  sltu       $t6, $zero, $t1
/* C52A4 800E9EA4 01C04825 */  or         $t1, $t6, $zero
.L800E9EA8:
/* C52A8 800E9EA8 11200003 */  beqz       $t1, .L800E9EB8
/* C52AC 800E9EAC 24010009 */   addiu     $at, $zero, 9
/* C52B0 800E9EB0 10000001 */  b          .L800E9EB8
/* C52B4 800E9EB4 00832823 */   subu      $a1, $a0, $v1
.L800E9EB8:
/* C52B8 800E9EB8 8EE3003C */  lw         $v1, 0x3c($s7)
/* C52BC 800E9EBC 01408025 */  or         $s0, $t2, $zero
/* C52C0 800E9EC0 02E09025 */  or         $s2, $s7, $zero
/* C52C4 800E9EC4 10600003 */  beqz       $v1, .L800E9ED4
/* C52C8 800E9EC8 00009825 */   or        $s3, $zero, $zero
/* C52CC 800E9ECC 10000001 */  b          .L800E9ED4
/* C52D0 800E9ED0 01E33023 */   subu      $a2, $t7, $v1
.L800E9ED4:
/* C52D4 800E9ED4 00A62023 */  subu       $a0, $a1, $a2
/* C52D8 800E9ED8 04810002 */  bgez       $a0, .L800E9EE4
/* C52DC 800E9EDC 00000000 */   nop
/* C52E0 800E9EE0 00002025 */  or         $a0, $zero, $zero
.L800E9EE4:
/* C52E4 800E9EE4 11200081 */  beqz       $t1, .L800EA0EC
/* C52E8 800E9EE8 249E000F */   addiu     $fp, $a0, 0xf
/* C52EC 800E9EEC 249E000F */  addiu      $fp, $a0, 0xf
/* C52F0 800E9EF0 001EC103 */  sra        $t8, $fp, 4
/* C52F4 800E9EF4 84F50000 */  lh         $s5, ($a3)
/* C52F8 800E9EF8 8EF40040 */  lw         $s4, 0x40($s7)
/* C52FC 800E9EFC 001848C0 */  sll        $t1, $t8, 3
/* C5300 800E9F00 01384821 */  addu       $t1, $t1, $t8
/* C5304 800E9F04 01208825 */  or         $s1, $t1, $zero
/* C5308 800E9F08 AFA9005C */  sw         $t1, 0x5c($sp)
/* C530C 800E9F0C AFA800B8 */  sw         $t0, 0xb8($sp)
/* C5310 800E9F10 AFA700B4 */  sw         $a3, 0xb4($sp)
/* C5314 800E9F14 AFA5008C */  sw         $a1, 0x8c($sp)
/* C5318 800E9F18 0300F025 */  or         $fp, $t8, $zero
/* C531C 800E9F1C 0C03A730 */  jal        func_800E9CC0
/* C5320 800E9F20 0080B025 */   or        $s6, $a0, $zero
/* C5324 800E9F24 8EE3003C */  lw         $v1, 0x3c($s7)
/* C5328 800E9F28 8FA5008C */  lw         $a1, 0x8c($sp)
/* C532C 800E9F2C 8FA700B4 */  lw         $a3, 0xb4($sp)
/* C5330 800E9F30 8FA800B8 */  lw         $t0, 0xb8($sp)
/* C5334 800E9F34 8FA9005C */  lw         $t1, 0x5c($sp)
/* C5338 800E9F38 10600006 */  beqz       $v1, .L800E9F54
/* C533C 800E9F3C 00405025 */   or        $t2, $v0, $zero
/* C5340 800E9F40 84F90000 */  lh         $t9, ($a3)
/* C5344 800E9F44 00037040 */  sll        $t6, $v1, 1
/* C5348 800E9F48 032E7821 */  addu       $t7, $t9, $t6
/* C534C 800E9F4C 10000004 */  b          .L800E9F60
/* C5350 800E9F50 A4EF0000 */   sh        $t7, ($a3)
.L800E9F54:
/* C5354 800E9F54 84F80000 */  lh         $t8, ($a3)
/* C5358 800E9F58 27190020 */  addiu      $t9, $t8, 0x20
/* C535C 800E9F5C A4F90000 */  sh         $t9, ($a3)
.L800E9F60:
/* C5360 800E9F60 8EE2001C */  lw         $v0, 0x1c($s7)
/* C5364 800E9F64 8EEF0028 */  lw         $t7, 0x28($s7)
/* C5368 800E9F68 00A8082A */  slt        $at, $a1, $t0
/* C536C 800E9F6C 304E000F */  andi       $t6, $v0, 0xf
/* C5370 800E9F70 AEEE003C */  sw         $t6, 0x3c($s7)
/* C5374 800E9F74 8DF80000 */  lw         $t8, ($t7)
/* C5378 800E9F78 0002C902 */  srl        $t9, $v0, 4
/* C537C 800E9F7C 001970C0 */  sll        $t6, $t9, 3
/* C5380 800E9F80 01D97021 */  addu       $t6, $t6, $t9
/* C5384 800E9F84 030E7821 */  addu       $t7, $t8, $t6
/* C5388 800E9F88 25F90009 */  addiu      $t9, $t7, 9
/* C538C 800E9F8C AEF90044 */  sw         $t9, 0x44($s7)
/* C5390 800E9F90 AEE20038 */  sw         $v0, 0x38($s7)
/* C5394 800E9F94 10200049 */  beqz       $at, .L800EA0BC
/* C5398 800E9F98 84E60000 */   lh        $a2, ($a3)
/* C539C 800E9F9C 00051840 */  sll        $v1, $a1, 1
.L800E9FA0:
/* C53A0 800E9FA0 27D80001 */  addiu      $t8, $fp, 1
/* C53A4 800E9FA4 00187140 */  sll        $t6, $t8, 5
/* C53A8 800E9FA8 8EE20024 */  lw         $v0, 0x24($s7)
/* C53AC 800E9FAC 01C63821 */  addu       $a3, $t6, $a2
/* C53B0 800E9FB0 2401FFE0 */  addiu      $at, $zero, -0x20
/* C53B4 800E9FB4 00E17824 */  and        $t7, $a3, $at
/* C53B8 800E9FB8 2401FFFF */  addiu      $at, $zero, -1
/* C53BC 800E9FBC 01054023 */  subu       $t0, $t0, $a1
/* C53C0 800E9FC0 01E03825 */  or         $a3, $t7, $zero
/* C53C4 800E9FC4 10410004 */  beq        $v0, $at, .L800E9FD8
/* C53C8 800E9FC8 00C33021 */   addu      $a2, $a2, $v1
/* C53CC 800E9FCC 10400002 */  beqz       $v0, .L800E9FD8
/* C53D0 800E9FD0 2459FFFF */   addiu     $t9, $v0, -1
/* C53D4 800E9FD4 AEF90024 */  sw         $t9, 0x24($s7)
.L800E9FD8:
/* C53D8 800E9FD8 8EF80020 */  lw         $t8, 0x20($s7)
/* C53DC 800E9FDC 8EEE001C */  lw         $t6, 0x1c($s7)
/* C53E0 800E9FE0 01408025 */  or         $s0, $t2, $zero
/* C53E4 800E9FE4 02E09025 */  or         $s2, $s7, $zero
/* C53E8 800E9FE8 030E1023 */  subu       $v0, $t8, $t6
/* C53EC 800E9FEC 0102082B */  sltu       $at, $t0, $v0
/* C53F0 800E9FF0 10200003 */  beqz       $at, .L800EA000
/* C53F4 800E9FF4 0007AC00 */   sll       $s5, $a3, 0x10
/* C53F8 800E9FF8 10000002 */  b          .L800EA004
/* C53FC 800E9FFC 01002825 */   or        $a1, $t0, $zero
.L800EA000:
/* C5400 800EA000 00402825 */  or         $a1, $v0, $zero
.L800EA004:
/* C5404 800EA004 8EEF003C */  lw         $t7, 0x3c($s7)
/* C5408 800EA008 0015C403 */  sra        $t8, $s5, 0x10
/* C540C 800EA00C 0300A825 */  or         $s5, $t8, $zero
/* C5410 800EA010 00AF2021 */  addu       $a0, $a1, $t7
/* C5414 800EA014 2484FFF0 */  addiu      $a0, $a0, -0x10
/* C5418 800EA018 04810002 */  bgez       $a0, .L800EA024
/* C541C 800EA01C 00009825 */   or        $s3, $zero, $zero
/* C5420 800EA020 00002025 */  or         $a0, $zero, $zero
.L800EA024:
/* C5424 800EA024 8EF40040 */  lw         $s4, 0x40($s7)
/* C5428 800EA028 249E000F */  addiu      $fp, $a0, 0xf
/* C542C 800EA02C 001EC903 */  sra        $t9, $fp, 4
/* C5430 800EA030 001948C0 */  sll        $t1, $t9, 3
/* C5434 800EA034 01394821 */  addu       $t1, $t1, $t9
/* C5438 800EA038 368E0002 */  ori        $t6, $s4, 2
/* C543C 800EA03C 01C0A025 */  or         $s4, $t6, $zero
/* C5440 800EA040 01208825 */  or         $s1, $t1, $zero
/* C5444 800EA044 AFA9005C */  sw         $t1, 0x5c($sp)
/* C5448 800EA048 0320F025 */  or         $fp, $t9, $zero
/* C544C 800EA04C AFA800B8 */  sw         $t0, 0xb8($sp)
/* C5450 800EA050 AFA70088 */  sw         $a3, 0x88($sp)
/* C5454 800EA054 AFA60080 */  sw         $a2, 0x80($sp)
/* C5458 800EA058 AFA5008C */  sw         $a1, 0x8c($sp)
/* C545C 800EA05C 0C03A730 */  jal        func_800E9CC0
/* C5460 800EA060 0080B025 */   or        $s6, $a0, $zero
/* C5464 800EA064 8EEF003C */  lw         $t7, 0x3c($s7)
/* C5468 800EA068 8FA70088 */  lw         $a3, 0x88($sp)
/* C546C 800EA06C 3C0100FF */  lui        $at, 0xff
/* C5470 800EA070 000FC840 */  sll        $t9, $t7, 1
/* C5474 800EA074 3421FFFF */  ori        $at, $at, 0xffff
/* C5478 800EA078 0327C021 */  addu       $t8, $t9, $a3
/* C547C 800EA07C 03017024 */  and        $t6, $t8, $at
/* C5480 800EA080 8FA5008C */  lw         $a1, 0x8c($sp)
/* C5484 800EA084 3C010A00 */  lui        $at, 0xa00
/* C5488 800EA088 8FA60080 */  lw         $a2, 0x80($sp)
/* C548C 800EA08C 01C17825 */  or         $t7, $t6, $at
/* C5490 800EA090 8FA800B8 */  lw         $t0, 0xb8($sp)
/* C5494 800EA094 8FA9005C */  lw         $t1, 0x5c($sp)
/* C5498 800EA098 00051840 */  sll        $v1, $a1, 1
/* C549C 800EA09C 306EFFFF */  andi       $t6, $v1, 0xffff
/* C54A0 800EA0A0 AC4F0000 */  sw         $t7, ($v0)
/* C54A4 800EA0A4 0006C400 */  sll        $t8, $a2, 0x10
/* C54A8 800EA0A8 030E7825 */  or         $t7, $t8, $t6
/* C54AC 800EA0AC 00A8082A */  slt        $at, $a1, $t0
/* C54B0 800EA0B0 AC4F0004 */  sw         $t7, 4($v0)
/* C54B4 800EA0B4 1420FFBA */  bnez       $at, .L800E9FA0
/* C54B8 800EA0B8 244A0008 */   addiu     $t2, $v0, 8
.L800EA0BC:
/* C54BC 800EA0BC 8EF9003C */  lw         $t9, 0x3c($s7)
/* C54C0 800EA0C0 8EEF0038 */  lw         $t7, 0x38($s7)
/* C54C4 800EA0C4 01401025 */  or         $v0, $t2, $zero
/* C54C8 800EA0C8 0328C021 */  addu       $t8, $t9, $t0
/* C54CC 800EA0CC 330E000F */  andi       $t6, $t8, 0xf
/* C54D0 800EA0D0 8EF80044 */  lw         $t8, 0x44($s7)
/* C54D4 800EA0D4 AEEE003C */  sw         $t6, 0x3c($s7)
/* C54D8 800EA0D8 01E8C821 */  addu       $t9, $t7, $t0
/* C54DC 800EA0DC 03097021 */  addu       $t6, $t8, $t1
/* C54E0 800EA0E0 AEF90038 */  sw         $t9, 0x38($s7)
/* C54E4 800EA0E4 1000005D */  b          .L800EA25C
/* C54E8 800EA0E8 AEEE0044 */   sw        $t6, 0x44($s7)
.L800EA0EC:
/* C54EC 800EA0EC 8EE20028 */  lw         $v0, 0x28($s7)
/* C54F0 800EA0F0 001E7903 */  sra        $t7, $fp, 4
/* C54F4 800EA0F4 8EF90044 */  lw         $t9, 0x44($s7)
/* C54F8 800EA0F8 000F48C0 */  sll        $t1, $t7, 3
/* C54FC 800EA0FC 8C580000 */  lw         $t8, ($v0)
/* C5500 800EA100 012F4821 */  addu       $t1, $t1, $t7
/* C5504 800EA104 01E0F025 */  or         $fp, $t7, $zero
/* C5508 800EA108 8C4F0004 */  lw         $t7, 4($v0)
/* C550C 800EA10C 03295821 */  addu       $t3, $t9, $t1
/* C5510 800EA110 01787023 */  subu       $t6, $t3, $t8
/* C5514 800EA114 01CF1823 */  subu       $v1, $t6, $t7
/* C5518 800EA118 04610002 */  bgez       $v1, .L800EA124
/* C551C 800EA11C 001E2900 */   sll       $a1, $fp, 4
/* C5520 800EA120 00001825 */  or         $v1, $zero, $zero
.L800EA124:
/* C5524 800EA124 0061001A */  div        $zero, $v1, $at
/* C5528 800EA128 00001012 */  mflo       $v0
/* C552C 800EA12C 00022100 */  sll        $a0, $v0, 4
/* C5530 800EA130 00A66021 */  addu       $t4, $a1, $a2
/* C5534 800EA134 0184082A */  slt        $at, $t4, $a0
/* C5538 800EA138 10200002 */  beqz       $at, .L800EA144
/* C553C 800EA13C 01408025 */   or        $s0, $t2, $zero
/* C5540 800EA140 01802025 */  or         $a0, $t4, $zero
.L800EA144:
/* C5544 800EA144 3098000F */  andi       $t8, $a0, 0xf
/* C5548 800EA148 00987023 */  subu       $t6, $a0, $t8
/* C554C 800EA14C 01C8082A */  slt        $at, $t6, $t0
/* C5550 800EA150 1020002B */  beqz       $at, .L800EA200
/* C5554 800EA154 01233023 */   subu      $a2, $t1, $v1
/* C5558 800EA158 84F50000 */  lh         $s5, ($a3)
/* C555C 800EA15C 8EF40040 */  lw         $s4, 0x40($s7)
/* C5560 800EA160 240D0001 */  addiu      $t5, $zero, 1
/* C5564 800EA164 AFAD007C */  sw         $t5, 0x7c($sp)
/* C5568 800EA168 AFAC0050 */  sw         $t4, 0x50($sp)
/* C556C 800EA16C AFA9005C */  sw         $t1, 0x5c($sp)
/* C5570 800EA170 AFA800B8 */  sw         $t0, 0xb8($sp)
/* C5574 800EA174 AFA700B4 */  sw         $a3, 0xb4($sp)
/* C5578 800EA178 AFA40090 */  sw         $a0, 0x90($sp)
/* C557C 800EA17C 02E09025 */  or         $s2, $s7, $zero
/* C5580 800EA180 00A4B023 */  subu       $s6, $a1, $a0
/* C5584 800EA184 00C08825 */  or         $s1, $a2, $zero
/* C5588 800EA188 0C03A730 */  jal        func_800E9CC0
/* C558C 800EA18C 00009825 */   or        $s3, $zero, $zero
/* C5590 800EA190 8EE3003C */  lw         $v1, 0x3c($s7)
/* C5594 800EA194 8FA40090 */  lw         $a0, 0x90($sp)
/* C5598 800EA198 8FA700B4 */  lw         $a3, 0xb4($sp)
/* C559C 800EA19C 8FA800B8 */  lw         $t0, 0xb8($sp)
/* C55A0 800EA1A0 8FA9005C */  lw         $t1, 0x5c($sp)
/* C55A4 800EA1A4 8FAC0050 */  lw         $t4, 0x50($sp)
/* C55A8 800EA1A8 8FAD007C */  lw         $t5, 0x7c($sp)
/* C55AC 800EA1AC 10600006 */  beqz       $v1, .L800EA1C8
/* C55B0 800EA1B0 00405025 */   or        $t2, $v0, $zero
/* C55B4 800EA1B4 84EF0000 */  lh         $t7, ($a3)
/* C55B8 800EA1B8 0003C840 */  sll        $t9, $v1, 1
/* C55BC 800EA1BC 01F9C021 */  addu       $t8, $t7, $t9
/* C55C0 800EA1C0 10000004 */  b          .L800EA1D4
/* C55C4 800EA1C4 A4F80000 */   sh        $t8, ($a3)
.L800EA1C8:
/* C55C8 800EA1C8 84EE0000 */  lh         $t6, ($a3)
/* C55CC 800EA1CC 25CF0020 */  addiu      $t7, $t6, 0x20
/* C55D0 800EA1D0 A4EF0000 */  sh         $t7, ($a3)
.L800EA1D4:
/* C55D4 800EA1D4 8EF9003C */  lw         $t9, 0x3c($s7)
/* C55D8 800EA1D8 8EEF0038 */  lw         $t7, 0x38($s7)
/* C55DC 800EA1DC 0328C021 */  addu       $t8, $t9, $t0
/* C55E0 800EA1E0 330E000F */  andi       $t6, $t8, 0xf
/* C55E4 800EA1E4 8EF80044 */  lw         $t8, 0x44($s7)
/* C55E8 800EA1E8 AEEE003C */  sw         $t6, 0x3c($s7)
/* C55EC 800EA1EC 01E8C821 */  addu       $t9, $t7, $t0
/* C55F0 800EA1F0 03097021 */  addu       $t6, $t8, $t1
/* C55F4 800EA1F4 AEF90038 */  sw         $t9, 0x38($s7)
/* C55F8 800EA1F8 10000003 */  b          .L800EA208
/* C55FC 800EA1FC AEEE0044 */   sw        $t6, 0x44($s7)
.L800EA200:
/* C5600 800EA200 AEE0003C */  sw         $zero, 0x3c($s7)
/* C5604 800EA204 AEEB0044 */  sw         $t3, 0x44($s7)
.L800EA208:
/* C5608 800EA208 10800013 */  beqz       $a0, .L800EA258
/* C560C 800EA20C 01401025 */   or        $v0, $t2, $zero
/* C5610 800EA210 11A00005 */  beqz       $t5, .L800EA228
/* C5614 800EA214 AEE0003C */   sw        $zero, 0x3c($s7)
/* C5618 800EA218 01841823 */  subu       $v1, $t4, $a0
/* C561C 800EA21C 00037840 */  sll        $t7, $v1, 1
/* C5620 800EA220 10000002 */  b          .L800EA22C
/* C5624 800EA224 01E01825 */   or        $v1, $t7, $zero
.L800EA228:
/* C5628 800EA228 00001825 */  or         $v1, $zero, $zero
.L800EA22C:
/* C562C 800EA22C 84F90000 */  lh         $t9, ($a3)
/* C5630 800EA230 3C0100FF */  lui        $at, 0xff
/* C5634 800EA234 3421FFFF */  ori        $at, $at, 0xffff
/* C5638 800EA238 0323C021 */  addu       $t8, $t9, $v1
/* C563C 800EA23C 03017024 */  and        $t6, $t8, $at
/* C5640 800EA240 3C010200 */  lui        $at, 0x200
/* C5644 800EA244 01C17825 */  or         $t7, $t6, $at
/* C5648 800EA248 0004C840 */  sll        $t9, $a0, 1
/* C564C 800EA24C AC590004 */  sw         $t9, 4($v0)
/* C5650 800EA250 AC4F0000 */  sw         $t7, ($v0)
/* C5654 800EA254 254A0008 */  addiu      $t2, $t2, 8
.L800EA258:
/* C5658 800EA258 01401025 */  or         $v0, $t2, $zero
.L800EA25C:
/* C565C 800EA25C 8FBF004C */  lw         $ra, 0x4c($sp)
/* C5660 800EA260 8FB00028 */  lw         $s0, 0x28($sp)
/* C5664 800EA264 8FB1002C */  lw         $s1, 0x2c($sp)
/* C5668 800EA268 8FB20030 */  lw         $s2, 0x30($sp)
/* C566C 800EA26C 8FB30034 */  lw         $s3, 0x34($sp)
/* C5670 800EA270 8FB40038 */  lw         $s4, 0x38($sp)
/* C5674 800EA274 8FB5003C */  lw         $s5, 0x3c($sp)
/* C5678 800EA278 8FB60040 */  lw         $s6, 0x40($sp)
/* C567C 800EA27C 8FB70044 */  lw         $s7, 0x44($sp)
/* C5680 800EA280 8FBE0048 */  lw         $fp, 0x48($sp)
/* C5684 800EA284 03E00008 */  jr         $ra
/* C5688 800EA288 27BD00B0 */   addiu     $sp, $sp, 0xb0
/* C568C 800EA28C 00000000 */  nop
