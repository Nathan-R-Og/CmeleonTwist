.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8830
/* C3C30 800E8830 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C3C34 800E8834 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3C38 800E8838 AFA60030 */  sw         $a2, 0x30($sp)
/* C3C3C 800E883C 8C870014 */  lw         $a3, 0x14($a0)
/* C3C40 800E8840 00067400 */  sll        $t6, $a2, 0x10
/* C3C44 800E8844 000E3403 */  sra        $a2, $t6, 0x10
/* C3C48 800E8848 00804025 */  or         $t0, $a0, $zero
/* C3C4C 800E884C 10E0000D */  beqz       $a3, .L800E8884
/* C3C50 800E8850 00001825 */   or        $v1, $zero, $zero
/* C3C54 800E8854 ACA70000 */  sw         $a3, ($a1)
/* C3C58 800E8858 AFA80028 */  sw         $t0, 0x28($sp)
/* C3C5C 800E885C AFA70024 */  sw         $a3, 0x24($sp)
/* C3C60 800E8860 AFA0001C */  sw         $zero, 0x1c($sp)
/* C3C64 800E8864 0C037248 */  jal        func_800DC920
/* C3C68 800E8868 00E02025 */   or        $a0, $a3, $zero
/* C3C6C 800E886C 8FA80028 */  lw         $t0, 0x28($sp)
/* C3C70 800E8870 8FA40024 */  lw         $a0, 0x24($sp)
/* C3C74 800E8874 0C037254 */  jal        func_800DC950
/* C3C78 800E8878 2505000C */   addiu     $a1, $t0, 0xc
/* C3C7C 800E887C 10000021 */  b          .L800E8904
/* C3C80 800E8880 8FA3001C */   lw        $v1, 0x1c($sp)
.L800E8884:
/* C3C84 800E8884 8D070004 */  lw         $a3, 4($t0)
/* C3C88 800E8888 10E0000C */  beqz       $a3, .L800E88BC
/* C3C8C 800E888C 00E02025 */   or        $a0, $a3, $zero
/* C3C90 800E8890 ACA70000 */  sw         $a3, ($a1)
/* C3C94 800E8894 AFA80028 */  sw         $t0, 0x28($sp)
/* C3C98 800E8898 AFA70024 */  sw         $a3, 0x24($sp)
/* C3C9C 800E889C 0C037248 */  jal        func_800DC920
/* C3CA0 800E88A0 AFA3001C */   sw        $v1, 0x1c($sp)
/* C3CA4 800E88A4 8FA80028 */  lw         $t0, 0x28($sp)
/* C3CA8 800E88A8 8FA40024 */  lw         $a0, 0x24($sp)
/* C3CAC 800E88AC 0C037254 */  jal        func_800DC950
/* C3CB0 800E88B0 2505000C */   addiu     $a1, $t0, 0xc
/* C3CB4 800E88B4 10000013 */  b          .L800E8904
/* C3CB8 800E88B8 8FA3001C */   lw        $v1, 0x1c($sp)
.L800E88BC:
/* C3CBC 800E88BC 8D07000C */  lw         $a3, 0xc($t0)
/* C3CC0 800E88C0 50E00011 */  beql       $a3, $zero, .L800E8908
/* C3CC4 800E88C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3CC8 800E88C8 8CF80008 */  lw         $t8, 8($a3)
.L800E88CC:
/* C3CCC 800E88CC 87190016 */  lh         $t9, 0x16($t8)
/* C3CD0 800E88D0 00D9082A */  slt        $at, $a2, $t9
/* C3CD4 800E88D4 54200009 */  bnel       $at, $zero, .L800E88FC
/* C3CD8 800E88D8 8CE70000 */   lw        $a3, ($a3)
/* C3CDC 800E88DC 8CE900D8 */  lw         $t1, 0xd8($a3)
/* C3CE0 800E88E0 55200006 */  bnel       $t1, $zero, .L800E88FC
/* C3CE4 800E88E4 8CE70000 */   lw        $a3, ($a3)
/* C3CE8 800E88E8 ACA70000 */  sw         $a3, ($a1)
/* C3CEC 800E88EC 8CEA0008 */  lw         $t2, 8($a3)
/* C3CF0 800E88F0 24030001 */  addiu      $v1, $zero, 1
/* C3CF4 800E88F4 85460016 */  lh         $a2, 0x16($t2)
/* C3CF8 800E88F8 8CE70000 */  lw         $a3, ($a3)
.L800E88FC:
/* C3CFC 800E88FC 54E0FFF3 */  bnel       $a3, $zero, .L800E88CC
/* C3D00 800E8900 8CF80008 */   lw        $t8, 8($a3)
.L800E8904:
/* C3D04 800E8904 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8908:
/* C3D08 800E8908 27BD0028 */  addiu      $sp, $sp, 0x28
/* C3D0C 800E890C 00601025 */  or         $v0, $v1, $zero
/* C3D10 800E8910 03E00008 */  jr         $ra
/* C3D14 800E8914 00000000 */   nop

glabel func_800E8918
/* C3D18 800E8918 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C3D1C 800E891C AFBF001C */  sw         $ra, 0x1c($sp)
/* C3D20 800E8920 AFB00018 */  sw         $s0, 0x18($sp)
/* C3D24 800E8924 AFA40030 */  sw         $a0, 0x30($sp)
/* C3D28 800E8928 AFA0002C */  sw         $zero, 0x2c($sp)
/* C3D2C 800E892C 84CE0000 */  lh         $t6, ($a2)
/* C3D30 800E8930 00A08025 */  or         $s0, $a1, $zero
/* C3D34 800E8934 A4AE0016 */  sh         $t6, 0x16($a1)
/* C3D38 800E8938 90CF0004 */  lbu        $t7, 4($a2)
/* C3D3C 800E893C ACA0000C */  sw         $zero, 0xc($a1)
/* C3D40 800E8940 A4AF001A */  sh         $t7, 0x1a($a1)
/* C3D44 800E8944 84D80002 */  lh         $t8, 2($a2)
/* C3D48 800E8948 A4A00014 */  sh         $zero, 0x14($a1)
/* C3D4C 800E894C ACA00008 */  sw         $zero, 8($a1)
/* C3D50 800E8950 A4B80018 */  sh         $t8, 0x18($a1)
/* C3D54 800E8954 84C60000 */  lh         $a2, ($a2)
/* C3D58 800E8958 8FA40030 */  lw         $a0, 0x30($sp)
/* C3D5C 800E895C 0C03A20C */  jal        func_800E8830
/* C3D60 800E8960 27A5002C */   addiu     $a1, $sp, 0x2c
/* C3D64 800E8964 8FB9002C */  lw         $t9, 0x2c($sp)
/* C3D68 800E8968 53200035 */  beql       $t9, $zero, .L800E8A40
/* C3D6C 800E896C 8FA2002C */   lw        $v0, 0x2c($sp)
/* C3D70 800E8970 1040002C */  beqz       $v0, .L800E8A24
/* C3D74 800E8974 8F24000C */   lw        $a0, 0xc($t9)
/* C3D78 800E8978 24080200 */  addiu      $t0, $zero, 0x200
/* C3D7C 800E897C AF2800D8 */  sw         $t0, 0xd8($t9)
/* C3D80 800E8980 8FA9002C */  lw         $t1, 0x2c($sp)
/* C3D84 800E8984 8D2A0008 */  lw         $t2, 8($t1)
/* C3D88 800E8988 AD400008 */  sw         $zero, 8($t2)
/* C3D8C 800E898C 0C037AA8 */  jal        func_800DEAA0
/* C3D90 800E8990 AFA40028 */   sw        $a0, 0x28($sp)
/* C3D94 800E8994 8FAB0030 */  lw         $t3, 0x30($sp)
/* C3D98 800E8998 8FA40028 */  lw         $a0, 0x28($sp)
/* C3D9C 800E899C 240D000B */  addiu      $t5, $zero, 0xb
/* C3DA0 800E89A0 8D6C001C */  lw         $t4, 0x1c($t3)
/* C3DA4 800E89A4 A44D0008 */  sh         $t5, 8($v0)
/* C3DA8 800E89A8 AC40000C */  sw         $zero, 0xc($v0)
/* C3DAC 800E89AC AC4C0004 */  sw         $t4, 4($v0)
/* C3DB0 800E89B0 8FAE002C */  lw         $t6, 0x2c($sp)
/* C3DB4 800E89B4 24050003 */  addiu      $a1, $zero, 3
/* C3DB8 800E89B8 00403025 */  or         $a2, $v0, $zero
/* C3DBC 800E89BC 8DCF00D8 */  lw         $t7, 0xd8($t6)
/* C3DC0 800E89C0 25F8FFC0 */  addiu      $t8, $t7, -0x40
/* C3DC4 800E89C4 AC580010 */  sw         $t8, 0x10($v0)
/* C3DC8 800E89C8 8C990008 */  lw         $t9, 8($a0)
/* C3DCC 800E89CC 0320F809 */  jalr       $t9
/* C3DD0 800E89D0 00000000 */   nop
/* C3DD4 800E89D4 0C037AA8 */  jal        func_800DEAA0
/* C3DD8 800E89D8 00000000 */   nop
/* C3DDC 800E89DC 8FA40028 */  lw         $a0, 0x28($sp)
/* C3DE0 800E89E0 10400012 */  beqz       $v0, .L800E8A2C
/* C3DE4 800E89E4 00403025 */   or        $a2, $v0, $zero
/* C3DE8 800E89E8 8FA80030 */  lw         $t0, 0x30($sp)
/* C3DEC 800E89EC 8FAA002C */  lw         $t2, 0x2c($sp)
/* C3DF0 800E89F0 240D000F */  addiu      $t5, $zero, 0xf
/* C3DF4 800E89F4 8D09001C */  lw         $t1, 0x1c($t0)
/* C3DF8 800E89F8 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* C3DFC 800E89FC A44D0008 */  sh         $t5, 8($v0)
/* C3E00 800E8A00 AC400000 */  sw         $zero, ($v0)
/* C3E04 800E8A04 012B6021 */  addu       $t4, $t1, $t3
/* C3E08 800E8A08 AC4C0004 */  sw         $t4, 4($v0)
/* C3E0C 800E8A0C 8C990008 */  lw         $t9, 8($a0)
/* C3E10 800E8A10 24050003 */  addiu      $a1, $zero, 3
/* C3E14 800E8A14 0320F809 */  jalr       $t9
/* C3E18 800E8A18 00000000 */   nop
/* C3E1C 800E8A1C 10000004 */  b          .L800E8A30
/* C3E20 800E8A20 8FAF002C */   lw        $t7, 0x2c($sp)
.L800E8A24:
/* C3E24 800E8A24 8FAE002C */  lw         $t6, 0x2c($sp)
/* C3E28 800E8A28 ADC000D8 */  sw         $zero, 0xd8($t6)
.L800E8A2C:
/* C3E2C 800E8A2C 8FAF002C */  lw         $t7, 0x2c($sp)
.L800E8A30:
/* C3E30 800E8A30 ADF00008 */  sw         $s0, 8($t7)
/* C3E34 800E8A34 8FB8002C */  lw         $t8, 0x2c($sp)
/* C3E38 800E8A38 AE180008 */  sw         $t8, 8($s0)
/* C3E3C 800E8A3C 8FA2002C */  lw         $v0, 0x2c($sp)
.L800E8A40:
/* C3E40 800E8A40 8FBF001C */  lw         $ra, 0x1c($sp)
/* C3E44 800E8A44 8FB00018 */  lw         $s0, 0x18($sp)
/* C3E48 800E8A48 0002402B */  sltu       $t0, $zero, $v0
/* C3E4C 800E8A4C 01001025 */  or         $v0, $t0, $zero
/* C3E50 800E8A50 03E00008 */  jr         $ra
/* C3E54 800E8A54 27BD0030 */   addiu     $sp, $sp, 0x30
/* C3E58 800E8A58 00000000 */  nop
/* C3E5C 800E8A5C 00000000 */  nop
