.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ECD10
/* C8110 800ECD10 8C8E0008 */  lw         $t6, 8($a0)
/* C8114 800ECD14 ACAE0000 */  sw         $t6, ($a1)
/* C8118 800ECD18 848F001A */  lh         $t7, 0x1a($a0)
/* C811C 800ECD1C A4AF000C */  sh         $t7, 0xc($a1)
/* C8120 800ECD20 8C98000C */  lw         $t8, 0xc($a0)
/* C8124 800ECD24 03E00008 */  jr         $ra
/* C8128 800ECD28 ACB80004 */   sw        $t8, 4($a1)

glabel func_800ECD2C
/* C812C 800ECD2C 8CAE0000 */  lw         $t6, ($a1)
/* C8130 800ECD30 AC8E0008 */  sw         $t6, 8($a0)
/* C8134 800ECD34 84AF000C */  lh         $t7, 0xc($a1)
/* C8138 800ECD38 A48F001A */  sh         $t7, 0x1a($a0)
/* C813C 800ECD3C 8CB80004 */  lw         $t8, 4($a1)
/* C8140 800ECD40 03E00008 */  jr         $ra
/* C8144 800ECD44 AC98000C */   sw        $t8, 0xc($a0)

glabel func_800ECD48
/* C8148 800ECD48 03E00008 */  jr         $ra
/* C814C 800ECD4C 8C82000C */   lw        $v0, 0xc($a0)

glabel func_800ECD50
/* C8150 800ECD50 03E00008 */  jr         $ra
/* C8154 800ECD54 00000000 */   nop

glabel func_800ECD58
/* C8158 800ECD58 8C830008 */  lw         $v1, 8($a0)
/* C815C 800ECD5C 90620000 */  lbu        $v0, ($v1)
/* C8160 800ECD60 246E0001 */  addiu      $t6, $v1, 1
/* C8164 800ECD64 AC8E0008 */  sw         $t6, 8($a0)
/* C8168 800ECD68 304F0080 */  andi       $t7, $v0, 0x80
/* C816C 800ECD6C 11E0000B */  beqz       $t7, .L800ECD9C
/* C8170 800ECD70 00402825 */   or        $a1, $v0, $zero
/* C8174 800ECD74 3045007F */  andi       $a1, $v0, 0x7f
.L800ECD78:
/* C8178 800ECD78 8C830008 */  lw         $v1, 8($a0)
/* C817C 800ECD7C 0005C9C0 */  sll        $t9, $a1, 7
/* C8180 800ECD80 90620000 */  lbu        $v0, ($v1)
/* C8184 800ECD84 24780001 */  addiu      $t8, $v1, 1
/* C8188 800ECD88 AC980008 */  sw         $t8, 8($a0)
/* C818C 800ECD8C 304E007F */  andi       $t6, $v0, 0x7f
/* C8190 800ECD90 304F0080 */  andi       $t7, $v0, 0x80
/* C8194 800ECD94 15E0FFF8 */  bnez       $t7, .L800ECD78
/* C8198 800ECD98 032E2821 */   addu      $a1, $t9, $t6
.L800ECD9C:
/* C819C 800ECD9C 03E00008 */  jr         $ra
/* C81A0 800ECDA0 00A01025 */   or        $v0, $a1, $zero

glabel func_800ECDA4
/* C81A4 800ECDA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C81A8 800ECDA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C81AC 800ECDAC 00803025 */  or         $a2, $a0, $zero
/* C81B0 800ECDB0 0C03B356 */  jal        func_800ECD58
/* C81B4 800ECDB4 00A03825 */   or        $a3, $a1, $zero
/* C81B8 800ECDB8 8CCE000C */  lw         $t6, 0xc($a2)
/* C81BC 800ECDBC 8CC30008 */  lw         $v1, 8($a2)
/* C81C0 800ECDC0 00404825 */  or         $t1, $v0, $zero
/* C81C4 800ECDC4 01C27821 */  addu       $t7, $t6, $v0
/* C81C8 800ECDC8 ACCF000C */  sw         $t7, 0xc($a2)
/* C81CC 800ECDCC 90640000 */  lbu        $a0, ($v1)
/* C81D0 800ECDD0 240100FF */  addiu      $at, $zero, 0xff
/* C81D4 800ECDD4 24780001 */  addiu      $t8, $v1, 1
/* C81D8 800ECDD8 ACD80008 */  sw         $t8, 8($a2)
/* C81DC 800ECDDC 00801025 */  or         $v0, $a0, $zero
/* C81E0 800ECDE0 1481002F */  bne        $a0, $at, .L800ECEA0
/* C81E4 800ECDE4 308500FF */   andi      $a1, $a0, 0xff
/* C81E8 800ECDE8 93020000 */  lbu        $v0, ($t8)
/* C81EC 800ECDEC 27190001 */  addiu      $t9, $t8, 1
/* C81F0 800ECDF0 24010051 */  addiu      $at, $zero, 0x51
/* C81F4 800ECDF4 ACD90008 */  sw         $t9, 8($a2)
/* C81F8 800ECDF8 1441001B */  bne        $v0, $at, .L800ECE68
/* C81FC 800ECDFC 00404025 */   or        $t0, $v0, $zero
/* C8200 800ECE00 240E0003 */  addiu      $t6, $zero, 3
/* C8204 800ECE04 A4EE0000 */  sh         $t6, ($a3)
/* C8208 800ECE08 ACE90004 */  sw         $t1, 4($a3)
/* C820C 800ECE0C A0E50008 */  sb         $a1, 8($a3)
/* C8210 800ECE10 A0E80009 */  sb         $t0, 9($a3)
/* C8214 800ECE14 8CC30008 */  lw         $v1, 8($a2)
/* C8218 800ECE18 90620000 */  lbu        $v0, ($v1)
/* C821C 800ECE1C 246F0001 */  addiu      $t7, $v1, 1
/* C8220 800ECE20 ACCF0008 */  sw         $t7, 8($a2)
/* C8224 800ECE24 A0E2000A */  sb         $v0, 0xa($a3)
/* C8228 800ECE28 8CC30008 */  lw         $v1, 8($a2)
/* C822C 800ECE2C 90640000 */  lbu        $a0, ($v1)
/* C8230 800ECE30 24780001 */  addiu      $t8, $v1, 1
/* C8234 800ECE34 ACD80008 */  sw         $t8, 8($a2)
/* C8238 800ECE38 A0E4000B */  sb         $a0, 0xb($a3)
/* C823C 800ECE3C 8CC30008 */  lw         $v1, 8($a2)
/* C8240 800ECE40 90650000 */  lbu        $a1, ($v1)
/* C8244 800ECE44 24790001 */  addiu      $t9, $v1, 1
/* C8248 800ECE48 ACD90008 */  sw         $t9, 8($a2)
/* C824C 800ECE4C A0E5000C */  sb         $a1, 0xc($a3)
/* C8250 800ECE50 8CC30008 */  lw         $v1, 8($a2)
/* C8254 800ECE54 90640000 */  lbu        $a0, ($v1)
/* C8258 800ECE58 246E0001 */  addiu      $t6, $v1, 1
/* C825C 800ECE5C ACCE0008 */  sw         $t6, 8($a2)
/* C8260 800ECE60 1000000D */  b          .L800ECE98
/* C8264 800ECE64 A0E4000D */   sb        $a0, 0xd($a3)
.L800ECE68:
/* C8268 800ECE68 2401002F */  addiu      $at, $zero, 0x2f
/* C826C 800ECE6C 1441000A */  bne        $v0, $at, .L800ECE98
/* C8270 800ECE70 240F0004 */   addiu     $t7, $zero, 4
/* C8274 800ECE74 A4EF0000 */  sh         $t7, ($a3)
/* C8278 800ECE78 ACE90004 */  sw         $t1, 4($a3)
/* C827C 800ECE7C A0E50008 */  sb         $a1, 8($a3)
/* C8280 800ECE80 A0E80009 */  sb         $t0, 9($a3)
/* C8284 800ECE84 8CC30008 */  lw         $v1, 8($a2)
/* C8288 800ECE88 90640000 */  lbu        $a0, ($v1)
/* C828C 800ECE8C 24780001 */  addiu      $t8, $v1, 1
/* C8290 800ECE90 ACD80008 */  sw         $t8, 8($a2)
/* C8294 800ECE94 A0E4000A */  sb         $a0, 0xa($a3)
.L800ECE98:
/* C8298 800ECE98 1000001F */  b          .L800ECF18
/* C829C 800ECE9C A4C0001A */   sh        $zero, 0x1a($a2)
.L800ECEA0:
/* C82A0 800ECEA0 24190001 */  addiu      $t9, $zero, 1
/* C82A4 800ECEA4 304E0080 */  andi       $t6, $v0, 0x80
/* C82A8 800ECEA8 A4F90000 */  sh         $t9, ($a3)
/* C82AC 800ECEAC 11C00009 */  beqz       $t6, .L800ECED4
/* C82B0 800ECEB0 ACE90004 */   sw        $t1, 4($a3)
/* C82B4 800ECEB4 A0E50008 */  sb         $a1, 8($a3)
/* C82B8 800ECEB8 8CC30008 */  lw         $v1, 8($a2)
/* C82BC 800ECEBC 90640000 */  lbu        $a0, ($v1)
/* C82C0 800ECEC0 246F0001 */  addiu      $t7, $v1, 1
/* C82C4 800ECEC4 ACCF0008 */  sw         $t7, 8($a2)
/* C82C8 800ECEC8 A0E40009 */  sb         $a0, 9($a3)
/* C82CC 800ECECC 10000004 */  b          .L800ECEE0
/* C82D0 800ECED0 A4C5001A */   sh        $a1, 0x1a($a2)
.L800ECED4:
/* C82D4 800ECED4 84D8001A */  lh         $t8, 0x1a($a2)
/* C82D8 800ECED8 A0E40009 */  sb         $a0, 9($a3)
/* C82DC 800ECEDC A0F80008 */  sb         $t8, 8($a3)
.L800ECEE0:
/* C82E0 800ECEE0 90E20008 */  lbu        $v0, 8($a3)
/* C82E4 800ECEE4 240100C0 */  addiu      $at, $zero, 0xc0
/* C82E8 800ECEE8 305900F0 */  andi       $t9, $v0, 0xf0
/* C82EC 800ECEEC 13210009 */  beq        $t9, $at, .L800ECF14
/* C82F0 800ECEF0 240100D0 */   addiu     $at, $zero, 0xd0
/* C82F4 800ECEF4 53210008 */  beql       $t9, $at, .L800ECF18
/* C82F8 800ECEF8 A0E0000A */   sb        $zero, 0xa($a3)
/* C82FC 800ECEFC 8CC30008 */  lw         $v1, 8($a2)
/* C8300 800ECF00 90640000 */  lbu        $a0, ($v1)
/* C8304 800ECF04 246E0001 */  addiu      $t6, $v1, 1
/* C8308 800ECF08 ACCE0008 */  sw         $t6, 8($a2)
/* C830C 800ECF0C 10000002 */  b          .L800ECF18
/* C8310 800ECF10 A0E4000A */   sb        $a0, 0xa($a3)
.L800ECF14:
/* C8314 800ECF14 A0E0000A */  sb         $zero, 0xa($a3)
.L800ECF18:
/* C8318 800ECF18 8FBF0014 */  lw         $ra, 0x14($sp)
/* C831C 800ECF1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* C8320 800ECF20 03E00008 */  jr         $ra
/* C8324 800ECF24 00000000 */   nop

glabel func_800ECF28
/* C8328 800ECF28 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C832C 800ECF2C AFB70030 */  sw         $s7, 0x30($sp)
/* C8330 800ECF30 AFB10018 */  sw         $s1, 0x18($sp)
/* C8334 800ECF34 AFB00014 */  sw         $s0, 0x14($sp)
/* C8338 800ECF38 00808025 */  or         $s0, $a0, $zero
/* C833C 800ECF3C 00C08825 */  or         $s1, $a2, $zero
/* C8340 800ECF40 00A0B825 */  or         $s7, $a1, $zero
/* C8344 800ECF44 AFBF0034 */  sw         $ra, 0x34($sp)
/* C8348 800ECF48 AFB6002C */  sw         $s6, 0x2c($sp)
/* C834C 800ECF4C AFB50028 */  sw         $s5, 0x28($sp)
/* C8350 800ECF50 AFB40024 */  sw         $s4, 0x24($sp)
/* C8354 800ECF54 AFB30020 */  sw         $s3, 0x20($sp)
/* C8358 800ECF58 14C00007 */  bnez       $a2, .L800ECF78
/* C835C 800ECF5C AFB2001C */   sw        $s2, 0x1c($sp)
/* C8360 800ECF60 8C8E0004 */  lw         $t6, 4($a0)
/* C8364 800ECF64 A4A0000C */  sh         $zero, 0xc($a1)
/* C8368 800ECF68 ACA00004 */  sw         $zero, 4($a1)
/* C836C 800ECF6C ACA00008 */  sw         $zero, 8($a1)
/* C8370 800ECF70 1000002A */  b          .L800ED01C
/* C8374 800ECF74 ACAE0000 */   sw        $t6, ($a1)
.L800ECF78:
/* C8378 800ECF78 8E0F0008 */  lw         $t7, 8($s0)
/* C837C 800ECF7C 00001025 */  or         $v0, $zero, $zero
/* C8380 800ECF80 24130004 */  addiu      $s3, $zero, 4
/* C8384 800ECF84 AFAF004C */  sw         $t7, 0x4c($sp)
/* C8388 800ECF88 8618001A */  lh         $t8, 0x1a($s0)
/* C838C 800ECF8C 27B20050 */  addiu      $s2, $sp, 0x50
/* C8390 800ECF90 A7B8003E */  sh         $t8, 0x3e($sp)
/* C8394 800ECF94 8E19000C */  lw         $t9, 0xc($s0)
/* C8398 800ECF98 AFB90044 */  sw         $t9, 0x44($sp)
/* C839C 800ECF9C 8E080004 */  lw         $t0, 4($s0)
/* C83A0 800ECFA0 A600001A */  sh         $zero, 0x1a($s0)
/* C83A4 800ECFA4 AE00000C */  sw         $zero, 0xc($s0)
/* C83A8 800ECFA8 AE080008 */  sw         $t0, 8($s0)
/* C83AC 800ECFAC 8E140008 */  lw         $s4, 8($s0)
.L800ECFB0:
/* C83B0 800ECFB0 8615001A */  lh         $s5, 0x1a($s0)
/* C83B4 800ECFB4 0040B025 */  or         $s6, $v0, $zero
/* C83B8 800ECFB8 02002025 */  or         $a0, $s0, $zero
/* C83BC 800ECFBC 0C03B369 */  jal        func_800ECDA4
/* C83C0 800ECFC0 02402825 */   or        $a1, $s2, $zero
/* C83C4 800ECFC4 87A90050 */  lh         $t1, 0x50($sp)
/* C83C8 800ECFC8 55330006 */  bnel       $t1, $s3, .L800ECFE4
/* C83CC 800ECFCC 8E02000C */   lw        $v0, 0xc($s0)
/* C83D0 800ECFD0 8E140008 */  lw         $s4, 8($s0)
/* C83D4 800ECFD4 8615001A */  lh         $s5, 0x1a($s0)
/* C83D8 800ECFD8 10000005 */  b          .L800ECFF0
/* C83DC 800ECFDC 8E16000C */   lw        $s6, 0xc($s0)
/* C83E0 800ECFE0 8E02000C */  lw         $v0, 0xc($s0)
.L800ECFE4:
/* C83E4 800ECFE4 0051082B */  sltu       $at, $v0, $s1
/* C83E8 800ECFE8 5420FFF1 */  bnel       $at, $zero, .L800ECFB0
/* C83EC 800ECFEC 8E140008 */   lw        $s4, 8($s0)
.L800ECFF0:
/* C83F0 800ECFF0 AEF40000 */  sw         $s4, ($s7)
/* C83F4 800ECFF4 A6F5000C */  sh         $s5, 0xc($s7)
/* C83F8 800ECFF8 AEF60004 */  sw         $s6, 4($s7)
/* C83FC 800ECFFC 8E0A000C */  lw         $t2, 0xc($s0)
/* C8400 800ED000 AEEA0008 */  sw         $t2, 8($s7)
/* C8404 800ED004 8FAB004C */  lw         $t3, 0x4c($sp)
/* C8408 800ED008 AE0B0008 */  sw         $t3, 8($s0)
/* C840C 800ED00C 87AC003E */  lh         $t4, 0x3e($sp)
/* C8410 800ED010 A60C001A */  sh         $t4, 0x1a($s0)
/* C8414 800ED014 8FAD0044 */  lw         $t5, 0x44($sp)
/* C8418 800ED018 AE0D000C */  sw         $t5, 0xc($s0)
.L800ED01C:
/* C841C 800ED01C 8FBF0034 */  lw         $ra, 0x34($sp)
/* C8420 800ED020 8FB00014 */  lw         $s0, 0x14($sp)
/* C8424 800ED024 8FB10018 */  lw         $s1, 0x18($sp)
/* C8428 800ED028 8FB2001C */  lw         $s2, 0x1c($sp)
/* C842C 800ED02C 8FB30020 */  lw         $s3, 0x20($sp)
/* C8430 800ED030 8FB40024 */  lw         $s4, 0x24($sp)
/* C8434 800ED034 8FB50028 */  lw         $s5, 0x28($sp)
/* C8438 800ED038 8FB6002C */  lw         $s6, 0x2c($sp)
/* C843C 800ED03C 8FB70030 */  lw         $s7, 0x30($sp)
/* C8440 800ED040 03E00008 */  jr         $ra
/* C8444 800ED044 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800ED048
/* C8448 800ED048 44856000 */  mtc1       $a1, $f12
/* C844C 800ED04C 3C018011 */  lui        $at, %hi(D_80111190)
/* C8450 800ED050 D4261190 */  ldc1       $f6, %lo(D_80111190)($at)
/* C8454 800ED054 848E0018 */  lh         $t6, 0x18($a0)
/* C8458 800ED058 46006121 */  cvt.d.s    $f4, $f12
/* C845C 800ED05C 3C0141F0 */  lui        $at, 0x41f0
/* C8460 800ED060 46262202 */  mul.d      $f8, $f4, $f6
/* C8464 800ED064 448E5000 */  mtc1       $t6, $f10
/* C8468 800ED068 44862000 */  mtc1       $a2, $f4
/* C846C 800ED06C 46805421 */  cvt.d.w    $f16, $f10
/* C8470 800ED070 468021A1 */  cvt.d.w    $f6, $f4
/* C8474 800ED074 46304482 */  mul.d      $f18, $f8, $f16
/* C8478 800ED078 04C30006 */  bgezl      $a2, .L800ED094
/* C847C 800ED07C 46269203 */   div.d     $f8, $f18, $f6
/* C8480 800ED080 44815800 */  mtc1       $at, $f11
/* C8484 800ED084 44805000 */  mtc1       $zero, $f10
/* C8488 800ED088 00000000 */  nop
/* C848C 800ED08C 462A3180 */  add.d      $f6, $f6, $f10
/* C8490 800ED090 46269203 */  div.d      $f8, $f18, $f6
.L800ED094:
/* C8494 800ED094 24020001 */  addiu      $v0, $zero, 1
/* C8498 800ED098 3C0141E0 */  lui        $at, 0x41e0
/* C849C 800ED09C 444FF800 */  cfc1       $t7, $31
/* C84A0 800ED0A0 44C2F800 */  ctc1       $v0, $31
/* C84A4 800ED0A4 00000000 */  nop
/* C84A8 800ED0A8 46204424 */  cvt.w.d    $f16, $f8
/* C84AC 800ED0AC 4442F800 */  cfc1       $v0, $31
/* C84B0 800ED0B0 00000000 */  nop
/* C84B4 800ED0B4 30420078 */  andi       $v0, $v0, 0x78
/* C84B8 800ED0B8 50400016 */  beql       $v0, $zero, .L800ED114
/* C84BC 800ED0BC 44028000 */   mfc1      $v0, $f16
/* C84C0 800ED0C0 44818800 */  mtc1       $at, $f17
/* C84C4 800ED0C4 44808000 */  mtc1       $zero, $f16
/* C84C8 800ED0C8 24020001 */  addiu      $v0, $zero, 1
/* C84CC 800ED0CC 3C018000 */  lui        $at, 0x8000
/* C84D0 800ED0D0 46304401 */  sub.d      $f16, $f8, $f16
/* C84D4 800ED0D4 44C2F800 */  ctc1       $v0, $31
/* C84D8 800ED0D8 00000000 */  nop
/* C84DC 800ED0DC 46208424 */  cvt.w.d    $f16, $f16
/* C84E0 800ED0E0 4442F800 */  cfc1       $v0, $31
/* C84E4 800ED0E4 00000000 */  nop
/* C84E8 800ED0E8 30420078 */  andi       $v0, $v0, 0x78
/* C84EC 800ED0EC 54400006 */  bnel       $v0, $zero, .L800ED108
/* C84F0 800ED0F0 44CFF800 */   ctc1      $t7, $31
/* C84F4 800ED0F4 44028000 */  mfc1       $v0, $f16
/* C84F8 800ED0F8 44CFF800 */  ctc1       $t7, $31
/* C84FC 800ED0FC 03E00008 */  jr         $ra
/* C8500 800ED100 00411025 */   or        $v0, $v0, $at
/* C8504 800ED104 44CFF800 */  ctc1       $t7, $31
.L800ED108:
/* C8508 800ED108 03E00008 */  jr         $ra
/* C850C 800ED10C 2402FFFF */   addiu     $v0, $zero, -1
/* C8510 800ED110 44028000 */  mfc1       $v0, $f16
.L800ED114:
/* C8514 800ED114 00000000 */  nop
/* C8518 800ED118 0442FFFB */  bltzl      $v0, .L800ED108
/* C851C 800ED11C 44CFF800 */   ctc1      $t7, $31
/* C8520 800ED120 44CFF800 */  ctc1       $t7, $31
/* C8524 800ED124 03E00008 */  jr         $ra
/* C8528 800ED128 00000000 */   nop

glabel func_800ED12C
/* C852C 800ED12C 44852000 */  mtc1       $a1, $f4
/* C8530 800ED130 44864000 */  mtc1       $a2, $f8
/* C8534 800ED134 3C014F80 */  lui        $at, 0x4f80
/* C8538 800ED138 468021A0 */  cvt.s.w    $f6, $f4
/* C853C 800ED13C 04C10004 */  bgez       $a2, .L800ED150
/* C8540 800ED140 468042A0 */   cvt.s.w   $f10, $f8
/* C8544 800ED144 44818000 */  mtc1       $at, $f16
/* C8548 800ED148 00000000 */  nop
/* C854C 800ED14C 46105280 */  add.s      $f10, $f10, $f16
.L800ED150:
/* C8550 800ED150 848E0018 */  lh         $t6, 0x18($a0)
/* C8554 800ED154 460A3482 */  mul.s      $f18, $f6, $f10
/* C8558 800ED158 3C018011 */  lui        $at, %hi(D_80111198)
/* C855C 800ED15C 448E4000 */  mtc1       $t6, $f8
/* C8560 800ED160 D42A1198 */  ldc1       $f10, %lo(D_80111198)($at)
/* C8564 800ED164 46804420 */  cvt.s.w    $f16, $f8
/* C8568 800ED168 46009121 */  cvt.d.s    $f4, $f18
/* C856C 800ED16C 460081A1 */  cvt.d.s    $f6, $f16
/* C8570 800ED170 462A3482 */  mul.d      $f18, $f6, $f10
/* C8574 800ED174 46322203 */  div.d      $f8, $f4, $f18
/* C8578 800ED178 03E00008 */  jr         $ra
/* C857C 800ED17C 46204020 */   cvt.s.d   $f0, $f8

glabel func_800ED180
/* C8580 800ED180 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C8584 800ED184 AFBF0014 */  sw         $ra, 0x14($sp)
/* C8588 800ED188 8C8F0010 */  lw         $t7, 0x10($a0)
/* C858C 800ED18C 8C8E0000 */  lw         $t6, ($a0)
/* C8590 800ED190 8C820008 */  lw         $v0, 8($a0)
/* C8594 800ED194 00803025 */  or         $a2, $a0, $zero
/* C8598 800ED198 01CFC021 */  addu       $t8, $t6, $t7
/* C859C 800ED19C 0058082B */  sltu       $at, $v0, $t8
/* C85A0 800ED1A0 14200003 */  bnez       $at, .L800ED1B0
/* C85A4 800ED1A4 00A04025 */   or        $t0, $a1, $zero
/* C85A8 800ED1A8 10000007 */  b          .L800ED1C8
/* C85AC 800ED1AC 00001025 */   or        $v0, $zero, $zero
.L800ED1B0:
/* C85B0 800ED1B0 00403825 */  or         $a3, $v0, $zero
/* C85B4 800ED1B4 0C03B356 */  jal        func_800ECD58
/* C85B8 800ED1B8 00C02025 */   or        $a0, $a2, $zero
/* C85BC 800ED1BC AD020000 */  sw         $v0, ($t0)
/* C85C0 800ED1C0 ACC70008 */  sw         $a3, 8($a2)
/* C85C4 800ED1C4 24020001 */  addiu      $v0, $zero, 1
.L800ED1C8:
/* C85C8 800ED1C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C85CC 800ED1CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* C85D0 800ED1D0 03E00008 */  jr         $ra
/* C85D4 800ED1D4 00000000 */   nop

glabel func_800ED1D8
/* C85D8 800ED1D8 8C850008 */  lw         $a1, 8($a0)
/* C85DC 800ED1DC 90A30000 */  lbu        $v1, ($a1)
/* C85E0 800ED1E0 24AF0001 */  addiu      $t7, $a1, 1
/* C85E4 800ED1E4 AC8F0008 */  sw         $t7, 8($a0)
/* C85E8 800ED1E8 91F80000 */  lbu        $t8, ($t7)
/* C85EC 800ED1EC 00037600 */  sll        $t6, $v1, 0x18
/* C85F0 800ED1F0 0018CC00 */  sll        $t9, $t8, 0x10
/* C85F4 800ED1F4 01D91825 */  or         $v1, $t6, $t9
/* C85F8 800ED1F8 25EE0001 */  addiu      $t6, $t7, 1
/* C85FC 800ED1FC AC8E0008 */  sw         $t6, 8($a0)
/* C8600 800ED200 91CF0000 */  lbu        $t7, ($t6)
/* C8604 800ED204 25D90001 */  addiu      $t9, $t6, 1
/* C8608 800ED208 AC990008 */  sw         $t9, 8($a0)
/* C860C 800ED20C 000FC200 */  sll        $t8, $t7, 8
/* C8610 800ED210 932E0000 */  lbu        $t6, ($t9)
/* C8614 800ED214 00781825 */  or         $v1, $v1, $t8
/* C8618 800ED218 272F0001 */  addiu      $t7, $t9, 1
/* C861C 800ED21C AC8F0008 */  sw         $t7, 8($a0)
/* C8620 800ED220 03E00008 */  jr         $ra
/* C8624 800ED224 006E1025 */   or        $v0, $v1, $t6

glabel func_800ED228
/* C8628 800ED228 8C850008 */  lw         $a1, 8($a0)
/* C862C 800ED22C 90A30000 */  lbu        $v1, ($a1)
/* C8630 800ED230 24B90001 */  addiu      $t9, $a1, 1
/* C8634 800ED234 AC990008 */  sw         $t9, 8($a0)
/* C8638 800ED238 932E0000 */  lbu        $t6, ($t9)
/* C863C 800ED23C 0003C200 */  sll        $t8, $v1, 8
/* C8640 800ED240 27390001 */  addiu      $t9, $t9, 1
/* C8644 800ED244 030E1825 */  or         $v1, $t8, $t6
/* C8648 800ED248 00037C00 */  sll        $t7, $v1, 0x10
/* C864C 800ED24C 000F1403 */  sra        $v0, $t7, 0x10
/* C8650 800ED250 03E00008 */  jr         $ra
/* C8654 800ED254 AC990008 */   sw        $t9, 8($a0)

glabel func_800ED258
/* C8658 800ED258 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C865C 800ED25C AFBF0014 */  sw         $ra, 0x14($sp)
/* C8660 800ED260 00803825 */  or         $a3, $a0, $zero
/* C8664 800ED264 AC850000 */  sw         $a1, ($a0)
/* C8668 800ED268 AC860010 */  sw         $a2, 0x10($a0)
/* C866C 800ED26C A480001A */  sh         $zero, 0x1a($a0)
/* C8670 800ED270 AC80000C */  sw         $zero, 0xc($a0)
/* C8674 800ED274 0C03B476 */  jal        func_800ED1D8
/* C8678 800ED278 AC850008 */   sw        $a1, 8($a0)
/* C867C 800ED27C 3C014D54 */  lui        $at, 0x4d54
/* C8680 800ED280 34216864 */  ori        $at, $at, 0x6864
/* C8684 800ED284 54410027 */  bnel       $v0, $at, .L800ED324
/* C8688 800ED288 8FBF0014 */   lw        $ra, 0x14($sp)
/* C868C 800ED28C 0C03B476 */  jal        func_800ED1D8
/* C8690 800ED290 00E02025 */   or        $a0, $a3, $zero
/* C8694 800ED294 0C03B48A */  jal        func_800ED228
/* C8698 800ED298 00E02025 */   or        $a0, $a3, $zero
/* C869C 800ED29C 54400021 */  bnel       $v0, $zero, .L800ED324
/* C86A0 800ED2A0 8FBF0014 */   lw        $ra, 0x14($sp)
/* C86A4 800ED2A4 0C03B48A */  jal        func_800ED228
/* C86A8 800ED2A8 00E02025 */   or        $a0, $a3, $zero
/* C86AC 800ED2AC 24010001 */  addiu      $at, $zero, 1
/* C86B0 800ED2B0 5441001C */  bnel       $v0, $at, .L800ED324
/* C86B4 800ED2B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* C86B8 800ED2B8 0C03B48A */  jal        func_800ED228
/* C86BC 800ED2BC 00E02025 */   or        $a0, $a3, $zero
/* C86C0 800ED2C0 A4E20018 */  sh         $v0, 0x18($a3)
/* C86C4 800ED2C4 84E30018 */  lh         $v1, 0x18($a3)
/* C86C8 800ED2C8 306E8000 */  andi       $t6, $v1, 0x8000
/* C86CC 800ED2CC 55C00015 */  bnel       $t6, $zero, .L800ED324
/* C86D0 800ED2D0 8FBF0014 */   lw        $ra, 0x14($sp)
/* C86D4 800ED2D4 44833000 */  mtc1       $v1, $f6
/* C86D8 800ED2D8 3C013FF0 */  lui        $at, 0x3ff0
/* C86DC 800ED2DC 44812800 */  mtc1       $at, $f5
/* C86E0 800ED2E0 46803220 */  cvt.s.w    $f8, $f6
/* C86E4 800ED2E4 44802000 */  mtc1       $zero, $f4
/* C86E8 800ED2E8 00E02025 */  or         $a0, $a3, $zero
/* C86EC 800ED2EC 460042A1 */  cvt.d.s    $f10, $f8
/* C86F0 800ED2F0 462A2183 */  div.d      $f6, $f4, $f10
/* C86F4 800ED2F4 46203220 */  cvt.s.d    $f8, $f6
/* C86F8 800ED2F8 0C03B476 */  jal        func_800ED1D8
/* C86FC 800ED2FC E4E80014 */   swc1      $f8, 0x14($a3)
/* C8700 800ED300 3C014D54 */  lui        $at, 0x4d54
/* C8704 800ED304 3421726B */  ori        $at, $at, 0x726b
/* C8708 800ED308 54410006 */  bnel       $v0, $at, .L800ED324
/* C870C 800ED30C 8FBF0014 */   lw        $ra, 0x14($sp)
/* C8710 800ED310 0C03B476 */  jal        func_800ED1D8
/* C8714 800ED314 00E02025 */   or        $a0, $a3, $zero
/* C8718 800ED318 8CEF0008 */  lw         $t7, 8($a3)
/* C871C 800ED31C ACEF0004 */  sw         $t7, 4($a3)
/* C8720 800ED320 8FBF0014 */  lw         $ra, 0x14($sp)
.L800ED324:
/* C8724 800ED324 27BD0018 */  addiu      $sp, $sp, 0x18
/* C8728 800ED328 03E00008 */  jr         $ra
/* C872C 800ED32C 00000000 */   nop

glabel func_800ED330
/* C8730 800ED330 AFA40000 */  sw         $a0, ($sp)
/* C8734 800ED334 AFA60008 */  sw         $a2, 8($sp)
/* C8738 800ED338 03E00008 */  jr         $ra
/* C873C 800ED33C A4A60016 */   sh        $a2, 0x16($a1)

glabel func_800ED340
/* C8740 800ED340 00801025 */  or         $v0, $a0, $zero
/* C8744 800ED344 00A01825 */  or         $v1, $a1, $zero
/* C8748 800ED348 18C00018 */  blez       $a2, .L800ED3AC
/* C874C 800ED34C 00003825 */   or        $a3, $zero, $zero
/* C8750 800ED350 30C50003 */  andi       $a1, $a2, 3
/* C8754 800ED354 10A00009 */  beqz       $a1, .L800ED37C
/* C8758 800ED358 00A02025 */   or        $a0, $a1, $zero
.L800ED35C:
/* C875C 800ED35C 904E0000 */  lbu        $t6, ($v0)
/* C8760 800ED360 24E70001 */  addiu      $a3, $a3, 1
/* C8764 800ED364 24630001 */  addiu      $v1, $v1, 1
/* C8768 800ED368 24420001 */  addiu      $v0, $v0, 1
/* C876C 800ED36C 1487FFFB */  bne        $a0, $a3, .L800ED35C
/* C8770 800ED370 A06EFFFF */   sb        $t6, -1($v1)
/* C8774 800ED374 10E6000D */  beq        $a3, $a2, .L800ED3AC
/* C8778 800ED378 00000000 */   nop
.L800ED37C:
/* C877C 800ED37C 904F0000 */  lbu        $t7, ($v0)
/* C8780 800ED380 24E70004 */  addiu      $a3, $a3, 4
/* C8784 800ED384 24630004 */  addiu      $v1, $v1, 4
/* C8788 800ED388 A06FFFFC */  sb         $t7, -4($v1)
/* C878C 800ED38C 90580001 */  lbu        $t8, 1($v0)
/* C8790 800ED390 24420004 */  addiu      $v0, $v0, 4
/* C8794 800ED394 A078FFFD */  sb         $t8, -3($v1)
/* C8798 800ED398 9059FFFE */  lbu        $t9, -2($v0)
/* C879C 800ED39C A079FFFE */  sb         $t9, -2($v1)
/* C87A0 800ED3A0 9048FFFF */  lbu        $t0, -1($v0)
/* C87A4 800ED3A4 14E6FFF5 */  bne        $a3, $a2, .L800ED37C
/* C87A8 800ED3A8 A068FFFF */   sb        $t0, -1($v1)
.L800ED3AC:
/* C87AC 800ED3AC 03E00008 */  jr         $ra
/* C87B0 800ED3B0 00000000 */   nop
/* C87B4 800ED3B4 00000000 */  nop
/* C87B8 800ED3B8 00000000 */  nop
/* C87BC 800ED3BC 00000000 */  nop
