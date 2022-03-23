.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D9730
/* B4B30 800D9730 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B4B34 800D9734 AFBF001C */  sw         $ra, 0x1c($sp)
/* B4B38 800D9738 240E0001 */  addiu      $t6, $zero, 1
/* B4B3C 800D973C 3C018025 */  lui        $at, %hi(D_80248C70)
/* B4B40 800D9740 AFB00018 */  sw         $s0, 0x18($sp)
/* B4B44 800D9744 AFA00038 */  sw         $zero, 0x38($sp)
/* B4B48 800D9748 0C03861C */  jal        func_800E1870
/* B4B4C 800D974C AC2E8C70 */   sw        $t6, %lo(D_80248C70)($at)
/* B4B50 800D9750 00408025 */  or         $s0, $v0, $zero
/* B4B54 800D9754 3C012000 */  lui        $at, 0x2000
/* B4B58 800D9758 0C038618 */  jal        func_800E1860
/* B4B5C 800D975C 02012025 */   or        $a0, $s0, $at
/* B4B60 800D9760 3C040100 */  lui        $a0, 0x100
/* B4B64 800D9764 0C038620 */  jal        func_800E1880
/* B4B68 800D9768 34840800 */   ori       $a0, $a0, 0x800
/* B4B6C 800D976C 3C041FC0 */  lui        $a0, 0x1fc0
/* B4B70 800D9770 348407FC */  ori        $a0, $a0, 0x7fc
/* B4B74 800D9774 0C038624 */  jal        func_800E1890
/* B4B78 800D9778 27A5003C */   addiu     $a1, $sp, 0x3c
/* B4B7C 800D977C 10400007 */  beqz       $v0, .L800D979C
/* B4B80 800D9780 00000000 */   nop
.L800D9784:
/* B4B84 800D9784 3C041FC0 */  lui        $a0, 0x1fc0
/* B4B88 800D9788 348407FC */  ori        $a0, $a0, 0x7fc
/* B4B8C 800D978C 0C038624 */  jal        func_800E1890
/* B4B90 800D9790 27A5003C */   addiu     $a1, $sp, 0x3c
/* B4B94 800D9794 1440FFFB */  bnez       $v0, .L800D9784
/* B4B98 800D9798 00000000 */   nop
.L800D979C:
/* B4B9C 800D979C 8FA5003C */  lw         $a1, 0x3c($sp)
/* B4BA0 800D97A0 3C041FC0 */  lui        $a0, 0x1fc0
/* B4BA4 800D97A4 348407FC */  ori        $a0, $a0, 0x7fc
/* B4BA8 800D97A8 34AF0008 */  ori        $t7, $a1, 8
/* B4BAC 800D97AC 0C038638 */  jal        func_800E18E0
/* B4BB0 800D97B0 01E02825 */   or        $a1, $t7, $zero
/* B4BB4 800D97B4 10400009 */  beqz       $v0, .L800D97DC
/* B4BB8 800D97B8 00000000 */   nop
.L800D97BC:
/* B4BBC 800D97BC 8FA5003C */  lw         $a1, 0x3c($sp)
/* B4BC0 800D97C0 3C041FC0 */  lui        $a0, 0x1fc0
/* B4BC4 800D97C4 348407FC */  ori        $a0, $a0, 0x7fc
/* B4BC8 800D97C8 34B80008 */  ori        $t8, $a1, 8
/* B4BCC 800D97CC 0C038638 */  jal        func_800E18E0
/* B4BD0 800D97D0 03002825 */   or        $a1, $t8, $zero
/* B4BD4 800D97D4 1440FFF9 */  bnez       $v0, .L800D97BC
/* B4BD8 800D97D8 00000000 */   nop
.L800D97DC:
/* B4BDC 800D97DC 3C08800E */  lui        $t0, %hi(D_800E1930)
/* B4BE0 800D97E0 25081930 */  addiu      $t0, $t0, %lo(D_800E1930)
/* B4BE4 800D97E4 8D010000 */  lw         $at, ($t0)
/* B4BE8 800D97E8 3C198000 */  lui        $t9, 0x8000
/* B4BEC 800D97EC 3C0D800E */  lui        $t5, %hi(D_800E1930)
/* B4BF0 800D97F0 AF210000 */  sw         $at, ($t9)
/* B4BF4 800D97F4 8D0B0004 */  lw         $t3, 4($t0)
/* B4BF8 800D97F8 25AD1930 */  addiu      $t5, $t5, %lo(D_800E1930)
/* B4BFC 800D97FC 3C0C8000 */  lui        $t4, 0x8000
/* B4C00 800D9800 AF2B0004 */  sw         $t3, 4($t9)
/* B4C04 800D9804 8D010008 */  lw         $at, 8($t0)
/* B4C08 800D9808 358C0080 */  ori        $t4, $t4, 0x80
/* B4C0C 800D980C 3C09800E */  lui        $t1, %hi(D_800E1930)
/* B4C10 800D9810 AF210008 */  sw         $at, 8($t9)
/* B4C14 800D9814 8D0B000C */  lw         $t3, 0xc($t0)
/* B4C18 800D9818 25291930 */  addiu      $t1, $t1, %lo(D_800E1930)
/* B4C1C 800D981C 3C0A8000 */  lui        $t2, 0x8000
/* B4C20 800D9820 AF2B000C */  sw         $t3, 0xc($t9)
/* B4C24 800D9824 8DA10000 */  lw         $at, ($t5)
/* B4C28 800D9828 354A0100 */  ori        $t2, $t2, 0x100
/* B4C2C 800D982C 3C0E800E */  lui        $t6, %hi(D_800E1930)
/* B4C30 800D9830 AD810000 */  sw         $at, ($t4)
/* B4C34 800D9834 8DB80004 */  lw         $t8, 4($t5)
/* B4C38 800D9838 25CE1930 */  addiu      $t6, $t6, %lo(D_800E1930)
/* B4C3C 800D983C 3C0F8000 */  lui        $t7, 0x8000
/* B4C40 800D9840 AD980004 */  sw         $t8, 4($t4)
/* B4C44 800D9844 8DA10008 */  lw         $at, 8($t5)
/* B4C48 800D9848 35EF0180 */  ori        $t7, $t7, 0x180
/* B4C4C 800D984C 3C048000 */  lui        $a0, 0x8000
/* B4C50 800D9850 AD810008 */  sw         $at, 8($t4)
/* B4C54 800D9854 8DB8000C */  lw         $t8, 0xc($t5)
/* B4C58 800D9858 24050190 */  addiu      $a1, $zero, 0x190
/* B4C5C 800D985C AD98000C */  sw         $t8, 0xc($t4)
/* B4C60 800D9860 8D210000 */  lw         $at, ($t1)
/* B4C64 800D9864 AD410000 */  sw         $at, ($t2)
/* B4C68 800D9868 8D2B0004 */  lw         $t3, 4($t1)
/* B4C6C 800D986C AD4B0004 */  sw         $t3, 4($t2)
/* B4C70 800D9870 8D210008 */  lw         $at, 8($t1)
/* B4C74 800D9874 AD410008 */  sw         $at, 8($t2)
/* B4C78 800D9878 8D2B000C */  lw         $t3, 0xc($t1)
/* B4C7C 800D987C AD4B000C */  sw         $t3, 0xc($t2)
/* B4C80 800D9880 8DC10000 */  lw         $at, ($t6)
/* B4C84 800D9884 ADE10000 */  sw         $at, ($t7)
/* B4C88 800D9888 8DD80004 */  lw         $t8, 4($t6)
/* B4C8C 800D988C ADF80004 */  sw         $t8, 4($t7)
/* B4C90 800D9890 8DC10008 */  lw         $at, 8($t6)
/* B4C94 800D9894 ADE10008 */  sw         $at, 8($t7)
/* B4C98 800D9898 8DD8000C */  lw         $t8, 0xc($t6)
/* B4C9C 800D989C 0C036BF8 */  jal        func_800DAFE0
/* B4CA0 800D98A0 ADF8000C */   sw        $t8, 0xc($t7)
/* B4CA4 800D98A4 3C048000 */  lui        $a0, 0x8000
/* B4CA8 800D98A8 0C0372A4 */  jal        func_800DCA90
/* B4CAC 800D98AC 24050190 */   addiu     $a1, $zero, 0x190
/* B4CB0 800D98B0 0C03888C */  jal        func_800E2230
/* B4CB4 800D98B4 00000000 */   nop
/* B4CB8 800D98B8 24040004 */  addiu      $a0, $zero, 4
/* B4CBC 800D98BC 0C0369D8 */  jal        func_800DA760
/* B4CC0 800D98C0 27A50038 */   addiu     $a1, $sp, 0x38
/* B4CC4 800D98C4 8FA80038 */  lw         $t0, 0x38($sp)
/* B4CC8 800D98C8 2401FFF0 */  addiu      $at, $zero, -0x10
/* B4CCC 800D98CC 0101C824 */  and        $t9, $t0, $at
/* B4CD0 800D98D0 13200006 */  beqz       $t9, .L800D98EC
/* B4CD4 800D98D4 AFB90038 */   sw        $t9, 0x38($sp)
/* B4CD8 800D98D8 3C018011 */  lui        $at, %hi(D_80109010)
/* B4CDC 800D98DC 03205825 */  or         $t3, $t9, $zero
/* B4CE0 800D98E0 240A0000 */  addiu      $t2, $zero, 0
/* B4CE4 800D98E4 AC2A9010 */  sw         $t2, %lo(D_80109010)($at)
/* B4CE8 800D98E8 AC2B9014 */  sw         $t3, -0x6fec($at)
.L800D98EC:
/* B4CEC 800D98EC 3C048011 */  lui        $a0, %hi(D_80109010)
/* B4CF0 800D98F0 3C058011 */  lui        $a1, %hi(D_80109014)
/* B4CF4 800D98F4 8CA59014 */  lw         $a1, %lo(D_80109014)($a1)
/* B4CF8 800D98F8 8C849010 */  lw         $a0, %lo(D_80109010)($a0)
/* B4CFC 800D98FC 24060000 */  addiu      $a2, $zero, 0
/* B4D00 800D9900 0C03818A */  jal        func_800E0628
/* B4D04 800D9904 24070003 */   addiu     $a3, $zero, 3
/* B4D08 800D9908 AFA20020 */  sw         $v0, 0x20($sp)
/* B4D0C 800D990C AFA30024 */  sw         $v1, 0x24($sp)
/* B4D10 800D9910 8FA50024 */  lw         $a1, 0x24($sp)
/* B4D14 800D9914 8FA40020 */  lw         $a0, 0x20($sp)
/* B4D18 800D9918 24060000 */  addiu      $a2, $zero, 0
/* B4D1C 800D991C 0C03814A */  jal        func_800E0528
/* B4D20 800D9920 24070004 */   addiu     $a3, $zero, 4
/* B4D24 800D9924 3C098000 */  lui        $t1, %hi(D_8000030C)
/* B4D28 800D9928 8D29030C */  lw         $t1, %lo(D_8000030C)($t1)
/* B4D2C 800D992C 3C018011 */  lui        $at, %hi(D_80109010)
/* B4D30 800D9930 AC229010 */  sw         $v0, %lo(D_80109010)($at)
/* B4D34 800D9934 15200005 */  bnez       $t1, .L800D994C
/* B4D38 800D9938 AC239014 */   sw        $v1, -0x6fec($at)
/* B4D3C 800D993C 3C048000 */  lui        $a0, %hi(D_8000031C)
/* B4D40 800D9940 2484031C */  addiu      $a0, $a0, %lo(D_8000031C)
/* B4D44 800D9944 0C038108 */  jal        func_800E0420
/* B4D48 800D9948 24050040 */   addiu     $a1, $zero, 0x40
.L800D994C:
/* B4D4C 800D994C 3C0DA460 */  lui        $t5, %hi(D_A4600010)
/* B4D50 800D9950 8DAC0010 */  lw         $t4, %lo(D_A4600010)($t5)
/* B4D54 800D9954 318F0003 */  andi       $t7, $t4, 3
/* B4D58 800D9958 11E00008 */  beqz       $t7, .L800D997C
/* B4D5C 800D995C AFAC0030 */   sw        $t4, 0x30($sp)
.L800D9960:
/* B4D60 800D9960 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* B4D64 800D9964 8DD80010 */  lw         $t8, %lo(D_A4600010)($t6)
/* B4D68 800D9968 AFB80030 */  sw         $t8, 0x30($sp)
/* B4D6C 800D996C 8FA80030 */  lw         $t0, 0x30($sp)
/* B4D70 800D9970 31190003 */  andi       $t9, $t0, 3
/* B4D74 800D9974 1720FFFA */  bnez       $t9, .L800D9960
/* B4D78 800D9978 00000000 */   nop
.L800D997C:
/* B4D7C 800D997C 3C0AA500 */  lui        $t2, %hi(D_A5000508)
/* B4D80 800D9980 8D4B0508 */  lw         $t3, %lo(D_A5000508)($t2)
/* B4D84 800D9984 3169FFFF */  andi       $t1, $t3, 0xffff
/* B4D88 800D9988 1520000A */  bnez       $t1, .L800D99B4
/* B4D8C 800D998C AFAB0034 */   sw        $t3, 0x34($sp)
/* B4D90 800D9990 240D0001 */  addiu      $t5, $zero, 1
/* B4D94 800D9994 3C018011 */  lui        $at, %hi(D_80109020)
/* B4D98 800D9998 3C05800E */  lui        $a1, %hi(D_800E2320)
/* B4D9C 800D999C AC2D9020 */  sw         $t5, %lo(D_80109020)($at)
/* B4DA0 800D99A0 24A52320 */  addiu      $a1, $a1, %lo(D_800E2320)
/* B4DA4 800D99A4 0C0388B4 */  jal        func_800E22D0
/* B4DA8 800D99A8 24040001 */   addiu     $a0, $zero, 1
/* B4DAC 800D99AC 10000003 */  b          .L800D99BC
/* B4DB0 800D99B0 00000000 */   nop
.L800D99B4:
/* B4DB4 800D99B4 3C018011 */  lui        $at, %hi(D_80109020)
/* B4DB8 800D99B8 AC209020 */  sw         $zero, %lo(D_80109020)($at)
.L800D99BC:
/* B4DBC 800D99BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* B4DC0 800D99C0 8FB00018 */  lw         $s0, 0x18($sp)
/* B4DC4 800D99C4 27BD0040 */  addiu      $sp, $sp, 0x40
/* B4DC8 800D99C8 03E00008 */  jr         $ra
/* B4DCC 800D99CC 00000000 */   nop

glabel func_800D99D0
/* B4DD0 800D99D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B4DD4 800D99D4 AFA40028 */  sw         $a0, 0x28($sp)
/* B4DD8 800D99D8 AFA5002C */  sw         $a1, 0x2c($sp)
/* B4DDC 800D99DC 8FAE002C */  lw         $t6, 0x2c($sp)
/* B4DE0 800D99E0 8FAF0028 */  lw         $t7, 0x28($sp)
/* B4DE4 800D99E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B4DE8 800D99E8 AFA60030 */  sw         $a2, 0x30($sp)
/* B4DEC 800D99EC AFA70034 */  sw         $a3, 0x34($sp)
/* B4DF0 800D99F0 AFB00018 */  sw         $s0, 0x18($sp)
/* B4DF4 800D99F4 ADEE0014 */  sw         $t6, 0x14($t7)
/* B4DF8 800D99F8 8FB90028 */  lw         $t9, 0x28($sp)
/* B4DFC 800D99FC 8FB8003C */  lw         $t8, 0x3c($sp)
/* B4E00 800D9A00 AF380004 */  sw         $t8, 4($t9)
/* B4E04 800D9A04 8FA80028 */  lw         $t0, 0x28($sp)
/* B4E08 800D9A08 AD000000 */  sw         $zero, ($t0)
/* B4E0C 800D9A0C 8FA90028 */  lw         $t1, 0x28($sp)
/* B4E10 800D9A10 AD200008 */  sw         $zero, 8($t1)
/* B4E14 800D9A14 8FAB0028 */  lw         $t3, 0x28($sp)
/* B4E18 800D9A18 8FAA0030 */  lw         $t2, 0x30($sp)
/* B4E1C 800D9A1C AD6A011C */  sw         $t2, 0x11c($t3)
/* B4E20 800D9A20 8FAC0034 */  lw         $t4, 0x34($sp)
/* B4E24 800D9A24 8FAD0028 */  lw         $t5, 0x28($sp)
/* B4E28 800D9A28 01807825 */  or         $t7, $t4, $zero
/* B4E2C 800D9A2C 000C77C3 */  sra        $t6, $t4, 0x1f
/* B4E30 800D9A30 ADAE0038 */  sw         $t6, 0x38($t5)
/* B4E34 800D9A34 ADAF003C */  sw         $t7, 0x3c($t5)
/* B4E38 800D9A38 8FB80038 */  lw         $t8, 0x38($sp)
/* B4E3C 800D9A3C 8FB90028 */  lw         $t9, 0x28($sp)
/* B4E40 800D9A40 3C0C800E */  lui        $t4, 0x800e
/* B4E44 800D9A44 03004825 */  or         $t1, $t8, $zero
/* B4E48 800D9A48 2D210010 */  sltiu      $at, $t1, 0x10
/* B4E4C 800D9A4C 001847C3 */  sra        $t0, $t8, 0x1f
/* B4E50 800D9A50 01015023 */  subu       $t2, $t0, $at
/* B4E54 800D9A54 252BFFF0 */  addiu      $t3, $t1, -0x10
/* B4E58 800D9A58 AF2B00F4 */  sw         $t3, 0xf4($t9)
/* B4E5C 800D9A5C AF2A00F0 */  sw         $t2, 0xf0($t9)
/* B4E60 800D9A60 8FAD0028 */  lw         $t5, 0x28($sp)
/* B4E64 800D9A64 258C2220 */  addiu      $t4, $t4, 0x2220
/* B4E68 800D9A68 01807825 */  or         $t7, $t4, $zero
/* B4E6C 800D9A6C 000C77C3 */  sra        $t6, $t4, 0x1f
/* B4E70 800D9A70 ADAE0100 */  sw         $t6, 0x100($t5)
/* B4E74 800D9A74 ADAF0104 */  sw         $t7, 0x104($t5)
/* B4E78 800D9A78 8FA90028 */  lw         $t1, 0x28($sp)
/* B4E7C 800D9A7C 3C18003F */  lui        $t8, 0x3f
/* B4E80 800D9A80 3718FF01 */  ori        $t8, $t8, 0xff01
/* B4E84 800D9A84 AFB80020 */  sw         $t8, 0x20($sp)
/* B4E88 800D9A88 3408FF03 */  ori        $t0, $zero, 0xff03
/* B4E8C 800D9A8C AD280118 */  sw         $t0, 0x118($t1)
/* B4E90 800D9A90 8FAA0020 */  lw         $t2, 0x20($sp)
/* B4E94 800D9A94 8FAC0028 */  lw         $t4, 0x28($sp)
/* B4E98 800D9A98 3C01003F */  lui        $at, 0x3f
/* B4E9C 800D9A9C 01415824 */  and        $t3, $t2, $at
/* B4EA0 800D9AA0 000BCC02 */  srl        $t9, $t3, 0x10
/* B4EA4 800D9AA4 AD990128 */  sw         $t9, 0x128($t4)
/* B4EA8 800D9AA8 8FAF0028 */  lw         $t7, 0x28($sp)
/* B4EAC 800D9AAC 3C0E0100 */  lui        $t6, 0x100
/* B4EB0 800D9AB0 35CE0800 */  ori        $t6, $t6, 0x800
/* B4EB4 800D9AB4 ADEE012C */  sw         $t6, 0x12c($t7)
/* B4EB8 800D9AB8 8FAD0028 */  lw         $t5, 0x28($sp)
/* B4EBC 800D9ABC 24180001 */  addiu      $t8, $zero, 1
/* B4EC0 800D9AC0 ADA00018 */  sw         $zero, 0x18($t5)
/* B4EC4 800D9AC4 8FA80028 */  lw         $t0, 0x28($sp)
/* B4EC8 800D9AC8 A5180010 */  sh         $t8, 0x10($t0)
/* B4ECC 800D9ACC 8FA90028 */  lw         $t1, 0x28($sp)
/* B4ED0 800D9AD0 0C038AF8 */  jal        func_800E2BE0
/* B4ED4 800D9AD4 A5200012 */   sh        $zero, 0x12($t1)
/* B4ED8 800D9AD8 3C0A8011 */  lui        $t2, %hi(D_80109E0C)
/* B4EDC 800D9ADC 8D4A9E0C */  lw         $t2, %lo(D_80109E0C)($t2)
/* B4EE0 800D9AE0 8FAB0028 */  lw         $t3, 0x28($sp)
/* B4EE4 800D9AE4 00408025 */  or         $s0, $v0, $zero
/* B4EE8 800D9AE8 3C018011 */  lui        $at, %hi(D_80109E0C)
/* B4EEC 800D9AEC AD6A000C */  sw         $t2, 0xc($t3)
/* B4EF0 800D9AF0 8FB90028 */  lw         $t9, 0x28($sp)
/* B4EF4 800D9AF4 02002025 */  or         $a0, $s0, $zero
/* B4EF8 800D9AF8 0C038B00 */  jal        func_800E2C00
/* B4EFC 800D9AFC AC399E0C */   sw        $t9, %lo(D_80109E0C)($at)
/* B4F00 800D9B00 8FBF001C */  lw         $ra, 0x1c($sp)
/* B4F04 800D9B04 8FB00018 */  lw         $s0, 0x18($sp)
/* B4F08 800D9B08 27BD0028 */  addiu      $sp, $sp, 0x28
/* B4F0C 800D9B0C 03E00008 */  jr         $ra
/* B4F10 800D9B10 00000000 */   nop
/* B4F14 800D9B14 00000000 */  nop
/* B4F18 800D9B18 00000000 */  nop
/* B4F1C 800D9B1C 00000000 */  nop
