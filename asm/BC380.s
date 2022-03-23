.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0F80
/* BC380 800E0F80 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* BC384 800E0F84 3084FFFF */  andi       $a0, $a0, 0xffff
/* BC388 800E0F88 A3A0000F */  sb         $zero, 0xf($sp)
/* BC38C 800E0F8C AFA00008 */  sw         $zero, 8($sp)
.L800E0F90:
/* BC390 800E0F90 93AE000F */  lbu        $t6, 0xf($sp)
/* BC394 800E0F94 31CF0010 */  andi       $t7, $t6, 0x10
/* BC398 800E0F98 11E00004 */  beqz       $t7, .L800E0FAC
/* BC39C 800E0F9C 00000000 */   nop
/* BC3A0 800E0FA0 24180015 */  addiu      $t8, $zero, 0x15
/* BC3A4 800E0FA4 10000002 */  b          .L800E0FB0
/* BC3A8 800E0FA8 A3B8000E */   sb        $t8, 0xe($sp)
.L800E0FAC:
/* BC3AC 800E0FAC A3A0000E */  sb         $zero, 0xe($sp)
.L800E0FB0:
/* BC3B0 800E0FB0 93B9000F */  lbu        $t9, 0xf($sp)
/* BC3B4 800E0FB4 30890400 */  andi       $t1, $a0, 0x400
/* BC3B8 800E0FB8 00194040 */  sll        $t0, $t9, 1
/* BC3BC 800E0FBC 11200003 */  beqz       $t1, .L800E0FCC
/* BC3C0 800E0FC0 A3A8000F */   sb        $t0, 0xf($sp)
/* BC3C4 800E0FC4 10000002 */  b          .L800E0FD0
/* BC3C8 800E0FC8 24050001 */   addiu     $a1, $zero, 1
.L800E0FCC:
/* BC3CC 800E0FCC 00002825 */  or         $a1, $zero, $zero
.L800E0FD0:
/* BC3D0 800E0FD0 93AA000F */  lbu        $t2, 0xf($sp)
/* BC3D4 800E0FD4 8FA80008 */  lw         $t0, 8($sp)
/* BC3D8 800E0FD8 93AF000E */  lbu        $t7, 0xe($sp)
/* BC3DC 800E0FDC 30AB00FF */  andi       $t3, $a1, 0xff
/* BC3E0 800E0FE0 00046840 */  sll        $t5, $a0, 1
/* BC3E4 800E0FE4 014B6025 */  or         $t4, $t2, $t3
/* BC3E8 800E0FE8 01A02025 */  or         $a0, $t5, $zero
/* BC3EC 800E0FEC 319800FF */  andi       $t8, $t4, 0xff
/* BC3F0 800E0FF0 25090001 */  addiu      $t1, $t0, 1
/* BC3F4 800E0FF4 29210010 */  slti       $at, $t1, 0x10
/* BC3F8 800E0FF8 A3AC000F */  sb         $t4, 0xf($sp)
/* BC3FC 800E0FFC 308EFFFF */  andi       $t6, $a0, 0xffff
/* BC400 800E1000 030FC826 */  xor        $t9, $t8, $t7
/* BC404 800E1004 AFA90008 */  sw         $t1, 8($sp)
/* BC408 800E1008 01C02025 */  or         $a0, $t6, $zero
/* BC40C 800E100C 1420FFE0 */  bnez       $at, .L800E0F90
/* BC410 800E1010 A3B9000F */   sb        $t9, 0xf($sp)
/* BC414 800E1014 93A2000F */  lbu        $v0, 0xf($sp)
/* BC418 800E1018 27BD0010 */  addiu      $sp, $sp, 0x10
/* BC41C 800E101C 304A001F */  andi       $t2, $v0, 0x1f
/* BC420 800E1020 01401025 */  or         $v0, $t2, $zero
/* BC424 800E1024 304B00FF */  andi       $t3, $v0, 0xff
/* BC428 800E1028 03E00008 */  jr         $ra
/* BC42C 800E102C 01601025 */   or        $v0, $t3, $zero

glabel func_800E1030
/* BC430 800E1030 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* BC434 800E1034 A3A0000F */  sb         $zero, 0xf($sp)
/* BC438 800E1038 AFA00008 */  sw         $zero, 8($sp)
.L800E103C:
/* BC43C 800E103C 240E0007 */  addiu      $t6, $zero, 7
/* BC440 800E1040 AFAE0004 */  sw         $t6, 4($sp)
.L800E1044:
/* BC444 800E1044 93AF000F */  lbu        $t7, 0xf($sp)
/* BC448 800E1048 31F80080 */  andi       $t8, $t7, 0x80
/* BC44C 800E104C 13000004 */  beqz       $t8, .L800E1060
/* BC450 800E1050 00000000 */   nop
/* BC454 800E1054 24190085 */  addiu      $t9, $zero, 0x85
/* BC458 800E1058 10000002 */  b          .L800E1064
/* BC45C 800E105C A3B9000E */   sb        $t9, 0xe($sp)
.L800E1060:
/* BC460 800E1060 A3A0000E */  sb         $zero, 0xe($sp)
.L800E1064:
/* BC464 800E1064 93A8000F */  lbu        $t0, 0xf($sp)
/* BC468 800E1068 8FAA0008 */  lw         $t2, 8($sp)
/* BC46C 800E106C 24010020 */  addiu      $at, $zero, 0x20
/* BC470 800E1070 00084840 */  sll        $t1, $t0, 1
/* BC474 800E1074 15410004 */  bne        $t2, $at, .L800E1088
/* BC478 800E1078 A3A9000F */   sb        $t1, 0xf($sp)
/* BC47C 800E107C 312B00FF */  andi       $t3, $t1, 0xff
/* BC480 800E1080 1000000E */  b          .L800E10BC
/* BC484 800E1084 A3AB000F */   sb        $t3, 0xf($sp)
.L800E1088:
/* BC488 800E1088 8FAD0004 */  lw         $t5, 4($sp)
/* BC48C 800E108C 908C0000 */  lbu        $t4, ($a0)
/* BC490 800E1090 240E0001 */  addiu      $t6, $zero, 1
/* BC494 800E1094 01AE7804 */  sllv       $t7, $t6, $t5
/* BC498 800E1098 018FC024 */  and        $t8, $t4, $t7
/* BC49C 800E109C 13000003 */  beqz       $t8, .L800E10AC
/* BC4A0 800E10A0 00000000 */   nop
/* BC4A4 800E10A4 10000002 */  b          .L800E10B0
/* BC4A8 800E10A8 24050001 */   addiu     $a1, $zero, 1
.L800E10AC:
/* BC4AC 800E10AC 00002825 */  or         $a1, $zero, $zero
.L800E10B0:
/* BC4B0 800E10B0 93B9000F */  lbu        $t9, 0xf($sp)
/* BC4B4 800E10B4 03254025 */  or         $t0, $t9, $a1
/* BC4B8 800E10B8 A3A8000F */  sb         $t0, 0xf($sp)
.L800E10BC:
/* BC4BC 800E10BC 8FAE0004 */  lw         $t6, 4($sp)
/* BC4C0 800E10C0 93AA000F */  lbu        $t2, 0xf($sp)
/* BC4C4 800E10C4 93A9000E */  lbu        $t1, 0xe($sp)
/* BC4C8 800E10C8 25CDFFFF */  addiu      $t5, $t6, -1
/* BC4CC 800E10CC AFAD0004 */  sw         $t5, 4($sp)
/* BC4D0 800E10D0 01495826 */  xor        $t3, $t2, $t1
/* BC4D4 800E10D4 05A1FFDB */  bgez       $t5, .L800E1044
/* BC4D8 800E10D8 A3AB000F */   sb        $t3, 0xf($sp)
/* BC4DC 800E10DC 8FAC0008 */  lw         $t4, 8($sp)
/* BC4E0 800E10E0 24840001 */  addiu      $a0, $a0, 1
/* BC4E4 800E10E4 258F0001 */  addiu      $t7, $t4, 1
/* BC4E8 800E10E8 29E10021 */  slti       $at, $t7, 0x21
/* BC4EC 800E10EC 1420FFD3 */  bnez       $at, .L800E103C
/* BC4F0 800E10F0 AFAF0008 */   sw        $t7, 8($sp)
/* BC4F4 800E10F4 93A2000F */  lbu        $v0, 0xf($sp)
/* BC4F8 800E10F8 03E00008 */  jr         $ra
/* BC4FC 800E10FC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800E1100
/* BC500 800E1100 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* BC504 800E1104 8FB80070 */  lw         $t8, 0x70($sp)
/* BC508 800E1108 3C0E8025 */  lui        $t6, %hi(D_8024B1E0)
/* BC50C 800E110C 25CEB1E0 */  addiu      $t6, $t6, %lo(D_8024B1E0)
/* BC510 800E1110 240F0002 */  addiu      $t7, $zero, 2
/* BC514 800E1114 24010001 */  addiu      $at, $zero, 1
/* BC518 800E1118 AFBF001C */  sw         $ra, 0x1c($sp)
/* BC51C 800E111C AFA40060 */  sw         $a0, 0x60($sp)
/* BC520 800E1120 AFA50064 */  sw         $a1, 0x64($sp)
/* BC524 800E1124 AFA60068 */  sw         $a2, 0x68($sp)
/* BC528 800E1128 AFA7006C */  sw         $a3, 0x6c($sp)
/* BC52C 800E112C AFB00018 */  sw         $s0, 0x18($sp)
/* BC530 800E1130 AFA0005C */  sw         $zero, 0x5c($sp)
/* BC534 800E1134 AFAE0054 */  sw         $t6, 0x54($sp)
/* BC538 800E1138 13010009 */  beq        $t8, $at, .L800E1160
/* BC53C 800E113C AFAF0028 */   sw        $t7, 0x28($sp)
/* BC540 800E1140 97B9006A */  lhu        $t9, 0x6a($sp)
/* BC544 800E1144 2B210007 */  slti       $at, $t9, 7
/* BC548 800E1148 10200005 */  beqz       $at, .L800E1160
/* BC54C 800E114C 00000000 */   nop
/* BC550 800E1150 13200003 */  beqz       $t9, .L800E1160
/* BC554 800E1154 00000000 */   nop
/* BC558 800E1158 10000070 */  b          .L800E131C
/* BC55C 800E115C 00001025 */   or        $v0, $zero, $zero
.L800E1160:
/* BC560 800E1160 0C038398 */  jal        func_800E0E60
/* BC564 800E1164 00000000 */   nop
/* BC568 800E1168 24080003 */  addiu      $t0, $zero, 3
/* BC56C 800E116C 3C018025 */  lui        $at, %hi(D_8024B140)
/* BC570 800E1170 A028B140 */  sb         $t0, %lo(D_8024B140)($at)
/* BC574 800E1174 8FA40064 */  lw         $a0, 0x64($sp)
/* BC578 800E1178 97A5006A */  lhu        $a1, 0x6a($sp)
/* BC57C 800E117C 0C0384CC */  jal        func_800E1330
/* BC580 800E1180 8FA6006C */   lw        $a2, 0x6c($sp)
/* BC584 800E1184 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* BC588 800E1188 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* BC58C 800E118C 0C0383B4 */  jal        func_800E0ED0
/* BC590 800E1190 24040001 */   addiu     $a0, $zero, 1
/* BC594 800E1194 AFA2005C */  sw         $v0, 0x5c($sp)
/* BC598 800E1198 8FA40060 */  lw         $a0, 0x60($sp)
/* BC59C 800E119C 00002825 */  or         $a1, $zero, $zero
/* BC5A0 800E11A0 0C036988 */  jal        func_800DA620
/* BC5A4 800E11A4 24060001 */   addiu     $a2, $zero, 1
.L800E11A8:
/* BC5A8 800E11A8 AFA00058 */  sw         $zero, 0x58($sp)
.L800E11AC:
/* BC5AC 800E11AC 8FAA0058 */  lw         $t2, 0x58($sp)
/* BC5B0 800E11B0 8FAC0058 */  lw         $t4, 0x58($sp)
/* BC5B4 800E11B4 3C018025 */  lui        $at, %hi(D_8024B1E0)
/* BC5B8 800E11B8 000A5880 */  sll        $t3, $t2, 2
/* BC5BC 800E11BC 002B0821 */  addu       $at, $at, $t3
/* BC5C0 800E11C0 240900FF */  addiu      $t1, $zero, 0xff
/* BC5C4 800E11C4 AC29B1E0 */  sw         $t1, %lo(D_8024B1E0)($at)
/* BC5C8 800E11C8 258D0001 */  addiu      $t5, $t4, 1
/* BC5CC 800E11CC 29A10010 */  slti       $at, $t5, 0x10
/* BC5D0 800E11D0 1420FFF6 */  bnez       $at, .L800E11AC
/* BC5D4 800E11D4 AFAD0058 */   sw        $t5, 0x58($sp)
/* BC5D8 800E11D8 3C018025 */  lui        $at, %hi(D_8024B21C)
/* BC5DC 800E11DC 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* BC5E0 800E11E0 AC20B21C */  sw         $zero, %lo(D_8024B21C)($at)
/* BC5E4 800E11E4 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* BC5E8 800E11E8 0C0383B4 */  jal        func_800E0ED0
/* BC5EC 800E11EC 00002025 */   or        $a0, $zero, $zero
/* BC5F0 800E11F0 AFA2005C */  sw         $v0, 0x5c($sp)
/* BC5F4 800E11F4 8FA40060 */  lw         $a0, 0x60($sp)
/* BC5F8 800E11F8 00002825 */  or         $a1, $zero, $zero
/* BC5FC 800E11FC 0C036988 */  jal        func_800DA620
/* BC600 800E1200 24060001 */   addiu     $a2, $zero, 1
/* BC604 800E1204 8FAF0064 */  lw         $t7, 0x64($sp)
/* BC608 800E1208 3C0E8025 */  lui        $t6, %hi(D_8024B1E0)
/* BC60C 800E120C 25CEB1E0 */  addiu      $t6, $t6, %lo(D_8024B1E0)
/* BC610 800E1210 11E0000C */  beqz       $t7, .L800E1244
/* BC614 800E1214 AFAE0054 */   sw        $t6, 0x54($sp)
/* BC618 800E1218 19E0000A */  blez       $t7, .L800E1244
/* BC61C 800E121C AFA00058 */   sw        $zero, 0x58($sp)
.L800E1220:
/* BC620 800E1220 8FA80058 */  lw         $t0, 0x58($sp)
/* BC624 800E1224 8FA90064 */  lw         $t1, 0x64($sp)
/* BC628 800E1228 8FB80054 */  lw         $t8, 0x54($sp)
/* BC62C 800E122C 250A0001 */  addiu      $t2, $t0, 1
/* BC630 800E1230 0149082A */  slt        $at, $t2, $t1
/* BC634 800E1234 27190001 */  addiu      $t9, $t8, 1
/* BC638 800E1238 AFAA0058 */  sw         $t2, 0x58($sp)
/* BC63C 800E123C 1420FFF8 */  bnez       $at, .L800E1220
/* BC640 800E1240 AFB90054 */   sw        $t9, 0x54($sp)
.L800E1244:
/* BC644 800E1244 8FAC0054 */  lw         $t4, 0x54($sp)
/* BC648 800E1248 27AB002C */  addiu      $t3, $sp, 0x2c
/* BC64C 800E124C 258E0024 */  addiu      $t6, $t4, 0x24
.L800E1250:
/* BC650 800E1250 89810000 */  lwl        $at, ($t4)
/* BC654 800E1254 99810003 */  lwr        $at, 3($t4)
/* BC658 800E1258 258C000C */  addiu      $t4, $t4, 0xc
/* BC65C 800E125C 256B000C */  addiu      $t3, $t3, 0xc
/* BC660 800E1260 AD61FFF4 */  sw         $at, -0xc($t3)
/* BC664 800E1264 8981FFF8 */  lwl        $at, -8($t4)
/* BC668 800E1268 9981FFFB */  lwr        $at, -5($t4)
/* BC66C 800E126C AD61FFF8 */  sw         $at, -8($t3)
/* BC670 800E1270 8981FFFC */  lwl        $at, -4($t4)
/* BC674 800E1274 9981FFFF */  lwr        $at, -1($t4)
/* BC678 800E1278 158EFFF5 */  bne        $t4, $t6, .L800E1250
/* BC67C 800E127C AD61FFFC */   sw        $at, -4($t3)
/* BC680 800E1280 89810000 */  lwl        $at, ($t4)
/* BC684 800E1284 99810003 */  lwr        $at, 3($t4)
/* BC688 800E1288 AD610000 */  sw         $at, ($t3)
/* BC68C 800E128C 93AF002E */  lbu        $t7, 0x2e($sp)
/* BC690 800E1290 31F800C0 */  andi       $t8, $t7, 0xc0
/* BC694 800E1294 0018C903 */  sra        $t9, $t8, 4
/* BC698 800E1298 17200013 */  bnez       $t9, .L800E12E8
/* BC69C 800E129C AFB9005C */   sw        $t9, 0x5c($sp)
/* BC6A0 800E12A0 0C03840C */  jal        func_800E1030
/* BC6A4 800E12A4 8FA4006C */   lw        $a0, 0x6c($sp)
/* BC6A8 800E12A8 93A80052 */  lbu        $t0, 0x52($sp)
/* BC6AC 800E12AC 1048000E */  beq        $v0, $t0, .L800E12E8
/* BC6B0 800E12B0 00000000 */   nop
/* BC6B4 800E12B4 8FA40060 */  lw         $a0, 0x60($sp)
/* BC6B8 800E12B8 0C036DC5 */  jal        func_800DB714
/* BC6BC 800E12BC 8FA50064 */   lw        $a1, 0x64($sp)
/* BC6C0 800E12C0 AFA2005C */  sw         $v0, 0x5c($sp)
/* BC6C4 800E12C4 8FAA005C */  lw         $t2, 0x5c($sp)
/* BC6C8 800E12C8 11400005 */  beqz       $t2, .L800E12E0
/* BC6CC 800E12CC 00000000 */   nop
/* BC6D0 800E12D0 0C0383A9 */  jal        func_800E0EA4
/* BC6D4 800E12D4 00000000 */   nop
/* BC6D8 800E12D8 10000010 */  b          .L800E131C
/* BC6DC 800E12DC 8FA2005C */   lw        $v0, 0x5c($sp)
.L800E12E0:
/* BC6E0 800E12E0 24090004 */  addiu      $t1, $zero, 4
/* BC6E4 800E12E4 AFA9005C */  sw         $t1, 0x5c($sp)
.L800E12E8:
/* BC6E8 800E12E8 8FAD005C */  lw         $t5, 0x5c($sp)
/* BC6EC 800E12EC 24010004 */  addiu      $at, $zero, 4
/* BC6F0 800E12F0 15A10007 */  bne        $t5, $at, .L800E1310
/* BC6F4 800E12F4 00000000 */   nop
/* BC6F8 800E12F8 8FAE0028 */  lw         $t6, 0x28($sp)
/* BC6FC 800E12FC 29D00000 */  slti       $s0, $t6, 0
/* BC700 800E1300 3A100001 */  xori       $s0, $s0, 1
/* BC704 800E1304 25CCFFFF */  addiu      $t4, $t6, -1
/* BC708 800E1308 1600FFA7 */  bnez       $s0, .L800E11A8
/* BC70C 800E130C AFAC0028 */   sw        $t4, 0x28($sp)
.L800E1310:
/* BC710 800E1310 0C0383A9 */  jal        func_800E0EA4
/* BC714 800E1314 00000000 */   nop
/* BC718 800E1318 8FA2005C */  lw         $v0, 0x5c($sp)
.L800E131C:
/* BC71C 800E131C 8FBF001C */  lw         $ra, 0x1c($sp)
/* BC720 800E1320 8FB00018 */  lw         $s0, 0x18($sp)
/* BC724 800E1324 27BD0060 */  addiu      $sp, $sp, 0x60
/* BC728 800E1328 03E00008 */  jr         $ra
/* BC72C 800E132C 00000000 */   nop

glabel func_800E1330
/* BC730 800E1330 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* BC734 800E1334 3C0E8025 */  lui        $t6, %hi(D_8024B1E0)
/* BC738 800E1338 25CEB1E0 */  addiu      $t6, $t6, %lo(D_8024B1E0)
/* BC73C 800E133C AFBF0014 */  sw         $ra, 0x14($sp)
/* BC740 800E1340 AFA40048 */  sw         $a0, 0x48($sp)
/* BC744 800E1344 AFA5004C */  sw         $a1, 0x4c($sp)
/* BC748 800E1348 AFA60050 */  sw         $a2, 0x50($sp)
/* BC74C 800E134C AFAE0044 */  sw         $t6, 0x44($sp)
/* BC750 800E1350 AFA00018 */  sw         $zero, 0x18($sp)
.L800E1354:
/* BC754 800E1354 8FAF0018 */  lw         $t7, 0x18($sp)
/* BC758 800E1358 8FB90018 */  lw         $t9, 0x18($sp)
/* BC75C 800E135C 3C018025 */  lui        $at, %hi(D_8024B1E0)
/* BC760 800E1360 000FC080 */  sll        $t8, $t7, 2
/* BC764 800E1364 00380821 */  addu       $at, $at, $t8
/* BC768 800E1368 AC20B1E0 */  sw         $zero, %lo(D_8024B1E0)($at)
/* BC76C 800E136C 27280001 */  addiu      $t0, $t9, 1
/* BC770 800E1370 29010010 */  slti       $at, $t0, 0x10
/* BC774 800E1374 1420FFF7 */  bnez       $at, .L800E1354
/* BC778 800E1378 AFA80018 */   sw        $t0, 0x18($sp)
/* BC77C 800E137C 24090001 */  addiu      $t1, $zero, 1
/* BC780 800E1380 3C018025 */  lui        $at, %hi(D_8024B21C)
/* BC784 800E1384 240A00FF */  addiu      $t2, $zero, 0xff
/* BC788 800E1388 240B0023 */  addiu      $t3, $zero, 0x23
/* BC78C 800E138C 240C0001 */  addiu      $t4, $zero, 1
/* BC790 800E1390 240D0003 */  addiu      $t5, $zero, 3
/* BC794 800E1394 AC29B21C */  sw         $t1, %lo(D_8024B21C)($at)
/* BC798 800E1398 A3AA001C */  sb         $t2, 0x1c($sp)
/* BC79C 800E139C A3AB001D */  sb         $t3, 0x1d($sp)
/* BC7A0 800E13A0 A3AC001E */  sb         $t4, 0x1e($sp)
/* BC7A4 800E13A4 A3AD001F */  sb         $t5, 0x1f($sp)
/* BC7A8 800E13A8 0C0383E0 */  jal        func_800E0F80
/* BC7AC 800E13AC 97A4004E */   lhu       $a0, 0x4e($sp)
/* BC7B0 800E13B0 97AE004E */  lhu        $t6, 0x4e($sp)
/* BC7B4 800E13B4 241900FF */  addiu      $t9, $zero, 0xff
/* BC7B8 800E13B8 A3B90042 */  sb         $t9, 0x42($sp)
/* BC7BC 800E13BC 000E7940 */  sll        $t7, $t6, 5
/* BC7C0 800E13C0 004FC025 */  or         $t8, $v0, $t7
/* BC7C4 800E13C4 A7B80020 */  sh         $t8, 0x20($sp)
/* BC7C8 800E13C8 AFA00018 */  sw         $zero, 0x18($sp)
.L800E13CC:
/* BC7CC 800E13CC 8FA80050 */  lw         $t0, 0x50($sp)
/* BC7D0 800E13D0 8FAA0018 */  lw         $t2, 0x18($sp)
/* BC7D4 800E13D4 91090000 */  lbu        $t1, ($t0)
/* BC7D8 800E13D8 03AA5821 */  addu       $t3, $sp, $t2
/* BC7DC 800E13DC A1690022 */  sb         $t1, 0x22($t3)
/* BC7E0 800E13E0 8FAE0018 */  lw         $t6, 0x18($sp)
/* BC7E4 800E13E4 8FAC0050 */  lw         $t4, 0x50($sp)
/* BC7E8 800E13E8 25CF0001 */  addiu      $t7, $t6, 1
/* BC7EC 800E13EC 29E10020 */  slti       $at, $t7, 0x20
/* BC7F0 800E13F0 258D0001 */  addiu      $t5, $t4, 1
/* BC7F4 800E13F4 AFAF0018 */  sw         $t7, 0x18($sp)
/* BC7F8 800E13F8 1420FFF4 */  bnez       $at, .L800E13CC
/* BC7FC 800E13FC AFAD0050 */   sw        $t5, 0x50($sp)
/* BC800 800E1400 8FB80048 */  lw         $t8, 0x48($sp)
/* BC804 800E1404 1300000E */  beqz       $t8, .L800E1440
/* BC808 800E1408 00000000 */   nop
/* BC80C 800E140C 1B00000C */  blez       $t8, .L800E1440
/* BC810 800E1410 AFA00018 */   sw        $zero, 0x18($sp)
.L800E1414:
/* BC814 800E1414 8FB90044 */  lw         $t9, 0x44($sp)
/* BC818 800E1418 A3200000 */  sb         $zero, ($t9)
/* BC81C 800E141C 8FAA0018 */  lw         $t2, 0x18($sp)
/* BC820 800E1420 8FAC0048 */  lw         $t4, 0x48($sp)
/* BC824 800E1424 8FA80044 */  lw         $t0, 0x44($sp)
/* BC828 800E1428 254B0001 */  addiu      $t3, $t2, 1
/* BC82C 800E142C 016C082A */  slt        $at, $t3, $t4
/* BC830 800E1430 25090001 */  addiu      $t1, $t0, 1
/* BC834 800E1434 AFAB0018 */  sw         $t3, 0x18($sp)
/* BC838 800E1438 1420FFF6 */  bnez       $at, .L800E1414
/* BC83C 800E143C AFA90044 */   sw        $t1, 0x44($sp)
.L800E1440:
/* BC840 800E1440 27AE001C */  addiu      $t6, $sp, 0x1c
/* BC844 800E1444 25D80024 */  addiu      $t8, $t6, 0x24
/* BC848 800E1448 8FAD0044 */  lw         $t5, 0x44($sp)
.L800E144C:
/* BC84C 800E144C 8DC10000 */  lw         $at, ($t6)
/* BC850 800E1450 25CE000C */  addiu      $t6, $t6, 0xc
/* BC854 800E1454 25AD000C */  addiu      $t5, $t5, 0xc
/* BC858 800E1458 A9A1FFF4 */  swl        $at, -0xc($t5)
/* BC85C 800E145C B9A1FFF7 */  swr        $at, -9($t5)
/* BC860 800E1460 8DC1FFF8 */  lw         $at, -8($t6)
/* BC864 800E1464 A9A1FFF8 */  swl        $at, -8($t5)
/* BC868 800E1468 B9A1FFFB */  swr        $at, -5($t5)
/* BC86C 800E146C 8DC1FFFC */  lw         $at, -4($t6)
/* BC870 800E1470 A9A1FFFC */  swl        $at, -4($t5)
/* BC874 800E1474 15D8FFF5 */  bne        $t6, $t8, .L800E144C
/* BC878 800E1478 B9A1FFFF */   swr       $at, -1($t5)
/* BC87C 800E147C 8DC10000 */  lw         $at, ($t6)
/* BC880 800E1480 240900FE */  addiu      $t1, $zero, 0xfe
/* BC884 800E1484 A9A10000 */  swl        $at, ($t5)
/* BC888 800E1488 B9A10003 */  swr        $at, 3($t5)
/* BC88C 800E148C 8FB90044 */  lw         $t9, 0x44($sp)
/* BC890 800E1490 27280028 */  addiu      $t0, $t9, 0x28
/* BC894 800E1494 AFA80044 */  sw         $t0, 0x44($sp)
/* BC898 800E1498 A1090000 */  sb         $t1, ($t0)
/* BC89C 800E149C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC8A0 800E14A0 27BD0048 */  addiu      $sp, $sp, 0x48
/* BC8A4 800E14A4 03E00008 */  jr         $ra
/* BC8A8 800E14A8 00000000 */   nop
/* BC8AC 800E14AC 00000000 */  nop
