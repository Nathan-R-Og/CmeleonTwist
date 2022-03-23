.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C8900
/* A3D00 800C8900 3C0E8010 */  lui        $t6, %hi(D_80100FD0)
/* A3D04 800C8904 85CE0FD0 */  lh         $t6, %lo(D_80100FD0)($t6)
/* A3D08 800C8908 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3D0C 800C890C AFBF0014 */  sw         $ra, 0x14($sp)
/* A3D10 800C8910 11C00018 */  beqz       $t6, .L800C8974
/* A3D14 800C8914 3C028020 */   lui       $v0, %hi(D_801FCA10)
/* A3D18 800C8918 8C42CA10 */  lw         $v0, %lo(D_801FCA10)($v0)
/* A3D1C 800C891C 3401FFFF */  ori        $at, $zero, 0xffff
/* A3D20 800C8920 00A44023 */  subu       $t0, $a1, $a0
/* A3D24 800C8924 00027A00 */  sll        $t7, $v0, 8
/* A3D28 800C8928 01E2C021 */  addu       $t8, $t7, $v0
/* A3D2C 800C892C 0301001A */  div        $zero, $t8, $at
/* A3D30 800C8930 0000C810 */  mfhi       $t9
/* A3D34 800C8934 44992000 */  mtc1       $t9, $f4
/* A3D38 800C8938 3C018011 */  lui        $at, %hi(D_80110100)
/* A3D3C 800C893C C4280100 */  lwc1       $f8, %lo(D_80110100)($at)
/* A3D40 800C8940 468021A0 */  cvt.s.w    $f6, $f4
/* A3D44 800C8944 25090001 */  addiu      $t1, $t0, 1
/* A3D48 800C8948 44895000 */  mtc1       $t1, $f10
/* A3D4C 800C894C 44842000 */  mtc1       $a0, $f4
/* A3D50 800C8950 46805420 */  cvt.s.w    $f16, $f10
/* A3D54 800C8954 46083003 */  div.s      $f0, $f6, $f8
/* A3D58 800C8958 468021A0 */  cvt.s.w    $f6, $f4
/* A3D5C 800C895C 46008482 */  mul.s      $f18, $f16, $f0
/* A3D60 800C8960 46069200 */  add.s      $f8, $f18, $f6
/* A3D64 800C8964 4600428D */  trunc.w.s  $f10, $f8
/* A3D68 800C8968 44035000 */  mfc1       $v1, $f10
/* A3D6C 800C896C 1000001A */  b          .L800C89D8
/* A3D70 800C8970 8FBF0014 */   lw        $ra, 0x14($sp)
.L800C8974:
/* A3D74 800C8974 AFA40018 */  sw         $a0, 0x18($sp)
/* A3D78 800C8978 0C03829C */  jal        func_800E0A70
/* A3D7C 800C897C AFA5001C */   sw        $a1, 0x1c($sp)
/* A3D80 800C8980 3401FFFF */  ori        $at, $zero, 0xffff
/* A3D84 800C8984 0041001A */  div        $zero, $v0, $at
/* A3D88 800C8988 00005810 */  mfhi       $t3
/* A3D8C 800C898C 448B8000 */  mtc1       $t3, $f16
/* A3D90 800C8990 3C018011 */  lui        $at, %hi(D_80110104)
/* A3D94 800C8994 C4320104 */  lwc1       $f18, %lo(D_80110104)($at)
/* A3D98 800C8998 46808120 */  cvt.s.w    $f4, $f16
/* A3D9C 800C899C 8FA40018 */  lw         $a0, 0x18($sp)
/* A3DA0 800C89A0 8FA5001C */  lw         $a1, 0x1c($sp)
/* A3DA4 800C89A4 00A46023 */  subu       $t4, $a1, $a0
/* A3DA8 800C89A8 46122183 */  div.s      $f6, $f4, $f18
/* A3DAC 800C89AC 258D0001 */  addiu      $t5, $t4, 1
/* A3DB0 800C89B0 448D4000 */  mtc1       $t5, $f8
/* A3DB4 800C89B4 44842000 */  mtc1       $a0, $f4
/* A3DB8 800C89B8 468042A0 */  cvt.s.w    $f10, $f8
/* A3DBC 800C89BC 468024A0 */  cvt.s.w    $f18, $f4
/* A3DC0 800C89C0 46065402 */  mul.s      $f16, $f10, $f6
/* A3DC4 800C89C4 46128200 */  add.s      $f8, $f16, $f18
/* A3DC8 800C89C8 4600428D */  trunc.w.s  $f10, $f8
/* A3DCC 800C89CC 44035000 */  mfc1       $v1, $f10
/* A3DD0 800C89D0 00000000 */  nop
/* A3DD4 800C89D4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C89D8:
/* A3DD8 800C89D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* A3DDC 800C89DC 00601025 */  or         $v0, $v1, $zero
/* A3DE0 800C89E0 03E00008 */  jr         $ra
/* A3DE4 800C89E4 00000000 */   nop

glabel func_800C89E8
/* A3DE8 800C89E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3DEC 800C89EC AFBF0014 */  sw         $ra, 0x14($sp)
/* A3DF0 800C89F0 00002025 */  or         $a0, $zero, $zero
/* A3DF4 800C89F4 0C032240 */  jal        func_800C8900
/* A3DF8 800C89F8 3405FFFF */   ori       $a1, $zero, 0xffff
/* A3DFC 800C89FC 44822000 */  mtc1       $v0, $f4
/* A3E00 800C8A00 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3E04 800C8A04 3C018011 */  lui        $at, %hi(D_80110108)
/* A3E08 800C8A08 468021A0 */  cvt.s.w    $f6, $f4
/* A3E0C 800C8A0C C4280108 */  lwc1       $f8, %lo(D_80110108)($at)
/* A3E10 800C8A10 27BD0018 */  addiu      $sp, $sp, 0x18
/* A3E14 800C8A14 03E00008 */  jr         $ra
/* A3E18 800C8A18 46083003 */   div.s     $f0, $f6, $f8

glabel func_800C8A1C
/* A3E1C 800C8A1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A3E20 800C8A20 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3E24 800C8A24 E7AC0020 */  swc1       $f12, 0x20($sp)
/* A3E28 800C8A28 0C036B60 */  jal        func_800DAD80
/* A3E2C 800C8A2C C7AC0020 */   lwc1      $f12, 0x20($sp)
/* A3E30 800C8A30 E7A0001C */  swc1       $f0, 0x1c($sp)
/* A3E34 800C8A34 0C036C30 */  jal        func_800DB0C0
/* A3E38 800C8A38 C7AC0020 */   lwc1      $f12, 0x20($sp)
/* A3E3C 800C8A3C 44802800 */  mtc1       $zero, $f5
/* A3E40 800C8A40 44802000 */  mtc1       $zero, $f4
/* A3E44 800C8A44 460001A1 */  cvt.d.s    $f6, $f0
/* A3E48 800C8A48 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* A3E4C 800C8A4C 46262032 */  c.eq.d     $f4, $f6
/* A3E50 800C8A50 8FBF0014 */  lw         $ra, 0x14($sp)
/* A3E54 800C8A54 45020005 */  bc1fl      .L800C8A6C
/* A3E58 800C8A58 46004083 */   div.s     $f2, $f8, $f0
/* A3E5C 800C8A5C 44801000 */  mtc1       $zero, $f2
/* A3E60 800C8A60 10000003 */  b          .L800C8A70
/* A3E64 800C8A64 46001006 */   mov.s     $f0, $f2
/* A3E68 800C8A68 46004083 */  div.s      $f2, $f8, $f0
.L800C8A6C:
/* A3E6C 800C8A6C 46001006 */  mov.s      $f0, $f2
.L800C8A70:
/* A3E70 800C8A70 03E00008 */  jr         $ra
/* A3E74 800C8A74 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800C8A78
/* A3E78 800C8A78 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A3E7C 800C8A7C E7AC0038 */  swc1       $f12, 0x38($sp)
/* A3E80 800C8A80 C7A40038 */  lwc1       $f4, 0x38($sp)
/* A3E84 800C8A84 44803000 */  mtc1       $zero, $f6
/* A3E88 800C8A88 44804000 */  mtc1       $zero, $f8
/* A3E8C 800C8A8C 3C01BF80 */  lui        $at, 0xbf80
/* A3E90 800C8A90 4604303E */  c.le.s     $f6, $f4
/* A3E94 800C8A94 C7A00038 */  lwc1       $f0, 0x38($sp)
/* A3E98 800C8A98 45020007 */  bc1fl      .L800C8AB8
/* A3E9C 800C8A9C 44816000 */   mtc1      $at, $f12
/* A3EA0 800C8AA0 3C013F80 */  lui        $at, 0x3f80
/* A3EA4 800C8AA4 44817000 */  mtc1       $at, $f14
/* A3EA8 800C8AA8 46002006 */  mov.s      $f0, $f4
/* A3EAC 800C8AAC 10000005 */  b          .L800C8AC4
/* A3EB0 800C8AB0 46007306 */   mov.s     $f12, $f14
/* A3EB4 800C8AB4 44816000 */  mtc1       $at, $f12
.L800C8AB8:
/* A3EB8 800C8AB8 3C013F80 */  lui        $at, 0x3f80
/* A3EBC 800C8ABC 44817000 */  mtc1       $at, $f14
/* A3EC0 800C8AC0 46000007 */  neg.s      $f0, $f0
.L800C8AC4:
/* A3EC4 800C8AC4 3C013FF0 */  lui        $at, 0x3ff0
/* A3EC8 800C8AC8 44814800 */  mtc1       $at, $f9
/* A3ECC 800C8ACC 46000421 */  cvt.d.s    $f16, $f0
/* A3ED0 800C8AD0 3C018011 */  lui        $at, 0x8011
/* A3ED4 800C8AD4 4630403C */  c.lt.d     $f8, $f16
/* A3ED8 800C8AD8 00000000 */  nop
/* A3EDC 800C8ADC 45000003 */  bc1f       .L800C8AEC
/* A3EE0 800C8AE0 00000000 */   nop
/* A3EE4 800C8AE4 46007006 */  mov.s      $f0, $f14
/* A3EE8 800C8AE8 46007421 */  cvt.d.s    $f16, $f14
.L800C8AEC:
/* A3EEC 800C8AEC D4320110 */  ldc1       $f18, 0x110($at)
/* A3EF0 800C8AF0 3C018011 */  lui        $at, 0x8011
/* A3EF4 800C8AF4 4630903E */  c.le.d     $f18, $f16
/* A3EF8 800C8AF8 00000000 */  nop
/* A3EFC 800C8AFC 4500000A */  bc1f       .L800C8B28
/* A3F00 800C8B00 00000000 */   nop
/* A3F04 800C8B04 46328281 */  sub.d      $f10, $f16, $f18
/* A3F08 800C8B08 3C0140C9 */  lui        $at, 0x40c9
/* A3F0C 800C8B0C 44813800 */  mtc1       $at, $f7
/* A3F10 800C8B10 44803000 */  mtc1       $zero, $f6
/* A3F14 800C8B14 3C028011 */  lui        $v0, %hi(D_80108D78)
/* A3F18 800C8B18 24428D78 */  addiu      $v0, $v0, %lo(D_80108D78)
/* A3F1C 800C8B1C 46265102 */  mul.d      $f4, $f10, $f6
/* A3F20 800C8B20 10000015 */  b          .L800C8B78
/* A3F24 800C8B24 462020A0 */   cvt.s.d   $f2, $f4
.L800C8B28:
/* A3F28 800C8B28 D4320118 */  ldc1       $f18, 0x118($at)
/* A3F2C 800C8B2C 3C014280 */  lui        $at, 0x4280
/* A3F30 800C8B30 4630903E */  c.le.d     $f18, $f16
/* A3F34 800C8B34 00000000 */  nop
/* A3F38 800C8B38 4502000B */  bc1fl      .L800C8B68
/* A3F3C 800C8B3C 44812000 */   mtc1      $at, $f4
/* A3F40 800C8B40 46328201 */  sub.d      $f8, $f16, $f18
/* A3F44 800C8B44 3C014094 */  lui        $at, 0x4094
/* A3F48 800C8B48 44815800 */  mtc1       $at, $f11
/* A3F4C 800C8B4C 44805000 */  mtc1       $zero, $f10
/* A3F50 800C8B50 3C028011 */  lui        $v0, %hi(D_80108C74)
/* A3F54 800C8B54 24428C74 */  addiu      $v0, $v0, %lo(D_80108C74)
/* A3F58 800C8B58 462A4182 */  mul.d      $f6, $f8, $f10
/* A3F5C 800C8B5C 10000006 */  b          .L800C8B78
/* A3F60 800C8B60 462030A0 */   cvt.s.d   $f2, $f6
/* A3F64 800C8B64 44812000 */  mtc1       $at, $f4
.L800C8B68:
/* A3F68 800C8B68 3C028011 */  lui        $v0, %hi(D_80108B70)
/* A3F6C 800C8B6C 24428B70 */  addiu      $v0, $v0, %lo(D_80108B70)
/* A3F70 800C8B70 46040082 */  mul.s      $f2, $f0, $f4
/* A3F74 800C8B74 00000000 */  nop
.L800C8B78:
/* A3F78 800C8B78 4600120D */  trunc.w.s  $f8, $f2
/* A3F7C 800C8B7C 44034000 */  mfc1       $v1, $f8
/* A3F80 800C8B80 00000000 */  nop
/* A3F84 800C8B84 44835000 */  mtc1       $v1, $f10
/* A3F88 800C8B88 24640001 */  addiu      $a0, $v1, 1
/* A3F8C 800C8B8C 28810041 */  slti       $at, $a0, 0x41
/* A3F90 800C8B90 14200002 */  bnez       $at, .L800C8B9C
/* A3F94 800C8B94 468051A0 */   cvt.s.w   $f6, $f10
/* A3F98 800C8B98 24040040 */  addiu      $a0, $zero, 0x40
.L800C8B9C:
/* A3F9C 800C8B9C 46061101 */  sub.s      $f4, $f2, $f6
/* A3FA0 800C8BA0 00037880 */  sll        $t7, $v1, 2
/* A3FA4 800C8BA4 0004C880 */  sll        $t9, $a0, 2
/* A3FA8 800C8BA8 004FC021 */  addu       $t8, $v0, $t7
/* A3FAC 800C8BAC 00594021 */  addu       $t0, $v0, $t9
/* A3FB0 800C8BB0 C7100000 */  lwc1       $f16, ($t8)
/* A3FB4 800C8BB4 C5120000 */  lwc1       $f18, ($t0)
/* A3FB8 800C8BB8 E7A40000 */  swc1       $f4, ($sp)
/* A3FBC 800C8BBC C7A80000 */  lwc1       $f8, ($sp)
/* A3FC0 800C8BC0 27BD0038 */  addiu      $sp, $sp, 0x38
/* A3FC4 800C8BC4 46087281 */  sub.s      $f10, $f14, $f8
/* A3FC8 800C8BC8 46105182 */  mul.s      $f6, $f10, $f16
/* A3FCC 800C8BCC 00000000 */  nop
/* A3FD0 800C8BD0 46124102 */  mul.s      $f4, $f8, $f18
/* A3FD4 800C8BD4 46043280 */  add.s      $f10, $f6, $f4
/* A3FD8 800C8BD8 460C5002 */  mul.s      $f0, $f10, $f12
/* A3FDC 800C8BDC 03E00008 */  jr         $ra
/* A3FE0 800C8BE0 00000000 */   nop

glabel func_800C8BE4
/* A3FE4 800C8BE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A3FE8 800C8BE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A3FEC 800C8BEC 0C03229E */  jal        func_800C8A78
/* A3FF0 800C8BF0 00000000 */   nop
/* A3FF4 800C8BF4 3C018011 */  lui        $at, %hi(D_80110120)
/* A3FF8 800C8BF8 D4240120 */  ldc1       $f4, %lo(D_80110120)($at)
/* A3FFC 800C8BFC 460001A1 */  cvt.d.s    $f6, $f0
/* A4000 800C8C00 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4004 800C8C04 46262201 */  sub.d      $f8, $f4, $f6
/* A4008 800C8C08 27BD0018 */  addiu      $sp, $sp, 0x18
/* A400C 800C8C0C 03E00008 */  jr         $ra
/* A4010 800C8C10 46204020 */   cvt.s.d   $f0, $f8

glabel func_800C8C14
/* A4014 800C8C14 44800800 */  mtc1       $zero, $f1
/* A4018 800C8C18 44800000 */  mtc1       $zero, $f0
/* A401C 800C8C1C 46006121 */  cvt.d.s    $f4, $f12
/* A4020 800C8C20 3C048011 */  lui        $a0, %hi(D_80108E7C)
/* A4024 800C8C24 46240032 */  c.eq.d     $f0, $f4
/* A4028 800C8C28 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* A402C 800C8C2C 00001025 */  or         $v0, $zero, $zero
/* A4030 800C8C30 24848E7C */  addiu      $a0, $a0, %lo(D_80108E7C)
/* A4034 800C8C34 4502000A */  bc1fl      .L800C8C60
/* A4038 800C8C38 44808000 */   mtc1      $zero, $f16
/* A403C 800C8C3C 460071A1 */  cvt.d.s    $f6, $f14
/* A4040 800C8C40 46260032 */  c.eq.d     $f0, $f6
/* A4044 800C8C44 00000000 */  nop
/* A4048 800C8C48 45020005 */  bc1fl      .L800C8C60
/* A404C 800C8C4C 44808000 */   mtc1      $zero, $f16
/* A4050 800C8C50 44800000 */  mtc1       $zero, $f0
/* A4054 800C8C54 100000A6 */  b          .L800C8EF0
/* A4058 800C8C58 00000000 */   nop
/* A405C 800C8C5C 44808000 */  mtc1       $zero, $f16
.L800C8C60:
/* A4060 800C8C60 00000000 */  nop
/* A4064 800C8C64 4610603C */  c.lt.s     $f12, $f16
/* A4068 800C8C68 00000000 */  nop
/* A406C 800C8C6C 45020005 */  bc1fl      .L800C8C84
/* A4070 800C8C70 46006086 */   mov.s     $f2, $f12
/* A4074 800C8C74 24020001 */  addiu      $v0, $zero, 1
/* A4078 800C8C78 10000002 */  b          .L800C8C84
/* A407C 800C8C7C 46006087 */   neg.s     $f2, $f12
/* A4080 800C8C80 46006086 */  mov.s      $f2, $f12
.L800C8C84:
/* A4084 800C8C84 4610703C */  c.lt.s     $f14, $f16
/* A4088 800C8C88 00000000 */  nop
/* A408C 800C8C8C 45020005 */  bc1fl      .L800C8CA4
/* A4090 800C8C90 46007306 */   mov.s     $f12, $f14
/* A4094 800C8C94 24420002 */  addiu      $v0, $v0, 2
/* A4098 800C8C98 10000002 */  b          .L800C8CA4
/* A409C 800C8C9C 46007307 */   neg.s     $f12, $f14
/* A40A0 800C8CA0 46007306 */  mov.s      $f12, $f14
.L800C8CA4:
/* A40A4 800C8CA4 460C103C */  c.lt.s     $f2, $f12
/* A40A8 800C8CA8 00000000 */  nop
/* A40AC 800C8CAC 4502000F */  bc1fl      .L800C8CEC
/* A40B0 800C8CB0 46026203 */   div.s     $f8, $f12, $f2
/* A40B4 800C8CB4 460C1203 */  div.s      $f8, $f2, $f12
/* A40B8 800C8CB8 3C014280 */  lui        $at, 0x4280
/* A40BC 800C8CBC 44815000 */  mtc1       $at, $f10
/* A40C0 800C8CC0 24420004 */  addiu      $v0, $v0, 4
/* A40C4 800C8CC4 460A4382 */  mul.s      $f14, $f8, $f10
/* A40C8 800C8CC8 4600748D */  trunc.w.s  $f18, $f14
/* A40CC 800C8CCC 44039000 */  mfc1       $v1, $f18
/* A40D0 800C8CD0 00000000 */  nop
/* A40D4 800C8CD4 44832000 */  mtc1       $v1, $f4
/* A40D8 800C8CD8 24650001 */  addiu      $a1, $v1, 1
/* A40DC 800C8CDC 468021A0 */  cvt.s.w    $f6, $f4
/* A40E0 800C8CE0 1000000D */  b          .L800C8D18
/* A40E4 800C8CE4 46067001 */   sub.s     $f0, $f14, $f6
/* A40E8 800C8CE8 46026203 */  div.s      $f8, $f12, $f2
.L800C8CEC:
/* A40EC 800C8CEC 3C014280 */  lui        $at, 0x4280
/* A40F0 800C8CF0 44815000 */  mtc1       $at, $f10
/* A40F4 800C8CF4 00000000 */  nop
/* A40F8 800C8CF8 460A4382 */  mul.s      $f14, $f8, $f10
/* A40FC 800C8CFC 4600748D */  trunc.w.s  $f18, $f14
/* A4100 800C8D00 44039000 */  mfc1       $v1, $f18
/* A4104 800C8D04 00000000 */  nop
/* A4108 800C8D08 44832000 */  mtc1       $v1, $f4
/* A410C 800C8D0C 24650001 */  addiu      $a1, $v1, 1
/* A4110 800C8D10 468021A0 */  cvt.s.w    $f6, $f4
/* A4114 800C8D14 46067001 */  sub.s      $f0, $f14, $f6
.L800C8D18:
/* A4118 800C8D18 28A10041 */  slti       $at, $a1, 0x41
/* A411C 800C8D1C 14200002 */  bnez       $at, .L800C8D28
/* A4120 800C8D20 0003C080 */   sll       $t8, $v1, 2
/* A4124 800C8D24 24050040 */  addiu      $a1, $zero, 0x40
.L800C8D28:
/* A4128 800C8D28 00054080 */  sll        $t0, $a1, 2
/* A412C 800C8D2C 0098C821 */  addu       $t9, $a0, $t8
/* A4130 800C8D30 00884821 */  addu       $t1, $a0, $t0
/* A4134 800C8D34 2C410008 */  sltiu      $at, $v0, 8
/* A4138 800C8D38 C7220000 */  lwc1       $f2, ($t9)
/* A413C 800C8D3C 1020006B */  beqz       $at, .L800C8EEC
/* A4140 800C8D40 C52C0000 */   lwc1      $f12, ($t1)
/* A4144 800C8D44 00025080 */  sll        $t2, $v0, 2
/* A4148 800C8D48 3C018011 */  lui        $at, %hi(D_80110128)
/* A414C 800C8D4C 002A0821 */  addu       $at, $at, $t2
/* A4150 800C8D50 8C2A0128 */  lw         $t2, %lo(D_80110128)($at)
/* A4154 800C8D54 01400008 */  jr         $t2
/* A4158 800C8D58 00000000 */   nop
/* A415C 800C8D5C 3C013F80 */  lui        $at, 0x3f80
/* A4160 800C8D60 44814000 */  mtc1       $at, $f8
/* A4164 800C8D64 00000000 */  nop
/* A4168 800C8D68 46004281 */  sub.s      $f10, $f8, $f0
/* A416C 800C8D6C 46025482 */  mul.s      $f18, $f10, $f2
/* A4170 800C8D70 00000000 */  nop
/* A4174 800C8D74 460C0102 */  mul.s      $f4, $f0, $f12
/* A4178 800C8D78 46049180 */  add.s      $f6, $f18, $f4
/* A417C 800C8D7C 1000005B */  b          .L800C8EEC
/* A4180 800C8D80 E7A60004 */   swc1      $f6, 4($sp)
/* A4184 800C8D84 3C013F80 */  lui        $at, 0x3f80
/* A4188 800C8D88 44814000 */  mtc1       $at, $f8
/* A418C 800C8D8C 3C018011 */  lui        $at, %hi(D_80110148)
/* A4190 800C8D90 46004281 */  sub.s      $f10, $f8, $f0
/* A4194 800C8D94 46025482 */  mul.s      $f18, $f10, $f2
/* A4198 800C8D98 D42A0148 */  ldc1       $f10, %lo(D_80110148)($at)
/* A419C 800C8D9C 460C0102 */  mul.s      $f4, $f0, $f12
/* A41A0 800C8DA0 46049180 */  add.s      $f6, $f18, $f4
/* A41A4 800C8DA4 46003221 */  cvt.d.s    $f8, $f6
/* A41A8 800C8DA8 46285481 */  sub.d      $f18, $f10, $f8
/* A41AC 800C8DAC 46209120 */  cvt.s.d    $f4, $f18
/* A41B0 800C8DB0 1000004E */  b          .L800C8EEC
/* A41B4 800C8DB4 E7A40004 */   swc1      $f4, 4($sp)
/* A41B8 800C8DB8 3C013F80 */  lui        $at, 0x3f80
/* A41BC 800C8DBC 44813000 */  mtc1       $at, $f6
/* A41C0 800C8DC0 3C018011 */  lui        $at, %hi(D_80110150)
/* A41C4 800C8DC4 46003281 */  sub.s      $f10, $f6, $f0
/* A41C8 800C8DC8 46025202 */  mul.s      $f8, $f10, $f2
/* A41CC 800C8DCC D42A0150 */  ldc1       $f10, %lo(D_80110150)($at)
/* A41D0 800C8DD0 460C0482 */  mul.s      $f18, $f0, $f12
/* A41D4 800C8DD4 46124100 */  add.s      $f4, $f8, $f18
/* A41D8 800C8DD8 460021A1 */  cvt.d.s    $f6, $f4
/* A41DC 800C8DDC 46265201 */  sub.d      $f8, $f10, $f6
/* A41E0 800C8DE0 462044A0 */  cvt.s.d    $f18, $f8
/* A41E4 800C8DE4 10000041 */  b          .L800C8EEC
/* A41E8 800C8DE8 E7B20004 */   swc1      $f18, 4($sp)
/* A41EC 800C8DEC 3C013F80 */  lui        $at, 0x3f80
/* A41F0 800C8DF0 44812000 */  mtc1       $at, $f4
/* A41F4 800C8DF4 3C018011 */  lui        $at, %hi(D_80110158)
/* A41F8 800C8DF8 46002281 */  sub.s      $f10, $f4, $f0
/* A41FC 800C8DFC 46025182 */  mul.s      $f6, $f10, $f2
/* A4200 800C8E00 D42A0158 */  ldc1       $f10, %lo(D_80110158)($at)
/* A4204 800C8E04 460C0202 */  mul.s      $f8, $f0, $f12
/* A4208 800C8E08 46083480 */  add.s      $f18, $f6, $f8
/* A420C 800C8E0C 46009121 */  cvt.d.s    $f4, $f18
/* A4210 800C8E10 462A2180 */  add.d      $f6, $f4, $f10
/* A4214 800C8E14 46203220 */  cvt.s.d    $f8, $f6
/* A4218 800C8E18 10000034 */  b          .L800C8EEC
/* A421C 800C8E1C E7A80004 */   swc1      $f8, 4($sp)
/* A4220 800C8E20 3C013F80 */  lui        $at, 0x3f80
/* A4224 800C8E24 44819000 */  mtc1       $at, $f18
/* A4228 800C8E28 3C018011 */  lui        $at, %hi(D_80110160)
/* A422C 800C8E2C 46009101 */  sub.s      $f4, $f18, $f0
/* A4230 800C8E30 46022282 */  mul.s      $f10, $f4, $f2
/* A4234 800C8E34 D4240160 */  ldc1       $f4, %lo(D_80110160)($at)
/* A4238 800C8E38 460C0182 */  mul.s      $f6, $f0, $f12
/* A423C 800C8E3C 46065200 */  add.s      $f8, $f10, $f6
/* A4240 800C8E40 460044A1 */  cvt.d.s    $f18, $f8
/* A4244 800C8E44 46322281 */  sub.d      $f10, $f4, $f18
/* A4248 800C8E48 462051A0 */  cvt.s.d    $f6, $f10
/* A424C 800C8E4C 10000027 */  b          .L800C8EEC
/* A4250 800C8E50 E7A60004 */   swc1      $f6, 4($sp)
/* A4254 800C8E54 3C013F80 */  lui        $at, 0x3f80
/* A4258 800C8E58 44814000 */  mtc1       $at, $f8
/* A425C 800C8E5C 3C018011 */  lui        $at, %hi(D_80110168)
/* A4260 800C8E60 46004101 */  sub.s      $f4, $f8, $f0
/* A4264 800C8E64 46022482 */  mul.s      $f18, $f4, $f2
/* A4268 800C8E68 D4240168 */  ldc1       $f4, %lo(D_80110168)($at)
/* A426C 800C8E6C 460C0282 */  mul.s      $f10, $f0, $f12
/* A4270 800C8E70 460A9180 */  add.s      $f6, $f18, $f10
/* A4274 800C8E74 46003221 */  cvt.d.s    $f8, $f6
/* A4278 800C8E78 46244480 */  add.d      $f18, $f8, $f4
/* A427C 800C8E7C 462092A0 */  cvt.s.d    $f10, $f18
/* A4280 800C8E80 1000001A */  b          .L800C8EEC
/* A4284 800C8E84 E7AA0004 */   swc1      $f10, 4($sp)
/* A4288 800C8E88 3C013F80 */  lui        $at, 0x3f80
/* A428C 800C8E8C 44813000 */  mtc1       $at, $f6
/* A4290 800C8E90 3C018011 */  lui        $at, %hi(D_80110170)
/* A4294 800C8E94 46003201 */  sub.s      $f8, $f6, $f0
/* A4298 800C8E98 46024102 */  mul.s      $f4, $f8, $f2
/* A429C 800C8E9C D4280170 */  ldc1       $f8, %lo(D_80110170)($at)
/* A42A0 800C8EA0 460C0482 */  mul.s      $f18, $f0, $f12
/* A42A4 800C8EA4 46122280 */  add.s      $f10, $f4, $f18
/* A42A8 800C8EA8 460051A1 */  cvt.d.s    $f6, $f10
/* A42AC 800C8EAC 46283100 */  add.d      $f4, $f6, $f8
/* A42B0 800C8EB0 462024A0 */  cvt.s.d    $f18, $f4
/* A42B4 800C8EB4 1000000D */  b          .L800C8EEC
/* A42B8 800C8EB8 E7B20004 */   swc1      $f18, 4($sp)
/* A42BC 800C8EBC 3C013F80 */  lui        $at, 0x3f80
/* A42C0 800C8EC0 44815000 */  mtc1       $at, $f10
/* A42C4 800C8EC4 3C018011 */  lui        $at, %hi(D_80110178)
/* A42C8 800C8EC8 46005181 */  sub.s      $f6, $f10, $f0
/* A42CC 800C8ECC 46023202 */  mul.s      $f8, $f6, $f2
/* A42D0 800C8ED0 D4260178 */  ldc1       $f6, %lo(D_80110178)($at)
/* A42D4 800C8ED4 460C0102 */  mul.s      $f4, $f0, $f12
/* A42D8 800C8ED8 46044480 */  add.s      $f18, $f8, $f4
/* A42DC 800C8EDC 460092A1 */  cvt.d.s    $f10, $f18
/* A42E0 800C8EE0 462A3201 */  sub.d      $f8, $f6, $f10
/* A42E4 800C8EE4 46204120 */  cvt.s.d    $f4, $f8
/* A42E8 800C8EE8 E7A40004 */  swc1       $f4, 4($sp)
.L800C8EEC:
/* A42EC 800C8EEC C7A00004 */  lwc1       $f0, 4($sp)
.L800C8EF0:
/* A42F0 800C8EF0 03E00008 */  jr         $ra
/* A42F4 800C8EF4 27BD0010 */   addiu     $sp, $sp, 0x10
/* A42F8 800C8EF8 00000000 */  nop
/* A42FC 800C8EFC 00000000 */  nop
