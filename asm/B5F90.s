.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DAB90
/* B5F90 800DAB90 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B5F94 800DAB94 3C018011 */  lui        $at, %hi(D_801108B0)
/* B5F98 800DAB98 C42408B0 */  lwc1       $f4, %lo(D_801108B0)($at)
/* B5F9C 800DAB9C AFB00018 */  sw         $s0, 0x18($sp)
/* B5FA0 800DABA0 00808025 */  or         $s0, $a0, $zero
/* B5FA4 800DABA4 3C018025 */  lui        $at, 0x8025
/* B5FA8 800DABA8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5FAC 800DABAC AFA5003C */  sw         $a1, 0x3c($sp)
/* B5FB0 800DABB0 AFA60040 */  sw         $a2, 0x40($sp)
/* B5FB4 800DABB4 AFA70044 */  sw         $a3, 0x44($sp)
/* B5FB8 800DABB8 27A60048 */  addiu      $a2, $sp, 0x48
/* B5FBC 800DABBC 27A50044 */  addiu      $a1, $sp, 0x44
/* B5FC0 800DABC0 27A40040 */  addiu      $a0, $sp, 0x40
/* B5FC4 800DABC4 0C038FC0 */  jal        func_800E3F00
/* B5FC8 800DABC8 E424B070 */   swc1      $f4, -0x4f90($at)
/* B5FCC 800DABCC 3C018025 */  lui        $at, %hi(D_8024B070)
/* B5FD0 800DABD0 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* B5FD4 800DABD4 C426B070 */  lwc1       $f6, %lo(D_8024B070)($at)
/* B5FD8 800DABD8 46066302 */  mul.s      $f12, $f12, $f6
/* B5FDC 800DABDC 0C036B60 */  jal        func_800DAD80
/* B5FE0 800DABE0 E7AC003C */   swc1      $f12, 0x3c($sp)
/* B5FE4 800DABE4 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* B5FE8 800DABE8 0C036C30 */  jal        func_800DB0C0
/* B5FEC 800DABEC E7A00034 */   swc1      $f0, 0x34($sp)
/* B5FF0 800DABF0 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* B5FF4 800DABF4 C7A40044 */  lwc1       $f4, 0x44($sp)
/* B5FF8 800DABF8 3C013F80 */  lui        $at, 0x3f80
/* B5FFC 800DABFC 44814000 */  mtc1       $at, $f8
/* B6000 800DAC00 46045182 */  mul.s      $f6, $f10, $f4
/* B6004 800DAC04 02002025 */  or         $a0, $s0, $zero
/* B6008 800DAC08 46004081 */  sub.s      $f2, $f8, $f0
/* B600C 800DAC0C C7A80048 */  lwc1       $f8, 0x48($sp)
/* B6010 800DAC10 E7A00030 */  swc1       $f0, 0x30($sp)
/* B6014 800DAC14 46023402 */  mul.s      $f16, $f6, $f2
/* B6018 800DAC18 00000000 */  nop
/* B601C 800DAC1C 46082182 */  mul.s      $f6, $f4, $f8
/* B6020 800DAC20 E7B0002C */  swc1       $f16, 0x2c($sp)
/* B6024 800DAC24 46023482 */  mul.s      $f18, $f6, $f2
/* B6028 800DAC28 00000000 */  nop
/* B602C 800DAC2C 460A4102 */  mul.s      $f4, $f8, $f10
/* B6030 800DAC30 E7B20028 */  swc1       $f18, 0x28($sp)
/* B6034 800DAC34 46022182 */  mul.s      $f6, $f4, $f2
/* B6038 800DAC38 0C036A30 */  jal        func_800DA8C0
/* B603C 800DAC3C E7A60024 */   swc1      $f6, 0x24($sp)
/* B6040 800DAC40 C7A80040 */  lwc1       $f8, 0x40($sp)
/* B6044 800DAC44 3C013F80 */  lui        $at, 0x3f80
/* B6048 800DAC48 44815000 */  mtc1       $at, $f10
/* B604C 800DAC4C 46084002 */  mul.s      $f0, $f8, $f8
/* B6050 800DAC50 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* B6054 800DAC54 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* B6058 800DAC58 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* B605C 800DAC5C C7B20028 */  lwc1       $f18, 0x28($sp)
/* B6060 800DAC60 46005101 */  sub.s      $f4, $f10, $f0
/* B6064 800DAC64 460C2182 */  mul.s      $f6, $f4, $f12
/* B6068 800DAC68 46003200 */  add.s      $f8, $f6, $f0
/* B606C 800DAC6C E6080000 */  swc1       $f8, ($s0)
/* B6070 800DAC70 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* B6074 800DAC74 460E5102 */  mul.s      $f4, $f10, $f14
/* B6078 800DAC78 46049181 */  sub.s      $f6, $f18, $f4
/* B607C 800DAC7C E6060024 */  swc1       $f6, 0x24($s0)
/* B6080 800DAC80 C7A80040 */  lwc1       $f8, 0x40($sp)
/* B6084 800DAC84 460E4282 */  mul.s      $f10, $f8, $f14
/* B6088 800DAC88 44814000 */  mtc1       $at, $f8
/* B608C 800DAC8C 46125100 */  add.s      $f4, $f10, $f18
/* B6090 800DAC90 E6040018 */  swc1       $f4, 0x18($s0)
/* B6094 800DAC94 C7A60044 */  lwc1       $f6, 0x44($sp)
/* B6098 800DAC98 46063082 */  mul.s      $f2, $f6, $f6
/* B609C 800DAC9C 46024281 */  sub.s      $f10, $f8, $f2
/* B60A0 800DACA0 460C5102 */  mul.s      $f4, $f10, $f12
/* B60A4 800DACA4 46022180 */  add.s      $f6, $f4, $f2
/* B60A8 800DACA8 E6060014 */  swc1       $f6, 0x14($s0)
/* B60AC 800DACAC C7A80044 */  lwc1       $f8, 0x44($sp)
/* B60B0 800DACB0 C7A40024 */  lwc1       $f4, 0x24($sp)
/* B60B4 800DACB4 460E4282 */  mul.s      $f10, $f8, $f14
/* B60B8 800DACB8 46045180 */  add.s      $f6, $f10, $f4
/* B60BC 800DACBC E6060020 */  swc1       $f6, 0x20($s0)
/* B60C0 800DACC0 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* B60C4 800DACC4 C7A80024 */  lwc1       $f8, 0x24($sp)
/* B60C8 800DACC8 460E5102 */  mul.s      $f4, $f10, $f14
/* B60CC 800DACCC 46044181 */  sub.s      $f6, $f8, $f4
/* B60D0 800DACD0 44814000 */  mtc1       $at, $f8
/* B60D4 800DACD4 E6060008 */  swc1       $f6, 8($s0)
/* B60D8 800DACD8 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* B60DC 800DACDC 460A5002 */  mul.s      $f0, $f10, $f10
/* B60E0 800DACE0 46004101 */  sub.s      $f4, $f8, $f0
/* B60E4 800DACE4 460C2182 */  mul.s      $f6, $f4, $f12
/* B60E8 800DACE8 46003280 */  add.s      $f10, $f6, $f0
/* B60EC 800DACEC E60A0028 */  swc1       $f10, 0x28($s0)
/* B60F0 800DACF0 C7A80048 */  lwc1       $f8, 0x48($sp)
/* B60F4 800DACF4 460E4102 */  mul.s      $f4, $f8, $f14
/* B60F8 800DACF8 46048181 */  sub.s      $f6, $f16, $f4
/* B60FC 800DACFC E6060010 */  swc1       $f6, 0x10($s0)
/* B6100 800DAD00 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* B6104 800DAD04 460E5202 */  mul.s      $f8, $f10, $f14
/* B6108 800DAD08 46104100 */  add.s      $f4, $f8, $f16
/* B610C 800DAD0C E6040004 */  swc1       $f4, 4($s0)
/* B6110 800DAD10 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6114 800DAD14 8FB00018 */  lw         $s0, 0x18($sp)
/* B6118 800DAD18 27BD0038 */  addiu      $sp, $sp, 0x38
/* B611C 800DAD1C 03E00008 */  jr         $ra
/* B6120 800DAD20 00000000 */   nop

glabel func_800DAD24
/* B6124 800DAD24 44856000 */  mtc1       $a1, $f12
/* B6128 800DAD28 44867000 */  mtc1       $a2, $f14
/* B612C 800DAD2C 44878000 */  mtc1       $a3, $f16
/* B6130 800DAD30 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B6134 800DAD34 C7A40070 */  lwc1       $f4, 0x70($sp)
/* B6138 800DAD38 AFBF001C */  sw         $ra, 0x1c($sp)
/* B613C 800DAD3C AFA40060 */  sw         $a0, 0x60($sp)
/* B6140 800DAD40 44056000 */  mfc1       $a1, $f12
/* B6144 800DAD44 44067000 */  mfc1       $a2, $f14
/* B6148 800DAD48 44078000 */  mfc1       $a3, $f16
/* B614C 800DAD4C 27A40020 */  addiu      $a0, $sp, 0x20
/* B6150 800DAD50 0C036AE4 */  jal        func_800DAB90
/* B6154 800DAD54 E7A40010 */   swc1      $f4, 0x10($sp)
/* B6158 800DAD58 27A40020 */  addiu      $a0, $sp, 0x20
/* B615C 800DAD5C 0C0369F0 */  jal        func_800DA7C0
/* B6160 800DAD60 8FA50060 */   lw        $a1, 0x60($sp)
/* B6164 800DAD64 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6168 800DAD68 27BD0060 */  addiu      $sp, $sp, 0x60
/* B616C 800DAD6C 03E00008 */  jr         $ra
/* B6170 800DAD70 00000000 */   nop
/* B6174 800DAD74 00000000 */  nop
/* B6178 800DAD78 00000000 */  nop
/* B617C 800DAD7C 00000000 */  nop
