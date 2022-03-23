.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D85A0
/* B39A0 800D85A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B39A4 800D85A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B39A8 800D85A8 AFA40020 */  sw         $a0, 0x20($sp)
/* B39AC 800D85AC AFA50024 */  sw         $a1, 0x24($sp)
/* B39B0 800D85B0 3C188017 */  lui        $t8, %hi(D_801749A0)
/* B39B4 800D85B4 8F1849A0 */  lw         $t8, %lo(D_801749A0)($t8)
/* B39B8 800D85B8 8C8F0000 */  lw         $t7, ($a0)
/* B39BC 800D85BC 00807025 */  or         $t6, $a0, $zero
/* B39C0 800D85C0 25C50018 */  addiu      $a1, $t6, 0x18
/* B39C4 800D85C4 01F8C821 */  addu       $t9, $t7, $t8
/* B39C8 800D85C8 0326001A */  div        $zero, $t9, $a2
/* B39CC 800D85CC 00004010 */  mfhi       $t0
/* B39D0 800D85D0 25C70020 */  addiu      $a3, $t6, 0x20
/* B39D4 800D85D4 14C00002 */  bnez       $a2, .L800D85E0
/* B39D8 800D85D8 00000000 */   nop
/* B39DC 800D85DC 0007000D */  break      7
.L800D85E0:
/* B39E0 800D85E0 2401FFFF */   addiu     $at, $zero, -1
/* B39E4 800D85E4 14C10004 */  bne        $a2, $at, .L800D85F8
/* B39E8 800D85E8 3C018000 */   lui       $at, 0x8000
/* B39EC 800D85EC 17210002 */  bne        $t9, $at, .L800D85F8
/* B39F0 800D85F0 00000000 */   nop
/* B39F4 800D85F4 0006000D */  break      6
.L800D85F8:
/* B39F8 800D85F8 25C6001C */   addiu     $a2, $t6, 0x1c
/* B39FC 800D85FC 15000006 */  bnez       $t0, .L800D8618
/* B3A00 800D8600 8FA40024 */   lw        $a0, 0x24($sp)
/* B3A04 800D8604 AFA00010 */  sw         $zero, 0x10($sp)
/* B3A08 800D8608 0C021FB4 */  jal        func_80087ED0
/* B3A0C 800D860C AFA00014 */   sw        $zero, 0x14($sp)
/* B3A10 800D8610 0C0221A6 */  jal        func_80088698
/* B3A14 800D8614 00402025 */   or        $a0, $v0, $zero
.L800D8618:
/* B3A18 800D8618 8FBF001C */  lw         $ra, 0x1c($sp)
/* B3A1C 800D861C 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3A20 800D8620 03E00008 */  jr         $ra
/* B3A24 800D8624 00000000 */   nop

glabel func_800D8628
/* B3A28 800D8628 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3A2C 800D862C AFBF001C */  sw         $ra, 0x1c($sp)
/* B3A30 800D8630 AFA50024 */  sw         $a1, 0x24($sp)
/* B3A34 800D8634 3C0F8017 */  lui        $t7, %hi(D_801749A0)
/* B3A38 800D8638 8DEF49A0 */  lw         $t7, %lo(D_801749A0)($t7)
/* B3A3C 800D863C 8C8E0000 */  lw         $t6, ($a0)
/* B3A40 800D8640 8FA40024 */  lw         $a0, 0x24($sp)
/* B3A44 800D8644 00002825 */  or         $a1, $zero, $zero
/* B3A48 800D8648 01CFC021 */  addu       $t8, $t6, $t7
/* B3A4C 800D864C 0306001A */  div        $zero, $t8, $a2
/* B3A50 800D8650 0000C810 */  mfhi       $t9
/* B3A54 800D8654 00003825 */  or         $a3, $zero, $zero
/* B3A58 800D8658 14C00002 */  bnez       $a2, .L800D8664
/* B3A5C 800D865C 00000000 */   nop
/* B3A60 800D8660 0007000D */  break      7
.L800D8664:
/* B3A64 800D8664 2401FFFF */   addiu     $at, $zero, -1
/* B3A68 800D8668 14C10004 */  bne        $a2, $at, .L800D867C
/* B3A6C 800D866C 3C018000 */   lui       $at, 0x8000
/* B3A70 800D8670 17010002 */  bne        $t8, $at, .L800D867C
/* B3A74 800D8674 00000000 */   nop
/* B3A78 800D8678 0006000D */  break      6
.L800D867C:
/* B3A7C 800D867C 00003025 */   or        $a2, $zero, $zero
/* B3A80 800D8680 17200004 */  bnez       $t9, .L800D8694
/* B3A84 800D8684 24080010 */   addiu     $t0, $zero, 0x10
/* B3A88 800D8688 AFA00010 */  sw         $zero, 0x10($sp)
/* B3A8C 800D868C 0C021FB4 */  jal        func_80087ED0
/* B3A90 800D8690 AFA80014 */   sw        $t0, 0x14($sp)
.L800D8694:
/* B3A94 800D8694 8FBF001C */  lw         $ra, 0x1c($sp)
/* B3A98 800D8698 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3A9C 800D869C 03E00008 */  jr         $ra
/* B3AA0 800D86A0 00000000 */   nop

glabel func_800D86A4
/* B3AA4 800D86A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B3AA8 800D86A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B3AAC 800D86AC AFB00020 */  sw         $s0, 0x20($sp)
/* B3AB0 800D86B0 AFA5002C */  sw         $a1, 0x2c($sp)
/* B3AB4 800D86B4 AFA60030 */  sw         $a2, 0x30($sp)
/* B3AB8 800D86B8 8C8E00B4 */  lw         $t6, 0xb4($a0)
/* B3ABC 800D86BC 00808025 */  or         $s0, $a0, $zero
/* B3AC0 800D86C0 55C00014 */  bnel       $t6, $zero, .L800D8714
/* B3AC4 800D86C4 8E1900BC */   lw        $t9, 0xbc($s0)
/* B3AC8 800D86C8 8E0F00BC */  lw         $t7, 0xbc($s0)
/* B3ACC 800D86CC 24010001 */  addiu      $at, $zero, 1
/* B3AD0 800D86D0 55E10010 */  bnel       $t7, $at, .L800D8714
/* B3AD4 800D86D4 8E1900BC */   lw        $t9, 0xbc($s0)
/* B3AD8 800D86D8 8E1800C0 */  lw         $t8, 0xc0($s0)
/* B3ADC 800D86DC 5700000D */  bnel       $t8, $zero, .L800D8714
/* B3AE0 800D86E0 8E1900BC */   lw        $t9, 0xbc($s0)
/* B3AE4 800D86E4 00A02025 */  or         $a0, $a1, $zero
/* B3AE8 800D86E8 26050018 */  addiu      $a1, $s0, 0x18
/* B3AEC 800D86EC 2606001C */  addiu      $a2, $s0, 0x1c
/* B3AF0 800D86F0 26070020 */  addiu      $a3, $s0, 0x20
/* B3AF4 800D86F4 AFA00010 */  sw         $zero, 0x10($sp)
/* B3AF8 800D86F8 0C021FB4 */  jal        func_80087ED0
/* B3AFC 800D86FC AFA00014 */   sw        $zero, 0x14($sp)
/* B3B00 800D8700 0C0221A6 */  jal        func_80088698
/* B3B04 800D8704 00402025 */   or        $a0, $v0, $zero
/* B3B08 800D8708 10000022 */  b          .L800D8794
/* B3B0C 800D870C 8FBF0024 */   lw        $ra, 0x24($sp)
/* B3B10 800D8710 8E1900BC */  lw         $t9, 0xbc($s0)
.L800D8714:
/* B3B14 800D8714 24010001 */  addiu      $at, $zero, 1
/* B3B18 800D8718 3C098017 */  lui        $t1, %hi(D_801749A0)
/* B3B1C 800D871C 5721001D */  bnel       $t9, $at, .L800D8794
/* B3B20 800D8720 8FBF0024 */   lw        $ra, 0x24($sp)
/* B3B24 800D8724 8E080000 */  lw         $t0, ($s0)
/* B3B28 800D8728 8D2949A0 */  lw         $t1, %lo(D_801749A0)($t1)
/* B3B2C 800D872C 8FAC0030 */  lw         $t4, 0x30($sp)
/* B3B30 800D8730 01095021 */  addu       $t2, $t0, $t1
/* B3B34 800D8734 0147001A */  div        $zero, $t2, $a3
/* B3B38 800D8738 00005810 */  mfhi       $t3
/* B3B3C 800D873C 14E00002 */  bnez       $a3, .L800D8748
/* B3B40 800D8740 00000000 */   nop
/* B3B44 800D8744 0007000D */  break      7
.L800D8748:
/* B3B48 800D8748 2401FFFF */   addiu     $at, $zero, -1
/* B3B4C 800D874C 14E10004 */  bne        $a3, $at, .L800D8760
/* B3B50 800D8750 3C018000 */   lui       $at, 0x8000
/* B3B54 800D8754 15410002 */  bne        $t2, $at, .L800D8760
/* B3B58 800D8758 00000000 */   nop
/* B3B5C 800D875C 0006000D */  break      6
.L800D8760:
/* B3B60 800D8760 5560000C */   bnel      $t3, $zero, .L800D8794
/* B3B64 800D8764 8FBF0024 */   lw        $ra, 0x24($sp)
/* B3B68 800D8768 05800009 */  bltz       $t4, .L800D8790
/* B3B6C 800D876C 01802025 */   or        $a0, $t4, $zero
/* B3B70 800D8770 26050018 */  addiu      $a1, $s0, 0x18
/* B3B74 800D8774 2606001C */  addiu      $a2, $s0, 0x1c
/* B3B78 800D8778 26070020 */  addiu      $a3, $s0, 0x20
/* B3B7C 800D877C AFA00010 */  sw         $zero, 0x10($sp)
/* B3B80 800D8780 0C021FB4 */  jal        func_80087ED0
/* B3B84 800D8784 AFA00014 */   sw        $zero, 0x14($sp)
/* B3B88 800D8788 0C0221A6 */  jal        func_80088698
/* B3B8C 800D878C 00402025 */   or        $a0, $v0, $zero
.L800D8790:
/* B3B90 800D8790 8FBF0024 */  lw         $ra, 0x24($sp)
.L800D8794:
/* B3B94 800D8794 8FB00020 */  lw         $s0, 0x20($sp)
/* B3B98 800D8798 27BD0028 */  addiu      $sp, $sp, 0x28
/* B3B9C 800D879C 03E00008 */  jr         $ra
/* B3BA0 800D87A0 00000000 */   nop

glabel func_800D87A4
/* B3BA4 800D87A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3BA8 800D87A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B3BAC 800D87AC AFA40020 */  sw         $a0, 0x20($sp)
/* B3BB0 800D87B0 AFA50024 */  sw         $a1, 0x24($sp)
/* B3BB4 800D87B4 8C8F00B8 */  lw         $t7, 0xb8($a0)
/* B3BB8 800D87B8 00807025 */  or         $t6, $a0, $zero
/* B3BBC 800D87BC 24010001 */  addiu      $at, $zero, 1
/* B3BC0 800D87C0 15E10009 */  bne        $t7, $at, .L800D87E8
/* B3BC4 800D87C4 00A02025 */   or        $a0, $a1, $zero
/* B3BC8 800D87C8 25C50018 */  addiu      $a1, $t6, 0x18
/* B3BCC 800D87CC 25C6001C */  addiu      $a2, $t6, 0x1c
/* B3BD0 800D87D0 25C70020 */  addiu      $a3, $t6, 0x20
/* B3BD4 800D87D4 AFA00010 */  sw         $zero, 0x10($sp)
/* B3BD8 800D87D8 0C021FB4 */  jal        func_80087ED0
/* B3BDC 800D87DC AFA00014 */   sw        $zero, 0x14($sp)
/* B3BE0 800D87E0 0C0221A6 */  jal        func_80088698
/* B3BE4 800D87E4 00402025 */   or        $a0, $v0, $zero
.L800D87E8:
/* B3BE8 800D87E8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B3BEC 800D87EC 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3BF0 800D87F0 03E00008 */  jr         $ra
/* B3BF4 800D87F4 00000000 */   nop

glabel func_800D87F8
/* B3BF8 800D87F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3BFC 800D87FC AFBF001C */  sw         $ra, 0x1c($sp)
/* B3C00 800D8800 AFA50024 */  sw         $a1, 0x24($sp)
/* B3C04 800D8804 8C8200BC */  lw         $v0, 0xbc($a0)
/* B3C08 800D8808 3C0E8017 */  lui        $t6, %hi(D_801749A0)
/* B3C0C 800D880C 04420018 */  bltzl      $v0, .L800D8870
/* B3C10 800D8810 8FBF001C */   lw        $ra, 0x1c($sp)
/* B3C14 800D8814 8DCE49A0 */  lw         $t6, %lo(D_801749A0)($t6)
/* B3C18 800D8818 8FA40024 */  lw         $a0, 0x24($sp)
/* B3C1C 800D881C 00002825 */  or         $a1, $zero, $zero
/* B3C20 800D8820 01C27823 */  subu       $t7, $t6, $v0
/* B3C24 800D8824 01E6001A */  div        $zero, $t7, $a2
/* B3C28 800D8828 0000C010 */  mfhi       $t8
/* B3C2C 800D882C 00003825 */  or         $a3, $zero, $zero
/* B3C30 800D8830 14C00002 */  bnez       $a2, .L800D883C
/* B3C34 800D8834 00000000 */   nop
/* B3C38 800D8838 0007000D */  break      7
.L800D883C:
/* B3C3C 800D883C 2401FFFF */   addiu     $at, $zero, -1
/* B3C40 800D8840 14C10004 */  bne        $a2, $at, .L800D8854
/* B3C44 800D8844 3C018000 */   lui       $at, 0x8000
/* B3C48 800D8848 15E10002 */  bne        $t7, $at, .L800D8854
/* B3C4C 800D884C 00000000 */   nop
/* B3C50 800D8850 0006000D */  break      6
.L800D8854:
/* B3C54 800D8854 00003025 */   or        $a2, $zero, $zero
/* B3C58 800D8858 17000004 */  bnez       $t8, .L800D886C
/* B3C5C 800D885C 24190010 */   addiu     $t9, $zero, 0x10
/* B3C60 800D8860 AFA00010 */  sw         $zero, 0x10($sp)
/* B3C64 800D8864 0C021FB4 */  jal        func_80087ED0
/* B3C68 800D8868 AFB90014 */   sw        $t9, 0x14($sp)
.L800D886C:
/* B3C6C 800D886C 8FBF001C */  lw         $ra, 0x1c($sp)
.L800D8870:
/* B3C70 800D8870 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3C74 800D8874 03E00008 */  jr         $ra
/* B3C78 800D8878 00000000 */   nop

glabel func_800D887C
/* B3C7C 800D887C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3C80 800D8880 AFBF001C */  sw         $ra, 0x1c($sp)
/* B3C84 800D8884 AFA40020 */  sw         $a0, 0x20($sp)
/* B3C88 800D8888 AFA50024 */  sw         $a1, 0x24($sp)
/* B3C8C 800D888C 3C0F8017 */  lui        $t7, %hi(D_80168E24)
/* B3C90 800D8890 8DEF8E24 */  lw         $t7, %lo(D_80168E24)($t7)
/* B3C94 800D8894 8C820000 */  lw         $v0, ($a0)
/* B3C98 800D8898 00807025 */  or         $t6, $a0, $zero
/* B3C9C 800D889C 3C188017 */  lui        $t8, %hi(D_801749A0)
/* B3CA0 800D88A0 544F001A */  bnel       $v0, $t7, .L800D890C
/* B3CA4 800D88A4 8FBF001C */   lw        $ra, 0x1c($sp)
/* B3CA8 800D88A8 8F1849A0 */  lw         $t8, %lo(D_801749A0)($t8)
/* B3CAC 800D88AC 8FA40024 */  lw         $a0, 0x24($sp)
/* B3CB0 800D88B0 25C50018 */  addiu      $a1, $t6, 0x18
/* B3CB4 800D88B4 0058C821 */  addu       $t9, $v0, $t8
/* B3CB8 800D88B8 0326001A */  div        $zero, $t9, $a2
/* B3CBC 800D88BC 00004010 */  mfhi       $t0
/* B3CC0 800D88C0 25C70020 */  addiu      $a3, $t6, 0x20
/* B3CC4 800D88C4 14C00002 */  bnez       $a2, .L800D88D0
/* B3CC8 800D88C8 00000000 */   nop
/* B3CCC 800D88CC 0007000D */  break      7
.L800D88D0:
/* B3CD0 800D88D0 2401FFFF */   addiu     $at, $zero, -1
/* B3CD4 800D88D4 14C10004 */  bne        $a2, $at, .L800D88E8
/* B3CD8 800D88D8 3C018000 */   lui       $at, 0x8000
/* B3CDC 800D88DC 17210002 */  bne        $t9, $at, .L800D88E8
/* B3CE0 800D88E0 00000000 */   nop
/* B3CE4 800D88E4 0006000D */  break      6
.L800D88E8:
/* B3CE8 800D88E8 25C6001C */   addiu     $a2, $t6, 0x1c
/* B3CEC 800D88EC 55000007 */  bnel       $t0, $zero, .L800D890C
/* B3CF0 800D88F0 8FBF001C */   lw        $ra, 0x1c($sp)
/* B3CF4 800D88F4 AFA00010 */  sw         $zero, 0x10($sp)
/* B3CF8 800D88F8 0C021FB4 */  jal        func_80087ED0
/* B3CFC 800D88FC AFA00014 */   sw        $zero, 0x14($sp)
/* B3D00 800D8900 0C0221A6 */  jal        func_80088698
/* B3D04 800D8904 00402025 */   or        $a0, $v0, $zero
/* B3D08 800D8908 8FBF001C */  lw         $ra, 0x1c($sp)
.L800D890C:
/* B3D0C 800D890C 27BD0020 */  addiu      $sp, $sp, 0x20
/* B3D10 800D8910 03E00008 */  jr         $ra
/* B3D14 800D8914 00000000 */   nop

glabel func_800D8918
/* B3D18 800D8918 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B3D1C 800D891C AFBF001C */  sw         $ra, 0x1c($sp)
/* B3D20 800D8920 AFA50064 */  sw         $a1, 0x64($sp)
/* B3D24 800D8924 AFA7006C */  sw         $a3, 0x6c($sp)
/* B3D28 800D8928 3C0F8017 */  lui        $t7, %hi(D_801749A0)
/* B3D2C 800D892C 8DEF49A0 */  lw         $t7, %lo(D_801749A0)($t7)
/* B3D30 800D8930 8C8E0000 */  lw         $t6, ($a0)
/* B3D34 800D8934 3C038017 */  lui        $v1, %hi(D_80168DA8)
/* B3D38 800D8938 24638DA8 */  addiu      $v1, $v1, %lo(D_80168DA8)
/* B3D3C 800D893C 01CFC021 */  addu       $t8, $t6, $t7
/* B3D40 800D8940 0306001A */  div        $zero, $t8, $a2
/* B3D44 800D8944 14C00002 */  bnez       $a2, .L800D8950
/* B3D48 800D8948 00000000 */   nop
/* B3D4C 800D894C 0007000D */  break      7
.L800D8950:
/* B3D50 800D8950 2401FFFF */   addiu     $at, $zero, -1
/* B3D54 800D8954 14C10004 */  bne        $a2, $at, .L800D8968
/* B3D58 800D8958 3C018000 */   lui       $at, 0x8000
/* B3D5C 800D895C 17010002 */  bne        $t8, $at, .L800D8968
/* B3D60 800D8960 00000000 */   nop
/* B3D64 800D8964 0006000D */  break      6
.L800D8968:
/* B3D68 800D8968 0000C810 */   mfhi      $t9
/* B3D6C 800D896C C7A6006C */  lwc1       $f6, 0x6c($sp)
/* B3D70 800D8970 17200069 */  bnez       $t9, .L800D8B18
/* B3D74 800D8974 3C018011 */   lui       $at, %hi(D_80110870)
/* B3D78 800D8978 C464000C */  lwc1       $f4, 0xc($v1)
/* B3D7C 800D897C C4680004 */  lwc1       $f8, 4($v1)
/* B3D80 800D8980 C7AA0070 */  lwc1       $f10, 0x70($sp)
/* B3D84 800D8984 46062401 */  sub.s      $f16, $f4, $f6
/* B3D88 800D8988 C4260870 */  lwc1       $f6, %lo(D_80110870)($at)
/* B3D8C 800D898C C7A20074 */  lwc1       $f2, 0x74($sp)
/* B3D90 800D8990 460A4481 */  sub.s      $f18, $f8, $f10
/* B3D94 800D8994 C7A8007C */  lwc1       $f8, 0x7c($sp)
/* B3D98 800D8998 24020001 */  addiu      $v0, $zero, 1
/* B3D9C 800D899C 3C018011 */  lui        $at, 0x8011
/* B3DA0 800D89A0 46128101 */  sub.s      $f4, $f16, $f18
/* B3DA4 800D89A4 46081300 */  add.s      $f12, $f2, $f8
/* B3DA8 800D89A8 46062002 */  mul.s      $f0, $f4, $f6
/* B3DAC 800D89AC 46006287 */  neg.s      $f10, $f12
/* B3DB0 800D89B0 460A003C */  c.lt.s     $f0, $f10
/* B3DB4 800D89B4 00000000 */  nop
/* B3DB8 800D89B8 45020004 */  bc1fl      .L800D89CC
/* B3DBC 800D89BC 46001387 */   neg.s     $f14, $f2
/* B3DC0 800D89C0 10000015 */  b          .L800D8A18
/* B3DC4 800D89C4 00001025 */   or        $v0, $zero, $zero
/* B3DC8 800D89C8 46001387 */  neg.s      $f14, $f2
.L800D89CC:
/* B3DCC 800D89CC 460E003C */  c.lt.s     $f0, $f14
/* B3DD0 800D89D0 00000000 */  nop
/* B3DD4 800D89D4 45020004 */  bc1fl      .L800D89E8
/* B3DD8 800D89D8 4602003C */   c.lt.s    $f0, $f2
/* B3DDC 800D89DC 1000000E */  b          .L800D8A18
/* B3DE0 800D89E0 E7AE0044 */   swc1      $f14, 0x44($sp)
/* B3DE4 800D89E4 4602003C */  c.lt.s     $f0, $f2
.L800D89E8:
/* B3DE8 800D89E8 00000000 */  nop
/* B3DEC 800D89EC 45020004 */  bc1fl      .L800D8A00
/* B3DF0 800D89F0 460C003C */   c.lt.s    $f0, $f12
/* B3DF4 800D89F4 10000008 */  b          .L800D8A18
/* B3DF8 800D89F8 E7A00044 */   swc1      $f0, 0x44($sp)
/* B3DFC 800D89FC 460C003C */  c.lt.s     $f0, $f12
.L800D8A00:
/* B3E00 800D8A00 00000000 */  nop
/* B3E04 800D8A04 45020004 */  bc1fl      .L800D8A18
/* B3E08 800D8A08 00001025 */   or        $v0, $zero, $zero
/* B3E0C 800D8A0C 10000002 */  b          .L800D8A18
/* B3E10 800D8A10 E7A20044 */   swc1      $f2, 0x44($sp)
/* B3E14 800D8A14 00001025 */  or         $v0, $zero, $zero
.L800D8A18:
/* B3E18 800D8A18 46128100 */  add.s      $f4, $f16, $f18
/* B3E1C 800D8A1C C4260874 */  lwc1       $f6, 0x874($at)
/* B3E20 800D8A20 C7A20078 */  lwc1       $f2, 0x78($sp)
/* B3E24 800D8A24 C7A80080 */  lwc1       $f8, 0x80($sp)
/* B3E28 800D8A28 46062002 */  mul.s      $f0, $f4, $f6
/* B3E2C 800D8A2C 3C018011 */  lui        $at, 0x8011
/* B3E30 800D8A30 46081300 */  add.s      $f12, $f2, $f8
/* B3E34 800D8A34 46006287 */  neg.s      $f10, $f12
/* B3E38 800D8A38 460A003C */  c.lt.s     $f0, $f10
/* B3E3C 800D8A3C 00000000 */  nop
/* B3E40 800D8A40 45020005 */  bc1fl      .L800D8A58
/* B3E44 800D8A44 46001387 */   neg.s     $f14, $f2
/* B3E48 800D8A48 00001025 */  or         $v0, $zero, $zero
/* B3E4C 800D8A4C 10000015 */  b          .L800D8AA4
/* B3E50 800D8A50 C7AC0040 */   lwc1      $f12, 0x40($sp)
/* B3E54 800D8A54 46001387 */  neg.s      $f14, $f2
.L800D8A58:
/* B3E58 800D8A58 460E003C */  c.lt.s     $f0, $f14
/* B3E5C 800D8A5C 00000000 */  nop
/* B3E60 800D8A60 45020004 */  bc1fl      .L800D8A74
/* B3E64 800D8A64 4602003C */   c.lt.s    $f0, $f2
/* B3E68 800D8A68 1000000E */  b          .L800D8AA4
/* B3E6C 800D8A6C 46007306 */   mov.s     $f12, $f14
/* B3E70 800D8A70 4602003C */  c.lt.s     $f0, $f2
.L800D8A74:
/* B3E74 800D8A74 00000000 */  nop
/* B3E78 800D8A78 45020004 */  bc1fl      .L800D8A8C
/* B3E7C 800D8A7C 460C003C */   c.lt.s    $f0, $f12
/* B3E80 800D8A80 10000008 */  b          .L800D8AA4
/* B3E84 800D8A84 46000306 */   mov.s     $f12, $f0
/* B3E88 800D8A88 460C003C */  c.lt.s     $f0, $f12
.L800D8A8C:
/* B3E8C 800D8A8C C7AC0040 */  lwc1       $f12, 0x40($sp)
/* B3E90 800D8A90 45020004 */  bc1fl      .L800D8AA4
/* B3E94 800D8A94 00001025 */   or        $v0, $zero, $zero
/* B3E98 800D8A98 10000002 */  b          .L800D8AA4
/* B3E9C 800D8A9C 46001306 */   mov.s     $f12, $f2
/* B3EA0 800D8AA0 00001025 */  or         $v0, $zero, $zero
.L800D8AA4:
/* B3EA4 800D8AA4 5040001D */  beql       $v0, $zero, .L800D8B1C
/* B3EA8 800D8AA8 8FBF001C */   lw        $ra, 0x1c($sp)
/* B3EAC 800D8AAC C7B20044 */  lwc1       $f18, 0x44($sp)
/* B3EB0 800D8AB0 C4300878 */  lwc1       $f16, 0x878($at)
/* B3EB4 800D8AB4 C7AE0070 */  lwc1       $f14, 0x70($sp)
/* B3EB8 800D8AB8 46126281 */  sub.s      $f10, $f12, $f18
/* B3EBC 800D8ABC C7A8006C */  lwc1       $f8, 0x6c($sp)
/* B3EC0 800D8AC0 3C018017 */  lui        $at, %hi(D_80168DB0)
/* B3EC4 800D8AC4 C4268DB0 */  lwc1       $f6, %lo(D_80168DB0)($at)
/* B3EC8 800D8AC8 46105402 */  mul.s      $f16, $f10, $f16
/* B3ECC 800D8ACC 460C9480 */  add.s      $f18, $f18, $f12
/* B3ED0 800D8AD0 3C018011 */  lui        $at, %hi(D_8011087C)
/* B3ED4 800D8AD4 C42A087C */  lwc1       $f10, %lo(D_8011087C)($at)
/* B3ED8 800D8AD8 24080008 */  addiu      $t0, $zero, 8
/* B3EDC 800D8ADC E7A60038 */  swc1       $f6, 0x38($sp)
/* B3EE0 800D8AE0 460A9282 */  mul.s      $f10, $f18, $f10
/* B3EE4 800D8AE4 46107400 */  add.s      $f16, $f14, $f16
/* B3EE8 800D8AE8 8FA40064 */  lw         $a0, 0x64($sp)
/* B3EEC 800D8AEC 27A5003C */  addiu      $a1, $sp, 0x3c
/* B3EF0 800D8AF0 27A60038 */  addiu      $a2, $sp, 0x38
/* B3EF4 800D8AF4 E7B0003C */  swc1       $f16, 0x3c($sp)
/* B3EF8 800D8AF8 27A70034 */  addiu      $a3, $sp, 0x34
/* B3EFC 800D8AFC 460A4280 */  add.s      $f10, $f8, $f10
/* B3F00 800D8B00 AFA80010 */  sw         $t0, 0x10($sp)
/* B3F04 800D8B04 AFA00014 */  sw         $zero, 0x14($sp)
/* B3F08 800D8B08 0C021FB4 */  jal        func_80087ED0
/* B3F0C 800D8B0C E7AA0034 */   swc1      $f10, 0x34($sp)
/* B3F10 800D8B10 0C0221A6 */  jal        func_80088698
/* B3F14 800D8B14 00402025 */   or        $a0, $v0, $zero
.L800D8B18:
/* B3F18 800D8B18 8FBF001C */  lw         $ra, 0x1c($sp)
.L800D8B1C:
/* B3F1C 800D8B1C 27BD0060 */  addiu      $sp, $sp, 0x60
/* B3F20 800D8B20 03E00008 */  jr         $ra
/* B3F24 800D8B24 00000000 */   nop

glabel func_800D8B28
/* B3F28 800D8B28 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* B3F2C 800D8B2C AFBF001C */  sw         $ra, 0x1c($sp)
/* B3F30 800D8B30 AFA5005C */  sw         $a1, 0x5c($sp)
/* B3F34 800D8B34 AFA70064 */  sw         $a3, 0x64($sp)
/* B3F38 800D8B38 3C0F8017 */  lui        $t7, %hi(D_801749A0)
/* B3F3C 800D8B3C 8DEF49A0 */  lw         $t7, %lo(D_801749A0)($t7)
/* B3F40 800D8B40 8C8E0000 */  lw         $t6, ($a0)
/* B3F44 800D8B44 3C038017 */  lui        $v1, %hi(D_80168DA8)
/* B3F48 800D8B48 24638DA8 */  addiu      $v1, $v1, %lo(D_80168DA8)
/* B3F4C 800D8B4C 01CFC021 */  addu       $t8, $t6, $t7
/* B3F50 800D8B50 0306001A */  div        $zero, $t8, $a2
/* B3F54 800D8B54 0000C810 */  mfhi       $t9
/* B3F58 800D8B58 C7A2006C */  lwc1       $f2, 0x6c($sp)
/* B3F5C 800D8B5C 14C00002 */  bnez       $a2, .L800D8B68
/* B3F60 800D8B60 00000000 */   nop
/* B3F64 800D8B64 0007000D */  break      7
.L800D8B68:
/* B3F68 800D8B68 2401FFFF */   addiu     $at, $zero, -1
/* B3F6C 800D8B6C 14C10004 */  bne        $a2, $at, .L800D8B80
/* B3F70 800D8B70 3C018000 */   lui       $at, 0x8000
/* B3F74 800D8B74 17010002 */  bne        $t8, $at, .L800D8B80
/* B3F78 800D8B78 00000000 */   nop
/* B3F7C 800D8B7C 0006000D */  break      6
.L800D8B80:
/* B3F80 800D8B80 C7AA0074 */   lwc1      $f10, 0x74($sp)
/* B3F84 800D8B84 57200057 */  bnel       $t9, $zero, .L800D8CE4
/* B3F88 800D8B88 8FBF001C */   lw        $ra, 0x1c($sp)
/* B3F8C 800D8B8C C7B20068 */  lwc1       $f18, 0x68($sp)
/* B3F90 800D8B90 C4680004 */  lwc1       $f8, 4($v1)
/* B3F94 800D8B94 460A1300 */  add.s      $f12, $f2, $f10
/* B3F98 800D8B98 C464000C */  lwc1       $f4, 0xc($v1)
/* B3F9C 800D8B9C C7A60064 */  lwc1       $f6, 0x64($sp)
/* B3FA0 800D8BA0 46124001 */  sub.s      $f0, $f8, $f18
/* B3FA4 800D8BA4 24020001 */  addiu      $v0, $zero, 1
/* B3FA8 800D8BA8 3C018017 */  lui        $at, 0x8017
/* B3FAC 800D8BAC 46062401 */  sub.s      $f16, $f4, $f6
/* B3FB0 800D8BB0 27A50038 */  addiu      $a1, $sp, 0x38
/* B3FB4 800D8BB4 27A60034 */  addiu      $a2, $sp, 0x34
/* B3FB8 800D8BB8 46006107 */  neg.s      $f4, $f12
/* B3FBC 800D8BBC 27A70030 */  addiu      $a3, $sp, 0x30
/* B3FC0 800D8BC0 4604003C */  c.lt.s     $f0, $f4
/* B3FC4 800D8BC4 00000000 */  nop
/* B3FC8 800D8BC8 45020004 */  bc1fl      .L800D8BDC
/* B3FCC 800D8BCC 46001387 */   neg.s     $f14, $f2
/* B3FD0 800D8BD0 10000015 */  b          .L800D8C28
/* B3FD4 800D8BD4 00001025 */   or        $v0, $zero, $zero
/* B3FD8 800D8BD8 46001387 */  neg.s      $f14, $f2
.L800D8BDC:
/* B3FDC 800D8BDC 460E003C */  c.lt.s     $f0, $f14
/* B3FE0 800D8BE0 00000000 */  nop
/* B3FE4 800D8BE4 45020004 */  bc1fl      .L800D8BF8
/* B3FE8 800D8BE8 4602003C */   c.lt.s    $f0, $f2
/* B3FEC 800D8BEC 1000000E */  b          .L800D8C28
/* B3FF0 800D8BF0 E7AE0040 */   swc1      $f14, 0x40($sp)
/* B3FF4 800D8BF4 4602003C */  c.lt.s     $f0, $f2
.L800D8BF8:
/* B3FF8 800D8BF8 00000000 */  nop
/* B3FFC 800D8BFC 45020004 */  bc1fl      .L800D8C10
/* B4000 800D8C00 460C003C */   c.lt.s    $f0, $f12
/* B4004 800D8C04 10000008 */  b          .L800D8C28
/* B4008 800D8C08 E7A00040 */   swc1      $f0, 0x40($sp)
/* B400C 800D8C0C 460C003C */  c.lt.s     $f0, $f12
.L800D8C10:
/* B4010 800D8C10 00000000 */  nop
/* B4014 800D8C14 45020004 */  bc1fl      .L800D8C28
/* B4018 800D8C18 00001025 */   or        $v0, $zero, $zero
/* B401C 800D8C1C 10000002 */  b          .L800D8C28
/* B4020 800D8C20 E7A20040 */   swc1      $f2, 0x40($sp)
/* B4024 800D8C24 00001025 */  or         $v0, $zero, $zero
.L800D8C28:
/* B4028 800D8C28 C7A00070 */  lwc1       $f0, 0x70($sp)
/* B402C 800D8C2C C7A60078 */  lwc1       $f6, 0x78($sp)
/* B4030 800D8C30 46060080 */  add.s      $f2, $f0, $f6
/* B4034 800D8C34 46001207 */  neg.s      $f8, $f2
/* B4038 800D8C38 4608803C */  c.lt.s     $f16, $f8
/* B403C 800D8C3C 00000000 */  nop
/* B4040 800D8C40 45020004 */  bc1fl      .L800D8C54
/* B4044 800D8C44 46000307 */   neg.s     $f12, $f0
/* B4048 800D8C48 10000015 */  b          .L800D8CA0
/* B404C 800D8C4C 00001025 */   or        $v0, $zero, $zero
/* B4050 800D8C50 46000307 */  neg.s      $f12, $f0
.L800D8C54:
/* B4054 800D8C54 460C803C */  c.lt.s     $f16, $f12
/* B4058 800D8C58 00000000 */  nop
/* B405C 800D8C5C 45020004 */  bc1fl      .L800D8C70
/* B4060 800D8C60 4600803C */   c.lt.s    $f16, $f0
/* B4064 800D8C64 1000000E */  b          .L800D8CA0
/* B4068 800D8C68 E7AC003C */   swc1      $f12, 0x3c($sp)
/* B406C 800D8C6C 4600803C */  c.lt.s     $f16, $f0
.L800D8C70:
/* B4070 800D8C70 00000000 */  nop
/* B4074 800D8C74 45020004 */  bc1fl      .L800D8C88
/* B4078 800D8C78 4602803C */   c.lt.s    $f16, $f2
/* B407C 800D8C7C 10000008 */  b          .L800D8CA0
/* B4080 800D8C80 E7B0003C */   swc1      $f16, 0x3c($sp)
/* B4084 800D8C84 4602803C */  c.lt.s     $f16, $f2
.L800D8C88:
/* B4088 800D8C88 00000000 */  nop
/* B408C 800D8C8C 45020004 */  bc1fl      .L800D8CA0
/* B4090 800D8C90 00001025 */   or        $v0, $zero, $zero
/* B4094 800D8C94 10000002 */  b          .L800D8CA0
/* B4098 800D8C98 E7A0003C */   swc1      $f0, 0x3c($sp)
/* B409C 800D8C9C 00001025 */  or         $v0, $zero, $zero
.L800D8CA0:
/* B40A0 800D8CA0 1040000F */  beqz       $v0, .L800D8CE0
/* B40A4 800D8CA4 C7AA0040 */   lwc1      $f10, 0x40($sp)
/* B40A8 800D8CA8 460A9100 */  add.s      $f4, $f18, $f10
/* B40AC 800D8CAC C7AA003C */  lwc1       $f10, 0x3c($sp)
/* B40B0 800D8CB0 C7A80064 */  lwc1       $f8, 0x64($sp)
/* B40B4 800D8CB4 C4268DB0 */  lwc1       $f6, -0x7250($at)
/* B40B8 800D8CB8 E7A40038 */  swc1       $f4, 0x38($sp)
/* B40BC 800D8CBC 460A4100 */  add.s      $f4, $f8, $f10
/* B40C0 800D8CC0 8FA4005C */  lw         $a0, 0x5c($sp)
/* B40C4 800D8CC4 AFA00010 */  sw         $zero, 0x10($sp)
/* B40C8 800D8CC8 AFA00014 */  sw         $zero, 0x14($sp)
/* B40CC 800D8CCC E7A40030 */  swc1       $f4, 0x30($sp)
/* B40D0 800D8CD0 0C021FB4 */  jal        func_80087ED0
/* B40D4 800D8CD4 E7A60034 */   swc1      $f6, 0x34($sp)
/* B40D8 800D8CD8 0C0221A6 */  jal        func_80088698
/* B40DC 800D8CDC 00402025 */   or        $a0, $v0, $zero
.L800D8CE0:
/* B40E0 800D8CE0 8FBF001C */  lw         $ra, 0x1c($sp)
.L800D8CE4:
/* B40E4 800D8CE4 27BD0058 */  addiu      $sp, $sp, 0x58
/* B40E8 800D8CE8 03E00008 */  jr         $ra
/* B40EC 800D8CEC 00000000 */   nop

glabel func_800D8CF0
/* B40F0 800D8CF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B40F4 800D8CF4 AFB00020 */  sw         $s0, 0x20($sp)
/* B40F8 800D8CF8 00808025 */  or         $s0, $a0, $zero
/* B40FC 800D8CFC AFBF0024 */  sw         $ra, 0x24($sp)
/* B4100 800D8D00 AFA5002C */  sw         $a1, 0x2c($sp)
/* B4104 800D8D04 0C02CD34 */  jal        func_800B34D0
/* B4108 800D8D08 8C8400AC */   lw        $a0, 0xac($a0)
/* B410C 800D8D0C 5040000E */  beql       $v0, $zero, .L800D8D48
/* B4110 800D8D10 8FBF0024 */   lw        $ra, 0x24($sp)
/* B4114 800D8D14 8E0E00B0 */  lw         $t6, 0xb0($s0)
/* B4118 800D8D18 8FA4002C */  lw         $a0, 0x2c($sp)
/* B411C 800D8D1C 26050018 */  addiu      $a1, $s0, 0x18
/* B4120 800D8D20 11C00008 */  beqz       $t6, .L800D8D44
/* B4124 800D8D24 2606001C */   addiu     $a2, $s0, 0x1c
/* B4128 800D8D28 26070020 */  addiu      $a3, $s0, 0x20
/* B412C 800D8D2C AFA00010 */  sw         $zero, 0x10($sp)
/* B4130 800D8D30 0C021FB4 */  jal        func_80087ED0
/* B4134 800D8D34 AFA00014 */   sw        $zero, 0x14($sp)
/* B4138 800D8D38 0C0221A6 */  jal        func_80088698
/* B413C 800D8D3C 00402025 */   or        $a0, $v0, $zero
/* B4140 800D8D40 AE0000B0 */  sw         $zero, 0xb0($s0)
.L800D8D44:
/* B4144 800D8D44 8FBF0024 */  lw         $ra, 0x24($sp)
.L800D8D48:
/* B4148 800D8D48 8FB00020 */  lw         $s0, 0x20($sp)
/* B414C 800D8D4C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B4150 800D8D50 03E00008 */  jr         $ra
/* B4154 800D8D54 00000000 */   nop

glabel func_800D8D58
/* B4158 800D8D58 3C018011 */  lui        $at, %hi(D_80110880)
/* B415C 800D8D5C C4240880 */  lwc1       $f4, %lo(D_80110880)($at)
/* B4160 800D8D60 3C01442F */  lui        $at, 0x442f
/* B4164 800D8D64 44813000 */  mtc1       $at, $f6
/* B4168 800D8D68 3C018011 */  lui        $at, %hi(D_80110884)
/* B416C 800D8D6C C4280884 */  lwc1       $f8, %lo(D_80110884)($at)
/* B4170 800D8D70 3C01447A */  lui        $at, 0x447a
/* B4174 800D8D74 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B4178 800D8D78 44815000 */  mtc1       $at, $f10
/* B417C 800D8D7C 3C0144FA */  lui        $at, 0x44fa
/* B4180 800D8D80 44818000 */  mtc1       $at, $f16
/* B4184 800D8D84 AFBF002C */  sw         $ra, 0x2c($sp)
/* B4188 800D8D88 24050055 */  addiu      $a1, $zero, 0x55
/* B418C 800D8D8C 2406001E */  addiu      $a2, $zero, 0x1e
/* B4190 800D8D90 3C07C648 */  lui        $a3, 0xc648
/* B4194 800D8D94 E7A40010 */  swc1       $f4, 0x10($sp)
/* B4198 800D8D98 E7A60014 */  swc1       $f6, 0x14($sp)
/* B419C 800D8D9C E7A80018 */  swc1       $f8, 0x18($sp)
/* B41A0 800D8DA0 E7AA001C */  swc1       $f10, 0x1c($sp)
/* B41A4 800D8DA4 0C036246 */  jal        func_800D8918
/* B41A8 800D8DA8 E7B00020 */   swc1      $f16, 0x20($sp)
/* B41AC 800D8DAC 8FBF002C */  lw         $ra, 0x2c($sp)
/* B41B0 800D8DB0 27BD0030 */  addiu      $sp, $sp, 0x30
/* B41B4 800D8DB4 03E00008 */  jr         $ra
/* B41B8 800D8DB8 00000000 */   nop

glabel func_800D8DBC
/* B41BC 800D8DBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B41C0 800D8DC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B41C4 800D8DC4 24050059 */  addiu      $a1, $zero, 0x59
/* B41C8 800D8DC8 0C03618A */  jal        func_800D8628
/* B41CC 800D8DCC 2406002D */   addiu     $a2, $zero, 0x2d
/* B41D0 800D8DD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B41D4 800D8DD4 27BD0018 */  addiu      $sp, $sp, 0x18
/* B41D8 800D8DD8 03E00008 */  jr         $ra
/* B41DC 800D8DDC 00000000 */   nop

glabel func_800D8DE0
/* B41E0 800D8DE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B41E4 800D8DE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B41E8 800D8DE8 2405005B */  addiu      $a1, $zero, 0x5b
/* B41EC 800D8DEC 0C03618A */  jal        func_800D8628
/* B41F0 800D8DF0 24060069 */   addiu     $a2, $zero, 0x69
/* B41F4 800D8DF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B41F8 800D8DF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* B41FC 800D8DFC 03E00008 */  jr         $ra
/* B4200 800D8E00 00000000 */   nop

glabel func_800D8E04
/* B4204 800D8E04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4208 800D8E08 AFBF0014 */  sw         $ra, 0x14($sp)
/* B420C 800D8E0C 2405005B */  addiu      $a1, $zero, 0x5b
/* B4210 800D8E10 0C036168 */  jal        func_800D85A0
/* B4214 800D8E14 24060078 */   addiu     $a2, $zero, 0x78
/* B4218 800D8E18 8FBF0014 */  lw         $ra, 0x14($sp)
/* B421C 800D8E1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4220 800D8E20 03E00008 */  jr         $ra
/* B4224 800D8E24 00000000 */   nop

glabel func_800D8E28
/* B4228 800D8E28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B422C 800D8E2C AFBF0014 */  sw         $ra, 0x14($sp)
/* B4230 800D8E30 2405005C */  addiu      $a1, $zero, 0x5c
/* B4234 800D8E34 0C03618A */  jal        func_800D8628
/* B4238 800D8E38 2406001B */   addiu     $a2, $zero, 0x1b
/* B423C 800D8E3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4240 800D8E40 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4244 800D8E44 03E00008 */  jr         $ra
/* B4248 800D8E48 00000000 */   nop

glabel func_800D8E4C
/* B424C 800D8E4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4250 800D8E50 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4254 800D8E54 24050089 */  addiu      $a1, $zero, 0x89
/* B4258 800D8E58 0C03618A */  jal        func_800D8628
/* B425C 800D8E5C 2406001E */   addiu     $a2, $zero, 0x1e
/* B4260 800D8E60 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4264 800D8E64 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4268 800D8E68 03E00008 */  jr         $ra
/* B426C 800D8E6C 00000000 */   nop

glabel func_800D8E70
/* B4270 800D8E70 3C018011 */  lui        $at, %hi(D_80110888)
/* B4274 800D8E74 C4200888 */  lwc1       $f0, %lo(D_80110888)($at)
/* B4278 800D8E78 3C014416 */  lui        $at, 0x4416
/* B427C 800D8E7C 44812000 */  mtc1       $at, $f4
/* B4280 800D8E80 3C018011 */  lui        $at, %hi(D_8011088C)
/* B4284 800D8E84 C426088C */  lwc1       $f6, %lo(D_8011088C)($at)
/* B4288 800D8E88 3C0143FA */  lui        $at, 0x43fa
/* B428C 800D8E8C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B4290 800D8E90 44814000 */  mtc1       $at, $f8
/* B4294 800D8E94 3C0144FA */  lui        $at, 0x44fa
/* B4298 800D8E98 44815000 */  mtc1       $at, $f10
/* B429C 800D8E9C AFBF002C */  sw         $ra, 0x2c($sp)
/* B42A0 800D8EA0 44070000 */  mfc1       $a3, $f0
/* B42A4 800D8EA4 24050089 */  addiu      $a1, $zero, 0x89
/* B42A8 800D8EA8 2406001E */  addiu      $a2, $zero, 0x1e
/* B42AC 800D8EAC E7A00010 */  swc1       $f0, 0x10($sp)
/* B42B0 800D8EB0 E7A40014 */  swc1       $f4, 0x14($sp)
/* B42B4 800D8EB4 E7A60018 */  swc1       $f6, 0x18($sp)
/* B42B8 800D8EB8 E7A8001C */  swc1       $f8, 0x1c($sp)
/* B42BC 800D8EBC 0C036246 */  jal        func_800D8918
/* B42C0 800D8EC0 E7AA0020 */   swc1      $f10, 0x20($sp)
/* B42C4 800D8EC4 8FBF002C */  lw         $ra, 0x2c($sp)
/* B42C8 800D8EC8 27BD0030 */  addiu      $sp, $sp, 0x30
/* B42CC 800D8ECC 03E00008 */  jr         $ra
/* B42D0 800D8ED0 00000000 */   nop

glabel func_800D8ED4
/* B42D4 800D8ED4 3C0144AF */  lui        $at, 0x44af
/* B42D8 800D8ED8 44812000 */  mtc1       $at, $f4
/* B42DC 800D8EDC 3C01442F */  lui        $at, 0x442f
/* B42E0 800D8EE0 44813000 */  mtc1       $at, $f6
/* B42E4 800D8EE4 3C01447A */  lui        $at, 0x447a
/* B42E8 800D8EE8 44814000 */  mtc1       $at, $f8
/* B42EC 800D8EEC 3C0143FA */  lui        $at, 0x43fa
/* B42F0 800D8EF0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B42F4 800D8EF4 44815000 */  mtc1       $at, $f10
/* B42F8 800D8EF8 3C0144FA */  lui        $at, 0x44fa
/* B42FC 800D8EFC 44818000 */  mtc1       $at, $f16
/* B4300 800D8F00 AFBF002C */  sw         $ra, 0x2c($sp)
/* B4304 800D8F04 3C074509 */  lui        $a3, 0x4509
/* B4308 800D8F08 34E78000 */  ori        $a3, $a3, 0x8000
/* B430C 800D8F0C 24050089 */  addiu      $a1, $zero, 0x89
/* B4310 800D8F10 2406001E */  addiu      $a2, $zero, 0x1e
/* B4314 800D8F14 E7A40010 */  swc1       $f4, 0x10($sp)
/* B4318 800D8F18 E7A60014 */  swc1       $f6, 0x14($sp)
/* B431C 800D8F1C E7A80018 */  swc1       $f8, 0x18($sp)
/* B4320 800D8F20 E7AA001C */  swc1       $f10, 0x1c($sp)
/* B4324 800D8F24 0C036246 */  jal        func_800D8918
/* B4328 800D8F28 E7B00020 */   swc1      $f16, 0x20($sp)
/* B432C 800D8F2C 8FBF002C */  lw         $ra, 0x2c($sp)
/* B4330 800D8F30 27BD0030 */  addiu      $sp, $sp, 0x30
/* B4334 800D8F34 03E00008 */  jr         $ra
/* B4338 800D8F38 00000000 */   nop

glabel func_800D8F3C
/* B433C 800D8F3C 3C01447A */  lui        $at, 0x447a
/* B4340 800D8F40 44810000 */  mtc1       $at, $f0
/* B4344 800D8F44 3C018011 */  lui        $at, %hi(D_80110890)
/* B4348 800D8F48 C4240890 */  lwc1       $f4, %lo(D_80110890)($at)
/* B434C 800D8F4C 3C014416 */  lui        $at, 0x4416
/* B4350 800D8F50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B4354 800D8F54 44813000 */  mtc1       $at, $f6
/* B4358 800D8F58 3C018011 */  lui        $at, %hi(D_80110894)
/* B435C 800D8F5C C4280894 */  lwc1       $f8, %lo(D_80110894)($at)
/* B4360 800D8F60 AFBF002C */  sw         $ra, 0x2c($sp)
/* B4364 800D8F64 3C07C604 */  lui        $a3, 0xc604
/* B4368 800D8F68 34E7D000 */  ori        $a3, $a3, 0xd000
/* B436C 800D8F6C 24050089 */  addiu      $a1, $zero, 0x89
/* B4370 800D8F70 2406001E */  addiu      $a2, $zero, 0x1e
/* B4374 800D8F74 E7A0001C */  swc1       $f0, 0x1c($sp)
/* B4378 800D8F78 E7A00020 */  swc1       $f0, 0x20($sp)
/* B437C 800D8F7C E7A40010 */  swc1       $f4, 0x10($sp)
/* B4380 800D8F80 E7A60014 */  swc1       $f6, 0x14($sp)
/* B4384 800D8F84 0C036246 */  jal        func_800D8918
/* B4388 800D8F88 E7A80018 */   swc1      $f8, 0x18($sp)
/* B438C 800D8F8C 8FBF002C */  lw         $ra, 0x2c($sp)
/* B4390 800D8F90 27BD0030 */  addiu      $sp, $sp, 0x30
/* B4394 800D8F94 03E00008 */  jr         $ra
/* B4398 800D8F98 00000000 */   nop

glabel func_800D8F9C
/* B439C 800D8F9C 3C01447A */  lui        $at, 0x447a
/* B43A0 800D8FA0 44810000 */  mtc1       $at, $f0
/* B43A4 800D8FA4 3C018011 */  lui        $at, %hi(D_80110898)
/* B43A8 800D8FA8 C4240898 */  lwc1       $f4, %lo(D_80110898)($at)
/* B43AC 800D8FAC 3C014416 */  lui        $at, 0x4416
/* B43B0 800D8FB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B43B4 800D8FB4 44813000 */  mtc1       $at, $f6
/* B43B8 800D8FB8 3C018011 */  lui        $at, %hi(D_8011089C)
/* B43BC 800D8FBC C428089C */  lwc1       $f8, %lo(D_8011089C)($at)
/* B43C0 800D8FC0 AFBF002C */  sw         $ra, 0x2c($sp)
/* B43C4 800D8FC4 3C07C59F */  lui        $a3, 0xc59f
/* B43C8 800D8FC8 34E76000 */  ori        $a3, $a3, 0x6000
/* B43CC 800D8FCC 24050089 */  addiu      $a1, $zero, 0x89
/* B43D0 800D8FD0 2406001E */  addiu      $a2, $zero, 0x1e
/* B43D4 800D8FD4 E7A0001C */  swc1       $f0, 0x1c($sp)
/* B43D8 800D8FD8 E7A00020 */  swc1       $f0, 0x20($sp)
/* B43DC 800D8FDC E7A40010 */  swc1       $f4, 0x10($sp)
/* B43E0 800D8FE0 E7A60014 */  swc1       $f6, 0x14($sp)
/* B43E4 800D8FE4 0C0362CA */  jal        func_800D8B28
/* B43E8 800D8FE8 E7A80018 */   swc1      $f8, 0x18($sp)
/* B43EC 800D8FEC 8FBF002C */  lw         $ra, 0x2c($sp)
/* B43F0 800D8FF0 27BD0030 */  addiu      $sp, $sp, 0x30
/* B43F4 800D8FF4 03E00008 */  jr         $ra
/* B43F8 800D8FF8 00000000 */   nop

glabel func_800D8FFC
/* B43FC 800D8FFC 3C01447A */  lui        $at, 0x447a
/* B4400 800D9000 44810000 */  mtc1       $at, $f0
/* B4404 800D9004 3C018011 */  lui        $at, %hi(D_801108A0)
/* B4408 800D9008 C42408A0 */  lwc1       $f4, %lo(D_801108A0)($at)
/* B440C 800D900C 3C014416 */  lui        $at, 0x4416
/* B4410 800D9010 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B4414 800D9014 44813000 */  mtc1       $at, $f6
/* B4418 800D9018 3C018011 */  lui        $at, %hi(D_801108A4)
/* B441C 800D901C C42808A4 */  lwc1       $f8, %lo(D_801108A4)($at)
/* B4420 800D9020 AFBF002C */  sw         $ra, 0x2c($sp)
/* B4424 800D9024 24050089 */  addiu      $a1, $zero, 0x89
/* B4428 800D9028 2406001E */  addiu      $a2, $zero, 0x1e
/* B442C 800D902C 24070000 */  addiu      $a3, $zero, 0
/* B4430 800D9030 E7A0001C */  swc1       $f0, 0x1c($sp)
/* B4434 800D9034 E7A00020 */  swc1       $f0, 0x20($sp)
/* B4438 800D9038 E7A40010 */  swc1       $f4, 0x10($sp)
/* B443C 800D903C E7A60014 */  swc1       $f6, 0x14($sp)
/* B4440 800D9040 0C0362CA */  jal        func_800D8B28
/* B4444 800D9044 E7A80018 */   swc1      $f8, 0x18($sp)
/* B4448 800D9048 8FBF002C */  lw         $ra, 0x2c($sp)
/* B444C 800D904C 27BD0030 */  addiu      $sp, $sp, 0x30
/* B4450 800D9050 03E00008 */  jr         $ra
/* B4454 800D9054 00000000 */   nop

glabel func_800D9058
/* B4458 800D9058 3C01447A */  lui        $at, 0x447a
/* B445C 800D905C 44810000 */  mtc1       $at, $f0
/* B4460 800D9060 3C018011 */  lui        $at, %hi(D_801108A8)
/* B4464 800D9064 C42408A8 */  lwc1       $f4, %lo(D_801108A8)($at)
/* B4468 800D9068 3C018011 */  lui        $at, %hi(D_801108AC)
/* B446C 800D906C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B4470 800D9070 C42608AC */  lwc1       $f6, %lo(D_801108AC)($at)
/* B4474 800D9074 3C014416 */  lui        $at, 0x4416
/* B4478 800D9078 44814000 */  mtc1       $at, $f8
/* B447C 800D907C AFBF002C */  sw         $ra, 0x2c($sp)
/* B4480 800D9080 3C07459F */  lui        $a3, 0x459f
/* B4484 800D9084 34E76000 */  ori        $a3, $a3, 0x6000
/* B4488 800D9088 24050089 */  addiu      $a1, $zero, 0x89
/* B448C 800D908C 2406001E */  addiu      $a2, $zero, 0x1e
/* B4490 800D9090 E7A0001C */  swc1       $f0, 0x1c($sp)
/* B4494 800D9094 E7A00020 */  swc1       $f0, 0x20($sp)
/* B4498 800D9098 E7A40010 */  swc1       $f4, 0x10($sp)
/* B449C 800D909C E7A60014 */  swc1       $f6, 0x14($sp)
/* B44A0 800D90A0 0C036246 */  jal        func_800D8918
/* B44A4 800D90A4 E7A80018 */   swc1      $f8, 0x18($sp)
/* B44A8 800D90A8 8FBF002C */  lw         $ra, 0x2c($sp)
/* B44AC 800D90AC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B44B0 800D90B0 03E00008 */  jr         $ra
/* B44B4 800D90B4 00000000 */   nop

glabel func_800D90B8
/* B44B8 800D90B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B44BC 800D90BC AFBF0014 */  sw         $ra, 0x14($sp)
/* B44C0 800D90C0 240500A0 */  addiu      $a1, $zero, 0xa0
/* B44C4 800D90C4 2406FFFF */  addiu      $a2, $zero, -1
/* B44C8 800D90C8 0C0361A9 */  jal        func_800D86A4
/* B44CC 800D90CC 2407001E */   addiu     $a3, $zero, 0x1e
/* B44D0 800D90D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B44D4 800D90D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* B44D8 800D90D8 03E00008 */  jr         $ra
/* B44DC 800D90DC 00000000 */   nop

glabel func_800D90E0
/* B44E0 800D90E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B44E4 800D90E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B44E8 800D90E8 240500D7 */  addiu      $a1, $zero, 0xd7
/* B44EC 800D90EC 0C036168 */  jal        func_800D85A0
/* B44F0 800D90F0 2406001E */   addiu     $a2, $zero, 0x1e
/* B44F4 800D90F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B44F8 800D90F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* B44FC 800D90FC 03E00008 */  jr         $ra
/* B4500 800D9100 00000000 */   nop

glabel func_800D9104
/* B4504 800D9104 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4508 800D9108 AFBF0014 */  sw         $ra, 0x14($sp)
/* B450C 800D910C 240500AC */  addiu      $a1, $zero, 0xac
/* B4510 800D9110 0C036168 */  jal        func_800D85A0
/* B4514 800D9114 2406002D */   addiu     $a2, $zero, 0x2d
/* B4518 800D9118 8FBF0014 */  lw         $ra, 0x14($sp)
/* B451C 800D911C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4520 800D9120 03E00008 */  jr         $ra
/* B4524 800D9124 00000000 */   nop

glabel func_800D9128
/* B4528 800D9128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B452C 800D912C AFBF0014 */  sw         $ra, 0x14($sp)
/* B4530 800D9130 240500B0 */  addiu      $a1, $zero, 0xb0
/* B4534 800D9134 0C03618A */  jal        func_800D8628
/* B4538 800D9138 2406002D */   addiu     $a2, $zero, 0x2d
/* B453C 800D913C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4540 800D9140 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4544 800D9144 03E00008 */  jr         $ra
/* B4548 800D9148 00000000 */   nop

glabel func_800D914C
/* B454C 800D914C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4550 800D9150 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4554 800D9154 240500B1 */  addiu      $a1, $zero, 0xb1
/* B4558 800D9158 0C03618A */  jal        func_800D8628
/* B455C 800D915C 24060027 */   addiu     $a2, $zero, 0x27
/* B4560 800D9160 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4564 800D9164 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4568 800D9168 03E00008 */  jr         $ra
/* B456C 800D916C 00000000 */   nop

glabel func_800D9170
/* B4570 800D9170 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4574 800D9174 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4578 800D9178 0C0361E9 */  jal        func_800D87A4
/* B457C 800D917C 240500C2 */   addiu     $a1, $zero, 0xc2
/* B4580 800D9180 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4584 800D9184 27BD0018 */  addiu      $sp, $sp, 0x18
/* B4588 800D9188 03E00008 */  jr         $ra
/* B458C 800D918C 00000000 */   nop

glabel func_800D9190
/* B4590 800D9190 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B4594 800D9194 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4598 800D9198 240500AD */  addiu      $a1, $zero, 0xad
/* B459C 800D919C 0C0361FE */  jal        func_800D87F8
/* B45A0 800D91A0 24060027 */   addiu     $a2, $zero, 0x27
/* B45A4 800D91A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B45A8 800D91A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* B45AC 800D91AC 03E00008 */  jr         $ra
/* B45B0 800D91B0 00000000 */   nop

glabel func_800D91B4
/* B45B4 800D91B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B45B8 800D91B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* B45BC 800D91BC 240500AE */  addiu      $a1, $zero, 0xae
/* B45C0 800D91C0 0C03621F */  jal        func_800D887C
/* B45C4 800D91C4 24060024 */   addiu     $a2, $zero, 0x24
/* B45C8 800D91C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B45CC 800D91CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* B45D0 800D91D0 03E00008 */  jr         $ra
/* B45D4 800D91D4 00000000 */   nop

glabel func_800D91D8
/* B45D8 800D91D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B45DC 800D91DC AFBF0014 */  sw         $ra, 0x14($sp)
/* B45E0 800D91E0 0C03633C */  jal        func_800D8CF0
/* B45E4 800D91E4 2405003B */   addiu     $a1, $zero, 0x3b
/* B45E8 800D91E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B45EC 800D91EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* B45F0 800D91F0 03E00008 */  jr         $ra
/* B45F4 800D91F4 00000000 */   nop
/* B45F8 800D91F8 00000000 */  nop
/* B45FC 800D91FC 00000000 */  nop
