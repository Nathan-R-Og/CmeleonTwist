.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DCE50
/* B8250 800DCE50 3C0E8011 */  lui        $t6, %hi(D_80109E98)
/* B8254 800DCE54 8DCE9E98 */  lw         $t6, %lo(D_80109E98)($t6)
/* B8258 800DCE58 44844000 */  mtc1       $a0, $f8
/* B825C 800DCE5C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B8260 800DCE60 448E2000 */  mtc1       $t6, $f4
/* B8264 800DCE64 468042A0 */  cvt.s.w    $f10, $f8
/* B8268 800DCE68 04810005 */  bgez       $a0, .L800DCE80
/* B826C 800DCE6C 468021A0 */   cvt.s.w   $f6, $f4
/* B8270 800DCE70 3C014F80 */  lui        $at, 0x4f80
/* B8274 800DCE74 44818000 */  mtc1       $at, $f16
/* B8278 800DCE78 00000000 */  nop
/* B827C 800DCE7C 46105280 */  add.s      $f10, $f10, $f16
.L800DCE80:
/* B8280 800DCE80 460A3483 */  div.s      $f18, $f6, $f10
/* B8284 800DCE84 3C013F00 */  lui        $at, 0x3f00
/* B8288 800DCE88 44812000 */  mtc1       $at, $f4
/* B828C 800DCE8C 24050001 */  addiu      $a1, $zero, 1
/* B8290 800DCE90 46049300 */  add.s      $f12, $f18, $f4
/* B8294 800DCE94 444FF800 */  cfc1       $t7, $31
/* B8298 800DCE98 44C5F800 */  ctc1       $a1, $31
/* B829C 800DCE9C 00000000 */  nop
/* B82A0 800DCEA0 46006224 */  cvt.w.s    $f8, $f12
/* B82A4 800DCEA4 4445F800 */  cfc1       $a1, $31
/* B82A8 800DCEA8 00000000 */  nop
/* B82AC 800DCEAC 30A10004 */  andi       $at, $a1, 4
/* B82B0 800DCEB0 30A50078 */  andi       $a1, $a1, 0x78
/* B82B4 800DCEB4 10A00013 */  beqz       $a1, .L800DCF04
/* B82B8 800DCEB8 3C014F00 */   lui       $at, 0x4f00
/* B82BC 800DCEBC 44814000 */  mtc1       $at, $f8
/* B82C0 800DCEC0 24050001 */  addiu      $a1, $zero, 1
/* B82C4 800DCEC4 46086201 */  sub.s      $f8, $f12, $f8
/* B82C8 800DCEC8 44C5F800 */  ctc1       $a1, $31
/* B82CC 800DCECC 00000000 */  nop
/* B82D0 800DCED0 46004224 */  cvt.w.s    $f8, $f8
/* B82D4 800DCED4 4445F800 */  cfc1       $a1, $31
/* B82D8 800DCED8 00000000 */  nop
/* B82DC 800DCEDC 30A10004 */  andi       $at, $a1, 4
/* B82E0 800DCEE0 30A50078 */  andi       $a1, $a1, 0x78
/* B82E4 800DCEE4 14A00005 */  bnez       $a1, .L800DCEFC
/* B82E8 800DCEE8 00000000 */   nop
/* B82EC 800DCEEC 44054000 */  mfc1       $a1, $f8
/* B82F0 800DCEF0 3C018000 */  lui        $at, 0x8000
/* B82F4 800DCEF4 10000007 */  b          .L800DCF14
/* B82F8 800DCEF8 00A12825 */   or        $a1, $a1, $at
.L800DCEFC:
/* B82FC 800DCEFC 10000005 */  b          .L800DCF14
/* B8300 800DCF00 2405FFFF */   addiu     $a1, $zero, -1
.L800DCF04:
/* B8304 800DCF04 44054000 */  mfc1       $a1, $f8
/* B8308 800DCF08 00000000 */  nop
/* B830C 800DCF0C 04A0FFFB */  bltz       $a1, .L800DCEFC
/* B8310 800DCF10 00000000 */   nop
.L800DCF14:
/* B8314 800DCF14 44CFF800 */  ctc1       $t7, $31
/* B8318 800DCF18 2CA10084 */  sltiu      $at, $a1, 0x84
/* B831C 800DCF1C 10200003 */  beqz       $at, .L800DCF2C
/* B8320 800DCF20 00000000 */   nop
/* B8324 800DCF24 10000020 */  b          .L800DCFA8
/* B8328 800DCF28 2402FFFF */   addiu     $v0, $zero, -1
.L800DCF2C:
/* B832C 800DCF2C 24010042 */  addiu      $at, $zero, 0x42
/* B8330 800DCF30 00A1001B */  divu       $zero, $a1, $at
/* B8334 800DCF34 00003012 */  mflo       $a2
/* B8338 800DCF38 30D800FF */  andi       $t8, $a2, 0xff
/* B833C 800DCF3C 03003025 */  or         $a2, $t8, $zero
/* B8340 800DCF40 28C10011 */  slti       $at, $a2, 0x11
/* B8344 800DCF44 14200002 */  bnez       $at, .L800DCF50
/* B8348 800DCF48 00000000 */   nop
/* B834C 800DCF4C 24060010 */  addiu      $a2, $zero, 0x10
.L800DCF50:
/* B8350 800DCF50 24B9FFFF */  addiu      $t9, $a1, -1
/* B8354 800DCF54 3C08A450 */  lui        $t0, %hi(D_A4500010)
/* B8358 800DCF58 AD190010 */  sw         $t9, %lo(D_A4500010)($t0)
/* B835C 800DCF5C 24C9FFFF */  addiu      $t1, $a2, -1
/* B8360 800DCF60 3C0AA450 */  lui        $t2, %hi(D_A4500014)
/* B8364 800DCF64 AD490014 */  sw         $t1, %lo(D_A4500014)($t2)
/* B8368 800DCF68 240B0001 */  addiu      $t3, $zero, 1
/* B836C 800DCF6C 3C0CA450 */  lui        $t4, %hi(D_A4500008)
/* B8370 800DCF70 AD8B0008 */  sw         $t3, %lo(D_A4500008)($t4)
/* B8374 800DCF74 3C0D8011 */  lui        $t5, %hi(D_80109E98)
/* B8378 800DCF78 8DAD9E98 */  lw         $t5, %lo(D_80109E98)($t5)
/* B837C 800DCF7C 01A5001A */  div        $zero, $t5, $a1
/* B8380 800DCF80 00001012 */  mflo       $v0
/* B8384 800DCF84 14A00002 */  bnez       $a1, .L800DCF90
/* B8388 800DCF88 00000000 */   nop
/* B838C 800DCF8C 0007000D */  break      7
.L800DCF90:
/* B8390 800DCF90 2401FFFF */   addiu     $at, $zero, -1
/* B8394 800DCF94 14A10004 */  bne        $a1, $at, .L800DCFA8
/* B8398 800DCF98 3C018000 */   lui       $at, 0x8000
/* B839C 800DCF9C 15A10002 */  bne        $t5, $at, .L800DCFA8
/* B83A0 800DCFA0 00000000 */   nop
/* B83A4 800DCFA4 0006000D */  break      6
.L800DCFA8:
/* B83A8 800DCFA8 03E00008 */   jr        $ra
/* B83AC 800DCFAC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800DCFB0
/* B83B0 800DCFB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B83B4 800DCFB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B83B8 800DCFB8 8C8E002C */  lw         $t6, 0x2c($a0)
/* B83BC 800DCFBC 24010001 */  addiu      $at, $zero, 1
/* B83C0 800DCFC0 00803825 */  or         $a3, $a0, $zero
/* B83C4 800DCFC4 55C10013 */  bnel       $t6, $at, .L800DD014
/* B83C8 800DCFC8 8FBF0014 */   lw        $ra, 0x14($sp)
/* B83CC 800DCFCC 8C840018 */  lw         $a0, 0x18($a0)
/* B83D0 800DCFD0 27A5001C */  addiu      $a1, $sp, 0x1c
/* B83D4 800DCFD4 5080000F */  beql       $a0, $zero, .L800DD014
/* B83D8 800DCFD8 8FBF0014 */   lw        $ra, 0x14($sp)
/* B83DC 800DCFDC 0C038003 */  jal        func_800E000C
/* B83E0 800DCFE0 AFA70030 */   sw        $a3, 0x30($sp)
/* B83E4 800DCFE4 1040000A */  beqz       $v0, .L800DD010
/* B83E8 800DCFE8 8FA70030 */   lw        $a3, 0x30($sp)
/* B83EC 800DCFEC A7A00020 */  sh         $zero, 0x20($sp)
/* B83F0 800DCFF0 8CEF0024 */  lw         $t7, 0x24($a3)
/* B83F4 800DCFF4 8FB8001C */  lw         $t8, 0x1c($sp)
/* B83F8 800DCFF8 24E40048 */  addiu      $a0, $a3, 0x48
/* B83FC 800DCFFC 27A50020 */  addiu      $a1, $sp, 0x20
/* B8400 800DD000 01F80019 */  multu      $t7, $t8
/* B8404 800DD004 00003012 */  mflo       $a2
/* B8408 800DD008 0C03A0D7 */  jal        func_800E835C
/* B840C 800DD00C 00000000 */   nop
.L800DD010:
/* B8410 800DD010 8FBF0014 */  lw         $ra, 0x14($sp)
.L800DD014:
/* B8414 800DD014 27BD0030 */  addiu      $sp, $sp, 0x30
/* B8418 800DD018 03E00008 */  jr         $ra
/* B841C 800DD01C 00000000 */   nop

glabel func_800DD020
/* B8420 800DD020 8C820018 */  lw         $v0, 0x18($a0)
/* B8424 800DD024 241801E8 */  addiu      $t8, $zero, 0x1e8
/* B8428 800DD028 50400008 */  beql       $v0, $zero, .L800DD04C
/* B842C 800DD02C AC980024 */   sw        $t8, 0x24($a0)
/* B8430 800DD030 C4440008 */  lwc1       $f4, 8($v0)
/* B8434 800DD034 46046182 */  mul.s      $f6, $f12, $f4
/* B8438 800DD038 4600320D */  trunc.w.s  $f8, $f6
/* B843C 800DD03C 440F4000 */  mfc1       $t7, $f8
/* B8440 800DD040 03E00008 */  jr         $ra
/* B8444 800DD044 AC8F0024 */   sw        $t7, 0x24($a0)
/* B8448 800DD048 AC980024 */  sw         $t8, 0x24($a0)
.L800DD04C:
/* B844C 800DD04C 03E00008 */  jr         $ra
/* B8450 800DD050 00000000 */   nop

glabel func_800DD054
/* B8454 800DD054 03E00008 */  jr         $ra
/* B8458 800DD058 00000000 */   nop

glabel func_800DD05C
/* B845C 800DD05C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8460 800DD060 AFBF0014 */  sw         $ra, 0x14($sp)
/* B8464 800DD064 90AE0008 */  lbu        $t6, 8($a1)
/* B8468 800DD068 240100FF */  addiu      $at, $zero, 0xff
/* B846C 800DD06C 00008025 */  or         $s0, $zero, $zero
/* B8470 800DD070 15C1006A */  bne        $t6, $at, .L800DD21C
/* B8474 800DD074 00009825 */   or        $s3, $zero, $zero
/* B8478 800DD078 90AF0009 */  lbu        $t7, 9($a1)
/* B847C 800DD07C 24010051 */  addiu      $at, $zero, 0x51
/* B8480 800DD080 24A20004 */  addiu      $v0, $a1, 4
/* B8484 800DD084 55E10066 */  bnel       $t7, $at, .L800DD220
/* B8488 800DD088 8FBF0014 */   lw        $ra, 0x14($sp)
/* B848C 800DD08C 904E0008 */  lbu        $t6, 8($v0)
/* B8490 800DD090 90580007 */  lbu        $t8, 7($v0)
/* B8494 800DD094 8EFE0024 */  lw         $fp, 0x24($s7)
/* B8498 800DD098 000E7A00 */  sll        $t7, $t6, 8
/* B849C 800DD09C 904E0009 */  lbu        $t6, 9($v0)
/* B84A0 800DD0A0 0018CC00 */  sll        $t9, $t8, 0x10
/* B84A4 800DD0A4 032FC025 */  or         $t8, $t9, $t7
/* B84A8 800DD0A8 030E1825 */  or         $v1, $t8, $t6
/* B84AC 800DD0AC 44832000 */  mtc1       $v1, $f4
/* B84B0 800DD0B0 02E02025 */  or         $a0, $s7, $zero
/* B84B4 800DD0B4 0C037408 */  jal        func_800DD020
/* B84B8 800DD0B8 46802320 */   cvt.s.w   $f12, $f4
/* B84BC 800DD0BC 8EF10050 */  lw         $s1, 0x50($s7)
/* B84C0 800DD0C0 1220001D */  beqz       $s1, .L800DD138
/* B84C4 800DD0C4 00000000 */   nop
/* B84C8 800DD0C8 24140015 */  addiu      $s4, $zero, 0x15
.L800DD0CC:
/* B84CC 800DD0CC 862F000C */  lh         $t7, 0xc($s1)
/* B84D0 800DD0D0 8E390008 */  lw         $t9, 8($s1)
/* B84D4 800DD0D4 8E320000 */  lw         $s2, ($s1)
/* B84D8 800DD0D8 168F0015 */  bne        $s4, $t7, .L800DD130
/* B84DC 800DD0DC 02198021 */   addu      $s0, $s0, $t9
/* B84E0 800DD0E0 0C037248 */  jal        func_800DC920
/* B84E4 800DD0E4 02202025 */   or        $a0, $s1, $zero
/* B84E8 800DD0E8 52600007 */  beql       $s3, $zero, .L800DD108
/* B84EC 800DD0EC AE200000 */   sw        $zero, ($s1)
/* B84F0 800DD0F0 02202025 */  or         $a0, $s1, $zero
/* B84F4 800DD0F4 0C037254 */  jal        func_800DC950
/* B84F8 800DD0F8 02602825 */   or        $a1, $s3, $zero
/* B84FC 800DD0FC 10000004 */  b          .L800DD110
/* B8500 800DD100 00000000 */   nop
/* B8504 800DD104 AE200000 */  sw         $zero, ($s1)
.L800DD108:
/* B8508 800DD108 AE200004 */  sw         $zero, 4($s1)
/* B850C 800DD10C 02209825 */  or         $s3, $s1, $zero
.L800DD110:
/* B8510 800DD110 12400006 */  beqz       $s2, .L800DD12C
/* B8514 800DD114 02001825 */   or        $v1, $s0, $zero
/* B8518 800DD118 8E220008 */  lw         $v0, 8($s1)
/* B851C 800DD11C 8E580008 */  lw         $t8, 8($s2)
/* B8520 800DD120 02028023 */  subu       $s0, $s0, $v0
/* B8524 800DD124 03027021 */  addu       $t6, $t8, $v0
/* B8528 800DD128 AE4E0008 */  sw         $t6, 8($s2)
.L800DD12C:
/* B852C 800DD12C AE230008 */  sw         $v1, 8($s1)
.L800DD130:
/* B8530 800DD130 1640FFE6 */  bnez       $s2, .L800DD0CC
/* B8534 800DD134 02408825 */   or        $s1, $s2, $zero
.L800DD138:
/* B8538 800DD138 12600038 */  beqz       $s3, .L800DD21C
/* B853C 800DD13C 02608825 */   or        $s1, $s3, $zero
/* B8540 800DD140 26F40048 */  addiu      $s4, $s7, 0x48
/* B8544 800DD144 26950008 */  addiu      $s5, $s4, 8
/* B8548 800DD148 2416FFF8 */  addiu      $s6, $zero, -8
.L800DD14C:
/* B854C 800DD14C 8E390008 */  lw         $t9, 8($s1)
/* B8550 800DD150 8EEF0024 */  lw         $t7, 0x24($s7)
/* B8554 800DD154 8E320000 */  lw         $s2, ($s1)
/* B8558 800DD158 033E001A */  div        $zero, $t9, $fp
/* B855C 800DD15C 00001012 */  mflo       $v0
/* B8560 800DD160 24040001 */  addiu      $a0, $zero, 1
/* B8564 800DD164 17C00002 */  bnez       $fp, .L800DD170
/* B8568 800DD168 00000000 */   nop
/* B856C 800DD16C 0007000D */  break      7
.L800DD170:
/* B8570 800DD170 2401FFFF */   addiu     $at, $zero, -1
/* B8574 800DD174 17C10004 */  bne        $fp, $at, .L800DD188
/* B8578 800DD178 3C018000 */   lui       $at, 0x8000
/* B857C 800DD17C 17210002 */  bne        $t9, $at, .L800DD188
/* B8580 800DD180 00000000 */   nop
/* B8584 800DD184 0006000D */  break      6
.L800DD188:
/* B8588 800DD188 01E20019 */   multu     $t7, $v0
/* B858C 800DD18C 02A08025 */  or         $s0, $s5, $zero
/* B8590 800DD190 0000C012 */  mflo       $t8
/* B8594 800DD194 AE380008 */  sw         $t8, 8($s1)
/* B8598 800DD198 0C03A320 */  jal        func_800E8C80
/* B859C 800DD19C 00000000 */   nop
/* B85A0 800DD1A0 1296001A */  beq        $s4, $s6, .L800DD20C
/* B85A4 800DD1A4 00409825 */   or        $s3, $v0, $zero
/* B85A8 800DD1A8 8E040000 */  lw         $a0, ($s0)
.L800DD1AC:
/* B85AC 800DD1AC 54800007 */  bnel       $a0, $zero, .L800DD1CC
/* B85B0 800DD1B0 8E220008 */   lw        $v0, 8($s1)
/* B85B4 800DD1B4 02202025 */  or         $a0, $s1, $zero
/* B85B8 800DD1B8 0C037254 */  jal        func_800DC950
/* B85BC 800DD1BC 02002825 */   or        $a1, $s0, $zero
/* B85C0 800DD1C0 10000012 */  b          .L800DD20C
/* B85C4 800DD1C4 00000000 */   nop
/* B85C8 800DD1C8 8E220008 */  lw         $v0, 8($s1)
.L800DD1CC:
/* B85CC 800DD1CC 8C830008 */  lw         $v1, 8($a0)
/* B85D0 800DD1D0 00803025 */  or         $a2, $a0, $zero
/* B85D4 800DD1D4 0043082A */  slt        $at, $v0, $v1
/* B85D8 800DD1D8 10200008 */  beqz       $at, .L800DD1FC
/* B85DC 800DD1DC 0043C823 */   subu      $t9, $v0, $v1
/* B85E0 800DD1E0 00627023 */  subu       $t6, $v1, $v0
/* B85E4 800DD1E4 AC8E0008 */  sw         $t6, 8($a0)
/* B85E8 800DD1E8 02202025 */  or         $a0, $s1, $zero
/* B85EC 800DD1EC 0C037254 */  jal        func_800DC950
/* B85F0 800DD1F0 02002825 */   or        $a1, $s0, $zero
/* B85F4 800DD1F4 10000005 */  b          .L800DD20C
/* B85F8 800DD1F8 00000000 */   nop
.L800DD1FC:
/* B85FC 800DD1FC AE390008 */  sw         $t9, 8($s1)
/* B8600 800DD200 8E100000 */  lw         $s0, ($s0)
/* B8604 800DD204 5600FFE9 */  bnel       $s0, $zero, .L800DD1AC
/* B8608 800DD208 8E040000 */   lw        $a0, ($s0)
.L800DD20C:
/* B860C 800DD20C 0C03A320 */  jal        func_800E8C80
/* B8610 800DD210 02602025 */   or        $a0, $s3, $zero
/* B8614 800DD214 1640FFCD */  bnez       $s2, .L800DD14C
/* B8618 800DD218 02408825 */   or        $s1, $s2, $zero
.L800DD21C:
/* B861C 800DD21C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800DD220:
/* B8620 800DD220 27BD0018 */  addiu      $sp, $sp, 0x18
/* B8624 800DD224 03E00008 */  jr         $ra
/* B8628 800DD228 00000000 */   nop

glabel func_800DD22C
/* B862C 800DD22C 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* B8630 800DD230 AFBF0024 */  sw         $ra, 0x24($sp)
/* B8634 800DD234 91160008 */  lbu        $s6, 8($t0)
/* B8638 800DD238 91140009 */  lbu        $s4, 9($t0)
/* B863C 800DD23C 9111000A */  lbu        $s1, 0xa($t0)
/* B8640 800DD240 32C300F0 */  andi       $v1, $s6, 0xf0
/* B8644 800DD244 246FFF80 */  addiu      $t7, $v1, -0x80
/* B8648 800DD248 2DE10061 */  sltiu      $at, $t7, 0x61
/* B864C 800DD24C 32CE000F */  andi       $t6, $s6, 0xf
/* B8650 800DD250 102001FC */  beqz       $at, .L800DDA44
/* B8654 800DD254 01C0B025 */   or        $s6, $t6, $zero
/* B8658 800DD258 000F7880 */  sll        $t7, $t7, 2
/* B865C 800DD25C 3C018011 */  lui        $at, %hi(D_80110990)
/* B8660 800DD260 002F0821 */  addu       $at, $at, $t7
/* B8664 800DD264 8C2F0990 */  lw         $t7, %lo(D_80110990)($at)
/* B8668 800DD268 01E00008 */  jr         $t7
/* B866C 800DD26C 00000000 */   nop
/* B8670 800DD270 522000E8 */  beql       $s1, $zero, .L800DD614
/* B8674 800DD274 02402025 */   or        $a0, $s2, $zero
/* B8678 800DD278 8E58002C */  lw         $t8, 0x2c($s2)
/* B867C 800DD27C 24010001 */  addiu      $at, $zero, 1
/* B8680 800DD280 02402025 */  or         $a0, $s2, $zero
/* B8684 800DD284 170101EF */  bne        $t8, $at, .L800DDA44
/* B8688 800DD288 328500FF */   andi      $a1, $s4, 0xff
/* B868C 800DD28C 322600FF */  andi       $a2, $s1, 0xff
/* B8690 800DD290 32C700FF */  andi       $a3, $s6, 0xff
/* B8694 800DD294 0C039C00 */  jal        func_800E7000
/* B8698 800DD298 AFA800BC */   sw        $t0, 0xbc($sp)
/* B869C 800DD29C 104001E9 */  beqz       $v0, .L800DDA44
/* B86A0 800DD2A0 0040B825 */   or        $s7, $v0, $zero
/* B86A4 800DD2A4 8E590060 */  lw         $t9, 0x60($s2)
/* B86A8 800DD2A8 0016F100 */  sll        $fp, $s6, 4
/* B86AC 800DD2AC 02402025 */  or         $a0, $s2, $zero
/* B86B0 800DD2B0 033E7021 */  addu       $t6, $t9, $fp
/* B86B4 800DD2B4 91CF0008 */  lbu        $t7, 8($t6)
/* B86B8 800DD2B8 A7A00076 */  sh         $zero, 0x76($sp)
/* B86BC 800DD2BC A3A00078 */  sb         $zero, 0x78($sp)
/* B86C0 800DD2C0 328500FF */  andi       $a1, $s4, 0xff
/* B86C4 800DD2C4 322600FF */  andi       $a2, $s1, 0xff
/* B86C8 800DD2C8 32C700FF */  andi       $a3, $s6, 0xff
/* B86CC 800DD2CC 0C039BE4 */  jal        func_800E6F90
/* B86D0 800DD2D0 A7AF0074 */   sh        $t7, 0x74($sp)
/* B86D4 800DD2D4 104001DB */  beqz       $v0, .L800DDA44
/* B86D8 800DD2D8 00408025 */   or        $s0, $v0, $zero
/* B86DC 800DD2DC 8E440014 */  lw         $a0, 0x14($s2)
/* B86E0 800DD2E0 24450004 */  addiu      $a1, $v0, 4
/* B86E4 800DD2E4 AFA50038 */  sw         $a1, 0x38($sp)
/* B86E8 800DD2E8 0C03A246 */  jal        func_800E8918
/* B86EC 800DD2EC 27A60074 */   addiu     $a2, $sp, 0x74
/* B86F0 800DD2F0 AE170020 */  sw         $s7, 0x20($s0)
/* B86F4 800DD2F4 A2000034 */  sb         $zero, 0x34($s0)
/* B86F8 800DD2F8 8E580060 */  lw         $t8, 0x60($s2)
/* B86FC 800DD2FC 24150002 */  addiu      $s5, $zero, 2
/* B8700 800DD300 031EC821 */  addu       $t9, $t8, $fp
/* B8704 800DD304 932E000B */  lbu        $t6, 0xb($t9)
/* B8708 800DD308 29C10040 */  slti       $at, $t6, 0x40
/* B870C 800DD30C 54200004 */  bnel       $at, $zero, .L800DD320
/* B8710 800DD310 A2000035 */   sb        $zero, 0x35($s0)
/* B8714 800DD314 10000002 */  b          .L800DD320
/* B8718 800DD318 A2150035 */   sb        $s5, 0x35($s0)
/* B871C 800DD31C A2000035 */  sb         $zero, 0x35($s0)
.L800DD320:
/* B8720 800DD320 8EE20004 */  lw         $v0, 4($s7)
/* B8724 800DD324 904F0004 */  lbu        $t7, 4($v0)
/* B8728 800DD328 804E0005 */  lb         $t6, 5($v0)
/* B872C 800DD32C 028FC023 */  subu       $t8, $s4, $t7
/* B8730 800DD330 0018C880 */  sll        $t9, $t8, 2
/* B8734 800DD334 0338C823 */  subu       $t9, $t9, $t8
/* B8738 800DD338 0019C8C0 */  sll        $t9, $t9, 3
/* B873C 800DD33C 0338C821 */  addu       $t9, $t9, $t8
/* B8740 800DD340 0019C880 */  sll        $t9, $t9, 2
/* B8744 800DD344 032E2021 */  addu       $a0, $t9, $t6
/* B8748 800DD348 00047C00 */  sll        $t7, $a0, 0x10
/* B874C 800DD34C 0C037290 */  jal        func_800DCA40
/* B8750 800DD350 000F2403 */   sra       $a0, $t7, 0x10
/* B8754 800DD354 E6000028 */  swc1       $f0, 0x28($s0)
/* B8758 800DD358 8EF90000 */  lw         $t9, ($s7)
/* B875C 800DD35C 3C0142FE */  lui        $at, 0x42fe
/* B8760 800DD360 44812000 */  mtc1       $at, $f4
/* B8764 800DD364 932E000C */  lbu        $t6, 0xc($t9)
/* B8768 800DD368 A20E0030 */  sb         $t6, 0x30($s0)
/* B876C 800DD36C 8EF80000 */  lw         $t8, ($s7)
/* B8770 800DD370 8E4F001C */  lw         $t7, 0x1c($s2)
/* B8774 800DD374 8F190000 */  lw         $t9, ($t8)
/* B8778 800DD378 A2000037 */  sb         $zero, 0x37($s0)
/* B877C 800DD37C 01F97021 */  addu       $t6, $t7, $t9
/* B8780 800DD380 AE0E0024 */  sw         $t6, 0x24($s0)
/* B8784 800DD384 8E580060 */  lw         $t8, 0x60($s2)
/* B8788 800DD388 031E7821 */  addu       $t7, $t8, $fp
/* B878C 800DD38C 8DF10000 */  lw         $s1, ($t7)
/* B8790 800DD390 E7A40064 */  swc1       $f4, 0x64($sp)
/* B8794 800DD394 92260004 */  lbu        $a2, 4($s1)
/* B8798 800DD398 50C0001A */  beql       $a2, $zero, .L800DD404
/* B879C 800DD39C 4458F800 */   cfc1      $t8, $31
/* B87A0 800DD3A0 8E420070 */  lw         $v0, 0x70($s2)
/* B87A4 800DD3A4 50400017 */  beql       $v0, $zero, .L800DD404
/* B87A8 800DD3A8 4458F800 */   cfc1      $t8, $31
/* B87AC 800DD3AC 92390006 */  lbu        $t9, 6($s1)
/* B87B0 800DD3B0 92270005 */  lbu        $a3, 5($s1)
/* B87B4 800DD3B4 27A4005C */  addiu      $a0, $sp, 0x5c
/* B87B8 800DD3B8 AFB90010 */  sw         $t9, 0x10($sp)
/* B87BC 800DD3BC 922E0007 */  lbu        $t6, 7($s1)
/* B87C0 800DD3C0 27A50064 */  addiu      $a1, $sp, 0x64
/* B87C4 800DD3C4 0040F809 */  jalr       $v0
/* B87C8 800DD3C8 AFAE0014 */   sw        $t6, 0x14($sp)
/* B87CC 800DD3CC 1040000C */  beqz       $v0, .L800DD400
/* B87D0 800DD3D0 24180016 */   addiu     $t8, $zero, 0x16
/* B87D4 800DD3D4 8FAF005C */  lw         $t7, 0x5c($sp)
/* B87D8 800DD3D8 A7B8008C */  sh         $t8, 0x8c($sp)
/* B87DC 800DD3DC AFB00090 */  sw         $s0, 0x90($sp)
/* B87E0 800DD3E0 26440048 */  addiu      $a0, $s2, 0x48
/* B87E4 800DD3E4 27A5008C */  addiu      $a1, $sp, 0x8c
/* B87E8 800DD3E8 00403025 */  or         $a2, $v0, $zero
/* B87EC 800DD3EC 0C03A0D7 */  jal        func_800E835C
/* B87F0 800DD3F0 AFAF0094 */   sw        $t7, 0x94($sp)
/* B87F4 800DD3F4 92190037 */  lbu        $t9, 0x37($s0)
/* B87F8 800DD3F8 372E0001 */  ori        $t6, $t9, 1
/* B87FC 800DD3FC A20E0037 */  sb         $t6, 0x37($s0)
.L800DD400:
/* B8800 800DD400 4458F800 */  cfc1       $t8, $31
.L800DD404:
/* B8804 800DD404 240F0001 */  addiu      $t7, $zero, 1
/* B8808 800DD408 44CFF800 */  ctc1       $t7, $31
/* B880C 800DD40C C7A60064 */  lwc1       $f6, 0x64($sp)
/* B8810 800DD410 3C014F00 */  lui        $at, 0x4f00
/* B8814 800DD414 46003224 */  cvt.w.s    $f8, $f6
/* B8818 800DD418 444FF800 */  cfc1       $t7, $31
/* B881C 800DD41C 00000000 */  nop
/* B8820 800DD420 31EF0078 */  andi       $t7, $t7, 0x78
/* B8824 800DD424 51E00013 */  beql       $t7, $zero, .L800DD474
/* B8828 800DD428 440F4000 */   mfc1      $t7, $f8
/* B882C 800DD42C 44814000 */  mtc1       $at, $f8
/* B8830 800DD430 240F0001 */  addiu      $t7, $zero, 1
/* B8834 800DD434 46083201 */  sub.s      $f8, $f6, $f8
/* B8838 800DD438 44CFF800 */  ctc1       $t7, $31
/* B883C 800DD43C 00000000 */  nop
/* B8840 800DD440 46004224 */  cvt.w.s    $f8, $f8
/* B8844 800DD444 444FF800 */  cfc1       $t7, $31
/* B8848 800DD448 00000000 */  nop
/* B884C 800DD44C 31EF0078 */  andi       $t7, $t7, 0x78
/* B8850 800DD450 15E00005 */  bnez       $t7, .L800DD468
/* B8854 800DD454 00000000 */   nop
/* B8858 800DD458 440F4000 */  mfc1       $t7, $f8
/* B885C 800DD45C 3C018000 */  lui        $at, 0x8000
/* B8860 800DD460 10000007 */  b          .L800DD480
/* B8864 800DD464 01E17825 */   or        $t7, $t7, $at
.L800DD468:
/* B8868 800DD468 10000005 */  b          .L800DD480
/* B886C 800DD46C 240FFFFF */   addiu     $t7, $zero, -1
/* B8870 800DD470 440F4000 */  mfc1       $t7, $f8
.L800DD474:
/* B8874 800DD474 00000000 */  nop
/* B8878 800DD478 05E0FFFB */  bltz       $t7, .L800DD468
/* B887C 800DD47C 00000000 */   nop
.L800DD480:
/* B8880 800DD480 3C013F80 */  lui        $at, 0x3f80
/* B8884 800DD484 44815000 */  mtc1       $at, $f10
/* B8888 800DD488 A20F0036 */  sb         $t7, 0x36($s0)
/* B888C 800DD48C 44D8F800 */  ctc1       $t8, $31
/* B8890 800DD490 E7AA0064 */  swc1       $f10, 0x64($sp)
/* B8894 800DD494 92260008 */  lbu        $a2, 8($s1)
/* B8898 800DD498 26550048 */  addiu      $s5, $s2, 0x48
/* B889C 800DD49C 50C0001B */  beql       $a2, $zero, .L800DD50C
/* B88A0 800DD4A0 C7A40064 */   lwc1      $f4, 0x64($sp)
/* B88A4 800DD4A4 8E420070 */  lw         $v0, 0x70($s2)
/* B88A8 800DD4A8 50400018 */  beql       $v0, $zero, .L800DD50C
/* B88AC 800DD4AC C7A40064 */   lwc1      $f4, 0x64($sp)
/* B88B0 800DD4B0 9239000A */  lbu        $t9, 0xa($s1)
/* B88B4 800DD4B4 92270009 */  lbu        $a3, 9($s1)
/* B88B8 800DD4B8 27A4005C */  addiu      $a0, $sp, 0x5c
/* B88BC 800DD4BC AFB90010 */  sw         $t9, 0x10($sp)
/* B88C0 800DD4C0 922E000B */  lbu        $t6, 0xb($s1)
/* B88C4 800DD4C4 27A50064 */  addiu      $a1, $sp, 0x64
/* B88C8 800DD4C8 0040F809 */  jalr       $v0
/* B88CC 800DD4CC AFAE0014 */   sw        $t6, 0x14($sp)
/* B88D0 800DD4D0 1040000D */  beqz       $v0, .L800DD508
/* B88D4 800DD4D4 24180017 */   addiu     $t8, $zero, 0x17
/* B88D8 800DD4D8 8FAF005C */  lw         $t7, 0x5c($sp)
/* B88DC 800DD4DC A7B8008C */  sh         $t8, 0x8c($sp)
/* B88E0 800DD4E0 AFB00090 */  sw         $s0, 0x90($sp)
/* B88E4 800DD4E4 A3B60098 */  sb         $s6, 0x98($sp)
/* B88E8 800DD4E8 02A02025 */  or         $a0, $s5, $zero
/* B88EC 800DD4EC 27A5008C */  addiu      $a1, $sp, 0x8c
/* B88F0 800DD4F0 00403025 */  or         $a2, $v0, $zero
/* B88F4 800DD4F4 0C03A0D7 */  jal        func_800E835C
/* B88F8 800DD4F8 AFAF0094 */   sw        $t7, 0x94($sp)
/* B88FC 800DD4FC 92190037 */  lbu        $t9, 0x37($s0)
/* B8900 800DD500 372E0002 */  ori        $t6, $t9, 2
/* B8904 800DD504 A20E0037 */  sb         $t6, 0x37($s0)
.L800DD508:
/* B8908 800DD508 C7A40064 */  lwc1       $f4, 0x64($sp)
.L800DD50C:
/* B890C 800DD50C C6080028 */  lwc1       $f8, 0x28($s0)
/* B8910 800DD510 02002025 */  or         $a0, $s0, $zero
/* B8914 800DD514 E604002C */  swc1       $f4, 0x2c($s0)
/* B8918 800DD518 8E580060 */  lw         $t8, 0x60($s2)
/* B891C 800DD51C C604002C */  lwc1       $f4, 0x2c($s0)
/* B8920 800DD520 02402825 */  or         $a1, $s2, $zero
/* B8924 800DD524 031E1021 */  addu       $v0, $t8, $fp
/* B8928 800DD528 C446000C */  lwc1       $f6, 0xc($v0)
/* B892C 800DD52C 9051000A */  lbu        $s1, 0xa($v0)
/* B8930 800DD530 46083282 */  mul.s      $f10, $f6, $f8
/* B8934 800DD534 00000000 */  nop
/* B8938 800DD538 46045502 */  mul.s      $f20, $f10, $f4
/* B893C 800DD53C 0C039BB5 */  jal        func_800E6ED4
/* B8940 800DD540 00000000 */   nop
/* B8944 800DD544 305E00FF */  andi       $fp, $v0, 0xff
/* B8948 800DD548 02002025 */  or         $a0, $s0, $zero
/* B894C 800DD54C 0C039AAD */  jal        func_800E6AB4
/* B8950 800DD550 02402825 */   or        $a1, $s2, $zero
/* B8954 800DD554 8EEF0000 */  lw         $t7, ($s7)
/* B8958 800DD558 8E440014 */  lw         $a0, 0x14($s2)
/* B895C 800DD55C 8EE60008 */  lw         $a2, 8($s7)
/* B8960 800DD560 8DF30000 */  lw         $s3, ($t7)
/* B8964 800DD564 4407A000 */  mfc1       $a3, $f20
/* B8968 800DD568 AFB10018 */  sw         $s1, 0x18($sp)
/* B896C 800DD56C AFBE0014 */  sw         $fp, 0x14($sp)
/* B8970 800DD570 AFA20010 */  sw         $v0, 0x10($sp)
/* B8974 800DD574 8FA50038 */  lw         $a1, 0x38($sp)
/* B8978 800DD578 0C03A298 */  jal        func_800E8A60
/* B897C 800DD57C AFB3001C */   sw        $s3, 0x1c($sp)
/* B8980 800DD580 8FAE0038 */  lw         $t6, 0x38($sp)
/* B8984 800DD584 24190006 */  addiu      $t9, $zero, 6
/* B8988 800DD588 A7B9008C */  sh         $t9, 0x8c($sp)
/* B898C 800DD58C AFAE0090 */  sw         $t6, 0x90($sp)
/* B8990 800DD590 8EF80000 */  lw         $t8, ($s7)
/* B8994 800DD594 02A02025 */  or         $a0, $s5, $zero
/* B8998 800DD598 27A5008C */  addiu      $a1, $sp, 0x8c
/* B899C 800DD59C 930F000D */  lbu        $t7, 0xd($t8)
/* B89A0 800DD5A0 02603025 */  or         $a2, $s3, $zero
/* B89A4 800DD5A4 A3AF0098 */  sb         $t7, 0x98($sp)
/* B89A8 800DD5A8 8EF90000 */  lw         $t9, ($s7)
/* B89AC 800DD5AC 8F2E0004 */  lw         $t6, 4($t9)
/* B89B0 800DD5B0 0C03A0D7 */  jal        func_800E835C
/* B89B4 800DD5B4 AFAE0094 */   sw        $t6, 0x94($sp)
/* B89B8 800DD5B8 8FA200BC */  lw         $v0, 0xbc($sp)
/* B89BC 800DD5BC 240F0015 */  addiu      $t7, $zero, 0x15
/* B89C0 800DD5C0 36D90080 */  ori        $t9, $s6, 0x80
/* B89C4 800DD5C4 8C58000C */  lw         $t8, 0xc($v0)
/* B89C8 800DD5C8 24420004 */  addiu      $v0, $v0, 4
/* B89CC 800DD5CC 5300011E */  beql       $t8, $zero, .L800DDA48
/* B89D0 800DD5D0 8FBF0024 */   lw        $ra, 0x24($sp)
/* B89D4 800DD5D4 A7AF008C */  sh         $t7, 0x8c($sp)
/* B89D8 800DD5D8 A3B90094 */  sb         $t9, 0x94($sp)
/* B89DC 800DD5DC A3B40095 */  sb         $s4, 0x95($sp)
/* B89E0 800DD5E0 A3A00096 */  sb         $zero, 0x96($sp)
/* B89E4 800DD5E4 8C580008 */  lw         $t8, 8($v0)
/* B89E8 800DD5E8 8E4E0024 */  lw         $t6, 0x24($s2)
/* B89EC 800DD5EC 02A02025 */  or         $a0, $s5, $zero
/* B89F0 800DD5F0 27A5008C */  addiu      $a1, $sp, 0x8c
/* B89F4 800DD5F4 01D80019 */  multu      $t6, $t8
/* B89F8 800DD5F8 00009812 */  mflo       $s3
/* B89FC 800DD5FC 02603025 */  or         $a2, $s3, $zero
/* B8A00 800DD600 0C03A0D7 */  jal        func_800E835C
/* B8A04 800DD604 00000000 */   nop
/* B8A08 800DD608 1000010F */  b          .L800DDA48
/* B8A0C 800DD60C 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8A10 800DD610 02402025 */  or         $a0, $s2, $zero
.L800DD614:
/* B8A14 800DD614 328500FF */  andi       $a1, $s4, 0xff
/* B8A18 800DD618 0C039BC7 */  jal        func_800E6F1C
/* B8A1C 800DD61C 32C600FF */   andi      $a2, $s6, 0xff
/* B8A20 800DD620 10400108 */  beqz       $v0, .L800DDA44
/* B8A24 800DD624 00408025 */   or        $s0, $v0, $zero
/* B8A28 800DD628 904F0035 */  lbu        $t7, 0x35($v0)
/* B8A2C 800DD62C 24160002 */  addiu      $s6, $zero, 2
/* B8A30 800DD630 24190004 */  addiu      $t9, $zero, 4
/* B8A34 800DD634 16CF0003 */  bne        $s6, $t7, .L800DD644
/* B8A38 800DD638 02402025 */   or        $a0, $s2, $zero
/* B8A3C 800DD63C 10000101 */  b          .L800DDA44
/* B8A40 800DD640 A0590035 */   sb        $t9, 0x35($v0)
.L800DD644:
/* B8A44 800DD644 8E0E0020 */  lw         $t6, 0x20($s0)
/* B8A48 800DD648 241E0003 */  addiu      $fp, $zero, 3
/* B8A4C 800DD64C A21E0035 */  sb         $fp, 0x35($s0)
/* B8A50 800DD650 8DD80000 */  lw         $t8, ($t6)
/* B8A54 800DD654 26050004 */  addiu      $a1, $s0, 4
/* B8A58 800DD658 0C039ACF */  jal        func_800E6B3C
/* B8A5C 800DD65C 8F060008 */   lw        $a2, 8($t8)
/* B8A60 800DD660 100000F9 */  b          .L800DDA48
/* B8A64 800DD664 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8A68 800DD668 02402025 */  or         $a0, $s2, $zero
/* B8A6C 800DD66C 328500FF */  andi       $a1, $s4, 0xff
/* B8A70 800DD670 0C039BC7 */  jal        func_800E6F1C
/* B8A74 800DD674 32C600FF */   andi      $a2, $s6, 0xff
/* B8A78 800DD678 104000F2 */  beqz       $v0, .L800DDA44
/* B8A7C 800DD67C 00408025 */   or        $s0, $v0, $zero
/* B8A80 800DD680 A0510033 */  sb         $s1, 0x33($v0)
/* B8A84 800DD684 00402025 */  or         $a0, $v0, $zero
/* B8A88 800DD688 0C039AAD */  jal        func_800E6AB4
/* B8A8C 800DD68C 02402825 */   or        $a1, $s2, $zero
/* B8A90 800DD690 00028C00 */  sll        $s1, $v0, 0x10
/* B8A94 800DD694 00117C03 */  sra        $t7, $s1, 0x10
/* B8A98 800DD698 01E08825 */  or         $s1, $t7, $zero
/* B8A9C 800DD69C 02002025 */  or         $a0, $s0, $zero
/* B8AA0 800DD6A0 0C039AA4 */  jal        func_800E6A90
/* B8AA4 800DD6A4 8E45001C */   lw        $a1, 0x1c($s2)
/* B8AA8 800DD6A8 00113400 */  sll        $a2, $s1, 0x10
/* B8AAC 800DD6AC 0006CC03 */  sra        $t9, $a2, 0x10
/* B8AB0 800DD6B0 03203025 */  or         $a2, $t9, $zero
/* B8AB4 800DD6B4 8E440014 */  lw         $a0, 0x14($s2)
/* B8AB8 800DD6B8 26050004 */  addiu      $a1, $s0, 4
/* B8ABC 800DD6BC 0C03A1C0 */  jal        func_800E8700
/* B8AC0 800DD6C0 00403825 */   or        $a3, $v0, $zero
/* B8AC4 800DD6C4 100000E0 */  b          .L800DDA48
/* B8AC8 800DD6C8 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8ACC 800DD6CC 8E500064 */  lw         $s0, 0x64($s2)
/* B8AD0 800DD6D0 520000DD */  beql       $s0, $zero, .L800DDA48
/* B8AD4 800DD6D4 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8AD8 800DD6D8 02C09825 */  or         $s3, $s6, $zero
/* B8ADC 800DD6DC 920E0031 */  lbu        $t6, 0x31($s0)
.L800DD6E0:
/* B8AE0 800DD6E0 02002025 */  or         $a0, $s0, $zero
/* B8AE4 800DD6E4 02402825 */  or         $a1, $s2, $zero
/* B8AE8 800DD6E8 566E0011 */  bnel       $s3, $t6, .L800DD730
/* B8AEC 800DD6EC 8E100000 */   lw        $s0, ($s0)
/* B8AF0 800DD6F0 0C039AAD */  jal        func_800E6AB4
/* B8AF4 800DD6F4 A2140033 */   sb        $s4, 0x33($s0)
/* B8AF8 800DD6F8 00028C00 */  sll        $s1, $v0, 0x10
/* B8AFC 800DD6FC 0011C403 */  sra        $t8, $s1, 0x10
/* B8B00 800DD700 03008825 */  or         $s1, $t8, $zero
/* B8B04 800DD704 02002025 */  or         $a0, $s0, $zero
/* B8B08 800DD708 0C039AA4 */  jal        func_800E6A90
/* B8B0C 800DD70C 8E45001C */   lw        $a1, 0x1c($s2)
/* B8B10 800DD710 00113400 */  sll        $a2, $s1, 0x10
/* B8B14 800DD714 00067C03 */  sra        $t7, $a2, 0x10
/* B8B18 800DD718 01E03025 */  or         $a2, $t7, $zero
/* B8B1C 800DD71C 8E440014 */  lw         $a0, 0x14($s2)
/* B8B20 800DD720 26050004 */  addiu      $a1, $s0, 4
/* B8B24 800DD724 0C03A1C0 */  jal        func_800E8700
/* B8B28 800DD728 00403825 */   or        $a3, $v0, $zero
/* B8B2C 800DD72C 8E100000 */  lw         $s0, ($s0)
.L800DD730:
/* B8B30 800DD730 5600FFEB */  bnel       $s0, $zero, .L800DD6E0
/* B8B34 800DD734 920E0031 */   lbu       $t6, 0x31($s0)
/* B8B38 800DD738 100000C3 */  b          .L800DDA48
/* B8B3C 800DD73C 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8B40 800DD740 24010007 */  addiu      $at, $zero, 7
/* B8B44 800DD744 12810023 */  beq        $s4, $at, .L800DD7D4
/* B8B48 800DD748 02801025 */   or        $v0, $s4, $zero
/* B8B4C 800DD74C 2401000A */  addiu      $at, $zero, 0xa
/* B8B50 800DD750 10410009 */  beq        $v0, $at, .L800DD778
/* B8B54 800DD754 24010010 */   addiu     $at, $zero, 0x10
/* B8B58 800DD758 10410042 */  beq        $v0, $at, .L800DD864
/* B8B5C 800DD75C 24010040 */   addiu     $at, $zero, 0x40
/* B8B60 800DD760 10410045 */  beq        $v0, $at, .L800DD878
/* B8B64 800DD764 2401005B */   addiu     $at, $zero, 0x5b
/* B8B68 800DD768 50410070 */  beql       $v0, $at, .L800DD92C
/* B8B6C 800DD76C 8E590060 */   lw        $t9, 0x60($s2)
/* B8B70 800DD770 100000B5 */  b          .L800DDA48
/* B8B74 800DD774 8FBF0024 */   lw        $ra, 0x24($sp)
.L800DD778:
/* B8B78 800DD778 8E590060 */  lw         $t9, 0x60($s2)
/* B8B7C 800DD77C 00167100 */  sll        $t6, $s6, 4
/* B8B80 800DD780 032EC021 */  addu       $t8, $t9, $t6
/* B8B84 800DD784 A3110007 */  sb         $s1, 7($t8)
/* B8B88 800DD788 8E500064 */  lw         $s0, 0x64($s2)
/* B8B8C 800DD78C 520000AE */  beql       $s0, $zero, .L800DDA48
/* B8B90 800DD790 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8B94 800DD794 02C09825 */  or         $s3, $s6, $zero
/* B8B98 800DD798 920F0031 */  lbu        $t7, 0x31($s0)
.L800DD79C:
/* B8B9C 800DD79C 02002025 */  or         $a0, $s0, $zero
/* B8BA0 800DD7A0 566F0008 */  bnel       $s3, $t7, .L800DD7C4
/* B8BA4 800DD7A4 8E100000 */   lw        $s0, ($s0)
/* B8BA8 800DD7A8 0C039BB5 */  jal        func_800E6ED4
/* B8BAC 800DD7AC 02402825 */   or        $a1, $s2, $zero
/* B8BB0 800DD7B0 8E440014 */  lw         $a0, 0x14($s2)
/* B8BB4 800DD7B4 26050004 */  addiu      $a1, $s0, 4
/* B8BB8 800DD7B8 0C03A2D4 */  jal        func_800E8B50
/* B8BBC 800DD7BC 304600FF */   andi      $a2, $v0, 0xff
/* B8BC0 800DD7C0 8E100000 */  lw         $s0, ($s0)
.L800DD7C4:
/* B8BC4 800DD7C4 5600FFF5 */  bnel       $s0, $zero, .L800DD79C
/* B8BC8 800DD7C8 920F0031 */   lbu       $t7, 0x31($s0)
/* B8BCC 800DD7CC 1000009E */  b          .L800DDA48
/* B8BD0 800DD7D0 8FBF0024 */   lw        $ra, 0x24($sp)
.L800DD7D4:
/* B8BD4 800DD7D4 8E590060 */  lw         $t9, 0x60($s2)
/* B8BD8 800DD7D8 00167100 */  sll        $t6, $s6, 4
/* B8BDC 800DD7DC 032EC021 */  addu       $t8, $t9, $t6
/* B8BE0 800DD7E0 A3110009 */  sb         $s1, 9($t8)
/* B8BE4 800DD7E4 8E500064 */  lw         $s0, 0x64($s2)
/* B8BE8 800DD7E8 52000097 */  beql       $s0, $zero, .L800DDA48
/* B8BEC 800DD7EC 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8BF0 800DD7F0 02C09825 */  or         $s3, $s6, $zero
/* B8BF4 800DD7F4 24140003 */  addiu      $s4, $zero, 3
/* B8BF8 800DD7F8 920F0031 */  lbu        $t7, 0x31($s0)
.L800DD7FC:
/* B8BFC 800DD7FC 566F0015 */  bnel       $s3, $t7, .L800DD854
/* B8C00 800DD800 8E100000 */   lw        $s0, ($s0)
/* B8C04 800DD804 92190034 */  lbu        $t9, 0x34($s0)
/* B8C08 800DD808 02002025 */  or         $a0, $s0, $zero
/* B8C0C 800DD80C 52990011 */  beql       $s4, $t9, .L800DD854
/* B8C10 800DD810 8E100000 */   lw        $s0, ($s0)
/* B8C14 800DD814 0C039AAD */  jal        func_800E6AB4
/* B8C18 800DD818 02402825 */   or        $a1, $s2, $zero
/* B8C1C 800DD81C 00028C00 */  sll        $s1, $v0, 0x10
/* B8C20 800DD820 00117403 */  sra        $t6, $s1, 0x10
/* B8C24 800DD824 01C08825 */  or         $s1, $t6, $zero
/* B8C28 800DD828 02002025 */  or         $a0, $s0, $zero
/* B8C2C 800DD82C 0C039AA4 */  jal        func_800E6A90
/* B8C30 800DD830 8E45001C */   lw        $a1, 0x1c($s2)
/* B8C34 800DD834 00113400 */  sll        $a2, $s1, 0x10
/* B8C38 800DD838 0006C403 */  sra        $t8, $a2, 0x10
/* B8C3C 800DD83C 03003025 */  or         $a2, $t8, $zero
/* B8C40 800DD840 8E440014 */  lw         $a0, 0x14($s2)
/* B8C44 800DD844 26050004 */  addiu      $a1, $s0, 4
/* B8C48 800DD848 0C03A1C0 */  jal        func_800E8700
/* B8C4C 800DD84C 00403825 */   or        $a3, $v0, $zero
/* B8C50 800DD850 8E100000 */  lw         $s0, ($s0)
.L800DD854:
/* B8C54 800DD854 5600FFE9 */  bnel       $s0, $zero, .L800DD7FC
/* B8C58 800DD858 920F0031 */   lbu       $t7, 0x31($s0)
/* B8C5C 800DD85C 1000007A */  b          .L800DDA48
/* B8C60 800DD860 8FBF0024 */   lw        $ra, 0x24($sp)
.L800DD864:
/* B8C64 800DD864 8E4F0060 */  lw         $t7, 0x60($s2)
/* B8C68 800DD868 0016C900 */  sll        $t9, $s6, 4
/* B8C6C 800DD86C 01F97021 */  addu       $t6, $t7, $t9
/* B8C70 800DD870 10000074 */  b          .L800DDA44
/* B8C74 800DD874 A1D10008 */   sb        $s1, 8($t6)
.L800DD878:
/* B8C78 800DD878 8E580060 */  lw         $t8, 0x60($s2)
/* B8C7C 800DD87C 00167900 */  sll        $t7, $s6, 4
/* B8C80 800DD880 030FC821 */  addu       $t9, $t8, $t7
/* B8C84 800DD884 A331000B */  sb         $s1, 0xb($t9)
/* B8C88 800DD888 8E500064 */  lw         $s0, 0x64($s2)
/* B8C8C 800DD88C 5200006E */  beql       $s0, $zero, .L800DDA48
/* B8C90 800DD890 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8C94 800DD894 02C09825 */  or         $s3, $s6, $zero
/* B8C98 800DD898 24160002 */  addiu      $s6, $zero, 2
/* B8C9C 800DD89C 241E0003 */  addiu      $fp, $zero, 3
/* B8CA0 800DD8A0 24170004 */  addiu      $s7, $zero, 4
/* B8CA4 800DD8A4 24150002 */  addiu      $s5, $zero, 2
/* B8CA8 800DD8A8 24140003 */  addiu      $s4, $zero, 3
/* B8CAC 800DD8AC 920E0031 */  lbu        $t6, 0x31($s0)
.L800DD8B0:
/* B8CB0 800DD8B0 566E0019 */  bnel       $s3, $t6, .L800DD918
/* B8CB4 800DD8B4 8E100000 */   lw        $s0, ($s0)
/* B8CB8 800DD8B8 92020035 */  lbu        $v0, 0x35($s0)
/* B8CBC 800DD8BC 2A210040 */  slti       $at, $s1, 0x40
/* B8CC0 800DD8C0 52820015 */  beql       $s4, $v0, .L800DD918
/* B8CC4 800DD8C4 8E100000 */   lw        $s0, ($s0)
/* B8CC8 800DD8C8 14200005 */  bnez       $at, .L800DD8E0
/* B8CCC 800DD8CC 00000000 */   nop
/* B8CD0 800DD8D0 54400011 */  bnel       $v0, $zero, .L800DD918
/* B8CD4 800DD8D4 8E100000 */   lw        $s0, ($s0)
/* B8CD8 800DD8D8 1000000E */  b          .L800DD914
/* B8CDC 800DD8DC A2150035 */   sb        $s5, 0x35($s0)
.L800DD8E0:
/* B8CE0 800DD8E0 16C20003 */  bne        $s6, $v0, .L800DD8F0
/* B8CE4 800DD8E4 00000000 */   nop
/* B8CE8 800DD8E8 1000000A */  b          .L800DD914
/* B8CEC 800DD8EC A2000035 */   sb        $zero, 0x35($s0)
.L800DD8F0:
/* B8CF0 800DD8F0 56E20009 */  bnel       $s7, $v0, .L800DD918
/* B8CF4 800DD8F4 8E100000 */   lw        $s0, ($s0)
/* B8CF8 800DD8F8 8E180020 */  lw         $t8, 0x20($s0)
/* B8CFC 800DD8FC A21E0035 */  sb         $fp, 0x35($s0)
/* B8D00 800DD900 02402025 */  or         $a0, $s2, $zero
/* B8D04 800DD904 8F0F0000 */  lw         $t7, ($t8)
/* B8D08 800DD908 26050004 */  addiu      $a1, $s0, 4
/* B8D0C 800DD90C 0C039ACF */  jal        func_800E6B3C
/* B8D10 800DD910 8DE60008 */   lw        $a2, 8($t7)
.L800DD914:
/* B8D14 800DD914 8E100000 */  lw         $s0, ($s0)
.L800DD918:
/* B8D18 800DD918 5600FFE5 */  bnel       $s0, $zero, .L800DD8B0
/* B8D1C 800DD91C 920E0031 */   lbu       $t6, 0x31($s0)
/* B8D20 800DD920 10000049 */  b          .L800DDA48
/* B8D24 800DD924 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8D28 800DD928 8E590060 */  lw         $t9, 0x60($s2)
.L800DD92C:
/* B8D2C 800DD92C 00167100 */  sll        $t6, $s6, 4
/* B8D30 800DD930 032EC021 */  addu       $t8, $t9, $t6
/* B8D34 800DD934 A311000A */  sb         $s1, 0xa($t8)
/* B8D38 800DD938 8E500064 */  lw         $s0, 0x64($s2)
/* B8D3C 800DD93C 52000042 */  beql       $s0, $zero, .L800DDA48
/* B8D40 800DD940 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8D44 800DD944 02C09825 */  or         $s3, $s6, $zero
/* B8D48 800DD948 920F0031 */  lbu        $t7, 0x31($s0)
.L800DD94C:
/* B8D4C 800DD94C 26050004 */  addiu      $a1, $s0, 4
/* B8D50 800DD950 322600FF */  andi       $a2, $s1, 0xff
/* B8D54 800DD954 566F0004 */  bnel       $s3, $t7, .L800DD968
/* B8D58 800DD958 8E100000 */   lw        $s0, ($s0)
/* B8D5C 800DD95C 0C03A2F8 */  jal        func_800E8BE0
/* B8D60 800DD960 8E440014 */   lw        $a0, 0x14($s2)
/* B8D64 800DD964 8E100000 */  lw         $s0, ($s0)
.L800DD968:
/* B8D68 800DD968 5600FFF8 */  bnel       $s0, $zero, .L800DD94C
/* B8D6C 800DD96C 920F0031 */   lbu       $t7, 0x31($s0)
/* B8D70 800DD970 10000035 */  b          .L800DDA48
/* B8D74 800DD974 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8D78 800DD978 8E420020 */  lw         $v0, 0x20($s2)
/* B8D7C 800DD97C 00147080 */  sll        $t6, $s4, 2
/* B8D80 800DD980 02402025 */  or         $a0, $s2, $zero
/* B8D84 800DD984 84590000 */  lh         $t9, ($v0)
/* B8D88 800DD988 02C03025 */  or         $a2, $s6, $zero
/* B8D8C 800DD98C 004EC021 */  addu       $t8, $v0, $t6
/* B8D90 800DD990 0299082A */  slt        $at, $s4, $t9
/* B8D94 800DD994 5020002C */  beql       $at, $zero, .L800DDA48
/* B8D98 800DD998 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8D9C 800DD99C 0C039A40 */  jal        func_800E6900
/* B8DA0 800DD9A0 8F05000C */   lw        $a1, 0xc($t8)
/* B8DA4 800DD9A4 10000028 */  b          .L800DDA48
/* B8DA8 800DD9A8 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8DAC 800DD9AC 8E4F0060 */  lw         $t7, 0x60($s2)
/* B8DB0 800DD9B0 0016F100 */  sll        $fp, $s6, 4
/* B8DB4 800DD9B4 0011C1C0 */  sll        $t8, $s1, 7
/* B8DB8 800DD9B8 01FEC821 */  addu       $t9, $t7, $fp
/* B8DBC 800DD9BC 872E0004 */  lh         $t6, 4($t9)
/* B8DC0 800DD9C0 03147821 */  addu       $t7, $t8, $s4
/* B8DC4 800DD9C4 25F9E000 */  addiu      $t9, $t7, -0x2000
/* B8DC8 800DD9C8 01D90019 */  multu      $t6, $t9
/* B8DCC 800DD9CC 00002012 */  mflo       $a0
/* B8DD0 800DD9D0 04810003 */  bgez       $a0, .L800DD9E0
/* B8DD4 800DD9D4 0004C343 */   sra       $t8, $a0, 0xd
/* B8DD8 800DD9D8 24811FFF */  addiu      $at, $a0, 0x1fff
/* B8DDC 800DD9DC 0001C343 */  sra        $t8, $at, 0xd
.L800DD9E0:
/* B8DE0 800DD9E0 0C037290 */  jal        func_800DCA40
/* B8DE4 800DD9E4 03002025 */   or        $a0, $t8, $zero
/* B8DE8 800DD9E8 8E4F0060 */  lw         $t7, 0x60($s2)
/* B8DEC 800DD9EC 46000506 */  mov.s      $f20, $f0
/* B8DF0 800DD9F0 01FE7021 */  addu       $t6, $t7, $fp
/* B8DF4 800DD9F4 E5C0000C */  swc1       $f0, 0xc($t6)
/* B8DF8 800DD9F8 8E500064 */  lw         $s0, 0x64($s2)
/* B8DFC 800DD9FC 52000012 */  beql       $s0, $zero, .L800DDA48
/* B8E00 800DDA00 8FBF0024 */   lw        $ra, 0x24($sp)
/* B8E04 800DDA04 02C09825 */  or         $s3, $s6, $zero
/* B8E08 800DDA08 92190031 */  lbu        $t9, 0x31($s0)
.L800DDA0C:
/* B8E0C 800DDA0C 5679000B */  bnel       $s3, $t9, .L800DDA3C
/* B8E10 800DDA10 8E100000 */   lw        $s0, ($s0)
/* B8E14 800DDA14 C6060028 */  lwc1       $f6, 0x28($s0)
/* B8E18 800DDA18 C60A002C */  lwc1       $f10, 0x2c($s0)
/* B8E1C 800DDA1C 8E440014 */  lw         $a0, 0x14($s2)
/* B8E20 800DDA20 46143202 */  mul.s      $f8, $f6, $f20
/* B8E24 800DDA24 26050004 */  addiu      $a1, $s0, 4
/* B8E28 800DDA28 460A4102 */  mul.s      $f4, $f8, $f10
/* B8E2C 800DDA2C 44062000 */  mfc1       $a2, $f4
/* B8E30 800DDA30 0C03A1E8 */  jal        func_800E87A0
/* B8E34 800DDA34 00000000 */   nop
/* B8E38 800DDA38 8E100000 */  lw         $s0, ($s0)
.L800DDA3C:
/* B8E3C 800DDA3C 5600FFF3 */  bnel       $s0, $zero, .L800DDA0C
/* B8E40 800DDA40 92190031 */   lbu       $t9, 0x31($s0)
.L800DDA44:
/* B8E44 800DDA44 8FBF0024 */  lw         $ra, 0x24($sp)
.L800DDA48:
/* B8E48 800DDA48 27BD00B8 */  addiu      $sp, $sp, 0xb8
/* B8E4C 800DDA4C 03E00008 */  jr         $ra
/* B8E50 800DDA50 00000000 */   nop

glabel func_800DDA54
/* B8E54 800DDA54 03E00008 */  jr         $ra
/* B8E58 800DDA58 00000000 */   nop

glabel func_800DDA5C
/* B8E5C 800DDA5C 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* B8E60 800DDA60 AFB50034 */  sw         $s5, 0x34($sp)
/* B8E64 800DDA64 AFB20028 */  sw         $s2, 0x28($sp)
/* B8E68 800DDA68 248E0038 */  addiu      $t6, $a0, 0x38
/* B8E6C 800DDA6C 00809025 */  or         $s2, $a0, $zero
/* B8E70 800DDA70 AFBF0044 */  sw         $ra, 0x44($sp)
/* B8E74 800DDA74 AFBE0040 */  sw         $fp, 0x40($sp)
/* B8E78 800DDA78 AFB7003C */  sw         $s7, 0x3c($sp)
/* B8E7C 800DDA7C AFB60038 */  sw         $s6, 0x38($sp)
/* B8E80 800DDA80 AFB40030 */  sw         $s4, 0x30($sp)
/* B8E84 800DDA84 AFB3002C */  sw         $s3, 0x2c($sp)
/* B8E88 800DDA88 AFB10024 */  sw         $s1, 0x24($sp)
/* B8E8C 800DDA8C AFB00020 */  sw         $s0, 0x20($sp)
/* B8E90 800DDA90 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B8E94 800DDA94 AFAE0050 */  sw         $t6, 0x50($sp)
/* B8E98 800DDA98 24950048 */  addiu      $s5, $a0, 0x48
.L800DDA9C:
/* B8E9C 800DDA9C 964F0038 */  lhu        $t7, 0x38($s2)
/* B8EA0 800DDAA0 2DE10018 */  sltiu      $at, $t7, 0x18
/* B8EA4 800DDAA4 1020015D */  beqz       $at, .L800DE01C
/* B8EA8 800DDAA8 000F7880 */   sll       $t7, $t7, 2
/* B8EAC 800DDAAC 3C018011 */  lui        $at, %hi(D_80110B14)
/* B8EB0 800DDAB0 002F0821 */  addu       $at, $at, $t7
/* B8EB4 800DDAB4 8C2F0B14 */  lw         $t7, %lo(D_80110B14)($at)
/* B8EB8 800DDAB8 01E00008 */  jr         $t7
/* B8EBC 800DDABC 00000000 */   nop
/* B8EC0 800DDAC0 8E440018 */  lw         $a0, 0x18($s2)
/* B8EC4 800DDAC4 50800156 */  beql       $a0, $zero, .L800DE020
/* B8EC8 800DDAC8 02A02025 */   or        $a0, $s5, $zero
/* B8ECC 800DDACC 0C037E49 */  jal        func_800DF924
/* B8ED0 800DDAD0 27A50058 */   addiu     $a1, $sp, 0x58
/* B8ED4 800DDAD4 87B80058 */  lh         $t8, 0x58($sp)
/* B8ED8 800DDAD8 2719FFFF */  addiu      $t9, $t8, -1
/* B8EDC 800DDADC 2F210014 */  sltiu      $at, $t9, 0x14
/* B8EE0 800DDAE0 1020014E */  beqz       $at, .L800DE01C
/* B8EE4 800DDAE4 0019C880 */   sll       $t9, $t9, 2
/* B8EE8 800DDAE8 3C018011 */  lui        $at, %hi(D_80110B74)
/* B8EEC 800DDAEC 00390821 */  addu       $at, $at, $t9
/* B8EF0 800DDAF0 8C390B74 */  lw         $t9, %lo(D_80110B74)($at)
/* B8EF4 800DDAF4 03200008 */  jr         $t9
/* B8EF8 800DDAF8 00000000 */   nop
/* B8EFC 800DDAFC 27A80058 */  addiu      $t0, $sp, 0x58
/* B8F00 800DDB00 AFB200A0 */  sw         $s2, 0xa0($sp)
/* B8F04 800DDB04 0C03748B */  jal        func_800DD22C
/* B8F08 800DDB08 AFB5004C */   sw        $s5, 0x4c($sp)
/* B8F0C 800DDB0C 8FB200A0 */  lw         $s2, 0xa0($sp)
/* B8F10 800DDB10 8FB5004C */  lw         $s5, 0x4c($sp)
/* B8F14 800DDB14 0C0373EC */  jal        func_800DCFB0
/* B8F18 800DDB18 02402025 */   or        $a0, $s2, $zero
/* B8F1C 800DDB1C 10000140 */  b          .L800DE020
/* B8F20 800DDB20 02A02025 */   or        $a0, $s5, $zero
/* B8F24 800DDB24 0240B825 */  or         $s7, $s2, $zero
/* B8F28 800DDB28 27A50058 */  addiu      $a1, $sp, 0x58
/* B8F2C 800DDB2C AFB200A0 */  sw         $s2, 0xa0($sp)
/* B8F30 800DDB30 0C037417 */  jal        func_800DD05C
/* B8F34 800DDB34 AFB5004C */   sw        $s5, 0x4c($sp)
/* B8F38 800DDB38 8FB200A0 */  lw         $s2, 0xa0($sp)
/* B8F3C 800DDB3C 8FB5004C */  lw         $s5, 0x4c($sp)
/* B8F40 800DDB40 0C0373EC */  jal        func_800DCFB0
/* B8F44 800DDB44 02402025 */   or        $a0, $s2, $zero
/* B8F48 800DDB48 10000135 */  b          .L800DE020
/* B8F4C 800DDB4C 02A02025 */   or        $a0, $s5, $zero
/* B8F50 800DDB50 240E0002 */  addiu      $t6, $zero, 2
/* B8F54 800DDB54 AE4E002C */  sw         $t6, 0x2c($s2)
/* B8F58 800DDB58 240F0010 */  addiu      $t7, $zero, 0x10
/* B8F5C 800DDB5C 3C067FFF */  lui        $a2, 0x7fff
/* B8F60 800DDB60 A7AF0058 */  sh         $t7, 0x58($sp)
/* B8F64 800DDB64 34C6FFFF */  ori        $a2, $a2, 0xffff
/* B8F68 800DDB68 02A02025 */  or         $a0, $s5, $zero
/* B8F6C 800DDB6C 0C03A0D7 */  jal        func_800E835C
/* B8F70 800DDB70 27A50058 */   addiu     $a1, $sp, 0x58
/* B8F74 800DDB74 1000012A */  b          .L800DE020
/* B8F78 800DDB78 02A02025 */   or        $a0, $s5, $zero
/* B8F7C 800DDB7C 0C0373EC */  jal        func_800DCFB0
/* B8F80 800DDB80 02402025 */   or        $a0, $s2, $zero
/* B8F84 800DDB84 10000126 */  b          .L800DE020
/* B8F88 800DDB88 02A02025 */   or        $a0, $s5, $zero
/* B8F8C 800DDB8C 24180009 */  addiu      $t8, $zero, 9
/* B8F90 800DDB90 A7B8008C */  sh         $t8, 0x8c($sp)
/* B8F94 800DDB94 8E46005C */  lw         $a2, 0x5c($s2)
/* B8F98 800DDB98 02A02025 */  or         $a0, $s5, $zero
/* B8F9C 800DDB9C 0C03A0D7 */  jal        func_800E835C
/* B8FA0 800DDBA0 27A5008C */   addiu     $a1, $sp, 0x8c
/* B8FA4 800DDBA4 1000011E */  b          .L800DE020
/* B8FA8 800DDBA8 02A02025 */   or        $a0, $s5, $zero
/* B8FAC 800DDBAC 8E50003C */  lw         $s0, 0x3c($s2)
/* B8FB0 800DDBB0 8E440014 */  lw         $a0, 0x14($s2)
/* B8FB4 800DDBB4 0C03A174 */  jal        func_800E85D0
/* B8FB8 800DDBB8 02002825 */   or        $a1, $s0, $zero
/* B8FBC 800DDBBC 8E440014 */  lw         $a0, 0x14($s2)
/* B8FC0 800DDBC0 0C03A194 */  jal        func_800E8650
/* B8FC4 800DDBC4 02002825 */   or        $a1, $s0, $zero
/* B8FC8 800DDBC8 8E110010 */  lw         $s1, 0x10($s0)
/* B8FCC 800DDBCC 02402025 */  or         $a0, $s2, $zero
/* B8FD0 800DDBD0 92390037 */  lbu        $t9, 0x37($s1)
/* B8FD4 800DDBD4 53200004 */  beql       $t9, $zero, .L800DDBE8
/* B8FD8 800DDBD8 02402025 */   or        $a0, $s2, $zero
/* B8FDC 800DDBDC 0C039FD0 */  jal        func_800E7F40
/* B8FE0 800DDBE0 02202825 */   or        $a1, $s1, $zero
/* B8FE4 800DDBE4 02402025 */  or         $a0, $s2, $zero
.L800DDBE8:
/* B8FE8 800DDBE8 0C039B44 */  jal        func_800E6D10
/* B8FEC 800DDBEC 02002825 */   or        $a1, $s0, $zero
/* B8FF0 800DDBF0 1000010B */  b          .L800DE020
/* B8FF4 800DDBF4 02A02025 */   or        $a0, $s5, $zero
/* B8FF8 800DDBF8 8E50003C */  lw         $s0, 0x3c($s2)
/* B8FFC 800DDBFC 240F0001 */  addiu      $t7, $zero, 1
/* B9000 800DDC00 8E110010 */  lw         $s1, 0x10($s0)
/* B9004 800DDC04 922E0034 */  lbu        $t6, 0x34($s1)
/* B9008 800DDC08 55C00003 */  bnel       $t6, $zero, .L800DDC18
/* B900C 800DDC0C 8E530040 */   lw        $s3, 0x40($s2)
/* B9010 800DDC10 A22F0034 */  sb         $t7, 0x34($s1)
/* B9014 800DDC14 8E530040 */  lw         $s3, 0x40($s2)
.L800DDC18:
/* B9018 800DDC18 8E58001C */  lw         $t8, 0x1c($s2)
/* B901C 800DDC1C 02202025 */  or         $a0, $s1, $zero
/* B9020 800DDC20 02402825 */  or         $a1, $s2, $zero
/* B9024 800DDC24 0313C821 */  addu       $t9, $t8, $s3
/* B9028 800DDC28 AE390024 */  sw         $t9, 0x24($s1)
/* B902C 800DDC2C 924E0044 */  lbu        $t6, 0x44($s2)
/* B9030 800DDC30 0C039AAD */  jal        func_800E6AB4
/* B9034 800DDC34 A22E0030 */   sb        $t6, 0x30($s1)
/* B9038 800DDC38 00023400 */  sll        $a2, $v0, 0x10
/* B903C 800DDC3C 00067C03 */  sra        $t7, $a2, 0x10
/* B9040 800DDC40 01E03025 */  or         $a2, $t7, $zero
/* B9044 800DDC44 8E440014 */  lw         $a0, 0x14($s2)
/* B9048 800DDC48 02002825 */  or         $a1, $s0, $zero
/* B904C 800DDC4C 0C03A1C0 */  jal        func_800E8700
/* B9050 800DDC50 02603825 */   or        $a3, $s3, $zero
/* B9054 800DDC54 100000F2 */  b          .L800DE020
/* B9058 800DDC58 02A02025 */   or        $a0, $s5, $zero
/* B905C 800DDC5C 8E590074 */  lw         $t9, 0x74($s2)
/* B9060 800DDC60 8E540040 */  lw         $s4, 0x40($s2)
/* B9064 800DDC64 8E51003C */  lw         $s1, 0x3c($s2)
/* B9068 800DDC68 27A50078 */  addiu      $a1, $sp, 0x78
/* B906C 800DDC6C 0320F809 */  jalr       $t9
/* B9070 800DDC70 02802025 */   or        $a0, $s4, $zero
/* B9074 800DDC74 4458F800 */  cfc1       $t8, $31
/* B9078 800DDC78 240E0001 */  addiu      $t6, $zero, 1
/* B907C 800DDC7C 44CEF800 */  ctc1       $t6, $31
/* B9080 800DDC80 C7A40078 */  lwc1       $f4, 0x78($sp)
/* B9084 800DDC84 00409825 */  or         $s3, $v0, $zero
/* B9088 800DDC88 3C014F00 */  lui        $at, 0x4f00
/* B908C 800DDC8C 460021A4 */  cvt.w.s    $f6, $f4
/* B9090 800DDC90 02202025 */  or         $a0, $s1, $zero
/* B9094 800DDC94 02402825 */  or         $a1, $s2, $zero
/* B9098 800DDC98 444EF800 */  cfc1       $t6, $31
/* B909C 800DDC9C 00000000 */  nop
/* B90A0 800DDCA0 31CE0078 */  andi       $t6, $t6, 0x78
/* B90A4 800DDCA4 51C00013 */  beql       $t6, $zero, .L800DDCF4
/* B90A8 800DDCA8 440E3000 */   mfc1      $t6, $f6
/* B90AC 800DDCAC 44813000 */  mtc1       $at, $f6
/* B90B0 800DDCB0 240E0001 */  addiu      $t6, $zero, 1
/* B90B4 800DDCB4 46062181 */  sub.s      $f6, $f4, $f6
/* B90B8 800DDCB8 44CEF800 */  ctc1       $t6, $31
/* B90BC 800DDCBC 00000000 */  nop
/* B90C0 800DDCC0 460031A4 */  cvt.w.s    $f6, $f6
/* B90C4 800DDCC4 444EF800 */  cfc1       $t6, $31
/* B90C8 800DDCC8 00000000 */  nop
/* B90CC 800DDCCC 31CE0078 */  andi       $t6, $t6, 0x78
/* B90D0 800DDCD0 15C00005 */  bnez       $t6, .L800DDCE8
/* B90D4 800DDCD4 00000000 */   nop
/* B90D8 800DDCD8 440E3000 */  mfc1       $t6, $f6
/* B90DC 800DDCDC 3C018000 */  lui        $at, 0x8000
/* B90E0 800DDCE0 10000007 */  b          .L800DDD00
/* B90E4 800DDCE4 01C17025 */   or        $t6, $t6, $at
.L800DDCE8:
/* B90E8 800DDCE8 10000005 */  b          .L800DDD00
/* B90EC 800DDCEC 240EFFFF */   addiu     $t6, $zero, -1
/* B90F0 800DDCF0 440E3000 */  mfc1       $t6, $f6
.L800DDCF4:
/* B90F4 800DDCF4 00000000 */  nop
/* B90F8 800DDCF8 05C0FFFB */  bltz       $t6, .L800DDCE8
/* B90FC 800DDCFC 00000000 */   nop
.L800DDD00:
/* B9100 800DDD00 44D8F800 */  ctc1       $t8, $31
/* B9104 800DDD04 0C039AAD */  jal        func_800E6AB4
/* B9108 800DDD08 A22E0036 */   sb        $t6, 0x36($s1)
/* B910C 800DDD0C 00028400 */  sll        $s0, $v0, 0x10
/* B9110 800DDD10 00107C03 */  sra        $t7, $s0, 0x10
/* B9114 800DDD14 01E08025 */  or         $s0, $t7, $zero
/* B9118 800DDD18 02202025 */  or         $a0, $s1, $zero
/* B911C 800DDD1C 0C039AA4 */  jal        func_800E6A90
/* B9120 800DDD20 8E45001C */   lw        $a1, 0x1c($s2)
/* B9124 800DDD24 00103400 */  sll        $a2, $s0, 0x10
/* B9128 800DDD28 0006CC03 */  sra        $t9, $a2, 0x10
/* B912C 800DDD2C 03203025 */  or         $a2, $t9, $zero
/* B9130 800DDD30 8E440014 */  lw         $a0, 0x14($s2)
/* B9134 800DDD34 26250004 */  addiu      $a1, $s1, 4
/* B9138 800DDD38 0C03A1C0 */  jal        func_800E8700
/* B913C 800DDD3C 00403825 */   or        $a3, $v0, $zero
/* B9140 800DDD40 24180016 */  addiu      $t8, $zero, 0x16
/* B9144 800DDD44 A7B8008C */  sh         $t8, 0x8c($sp)
/* B9148 800DDD48 AFB10090 */  sw         $s1, 0x90($sp)
/* B914C 800DDD4C AFB40094 */  sw         $s4, 0x94($sp)
/* B9150 800DDD50 02A02025 */  or         $a0, $s5, $zero
/* B9154 800DDD54 27A5008C */  addiu      $a1, $sp, 0x8c
/* B9158 800DDD58 0C03A0D7 */  jal        func_800E835C
/* B915C 800DDD5C 02603025 */   or        $a2, $s3, $zero
/* B9160 800DDD60 100000AF */  b          .L800DE020
/* B9164 800DDD64 02A02025 */   or        $a0, $s5, $zero
/* B9168 800DDD68 8E590074 */  lw         $t9, 0x74($s2)
/* B916C 800DDD6C 8E540040 */  lw         $s4, 0x40($s2)
/* B9170 800DDD70 8E51003C */  lw         $s1, 0x3c($s2)
/* B9174 800DDD74 92500044 */  lbu        $s0, 0x44($s2)
/* B9178 800DDD78 27A50078 */  addiu      $a1, $sp, 0x78
/* B917C 800DDD7C 0320F809 */  jalr       $t9
/* B9180 800DDD80 02802025 */   or        $a0, $s4, $zero
/* B9184 800DDD84 C7A80078 */  lwc1       $f8, 0x78($sp)
/* B9188 800DDD88 C6240028 */  lwc1       $f4, 0x28($s1)
/* B918C 800DDD8C 00107900 */  sll        $t7, $s0, 4
/* B9190 800DDD90 E628002C */  swc1       $f8, 0x2c($s1)
/* B9194 800DDD94 C626002C */  lwc1       $f6, 0x2c($s1)
/* B9198 800DDD98 8E4E0060 */  lw         $t6, 0x60($s2)
/* B919C 800DDD9C 00409825 */  or         $s3, $v0, $zero
/* B91A0 800DDDA0 46062202 */  mul.s      $f8, $f4, $f6
/* B91A4 800DDDA4 01CFC021 */  addu       $t8, $t6, $t7
/* B91A8 800DDDA8 C70A000C */  lwc1       $f10, 0xc($t8)
/* B91AC 800DDDAC 8E440014 */  lw         $a0, 0x14($s2)
/* B91B0 800DDDB0 26250004 */  addiu      $a1, $s1, 4
/* B91B4 800DDDB4 46085102 */  mul.s      $f4, $f10, $f8
/* B91B8 800DDDB8 44062000 */  mfc1       $a2, $f4
/* B91BC 800DDDBC 0C03A1E8 */  jal        func_800E87A0
/* B91C0 800DDDC0 00000000 */   nop
/* B91C4 800DDDC4 24190017 */  addiu      $t9, $zero, 0x17
/* B91C8 800DDDC8 A7B9008C */  sh         $t9, 0x8c($sp)
/* B91CC 800DDDCC AFB10090 */  sw         $s1, 0x90($sp)
/* B91D0 800DDDD0 AFB40094 */  sw         $s4, 0x94($sp)
/* B91D4 800DDDD4 A3B00098 */  sb         $s0, 0x98($sp)
/* B91D8 800DDDD8 02A02025 */  or         $a0, $s5, $zero
/* B91DC 800DDDDC 27A5008C */  addiu      $a1, $sp, 0x8c
/* B91E0 800DDDE0 0C03A0D7 */  jal        func_800E835C
/* B91E4 800DDDE4 02603025 */   or        $a2, $s3, $zero
/* B91E8 800DDDE8 1000008D */  b          .L800DE020
/* B91EC 800DDDEC 02A02025 */   or        $a0, $s5, $zero
/* B91F0 800DDDF0 8FA80050 */  lw         $t0, 0x50($sp)
/* B91F4 800DDDF4 AFB200A0 */  sw         $s2, 0xa0($sp)
/* B91F8 800DDDF8 0C03748B */  jal        func_800DD22C
/* B91FC 800DDDFC AFB5004C */   sw        $s5, 0x4c($sp)
/* B9200 800DDE00 8FB200A0 */  lw         $s2, 0xa0($sp)
/* B9204 800DDE04 10000085 */  b          .L800DE01C
/* B9208 800DDE08 8FB5004C */   lw        $s5, 0x4c($sp)
/* B920C 800DDE0C 0240B825 */  or         $s7, $s2, $zero
/* B9210 800DDE10 8FA50050 */  lw         $a1, 0x50($sp)
/* B9214 800DDE14 AFB200A0 */  sw         $s2, 0xa0($sp)
/* B9218 800DDE18 0C037417 */  jal        func_800DD05C
/* B921C 800DDE1C AFB5004C */   sw        $s5, 0x4c($sp)
/* B9220 800DDE20 8FB200A0 */  lw         $s2, 0xa0($sp)
/* B9224 800DDE24 1000007D */  b          .L800DE01C
/* B9228 800DDE28 8FB5004C */   lw        $s5, 0x4c($sp)
/* B922C 800DDE2C 8E510064 */  lw         $s1, 0x64($s2)
/* B9230 800DDE30 864E003C */  lh         $t6, 0x3c($s2)
/* B9234 800DDE34 12200079 */  beqz       $s1, .L800DE01C
/* B9238 800DDE38 A64E0032 */   sh        $t6, 0x32($s2)
/* B923C 800DDE3C 02202025 */  or         $a0, $s1, $zero
.L800DDE40:
/* B9240 800DDE40 0C039AAD */  jal        func_800E6AB4
/* B9244 800DDE44 02402825 */   or        $a1, $s2, $zero
/* B9248 800DDE48 00028400 */  sll        $s0, $v0, 0x10
/* B924C 800DDE4C 00107C03 */  sra        $t7, $s0, 0x10
/* B9250 800DDE50 01E08025 */  or         $s0, $t7, $zero
/* B9254 800DDE54 02202025 */  or         $a0, $s1, $zero
/* B9258 800DDE58 0C039AA4 */  jal        func_800E6A90
/* B925C 800DDE5C 8E45001C */   lw        $a1, 0x1c($s2)
/* B9260 800DDE60 00103400 */  sll        $a2, $s0, 0x10
/* B9264 800DDE64 0006C403 */  sra        $t8, $a2, 0x10
/* B9268 800DDE68 03003025 */  or         $a2, $t8, $zero
/* B926C 800DDE6C 8E440014 */  lw         $a0, 0x14($s2)
/* B9270 800DDE70 26250004 */  addiu      $a1, $s1, 4
/* B9274 800DDE74 0C03A1C0 */  jal        func_800E8700
/* B9278 800DDE78 00403825 */   or        $a3, $v0, $zero
/* B927C 800DDE7C 8E310000 */  lw         $s1, ($s1)
/* B9280 800DDE80 5620FFEF */  bnel       $s1, $zero, .L800DDE40
/* B9284 800DDE84 02202025 */   or        $a0, $s1, $zero
/* B9288 800DDE88 10000065 */  b          .L800DE020
/* B928C 800DDE8C 02A02025 */   or        $a0, $s5, $zero
/* B9290 800DDE90 8E59002C */  lw         $t9, 0x2c($s2)
/* B9294 800DDE94 24010001 */  addiu      $at, $zero, 1
/* B9298 800DDE98 240E0001 */  addiu      $t6, $zero, 1
/* B929C 800DDE9C 1321005F */  beq        $t9, $at, .L800DE01C
/* B92A0 800DDEA0 02402025 */   or        $a0, $s2, $zero
/* B92A4 800DDEA4 0C0373EC */  jal        func_800DCFB0
/* B92A8 800DDEA8 AE4E002C */   sw        $t6, 0x2c($s2)
/* B92AC 800DDEAC 1000005C */  b          .L800DE020
/* B92B0 800DDEB0 02A02025 */   or        $a0, $s5, $zero
/* B92B4 800DDEB4 8E4F002C */  lw         $t7, 0x2c($s2)
/* B92B8 800DDEB8 24010002 */  addiu      $at, $zero, 2
/* B92BC 800DDEBC 55E10058 */  bnel       $t7, $at, .L800DE020
/* B92C0 800DDEC0 02A02025 */   or        $a0, $s5, $zero
/* B92C4 800DDEC4 8E510064 */  lw         $s1, 0x64($s2)
/* B92C8 800DDEC8 12200013 */  beqz       $s1, .L800DDF18
/* B92CC 800DDECC 26300004 */   addiu     $s0, $s1, 4
.L800DDED0:
/* B92D0 800DDED0 02002825 */  or         $a1, $s0, $zero
/* B92D4 800DDED4 0C03A174 */  jal        func_800E85D0
/* B92D8 800DDED8 8E440014 */   lw        $a0, 0x14($s2)
/* B92DC 800DDEDC 8E440014 */  lw         $a0, 0x14($s2)
/* B92E0 800DDEE0 0C03A194 */  jal        func_800E8650
/* B92E4 800DDEE4 02002825 */   or        $a1, $s0, $zero
/* B92E8 800DDEE8 92380037 */  lbu        $t8, 0x37($s1)
/* B92EC 800DDEEC 02402025 */  or         $a0, $s2, $zero
/* B92F0 800DDEF0 53000004 */  beql       $t8, $zero, .L800DDF04
/* B92F4 800DDEF4 02402025 */   or        $a0, $s2, $zero
/* B92F8 800DDEF8 0C039FD0 */  jal        func_800E7F40
/* B92FC 800DDEFC 02202825 */   or        $a1, $s1, $zero
/* B9300 800DDF00 02402025 */  or         $a0, $s2, $zero
.L800DDF04:
/* B9304 800DDF04 0C039B44 */  jal        func_800E6D10
/* B9308 800DDF08 02002825 */   or        $a1, $s0, $zero
/* B930C 800DDF0C 8E510064 */  lw         $s1, 0x64($s2)
/* B9310 800DDF10 5620FFEF */  bnel       $s1, $zero, .L800DDED0
/* B9314 800DDF14 26300004 */   addiu     $s0, $s1, 4
.L800DDF18:
/* B9318 800DDF18 10000040 */  b          .L800DE01C
/* B931C 800DDF1C AE40002C */   sw        $zero, 0x2c($s2)
/* B9320 800DDF20 8E59002C */  lw         $t9, 0x2c($s2)
/* B9324 800DDF24 24010001 */  addiu      $at, $zero, 1
/* B9328 800DDF28 02A02025 */  or         $a0, $s5, $zero
/* B932C 800DDF2C 5721003C */  bnel       $t9, $at, .L800DE020
/* B9330 800DDF30 02A02025 */   or        $a0, $s5, $zero
/* B9334 800DDF34 0C03A090 */  jal        func_800E8240
/* B9338 800DDF38 00002825 */   or        $a1, $zero, $zero
/* B933C 800DDF3C 02A02025 */  or         $a0, $s5, $zero
/* B9340 800DDF40 0C03A090 */  jal        func_800E8240
/* B9344 800DDF44 24050015 */   addiu     $a1, $zero, 0x15
/* B9348 800DDF48 02A02025 */  or         $a0, $s5, $zero
/* B934C 800DDF4C 0C03A090 */  jal        func_800E8240
/* B9350 800DDF50 24050002 */   addiu     $a1, $zero, 2
/* B9354 800DDF54 8E510064 */  lw         $s1, 0x64($s2)
/* B9358 800DDF58 1220000D */  beqz       $s1, .L800DDF90
/* B935C 800DDF5C 26300004 */   addiu     $s0, $s1, 4
.L800DDF60:
/* B9360 800DDF60 02002825 */  or         $a1, $s0, $zero
/* B9364 800DDF64 02402025 */  or         $a0, $s2, $zero
/* B9368 800DDF68 0C039B1A */  jal        func_800E6C68
/* B936C 800DDF6C 3406C350 */   ori       $a2, $zero, 0xc350
/* B9370 800DDF70 10400004 */  beqz       $v0, .L800DDF84
/* B9374 800DDF74 02402025 */   or        $a0, $s2, $zero
/* B9378 800DDF78 02002825 */  or         $a1, $s0, $zero
/* B937C 800DDF7C 0C039ACF */  jal        func_800E6B3C
/* B9380 800DDF80 3406C350 */   ori       $a2, $zero, 0xc350
.L800DDF84:
/* B9384 800DDF84 8E310000 */  lw         $s1, ($s1)
/* B9388 800DDF88 5620FFF5 */  bnel       $s1, $zero, .L800DDF60
/* B938C 800DDF8C 26300004 */   addiu     $s0, $s1, 4
.L800DDF90:
/* B9390 800DDF90 240E0002 */  addiu      $t6, $zero, 2
/* B9394 800DDF94 AE4E002C */  sw         $t6, 0x2c($s2)
/* B9398 800DDF98 240F0010 */  addiu      $t7, $zero, 0x10
/* B939C 800DDF9C 3C067FFF */  lui        $a2, 0x7fff
/* B93A0 800DDFA0 A7AF008C */  sh         $t7, 0x8c($sp)
/* B93A4 800DDFA4 34C6FFFF */  ori        $a2, $a2, 0xffff
/* B93A8 800DDFA8 02A02025 */  or         $a0, $s5, $zero
/* B93AC 800DDFAC 0C03A0D7 */  jal        func_800E835C
/* B93B0 800DDFB0 27A5008C */   addiu     $a1, $sp, 0x8c
/* B93B4 800DDFB4 1000001A */  b          .L800DE020
/* B93B8 800DDFB8 02A02025 */   or        $a0, $s5, $zero
/* B93BC 800DDFBC 9250003C */  lbu        $s0, 0x3c($s2)
/* B93C0 800DDFC0 8E590060 */  lw         $t9, 0x60($s2)
/* B93C4 800DDFC4 9258003D */  lbu        $t8, 0x3d($s2)
/* B93C8 800DDFC8 00107100 */  sll        $t6, $s0, 4
/* B93CC 800DDFCC 032E7821 */  addu       $t7, $t9, $t6
/* B93D0 800DDFD0 10000012 */  b          .L800DE01C
/* B93D4 800DDFD4 A1F80008 */   sb        $t8, 8($t7)
/* B93D8 800DDFD8 8E59003C */  lw         $t9, 0x3c($s2)
/* B93DC 800DDFDC 3C018011 */  lui        $at, %hi(D_80110BC4)
/* B93E0 800DDFE0 02402025 */  or         $a0, $s2, $zero
/* B93E4 800DDFE4 AE590018 */  sw         $t9, 0x18($s2)
/* B93E8 800DDFE8 0C037408 */  jal        func_800DD020
/* B93EC 800DDFEC C42C0BC4 */   lwc1      $f12, %lo(D_80110BC4)($at)
/* B93F0 800DDFF0 8E450020 */  lw         $a1, 0x20($s2)
/* B93F4 800DDFF4 50A0000A */  beql       $a1, $zero, .L800DE020
/* B93F8 800DDFF8 02A02025 */   or        $a0, $s5, $zero
/* B93FC 800DDFFC 0C039A75 */  jal        func_800E69D4
/* B9400 800DE000 02402025 */   or        $a0, $s2, $zero
/* B9404 800DE004 10000006 */  b          .L800DE020
/* B9408 800DE008 02A02025 */   or        $a0, $s5, $zero
/* B940C 800DE00C 8E45003C */  lw         $a1, 0x3c($s2)
/* B9410 800DE010 02402025 */  or         $a0, $s2, $zero
/* B9414 800DE014 0C039A75 */  jal        func_800E69D4
/* B9418 800DE018 AE450020 */   sw        $a1, 0x20($s2)
.L800DE01C:
/* B941C 800DE01C 02A02025 */  or         $a0, $s5, $zero
.L800DE020:
/* B9420 800DE020 0C03A120 */  jal        func_800E8480
/* B9424 800DE024 8FA50050 */   lw        $a1, 0x50($sp)
/* B9428 800DE028 1040FE9C */  beqz       $v0, .L800DDA9C
/* B942C 800DE02C AE420028 */   sw        $v0, 0x28($s2)
/* B9430 800DE030 8E4E001C */  lw         $t6, 0x1c($s2)
/* B9434 800DE034 01C2C021 */  addu       $t8, $t6, $v0
/* B9438 800DE038 AE58001C */  sw         $t8, 0x1c($s2)
/* B943C 800DE03C 8FBF0044 */  lw         $ra, 0x44($sp)
/* B9440 800DE040 8FBE0040 */  lw         $fp, 0x40($sp)
/* B9444 800DE044 8FB7003C */  lw         $s7, 0x3c($sp)
/* B9448 800DE048 8FB60038 */  lw         $s6, 0x38($sp)
/* B944C 800DE04C 8FB50034 */  lw         $s5, 0x34($sp)
/* B9450 800DE050 8FB40030 */  lw         $s4, 0x30($sp)
/* B9454 800DE054 8FB3002C */  lw         $s3, 0x2c($sp)
/* B9458 800DE058 8FB20028 */  lw         $s2, 0x28($sp)
/* B945C 800DE05C 8FB10024 */  lw         $s1, 0x24($sp)
/* B9460 800DE060 8FB00020 */  lw         $s0, 0x20($sp)
/* B9464 800DE064 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B9468 800DE068 03E00008 */  jr         $ra
/* B946C 800DE06C 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_800DE070
/* B9470 800DE070 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B9474 800DE074 AFBF0024 */  sw         $ra, 0x24($sp)
/* B9478 800DE078 AFB10020 */  sw         $s1, 0x20($sp)
/* B947C 800DE07C AFB0001C */  sw         $s0, 0x1c($sp)
/* B9480 800DE080 8CA6000C */  lw         $a2, 0xc($a1)
/* B9484 800DE084 AC800020 */  sw         $zero, 0x20($a0)
/* B9488 800DE088 AC800018 */  sw         $zero, 0x18($a0)
/* B948C 800DE08C 3C0E8011 */  lui        $t6, %hi(D_80109DA0)
/* B9490 800DE090 8DCE9DA0 */  lw         $t6, %lo(D_80109DA0)($t6)
/* B9494 800DE094 240F00FF */  addiu      $t7, $zero, 0xff
/* B9498 800DE098 241801E8 */  addiu      $t8, $zero, 0x1e8
/* B949C 800DE09C 24197FFF */  addiu      $t9, $zero, 0x7fff
/* B94A0 800DE0A0 24083E80 */  addiu      $t0, $zero, 0x3e80
/* B94A4 800DE0A4 A48F0030 */  sh         $t7, 0x30($a0)
/* B94A8 800DE0A8 AC980024 */  sw         $t8, 0x24($a0)
/* B94AC 800DE0AC AC800028 */  sw         $zero, 0x28($a0)
/* B94B0 800DE0B0 AC80002C */  sw         $zero, 0x2c($a0)
/* B94B4 800DE0B4 A4990032 */  sh         $t9, 0x32($a0)
/* B94B8 800DE0B8 AC88005C */  sw         $t0, 0x5c($a0)
/* B94BC 800DE0BC AC80001C */  sw         $zero, 0x1c($a0)
/* B94C0 800DE0C0 AC8E0014 */  sw         $t6, 0x14($a0)
/* B94C4 800DE0C4 8CA90010 */  lw         $t1, 0x10($a1)
/* B94C8 800DE0C8 240C0009 */  addiu      $t4, $zero, 9
/* B94CC 800DE0CC 00A08825 */  or         $s1, $a1, $zero
/* B94D0 800DE0D0 AC890070 */  sw         $t1, 0x70($a0)
/* B94D4 800DE0D4 8CAA0014 */  lw         $t2, 0x14($a1)
/* B94D8 800DE0D8 00808025 */  or         $s0, $a0, $zero
/* B94DC 800DE0DC 240E0010 */  addiu      $t6, $zero, 0x10
/* B94E0 800DE0E0 AC8A0074 */  sw         $t2, 0x74($a0)
/* B94E4 800DE0E4 8CAB0018 */  lw         $t3, 0x18($a1)
/* B94E8 800DE0E8 A48C0038 */  sh         $t4, 0x38($a0)
/* B94EC 800DE0EC AC8B0078 */  sw         $t3, 0x78($a0)
/* B94F0 800DE0F0 90AD0008 */  lbu        $t5, 8($a1)
/* B94F4 800DE0F4 00002825 */  or         $a1, $zero, $zero
/* B94F8 800DE0F8 A08D0034 */  sb         $t5, 0x34($a0)
/* B94FC 800DE0FC 92270008 */  lbu        $a3, 8($s1)
/* B9500 800DE100 AFAE0010 */  sw         $t6, 0x10($sp)
/* B9504 800DE104 00002025 */  or         $a0, $zero, $zero
/* B9508 800DE108 0C037278 */  jal        func_800DC9E0
/* B950C 800DE10C AFA6002C */   sw        $a2, 0x2c($sp)
/* B9510 800DE110 AE020060 */  sw         $v0, 0x60($s0)
/* B9514 800DE114 0C03A011 */  jal        func_800E8044
/* B9518 800DE118 02002025 */   or        $a0, $s0, $zero
/* B951C 800DE11C 8E270000 */  lw         $a3, ($s1)
/* B9520 800DE120 240F0038 */  addiu      $t7, $zero, 0x38
/* B9524 800DE124 AFAF0010 */  sw         $t7, 0x10($sp)
/* B9528 800DE128 00002025 */  or         $a0, $zero, $zero
/* B952C 800DE12C 00002825 */  or         $a1, $zero, $zero
/* B9530 800DE130 0C037278 */  jal        func_800DC9E0
/* B9534 800DE134 8FA6002C */   lw        $a2, 0x2c($sp)
/* B9538 800DE138 AE00006C */  sw         $zero, 0x6c($s0)
/* B953C 800DE13C 8E380000 */  lw         $t8, ($s1)
/* B9540 800DE140 00002025 */  or         $a0, $zero, $zero
/* B9544 800DE144 00002825 */  or         $a1, $zero, $zero
/* B9548 800DE148 1B00000B */  blez       $t8, .L800DE178
/* B954C 800DE14C 2409001C */   addiu     $t1, $zero, 0x1c
/* B9550 800DE150 00401825 */  or         $v1, $v0, $zero
/* B9554 800DE154 8E19006C */  lw         $t9, 0x6c($s0)
.L800DE158:
/* B9558 800DE158 24840001 */  addiu      $a0, $a0, 1
/* B955C 800DE15C AC790000 */  sw         $t9, ($v1)
/* B9560 800DE160 AE03006C */  sw         $v1, 0x6c($s0)
/* B9564 800DE164 8E280000 */  lw         $t0, ($s1)
/* B9568 800DE168 24630038 */  addiu      $v1, $v1, 0x38
/* B956C 800DE16C 0088082A */  slt        $at, $a0, $t0
/* B9570 800DE170 5420FFF9 */  bnel       $at, $zero, .L800DE158
/* B9574 800DE174 8E19006C */   lw        $t9, 0x6c($s0)
.L800DE178:
/* B9578 800DE178 AE000064 */  sw         $zero, 0x64($s0)
/* B957C 800DE17C AE000068 */  sw         $zero, 0x68($s0)
/* B9580 800DE180 8E270004 */  lw         $a3, 4($s1)
/* B9584 800DE184 AFA90010 */  sw         $t1, 0x10($sp)
/* B9588 800DE188 8FA6002C */  lw         $a2, 0x2c($sp)
/* B958C 800DE18C 0C037278 */  jal        func_800DC9E0
/* B9590 800DE190 00002025 */   or        $a0, $zero, $zero
/* B9594 800DE194 26040048 */  addiu      $a0, $s0, 0x48
/* B9598 800DE198 00402825 */  or         $a1, $v0, $zero
/* B959C 800DE19C 0C03A143 */  jal        func_800E850C
/* B95A0 800DE1A0 8E260004 */   lw        $a2, 4($s1)
/* B95A4 800DE1A4 3C0A800E */  lui        $t2, %hi(func_800DDA5C)
/* B95A8 800DE1A8 254ADA5C */  addiu      $t2, $t2, %lo(func_800DDA5C)
/* B95AC 800DE1AC AE000000 */  sw         $zero, ($s0)
/* B95B0 800DE1B0 AE0A0008 */  sw         $t2, 8($s0)
/* B95B4 800DE1B4 AE100004 */  sw         $s0, 4($s0)
/* B95B8 800DE1B8 3C048011 */  lui        $a0, %hi(D_80109DA0)
/* B95BC 800DE1BC 8C849DA0 */  lw         $a0, %lo(D_80109DA0)($a0)
/* B95C0 800DE1C0 0C03A160 */  jal        func_800E8580
/* B95C4 800DE1C4 02002825 */   or        $a1, $s0, $zero
/* B95C8 800DE1C8 8FBF0024 */  lw         $ra, 0x24($sp)
/* B95CC 800DE1CC 8FB0001C */  lw         $s0, 0x1c($sp)
/* B95D0 800DE1D0 8FB10020 */  lw         $s1, 0x20($sp)
/* B95D4 800DE1D4 03E00008 */  jr         $ra
/* B95D8 800DE1D8 27BD0040 */   addiu     $sp, $sp, 0x40
/* B95DC 800DE1DC 00000000 */  nop
