.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E6900
/* C1D00 800E6900 8C8E0060 */  lw         $t6, 0x60($a0)
/* C1D04 800E6904 00061100 */  sll        $v0, $a2, 4
/* C1D08 800E6908 01C27821 */  addu       $t7, $t6, $v0
/* C1D0C 800E690C ADE50000 */  sw         $a1, ($t7)
/* C1D10 800E6910 8C990060 */  lw         $t9, 0x60($a0)
/* C1D14 800E6914 90B80001 */  lbu        $t8, 1($a1)
/* C1D18 800E6918 03224021 */  addu       $t0, $t9, $v0
/* C1D1C 800E691C A1180007 */  sb         $t8, 7($t0)
/* C1D20 800E6920 8C8A0060 */  lw         $t2, 0x60($a0)
/* C1D24 800E6924 90A90000 */  lbu        $t1, ($a1)
/* C1D28 800E6928 01425821 */  addu       $t3, $t2, $v0
/* C1D2C 800E692C A1690009 */  sb         $t1, 9($t3)
/* C1D30 800E6930 8C8D0060 */  lw         $t5, 0x60($a0)
/* C1D34 800E6934 90AC0002 */  lbu        $t4, 2($a1)
/* C1D38 800E6938 01A27021 */  addu       $t6, $t5, $v0
/* C1D3C 800E693C A1CC0008 */  sb         $t4, 8($t6)
/* C1D40 800E6940 8C990060 */  lw         $t9, 0x60($a0)
/* C1D44 800E6944 84AF000C */  lh         $t7, 0xc($a1)
/* C1D48 800E6948 0322C021 */  addu       $t8, $t9, $v0
/* C1D4C 800E694C 03E00008 */  jr         $ra
/* C1D50 800E6950 A70F0004 */   sh        $t7, 4($t8)

glabel func_800E6954
/* C1D54 800E6954 8C8E0060 */  lw         $t6, 0x60($a0)
/* C1D58 800E6958 00051100 */  sll        $v0, $a1, 4
/* C1D5C 800E695C 24080040 */  addiu      $t0, $zero, 0x40
/* C1D60 800E6960 01C27821 */  addu       $t7, $t6, $v0
/* C1D64 800E6964 A1E00006 */  sb         $zero, 6($t7)
/* C1D68 800E6968 8C980060 */  lw         $t8, 0x60($a0)
/* C1D6C 800E696C 240B007F */  addiu      $t3, $zero, 0x7f
/* C1D70 800E6970 240E0005 */  addiu      $t6, $zero, 5
/* C1D74 800E6974 0302C821 */  addu       $t9, $t8, $v0
/* C1D78 800E6978 A320000A */  sb         $zero, 0xa($t9)
/* C1D7C 800E697C 8C890060 */  lw         $t1, 0x60($a0)
/* C1D80 800E6980 3C013F80 */  lui        $at, 0x3f80
/* C1D84 800E6984 44812000 */  mtc1       $at, $f4
/* C1D88 800E6988 01225021 */  addu       $t2, $t1, $v0
/* C1D8C 800E698C A1480007 */  sb         $t0, 7($t2)
/* C1D90 800E6990 8C8C0060 */  lw         $t4, 0x60($a0)
/* C1D94 800E6994 240800C8 */  addiu      $t0, $zero, 0xc8
/* C1D98 800E6998 01826821 */  addu       $t5, $t4, $v0
/* C1D9C 800E699C A1AB0009 */  sb         $t3, 9($t5)
/* C1DA0 800E69A0 8C8F0060 */  lw         $t7, 0x60($a0)
/* C1DA4 800E69A4 01E2C021 */  addu       $t8, $t7, $v0
/* C1DA8 800E69A8 A30E0008 */  sb         $t6, 8($t8)
/* C1DAC 800E69AC 8C990060 */  lw         $t9, 0x60($a0)
/* C1DB0 800E69B0 03224821 */  addu       $t1, $t9, $v0
/* C1DB4 800E69B4 A120000B */  sb         $zero, 0xb($t1)
/* C1DB8 800E69B8 8C8A0060 */  lw         $t2, 0x60($a0)
/* C1DBC 800E69BC 01426021 */  addu       $t4, $t2, $v0
/* C1DC0 800E69C0 A5880004 */  sh         $t0, 4($t4)
/* C1DC4 800E69C4 8C8B0060 */  lw         $t3, 0x60($a0)
/* C1DC8 800E69C8 01626821 */  addu       $t5, $t3, $v0
/* C1DCC 800E69CC 03E00008 */  jr         $ra
/* C1DD0 800E69D0 E5A4000C */   swc1      $f4, 0xc($t5)

glabel func_800E69D4
/* C1DD4 800E69D4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C1DD8 800E69D8 AFB20020 */  sw         $s2, 0x20($sp)
/* C1DDC 800E69DC 00809025 */  or         $s2, $a0, $zero
/* C1DE0 800E69E0 AFBF0024 */  sw         $ra, 0x24($sp)
/* C1DE4 800E69E4 AFB1001C */  sw         $s1, 0x1c($sp)
/* C1DE8 800E69E8 AFB00018 */  sw         $s0, 0x18($sp)
/* C1DEC 800E69EC AFA5002C */  sw         $a1, 0x2c($sp)
/* C1DF0 800E69F0 00A01025 */  or         $v0, $a1, $zero
/* C1DF4 800E69F4 8C51000C */  lw         $s1, 0xc($v0)
.L800E69F8:
/* C1DF8 800E69F8 24420004 */  addiu      $v0, $v0, 4
/* C1DFC 800E69FC 5220FFFE */  beql       $s1, $zero, .L800E69F8
/* C1E00 800E6A00 8C51000C */   lw        $s1, 0xc($v0)
/* C1E04 800E6A04 924E0034 */  lbu        $t6, 0x34($s2)
/* C1E08 800E6A08 00008025 */  or         $s0, $zero, $zero
/* C1E0C 800E6A0C 19C0000C */  blez       $t6, .L800E6A40
/* C1E10 800E6A10 02402025 */   or        $a0, $s2, $zero
.L800E6A14:
/* C1E14 800E6A14 0C039A55 */  jal        func_800E6954
/* C1E18 800E6A18 02002825 */   or        $a1, $s0, $zero
/* C1E1C 800E6A1C 02402025 */  or         $a0, $s2, $zero
/* C1E20 800E6A20 02202825 */  or         $a1, $s1, $zero
/* C1E24 800E6A24 0C039A40 */  jal        func_800E6900
/* C1E28 800E6A28 02003025 */   or        $a2, $s0, $zero
/* C1E2C 800E6A2C 924F0034 */  lbu        $t7, 0x34($s2)
/* C1E30 800E6A30 26100001 */  addiu      $s0, $s0, 1
/* C1E34 800E6A34 020F082A */  slt        $at, $s0, $t7
/* C1E38 800E6A38 5420FFF6 */  bnel       $at, $zero, .L800E6A14
/* C1E3C 800E6A3C 02402025 */   or        $a0, $s2, $zero
.L800E6A40:
/* C1E40 800E6A40 8FB8002C */  lw         $t8, 0x2c($sp)
/* C1E44 800E6A44 02402025 */  or         $a0, $s2, $zero
/* C1E48 800E6A48 8F190008 */  lw         $t9, 8($t8)
/* C1E4C 800E6A4C 53200009 */  beql       $t9, $zero, .L800E6A74
/* C1E50 800E6A50 8FBF0024 */   lw        $ra, 0x24($sp)
/* C1E54 800E6A54 0C039A55 */  jal        func_800E6954
/* C1E58 800E6A58 02002825 */   or        $a1, $s0, $zero
/* C1E5C 800E6A5C 8FA8002C */  lw         $t0, 0x2c($sp)
/* C1E60 800E6A60 02402025 */  or         $a0, $s2, $zero
/* C1E64 800E6A64 24060009 */  addiu      $a2, $zero, 9
/* C1E68 800E6A68 0C039A40 */  jal        func_800E6900
/* C1E6C 800E6A6C 8D050008 */   lw        $a1, 8($t0)
/* C1E70 800E6A70 8FBF0024 */  lw         $ra, 0x24($sp)
.L800E6A74:
/* C1E74 800E6A74 8FB00018 */  lw         $s0, 0x18($sp)
/* C1E78 800E6A78 8FB1001C */  lw         $s1, 0x1c($sp)
/* C1E7C 800E6A7C 8FB20020 */  lw         $s2, 0x20($sp)
/* C1E80 800E6A80 03E00008 */  jr         $ra
/* C1E84 800E6A84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800E6A88
/* C1E88 800E6A88 03E00008 */  jr         $ra
/* C1E8C 800E6A8C 00000000 */   nop

glabel func_800E6A90
/* C1E90 800E6A90 8C8E0024 */  lw         $t6, 0x24($a0)
/* C1E94 800E6A94 240203E8 */  addiu      $v0, $zero, 0x3e8
/* C1E98 800E6A98 01C51823 */  subu       $v1, $t6, $a1
/* C1E9C 800E6A9C 04600003 */  bltz       $v1, .L800E6AAC
/* C1EA0 800E6AA0 00000000 */   nop
/* C1EA4 800E6AA4 03E00008 */  jr         $ra
/* C1EA8 800E6AA8 00601025 */   or        $v0, $v1, $zero
.L800E6AAC:
/* C1EAC 800E6AAC 03E00008 */  jr         $ra
/* C1EB0 800E6AB0 00000000 */   nop

glabel func_800E6AB4
/* C1EB4 800E6AB4 908E0036 */  lbu        $t6, 0x36($a0)
/* C1EB8 800E6AB8 908F0033 */  lbu        $t7, 0x33($a0)
/* C1EBC 800E6ABC 90990030 */  lbu        $t9, 0x30($a0)
/* C1EC0 800E6AC0 908A0031 */  lbu        $t2, 0x31($a0)
/* C1EC4 800E6AC4 01CF0019 */  multu      $t6, $t7
/* C1EC8 800E6AC8 8CA90060 */  lw         $t1, 0x60($a1)
/* C1ECC 800E6ACC 8C8E0020 */  lw         $t6, 0x20($a0)
/* C1ED0 800E6AD0 000A5900 */  sll        $t3, $t2, 4
/* C1ED4 800E6AD4 012B6021 */  addu       $t4, $t1, $t3
/* C1ED8 800E6AD8 918D0009 */  lbu        $t5, 9($t4)
/* C1EDC 800E6ADC 91CF000D */  lbu        $t7, 0xd($t6)
/* C1EE0 800E6AE0 0000C012 */  mflo       $t8
/* C1EE4 800E6AE4 00000000 */  nop
/* C1EE8 800E6AE8 00000000 */  nop
/* C1EEC 800E6AEC 03190019 */  multu      $t8, $t9
/* C1EF0 800E6AF0 84B90032 */  lh         $t9, 0x32($a1)
/* C1EF4 800E6AF4 00001812 */  mflo       $v1
/* C1EF8 800E6AF8 00034183 */  sra        $t0, $v1, 6
/* C1EFC 800E6AFC 01001825 */  or         $v1, $t0, $zero
/* C1F00 800E6B00 01AF0019 */  multu      $t5, $t7
/* C1F04 800E6B04 0000C012 */  mflo       $t8
/* C1F08 800E6B08 00000000 */  nop
/* C1F0C 800E6B0C 00000000 */  nop
/* C1F10 800E6B10 03190019 */  multu      $t8, $t9
/* C1F14 800E6B14 00003012 */  mflo       $a2
/* C1F18 800E6B18 00064383 */  sra        $t0, $a2, 0xe
/* C1F1C 800E6B1C 00000000 */  nop
/* C1F20 800E6B20 00680019 */  multu      $v1, $t0
/* C1F24 800E6B24 00001812 */  mflo       $v1
/* C1F28 800E6B28 000353C2 */  srl        $t2, $v1, 0xf
/* C1F2C 800E6B2C 000A1400 */  sll        $v0, $t2, 0x10
/* C1F30 800E6B30 00024C03 */  sra        $t1, $v0, 0x10
/* C1F34 800E6B34 03E00008 */  jr         $ra
/* C1F38 800E6B38 01201025 */   or        $v0, $t1, $zero

glabel func_800E6B3C
/* C1F3C 800E6B3C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C1F40 800E6B40 AFBF0034 */  sw         $ra, 0x34($sp)
/* C1F44 800E6B44 AFB60030 */  sw         $s6, 0x30($sp)
/* C1F48 800E6B48 AFB5002C */  sw         $s5, 0x2c($sp)
/* C1F4C 800E6B4C AFB40028 */  sw         $s4, 0x28($sp)
/* C1F50 800E6B50 AFB30024 */  sw         $s3, 0x24($sp)
/* C1F54 800E6B54 AFB20020 */  sw         $s2, 0x20($sp)
/* C1F58 800E6B58 AFB1001C */  sw         $s1, 0x1c($sp)
/* C1F5C 800E6B5C AFB00018 */  sw         $s0, 0x18($sp)
/* C1F60 800E6B60 AFA60068 */  sw         $a2, 0x68($sp)
/* C1F64 800E6B64 8CB60010 */  lw         $s6, 0x10($a1)
/* C1F68 800E6B68 0080A025 */  or         $s4, $a0, $zero
/* C1F6C 800E6B6C 00A0A825 */  or         $s5, $a1, $zero
/* C1F70 800E6B70 92CE0034 */  lbu        $t6, 0x34($s6)
/* C1F74 800E6B74 55C0001A */  bnel       $t6, $zero, .L800E6BE0
/* C1F78 800E6B78 240A0003 */   addiu     $t2, $zero, 3
/* C1F7C 800E6B7C 8C900050 */  lw         $s0, 0x50($a0)
/* C1F80 800E6B80 24130006 */  addiu      $s3, $zero, 6
/* C1F84 800E6B84 52000016 */  beql       $s0, $zero, .L800E6BE0
/* C1F88 800E6B88 240A0003 */   addiu     $t2, $zero, 3
.L800E6B8C:
/* C1F8C 800E6B8C 860F000C */  lh         $t7, 0xc($s0)
/* C1F90 800E6B90 8E110000 */  lw         $s1, ($s0)
/* C1F94 800E6B94 166F000F */  bne        $s3, $t7, .L800E6BD4
/* C1F98 800E6B98 00000000 */   nop
/* C1F9C 800E6B9C 8E180010 */  lw         $t8, 0x10($s0)
/* C1FA0 800E6BA0 16B8000C */  bne        $s5, $t8, .L800E6BD4
/* C1FA4 800E6BA4 00000000 */   nop
/* C1FA8 800E6BA8 12200005 */  beqz       $s1, .L800E6BC0
/* C1FAC 800E6BAC 26920048 */   addiu     $s2, $s4, 0x48
/* C1FB0 800E6BB0 8E390008 */  lw         $t9, 8($s1)
/* C1FB4 800E6BB4 8E080008 */  lw         $t0, 8($s0)
/* C1FB8 800E6BB8 03284821 */  addu       $t1, $t9, $t0
/* C1FBC 800E6BBC AE290008 */  sw         $t1, 8($s1)
.L800E6BC0:
/* C1FC0 800E6BC0 0C037248 */  jal        func_800DC920
/* C1FC4 800E6BC4 02002025 */   or        $a0, $s0, $zero
/* C1FC8 800E6BC8 02002025 */  or         $a0, $s0, $zero
/* C1FCC 800E6BCC 0C037254 */  jal        func_800DC950
/* C1FD0 800E6BD0 02402825 */   or        $a1, $s2, $zero
.L800E6BD4:
/* C1FD4 800E6BD4 1620FFED */  bnez       $s1, .L800E6B8C
/* C1FD8 800E6BD8 02208025 */   or        $s0, $s1, $zero
/* C1FDC 800E6BDC 240A0003 */  addiu      $t2, $zero, 3
.L800E6BE0:
/* C1FE0 800E6BE0 A2C00033 */  sb         $zero, 0x33($s6)
/* C1FE4 800E6BE4 A2CA0034 */  sb         $t2, 0x34($s6)
/* C1FE8 800E6BE8 A2C00030 */  sb         $zero, 0x30($s6)
/* C1FEC 800E6BEC 8FAC0068 */  lw         $t4, 0x68($sp)
/* C1FF0 800E6BF0 8E8B001C */  lw         $t3, 0x1c($s4)
/* C1FF4 800E6BF4 02A02825 */  or         $a1, $s5, $zero
/* C1FF8 800E6BF8 00003025 */  or         $a2, $zero, $zero
/* C1FFC 800E6BFC 016C6821 */  addu       $t5, $t3, $t4
/* C2000 800E6C00 AECD0024 */  sw         $t5, 0x24($s6)
/* C2004 800E6C04 8E840014 */  lw         $a0, 0x14($s4)
/* C2008 800E6C08 0C03B4CC */  jal        func_800ED330
/* C200C 800E6C0C 26920048 */   addiu     $s2, $s4, 0x48
/* C2010 800E6C10 8E840014 */  lw         $a0, 0x14($s4)
/* C2014 800E6C14 02A02825 */  or         $a1, $s5, $zero
/* C2018 800E6C18 00003025 */  or         $a2, $zero, $zero
/* C201C 800E6C1C 0C03A1C0 */  jal        func_800E8700
/* C2020 800E6C20 8FA70068 */   lw        $a3, 0x68($sp)
/* C2024 800E6C24 240E0005 */  addiu      $t6, $zero, 5
/* C2028 800E6C28 A7AE0050 */  sh         $t6, 0x50($sp)
/* C202C 800E6C2C AFB50054 */  sw         $s5, 0x54($sp)
/* C2030 800E6C30 02402025 */  or         $a0, $s2, $zero
/* C2034 800E6C34 27A50050 */  addiu      $a1, $sp, 0x50
/* C2038 800E6C38 0C03A0D7 */  jal        func_800E835C
/* C203C 800E6C3C 8FA60068 */   lw        $a2, 0x68($sp)
/* C2040 800E6C40 8FBF0034 */  lw         $ra, 0x34($sp)
/* C2044 800E6C44 8FB00018 */  lw         $s0, 0x18($sp)
/* C2048 800E6C48 8FB1001C */  lw         $s1, 0x1c($sp)
/* C204C 800E6C4C 8FB20020 */  lw         $s2, 0x20($sp)
/* C2050 800E6C50 8FB30024 */  lw         $s3, 0x24($sp)
/* C2054 800E6C54 8FB40028 */  lw         $s4, 0x28($sp)
/* C2058 800E6C58 8FB5002C */  lw         $s5, 0x2c($sp)
/* C205C 800E6C5C 8FB60030 */  lw         $s6, 0x30($sp)
/* C2060 800E6C60 03E00008 */  jr         $ra
/* C2064 800E6C64 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800E6C68
/* C2068 800E6C68 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C206C 800E6C6C AFBF0014 */  sw         $ra, 0x14($sp)
/* C2070 800E6C70 8C870050 */  lw         $a3, 0x50($a0)
/* C2074 800E6C74 00805025 */  or         $t2, $a0, $zero
/* C2078 800E6C78 00004025 */  or         $t0, $zero, $zero
/* C207C 800E6C7C 10E0001F */  beqz       $a3, .L800E6CFC
/* C2080 800E6C80 24090001 */   addiu     $t1, $zero, 1
/* C2084 800E6C84 24040005 */  addiu      $a0, $zero, 5
.L800E6C88:
/* C2088 800E6C88 84EE000C */  lh         $t6, 0xc($a3)
/* C208C 800E6C8C 8CE30008 */  lw         $v1, 8($a3)
/* C2090 800E6C90 8CE20000 */  lw         $v0, ($a3)
/* C2094 800E6C94 148E0017 */  bne        $a0, $t6, .L800E6CF4
/* C2098 800E6C98 01034021 */   addu      $t0, $t0, $v1
/* C209C 800E6C9C 8CEF0010 */  lw         $t7, 0x10($a3)
/* C20A0 800E6CA0 14AF0014 */  bne        $a1, $t7, .L800E6CF4
/* C20A4 800E6CA4 00C8082A */   slt       $at, $a2, $t0
/* C20A8 800E6CA8 10200010 */  beqz       $at, .L800E6CEC
/* C20AC 800E6CAC 00E02025 */   or        $a0, $a3, $zero
/* C20B0 800E6CB0 50400005 */  beql       $v0, $zero, .L800E6CC8
/* C20B4 800E6CB4 AFA7002C */   sw        $a3, 0x2c($sp)
/* C20B8 800E6CB8 8C580008 */  lw         $t8, 8($v0)
/* C20BC 800E6CBC 0303C821 */  addu       $t9, $t8, $v1
/* C20C0 800E6CC0 AC590008 */  sw         $t9, 8($v0)
/* C20C4 800E6CC4 AFA7002C */  sw         $a3, 0x2c($sp)
.L800E6CC8:
/* C20C8 800E6CC8 A3A9001F */  sb         $t1, 0x1f($sp)
/* C20CC 800E6CCC 0C037248 */  jal        func_800DC920
/* C20D0 800E6CD0 AFAA0030 */   sw        $t2, 0x30($sp)
/* C20D4 800E6CD4 8FAA0030 */  lw         $t2, 0x30($sp)
/* C20D8 800E6CD8 8FA4002C */  lw         $a0, 0x2c($sp)
/* C20DC 800E6CDC 0C037254 */  jal        func_800DC950
/* C20E0 800E6CE0 25450048 */   addiu     $a1, $t2, 0x48
/* C20E4 800E6CE4 10000005 */  b          .L800E6CFC
/* C20E8 800E6CE8 93A9001F */   lbu       $t1, 0x1f($sp)
.L800E6CEC:
/* C20EC 800E6CEC 10000003 */  b          .L800E6CFC
/* C20F0 800E6CF0 00004825 */   or        $t1, $zero, $zero
.L800E6CF4:
/* C20F4 800E6CF4 1440FFE4 */  bnez       $v0, .L800E6C88
/* C20F8 800E6CF8 00403825 */   or        $a3, $v0, $zero
.L800E6CFC:
/* C20FC 800E6CFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C2100 800E6D00 27BD0030 */  addiu      $sp, $sp, 0x30
/* C2104 800E6D04 01201025 */  or         $v0, $t1, $zero
/* C2108 800E6D08 03E00008 */  jr         $ra
/* C210C 800E6D0C 00000000 */   nop

glabel func_800E6D10
/* C2110 800E6D10 8C830064 */  lw         $v1, 0x64($a0)
/* C2114 800E6D14 00001025 */  or         $v0, $zero, $zero
/* C2118 800E6D18 24A6FFFC */  addiu      $a2, $a1, -4
/* C211C 800E6D1C 10600016 */  beqz       $v1, .L800E6D78
/* C2120 800E6D20 00000000 */   nop
.L800E6D24:
/* C2124 800E6D24 54660011 */  bnel       $v1, $a2, .L800E6D6C
/* C2128 800E6D28 00601025 */   or        $v0, $v1, $zero
/* C212C 800E6D2C 50400005 */  beql       $v0, $zero, .L800E6D44
/* C2130 800E6D30 8C6F0000 */   lw        $t7, ($v1)
/* C2134 800E6D34 8C6E0000 */  lw         $t6, ($v1)
/* C2138 800E6D38 10000003 */  b          .L800E6D48
/* C213C 800E6D3C AC4E0000 */   sw        $t6, ($v0)
/* C2140 800E6D40 8C6F0000 */  lw         $t7, ($v1)
.L800E6D44:
/* C2144 800E6D44 AC8F0064 */  sw         $t7, 0x64($a0)
.L800E6D48:
/* C2148 800E6D48 8C980068 */  lw         $t8, 0x68($a0)
/* C214C 800E6D4C 54780003 */  bnel       $v1, $t8, .L800E6D5C
/* C2150 800E6D50 8C99006C */   lw        $t9, 0x6c($a0)
/* C2154 800E6D54 AC820068 */  sw         $v0, 0x68($a0)
/* C2158 800E6D58 8C99006C */  lw         $t9, 0x6c($a0)
.L800E6D5C:
/* C215C 800E6D5C AC790000 */  sw         $t9, ($v1)
/* C2160 800E6D60 03E00008 */  jr         $ra
/* C2164 800E6D64 AC83006C */   sw        $v1, 0x6c($a0)
/* C2168 800E6D68 00601025 */  or         $v0, $v1, $zero
.L800E6D6C:
/* C216C 800E6D6C 8C630000 */  lw         $v1, ($v1)
/* C2170 800E6D70 1460FFEC */  bnez       $v1, .L800E6D24
/* C2174 800E6D74 00000000 */   nop
.L800E6D78:
/* C2178 800E6D78 03E00008 */  jr         $ra
/* C217C 800E6D7C 00000000 */   nop

glabel func_800E6D80
/* C2180 800E6D80 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C2184 800E6D84 AFBF0014 */  sw         $ra, 0x14($sp)
/* C2188 800E6D88 8C8E002C */  lw         $t6, 0x2c($a0)
/* C218C 800E6D8C 24010001 */  addiu      $at, $zero, 1
/* C2190 800E6D90 00803825 */  or         $a3, $a0, $zero
/* C2194 800E6D94 15C1002D */  bne        $t6, $at, .L800E6E4C
/* C2198 800E6D98 8C860018 */   lw        $a2, 0x18($a0)
/* C219C 800E6D9C 10C0002B */  beqz       $a2, .L800E6E4C
/* C21A0 800E6DA0 00C02025 */   or        $a0, $a2, $zero
/* C21A4 800E6DA4 27A50024 */  addiu      $a1, $sp, 0x24
/* C21A8 800E6DA8 AFA60020 */  sw         $a2, 0x20($sp)
/* C21AC 800E6DAC 0C03B460 */  jal        func_800ED180
/* C21B0 800E6DB0 AFA70038 */   sw        $a3, 0x38($sp)
/* C21B4 800E6DB4 8FA60020 */  lw         $a2, 0x20($sp)
/* C21B8 800E6DB8 10400024 */  beqz       $v0, .L800E6E4C
/* C21BC 800E6DBC 8FA70038 */   lw        $a3, 0x38($sp)
/* C21C0 800E6DC0 8CEF0084 */  lw         $t7, 0x84($a3)
/* C21C4 800E6DC4 00C02025 */  or         $a0, $a2, $zero
/* C21C8 800E6DC8 51E00018 */  beql       $t7, $zero, .L800E6E2C
/* C21CC 800E6DCC A7A00028 */   sh        $zero, 0x28($sp)
/* C21D0 800E6DD0 AFA60020 */  sw         $a2, 0x20($sp)
/* C21D4 800E6DD4 0C03B352 */  jal        func_800ECD48
/* C21D8 800E6DD8 AFA70038 */   sw        $a3, 0x38($sp)
/* C21DC 800E6DDC 8FA70038 */  lw         $a3, 0x38($sp)
/* C21E0 800E6DE0 8FB80024 */  lw         $t8, 0x24($sp)
/* C21E4 800E6DE4 8FA60020 */  lw         $a2, 0x20($sp)
/* C21E8 800E6DE8 8CE80080 */  lw         $t0, 0x80($a3)
/* C21EC 800E6DEC 0058C821 */  addu       $t9, $v0, $t8
/* C21F0 800E6DF0 00C02025 */  or         $a0, $a2, $zero
/* C21F4 800E6DF4 8D090008 */  lw         $t1, 8($t0)
/* C21F8 800E6DF8 0329082A */  slt        $at, $t9, $t1
/* C21FC 800E6DFC 5420000B */  bnel       $at, $zero, .L800E6E2C
/* C2200 800E6E00 A7A00028 */   sh        $zero, 0x28($sp)
/* C2204 800E6E04 8CE5007C */  lw         $a1, 0x7c($a3)
/* C2208 800E6E08 0C03B34B */  jal        func_800ECD2C
/* C220C 800E6E0C AFA70038 */   sw        $a3, 0x38($sp)
/* C2210 800E6E10 8FA70038 */  lw         $a3, 0x38($sp)
/* C2214 800E6E14 2401FFFF */  addiu      $at, $zero, -1
/* C2218 800E6E18 8CE20084 */  lw         $v0, 0x84($a3)
/* C221C 800E6E1C 10410002 */  beq        $v0, $at, .L800E6E28
/* C2220 800E6E20 244AFFFF */   addiu     $t2, $v0, -1
/* C2224 800E6E24 ACEA0084 */  sw         $t2, 0x84($a3)
.L800E6E28:
/* C2228 800E6E28 A7A00028 */  sh         $zero, 0x28($sp)
.L800E6E2C:
/* C222C 800E6E2C 8CEB0024 */  lw         $t3, 0x24($a3)
/* C2230 800E6E30 8FAC0024 */  lw         $t4, 0x24($sp)
/* C2234 800E6E34 24E40048 */  addiu      $a0, $a3, 0x48
/* C2238 800E6E38 27A50028 */  addiu      $a1, $sp, 0x28
/* C223C 800E6E3C 016C0019 */  multu      $t3, $t4
/* C2240 800E6E40 00003012 */  mflo       $a2
/* C2244 800E6E44 0C03A0D7 */  jal        func_800E835C
/* C2248 800E6E48 00000000 */   nop
.L800E6E4C:
/* C224C 800E6E4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C2250 800E6E50 27BD0038 */  addiu      $sp, $sp, 0x38
/* C2254 800E6E54 03E00008 */  jr         $ra
/* C2258 800E6E58 00000000 */   nop

glabel func_800E6E5C
/* C225C 800E6E5C 908E0008 */  lbu        $t6, 8($a0)
/* C2260 800E6E60 240100FF */  addiu      $at, $zero, 0xff
/* C2264 800E6E64 15C10019 */  bne        $t6, $at, .L800E6ECC
/* C2268 800E6E68 00000000 */   nop
/* C226C 800E6E6C 908F0009 */  lbu        $t7, 9($a0)
/* C2270 800E6E70 24010051 */  addiu      $at, $zero, 0x51
/* C2274 800E6E74 24820004 */  addiu      $v0, $a0, 4
/* C2278 800E6E78 15E10014 */  bne        $t7, $at, .L800E6ECC
/* C227C 800E6E7C 00000000 */   nop
/* C2280 800E6E80 904E0008 */  lbu        $t6, 8($v0)
/* C2284 800E6E84 90580007 */  lbu        $t8, 7($v0)
/* C2288 800E6E88 8CA60018 */  lw         $a2, 0x18($a1)
/* C228C 800E6E8C 000E7A00 */  sll        $t7, $t6, 8
/* C2290 800E6E90 904E0009 */  lbu        $t6, 9($v0)
/* C2294 800E6E94 0018CC00 */  sll        $t9, $t8, 0x10
/* C2298 800E6E98 032FC025 */  or         $t8, $t9, $t7
/* C229C 800E6E9C 030E1825 */  or         $v1, $t8, $t6
/* C22A0 800E6EA0 44832000 */  mtc1       $v1, $f4
/* C22A4 800E6EA4 241801E8 */  addiu      $t8, $zero, 0x1e8
/* C22A8 800E6EA8 10C00007 */  beqz       $a2, .L800E6EC8
/* C22AC 800E6EAC 46802020 */   cvt.s.w   $f0, $f4
/* C22B0 800E6EB0 C4C60014 */  lwc1       $f6, 0x14($a2)
/* C22B4 800E6EB4 46060202 */  mul.s      $f8, $f0, $f6
/* C22B8 800E6EB8 4600428D */  trunc.w.s  $f10, $f8
/* C22BC 800E6EBC 440F5000 */  mfc1       $t7, $f10
/* C22C0 800E6EC0 03E00008 */  jr         $ra
/* C22C4 800E6EC4 ACAF0024 */   sw        $t7, 0x24($a1)
.L800E6EC8:
/* C22C8 800E6EC8 ACB80024 */  sw         $t8, 0x24($a1)
.L800E6ECC:
/* C22CC 800E6ECC 03E00008 */  jr         $ra
/* C22D0 800E6ED0 00000000 */   nop

glabel func_800E6ED4
/* C22D4 800E6ED4 908F0031 */  lbu        $t7, 0x31($a0)
/* C22D8 800E6ED8 8CAE0060 */  lw         $t6, 0x60($a1)
/* C22DC 800E6EDC 8C890020 */  lw         $t1, 0x20($a0)
/* C22E0 800E6EE0 000FC100 */  sll        $t8, $t7, 4
/* C22E4 800E6EE4 01D8C821 */  addu       $t9, $t6, $t8
/* C22E8 800E6EE8 93280007 */  lbu        $t0, 7($t9)
/* C22EC 800E6EEC 912A000C */  lbu        $t2, 0xc($t1)
/* C22F0 800E6EF0 010A1821 */  addu       $v1, $t0, $t2
/* C22F4 800E6EF4 2463FFC0 */  addiu      $v1, $v1, -0x40
/* C22F8 800E6EF8 5C600003 */  bgtzl      $v1, .L800E6F08
/* C22FC 800E6EFC 2861007F */   slti      $at, $v1, 0x7f
/* C2300 800E6F00 00001825 */  or         $v1, $zero, $zero
/* C2304 800E6F04 2861007F */  slti       $at, $v1, 0x7f
.L800E6F08:
/* C2308 800E6F08 14200002 */  bnez       $at, .L800E6F14
/* C230C 800E6F0C 00000000 */   nop
/* C2310 800E6F10 2403007F */  addiu      $v1, $zero, 0x7f
.L800E6F14:
/* C2314 800E6F14 03E00008 */  jr         $ra
/* C2318 800E6F18 306200FF */   andi      $v0, $v1, 0xff

glabel func_800E6F1C
/* C231C 800E6F1C AFA50004 */  sw         $a1, 4($sp)
/* C2320 800E6F20 AFA60008 */  sw         $a2, 8($sp)
/* C2324 800E6F24 8C830064 */  lw         $v1, 0x64($a0)
/* C2328 800E6F28 30CF00FF */  andi       $t7, $a2, 0xff
/* C232C 800E6F2C 01E03025 */  or         $a2, $t7, $zero
/* C2330 800E6F30 10600014 */  beqz       $v1, .L800E6F84
/* C2334 800E6F34 30AE00FF */   andi      $t6, $a1, 0xff
/* C2338 800E6F38 01C01025 */  or         $v0, $t6, $zero
/* C233C 800E6F3C 24070004 */  addiu      $a3, $zero, 4
/* C2340 800E6F40 24050003 */  addiu      $a1, $zero, 3
/* C2344 800E6F44 90780032 */  lbu        $t8, 0x32($v1)
.L800E6F48:
/* C2348 800E6F48 5458000C */  bnel       $v0, $t8, .L800E6F7C
/* C234C 800E6F4C 8C630000 */   lw        $v1, ($v1)
/* C2350 800E6F50 90790031 */  lbu        $t9, 0x31($v1)
/* C2354 800E6F54 54D90009 */  bnel       $a2, $t9, .L800E6F7C
/* C2358 800E6F58 8C630000 */   lw        $v1, ($v1)
/* C235C 800E6F5C 90640035 */  lbu        $a0, 0x35($v1)
/* C2360 800E6F60 50A40006 */  beql       $a1, $a0, .L800E6F7C
/* C2364 800E6F64 8C630000 */   lw        $v1, ($v1)
/* C2368 800E6F68 50E40004 */  beql       $a3, $a0, .L800E6F7C
/* C236C 800E6F6C 8C630000 */   lw        $v1, ($v1)
/* C2370 800E6F70 03E00008 */  jr         $ra
/* C2374 800E6F74 00601025 */   or        $v0, $v1, $zero
/* C2378 800E6F78 8C630000 */  lw         $v1, ($v1)
.L800E6F7C:
/* C237C 800E6F7C 5460FFF2 */  bnel       $v1, $zero, .L800E6F48
/* C2380 800E6F80 90780032 */   lbu       $t8, 0x32($v1)
.L800E6F84:
/* C2384 800E6F84 00001025 */  or         $v0, $zero, $zero
/* C2388 800E6F88 03E00008 */  jr         $ra
/* C238C 800E6F8C 00000000 */   nop

glabel func_800E6F90
/* C2390 800E6F90 AFA50004 */  sw         $a1, 4($sp)
/* C2394 800E6F94 AFA60008 */  sw         $a2, 8($sp)
/* C2398 800E6F98 AFA7000C */  sw         $a3, 0xc($sp)
/* C239C 800E6F9C 8C83006C */  lw         $v1, 0x6c($a0)
/* C23A0 800E6FA0 30AE00FF */  andi       $t6, $a1, 0xff
/* C23A4 800E6FA4 30CF00FF */  andi       $t7, $a2, 0xff
/* C23A8 800E6FA8 30F800FF */  andi       $t8, $a3, 0xff
/* C23AC 800E6FAC 03003825 */  or         $a3, $t8, $zero
/* C23B0 800E6FB0 01E03025 */  or         $a2, $t7, $zero
/* C23B4 800E6FB4 10600010 */  beqz       $v1, .L800E6FF8
/* C23B8 800E6FB8 01C02825 */   or        $a1, $t6, $zero
/* C23BC 800E6FBC 8C790000 */  lw         $t9, ($v1)
/* C23C0 800E6FC0 AC99006C */  sw         $t9, 0x6c($a0)
/* C23C4 800E6FC4 AC600000 */  sw         $zero, ($v1)
/* C23C8 800E6FC8 8C880064 */  lw         $t0, 0x64($a0)
/* C23CC 800E6FCC 55000004 */  bnel       $t0, $zero, .L800E6FE0
/* C23D0 800E6FD0 8C890068 */   lw        $t1, 0x68($a0)
/* C23D4 800E6FD4 10000003 */  b          .L800E6FE4
/* C23D8 800E6FD8 AC830064 */   sw        $v1, 0x64($a0)
/* C23DC 800E6FDC 8C890068 */  lw         $t1, 0x68($a0)
.L800E6FE0:
/* C23E0 800E6FE0 AD230000 */  sw         $v1, ($t1)
.L800E6FE4:
/* C23E4 800E6FE4 AC830068 */  sw         $v1, 0x68($a0)
/* C23E8 800E6FE8 A0670031 */  sb         $a3, 0x31($v1)
/* C23EC 800E6FEC A0650032 */  sb         $a1, 0x32($v1)
/* C23F0 800E6FF0 A0660033 */  sb         $a2, 0x33($v1)
/* C23F4 800E6FF4 AC630014 */  sw         $v1, 0x14($v1)
.L800E6FF8:
/* C23F8 800E6FF8 03E00008 */  jr         $ra
/* C23FC 800E6FFC 00601025 */   or        $v0, $v1, $zero

glabel func_800E7000
/* C2400 800E7000 AFA50004 */  sw         $a1, 4($sp)
/* C2404 800E7004 AFA60008 */  sw         $a2, 8($sp)
/* C2408 800E7008 AFA7000C */  sw         $a3, 0xc($sp)
/* C240C 800E700C 8C980060 */  lw         $t8, 0x60($a0)
/* C2410 800E7010 30EF00FF */  andi       $t7, $a3, 0xff
/* C2414 800E7014 000FC900 */  sll        $t9, $t7, 4
/* C2418 800E7018 03196021 */  addu       $t4, $t8, $t9
/* C241C 800E701C 8D820000 */  lw         $v0, ($t4)
/* C2420 800E7020 30AE00FF */  andi       $t6, $a1, 0xff
/* C2424 800E7024 30CB00FF */  andi       $t3, $a2, 0xff
/* C2428 800E7028 8448000E */  lh         $t0, 0xe($v0)
/* C242C 800E702C 24030001 */  addiu      $v1, $zero, 1
/* C2430 800E7030 01C04825 */  or         $t1, $t6, $zero
/* C2434 800E7034 1900002E */  blez       $t0, .L800E70F0
/* C2438 800E7038 00682821 */   addu      $a1, $v1, $t0
.L800E703C:
/* C243C 800E703C 04A10003 */  bgez       $a1, .L800E704C
/* C2440 800E7040 00056843 */   sra       $t5, $a1, 1
/* C2444 800E7044 24A10001 */  addiu      $at, $a1, 1
/* C2448 800E7048 00016843 */  sra        $t5, $at, 1
.L800E704C:
/* C244C 800E704C 000D7080 */  sll        $t6, $t5, 2
/* C2450 800E7050 004E7821 */  addu       $t7, $v0, $t6
/* C2454 800E7054 8DE7000C */  lw         $a3, 0xc($t7)
/* C2458 800E7058 01A02025 */  or         $a0, $t5, $zero
/* C245C 800E705C 8CE60004 */  lw         $a2, 4($a3)
/* C2460 800E7060 90CA0002 */  lbu        $t2, 2($a2)
/* C2464 800E7064 012A082A */  slt        $at, $t1, $t2
/* C2468 800E7068 54200011 */  bnel       $at, $zero, .L800E70B0
/* C246C 800E706C 012A082A */   slt       $at, $t1, $t2
/* C2470 800E7070 90D80003 */  lbu        $t8, 3($a2)
/* C2474 800E7074 0309082A */  slt        $at, $t8, $t1
/* C2478 800E7078 5420000D */  bnel       $at, $zero, .L800E70B0
/* C247C 800E707C 012A082A */   slt       $at, $t1, $t2
/* C2480 800E7080 90D90000 */  lbu        $t9, ($a2)
/* C2484 800E7084 01602825 */  or         $a1, $t3, $zero
/* C2488 800E7088 0179082A */  slt        $at, $t3, $t9
/* C248C 800E708C 54200008 */  bnel       $at, $zero, .L800E70B0
/* C2490 800E7090 012A082A */   slt       $at, $t1, $t2
/* C2494 800E7094 90CC0001 */  lbu        $t4, 1($a2)
/* C2498 800E7098 0185082A */  slt        $at, $t4, $a1
/* C249C 800E709C 54200004 */  bnel       $at, $zero, .L800E70B0
/* C24A0 800E70A0 012A082A */   slt       $at, $t1, $t2
/* C24A4 800E70A4 03E00008 */  jr         $ra
/* C24A8 800E70A8 00E01025 */   or        $v0, $a3, $zero
/* C24AC 800E70AC 012A082A */  slt        $at, $t1, $t2
.L800E70B0:
/* C24B0 800E70B0 14200009 */  bnez       $at, .L800E70D8
/* C24B4 800E70B4 00000000 */   nop
/* C24B8 800E70B8 90CD0000 */  lbu        $t5, ($a2)
/* C24BC 800E70BC 016D082A */  slt        $at, $t3, $t5
/* C24C0 800E70C0 50200008 */  beql       $at, $zero, .L800E70E4
/* C24C4 800E70C4 24830001 */   addiu     $v1, $a0, 1
/* C24C8 800E70C8 90CE0003 */  lbu        $t6, 3($a2)
/* C24CC 800E70CC 01C9082A */  slt        $at, $t6, $t1
/* C24D0 800E70D0 54200004 */  bnel       $at, $zero, .L800E70E4
/* C24D4 800E70D4 24830001 */   addiu     $v1, $a0, 1
.L800E70D8:
/* C24D8 800E70D8 10000002 */  b          .L800E70E4
/* C24DC 800E70DC 2488FFFF */   addiu     $t0, $a0, -1
/* C24E0 800E70E0 24830001 */  addiu      $v1, $a0, 1
.L800E70E4:
/* C24E4 800E70E4 0103082A */  slt        $at, $t0, $v1
/* C24E8 800E70E8 5020FFD4 */  beql       $at, $zero, .L800E703C
/* C24EC 800E70EC 00682821 */   addu      $a1, $v1, $t0
.L800E70F0:
/* C24F0 800E70F0 00001025 */  or         $v0, $zero, $zero
/* C24F4 800E70F4 03E00008 */  jr         $ra
/* C24F8 800E70F8 00000000 */   nop

glabel func_800E70FC
/* C24FC 800E70FC 27BDFF20 */  addiu      $sp, $sp, -0xe0
/* C2500 800E7100 AFBF0024 */  sw         $ra, 0x24($sp)
/* C2504 800E7104 90960008 */  lbu        $s6, 8($a0)
/* C2508 800E7108 90930009 */  lbu        $s3, 9($a0)
/* C250C 800E710C 9094000A */  lbu        $s4, 0xa($a0)
/* C2510 800E7110 32C300F0 */  andi       $v1, $s6, 0xf0
/* C2514 800E7114 246FFF80 */  addiu      $t7, $v1, -0x80
/* C2518 800E7118 2DE10061 */  sltiu      $at, $t7, 0x61
/* C251C 800E711C 32CE000F */  andi       $t6, $s6, 0xf
/* C2520 800E7120 102001F8 */  beqz       $at, .L800E7904
/* C2524 800E7124 01C0B025 */   or        $s6, $t6, $zero
/* C2528 800E7128 000F7880 */  sll        $t7, $t7, 2
/* C252C 800E712C 3C018011 */  lui        $at, %hi(D_80110DB0)
/* C2530 800E7130 002F0821 */  addu       $at, $at, $t7
/* C2534 800E7134 8C2F0DB0 */  lw         $t7, %lo(D_80110DB0)($at)
/* C2538 800E7138 01E00008 */  jr         $t7
/* C253C 800E713C 00000000 */   nop
/* C2540 800E7140 528000D5 */  beql       $s4, $zero, .L800E7498
/* C2544 800E7144 02202025 */   or        $a0, $s1, $zero
/* C2548 800E7148 8E38002C */  lw         $t8, 0x2c($s1)
/* C254C 800E714C 24010001 */  addiu      $at, $zero, 1
/* C2550 800E7150 02202025 */  or         $a0, $s1, $zero
/* C2554 800E7154 170101EB */  bne        $t8, $at, .L800E7904
/* C2558 800E7158 326500FF */   andi      $a1, $s3, 0xff
/* C255C 800E715C 328600FF */  andi       $a2, $s4, 0xff
/* C2560 800E7160 0C039C00 */  jal        func_800E7000
/* C2564 800E7164 32C700FF */   andi      $a3, $s6, 0xff
/* C2568 800E7168 104001E6 */  beqz       $v0, .L800E7904
/* C256C 800E716C 0040B825 */   or        $s7, $v0, $zero
/* C2570 800E7170 8E390060 */  lw         $t9, 0x60($s1)
/* C2574 800E7174 0016F100 */  sll        $fp, $s6, 4
/* C2578 800E7178 02202025 */  or         $a0, $s1, $zero
/* C257C 800E717C 033E7021 */  addu       $t6, $t9, $fp
/* C2580 800E7180 91CF0008 */  lbu        $t7, 8($t6)
/* C2584 800E7184 A7A0009E */  sh         $zero, 0x9e($sp)
/* C2588 800E7188 A3A000A0 */  sb         $zero, 0xa0($sp)
/* C258C 800E718C 326500FF */  andi       $a1, $s3, 0xff
/* C2590 800E7190 328600FF */  andi       $a2, $s4, 0xff
/* C2594 800E7194 32C700FF */  andi       $a3, $s6, 0xff
/* C2598 800E7198 0C039BE4 */  jal        func_800E6F90
/* C259C 800E719C A7AF009C */   sh        $t7, 0x9c($sp)
/* C25A0 800E71A0 104001D8 */  beqz       $v0, .L800E7904
/* C25A4 800E71A4 00408025 */   or        $s0, $v0, $zero
/* C25A8 800E71A8 8E240014 */  lw         $a0, 0x14($s1)
/* C25AC 800E71AC 24450004 */  addiu      $a1, $v0, 4
/* C25B0 800E71B0 AFA50034 */  sw         $a1, 0x34($sp)
/* C25B4 800E71B4 0C03A246 */  jal        func_800E8918
/* C25B8 800E71B8 27A6009C */   addiu     $a2, $sp, 0x9c
/* C25BC 800E71BC AE170020 */  sw         $s7, 0x20($s0)
/* C25C0 800E71C0 A2000034 */  sb         $zero, 0x34($s0)
/* C25C4 800E71C4 8E380060 */  lw         $t8, 0x60($s1)
/* C25C8 800E71C8 24150002 */  addiu      $s5, $zero, 2
/* C25CC 800E71CC 031EC821 */  addu       $t9, $t8, $fp
/* C25D0 800E71D0 932E000B */  lbu        $t6, 0xb($t9)
/* C25D4 800E71D4 29C10040 */  slti       $at, $t6, 0x40
/* C25D8 800E71D8 54200004 */  bnel       $at, $zero, .L800E71EC
/* C25DC 800E71DC A2000035 */   sb        $zero, 0x35($s0)
/* C25E0 800E71E0 10000002 */  b          .L800E71EC
/* C25E4 800E71E4 A2150035 */   sb        $s5, 0x35($s0)
/* C25E8 800E71E8 A2000035 */  sb         $zero, 0x35($s0)
.L800E71EC:
/* C25EC 800E71EC 8EE20004 */  lw         $v0, 4($s7)
/* C25F0 800E71F0 904F0004 */  lbu        $t7, 4($v0)
/* C25F4 800E71F4 804E0005 */  lb         $t6, 5($v0)
/* C25F8 800E71F8 026FC023 */  subu       $t8, $s3, $t7
/* C25FC 800E71FC 0018C880 */  sll        $t9, $t8, 2
/* C2600 800E7200 0338C823 */  subu       $t9, $t9, $t8
/* C2604 800E7204 0019C8C0 */  sll        $t9, $t9, 3
/* C2608 800E7208 0338C821 */  addu       $t9, $t9, $t8
/* C260C 800E720C 0019C880 */  sll        $t9, $t9, 2
/* C2610 800E7210 032E2021 */  addu       $a0, $t9, $t6
/* C2614 800E7214 00047C00 */  sll        $t7, $a0, 0x10
/* C2618 800E7218 0C037290 */  jal        func_800DCA40
/* C261C 800E721C 000F2403 */   sra       $a0, $t7, 0x10
/* C2620 800E7220 E6000028 */  swc1       $f0, 0x28($s0)
/* C2624 800E7224 8EF90000 */  lw         $t9, ($s7)
/* C2628 800E7228 3C0142FE */  lui        $at, 0x42fe
/* C262C 800E722C 44812000 */  mtc1       $at, $f4
/* C2630 800E7230 932E000C */  lbu        $t6, 0xc($t9)
/* C2634 800E7234 A20E0030 */  sb         $t6, 0x30($s0)
/* C2638 800E7238 8EF80000 */  lw         $t8, ($s7)
/* C263C 800E723C 8E2F001C */  lw         $t7, 0x1c($s1)
/* C2640 800E7240 8F190000 */  lw         $t9, ($t8)
/* C2644 800E7244 A2000037 */  sb         $zero, 0x37($s0)
/* C2648 800E7248 01F97021 */  addu       $t6, $t7, $t9
/* C264C 800E724C AE0E0024 */  sw         $t6, 0x24($s0)
/* C2650 800E7250 8E380060 */  lw         $t8, 0x60($s1)
/* C2654 800E7254 031E7821 */  addu       $t7, $t8, $fp
/* C2658 800E7258 8DF20000 */  lw         $s2, ($t7)
/* C265C 800E725C E7A4008C */  swc1       $f4, 0x8c($sp)
/* C2660 800E7260 92460004 */  lbu        $a2, 4($s2)
/* C2664 800E7264 50C0001A */  beql       $a2, $zero, .L800E72D0
/* C2668 800E7268 4458F800 */   cfc1      $t8, $31
/* C266C 800E726C 8E220070 */  lw         $v0, 0x70($s1)
/* C2670 800E7270 50400017 */  beql       $v0, $zero, .L800E72D0
/* C2674 800E7274 4458F800 */   cfc1      $t8, $31
/* C2678 800E7278 92590006 */  lbu        $t9, 6($s2)
/* C267C 800E727C 92470005 */  lbu        $a3, 5($s2)
/* C2680 800E7280 27A40084 */  addiu      $a0, $sp, 0x84
/* C2684 800E7284 AFB90010 */  sw         $t9, 0x10($sp)
/* C2688 800E7288 924E0007 */  lbu        $t6, 7($s2)
/* C268C 800E728C 27A5008C */  addiu      $a1, $sp, 0x8c
/* C2690 800E7290 0040F809 */  jalr       $v0
/* C2694 800E7294 AFAE0014 */   sw        $t6, 0x14($sp)
/* C2698 800E7298 1040000C */  beqz       $v0, .L800E72CC
/* C269C 800E729C 24180016 */   addiu     $t8, $zero, 0x16
/* C26A0 800E72A0 8FAF0084 */  lw         $t7, 0x84($sp)
/* C26A4 800E72A4 A7B800B4 */  sh         $t8, 0xb4($sp)
/* C26A8 800E72A8 AFB000B8 */  sw         $s0, 0xb8($sp)
/* C26AC 800E72AC 26240048 */  addiu      $a0, $s1, 0x48
/* C26B0 800E72B0 27A500B4 */  addiu      $a1, $sp, 0xb4
/* C26B4 800E72B4 00403025 */  or         $a2, $v0, $zero
/* C26B8 800E72B8 0C03A0D7 */  jal        func_800E835C
/* C26BC 800E72BC AFAF00BC */   sw        $t7, 0xbc($sp)
/* C26C0 800E72C0 92190037 */  lbu        $t9, 0x37($s0)
/* C26C4 800E72C4 372E0001 */  ori        $t6, $t9, 1
/* C26C8 800E72C8 A20E0037 */  sb         $t6, 0x37($s0)
.L800E72CC:
/* C26CC 800E72CC 4458F800 */  cfc1       $t8, $31
.L800E72D0:
/* C26D0 800E72D0 240F0001 */  addiu      $t7, $zero, 1
/* C26D4 800E72D4 44CFF800 */  ctc1       $t7, $31
/* C26D8 800E72D8 C7A6008C */  lwc1       $f6, 0x8c($sp)
/* C26DC 800E72DC 3C014F00 */  lui        $at, 0x4f00
/* C26E0 800E72E0 46003224 */  cvt.w.s    $f8, $f6
/* C26E4 800E72E4 444FF800 */  cfc1       $t7, $31
/* C26E8 800E72E8 00000000 */  nop
/* C26EC 800E72EC 31EF0078 */  andi       $t7, $t7, 0x78
/* C26F0 800E72F0 51E00013 */  beql       $t7, $zero, .L800E7340
/* C26F4 800E72F4 440F4000 */   mfc1      $t7, $f8
/* C26F8 800E72F8 44814000 */  mtc1       $at, $f8
/* C26FC 800E72FC 240F0001 */  addiu      $t7, $zero, 1
/* C2700 800E7300 46083201 */  sub.s      $f8, $f6, $f8
/* C2704 800E7304 44CFF800 */  ctc1       $t7, $31
/* C2708 800E7308 00000000 */  nop
/* C270C 800E730C 46004224 */  cvt.w.s    $f8, $f8
/* C2710 800E7310 444FF800 */  cfc1       $t7, $31
/* C2714 800E7314 00000000 */  nop
/* C2718 800E7318 31EF0078 */  andi       $t7, $t7, 0x78
/* C271C 800E731C 15E00005 */  bnez       $t7, .L800E7334
/* C2720 800E7320 00000000 */   nop
/* C2724 800E7324 440F4000 */  mfc1       $t7, $f8
/* C2728 800E7328 3C018000 */  lui        $at, 0x8000
/* C272C 800E732C 10000007 */  b          .L800E734C
/* C2730 800E7330 01E17825 */   or        $t7, $t7, $at
.L800E7334:
/* C2734 800E7334 10000005 */  b          .L800E734C
/* C2738 800E7338 240FFFFF */   addiu     $t7, $zero, -1
/* C273C 800E733C 440F4000 */  mfc1       $t7, $f8
.L800E7340:
/* C2740 800E7340 00000000 */  nop
/* C2744 800E7344 05E0FFFB */  bltz       $t7, .L800E7334
/* C2748 800E7348 00000000 */   nop
.L800E734C:
/* C274C 800E734C 3C013F80 */  lui        $at, 0x3f80
/* C2750 800E7350 44815000 */  mtc1       $at, $f10
/* C2754 800E7354 A20F0036 */  sb         $t7, 0x36($s0)
/* C2758 800E7358 44D8F800 */  ctc1       $t8, $31
/* C275C 800E735C E7AA008C */  swc1       $f10, 0x8c($sp)
/* C2760 800E7360 92460008 */  lbu        $a2, 8($s2)
/* C2764 800E7364 26350048 */  addiu      $s5, $s1, 0x48
/* C2768 800E7368 50C0001B */  beql       $a2, $zero, .L800E73D8
/* C276C 800E736C C7A4008C */   lwc1      $f4, 0x8c($sp)
/* C2770 800E7370 8E220070 */  lw         $v0, 0x70($s1)
/* C2774 800E7374 50400018 */  beql       $v0, $zero, .L800E73D8
/* C2778 800E7378 C7A4008C */   lwc1      $f4, 0x8c($sp)
/* C277C 800E737C 9259000A */  lbu        $t9, 0xa($s2)
/* C2780 800E7380 92470009 */  lbu        $a3, 9($s2)
/* C2784 800E7384 27A40084 */  addiu      $a0, $sp, 0x84
/* C2788 800E7388 AFB90010 */  sw         $t9, 0x10($sp)
/* C278C 800E738C 924E000B */  lbu        $t6, 0xb($s2)
/* C2790 800E7390 27A5008C */  addiu      $a1, $sp, 0x8c
/* C2794 800E7394 0040F809 */  jalr       $v0
/* C2798 800E7398 AFAE0014 */   sw        $t6, 0x14($sp)
/* C279C 800E739C 1040000D */  beqz       $v0, .L800E73D4
/* C27A0 800E73A0 24180017 */   addiu     $t8, $zero, 0x17
/* C27A4 800E73A4 8FAF0084 */  lw         $t7, 0x84($sp)
/* C27A8 800E73A8 A7B800B4 */  sh         $t8, 0xb4($sp)
/* C27AC 800E73AC AFB000B8 */  sw         $s0, 0xb8($sp)
/* C27B0 800E73B0 A3B600C0 */  sb         $s6, 0xc0($sp)
/* C27B4 800E73B4 02A02025 */  or         $a0, $s5, $zero
/* C27B8 800E73B8 27A500B4 */  addiu      $a1, $sp, 0xb4
/* C27BC 800E73BC 00403025 */  or         $a2, $v0, $zero
/* C27C0 800E73C0 0C03A0D7 */  jal        func_800E835C
/* C27C4 800E73C4 AFAF00BC */   sw        $t7, 0xbc($sp)
/* C27C8 800E73C8 92190037 */  lbu        $t9, 0x37($s0)
/* C27CC 800E73CC 372E0002 */  ori        $t6, $t9, 2
/* C27D0 800E73D0 A20E0037 */  sb         $t6, 0x37($s0)
.L800E73D4:
/* C27D4 800E73D4 C7A4008C */  lwc1       $f4, 0x8c($sp)
.L800E73D8:
/* C27D8 800E73D8 C6080028 */  lwc1       $f8, 0x28($s0)
/* C27DC 800E73DC 02002025 */  or         $a0, $s0, $zero
/* C27E0 800E73E0 E604002C */  swc1       $f4, 0x2c($s0)
/* C27E4 800E73E4 8E380060 */  lw         $t8, 0x60($s1)
/* C27E8 800E73E8 C604002C */  lwc1       $f4, 0x2c($s0)
/* C27EC 800E73EC 02202825 */  or         $a1, $s1, $zero
/* C27F0 800E73F0 031E1021 */  addu       $v0, $t8, $fp
/* C27F4 800E73F4 C446000C */  lwc1       $f6, 0xc($v0)
/* C27F8 800E73F8 9052000A */  lbu        $s2, 0xa($v0)
/* C27FC 800E73FC 46083282 */  mul.s      $f10, $f6, $f8
/* C2800 800E7400 00000000 */  nop
/* C2804 800E7404 46045502 */  mul.s      $f20, $f10, $f4
/* C2808 800E7408 0C039BB5 */  jal        func_800E6ED4
/* C280C 800E740C 00000000 */   nop
/* C2810 800E7410 305400FF */  andi       $s4, $v0, 0xff
/* C2814 800E7414 02002025 */  or         $a0, $s0, $zero
/* C2818 800E7418 0C039AAD */  jal        func_800E6AB4
/* C281C 800E741C 02202825 */   or        $a1, $s1, $zero
/* C2820 800E7420 8EEF0000 */  lw         $t7, ($s7)
/* C2824 800E7424 8E240014 */  lw         $a0, 0x14($s1)
/* C2828 800E7428 8EE60008 */  lw         $a2, 8($s7)
/* C282C 800E742C 8DF30000 */  lw         $s3, ($t7)
/* C2830 800E7430 4407A000 */  mfc1       $a3, $f20
/* C2834 800E7434 AFB20018 */  sw         $s2, 0x18($sp)
/* C2838 800E7438 AFB40014 */  sw         $s4, 0x14($sp)
/* C283C 800E743C AFA20010 */  sw         $v0, 0x10($sp)
/* C2840 800E7440 8FA50034 */  lw         $a1, 0x34($sp)
/* C2844 800E7444 0C03A298 */  jal        func_800E8A60
/* C2848 800E7448 AFB3001C */   sw        $s3, 0x1c($sp)
/* C284C 800E744C 8FAE0034 */  lw         $t6, 0x34($sp)
/* C2850 800E7450 24190006 */  addiu      $t9, $zero, 6
/* C2854 800E7454 A7B900B4 */  sh         $t9, 0xb4($sp)
/* C2858 800E7458 AFAE00B8 */  sw         $t6, 0xb8($sp)
/* C285C 800E745C 8EF80000 */  lw         $t8, ($s7)
/* C2860 800E7460 02A02025 */  or         $a0, $s5, $zero
/* C2864 800E7464 27A500B4 */  addiu      $a1, $sp, 0xb4
/* C2868 800E7468 930F000D */  lbu        $t7, 0xd($t8)
/* C286C 800E746C A3AF00C0 */  sb         $t7, 0xc0($sp)
/* C2870 800E7470 8EF90000 */  lw         $t9, ($s7)
/* C2874 800E7474 8F2E0004 */  lw         $t6, 4($t9)
/* C2878 800E7478 AFAE00BC */  sw         $t6, 0xbc($sp)
/* C287C 800E747C 8EF80000 */  lw         $t8, ($s7)
/* C2880 800E7480 8F130000 */  lw         $s3, ($t8)
/* C2884 800E7484 0C03A0D7 */  jal        func_800E835C
/* C2888 800E7488 02603025 */   or        $a2, $s3, $zero
/* C288C 800E748C 1000011E */  b          .L800E7908
/* C2890 800E7490 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2894 800E7494 02202025 */  or         $a0, $s1, $zero
.L800E7498:
/* C2898 800E7498 326500FF */  andi       $a1, $s3, 0xff
/* C289C 800E749C 0C039BC7 */  jal        func_800E6F1C
/* C28A0 800E74A0 32C600FF */   andi      $a2, $s6, 0xff
/* C28A4 800E74A4 10400117 */  beqz       $v0, .L800E7904
/* C28A8 800E74A8 00408025 */   or        $s0, $v0, $zero
/* C28AC 800E74AC 904F0035 */  lbu        $t7, 0x35($v0)
/* C28B0 800E74B0 24160002 */  addiu      $s6, $zero, 2
/* C28B4 800E74B4 24190004 */  addiu      $t9, $zero, 4
/* C28B8 800E74B8 16CF0003 */  bne        $s6, $t7, .L800E74C8
/* C28BC 800E74BC 02202025 */   or        $a0, $s1, $zero
/* C28C0 800E74C0 10000110 */  b          .L800E7904
/* C28C4 800E74C4 A0590035 */   sb        $t9, 0x35($v0)
.L800E74C8:
/* C28C8 800E74C8 8E0E0020 */  lw         $t6, 0x20($s0)
/* C28CC 800E74CC 241E0003 */  addiu      $fp, $zero, 3
/* C28D0 800E74D0 A21E0035 */  sb         $fp, 0x35($s0)
/* C28D4 800E74D4 8DD80000 */  lw         $t8, ($t6)
/* C28D8 800E74D8 26050004 */  addiu      $a1, $s0, 4
/* C28DC 800E74DC 0C039ACF */  jal        func_800E6B3C
/* C28E0 800E74E0 8F060008 */   lw        $a2, 8($t8)
/* C28E4 800E74E4 10000108 */  b          .L800E7908
/* C28E8 800E74E8 8FBF0024 */   lw        $ra, 0x24($sp)
/* C28EC 800E74EC 02202025 */  or         $a0, $s1, $zero
/* C28F0 800E74F0 326500FF */  andi       $a1, $s3, 0xff
/* C28F4 800E74F4 0C039BC7 */  jal        func_800E6F1C
/* C28F8 800E74F8 32C600FF */   andi      $a2, $s6, 0xff
/* C28FC 800E74FC 10400101 */  beqz       $v0, .L800E7904
/* C2900 800E7500 00408025 */   or        $s0, $v0, $zero
/* C2904 800E7504 A0540033 */  sb         $s4, 0x33($v0)
/* C2908 800E7508 00402025 */  or         $a0, $v0, $zero
/* C290C 800E750C 0C039AAD */  jal        func_800E6AB4
/* C2910 800E7510 02202825 */   or        $a1, $s1, $zero
/* C2914 800E7514 8E23001C */  lw         $v1, 0x1c($s1)
/* C2918 800E7518 8E190024 */  lw         $t9, 0x24($s0)
/* C291C 800E751C 00023400 */  sll        $a2, $v0, 0x10
/* C2920 800E7520 00067C03 */  sra        $t7, $a2, 0x10
/* C2924 800E7524 03232023 */  subu       $a0, $t9, $v1
/* C2928 800E7528 04800003 */  bltz       $a0, .L800E7538
/* C292C 800E752C 01E03025 */   or        $a2, $t7, $zero
/* C2930 800E7530 10000002 */  b          .L800E753C
/* C2934 800E7534 00801025 */   or        $v0, $a0, $zero
.L800E7538:
/* C2938 800E7538 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800E753C:
/* C293C 800E753C 8E240014 */  lw         $a0, 0x14($s1)
/* C2940 800E7540 26050004 */  addiu      $a1, $s0, 4
/* C2944 800E7544 0C03A1C0 */  jal        func_800E8700
/* C2948 800E7548 00403825 */   or        $a3, $v0, $zero
/* C294C 800E754C 100000EE */  b          .L800E7908
/* C2950 800E7550 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2954 800E7554 8E300064 */  lw         $s0, 0x64($s1)
/* C2958 800E7558 520000EB */  beql       $s0, $zero, .L800E7908
/* C295C 800E755C 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2960 800E7560 02C09025 */  or         $s2, $s6, $zero
/* C2964 800E7564 920E0031 */  lbu        $t6, 0x31($s0)
.L800E7568:
/* C2968 800E7568 02002025 */  or         $a0, $s0, $zero
/* C296C 800E756C 02202825 */  or         $a1, $s1, $zero
/* C2970 800E7570 564E0012 */  bnel       $s2, $t6, .L800E75BC
/* C2974 800E7574 8E100000 */   lw        $s0, ($s0)
/* C2978 800E7578 0C039AAD */  jal        func_800E6AB4
/* C297C 800E757C A2130033 */   sb        $s3, 0x33($s0)
/* C2980 800E7580 8E23001C */  lw         $v1, 0x1c($s1)
/* C2984 800E7584 8E0F0024 */  lw         $t7, 0x24($s0)
/* C2988 800E7588 00023400 */  sll        $a2, $v0, 0x10
/* C298C 800E758C 0006C403 */  sra        $t8, $a2, 0x10
/* C2990 800E7590 01E32023 */  subu       $a0, $t7, $v1
/* C2994 800E7594 04800003 */  bltz       $a0, .L800E75A4
/* C2998 800E7598 03003025 */   or        $a2, $t8, $zero
/* C299C 800E759C 10000002 */  b          .L800E75A8
/* C29A0 800E75A0 00801025 */   or        $v0, $a0, $zero
.L800E75A4:
/* C29A4 800E75A4 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800E75A8:
/* C29A8 800E75A8 8E240014 */  lw         $a0, 0x14($s1)
/* C29AC 800E75AC 26050004 */  addiu      $a1, $s0, 4
/* C29B0 800E75B0 0C03A1C0 */  jal        func_800E8700
/* C29B4 800E75B4 00403825 */   or        $a3, $v0, $zero
/* C29B8 800E75B8 8E100000 */  lw         $s0, ($s0)
.L800E75BC:
/* C29BC 800E75BC 5600FFEA */  bnel       $s0, $zero, .L800E7568
/* C29C0 800E75C0 920E0031 */   lbu       $t6, 0x31($s0)
/* C29C4 800E75C4 100000D0 */  b          .L800E7908
/* C29C8 800E75C8 8FBF0024 */   lw        $ra, 0x24($sp)
/* C29CC 800E75CC 2A610041 */  slti       $at, $s3, 0x41
/* C29D0 800E75D0 14200008 */  bnez       $at, .L800E75F4
/* C29D4 800E75D4 02601025 */   or        $v0, $s3, $zero
/* C29D8 800E75D8 2401005B */  addiu      $at, $zero, 0x5b
/* C29DC 800E75DC 10410082 */  beq        $v0, $at, .L800E77E8
/* C29E0 800E75E0 2401005D */   addiu     $at, $zero, 0x5d
/* C29E4 800E75E4 504100C8 */  beql       $v0, $at, .L800E7908
/* C29E8 800E75E8 8FBF0024 */   lw        $ra, 0x24($sp)
/* C29EC 800E75EC 100000C6 */  b          .L800E7908
/* C29F0 800E75F0 8FBF0024 */   lw        $ra, 0x24($sp)
.L800E75F4:
/* C29F4 800E75F4 2841001C */  slti       $at, $v0, 0x1c
/* C29F8 800E75F8 14200006 */  bnez       $at, .L800E7614
/* C29FC 800E75FC 2459FFF9 */   addiu     $t9, $v0, -7
/* C2A00 800E7600 24010040 */  addiu      $at, $zero, 0x40
/* C2A04 800E7604 5041004D */  beql       $v0, $at, .L800E773C
/* C2A08 800E7608 8E2F0060 */   lw        $t7, 0x60($s1)
/* C2A0C 800E760C 100000BE */  b          .L800E7908
/* C2A10 800E7610 8FBF0024 */   lw        $ra, 0x24($sp)
.L800E7614:
/* C2A14 800E7614 2F210015 */  sltiu      $at, $t9, 0x15
/* C2A18 800E7618 102000BA */  beqz       $at, .L800E7904
/* C2A1C 800E761C 0019C880 */   sll       $t9, $t9, 2
/* C2A20 800E7620 3C018011 */  lui        $at, %hi(D_80110F34)
/* C2A24 800E7624 00390821 */  addu       $at, $at, $t9
/* C2A28 800E7628 8C390F34 */  lw         $t9, %lo(D_80110F34)($at)
/* C2A2C 800E762C 03200008 */  jr         $t9
/* C2A30 800E7630 00000000 */   nop
/* C2A34 800E7634 8E2E0060 */  lw         $t6, 0x60($s1)
/* C2A38 800E7638 0016C100 */  sll        $t8, $s6, 4
/* C2A3C 800E763C 01D87821 */  addu       $t7, $t6, $t8
/* C2A40 800E7640 A1F40007 */  sb         $s4, 7($t7)
/* C2A44 800E7644 8E300064 */  lw         $s0, 0x64($s1)
/* C2A48 800E7648 520000AF */  beql       $s0, $zero, .L800E7908
/* C2A4C 800E764C 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2A50 800E7650 02C09025 */  or         $s2, $s6, $zero
/* C2A54 800E7654 92190031 */  lbu        $t9, 0x31($s0)
.L800E7658:
/* C2A58 800E7658 02002025 */  or         $a0, $s0, $zero
/* C2A5C 800E765C 56590008 */  bnel       $s2, $t9, .L800E7680
/* C2A60 800E7660 8E100000 */   lw        $s0, ($s0)
/* C2A64 800E7664 0C039BB5 */  jal        func_800E6ED4
/* C2A68 800E7668 02202825 */   or        $a1, $s1, $zero
/* C2A6C 800E766C 8E240014 */  lw         $a0, 0x14($s1)
/* C2A70 800E7670 26050004 */  addiu      $a1, $s0, 4
/* C2A74 800E7674 0C03A2D4 */  jal        func_800E8B50
/* C2A78 800E7678 304600FF */   andi      $a2, $v0, 0xff
/* C2A7C 800E767C 8E100000 */  lw         $s0, ($s0)
.L800E7680:
/* C2A80 800E7680 5600FFF5 */  bnel       $s0, $zero, .L800E7658
/* C2A84 800E7684 92190031 */   lbu       $t9, 0x31($s0)
/* C2A88 800E7688 1000009F */  b          .L800E7908
/* C2A8C 800E768C 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2A90 800E7690 8E2E0060 */  lw         $t6, 0x60($s1)
/* C2A94 800E7694 0016C100 */  sll        $t8, $s6, 4
/* C2A98 800E7698 01D87821 */  addu       $t7, $t6, $t8
/* C2A9C 800E769C A1F40009 */  sb         $s4, 9($t7)
/* C2AA0 800E76A0 8E300064 */  lw         $s0, 0x64($s1)
/* C2AA4 800E76A4 52000098 */  beql       $s0, $zero, .L800E7908
/* C2AA8 800E76A8 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2AAC 800E76AC 02C09025 */  or         $s2, $s6, $zero
/* C2AB0 800E76B0 24130003 */  addiu      $s3, $zero, 3
/* C2AB4 800E76B4 92190031 */  lbu        $t9, 0x31($s0)
.L800E76B8:
/* C2AB8 800E76B8 56590016 */  bnel       $s2, $t9, .L800E7714
/* C2ABC 800E76BC 8E100000 */   lw        $s0, ($s0)
/* C2AC0 800E76C0 920E0034 */  lbu        $t6, 0x34($s0)
/* C2AC4 800E76C4 02002025 */  or         $a0, $s0, $zero
/* C2AC8 800E76C8 526E0012 */  beql       $s3, $t6, .L800E7714
/* C2ACC 800E76CC 8E100000 */   lw        $s0, ($s0)
/* C2AD0 800E76D0 0C039AAD */  jal        func_800E6AB4
/* C2AD4 800E76D4 02202825 */   or        $a1, $s1, $zero
/* C2AD8 800E76D8 8E23001C */  lw         $v1, 0x1c($s1)
/* C2ADC 800E76DC 8E0F0024 */  lw         $t7, 0x24($s0)
/* C2AE0 800E76E0 00023400 */  sll        $a2, $v0, 0x10
/* C2AE4 800E76E4 0006C403 */  sra        $t8, $a2, 0x10
/* C2AE8 800E76E8 01E32023 */  subu       $a0, $t7, $v1
/* C2AEC 800E76EC 04800003 */  bltz       $a0, .L800E76FC
/* C2AF0 800E76F0 03003025 */   or        $a2, $t8, $zero
/* C2AF4 800E76F4 10000002 */  b          .L800E7700
/* C2AF8 800E76F8 00801025 */   or        $v0, $a0, $zero
.L800E76FC:
/* C2AFC 800E76FC 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800E7700:
/* C2B00 800E7700 8E240014 */  lw         $a0, 0x14($s1)
/* C2B04 800E7704 26050004 */  addiu      $a1, $s0, 4
/* C2B08 800E7708 0C03A1C0 */  jal        func_800E8700
/* C2B0C 800E770C 00403825 */   or        $a3, $v0, $zero
/* C2B10 800E7710 8E100000 */  lw         $s0, ($s0)
.L800E7714:
/* C2B14 800E7714 5600FFE8 */  bnel       $s0, $zero, .L800E76B8
/* C2B18 800E7718 92190031 */   lbu       $t9, 0x31($s0)
/* C2B1C 800E771C 1000007A */  b          .L800E7908
/* C2B20 800E7720 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2B24 800E7724 8E390060 */  lw         $t9, 0x60($s1)
/* C2B28 800E7728 00167100 */  sll        $t6, $s6, 4
/* C2B2C 800E772C 032EC021 */  addu       $t8, $t9, $t6
/* C2B30 800E7730 10000074 */  b          .L800E7904
/* C2B34 800E7734 A3140008 */   sb        $s4, 8($t8)
/* C2B38 800E7738 8E2F0060 */  lw         $t7, 0x60($s1)
.L800E773C:
/* C2B3C 800E773C 0016C900 */  sll        $t9, $s6, 4
/* C2B40 800E7740 01F97021 */  addu       $t6, $t7, $t9
/* C2B44 800E7744 A1D4000B */  sb         $s4, 0xb($t6)
/* C2B48 800E7748 8E300064 */  lw         $s0, 0x64($s1)
/* C2B4C 800E774C 5200006E */  beql       $s0, $zero, .L800E7908
/* C2B50 800E7750 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2B54 800E7754 02C09025 */  or         $s2, $s6, $zero
/* C2B58 800E7758 24160002 */  addiu      $s6, $zero, 2
/* C2B5C 800E775C 241E0003 */  addiu      $fp, $zero, 3
/* C2B60 800E7760 24170004 */  addiu      $s7, $zero, 4
/* C2B64 800E7764 24150002 */  addiu      $s5, $zero, 2
/* C2B68 800E7768 24130003 */  addiu      $s3, $zero, 3
/* C2B6C 800E776C 92180031 */  lbu        $t8, 0x31($s0)
.L800E7770:
/* C2B70 800E7770 56580019 */  bnel       $s2, $t8, .L800E77D8
/* C2B74 800E7774 8E100000 */   lw        $s0, ($s0)
/* C2B78 800E7778 92020035 */  lbu        $v0, 0x35($s0)
/* C2B7C 800E777C 2A810040 */  slti       $at, $s4, 0x40
/* C2B80 800E7780 52620015 */  beql       $s3, $v0, .L800E77D8
/* C2B84 800E7784 8E100000 */   lw        $s0, ($s0)
/* C2B88 800E7788 14200005 */  bnez       $at, .L800E77A0
/* C2B8C 800E778C 00000000 */   nop
/* C2B90 800E7790 54400011 */  bnel       $v0, $zero, .L800E77D8
/* C2B94 800E7794 8E100000 */   lw        $s0, ($s0)
/* C2B98 800E7798 1000000E */  b          .L800E77D4
/* C2B9C 800E779C A2150035 */   sb        $s5, 0x35($s0)
.L800E77A0:
/* C2BA0 800E77A0 16C20003 */  bne        $s6, $v0, .L800E77B0
/* C2BA4 800E77A4 00000000 */   nop
/* C2BA8 800E77A8 1000000A */  b          .L800E77D4
/* C2BAC 800E77AC A2000035 */   sb        $zero, 0x35($s0)
.L800E77B0:
/* C2BB0 800E77B0 56E20009 */  bnel       $s7, $v0, .L800E77D8
/* C2BB4 800E77B4 8E100000 */   lw        $s0, ($s0)
/* C2BB8 800E77B8 8E0F0020 */  lw         $t7, 0x20($s0)
/* C2BBC 800E77BC A21E0035 */  sb         $fp, 0x35($s0)
/* C2BC0 800E77C0 02202025 */  or         $a0, $s1, $zero
/* C2BC4 800E77C4 8DF90000 */  lw         $t9, ($t7)
/* C2BC8 800E77C8 26050004 */  addiu      $a1, $s0, 4
/* C2BCC 800E77CC 0C039ACF */  jal        func_800E6B3C
/* C2BD0 800E77D0 8F260008 */   lw        $a2, 8($t9)
.L800E77D4:
/* C2BD4 800E77D4 8E100000 */  lw         $s0, ($s0)
.L800E77D8:
/* C2BD8 800E77D8 5600FFE5 */  bnel       $s0, $zero, .L800E7770
/* C2BDC 800E77DC 92180031 */   lbu       $t8, 0x31($s0)
/* C2BE0 800E77E0 10000049 */  b          .L800E7908
/* C2BE4 800E77E4 8FBF0024 */   lw        $ra, 0x24($sp)
.L800E77E8:
/* C2BE8 800E77E8 8E2E0060 */  lw         $t6, 0x60($s1)
/* C2BEC 800E77EC 0016C100 */  sll        $t8, $s6, 4
/* C2BF0 800E77F0 01D87821 */  addu       $t7, $t6, $t8
/* C2BF4 800E77F4 A1F4000A */  sb         $s4, 0xa($t7)
/* C2BF8 800E77F8 8E300064 */  lw         $s0, 0x64($s1)
/* C2BFC 800E77FC 52000042 */  beql       $s0, $zero, .L800E7908
/* C2C00 800E7800 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2C04 800E7804 02C09025 */  or         $s2, $s6, $zero
/* C2C08 800E7808 92190031 */  lbu        $t9, 0x31($s0)
.L800E780C:
/* C2C0C 800E780C 26050004 */  addiu      $a1, $s0, 4
/* C2C10 800E7810 328600FF */  andi       $a2, $s4, 0xff
/* C2C14 800E7814 56590004 */  bnel       $s2, $t9, .L800E7828
/* C2C18 800E7818 8E100000 */   lw        $s0, ($s0)
/* C2C1C 800E781C 0C03A2F8 */  jal        func_800E8BE0
/* C2C20 800E7820 8E240014 */   lw        $a0, 0x14($s1)
/* C2C24 800E7824 8E100000 */  lw         $s0, ($s0)
.L800E7828:
/* C2C28 800E7828 5600FFF8 */  bnel       $s0, $zero, .L800E780C
/* C2C2C 800E782C 92190031 */   lbu       $t9, 0x31($s0)
/* C2C30 800E7830 10000035 */  b          .L800E7908
/* C2C34 800E7834 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2C38 800E7838 8E220020 */  lw         $v0, 0x20($s1)
/* C2C3C 800E783C 0013C080 */  sll        $t8, $s3, 2
/* C2C40 800E7840 02202025 */  or         $a0, $s1, $zero
/* C2C44 800E7844 844E0000 */  lh         $t6, ($v0)
/* C2C48 800E7848 02C03025 */  or         $a2, $s6, $zero
/* C2C4C 800E784C 00587821 */  addu       $t7, $v0, $t8
/* C2C50 800E7850 026E082A */  slt        $at, $s3, $t6
/* C2C54 800E7854 5020002C */  beql       $at, $zero, .L800E7908
/* C2C58 800E7858 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2C5C 800E785C 0C039A40 */  jal        func_800E6900
/* C2C60 800E7860 8DE5000C */   lw        $a1, 0xc($t7)
/* C2C64 800E7864 10000028 */  b          .L800E7908
/* C2C68 800E7868 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2C6C 800E786C 8E390060 */  lw         $t9, 0x60($s1)
/* C2C70 800E7870 0016F100 */  sll        $fp, $s6, 4
/* C2C74 800E7874 001479C0 */  sll        $t7, $s4, 7
/* C2C78 800E7878 033E7021 */  addu       $t6, $t9, $fp
/* C2C7C 800E787C 85D80004 */  lh         $t8, 4($t6)
/* C2C80 800E7880 01F3C821 */  addu       $t9, $t7, $s3
/* C2C84 800E7884 272EE000 */  addiu      $t6, $t9, -0x2000
/* C2C88 800E7888 030E0019 */  multu      $t8, $t6
/* C2C8C 800E788C 00002012 */  mflo       $a0
/* C2C90 800E7890 04810003 */  bgez       $a0, .L800E78A0
/* C2C94 800E7894 00047B43 */   sra       $t7, $a0, 0xd
/* C2C98 800E7898 24811FFF */  addiu      $at, $a0, 0x1fff
/* C2C9C 800E789C 00017B43 */  sra        $t7, $at, 0xd
.L800E78A0:
/* C2CA0 800E78A0 0C037290 */  jal        func_800DCA40
/* C2CA4 800E78A4 01E02025 */   or        $a0, $t7, $zero
/* C2CA8 800E78A8 8E390060 */  lw         $t9, 0x60($s1)
/* C2CAC 800E78AC 46000506 */  mov.s      $f20, $f0
/* C2CB0 800E78B0 033EC021 */  addu       $t8, $t9, $fp
/* C2CB4 800E78B4 E700000C */  swc1       $f0, 0xc($t8)
/* C2CB8 800E78B8 8E300064 */  lw         $s0, 0x64($s1)
/* C2CBC 800E78BC 52000012 */  beql       $s0, $zero, .L800E7908
/* C2CC0 800E78C0 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2CC4 800E78C4 02C09025 */  or         $s2, $s6, $zero
/* C2CC8 800E78C8 920E0031 */  lbu        $t6, 0x31($s0)
.L800E78CC:
/* C2CCC 800E78CC 564E000B */  bnel       $s2, $t6, .L800E78FC
/* C2CD0 800E78D0 8E100000 */   lw        $s0, ($s0)
/* C2CD4 800E78D4 C6060028 */  lwc1       $f6, 0x28($s0)
/* C2CD8 800E78D8 C60A002C */  lwc1       $f10, 0x2c($s0)
/* C2CDC 800E78DC 8E240014 */  lw         $a0, 0x14($s1)
/* C2CE0 800E78E0 46143202 */  mul.s      $f8, $f6, $f20
/* C2CE4 800E78E4 26050004 */  addiu      $a1, $s0, 4
/* C2CE8 800E78E8 460A4102 */  mul.s      $f4, $f8, $f10
/* C2CEC 800E78EC 44062000 */  mfc1       $a2, $f4
/* C2CF0 800E78F0 0C03A1E8 */  jal        func_800E87A0
/* C2CF4 800E78F4 00000000 */   nop
/* C2CF8 800E78F8 8E100000 */  lw         $s0, ($s0)
.L800E78FC:
/* C2CFC 800E78FC 5600FFF3 */  bnel       $s0, $zero, .L800E78CC
/* C2D00 800E7900 920E0031 */   lbu       $t6, 0x31($s0)
.L800E7904:
/* C2D04 800E7904 8FBF0024 */  lw         $ra, 0x24($sp)
.L800E7908:
/* C2D08 800E7908 27BD00E0 */  addiu      $sp, $sp, 0xe0
/* C2D0C 800E790C 03E00008 */  jr         $ra
/* C2D10 800E7910 00000000 */   nop

glabel func_800E7914
/* C2D14 800E7914 03E00008 */  jr         $ra
/* C2D18 800E7918 00000000 */   nop

glabel func_800E791C
/* C2D1C 800E791C 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* C2D20 800E7920 AFB50034 */  sw         $s5, 0x34($sp)
/* C2D24 800E7924 AFB20028 */  sw         $s2, 0x28($sp)
/* C2D28 800E7928 248E0038 */  addiu      $t6, $a0, 0x38
/* C2D2C 800E792C 00809025 */  or         $s2, $a0, $zero
/* C2D30 800E7930 AFBF0044 */  sw         $ra, 0x44($sp)
/* C2D34 800E7934 AFBE0040 */  sw         $fp, 0x40($sp)
/* C2D38 800E7938 AFB7003C */  sw         $s7, 0x3c($sp)
/* C2D3C 800E793C AFB60038 */  sw         $s6, 0x38($sp)
/* C2D40 800E7940 AFB40030 */  sw         $s4, 0x30($sp)
/* C2D44 800E7944 AFB3002C */  sw         $s3, 0x2c($sp)
/* C2D48 800E7948 AFB10024 */  sw         $s1, 0x24($sp)
/* C2D4C 800E794C AFB00020 */  sw         $s0, 0x20($sp)
/* C2D50 800E7950 F7B40018 */  sdc1       $f20, 0x18($sp)
/* C2D54 800E7954 AFAE0050 */  sw         $t6, 0x50($sp)
/* C2D58 800E7958 24950048 */  addiu      $s5, $a0, 0x48
.L800E795C:
/* C2D5C 800E795C 964F0038 */  lhu        $t7, 0x38($s2)
/* C2D60 800E7960 2DE10018 */  sltiu      $at, $t7, 0x18
/* C2D64 800E7964 10200161 */  beqz       $at, .L800E7EEC
/* C2D68 800E7968 000F7880 */   sll       $t7, $t7, 2
/* C2D6C 800E796C 3C018011 */  lui        $at, %hi(D_80110F88)
/* C2D70 800E7970 002F0821 */  addu       $at, $at, $t7
/* C2D74 800E7974 8C2F0F88 */  lw         $t7, %lo(D_80110F88)($at)
/* C2D78 800E7978 01E00008 */  jr         $t7
/* C2D7C 800E797C 00000000 */   nop
/* C2D80 800E7980 8E440018 */  lw         $a0, 0x18($s2)
/* C2D84 800E7984 5080015A */  beql       $a0, $zero, .L800E7EF0
/* C2D88 800E7988 02A02025 */   or        $a0, $s5, $zero
/* C2D8C 800E798C 0C03B369 */  jal        func_800ECDA4
/* C2D90 800E7990 27A50088 */   addiu     $a1, $sp, 0x88
/* C2D94 800E7994 87A20088 */  lh         $v0, 0x88($sp)
/* C2D98 800E7998 24010001 */  addiu      $at, $zero, 1
/* C2D9C 800E799C 02408825 */  or         $s1, $s2, $zero
/* C2DA0 800E79A0 10410009 */  beq        $v0, $at, .L800E79C8
/* C2DA4 800E79A4 27A40088 */   addiu     $a0, $sp, 0x88
/* C2DA8 800E79A8 24010003 */  addiu      $at, $zero, 3
/* C2DAC 800E79AC 1041000F */  beq        $v0, $at, .L800E79EC
/* C2DB0 800E79B0 02402825 */   or        $a1, $s2, $zero
/* C2DB4 800E79B4 24010004 */  addiu      $at, $zero, 4
/* C2DB8 800E79B8 10410012 */  beq        $v0, $at, .L800E7A04
/* C2DBC 800E79BC 24180002 */   addiu     $t8, $zero, 2
/* C2DC0 800E79C0 1000014B */  b          .L800E7EF0
/* C2DC4 800E79C4 02A02025 */   or        $a0, $s5, $zero
.L800E79C8:
/* C2DC8 800E79C8 AFB200D0 */  sw         $s2, 0xd0($sp)
/* C2DCC 800E79CC 0C039C3F */  jal        func_800E70FC
/* C2DD0 800E79D0 AFB5004C */   sw        $s5, 0x4c($sp)
/* C2DD4 800E79D4 8FB200D0 */  lw         $s2, 0xd0($sp)
/* C2DD8 800E79D8 8FB5004C */  lw         $s5, 0x4c($sp)
/* C2DDC 800E79DC 0C039B60 */  jal        func_800E6D80
/* C2DE0 800E79E0 02402025 */   or        $a0, $s2, $zero
/* C2DE4 800E79E4 10000142 */  b          .L800E7EF0
/* C2DE8 800E79E8 02A02025 */   or        $a0, $s5, $zero
.L800E79EC:
/* C2DEC 800E79EC 0C039B97 */  jal        func_800E6E5C
/* C2DF0 800E79F0 27A40088 */   addiu     $a0, $sp, 0x88
/* C2DF4 800E79F4 0C039B60 */  jal        func_800E6D80
/* C2DF8 800E79F8 02402025 */   or        $a0, $s2, $zero
/* C2DFC 800E79FC 1000013C */  b          .L800E7EF0
/* C2E00 800E7A00 02A02025 */   or        $a0, $s5, $zero
.L800E7A04:
/* C2E04 800E7A04 AE58002C */  sw         $t8, 0x2c($s2)
/* C2E08 800E7A08 24190010 */  addiu      $t9, $zero, 0x10
/* C2E0C 800E7A0C 3C067FFF */  lui        $a2, 0x7fff
/* C2E10 800E7A10 A7B90088 */  sh         $t9, 0x88($sp)
/* C2E14 800E7A14 34C6FFFF */  ori        $a2, $a2, 0xffff
/* C2E18 800E7A18 02A02025 */  or         $a0, $s5, $zero
/* C2E1C 800E7A1C 0C03A0D7 */  jal        func_800E835C
/* C2E20 800E7A20 27A50088 */   addiu     $a1, $sp, 0x88
/* C2E24 800E7A24 10000132 */  b          .L800E7EF0
/* C2E28 800E7A28 02A02025 */   or        $a0, $s5, $zero
/* C2E2C 800E7A2C 240E0009 */  addiu      $t6, $zero, 9
/* C2E30 800E7A30 A7AE00BC */  sh         $t6, 0xbc($sp)
/* C2E34 800E7A34 8E46005C */  lw         $a2, 0x5c($s2)
/* C2E38 800E7A38 02A02025 */  or         $a0, $s5, $zero
/* C2E3C 800E7A3C 0C03A0D7 */  jal        func_800E835C
/* C2E40 800E7A40 27A500BC */   addiu     $a1, $sp, 0xbc
/* C2E44 800E7A44 1000012A */  b          .L800E7EF0
/* C2E48 800E7A48 02A02025 */   or        $a0, $s5, $zero
/* C2E4C 800E7A4C 8E50003C */  lw         $s0, 0x3c($s2)
/* C2E50 800E7A50 8E440014 */  lw         $a0, 0x14($s2)
/* C2E54 800E7A54 0C03A174 */  jal        func_800E85D0
/* C2E58 800E7A58 02002825 */   or        $a1, $s0, $zero
/* C2E5C 800E7A5C 8E440014 */  lw         $a0, 0x14($s2)
/* C2E60 800E7A60 0C03A194 */  jal        func_800E8650
/* C2E64 800E7A64 02002825 */   or        $a1, $s0, $zero
/* C2E68 800E7A68 8E110010 */  lw         $s1, 0x10($s0)
/* C2E6C 800E7A6C 02402025 */  or         $a0, $s2, $zero
/* C2E70 800E7A70 922F0037 */  lbu        $t7, 0x37($s1)
/* C2E74 800E7A74 51E00004 */  beql       $t7, $zero, .L800E7A88
/* C2E78 800E7A78 02402025 */   or        $a0, $s2, $zero
/* C2E7C 800E7A7C 0C039FD0 */  jal        func_800E7F40
/* C2E80 800E7A80 02202825 */   or        $a1, $s1, $zero
/* C2E84 800E7A84 02402025 */  or         $a0, $s2, $zero
.L800E7A88:
/* C2E88 800E7A88 0C039B44 */  jal        func_800E6D10
/* C2E8C 800E7A8C 02002825 */   or        $a1, $s0, $zero
/* C2E90 800E7A90 10000117 */  b          .L800E7EF0
/* C2E94 800E7A94 02A02025 */   or        $a0, $s5, $zero
/* C2E98 800E7A98 8E50003C */  lw         $s0, 0x3c($s2)
/* C2E9C 800E7A9C 24190001 */  addiu      $t9, $zero, 1
/* C2EA0 800E7AA0 8E110010 */  lw         $s1, 0x10($s0)
/* C2EA4 800E7AA4 92380034 */  lbu        $t8, 0x34($s1)
/* C2EA8 800E7AA8 57000003 */  bnel       $t8, $zero, .L800E7AB8
/* C2EAC 800E7AAC 924E0044 */   lbu       $t6, 0x44($s2)
/* C2EB0 800E7AB0 A2390034 */  sb         $t9, 0x34($s1)
/* C2EB4 800E7AB4 924E0044 */  lbu        $t6, 0x44($s2)
.L800E7AB8:
/* C2EB8 800E7AB8 8E530040 */  lw         $s3, 0x40($s2)
/* C2EBC 800E7ABC 02202025 */  or         $a0, $s1, $zero
/* C2EC0 800E7AC0 A22E0030 */  sb         $t6, 0x30($s1)
/* C2EC4 800E7AC4 8E4F001C */  lw         $t7, 0x1c($s2)
/* C2EC8 800E7AC8 02402825 */  or         $a1, $s2, $zero
/* C2ECC 800E7ACC 01F3C021 */  addu       $t8, $t7, $s3
/* C2ED0 800E7AD0 0C039AAD */  jal        func_800E6AB4
/* C2ED4 800E7AD4 AE380024 */   sw        $t8, 0x24($s1)
/* C2ED8 800E7AD8 00023400 */  sll        $a2, $v0, 0x10
/* C2EDC 800E7ADC 0006CC03 */  sra        $t9, $a2, 0x10
/* C2EE0 800E7AE0 03203025 */  or         $a2, $t9, $zero
/* C2EE4 800E7AE4 8E440014 */  lw         $a0, 0x14($s2)
/* C2EE8 800E7AE8 02002825 */  or         $a1, $s0, $zero
/* C2EEC 800E7AEC 0C03A1C0 */  jal        func_800E8700
/* C2EF0 800E7AF0 02603825 */   or        $a3, $s3, $zero
/* C2EF4 800E7AF4 100000FE */  b          .L800E7EF0
/* C2EF8 800E7AF8 02A02025 */   or        $a0, $s5, $zero
/* C2EFC 800E7AFC 8E590074 */  lw         $t9, 0x74($s2)
/* C2F00 800E7B00 8E540040 */  lw         $s4, 0x40($s2)
/* C2F04 800E7B04 8E51003C */  lw         $s1, 0x3c($s2)
/* C2F08 800E7B08 27A500A8 */  addiu      $a1, $sp, 0xa8
/* C2F0C 800E7B0C 0320F809 */  jalr       $t9
/* C2F10 800E7B10 02802025 */   or        $a0, $s4, $zero
/* C2F14 800E7B14 444EF800 */  cfc1       $t6, $31
/* C2F18 800E7B18 240F0001 */  addiu      $t7, $zero, 1
/* C2F1C 800E7B1C 44CFF800 */  ctc1       $t7, $31
/* C2F20 800E7B20 C7A400A8 */  lwc1       $f4, 0xa8($sp)
/* C2F24 800E7B24 00409825 */  or         $s3, $v0, $zero
/* C2F28 800E7B28 3C014F00 */  lui        $at, 0x4f00
/* C2F2C 800E7B2C 460021A4 */  cvt.w.s    $f6, $f4
/* C2F30 800E7B30 02202025 */  or         $a0, $s1, $zero
/* C2F34 800E7B34 02402825 */  or         $a1, $s2, $zero
/* C2F38 800E7B38 444FF800 */  cfc1       $t7, $31
/* C2F3C 800E7B3C 00000000 */  nop
/* C2F40 800E7B40 31EF0078 */  andi       $t7, $t7, 0x78
/* C2F44 800E7B44 51E00013 */  beql       $t7, $zero, .L800E7B94
/* C2F48 800E7B48 440F3000 */   mfc1      $t7, $f6
/* C2F4C 800E7B4C 44813000 */  mtc1       $at, $f6
/* C2F50 800E7B50 240F0001 */  addiu      $t7, $zero, 1
/* C2F54 800E7B54 46062181 */  sub.s      $f6, $f4, $f6
/* C2F58 800E7B58 44CFF800 */  ctc1       $t7, $31
/* C2F5C 800E7B5C 00000000 */  nop
/* C2F60 800E7B60 460031A4 */  cvt.w.s    $f6, $f6
/* C2F64 800E7B64 444FF800 */  cfc1       $t7, $31
/* C2F68 800E7B68 00000000 */  nop
/* C2F6C 800E7B6C 31EF0078 */  andi       $t7, $t7, 0x78
/* C2F70 800E7B70 15E00005 */  bnez       $t7, .L800E7B88
/* C2F74 800E7B74 00000000 */   nop
/* C2F78 800E7B78 440F3000 */  mfc1       $t7, $f6
/* C2F7C 800E7B7C 3C018000 */  lui        $at, 0x8000
/* C2F80 800E7B80 10000007 */  b          .L800E7BA0
/* C2F84 800E7B84 01E17825 */   or        $t7, $t7, $at
.L800E7B88:
/* C2F88 800E7B88 10000005 */  b          .L800E7BA0
/* C2F8C 800E7B8C 240FFFFF */   addiu     $t7, $zero, -1
/* C2F90 800E7B90 440F3000 */  mfc1       $t7, $f6
.L800E7B94:
/* C2F94 800E7B94 00000000 */  nop
/* C2F98 800E7B98 05E0FFFB */  bltz       $t7, .L800E7B88
/* C2F9C 800E7B9C 00000000 */   nop
.L800E7BA0:
/* C2FA0 800E7BA0 44CEF800 */  ctc1       $t6, $31
/* C2FA4 800E7BA4 0C039AAD */  jal        func_800E6AB4
/* C2FA8 800E7BA8 A22F0036 */   sb        $t7, 0x36($s1)
/* C2FAC 800E7BAC 8E43001C */  lw         $v1, 0x1c($s2)
/* C2FB0 800E7BB0 8E390024 */  lw         $t9, 0x24($s1)
/* C2FB4 800E7BB4 00023400 */  sll        $a2, $v0, 0x10
/* C2FB8 800E7BB8 0006C403 */  sra        $t8, $a2, 0x10
/* C2FBC 800E7BBC 03232023 */  subu       $a0, $t9, $v1
/* C2FC0 800E7BC0 04800003 */  bltz       $a0, .L800E7BD0
/* C2FC4 800E7BC4 03003025 */   or        $a2, $t8, $zero
/* C2FC8 800E7BC8 10000002 */  b          .L800E7BD4
/* C2FCC 800E7BCC 00801025 */   or        $v0, $a0, $zero
.L800E7BD0:
/* C2FD0 800E7BD0 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800E7BD4:
/* C2FD4 800E7BD4 8E440014 */  lw         $a0, 0x14($s2)
/* C2FD8 800E7BD8 26250004 */  addiu      $a1, $s1, 4
/* C2FDC 800E7BDC 0C03A1C0 */  jal        func_800E8700
/* C2FE0 800E7BE0 00403825 */   or        $a3, $v0, $zero
/* C2FE4 800E7BE4 240E0016 */  addiu      $t6, $zero, 0x16
/* C2FE8 800E7BE8 A7AE00BC */  sh         $t6, 0xbc($sp)
/* C2FEC 800E7BEC AFB100C0 */  sw         $s1, 0xc0($sp)
/* C2FF0 800E7BF0 AFB400C4 */  sw         $s4, 0xc4($sp)
/* C2FF4 800E7BF4 02A02025 */  or         $a0, $s5, $zero
/* C2FF8 800E7BF8 27A500BC */  addiu      $a1, $sp, 0xbc
/* C2FFC 800E7BFC 0C03A0D7 */  jal        func_800E835C
/* C3000 800E7C00 02603025 */   or        $a2, $s3, $zero
/* C3004 800E7C04 100000BA */  b          .L800E7EF0
/* C3008 800E7C08 02A02025 */   or        $a0, $s5, $zero
/* C300C 800E7C0C 8E590074 */  lw         $t9, 0x74($s2)
/* C3010 800E7C10 8E540040 */  lw         $s4, 0x40($s2)
/* C3014 800E7C14 8E51003C */  lw         $s1, 0x3c($s2)
/* C3018 800E7C18 92500044 */  lbu        $s0, 0x44($s2)
/* C301C 800E7C1C 27A500A8 */  addiu      $a1, $sp, 0xa8
/* C3020 800E7C20 0320F809 */  jalr       $t9
/* C3024 800E7C24 02802025 */   or        $a0, $s4, $zero
/* C3028 800E7C28 C7A800A8 */  lwc1       $f8, 0xa8($sp)
/* C302C 800E7C2C C6240028 */  lwc1       $f4, 0x28($s1)
/* C3030 800E7C30 0010C100 */  sll        $t8, $s0, 4
/* C3034 800E7C34 E628002C */  swc1       $f8, 0x2c($s1)
/* C3038 800E7C38 C626002C */  lwc1       $f6, 0x2c($s1)
/* C303C 800E7C3C 8E4F0060 */  lw         $t7, 0x60($s2)
/* C3040 800E7C40 00409825 */  or         $s3, $v0, $zero
/* C3044 800E7C44 46062202 */  mul.s      $f8, $f4, $f6
/* C3048 800E7C48 01F87021 */  addu       $t6, $t7, $t8
/* C304C 800E7C4C C5CA000C */  lwc1       $f10, 0xc($t6)
/* C3050 800E7C50 8E440014 */  lw         $a0, 0x14($s2)
/* C3054 800E7C54 26250004 */  addiu      $a1, $s1, 4
/* C3058 800E7C58 46085102 */  mul.s      $f4, $f10, $f8
/* C305C 800E7C5C 44062000 */  mfc1       $a2, $f4
/* C3060 800E7C60 0C03A1E8 */  jal        func_800E87A0
/* C3064 800E7C64 00000000 */   nop
/* C3068 800E7C68 24190017 */  addiu      $t9, $zero, 0x17
/* C306C 800E7C6C A7B900BC */  sh         $t9, 0xbc($sp)
/* C3070 800E7C70 AFB100C0 */  sw         $s1, 0xc0($sp)
/* C3074 800E7C74 AFB400C4 */  sw         $s4, 0xc4($sp)
/* C3078 800E7C78 A3B000C8 */  sb         $s0, 0xc8($sp)
/* C307C 800E7C7C 02A02025 */  or         $a0, $s5, $zero
/* C3080 800E7C80 27A500BC */  addiu      $a1, $sp, 0xbc
/* C3084 800E7C84 0C03A0D7 */  jal        func_800E835C
/* C3088 800E7C88 02603025 */   or        $a2, $s3, $zero
/* C308C 800E7C8C 10000098 */  b          .L800E7EF0
/* C3090 800E7C90 02A02025 */   or        $a0, $s5, $zero
/* C3094 800E7C94 02408825 */  or         $s1, $s2, $zero
/* C3098 800E7C98 8FA40050 */  lw         $a0, 0x50($sp)
/* C309C 800E7C9C AFB200D0 */  sw         $s2, 0xd0($sp)
/* C30A0 800E7CA0 0C039C3F */  jal        func_800E70FC
/* C30A4 800E7CA4 AFB5004C */   sw        $s5, 0x4c($sp)
/* C30A8 800E7CA8 8FB200D0 */  lw         $s2, 0xd0($sp)
/* C30AC 800E7CAC 1000008F */  b          .L800E7EEC
/* C30B0 800E7CB0 8FB5004C */   lw        $s5, 0x4c($sp)
/* C30B4 800E7CB4 02402825 */  or         $a1, $s2, $zero
/* C30B8 800E7CB8 0C039B97 */  jal        func_800E6E5C
/* C30BC 800E7CBC 8FA40050 */   lw        $a0, 0x50($sp)
/* C30C0 800E7CC0 1000008B */  b          .L800E7EF0
/* C30C4 800E7CC4 02A02025 */   or        $a0, $s5, $zero
/* C30C8 800E7CC8 8E4F002C */  lw         $t7, 0x2c($s2)
/* C30CC 800E7CCC 24010001 */  addiu      $at, $zero, 1
/* C30D0 800E7CD0 24180001 */  addiu      $t8, $zero, 1
/* C30D4 800E7CD4 11E10085 */  beq        $t7, $at, .L800E7EEC
/* C30D8 800E7CD8 02402025 */   or        $a0, $s2, $zero
/* C30DC 800E7CDC 0C039B60 */  jal        func_800E6D80
/* C30E0 800E7CE0 AE58002C */   sw        $t8, 0x2c($s2)
/* C30E4 800E7CE4 10000082 */  b          .L800E7EF0
/* C30E8 800E7CE8 02A02025 */   or        $a0, $s5, $zero
/* C30EC 800E7CEC 8E4E002C */  lw         $t6, 0x2c($s2)
/* C30F0 800E7CF0 24010002 */  addiu      $at, $zero, 2
/* C30F4 800E7CF4 55C1007E */  bnel       $t6, $at, .L800E7EF0
/* C30F8 800E7CF8 02A02025 */   or        $a0, $s5, $zero
/* C30FC 800E7CFC 8E510064 */  lw         $s1, 0x64($s2)
/* C3100 800E7D00 12200013 */  beqz       $s1, .L800E7D50
/* C3104 800E7D04 26300004 */   addiu     $s0, $s1, 4
.L800E7D08:
/* C3108 800E7D08 02002825 */  or         $a1, $s0, $zero
/* C310C 800E7D0C 0C03A174 */  jal        func_800E85D0
/* C3110 800E7D10 8E440014 */   lw        $a0, 0x14($s2)
/* C3114 800E7D14 8E440014 */  lw         $a0, 0x14($s2)
/* C3118 800E7D18 0C03A194 */  jal        func_800E8650
/* C311C 800E7D1C 02002825 */   or        $a1, $s0, $zero
/* C3120 800E7D20 92390037 */  lbu        $t9, 0x37($s1)
/* C3124 800E7D24 02402025 */  or         $a0, $s2, $zero
/* C3128 800E7D28 53200004 */  beql       $t9, $zero, .L800E7D3C
/* C312C 800E7D2C 02402025 */   or        $a0, $s2, $zero
/* C3130 800E7D30 0C039FD0 */  jal        func_800E7F40
/* C3134 800E7D34 02202825 */   or        $a1, $s1, $zero
/* C3138 800E7D38 02402025 */  or         $a0, $s2, $zero
.L800E7D3C:
/* C313C 800E7D3C 0C039B44 */  jal        func_800E6D10
/* C3140 800E7D40 02002825 */   or        $a1, $s0, $zero
/* C3144 800E7D44 8E510064 */  lw         $s1, 0x64($s2)
/* C3148 800E7D48 5620FFEF */  bnel       $s1, $zero, .L800E7D08
/* C314C 800E7D4C 26300004 */   addiu     $s0, $s1, 4
.L800E7D50:
/* C3150 800E7D50 AE40001C */  sw         $zero, 0x1c($s2)
/* C3154 800E7D54 10000065 */  b          .L800E7EEC
/* C3158 800E7D58 AE40002C */   sw        $zero, 0x2c($s2)
/* C315C 800E7D5C 8E4F002C */  lw         $t7, 0x2c($s2)
/* C3160 800E7D60 24010001 */  addiu      $at, $zero, 1
/* C3164 800E7D64 02A02025 */  or         $a0, $s5, $zero
/* C3168 800E7D68 55E10061 */  bnel       $t7, $at, .L800E7EF0
/* C316C 800E7D6C 02A02025 */   or        $a0, $s5, $zero
/* C3170 800E7D70 0C03A090 */  jal        func_800E8240
/* C3174 800E7D74 00002825 */   or        $a1, $zero, $zero
/* C3178 800E7D78 02A02025 */  or         $a0, $s5, $zero
/* C317C 800E7D7C 0C03A090 */  jal        func_800E8240
/* C3180 800E7D80 24050002 */   addiu     $a1, $zero, 2
/* C3184 800E7D84 8E510064 */  lw         $s1, 0x64($s2)
/* C3188 800E7D88 1220000D */  beqz       $s1, .L800E7DC0
/* C318C 800E7D8C 26300004 */   addiu     $s0, $s1, 4
.L800E7D90:
/* C3190 800E7D90 02002825 */  or         $a1, $s0, $zero
/* C3194 800E7D94 02402025 */  or         $a0, $s2, $zero
/* C3198 800E7D98 0C039B1A */  jal        func_800E6C68
/* C319C 800E7D9C 3406C350 */   ori       $a2, $zero, 0xc350
/* C31A0 800E7DA0 10400004 */  beqz       $v0, .L800E7DB4
/* C31A4 800E7DA4 02402025 */   or        $a0, $s2, $zero
/* C31A8 800E7DA8 02002825 */  or         $a1, $s0, $zero
/* C31AC 800E7DAC 0C039ACF */  jal        func_800E6B3C
/* C31B0 800E7DB0 3406C350 */   ori       $a2, $zero, 0xc350
.L800E7DB4:
/* C31B4 800E7DB4 8E310000 */  lw         $s1, ($s1)
/* C31B8 800E7DB8 5620FFF5 */  bnel       $s1, $zero, .L800E7D90
/* C31BC 800E7DBC 26300004 */   addiu     $s0, $s1, 4
.L800E7DC0:
/* C31C0 800E7DC0 24180002 */  addiu      $t8, $zero, 2
/* C31C4 800E7DC4 AE58002C */  sw         $t8, 0x2c($s2)
/* C31C8 800E7DC8 240E0010 */  addiu      $t6, $zero, 0x10
/* C31CC 800E7DCC 3C067FFF */  lui        $a2, 0x7fff
/* C31D0 800E7DD0 A7AE00BC */  sh         $t6, 0xbc($sp)
/* C31D4 800E7DD4 34C6FFFF */  ori        $a2, $a2, 0xffff
/* C31D8 800E7DD8 02A02025 */  or         $a0, $s5, $zero
/* C31DC 800E7DDC 0C03A0D7 */  jal        func_800E835C
/* C31E0 800E7DE0 27A500BC */   addiu     $a1, $sp, 0xbc
/* C31E4 800E7DE4 10000042 */  b          .L800E7EF0
/* C31E8 800E7DE8 02A02025 */   or        $a0, $s5, $zero
/* C31EC 800E7DEC 8E510064 */  lw         $s1, 0x64($s2)
/* C31F0 800E7DF0 8659003C */  lh         $t9, 0x3c($s2)
/* C31F4 800E7DF4 1220003D */  beqz       $s1, .L800E7EEC
/* C31F8 800E7DF8 A6590032 */   sh        $t9, 0x32($s2)
/* C31FC 800E7DFC 02202025 */  or         $a0, $s1, $zero
.L800E7E00:
/* C3200 800E7E00 0C039AAD */  jal        func_800E6AB4
/* C3204 800E7E04 02402825 */   or        $a1, $s2, $zero
/* C3208 800E7E08 8E43001C */  lw         $v1, 0x1c($s2)
/* C320C 800E7E0C 8E380024 */  lw         $t8, 0x24($s1)
/* C3210 800E7E10 00023400 */  sll        $a2, $v0, 0x10
/* C3214 800E7E14 00067C03 */  sra        $t7, $a2, 0x10
/* C3218 800E7E18 03032023 */  subu       $a0, $t8, $v1
/* C321C 800E7E1C 04800003 */  bltz       $a0, .L800E7E2C
/* C3220 800E7E20 01E03025 */   or        $a2, $t7, $zero
/* C3224 800E7E24 10000002 */  b          .L800E7E30
/* C3228 800E7E28 00801025 */   or        $v0, $a0, $zero
.L800E7E2C:
/* C322C 800E7E2C 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800E7E30:
/* C3230 800E7E30 8E440014 */  lw         $a0, 0x14($s2)
/* C3234 800E7E34 26250004 */  addiu      $a1, $s1, 4
/* C3238 800E7E38 0C03A1C0 */  jal        func_800E8700
/* C323C 800E7E3C 00403825 */   or        $a3, $v0, $zero
/* C3240 800E7E40 8E310000 */  lw         $s1, ($s1)
/* C3244 800E7E44 5620FFEE */  bnel       $s1, $zero, .L800E7E00
/* C3248 800E7E48 02202025 */   or        $a0, $s1, $zero
/* C324C 800E7E4C 10000028 */  b          .L800E7EF0
/* C3250 800E7E50 02A02025 */   or        $a0, $s5, $zero
/* C3254 800E7E54 8E4E003C */  lw         $t6, 0x3c($s2)
/* C3258 800E7E58 8E590040 */  lw         $t9, 0x40($s2)
/* C325C 800E7E5C 8E4F0044 */  lw         $t7, 0x44($s2)
/* C3260 800E7E60 AE4E007C */  sw         $t6, 0x7c($s2)
/* C3264 800E7E64 AE590080 */  sw         $t9, 0x80($s2)
/* C3268 800E7E68 10000020 */  b          .L800E7EEC
/* C326C 800E7E6C AE4F0084 */   sw        $t7, 0x84($s2)
/* C3270 800E7E70 9250003C */  lbu        $s0, 0x3c($s2)
/* C3274 800E7E74 8E4E0060 */  lw         $t6, 0x60($s2)
/* C3278 800E7E78 9258003D */  lbu        $t8, 0x3d($s2)
/* C327C 800E7E7C 0010C900 */  sll        $t9, $s0, 4
/* C3280 800E7E80 01D97821 */  addu       $t7, $t6, $t9
/* C3284 800E7E84 10000019 */  b          .L800E7EEC
/* C3288 800E7E88 A1F80008 */   sb        $t8, 8($t7)
/* C328C 800E7E8C 8E45003C */  lw         $a1, 0x3c($s2)
/* C3290 800E7E90 240F01E8 */  addiu      $t7, $zero, 0x1e8
/* C3294 800E7E94 3C018011 */  lui        $at, %hi(D_80110FE8)
/* C3298 800E7E98 10A00008 */  beqz       $a1, .L800E7EBC
/* C329C 800E7E9C AE450018 */   sw        $a1, 0x18($s2)
/* C32A0 800E7EA0 C4260FE8 */  lwc1       $f6, %lo(D_80110FE8)($at)
/* C32A4 800E7EA4 C4AA0014 */  lwc1       $f10, 0x14($a1)
/* C32A8 800E7EA8 460A3202 */  mul.s      $f8, $f6, $f10
/* C32AC 800E7EAC 4600410D */  trunc.w.s  $f4, $f8
/* C32B0 800E7EB0 44182000 */  mfc1       $t8, $f4
/* C32B4 800E7EB4 10000002 */  b          .L800E7EC0
/* C32B8 800E7EB8 AE580024 */   sw        $t8, 0x24($s2)
.L800E7EBC:
/* C32BC 800E7EBC AE4F0024 */  sw         $t7, 0x24($s2)
.L800E7EC0:
/* C32C0 800E7EC0 8E450020 */  lw         $a1, 0x20($s2)
/* C32C4 800E7EC4 50A0000A */  beql       $a1, $zero, .L800E7EF0
/* C32C8 800E7EC8 02A02025 */   or        $a0, $s5, $zero
/* C32CC 800E7ECC 0C039A75 */  jal        func_800E69D4
/* C32D0 800E7ED0 02402025 */   or        $a0, $s2, $zero
/* C32D4 800E7ED4 10000006 */  b          .L800E7EF0
/* C32D8 800E7ED8 02A02025 */   or        $a0, $s5, $zero
/* C32DC 800E7EDC 8E45003C */  lw         $a1, 0x3c($s2)
/* C32E0 800E7EE0 02402025 */  or         $a0, $s2, $zero
/* C32E4 800E7EE4 0C039A75 */  jal        func_800E69D4
/* C32E8 800E7EE8 AE450020 */   sw        $a1, 0x20($s2)
.L800E7EEC:
/* C32EC 800E7EEC 02A02025 */  or         $a0, $s5, $zero
.L800E7EF0:
/* C32F0 800E7EF0 0C03A120 */  jal        func_800E8480
/* C32F4 800E7EF4 8FA50050 */   lw        $a1, 0x50($sp)
/* C32F8 800E7EF8 1040FE98 */  beqz       $v0, .L800E795C
/* C32FC 800E7EFC AE420028 */   sw        $v0, 0x28($s2)
/* C3300 800E7F00 8E4E001C */  lw         $t6, 0x1c($s2)
/* C3304 800E7F04 01C2C821 */  addu       $t9, $t6, $v0
/* C3308 800E7F08 AE59001C */  sw         $t9, 0x1c($s2)
/* C330C 800E7F0C 8FBF0044 */  lw         $ra, 0x44($sp)
/* C3310 800E7F10 8FBE0040 */  lw         $fp, 0x40($sp)
/* C3314 800E7F14 8FB7003C */  lw         $s7, 0x3c($sp)
/* C3318 800E7F18 8FB60038 */  lw         $s6, 0x38($sp)
/* C331C 800E7F1C 8FB50034 */  lw         $s5, 0x34($sp)
/* C3320 800E7F20 8FB40030 */  lw         $s4, 0x30($sp)
/* C3324 800E7F24 8FB3002C */  lw         $s3, 0x2c($sp)
/* C3328 800E7F28 8FB20028 */  lw         $s2, 0x28($sp)
/* C332C 800E7F2C 8FB10024 */  lw         $s1, 0x24($sp)
/* C3330 800E7F30 8FB00020 */  lw         $s0, 0x20($sp)
/* C3334 800E7F34 D7B40018 */  ldc1       $f20, 0x18($sp)
/* C3338 800E7F38 03E00008 */  jr         $ra
/* C333C 800E7F3C 27BD00D0 */   addiu     $sp, $sp, 0xd0

glabel func_800E7F40
/* C3340 800E7F40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C3344 800E7F44 AFBF0034 */  sw         $ra, 0x34($sp)
/* C3348 800E7F48 AFB70030 */  sw         $s7, 0x30($sp)
/* C334C 800E7F4C AFB6002C */  sw         $s6, 0x2c($sp)
/* C3350 800E7F50 AFB50028 */  sw         $s5, 0x28($sp)
/* C3354 800E7F54 AFB40024 */  sw         $s4, 0x24($sp)
/* C3358 800E7F58 AFB30020 */  sw         $s3, 0x20($sp)
/* C335C 800E7F5C AFB2001C */  sw         $s2, 0x1c($sp)
/* C3360 800E7F60 AFB10018 */  sw         $s1, 0x18($sp)
/* C3364 800E7F64 AFB00014 */  sw         $s0, 0x14($sp)
/* C3368 800E7F68 8C900050 */  lw         $s0, 0x50($a0)
/* C336C 800E7F6C 00A09025 */  or         $s2, $a1, $zero
/* C3370 800E7F70 0080A825 */  or         $s5, $a0, $zero
/* C3374 800E7F74 12000028 */  beqz       $s0, .L800E8018
/* C3378 800E7F78 24170017 */   addiu     $s7, $zero, 0x17
/* C337C 800E7F7C 24160016 */  addiu      $s6, $zero, 0x16
.L800E7F80:
/* C3380 800E7F80 8613000C */  lh         $s3, 0xc($s0)
/* C3384 800E7F84 8E110000 */  lw         $s1, ($s0)
/* C3388 800E7F88 52760004 */  beql       $s3, $s6, .L800E7F9C
/* C338C 800E7F8C 8E0E0010 */   lw        $t6, 0x10($s0)
/* C3390 800E7F90 1677001F */  bne        $s3, $s7, .L800E8010
/* C3394 800E7F94 00000000 */   nop
/* C3398 800E7F98 8E0E0010 */  lw         $t6, 0x10($s0)
.L800E7F9C:
/* C339C 800E7F9C 164E001C */  bne        $s2, $t6, .L800E8010
/* C33A0 800E7FA0 00000000 */   nop
/* C33A4 800E7FA4 8EB90078 */  lw         $t9, 0x78($s5)
/* C33A8 800E7FA8 8E040014 */  lw         $a0, 0x14($s0)
/* C33AC 800E7FAC 26B40048 */  addiu      $s4, $s5, 0x48
/* C33B0 800E7FB0 0320F809 */  jalr       $t9
/* C33B4 800E7FB4 00000000 */   nop
/* C33B8 800E7FB8 0C037248 */  jal        func_800DC920
/* C33BC 800E7FBC 02002025 */   or        $a0, $s0, $zero
/* C33C0 800E7FC0 12200005 */  beqz       $s1, .L800E7FD8
/* C33C4 800E7FC4 02002025 */   or        $a0, $s0, $zero
/* C33C8 800E7FC8 8E2F0008 */  lw         $t7, 8($s1)
/* C33CC 800E7FCC 8E180008 */  lw         $t8, 8($s0)
/* C33D0 800E7FD0 01F84021 */  addu       $t0, $t7, $t8
/* C33D4 800E7FD4 AE280008 */  sw         $t0, 8($s1)
.L800E7FD8:
/* C33D8 800E7FD8 0C037254 */  jal        func_800DC950
/* C33DC 800E7FDC 02802825 */   or        $a1, $s4, $zero
/* C33E0 800E7FE0 56760006 */  bnel       $s3, $s6, .L800E7FFC
/* C33E4 800E7FE4 924B0037 */   lbu       $t3, 0x37($s2)
/* C33E8 800E7FE8 92490037 */  lbu        $t1, 0x37($s2)
/* C33EC 800E7FEC 312A00FE */  andi       $t2, $t1, 0xfe
/* C33F0 800E7FF0 10000004 */  b          .L800E8004
/* C33F4 800E7FF4 A24A0037 */   sb        $t2, 0x37($s2)
/* C33F8 800E7FF8 924B0037 */  lbu        $t3, 0x37($s2)
.L800E7FFC:
/* C33FC 800E7FFC 316C00FD */  andi       $t4, $t3, 0xfd
/* C3400 800E8000 A24C0037 */  sb         $t4, 0x37($s2)
.L800E8004:
/* C3404 800E8004 924D0037 */  lbu        $t5, 0x37($s2)
/* C3408 800E8008 51A00004 */  beql       $t5, $zero, .L800E801C
/* C340C 800E800C 8FBF0034 */   lw        $ra, 0x34($sp)
.L800E8010:
/* C3410 800E8010 1620FFDB */  bnez       $s1, .L800E7F80
/* C3414 800E8014 02208025 */   or        $s0, $s1, $zero
.L800E8018:
/* C3418 800E8018 8FBF0034 */  lw         $ra, 0x34($sp)
.L800E801C:
/* C341C 800E801C 8FB00014 */  lw         $s0, 0x14($sp)
/* C3420 800E8020 8FB10018 */  lw         $s1, 0x18($sp)
/* C3424 800E8024 8FB2001C */  lw         $s2, 0x1c($sp)
/* C3428 800E8028 8FB30020 */  lw         $s3, 0x20($sp)
/* C342C 800E802C 8FB40024 */  lw         $s4, 0x24($sp)
/* C3430 800E8030 8FB50028 */  lw         $s5, 0x28($sp)
/* C3434 800E8034 8FB6002C */  lw         $s6, 0x2c($sp)
/* C3438 800E8038 8FB70030 */  lw         $s7, 0x30($sp)
/* C343C 800E803C 03E00008 */  jr         $ra
/* C3440 800E8040 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800E8044
/* C3444 800E8044 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C3448 800E8048 AFBF0024 */  sw         $ra, 0x24($sp)
/* C344C 800E804C AFB20020 */  sw         $s2, 0x20($sp)
/* C3450 800E8050 AFB1001C */  sw         $s1, 0x1c($sp)
/* C3454 800E8054 AFB00018 */  sw         $s0, 0x18($sp)
/* C3458 800E8058 908E0034 */  lbu        $t6, 0x34($a0)
/* C345C 800E805C 00808825 */  or         $s1, $a0, $zero
/* C3460 800E8060 00008025 */  or         $s0, $zero, $zero
/* C3464 800E8064 19C0000D */  blez       $t6, .L800E809C
/* C3468 800E8068 00009025 */   or        $s2, $zero, $zero
/* C346C 800E806C 8E2F0060 */  lw         $t7, 0x60($s1)
.L800E8070:
/* C3470 800E8070 02202025 */  or         $a0, $s1, $zero
/* C3474 800E8074 02002825 */  or         $a1, $s0, $zero
/* C3478 800E8078 01F2C021 */  addu       $t8, $t7, $s2
/* C347C 800E807C 0C039A55 */  jal        func_800E6954
/* C3480 800E8080 AF000000 */   sw        $zero, ($t8)
/* C3484 800E8084 92390034 */  lbu        $t9, 0x34($s1)
/* C3488 800E8088 26100001 */  addiu      $s0, $s0, 1
/* C348C 800E808C 26520010 */  addiu      $s2, $s2, 0x10
/* C3490 800E8090 0219082A */  slt        $at, $s0, $t9
/* C3494 800E8094 5420FFF6 */  bnel       $at, $zero, .L800E8070
/* C3498 800E8098 8E2F0060 */   lw        $t7, 0x60($s1)
.L800E809C:
/* C349C 800E809C 8FBF0024 */  lw         $ra, 0x24($sp)
/* C34A0 800E80A0 8FB00018 */  lw         $s0, 0x18($sp)
/* C34A4 800E80A4 8FB1001C */  lw         $s1, 0x1c($sp)
/* C34A8 800E80A8 8FB20020 */  lw         $s2, 0x20($sp)
/* C34AC 800E80AC 03E00008 */  jr         $ra
/* C34B0 800E80B0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800E80B4
/* C34B4 800E80B4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C34B8 800E80B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* C34BC 800E80BC AFB10020 */  sw         $s1, 0x20($sp)
/* C34C0 800E80C0 AFB0001C */  sw         $s0, 0x1c($sp)
/* C34C4 800E80C4 8CA6000C */  lw         $a2, 0xc($a1)
/* C34C8 800E80C8 AC800020 */  sw         $zero, 0x20($a0)
/* C34CC 800E80CC AC800018 */  sw         $zero, 0x18($a0)
/* C34D0 800E80D0 3C0E8011 */  lui        $t6, %hi(D_80109DA0)
/* C34D4 800E80D4 8DCE9DA0 */  lw         $t6, %lo(D_80109DA0)($t6)
/* C34D8 800E80D8 240F00FF */  addiu      $t7, $zero, 0xff
/* C34DC 800E80DC 241801E8 */  addiu      $t8, $zero, 0x1e8
/* C34E0 800E80E0 24197FFF */  addiu      $t9, $zero, 0x7fff
/* C34E4 800E80E4 A48F0030 */  sh         $t7, 0x30($a0)
/* C34E8 800E80E8 AC980024 */  sw         $t8, 0x24($a0)
/* C34EC 800E80EC AC800028 */  sw         $zero, 0x28($a0)
/* C34F0 800E80F0 AC80002C */  sw         $zero, 0x2c($a0)
/* C34F4 800E80F4 A4990032 */  sh         $t9, 0x32($a0)
/* C34F8 800E80F8 AC8E0014 */  sw         $t6, 0x14($a0)
/* C34FC 800E80FC 90A80009 */  lbu        $t0, 9($a1)
/* C3500 800E8100 24093E80 */  addiu      $t1, $zero, 0x3e80
/* C3504 800E8104 AC89005C */  sw         $t1, 0x5c($a0)
/* C3508 800E8108 AC80001C */  sw         $zero, 0x1c($a0)
/* C350C 800E810C A0880035 */  sb         $t0, 0x35($a0)
/* C3510 800E8110 8CAA0010 */  lw         $t2, 0x10($a1)
/* C3514 800E8114 240D0009 */  addiu      $t5, $zero, 9
/* C3518 800E8118 00A08825 */  or         $s1, $a1, $zero
/* C351C 800E811C AC8A0070 */  sw         $t2, 0x70($a0)
/* C3520 800E8120 8CAB0014 */  lw         $t3, 0x14($a1)
/* C3524 800E8124 00808025 */  or         $s0, $a0, $zero
/* C3528 800E8128 240F0010 */  addiu      $t7, $zero, 0x10
/* C352C 800E812C AC8B0074 */  sw         $t3, 0x74($a0)
/* C3530 800E8130 8CAC0018 */  lw         $t4, 0x18($a1)
/* C3534 800E8134 AC80007C */  sw         $zero, 0x7c($a0)
/* C3538 800E8138 AC800080 */  sw         $zero, 0x80($a0)
/* C353C 800E813C AC800084 */  sw         $zero, 0x84($a0)
/* C3540 800E8140 A48D0038 */  sh         $t5, 0x38($a0)
/* C3544 800E8144 AC8C0078 */  sw         $t4, 0x78($a0)
/* C3548 800E8148 90AE0008 */  lbu        $t6, 8($a1)
/* C354C 800E814C 00002825 */  or         $a1, $zero, $zero
/* C3550 800E8150 A08E0034 */  sb         $t6, 0x34($a0)
/* C3554 800E8154 92270008 */  lbu        $a3, 8($s1)
/* C3558 800E8158 AFAF0010 */  sw         $t7, 0x10($sp)
/* C355C 800E815C 00002025 */  or         $a0, $zero, $zero
/* C3560 800E8160 0C037278 */  jal        func_800DC9E0
/* C3564 800E8164 AFA6002C */   sw        $a2, 0x2c($sp)
/* C3568 800E8168 AE020060 */  sw         $v0, 0x60($s0)
/* C356C 800E816C 0C03A011 */  jal        func_800E8044
/* C3570 800E8170 02002025 */   or        $a0, $s0, $zero
/* C3574 800E8174 8E270000 */  lw         $a3, ($s1)
/* C3578 800E8178 24180038 */  addiu      $t8, $zero, 0x38
/* C357C 800E817C AFB80010 */  sw         $t8, 0x10($sp)
/* C3580 800E8180 00002025 */  or         $a0, $zero, $zero
/* C3584 800E8184 00002825 */  or         $a1, $zero, $zero
/* C3588 800E8188 0C037278 */  jal        func_800DC9E0
/* C358C 800E818C 8FA6002C */   lw        $a2, 0x2c($sp)
/* C3590 800E8190 AE00006C */  sw         $zero, 0x6c($s0)
/* C3594 800E8194 8E390000 */  lw         $t9, ($s1)
/* C3598 800E8198 00002025 */  or         $a0, $zero, $zero
/* C359C 800E819C 00002825 */  or         $a1, $zero, $zero
/* C35A0 800E81A0 1B20000B */  blez       $t9, .L800E81D0
/* C35A4 800E81A4 240A001C */   addiu     $t2, $zero, 0x1c
/* C35A8 800E81A8 00401825 */  or         $v1, $v0, $zero
/* C35AC 800E81AC 8E08006C */  lw         $t0, 0x6c($s0)
.L800E81B0:
/* C35B0 800E81B0 24840001 */  addiu      $a0, $a0, 1
/* C35B4 800E81B4 AC680000 */  sw         $t0, ($v1)
/* C35B8 800E81B8 AE03006C */  sw         $v1, 0x6c($s0)
/* C35BC 800E81BC 8E290000 */  lw         $t1, ($s1)
/* C35C0 800E81C0 24630038 */  addiu      $v1, $v1, 0x38
/* C35C4 800E81C4 0089082A */  slt        $at, $a0, $t1
/* C35C8 800E81C8 5420FFF9 */  bnel       $at, $zero, .L800E81B0
/* C35CC 800E81CC 8E08006C */   lw        $t0, 0x6c($s0)
.L800E81D0:
/* C35D0 800E81D0 AE000064 */  sw         $zero, 0x64($s0)
/* C35D4 800E81D4 AE000068 */  sw         $zero, 0x68($s0)
/* C35D8 800E81D8 8E270004 */  lw         $a3, 4($s1)
/* C35DC 800E81DC AFAA0010 */  sw         $t2, 0x10($sp)
/* C35E0 800E81E0 8FA6002C */  lw         $a2, 0x2c($sp)
/* C35E4 800E81E4 0C037278 */  jal        func_800DC9E0
/* C35E8 800E81E8 00002025 */   or        $a0, $zero, $zero
/* C35EC 800E81EC 26040048 */  addiu      $a0, $s0, 0x48
/* C35F0 800E81F0 00402825 */  or         $a1, $v0, $zero
/* C35F4 800E81F4 0C03A143 */  jal        func_800E850C
/* C35F8 800E81F8 8E260004 */   lw        $a2, 4($s1)
/* C35FC 800E81FC 3C0B800E */  lui        $t3, %hi(func_800E791C)
/* C3600 800E8200 256B791C */  addiu      $t3, $t3, %lo(func_800E791C)
/* C3604 800E8204 AE000000 */  sw         $zero, ($s0)
/* C3608 800E8208 AE0B0008 */  sw         $t3, 8($s0)
/* C360C 800E820C AE100004 */  sw         $s0, 4($s0)
/* C3610 800E8210 3C048011 */  lui        $a0, %hi(D_80109DA0)
/* C3614 800E8214 8C849DA0 */  lw         $a0, %lo(D_80109DA0)($a0)
/* C3618 800E8218 0C03A160 */  jal        func_800E8580
/* C361C 800E821C 02002825 */   or        $a1, $s0, $zero
/* C3620 800E8220 8FBF0024 */  lw         $ra, 0x24($sp)
/* C3624 800E8224 8FB0001C */  lw         $s0, 0x1c($sp)
/* C3628 800E8228 8FB10020 */  lw         $s1, 0x20($sp)
/* C362C 800E822C 03E00008 */  jr         $ra
/* C3630 800E8230 27BD0040 */   addiu     $sp, $sp, 0x40
/* C3634 800E8234 00000000 */  nop
/* C3638 800E8238 00000000 */  nop
/* C363C 800E823C 00000000 */  nop
