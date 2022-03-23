.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DAD80
/* B6180 800DAD80 E7AC0000 */  swc1       $f12, ($sp)
/* B6184 800DAD84 8FA20000 */  lw         $v0, ($sp)
/* B6188 800DAD88 C7A40000 */  lwc1       $f4, ($sp)
/* B618C 800DAD8C 00021D83 */  sra        $v1, $v0, 0x16
/* B6190 800DAD90 306E01FF */  andi       $t6, $v1, 0x1ff
/* B6194 800DAD94 29C100FF */  slti       $at, $t6, 0xff
/* B6198 800DAD98 10200019 */  beqz       $at, .L800DAE00
/* B619C 800DAD9C 01C01825 */   or        $v1, $t6, $zero
/* B61A0 800DADA0 29C100E6 */  slti       $at, $t6, 0xe6
/* B61A4 800DADA4 14200014 */  bnez       $at, .L800DADF8
/* B61A8 800DADA8 460020A1 */   cvt.d.s   $f2, $f4
/* B61AC 800DADAC 46221302 */  mul.d      $f12, $f2, $f2
/* B61B0 800DADB0 3C038011 */  lui        $v1, %hi(D_801108C0)
/* B61B4 800DADB4 246308C0 */  addiu      $v1, $v1, %lo(D_801108C0)
/* B61B8 800DADB8 D4660020 */  ldc1       $f6, 0x20($v1)
/* B61BC 800DADBC D46A0018 */  ldc1       $f10, 0x18($v1)
/* B61C0 800DADC0 D4640010 */  ldc1       $f4, 0x10($v1)
/* B61C4 800DADC4 462C3202 */  mul.d      $f8, $f6, $f12
/* B61C8 800DADC8 462A4400 */  add.d      $f16, $f8, $f10
/* B61CC 800DADCC D46A0008 */  ldc1       $f10, 8($v1)
/* B61D0 800DADD0 462C8482 */  mul.d      $f18, $f16, $f12
/* B61D4 800DADD4 46249180 */  add.d      $f6, $f18, $f4
/* B61D8 800DADD8 462C3202 */  mul.d      $f8, $f6, $f12
/* B61DC 800DADDC 46285380 */  add.d      $f14, $f10, $f8
/* B61E0 800DADE0 462C1402 */  mul.d      $f16, $f2, $f12
/* B61E4 800DADE4 00000000 */  nop
/* B61E8 800DADE8 462E8482 */  mul.d      $f18, $f16, $f14
/* B61EC 800DADEC 46229100 */  add.d      $f4, $f18, $f2
/* B61F0 800DADF0 03E00008 */  jr         $ra
/* B61F4 800DADF4 46202020 */   cvt.s.d   $f0, $f4
.L800DADF8:
/* B61F8 800DADF8 03E00008 */  jr         $ra
/* B61FC 800DADFC C7A00000 */   lwc1      $f0, ($sp)
.L800DAE00:
/* B6200 800DAE00 28610136 */  slti       $at, $v1, 0x136
/* B6204 800DAE04 10200044 */  beqz       $at, .L800DAF18
/* B6208 800DAE08 C7A40000 */   lwc1      $f4, ($sp)
/* B620C 800DAE0C C7A60000 */  lwc1       $f6, ($sp)
/* B6210 800DAE10 3C018011 */  lui        $at, %hi(D_801108E8)
/* B6214 800DAE14 D42A08E8 */  ldc1       $f10, %lo(D_801108E8)($at)
/* B6218 800DAE18 460030A1 */  cvt.d.s    $f2, $f6
/* B621C 800DAE1C 44804800 */  mtc1       $zero, $f9
/* B6220 800DAE20 462A1002 */  mul.d      $f0, $f2, $f10
/* B6224 800DAE24 44804000 */  mtc1       $zero, $f8
/* B6228 800DAE28 3C013FE0 */  lui        $at, 0x3fe0
/* B622C 800DAE2C 4620403E */  c.le.d     $f8, $f0
/* B6230 800DAE30 00000000 */  nop
/* B6234 800DAE34 4502000B */  bc1fl      .L800DAE64
/* B6238 800DAE38 44813800 */   mtc1      $at, $f7
/* B623C 800DAE3C 3C013FE0 */  lui        $at, 0x3fe0
/* B6240 800DAE40 44818800 */  mtc1       $at, $f17
/* B6244 800DAE44 44808000 */  mtc1       $zero, $f16
/* B6248 800DAE48 00000000 */  nop
/* B624C 800DAE4C 46300480 */  add.d      $f18, $f0, $f16
/* B6250 800DAE50 4620910D */  trunc.w.d  $f4, $f18
/* B6254 800DAE54 44022000 */  mfc1       $v0, $f4
/* B6258 800DAE58 10000009 */  b          .L800DAE80
/* B625C 800DAE5C 44828000 */   mtc1      $v0, $f16
/* B6260 800DAE60 44813800 */  mtc1       $at, $f7
.L800DAE64:
/* B6264 800DAE64 44803000 */  mtc1       $zero, $f6
/* B6268 800DAE68 00000000 */  nop
/* B626C 800DAE6C 46260281 */  sub.d      $f10, $f0, $f6
/* B6270 800DAE70 4620520D */  trunc.w.d  $f8, $f10
/* B6274 800DAE74 44024000 */  mfc1       $v0, $f8
/* B6278 800DAE78 00000000 */  nop
/* B627C 800DAE7C 44828000 */  mtc1       $v0, $f16
.L800DAE80:
/* B6280 800DAE80 3C018011 */  lui        $at, %hi(D_801108F0)
/* B6284 800DAE84 D43208F0 */  ldc1       $f18, %lo(D_801108F0)($at)
/* B6288 800DAE88 46808021 */  cvt.d.w    $f0, $f16
/* B628C 800DAE8C 3C018011 */  lui        $at, %hi(D_801108F8)
/* B6290 800DAE90 D42608F8 */  ldc1       $f6, %lo(D_801108F8)($at)
/* B6294 800DAE94 3C038011 */  lui        $v1, %hi(D_801108C0)
/* B6298 800DAE98 246308C0 */  addiu      $v1, $v1, %lo(D_801108C0)
/* B629C 800DAE9C 46320102 */  mul.d      $f4, $f0, $f18
/* B62A0 800DAEA0 D4680020 */  ldc1       $f8, 0x20($v1)
/* B62A4 800DAEA4 D4720018 */  ldc1       $f18, 0x18($v1)
/* B62A8 800DAEA8 30590001 */  andi       $t9, $v0, 1
/* B62AC 800DAEAC 46260282 */  mul.d      $f10, $f0, $f6
/* B62B0 800DAEB0 46241081 */  sub.d      $f2, $f2, $f4
/* B62B4 800DAEB4 462A1081 */  sub.d      $f2, $f2, $f10
/* B62B8 800DAEB8 D46A0010 */  ldc1       $f10, 0x10($v1)
/* B62BC 800DAEBC 46221302 */  mul.d      $f12, $f2, $f2
/* B62C0 800DAEC0 00000000 */  nop
/* B62C4 800DAEC4 462C4402 */  mul.d      $f16, $f8, $f12
/* B62C8 800DAEC8 46328100 */  add.d      $f4, $f16, $f18
/* B62CC 800DAECC D4720008 */  ldc1       $f18, 8($v1)
/* B62D0 800DAED0 462C2182 */  mul.d      $f6, $f4, $f12
/* B62D4 800DAED4 462A3200 */  add.d      $f8, $f6, $f10
/* B62D8 800DAED8 462C4402 */  mul.d      $f16, $f8, $f12
/* B62DC 800DAEDC 17200007 */  bnez       $t9, .L800DAEFC
/* B62E0 800DAEE0 46309380 */   add.d     $f14, $f18, $f16
/* B62E4 800DAEE4 462C1102 */  mul.d      $f4, $f2, $f12
/* B62E8 800DAEE8 00000000 */  nop
/* B62EC 800DAEEC 462E2182 */  mul.d      $f6, $f4, $f14
/* B62F0 800DAEF0 46223280 */  add.d      $f10, $f6, $f2
/* B62F4 800DAEF4 03E00008 */  jr         $ra
/* B62F8 800DAEF8 46205020 */   cvt.s.d   $f0, $f10
.L800DAEFC:
/* B62FC 800DAEFC 462C1202 */  mul.d      $f8, $f2, $f12
/* B6300 800DAF00 00000000 */  nop
/* B6304 800DAF04 462E4482 */  mul.d      $f18, $f8, $f14
/* B6308 800DAF08 46229400 */  add.d      $f16, $f18, $f2
/* B630C 800DAF0C 46208020 */  cvt.s.d    $f0, $f16
/* B6310 800DAF10 03E00008 */  jr         $ra
/* B6314 800DAF14 46000007 */   neg.s     $f0, $f0
.L800DAF18:
/* B6318 800DAF18 46042032 */  c.eq.s     $f4, $f4
/* B631C 800DAF1C 3C018011 */  lui        $at, 0x8011
/* B6320 800DAF20 45010004 */  bc1t       .L800DAF34
/* B6324 800DAF24 00000000 */   nop
/* B6328 800DAF28 3C018011 */  lui        $at, %hi(D_80110CA0)
/* B632C 800DAF2C 03E00008 */  jr         $ra
/* B6330 800DAF30 C4200CA0 */   lwc1      $f0, %lo(D_80110CA0)($at)
.L800DAF34:
/* B6334 800DAF34 C4200900 */  lwc1       $f0, 0x900($at)
/* B6338 800DAF38 03E00008 */  jr         $ra
/* B633C 800DAF3C 00000000 */   nop

glabel func_800DAF40
/* B6340 800DAF40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B6344 800DAF44 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6348 800DAF48 AFA5001C */  sw         $a1, 0x1c($sp)
/* B634C 800DAF4C AFA60020 */  sw         $a2, 0x20($sp)
/* B6350 800DAF50 AFA70024 */  sw         $a3, 0x24($sp)
/* B6354 800DAF54 0C036A30 */  jal        func_800DA8C0
/* B6358 800DAF58 AFA40018 */   sw        $a0, 0x18($sp)
/* B635C 800DAF5C 8FA40018 */  lw         $a0, 0x18($sp)
/* B6360 800DAF60 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* B6364 800DAF64 E4840030 */  swc1       $f4, 0x30($a0)
/* B6368 800DAF68 C7A60020 */  lwc1       $f6, 0x20($sp)
/* B636C 800DAF6C E4860034 */  swc1       $f6, 0x34($a0)
/* B6370 800DAF70 C7A80024 */  lwc1       $f8, 0x24($sp)
/* B6374 800DAF74 E4880038 */  swc1       $f8, 0x38($a0)
/* B6378 800DAF78 8FBF0014 */  lw         $ra, 0x14($sp)
/* B637C 800DAF7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B6380 800DAF80 03E00008 */  jr         $ra
/* B6384 800DAF84 00000000 */   nop

glabel func_800DAF88
/* B6388 800DAF88 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B638C 800DAF8C AFBF0014 */  sw         $ra, 0x14($sp)
/* B6390 800DAF90 AFA40068 */  sw         $a0, 0x68($sp)
/* B6394 800DAF94 AFA5006C */  sw         $a1, 0x6c($sp)
/* B6398 800DAF98 AFA60070 */  sw         $a2, 0x70($sp)
/* B639C 800DAF9C AFA70074 */  sw         $a3, 0x74($sp)
/* B63A0 800DAFA0 0C036A30 */  jal        func_800DA8C0
/* B63A4 800DAFA4 27A40028 */   addiu     $a0, $sp, 0x28
/* B63A8 800DAFA8 C7A4006C */  lwc1       $f4, 0x6c($sp)
/* B63AC 800DAFAC C7A60070 */  lwc1       $f6, 0x70($sp)
/* B63B0 800DAFB0 C7A80074 */  lwc1       $f8, 0x74($sp)
/* B63B4 800DAFB4 27A40028 */  addiu      $a0, $sp, 0x28
/* B63B8 800DAFB8 8FA50068 */  lw         $a1, 0x68($sp)
/* B63BC 800DAFBC E7A40058 */  swc1       $f4, 0x58($sp)
/* B63C0 800DAFC0 E7A6005C */  swc1       $f6, 0x5c($sp)
/* B63C4 800DAFC4 0C0369F0 */  jal        func_800DA7C0
/* B63C8 800DAFC8 E7A80060 */   swc1      $f8, 0x60($sp)
/* B63CC 800DAFCC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B63D0 800DAFD0 27BD0068 */  addiu      $sp, $sp, 0x68
/* B63D4 800DAFD4 03E00008 */  jr         $ra
/* B63D8 800DAFD8 00000000 */   nop
/* B63DC 800DAFDC 00000000 */  nop
