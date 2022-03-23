.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E4CF0
/* C00F0 800E4CF0 27BDFB78 */  addiu      $sp, $sp, -0x488
/* C00F4 800E4CF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C00F8 800E4CF8 AFA40488 */  sw         $a0, 0x488($sp)
/* C00FC 800E4CFC AFA00034 */  sw         $zero, 0x34($sp)
/* C0100 800E4D00 0C039218 */  jal        func_800E4860
/* C0104 800E4D04 8FA40488 */   lw        $a0, 0x488($sp)
/* C0108 800E4D08 AFA20480 */  sw         $v0, 0x480($sp)
/* C010C 800E4D0C 8FAE0480 */  lw         $t6, 0x480($sp)
/* C0110 800E4D10 24010002 */  addiu      $at, $zero, 2
/* C0114 800E4D14 15C10004 */  bne        $t6, $at, .L800E4D28
/* C0118 800E4D18 00000000 */   nop
/* C011C 800E4D1C 0C039181 */  jal        func_800E4604
/* C0120 800E4D20 8FA40488 */   lw        $a0, 0x488($sp)
/* C0124 800E4D24 AFA20480 */  sw         $v0, 0x480($sp)
.L800E4D28:
/* C0128 800E4D28 8FAF0480 */  lw         $t7, 0x480($sp)
/* C012C 800E4D2C 11E00003 */  beqz       $t7, .L800E4D3C
/* C0130 800E4D30 00000000 */   nop
/* C0134 800E4D34 1000019B */  b          .L800E53A4
/* C0138 800E4D38 01E01025 */   or        $v0, $t7, $zero
.L800E4D3C:
/* C013C 800E4D3C 8FA40488 */  lw         $a0, 0x488($sp)
/* C0140 800E4D40 0C0394ED */  jal        func_800E53B4
/* C0144 800E4D44 27A50038 */   addiu     $a1, $sp, 0x38
/* C0148 800E4D48 AFA20480 */  sw         $v0, 0x480($sp)
/* C014C 800E4D4C 8FB80480 */  lw         $t8, 0x480($sp)
/* C0150 800E4D50 13000003 */  beqz       $t8, .L800E4D60
/* C0154 800E4D54 00000000 */   nop
/* C0158 800E4D58 10000192 */  b          .L800E53A4
/* C015C 800E4D5C 03001025 */   or        $v0, $t8, $zero
.L800E4D60:
/* C0160 800E4D60 8FB90488 */  lw         $t9, 0x488($sp)
/* C0164 800E4D64 AFA00484 */  sw         $zero, 0x484($sp)
/* C0168 800E4D68 8F280050 */  lw         $t0, 0x50($t9)
/* C016C 800E4D6C 190000C0 */  blez       $t0, .L800E5070
/* C0170 800E4D70 00000000 */   nop
.L800E4D74:
/* C0174 800E4D74 8FA90488 */  lw         $t1, 0x488($sp)
/* C0178 800E4D78 8FAB0484 */  lw         $t3, 0x484($sp)
/* C017C 800E4D7C 27A7025C */  addiu      $a3, $sp, 0x25c
/* C0180 800E4D80 8D2A005C */  lw         $t2, 0x5c($t1)
/* C0184 800E4D84 8D240004 */  lw         $a0, 4($t1)
/* C0188 800E4D88 8D250008 */  lw         $a1, 8($t1)
/* C018C 800E4D8C 0C03852C */  jal        func_800E14B0
/* C0190 800E4D90 014B3021 */   addu      $a2, $t2, $t3
/* C0194 800E4D94 AFA20480 */  sw         $v0, 0x480($sp)
/* C0198 800E4D98 8FAC0480 */  lw         $t4, 0x480($sp)
/* C019C 800E4D9C 11800003 */  beqz       $t4, .L800E4DAC
/* C01A0 800E4DA0 00000000 */   nop
/* C01A4 800E4DA4 1000017F */  b          .L800E53A4
/* C01A8 800E4DA8 01801025 */   or        $v0, $t4, $zero
.L800E4DAC:
/* C01AC 800E4DAC 97AD0260 */  lhu        $t5, 0x260($sp)
/* C01B0 800E4DB0 11A0007D */  beqz       $t5, .L800E4FA8
/* C01B4 800E4DB4 00000000 */   nop
/* C01B8 800E4DB8 8FAE025C */  lw         $t6, 0x25c($sp)
/* C01BC 800E4DBC 11C0007A */  beqz       $t6, .L800E4FA8
/* C01C0 800E4DC0 00000000 */   nop
/* C01C4 800E4DC4 97AF0262 */  lhu        $t7, 0x262($sp)
/* C01C8 800E4DC8 8FA80488 */  lw         $t0, 0x488($sp)
/* C01CC 800E4DCC 241800FF */  addiu      $t8, $zero, 0xff
/* C01D0 800E4DD0 A7AF047C */  sh         $t7, 0x47c($sp)
/* C01D4 800E4DD4 AFA0002C */  sw         $zero, 0x2c($sp)
/* C01D8 800E4DD8 AFA00028 */  sw         $zero, 0x28($sp)
/* C01DC 800E4DDC A3B80033 */  sb         $t8, 0x33($sp)
/* C01E0 800E4DE0 97B9047C */  lhu        $t9, 0x47c($sp)
/* C01E4 800E4DE4 8D090060 */  lw         $t1, 0x60($t0)
/* C01E8 800E4DE8 0329082A */  slt        $at, $t9, $t1
/* C01EC 800E4DEC 14200042 */  bnez       $at, .L800E4EF8
/* C01F0 800E4DF0 00000000 */   nop
/* C01F4 800E4DF4 93AA047C */  lbu        $t2, 0x47c($sp)
/* C01F8 800E4DF8 910B0064 */  lbu        $t3, 0x64($t0)
/* C01FC 800E4DFC 014B082A */  slt        $at, $t2, $t3
/* C0200 800E4E00 1020003D */  beqz       $at, .L800E4EF8
/* C0204 800E4E04 00000000 */   nop
/* C0208 800E4E08 93AC047D */  lbu        $t4, 0x47d($sp)
/* C020C 800E4E0C 1980003A */  blez       $t4, .L800E4EF8
/* C0210 800E4E10 29810080 */   slti      $at, $t4, 0x80
/* C0214 800E4E14 10200038 */  beqz       $at, .L800E4EF8
/* C0218 800E4E18 00000000 */   nop
.L800E4E1C:
/* C021C 800E4E1C 93AD0033 */  lbu        $t5, 0x33($sp)
/* C0220 800E4E20 93AE047C */  lbu        $t6, 0x47c($sp)
/* C0224 800E4E24 11AE000F */  beq        $t5, $t6, .L800E4E64
/* C0228 800E4E28 00000000 */   nop
/* C022C 800E4E2C A3AE0033 */  sb         $t6, 0x33($sp)
/* C0230 800E4E30 8FA40488 */  lw         $a0, 0x488($sp)
/* C0234 800E4E34 27A5027C */  addiu      $a1, $sp, 0x27c
/* C0238 800E4E38 00003025 */  or         $a2, $zero, $zero
/* C023C 800E4E3C 0C039257 */  jal        func_800E495C
/* C0240 800E4E40 01C03825 */   or        $a3, $t6, $zero
/* C0244 800E4E44 AFA20480 */  sw         $v0, 0x480($sp)
/* C0248 800E4E48 8FAF0480 */  lw         $t7, 0x480($sp)
/* C024C 800E4E4C 11E00005 */  beqz       $t7, .L800E4E64
/* C0250 800E4E50 24010003 */   addiu     $at, $zero, 3
/* C0254 800E4E54 11E10003 */  beq        $t7, $at, .L800E4E64
/* C0258 800E4E58 00000000 */   nop
/* C025C 800E4E5C 10000151 */  b          .L800E53A4
/* C0260 800E4E60 01E01025 */   or        $v0, $t7, $zero
.L800E4E64:
/* C0264 800E4E64 97B8047C */  lhu        $t8, 0x47c($sp)
/* C0268 800E4E68 8FA40488 */  lw         $a0, 0x488($sp)
/* C026C 800E4E6C 27A60038 */  addiu      $a2, $sp, 0x38
/* C0270 800E4E70 A7B80004 */  sh         $t8, 4($sp)
/* C0274 800E4E74 0C03955A */  jal        func_800E5568
/* C0278 800E4E78 8FA50004 */   lw        $a1, 4($sp)
/* C027C 800E4E7C 8FB90028 */  lw         $t9, 0x28($sp)
/* C0280 800E4E80 00594823 */  subu       $t1, $v0, $t9
/* C0284 800E4E84 AFA9002C */  sw         $t1, 0x2c($sp)
/* C0288 800E4E88 8FA8002C */  lw         $t0, 0x2c($sp)
/* C028C 800E4E8C 1500001A */  bnez       $t0, .L800E4EF8
/* C0290 800E4E90 00000000 */   nop
/* C0294 800E4E94 93AC047D */  lbu        $t4, 0x47d($sp)
/* C0298 800E4E98 240A0001 */  addiu      $t2, $zero, 1
/* C029C 800E4E9C 27AE027C */  addiu      $t6, $sp, 0x27c
/* C02A0 800E4EA0 000C6840 */  sll        $t5, $t4, 1
/* C02A4 800E4EA4 AFAA0028 */  sw         $t2, 0x28($sp)
/* C02A8 800E4EA8 01AE7821 */  addu       $t7, $t5, $t6
/* C02AC 800E4EAC 95E10000 */  lhu        $at, ($t7)
/* C02B0 800E4EB0 27AB047C */  addiu      $t3, $sp, 0x47c
/* C02B4 800E4EB4 A5610000 */  sh         $at, ($t3)
/* C02B8 800E4EB8 8FAA0488 */  lw         $t2, 0x488($sp)
/* C02BC 800E4EBC 97A8047C */  lhu        $t0, 0x47c($sp)
/* C02C0 800E4EC0 8D4C0060 */  lw         $t4, 0x60($t2)
/* C02C4 800E4EC4 010C082A */  slt        $at, $t0, $t4
/* C02C8 800E4EC8 1420000B */  bnez       $at, .L800E4EF8
/* C02CC 800E4ECC 00000000 */   nop
/* C02D0 800E4ED0 93AD047C */  lbu        $t5, 0x47c($sp)
/* C02D4 800E4ED4 914E0064 */  lbu        $t6, 0x64($t2)
/* C02D8 800E4ED8 01AE082A */  slt        $at, $t5, $t6
/* C02DC 800E4EDC 10200006 */  beqz       $at, .L800E4EF8
/* C02E0 800E4EE0 00000000 */   nop
/* C02E4 800E4EE4 93B9047D */  lbu        $t9, 0x47d($sp)
/* C02E8 800E4EE8 1B200003 */  blez       $t9, .L800E4EF8
/* C02EC 800E4EEC 2B210080 */   slti      $at, $t9, 0x80
/* C02F0 800E4EF0 1420FFCA */  bnez       $at, .L800E4E1C
/* C02F4 800E4EF4 00000000 */   nop
.L800E4EF8:
/* C02F8 800E4EF8 8FB8002C */  lw         $t8, 0x2c($sp)
/* C02FC 800E4EFC 17000005 */  bnez       $t8, .L800E4F14
/* C0300 800E4F00 00000000 */   nop
/* C0304 800E4F04 97AB047C */  lhu        $t3, 0x47c($sp)
/* C0308 800E4F08 24010001 */  addiu      $at, $zero, 1
/* C030C 800E4F0C 11610050 */  beq        $t3, $at, .L800E5050
/* C0310 800E4F10 00000000 */   nop
.L800E4F14:
/* C0314 800E4F14 8FAF0488 */  lw         $t7, 0x488($sp)
/* C0318 800E4F18 A7A00260 */  sh         $zero, 0x260($sp)
/* C031C 800E4F1C AFA0025C */  sw         $zero, 0x25c($sp)
/* C0320 800E4F20 A7A00262 */  sh         $zero, 0x262($sp)
/* C0324 800E4F24 A3A00264 */  sb         $zero, 0x264($sp)
/* C0328 800E4F28 A7A00266 */  sh         $zero, 0x266($sp)
/* C032C 800E4F2C 91E90065 */  lbu        $t1, 0x65($t7)
/* C0330 800E4F30 1120000A */  beqz       $t1, .L800E4F5C
/* C0334 800E4F34 00000000 */   nop
/* C0338 800E4F38 A1E00065 */  sb         $zero, 0x65($t7)
/* C033C 800E4F3C 0C03931F */  jal        func_800E4C7C
/* C0340 800E4F40 8FA40488 */   lw        $a0, 0x488($sp)
/* C0344 800E4F44 AFA20480 */  sw         $v0, 0x480($sp)
/* C0348 800E4F48 8FA80480 */  lw         $t0, 0x480($sp)
/* C034C 800E4F4C 11000003 */  beqz       $t0, .L800E4F5C
/* C0350 800E4F50 00000000 */   nop
/* C0354 800E4F54 10000113 */  b          .L800E53A4
/* C0358 800E4F58 01001025 */   or        $v0, $t0, $zero
.L800E4F5C:
/* C035C 800E4F5C 8FAC0488 */  lw         $t4, 0x488($sp)
/* C0360 800E4F60 8FAD0484 */  lw         $t5, 0x484($sp)
/* C0364 800E4F64 27A7025C */  addiu      $a3, $sp, 0x25c
/* C0368 800E4F68 8D8A005C */  lw         $t2, 0x5c($t4)
/* C036C 800E4F6C 8D840004 */  lw         $a0, 4($t4)
/* C0370 800E4F70 8D850008 */  lw         $a1, 8($t4)
/* C0374 800E4F74 AFA00010 */  sw         $zero, 0x10($sp)
/* C0378 800E4F78 0C038440 */  jal        func_800E1100
/* C037C 800E4F7C 014D3021 */   addu      $a2, $t2, $t5
/* C0380 800E4F80 AFA20480 */  sw         $v0, 0x480($sp)
/* C0384 800E4F84 8FAE0480 */  lw         $t6, 0x480($sp)
/* C0388 800E4F88 11C00003 */  beqz       $t6, .L800E4F98
/* C038C 800E4F8C 00000000 */   nop
/* C0390 800E4F90 10000104 */  b          .L800E53A4
/* C0394 800E4F94 01C01025 */   or        $v0, $t6, $zero
.L800E4F98:
/* C0398 800E4F98 8FB90034 */  lw         $t9, 0x34($sp)
/* C039C 800E4F9C 27380001 */  addiu      $t8, $t9, 1
/* C03A0 800E4FA0 1000002B */  b          .L800E5050
/* C03A4 800E4FA4 AFB80034 */   sw        $t8, 0x34($sp)
.L800E4FA8:
/* C03A8 800E4FA8 97AB0260 */  lhu        $t3, 0x260($sp)
/* C03AC 800E4FAC 15600004 */  bnez       $t3, .L800E4FC0
/* C03B0 800E4FB0 00000000 */   nop
/* C03B4 800E4FB4 8FA9025C */  lw         $t1, 0x25c($sp)
/* C03B8 800E4FB8 11200025 */  beqz       $t1, .L800E5050
/* C03BC 800E4FBC 00000000 */   nop
.L800E4FC0:
/* C03C0 800E4FC0 8FAF0488 */  lw         $t7, 0x488($sp)
/* C03C4 800E4FC4 A7A00260 */  sh         $zero, 0x260($sp)
/* C03C8 800E4FC8 AFA0025C */  sw         $zero, 0x25c($sp)
/* C03CC 800E4FCC A7A00262 */  sh         $zero, 0x262($sp)
/* C03D0 800E4FD0 A3A00264 */  sb         $zero, 0x264($sp)
/* C03D4 800E4FD4 A7A00266 */  sh         $zero, 0x266($sp)
/* C03D8 800E4FD8 91E80065 */  lbu        $t0, 0x65($t7)
/* C03DC 800E4FDC 1100000A */  beqz       $t0, .L800E5008
/* C03E0 800E4FE0 00000000 */   nop
/* C03E4 800E4FE4 A1E00065 */  sb         $zero, 0x65($t7)
/* C03E8 800E4FE8 0C03931F */  jal        func_800E4C7C
/* C03EC 800E4FEC 8FA40488 */   lw        $a0, 0x488($sp)
/* C03F0 800E4FF0 AFA20480 */  sw         $v0, 0x480($sp)
/* C03F4 800E4FF4 8FAC0480 */  lw         $t4, 0x480($sp)
/* C03F8 800E4FF8 11800003 */  beqz       $t4, .L800E5008
/* C03FC 800E4FFC 00000000 */   nop
/* C0400 800E5000 100000E8 */  b          .L800E53A4
/* C0404 800E5004 01801025 */   or        $v0, $t4, $zero
.L800E5008:
/* C0408 800E5008 8FAA0488 */  lw         $t2, 0x488($sp)
/* C040C 800E500C 8FAE0484 */  lw         $t6, 0x484($sp)
/* C0410 800E5010 27A7025C */  addiu      $a3, $sp, 0x25c
/* C0414 800E5014 8D4D005C */  lw         $t5, 0x5c($t2)
/* C0418 800E5018 8D440004 */  lw         $a0, 4($t2)
/* C041C 800E501C 8D450008 */  lw         $a1, 8($t2)
/* C0420 800E5020 AFA00010 */  sw         $zero, 0x10($sp)
/* C0424 800E5024 0C038440 */  jal        func_800E1100
/* C0428 800E5028 01AE3021 */   addu      $a2, $t5, $t6
/* C042C 800E502C AFA20480 */  sw         $v0, 0x480($sp)
/* C0430 800E5030 8FB90480 */  lw         $t9, 0x480($sp)
/* C0434 800E5034 13200003 */  beqz       $t9, .L800E5044
/* C0438 800E5038 00000000 */   nop
/* C043C 800E503C 100000D9 */  b          .L800E53A4
/* C0440 800E5040 03201025 */   or        $v0, $t9, $zero
.L800E5044:
/* C0444 800E5044 8FB80034 */  lw         $t8, 0x34($sp)
/* C0448 800E5048 270B0001 */  addiu      $t3, $t8, 1
/* C044C 800E504C AFAB0034 */  sw         $t3, 0x34($sp)
.L800E5050:
/* C0450 800E5050 8FA90484 */  lw         $t1, 0x484($sp)
/* C0454 800E5054 8FAF0488 */  lw         $t7, 0x488($sp)
/* C0458 800E5058 25280001 */  addiu      $t0, $t1, 1
/* C045C 800E505C AFA80484 */  sw         $t0, 0x484($sp)
/* C0460 800E5060 8DEC0050 */  lw         $t4, 0x50($t7)
/* C0464 800E5064 010C082A */  slt        $at, $t0, $t4
/* C0468 800E5068 1420FF42 */  bnez       $at, .L800E4D74
/* C046C 800E506C 00000000 */   nop
.L800E5070:
/* C0470 800E5070 8FAA0488 */  lw         $t2, 0x488($sp)
/* C0474 800E5074 AFA00484 */  sw         $zero, 0x484($sp)
/* C0478 800E5078 8D4D0050 */  lw         $t5, 0x50($t2)
/* C047C 800E507C 19A0002C */  blez       $t5, .L800E5130
/* C0480 800E5080 00000000 */   nop
.L800E5084:
/* C0484 800E5084 8FAE0488 */  lw         $t6, 0x488($sp)
/* C0488 800E5088 8FB80484 */  lw         $t8, 0x484($sp)
/* C048C 800E508C 27A7025C */  addiu      $a3, $sp, 0x25c
/* C0490 800E5090 8DD9005C */  lw         $t9, 0x5c($t6)
/* C0494 800E5094 8DC40004 */  lw         $a0, 4($t6)
/* C0498 800E5098 8DC50008 */  lw         $a1, 8($t6)
/* C049C 800E509C 0C03852C */  jal        func_800E14B0
/* C04A0 800E50A0 03383021 */   addu      $a2, $t9, $t8
/* C04A4 800E50A4 AFA20480 */  sw         $v0, 0x480($sp)
/* C04A8 800E50A8 8FAB0480 */  lw         $t3, 0x480($sp)
/* C04AC 800E50AC 11600003 */  beqz       $t3, .L800E50BC
/* C04B0 800E50B0 00000000 */   nop
/* C04B4 800E50B4 100000BB */  b          .L800E53A4
/* C04B8 800E50B8 01601025 */   or        $v0, $t3, $zero
.L800E50BC:
/* C04BC 800E50BC 97A90260 */  lhu        $t1, 0x260($sp)
/* C04C0 800E50C0 1120000F */  beqz       $t1, .L800E5100
/* C04C4 800E50C4 00000000 */   nop
/* C04C8 800E50C8 8FAF025C */  lw         $t7, 0x25c($sp)
/* C04CC 800E50CC 11E0000C */  beqz       $t7, .L800E5100
/* C04D0 800E50D0 00000000 */   nop
/* C04D4 800E50D4 8FAC0488 */  lw         $t4, 0x488($sp)
/* C04D8 800E50D8 97A80262 */  lhu        $t0, 0x262($sp)
/* C04DC 800E50DC 958A0062 */  lhu        $t2, 0x62($t4)
/* C04E0 800E50E0 010A082A */  slt        $at, $t0, $t2
/* C04E4 800E50E4 14200006 */  bnez       $at, .L800E5100
/* C04E8 800E50E8 00000000 */   nop
/* C04EC 800E50EC 8FAD0484 */  lw         $t5, 0x484($sp)
/* C04F0 800E50F0 000D7040 */  sll        $t6, $t5, 1
/* C04F4 800E50F4 03AEC821 */  addu       $t9, $sp, $t6
/* C04F8 800E50F8 10000005 */  b          .L800E5110
/* C04FC 800E50FC A728023C */   sh        $t0, 0x23c($t9)
.L800E5100:
/* C0500 800E5100 8FB80484 */  lw         $t8, 0x484($sp)
/* C0504 800E5104 00185840 */  sll        $t3, $t8, 1
/* C0508 800E5108 03AB4821 */  addu       $t1, $sp, $t3
/* C050C 800E510C A520023C */  sh         $zero, 0x23c($t1)
.L800E5110:
/* C0510 800E5110 8FAF0484 */  lw         $t7, 0x484($sp)
/* C0514 800E5114 8FAA0488 */  lw         $t2, 0x488($sp)
/* C0518 800E5118 25EC0001 */  addiu      $t4, $t7, 1
/* C051C 800E511C AFAC0484 */  sw         $t4, 0x484($sp)
/* C0520 800E5120 8D4D0050 */  lw         $t5, 0x50($t2)
/* C0524 800E5124 018D082A */  slt        $at, $t4, $t5
/* C0528 800E5128 1420FFD6 */  bnez       $at, .L800E5084
/* C052C 800E512C 00000000 */   nop
.L800E5130:
/* C0530 800E5130 8FA80488 */  lw         $t0, 0x488($sp)
/* C0534 800E5134 A3A00033 */  sb         $zero, 0x33($sp)
/* C0538 800E5138 910E0064 */  lbu        $t6, 0x64($t0)
/* C053C 800E513C 19C0008B */  blez       $t6, .L800E536C
/* C0540 800E5140 00000000 */   nop
.L800E5144:
/* C0544 800E5144 8FA40488 */  lw         $a0, 0x488($sp)
/* C0548 800E5148 27A5027C */  addiu      $a1, $sp, 0x27c
/* C054C 800E514C 00003025 */  or         $a2, $zero, $zero
/* C0550 800E5150 0C039257 */  jal        func_800E495C
/* C0554 800E5154 93A70033 */   lbu       $a3, 0x33($sp)
/* C0558 800E5158 AFA20480 */  sw         $v0, 0x480($sp)
/* C055C 800E515C 8FB90480 */  lw         $t9, 0x480($sp)
/* C0560 800E5160 13200005 */  beqz       $t9, .L800E5178
/* C0564 800E5164 24010003 */   addiu     $at, $zero, 3
/* C0568 800E5168 13210003 */  beq        $t9, $at, .L800E5178
/* C056C 800E516C 00000000 */   nop
/* C0570 800E5170 1000008C */  b          .L800E53A4
/* C0574 800E5174 03201025 */   or        $v0, $t9, $zero
.L800E5178:
/* C0578 800E5178 93B80033 */  lbu        $t8, 0x33($sp)
/* C057C 800E517C 1B000004 */  blez       $t8, .L800E5190
/* C0580 800E5180 00000000 */   nop
/* C0584 800E5184 240B0001 */  addiu      $t3, $zero, 1
/* C0588 800E5188 10000004 */  b          .L800E519C
/* C058C 800E518C AFAB0024 */   sw        $t3, 0x24($sp)
.L800E5190:
/* C0590 800E5190 8FA90488 */  lw         $t1, 0x488($sp)
/* C0594 800E5194 8D2F0060 */  lw         $t7, 0x60($t1)
/* C0598 800E5198 AFAF0024 */  sw         $t7, 0x24($sp)
.L800E519C:
/* C059C 800E519C 8FAA0024 */  lw         $t2, 0x24($sp)
/* C05A0 800E51A0 AFA00484 */  sw         $zero, 0x484($sp)
/* C05A4 800E51A4 1940000D */  blez       $t2, .L800E51DC
/* C05A8 800E51A8 00000000 */   nop
.L800E51AC:
/* C05AC 800E51AC 8FAC0484 */  lw         $t4, 0x484($sp)
/* C05B0 800E51B0 000C6840 */  sll        $t5, $t4, 1
/* C05B4 800E51B4 03AD4021 */  addu       $t0, $sp, $t5
/* C05B8 800E51B8 9508027C */  lhu        $t0, 0x27c($t0)
/* C05BC 800E51BC 03AD7021 */  addu       $t6, $sp, $t5
/* C05C0 800E51C0 A5C8037C */  sh         $t0, 0x37c($t6)
/* C05C4 800E51C4 8FB90484 */  lw         $t9, 0x484($sp)
/* C05C8 800E51C8 8FAB0024 */  lw         $t3, 0x24($sp)
/* C05CC 800E51CC 27380001 */  addiu      $t8, $t9, 1
/* C05D0 800E51D0 030B082A */  slt        $at, $t8, $t3
/* C05D4 800E51D4 1420FFF5 */  bnez       $at, .L800E51AC
/* C05D8 800E51D8 AFB80484 */   sw        $t8, 0x484($sp)
.L800E51DC:
/* C05DC 800E51DC 8FA90484 */  lw         $t1, 0x484($sp)
/* C05E0 800E51E0 29210080 */  slti       $at, $t1, 0x80
/* C05E4 800E51E4 1020000B */  beqz       $at, .L800E5214
/* C05E8 800E51E8 00000000 */   nop
.L800E51EC:
/* C05EC 800E51EC 8FAA0484 */  lw         $t2, 0x484($sp)
/* C05F0 800E51F0 240F0003 */  addiu      $t7, $zero, 3
/* C05F4 800E51F4 000A6040 */  sll        $t4, $t2, 1
/* C05F8 800E51F8 03AC4021 */  addu       $t0, $sp, $t4
/* C05FC 800E51FC A50F037C */  sh         $t7, 0x37c($t0)
/* C0600 800E5200 8FAD0484 */  lw         $t5, 0x484($sp)
/* C0604 800E5204 25AE0001 */  addiu      $t6, $t5, 1
/* C0608 800E5208 29C10080 */  slti       $at, $t6, 0x80
/* C060C 800E520C 1420FFF7 */  bnez       $at, .L800E51EC
/* C0610 800E5210 AFAE0484 */   sw        $t6, 0x484($sp)
.L800E5214:
/* C0614 800E5214 8FB90488 */  lw         $t9, 0x488($sp)
/* C0618 800E5218 AFA00484 */  sw         $zero, 0x484($sp)
/* C061C 800E521C 8F380050 */  lw         $t8, 0x50($t9)
/* C0620 800E5220 1B00003E */  blez       $t8, .L800E531C
/* C0624 800E5224 00000000 */   nop
.L800E5228:
/* C0628 800E5228 8FAB0484 */  lw         $t3, 0x484($sp)
/* C062C 800E522C 27AA023C */  addiu      $t2, $sp, 0x23c
/* C0630 800E5230 93A80033 */  lbu        $t0, 0x33($sp)
/* C0634 800E5234 000B4840 */  sll        $t1, $t3, 1
/* C0638 800E5238 012A7821 */  addu       $t7, $t1, $t2
/* C063C 800E523C 91EC0000 */  lbu        $t4, ($t7)
/* C0640 800E5240 1588002E */  bne        $t4, $t0, .L800E52FC
/* C0644 800E5244 00000000 */   nop
/* C0648 800E5248 8FAE0488 */  lw         $t6, 0x488($sp)
/* C064C 800E524C 95ED0000 */  lhu        $t5, ($t7)
/* C0650 800E5250 95D90062 */  lhu        $t9, 0x62($t6)
/* C0654 800E5254 01B9082A */  slt        $at, $t5, $t9
/* C0658 800E5258 14200028 */  bnez       $at, .L800E52FC
/* C065C 800E525C 00000000 */   nop
.L800E5260:
/* C0660 800E5260 8FB80484 */  lw         $t8, 0x484($sp)
/* C0664 800E5264 27A8027C */  addiu      $t0, $sp, 0x27c
/* C0668 800E5268 27AA0020 */  addiu      $t2, $sp, 0x20
/* C066C 800E526C 00185840 */  sll        $t3, $t8, 1
/* C0670 800E5270 03AB4821 */  addu       $t1, $sp, $t3
/* C0674 800E5274 9129023D */  lbu        $t1, 0x23d($t1)
/* C0678 800E5278 00096040 */  sll        $t4, $t1, 1
/* C067C 800E527C 01887821 */  addu       $t7, $t4, $t0
/* C0680 800E5280 A3A90023 */  sb         $t1, 0x23($sp)
/* C0684 800E5284 95E10000 */  lhu        $at, ($t7)
/* C0688 800E5288 27A80020 */  addiu      $t0, $sp, 0x20
/* C068C 800E528C 27A9037C */  addiu      $t1, $sp, 0x37c
/* C0690 800E5290 A5410000 */  sh         $at, ($t2)
/* C0694 800E5294 93B80023 */  lbu        $t8, 0x23($sp)
/* C0698 800E5298 95010000 */  lhu        $at, ($t0)
/* C069C 800E529C 00185840 */  sll        $t3, $t8, 1
/* C06A0 800E52A0 01696021 */  addu       $t4, $t3, $t1
/* C06A4 800E52A4 A5810000 */  sh         $at, ($t4)
/* C06A8 800E52A8 8FAF0484 */  lw         $t7, 0x484($sp)
/* C06AC 800E52AC 27A90020 */  addiu      $t1, $sp, 0x20
/* C06B0 800E52B0 95210000 */  lhu        $at, ($t1)
/* C06B4 800E52B4 27B8023C */  addiu      $t8, $sp, 0x23c
/* C06B8 800E52B8 000FC840 */  sll        $t9, $t7, 1
/* C06BC 800E52BC 03385821 */  addu       $t3, $t9, $t8
/* C06C0 800E52C0 A5610000 */  sh         $at, ($t3)
/* C06C4 800E52C4 8FA80484 */  lw         $t0, 0x484($sp)
/* C06C8 800E52C8 27AF023C */  addiu      $t7, $sp, 0x23c
/* C06CC 800E52CC 93AD0033 */  lbu        $t5, 0x33($sp)
/* C06D0 800E52D0 00085040 */  sll        $t2, $t0, 1
/* C06D4 800E52D4 014FC821 */  addu       $t9, $t2, $t7
/* C06D8 800E52D8 93380000 */  lbu        $t8, ($t9)
/* C06DC 800E52DC 170D0007 */  bne        $t8, $t5, .L800E52FC
/* C06E0 800E52E0 00000000 */   nop
/* C06E4 800E52E4 8FAB0488 */  lw         $t3, 0x488($sp)
/* C06E8 800E52E8 972E0000 */  lhu        $t6, ($t9)
/* C06EC 800E52EC 95690062 */  lhu        $t1, 0x62($t3)
/* C06F0 800E52F0 01C9082A */  slt        $at, $t6, $t1
/* C06F4 800E52F4 1020FFDA */  beqz       $at, .L800E5260
/* C06F8 800E52F8 00000000 */   nop
.L800E52FC:
/* C06FC 800E52FC 8FAC0484 */  lw         $t4, 0x484($sp)
/* C0700 800E5300 8FAA0488 */  lw         $t2, 0x488($sp)
/* C0704 800E5304 25880001 */  addiu      $t0, $t4, 1
/* C0708 800E5308 AFA80484 */  sw         $t0, 0x484($sp)
/* C070C 800E530C 8D4F0050 */  lw         $t7, 0x50($t2)
/* C0710 800E5310 010F082A */  slt        $at, $t0, $t7
/* C0714 800E5314 1420FFC4 */  bnez       $at, .L800E5228
/* C0718 800E5318 00000000 */   nop
.L800E531C:
/* C071C 800E531C 8FA40488 */  lw         $a0, 0x488($sp)
/* C0720 800E5320 27A5037C */  addiu      $a1, $sp, 0x37c
/* C0724 800E5324 24060001 */  addiu      $a2, $zero, 1
/* C0728 800E5328 0C039257 */  jal        func_800E495C
/* C072C 800E532C 93A70033 */   lbu       $a3, 0x33($sp)
/* C0730 800E5330 AFA20480 */  sw         $v0, 0x480($sp)
/* C0734 800E5334 8FB80480 */  lw         $t8, 0x480($sp)
/* C0738 800E5338 13000003 */  beqz       $t8, .L800E5348
/* C073C 800E533C 00000000 */   nop
/* C0740 800E5340 10000018 */  b          .L800E53A4
/* C0744 800E5344 03001025 */   or        $v0, $t8, $zero
.L800E5348:
/* C0748 800E5348 93AD0033 */  lbu        $t5, 0x33($sp)
/* C074C 800E534C 8FAE0488 */  lw         $t6, 0x488($sp)
/* C0750 800E5350 25B90001 */  addiu      $t9, $t5, 1
/* C0754 800E5354 A3B90033 */  sb         $t9, 0x33($sp)
/* C0758 800E5358 91C90064 */  lbu        $t1, 0x64($t6)
/* C075C 800E535C 332B00FF */  andi       $t3, $t9, 0xff
/* C0760 800E5360 0169082A */  slt        $at, $t3, $t1
/* C0764 800E5364 1420FF77 */  bnez       $at, .L800E5144
/* C0768 800E5368 00000000 */   nop
.L800E536C:
/* C076C 800E536C 8FAC0034 */  lw         $t4, 0x34($sp)
/* C0770 800E5370 11800006 */  beqz       $t4, .L800E538C
/* C0774 800E5374 00000000 */   nop
/* C0778 800E5378 8FAA0488 */  lw         $t2, 0x488($sp)
/* C077C 800E537C 8D480000 */  lw         $t0, ($t2)
/* C0780 800E5380 350F0002 */  ori        $t7, $t0, 2
/* C0784 800E5384 10000006 */  b          .L800E53A0
/* C0788 800E5388 AD4F0000 */   sw        $t7, ($t2)
.L800E538C:
/* C078C 800E538C 8FB80488 */  lw         $t8, 0x488($sp)
/* C0790 800E5390 2401FFFD */  addiu      $at, $zero, -3
/* C0794 800E5394 8F0D0000 */  lw         $t5, ($t8)
/* C0798 800E5398 01A1C824 */  and        $t9, $t5, $at
/* C079C 800E539C AF190000 */  sw         $t9, ($t8)
.L800E53A0:
/* C07A0 800E53A0 00001025 */  or         $v0, $zero, $zero
.L800E53A4:
/* C07A4 800E53A4 8FBF001C */  lw         $ra, 0x1c($sp)
/* C07A8 800E53A8 27BD0488 */  addiu      $sp, $sp, 0x488
/* C07AC 800E53AC 03E00008 */  jr         $ra
/* C07B0 800E53B0 00000000 */   nop

glabel func_800E53B4
/* C07B4 800E53B4 27BDFED0 */  addiu      $sp, $sp, -0x130
/* C07B8 800E53B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C07BC 800E53BC AFA40130 */  sw         $a0, 0x130($sp)
/* C07C0 800E53C0 AFA50134 */  sw         $a1, 0x134($sp)
/* C07C4 800E53C4 AFA0012C */  sw         $zero, 0x12c($sp)
.L800E53C8:
/* C07C8 800E53C8 8FAE0134 */  lw         $t6, 0x134($sp)
/* C07CC 800E53CC 8FAF012C */  lw         $t7, 0x12c($sp)
/* C07D0 800E53D0 01CFC021 */  addu       $t8, $t6, $t7
/* C07D4 800E53D4 A3000101 */  sb         $zero, 0x101($t8)
/* C07D8 800E53D8 8FB9012C */  lw         $t9, 0x12c($sp)
/* C07DC 800E53DC 27280001 */  addiu      $t0, $t9, 1
/* C07E0 800E53E0 29010100 */  slti       $at, $t0, 0x100
/* C07E4 800E53E4 1420FFF8 */  bnez       $at, .L800E53C8
/* C07E8 800E53E8 AFA8012C */   sw        $t0, 0x12c($sp)
/* C07EC 800E53EC 8FAA0134 */  lw         $t2, 0x134($sp)
/* C07F0 800E53F0 240900FF */  addiu      $t1, $zero, 0xff
/* C07F4 800E53F4 A1490100 */  sb         $t1, 0x100($t2)
/* C07F8 800E53F8 8FAB0130 */  lw         $t3, 0x130($sp)
/* C07FC 800E53FC A3A00123 */  sb         $zero, 0x123($sp)
/* C0800 800E5400 916C0064 */  lbu        $t4, 0x64($t3)
/* C0804 800E5404 19800053 */  blez       $t4, .L800E5554
/* C0808 800E5408 00000000 */   nop
.L800E540C:
/* C080C 800E540C 93AD0123 */  lbu        $t5, 0x123($sp)
/* C0810 800E5410 19A00004 */  blez       $t5, .L800E5424
/* C0814 800E5414 00000000 */   nop
/* C0818 800E5418 240E0001 */  addiu      $t6, $zero, 1
/* C081C 800E541C 10000004 */  b          .L800E5430
/* C0820 800E5420 AFAE0124 */   sw        $t6, 0x124($sp)
.L800E5424:
/* C0824 800E5424 8FAF0130 */  lw         $t7, 0x130($sp)
/* C0828 800E5428 8DF80060 */  lw         $t8, 0x60($t7)
/* C082C 800E542C AFB80124 */  sw         $t8, 0x124($sp)
.L800E5430:
/* C0830 800E5430 8FA40130 */  lw         $a0, 0x130($sp)
/* C0834 800E5434 27A50020 */  addiu      $a1, $sp, 0x20
/* C0838 800E5438 00003025 */  or         $a2, $zero, $zero
/* C083C 800E543C 0C039257 */  jal        func_800E495C
/* C0840 800E5440 93A70123 */   lbu       $a3, 0x123($sp)
/* C0844 800E5444 AFA2001C */  sw         $v0, 0x1c($sp)
/* C0848 800E5448 8FB9001C */  lw         $t9, 0x1c($sp)
/* C084C 800E544C 13200005 */  beqz       $t9, .L800E5464
/* C0850 800E5450 24010003 */   addiu     $at, $zero, 3
/* C0854 800E5454 13210003 */  beq        $t9, $at, .L800E5464
/* C0858 800E5458 00000000 */   nop
/* C085C 800E545C 1000003E */  b          .L800E5558
/* C0860 800E5460 03201025 */   or        $v0, $t9, $zero
.L800E5464:
/* C0864 800E5464 8FA80124 */  lw         $t0, 0x124($sp)
/* C0868 800E5468 29010080 */  slti       $at, $t0, 0x80
/* C086C 800E546C 10200030 */  beqz       $at, .L800E5530
/* C0870 800E5470 AFA8012C */   sw        $t0, 0x12c($sp)
.L800E5474:
/* C0874 800E5474 8FAA012C */  lw         $t2, 0x12c($sp)
/* C0878 800E5478 27AC0020 */  addiu      $t4, $sp, 0x20
/* C087C 800E547C 27A90120 */  addiu      $t1, $sp, 0x120
/* C0880 800E5480 000A5840 */  sll        $t3, $t2, 1
/* C0884 800E5484 016C6821 */  addu       $t5, $t3, $t4
/* C0888 800E5488 95A10000 */  lhu        $at, ($t5)
/* C088C 800E548C A5210000 */  sh         $at, ($t1)
/* C0890 800E5490 8FB90130 */  lw         $t9, 0x130($sp)
/* C0894 800E5494 97B80120 */  lhu        $t8, 0x120($sp)
/* C0898 800E5498 8F280060 */  lw         $t0, 0x60($t9)
/* C089C 800E549C 0308082A */  slt        $at, $t8, $t0
/* C08A0 800E54A0 1420001E */  bnez       $at, .L800E551C
/* C08A4 800E54A4 00000000 */   nop
/* C08A8 800E54A8 93AA0120 */  lbu        $t2, 0x120($sp)
/* C08AC 800E54AC 93AB0123 */  lbu        $t3, 0x123($sp)
/* C08B0 800E54B0 114B001A */  beq        $t2, $t3, .L800E551C
/* C08B4 800E54B4 00000000 */   nop
/* C08B8 800E54B8 93AC0121 */  lbu        $t4, 0x121($sp)
/* C08BC 800E54BC 8FB90134 */  lw         $t9, 0x134($sp)
/* C08C0 800E54C0 05810003 */  bgez       $t4, .L800E54D0
/* C08C4 800E54C4 000C7083 */   sra       $t6, $t4, 2
/* C08C8 800E54C8 25810003 */  addiu      $at, $t4, 3
/* C08CC 800E54CC 00017083 */  sra        $t6, $at, 2
.L800E54D0:
/* C08D0 800E54D0 05410004 */  bgez       $t2, .L800E54E4
/* C08D4 800E54D4 31490007 */   andi      $t1, $t2, 7
/* C08D8 800E54D8 11200002 */  beqz       $t1, .L800E54E4
/* C08DC 800E54DC 00000000 */   nop
/* C08E0 800E54E0 2529FFF8 */  addiu      $t1, $t1, -8
.L800E54E4:
/* C08E4 800E54E4 00096940 */  sll        $t5, $t1, 5
/* C08E8 800E54E8 01CD7821 */  addu       $t7, $t6, $t5
/* C08EC 800E54EC AFAF0128 */  sw         $t7, 0x128($sp)
/* C08F0 800E54F0 032FC021 */  addu       $t8, $t9, $t7
/* C08F4 800E54F4 93080101 */  lbu        $t0, 0x101($t8)
/* C08F8 800E54F8 05610004 */  bgez       $t3, .L800E550C
/* C08FC 800E54FC 316C0007 */   andi      $t4, $t3, 7
/* C0900 800E5500 11800002 */  beqz       $t4, .L800E550C
/* C0904 800E5504 00000000 */   nop
/* C0908 800E5508 258CFFF8 */  addiu      $t4, $t4, -8
.L800E550C:
/* C090C 800E550C 240A0001 */  addiu      $t2, $zero, 1
/* C0910 800E5510 018A4804 */  sllv       $t1, $t2, $t4
/* C0914 800E5514 01097025 */  or         $t6, $t0, $t1
/* C0918 800E5518 A30E0101 */  sb         $t6, 0x101($t8)
.L800E551C:
/* C091C 800E551C 8FAD012C */  lw         $t5, 0x12c($sp)
/* C0920 800E5520 25B90001 */  addiu      $t9, $t5, 1
/* C0924 800E5524 2B210080 */  slti       $at, $t9, 0x80
/* C0928 800E5528 1420FFD2 */  bnez       $at, .L800E5474
/* C092C 800E552C AFB9012C */   sw        $t9, 0x12c($sp)
.L800E5530:
/* C0930 800E5530 93AF0123 */  lbu        $t7, 0x123($sp)
/* C0934 800E5534 8FAC0130 */  lw         $t4, 0x130($sp)
/* C0938 800E5538 25EB0001 */  addiu      $t3, $t7, 1
/* C093C 800E553C A3AB0123 */  sb         $t3, 0x123($sp)
/* C0940 800E5540 91880064 */  lbu        $t0, 0x64($t4)
/* C0944 800E5544 316A00FF */  andi       $t2, $t3, 0xff
/* C0948 800E5548 0148082A */  slt        $at, $t2, $t0
/* C094C 800E554C 1420FFAF */  bnez       $at, .L800E540C
/* C0950 800E5550 00000000 */   nop
.L800E5554:
/* C0954 800E5554 00001025 */  or         $v0, $zero, $zero
.L800E5558:
/* C0958 800E5558 8FBF0014 */  lw         $ra, 0x14($sp)
/* C095C 800E555C 27BD0130 */  addiu      $sp, $sp, 0x130
/* C0960 800E5560 03E00008 */  jr         $ra
/* C0964 800E5564 00000000 */   nop

glabel func_800E5568
/* C0968 800E5568 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C096C 800E556C AFA50034 */  sw         $a1, 0x34($sp)
/* C0970 800E5570 93B80034 */  lbu        $t8, 0x34($sp)
/* C0974 800E5574 93AE0035 */  lbu        $t6, 0x35($sp)
/* C0978 800E5578 AFA40030 */  sw         $a0, 0x30($sp)
/* C097C 800E557C 8FAA0030 */  lw         $t2, 0x30($sp)
/* C0980 800E5580 AFBF0014 */  sw         $ra, 0x14($sp)
/* C0984 800E5584 AFA60038 */  sw         $a2, 0x38($sp)
/* C0988 800E5588 AFA00024 */  sw         $zero, 0x24($sp)
/* C098C 800E558C AFA00018 */  sw         $zero, 0x18($sp)
/* C0990 800E5590 05C10003 */  bgez       $t6, .L800E55A0
/* C0994 800E5594 000E7883 */   sra       $t7, $t6, 2
/* C0998 800E5598 25C10003 */  addiu      $at, $t6, 3
/* C099C 800E559C 00017883 */  sra        $t7, $at, 2
.L800E55A0:
/* C09A0 800E55A0 07010004 */  bgez       $t8, .L800E55B4
/* C09A4 800E55A4 33190007 */   andi      $t9, $t8, 7
/* C09A8 800E55A8 13200002 */  beqz       $t9, .L800E55B4
/* C09AC 800E55AC 00000000 */   nop
/* C09B0 800E55B0 2739FFF8 */  addiu      $t9, $t9, -8
.L800E55B4:
/* C09B4 800E55B4 00194140 */  sll        $t0, $t9, 5
/* C09B8 800E55B8 01E84821 */  addu       $t1, $t7, $t0
/* C09BC 800E55BC AFA90028 */  sw         $t1, 0x28($sp)
/* C09C0 800E55C0 A3A00023 */  sb         $zero, 0x23($sp)
/* C09C4 800E55C4 914B0064 */  lbu        $t3, 0x64($t2)
/* C09C8 800E55C8 1960005C */  blez       $t3, .L800E573C
/* C09CC 800E55CC 00000000 */   nop
.L800E55D0:
/* C09D0 800E55D0 93AC0023 */  lbu        $t4, 0x23($sp)
/* C09D4 800E55D4 19800004 */  blez       $t4, .L800E55E8
/* C09D8 800E55D8 00000000 */   nop
/* C09DC 800E55DC 240D0001 */  addiu      $t5, $zero, 1
/* C09E0 800E55E0 10000004 */  b          .L800E55F4
/* C09E4 800E55E4 AFAD001C */   sw        $t5, 0x1c($sp)
.L800E55E8:
/* C09E8 800E55E8 8FAE0030 */  lw         $t6, 0x30($sp)
/* C09EC 800E55EC 8DD80060 */  lw         $t8, 0x60($t6)
/* C09F0 800E55F0 AFB8001C */  sw         $t8, 0x1c($sp)
.L800E55F4:
/* C09F4 800E55F4 93B90023 */  lbu        $t9, 0x23($sp)
/* C09F8 800E55F8 93AF0034 */  lbu        $t7, 0x34($sp)
/* C09FC 800E55FC 132F000F */  beq        $t9, $t7, .L800E563C
/* C0A00 800E5600 00000000 */   nop
/* C0A04 800E5604 8FA80038 */  lw         $t0, 0x38($sp)
/* C0A08 800E5608 8FA90028 */  lw         $t1, 0x28($sp)
/* C0A0C 800E560C 240D0001 */  addiu      $t5, $zero, 1
/* C0A10 800E5610 01095021 */  addu       $t2, $t0, $t1
/* C0A14 800E5614 914B0101 */  lbu        $t3, 0x101($t2)
/* C0A18 800E5618 07210004 */  bgez       $t9, .L800E562C
/* C0A1C 800E561C 332C0007 */   andi      $t4, $t9, 7
/* C0A20 800E5620 11800002 */  beqz       $t4, .L800E562C
/* C0A24 800E5624 00000000 */   nop
/* C0A28 800E5628 258CFFF8 */  addiu      $t4, $t4, -8
.L800E562C:
/* C0A2C 800E562C 018D7004 */  sllv       $t6, $t5, $t4
/* C0A30 800E5630 016EC024 */  and        $t8, $t3, $t6
/* C0A34 800E5634 13000038 */  beqz       $t8, .L800E5718
/* C0A38 800E5638 00000000 */   nop
.L800E563C:
/* C0A3C 800E563C 8FA80038 */  lw         $t0, 0x38($sp)
/* C0A40 800E5640 93AF0023 */  lbu        $t7, 0x23($sp)
/* C0A44 800E5644 91090100 */  lbu        $t1, 0x100($t0)
/* C0A48 800E5648 11E90011 */  beq        $t7, $t1, .L800E5690
/* C0A4C 800E564C 00000000 */   nop
/* C0A50 800E5650 8FA40030 */  lw         $a0, 0x30($sp)
/* C0A54 800E5654 01002825 */  or         $a1, $t0, $zero
/* C0A58 800E5658 00003025 */  or         $a2, $zero, $zero
/* C0A5C 800E565C 0C039257 */  jal        func_800E495C
/* C0A60 800E5660 01E03825 */   or        $a3, $t7, $zero
/* C0A64 800E5664 AFA20018 */  sw         $v0, 0x18($sp)
/* C0A68 800E5668 8FAA0018 */  lw         $t2, 0x18($sp)
/* C0A6C 800E566C 11400005 */  beqz       $t2, .L800E5684
/* C0A70 800E5670 24010003 */   addiu     $at, $zero, 3
/* C0A74 800E5674 11410003 */  beq        $t2, $at, .L800E5684
/* C0A78 800E5678 00000000 */   nop
/* C0A7C 800E567C 10000030 */  b          .L800E5740
/* C0A80 800E5680 01401025 */   or        $v0, $t2, $zero
.L800E5684:
/* C0A84 800E5684 93B90023 */  lbu        $t9, 0x23($sp)
/* C0A88 800E5688 8FAD0038 */  lw         $t5, 0x38($sp)
/* C0A8C 800E568C A1B90100 */  sb         $t9, 0x100($t5)
.L800E5690:
/* C0A90 800E5690 8FAB0024 */  lw         $t3, 0x24($sp)
/* C0A94 800E5694 8FAC001C */  lw         $t4, 0x1c($sp)
/* C0A98 800E5698 29610002 */  slti       $at, $t3, 2
/* C0A9C 800E569C 10200018 */  beqz       $at, .L800E5700
/* C0AA0 800E56A0 AFAC002C */   sw        $t4, 0x2c($sp)
/* C0AA4 800E56A4 29810080 */  slti       $at, $t4, 0x80
/* C0AA8 800E56A8 10200015 */  beqz       $at, .L800E5700
/* C0AAC 800E56AC 00000000 */   nop
.L800E56B0:
/* C0AB0 800E56B0 8FB8002C */  lw         $t8, 0x2c($sp)
/* C0AB4 800E56B4 8FAE0038 */  lw         $t6, 0x38($sp)
/* C0AB8 800E56B8 97AA0034 */  lhu        $t2, 0x34($sp)
/* C0ABC 800E56BC 00184840 */  sll        $t1, $t8, 1
/* C0AC0 800E56C0 01C94021 */  addu       $t0, $t6, $t1
/* C0AC4 800E56C4 950F0000 */  lhu        $t7, ($t0)
/* C0AC8 800E56C8 15EA0004 */  bne        $t7, $t2, .L800E56DC
/* C0ACC 800E56CC 00000000 */   nop
/* C0AD0 800E56D0 8FB90024 */  lw         $t9, 0x24($sp)
/* C0AD4 800E56D4 272D0001 */  addiu      $t5, $t9, 1
/* C0AD8 800E56D8 AFAD0024 */  sw         $t5, 0x24($sp)
.L800E56DC:
/* C0ADC 800E56DC 8FAB002C */  lw         $t3, 0x2c($sp)
/* C0AE0 800E56E0 8FB80024 */  lw         $t8, 0x24($sp)
/* C0AE4 800E56E4 256C0001 */  addiu      $t4, $t3, 1
/* C0AE8 800E56E8 2B010002 */  slti       $at, $t8, 2
/* C0AEC 800E56EC 10200004 */  beqz       $at, .L800E5700
/* C0AF0 800E56F0 AFAC002C */   sw        $t4, 0x2c($sp)
/* C0AF4 800E56F4 29810080 */  slti       $at, $t4, 0x80
/* C0AF8 800E56F8 1420FFED */  bnez       $at, .L800E56B0
/* C0AFC 800E56FC 00000000 */   nop
.L800E5700:
/* C0B00 800E5700 8FAE0024 */  lw         $t6, 0x24($sp)
/* C0B04 800E5704 29C10002 */  slti       $at, $t6, 2
/* C0B08 800E5708 14200003 */  bnez       $at, .L800E5718
/* C0B0C 800E570C 00000000 */   nop
/* C0B10 800E5710 1000000B */  b          .L800E5740
/* C0B14 800E5714 24020002 */   addiu     $v0, $zero, 2
.L800E5718:
/* C0B18 800E5718 93A90023 */  lbu        $t1, 0x23($sp)
/* C0B1C 800E571C 8FAA0030 */  lw         $t2, 0x30($sp)
/* C0B20 800E5720 25280001 */  addiu      $t0, $t1, 1
/* C0B24 800E5724 A3A80023 */  sb         $t0, 0x23($sp)
/* C0B28 800E5728 91590064 */  lbu        $t9, 0x64($t2)
/* C0B2C 800E572C 310F00FF */  andi       $t7, $t0, 0xff
/* C0B30 800E5730 01F9082A */  slt        $at, $t7, $t9
/* C0B34 800E5734 1420FFA6 */  bnez       $at, .L800E55D0
/* C0B38 800E5738 00000000 */   nop
.L800E573C:
/* C0B3C 800E573C 8FA20024 */  lw         $v0, 0x24($sp)
.L800E5740:
/* C0B40 800E5740 8FBF0014 */  lw         $ra, 0x14($sp)
/* C0B44 800E5744 27BD0030 */  addiu      $sp, $sp, 0x30
/* C0B48 800E5748 03E00008 */  jr         $ra
/* C0B4C 800E574C 00000000 */   nop

glabel func_800E5750
/* C0B50 800E5750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C0B54 800E5754 AFA50020 */  sw         $a1, 0x20($sp)
/* C0B58 800E5758 AFBF0014 */  sw         $ra, 0x14($sp)
/* C0B5C 800E575C 30AE00FF */  andi       $t6, $a1, 0xff
/* C0B60 800E5760 29C10026 */  slti       $at, $t6, 0x26
/* C0B64 800E5764 01C02825 */  or         $a1, $t6, $zero
/* C0B68 800E5768 AE00000C */  sw         $zero, 0xc($s0)
/* C0B6C 800E576C AE000010 */  sw         $zero, 0x10($s0)
/* C0B70 800E5770 AE000014 */  sw         $zero, 0x14($s0)
/* C0B74 800E5774 AE000018 */  sw         $zero, 0x18($s0)
/* C0B78 800E5778 AE00001C */  sw         $zero, 0x1c($s0)
/* C0B7C 800E577C AE000020 */  sw         $zero, 0x20($s0)
/* C0B80 800E5780 1420000A */  bnez       $at, .L800E57AC
/* C0B84 800E5784 01C01825 */   or        $v1, $t6, $zero
/* C0B88 800E5788 25CFFFBB */  addiu      $t7, $t6, -0x45
/* C0B8C 800E578C 2DE10034 */  sltiu      $at, $t7, 0x34
/* C0B90 800E5790 10200181 */  beqz       $at, .L800E5D98
/* C0B94 800E5794 000F7880 */   sll       $t7, $t7, 2
/* C0B98 800E5798 3C018011 */  lui        $at, %hi(D_80110CD4)
/* C0B9C 800E579C 002F0821 */  addu       $at, $at, $t7
/* C0BA0 800E57A0 8C2F0CD4 */  lw         $t7, %lo(D_80110CD4)($at)
/* C0BA4 800E57A4 01E00008 */  jr         $t7
/* C0BA8 800E57A8 00000000 */   nop
.L800E57AC:
/* C0BAC 800E57AC 24010025 */  addiu      $at, $zero, 0x25
/* C0BB0 800E57B0 50610172 */  beql       $v1, $at, .L800E5D7C
/* C0BB4 800E57B4 8E18000C */   lw        $t8, 0xc($s0)
/* C0BB8 800E57B8 10000178 */  b          .L800E5D9C
/* C0BBC 800E57BC 8E0E000C */   lw        $t6, 0xc($s0)
/* C0BC0 800E57C0 8CD80000 */  lw         $t8, ($a2)
/* C0BC4 800E57C4 2401FFFC */  addiu      $at, $zero, -4
/* C0BC8 800E57C8 27190003 */  addiu      $t9, $t8, 3
/* C0BCC 800E57CC 03217024 */  and        $t6, $t9, $at
/* C0BD0 800E57D0 25CF0004 */  addiu      $t7, $t6, 4
/* C0BD4 800E57D4 ACCF0000 */  sw         $t7, ($a2)
/* C0BD8 800E57D8 8E0E000C */  lw         $t6, 0xc($s0)
/* C0BDC 800E57DC 8DF9FFFC */  lw         $t9, -4($t7)
/* C0BE0 800E57E0 00EE7821 */  addu       $t7, $a3, $t6
/* C0BE4 800E57E4 A1F90000 */  sb         $t9, ($t7)
/* C0BE8 800E57E8 8E18000C */  lw         $t8, 0xc($s0)
/* C0BEC 800E57EC 270E0001 */  addiu      $t6, $t8, 1
/* C0BF0 800E57F0 1000016F */  b          .L800E5DB0
/* C0BF4 800E57F4 AE0E000C */   sw        $t6, 0xc($s0)
/* C0BF8 800E57F8 92020034 */  lbu        $v0, 0x34($s0)
/* C0BFC 800E57FC 2401006C */  addiu      $at, $zero, 0x6c
/* C0C00 800E5800 5441000D */  bnel       $v0, $at, .L800E5838
/* C0C04 800E5804 2401004C */   addiu     $at, $zero, 0x4c
/* C0C08 800E5808 8CD90000 */  lw         $t9, ($a2)
/* C0C0C 800E580C 2401FFFC */  addiu      $at, $zero, -4
/* C0C10 800E5810 272F0003 */  addiu      $t7, $t9, 3
/* C0C14 800E5814 01E1C024 */  and        $t8, $t7, $at
/* C0C18 800E5818 270E0004 */  addiu      $t6, $t8, 4
/* C0C1C 800E581C ACCE0000 */  sw         $t6, ($a2)
/* C0C20 800E5820 8DCFFFFC */  lw         $t7, -4($t6)
/* C0C24 800E5824 000FC7C3 */  sra        $t8, $t7, 0x1f
/* C0C28 800E5828 AE180000 */  sw         $t8, ($s0)
/* C0C2C 800E582C 10000019 */  b          .L800E5894
/* C0C30 800E5830 AE0F0004 */   sw        $t7, 4($s0)
/* C0C34 800E5834 2401004C */  addiu      $at, $zero, 0x4c
.L800E5838:
/* C0C38 800E5838 5441000D */  bnel       $v0, $at, .L800E5870
/* C0C3C 800E583C 8CCF0000 */   lw        $t7, ($a2)
/* C0C40 800E5840 8CCE0000 */  lw         $t6, ($a2)
/* C0C44 800E5844 2401FFF8 */  addiu      $at, $zero, -8
/* C0C48 800E5848 25CF0007 */  addiu      $t7, $t6, 7
/* C0C4C 800E584C 01E1C024 */  and        $t8, $t7, $at
/* C0C50 800E5850 27190008 */  addiu      $t9, $t8, 8
/* C0C54 800E5854 ACD90000 */  sw         $t9, ($a2)
/* C0C58 800E5858 8F38FFF8 */  lw         $t8, -8($t9)
/* C0C5C 800E585C 8F39FFFC */  lw         $t9, -4($t9)
/* C0C60 800E5860 AE180000 */  sw         $t8, ($s0)
/* C0C64 800E5864 1000000B */  b          .L800E5894
/* C0C68 800E5868 AE190004 */   sw        $t9, 4($s0)
/* C0C6C 800E586C 8CCF0000 */  lw         $t7, ($a2)
.L800E5870:
/* C0C70 800E5870 2401FFFC */  addiu      $at, $zero, -4
/* C0C74 800E5874 25EE0003 */  addiu      $t6, $t7, 3
/* C0C78 800E5878 01C1C024 */  and        $t8, $t6, $at
/* C0C7C 800E587C 27190004 */  addiu      $t9, $t8, 4
/* C0C80 800E5880 ACD90000 */  sw         $t9, ($a2)
/* C0C84 800E5884 8F2EFFFC */  lw         $t6, -4($t9)
/* C0C88 800E5888 000EC7C3 */  sra        $t8, $t6, 0x1f
/* C0C8C 800E588C AE180000 */  sw         $t8, ($s0)
/* C0C90 800E5890 AE0E0004 */  sw         $t6, 4($s0)
.L800E5894:
/* C0C94 800E5894 920F0034 */  lbu        $t7, 0x34($s0)
/* C0C98 800E5898 24010068 */  addiu      $at, $zero, 0x68
/* C0C9C 800E589C 55E10008 */  bnel       $t7, $at, .L800E58C0
/* C0CA0 800E58A0 8E0E0000 */   lw        $t6, ($s0)
/* C0CA4 800E58A4 8E0F0004 */  lw         $t7, 4($s0)
/* C0CA8 800E58A8 000FCC00 */  sll        $t9, $t7, 0x10
/* C0CAC 800E58AC 00197403 */  sra        $t6, $t9, 0x10
/* C0CB0 800E58B0 000EC7C3 */  sra        $t8, $t6, 0x1f
/* C0CB4 800E58B4 AE180000 */  sw         $t8, ($s0)
/* C0CB8 800E58B8 AE0E0004 */  sw         $t6, 4($s0)
/* C0CBC 800E58BC 8E0E0000 */  lw         $t6, ($s0)
.L800E58C0:
/* C0CC0 800E58C0 5DC0000E */  bgtzl      $t6, .L800E58FC
/* C0CC4 800E58C4 8E020030 */   lw        $v0, 0x30($s0)
/* C0CC8 800E58C8 05C20004 */  bltzl      $t6, .L800E58DC
/* C0CCC 800E58CC 8E19000C */   lw        $t9, 0xc($s0)
/* C0CD0 800E58D0 1000000A */  b          .L800E58FC
/* C0CD4 800E58D4 8E020030 */   lw        $v0, 0x30($s0)
/* C0CD8 800E58D8 8E19000C */  lw         $t9, 0xc($s0)
.L800E58DC:
/* C0CDC 800E58DC 2418002D */  addiu      $t8, $zero, 0x2d
/* C0CE0 800E58E0 00F97021 */  addu       $t6, $a3, $t9
/* C0CE4 800E58E4 A1D80000 */  sb         $t8, ($t6)
/* C0CE8 800E58E8 8E0F000C */  lw         $t7, 0xc($s0)
/* C0CEC 800E58EC 25F90001 */  addiu      $t9, $t7, 1
/* C0CF0 800E58F0 10000016 */  b          .L800E594C
/* C0CF4 800E58F4 AE19000C */   sw        $t9, 0xc($s0)
/* C0CF8 800E58F8 8E020030 */  lw         $v0, 0x30($s0)
.L800E58FC:
/* C0CFC 800E58FC 30580002 */  andi       $t8, $v0, 2
/* C0D00 800E5900 13000009 */  beqz       $t8, .L800E5928
/* C0D04 800E5904 304E0001 */   andi      $t6, $v0, 1
/* C0D08 800E5908 8E0F000C */  lw         $t7, 0xc($s0)
/* C0D0C 800E590C 240E002B */  addiu      $t6, $zero, 0x2b
/* C0D10 800E5910 00EFC821 */  addu       $t9, $a3, $t7
/* C0D14 800E5914 A32E0000 */  sb         $t6, ($t9)
/* C0D18 800E5918 8E18000C */  lw         $t8, 0xc($s0)
/* C0D1C 800E591C 270F0001 */  addiu      $t7, $t8, 1
/* C0D20 800E5920 1000000A */  b          .L800E594C
/* C0D24 800E5924 AE0F000C */   sw        $t7, 0xc($s0)
.L800E5928:
/* C0D28 800E5928 51C00009 */  beql       $t6, $zero, .L800E5950
/* C0D2C 800E592C 8E19000C */   lw        $t9, 0xc($s0)
/* C0D30 800E5930 8E18000C */  lw         $t8, 0xc($s0)
/* C0D34 800E5934 24190020 */  addiu      $t9, $zero, 0x20
/* C0D38 800E5938 00F87821 */  addu       $t7, $a3, $t8
/* C0D3C 800E593C A1F90000 */  sb         $t9, ($t7)
/* C0D40 800E5940 8E0E000C */  lw         $t6, 0xc($s0)
/* C0D44 800E5944 25D80001 */  addiu      $t8, $t6, 1
/* C0D48 800E5948 AE18000C */  sw         $t8, 0xc($s0)
.L800E594C:
/* C0D4C 800E594C 8E19000C */  lw         $t9, 0xc($s0)
.L800E5950:
/* C0D50 800E5950 02002025 */  or         $a0, $s0, $zero
/* C0D54 800E5954 03277821 */  addu       $t7, $t9, $a3
/* C0D58 800E5958 0C03AFEC */  jal        func_800EBFB0
/* C0D5C 800E595C AE0F0008 */   sw        $t7, 8($s0)
/* C0D60 800E5960 10000114 */  b          .L800E5DB4
/* C0D64 800E5964 8FBF0014 */   lw        $ra, 0x14($sp)
/* C0D68 800E5968 92020034 */  lbu        $v0, 0x34($s0)
/* C0D6C 800E596C 2401006C */  addiu      $at, $zero, 0x6c
/* C0D70 800E5970 5441000D */  bnel       $v0, $at, .L800E59A8
/* C0D74 800E5974 2401004C */   addiu     $at, $zero, 0x4c
/* C0D78 800E5978 8CCE0000 */  lw         $t6, ($a2)
/* C0D7C 800E597C 2401FFFC */  addiu      $at, $zero, -4
/* C0D80 800E5980 25D80003 */  addiu      $t8, $t6, 3
/* C0D84 800E5984 0301C824 */  and        $t9, $t8, $at
/* C0D88 800E5988 272F0004 */  addiu      $t7, $t9, 4
/* C0D8C 800E598C ACCF0000 */  sw         $t7, ($a2)
/* C0D90 800E5990 8DF8FFFC */  lw         $t8, -4($t7)
/* C0D94 800E5994 001877C3 */  sra        $t6, $t8, 0x1f
/* C0D98 800E5998 AE0E0000 */  sw         $t6, ($s0)
/* C0D9C 800E599C 10000019 */  b          .L800E5A04
/* C0DA0 800E59A0 AE180004 */   sw        $t8, 4($s0)
/* C0DA4 800E59A4 2401004C */  addiu      $at, $zero, 0x4c
.L800E59A8:
/* C0DA8 800E59A8 5441000D */  bnel       $v0, $at, .L800E59E0
/* C0DAC 800E59AC 8CCE0000 */   lw        $t6, ($a2)
/* C0DB0 800E59B0 8CD90000 */  lw         $t9, ($a2)
/* C0DB4 800E59B4 2401FFF8 */  addiu      $at, $zero, -8
/* C0DB8 800E59B8 27380007 */  addiu      $t8, $t9, 7
/* C0DBC 800E59BC 03017024 */  and        $t6, $t8, $at
/* C0DC0 800E59C0 25CF0008 */  addiu      $t7, $t6, 8
/* C0DC4 800E59C4 ACCF0000 */  sw         $t7, ($a2)
/* C0DC8 800E59C8 8DF9FFFC */  lw         $t9, -4($t7)
/* C0DCC 800E59CC 8DF8FFF8 */  lw         $t8, -8($t7)
/* C0DD0 800E59D0 AE190004 */  sw         $t9, 4($s0)
/* C0DD4 800E59D4 1000000B */  b          .L800E5A04
/* C0DD8 800E59D8 AE180000 */   sw        $t8, ($s0)
/* C0DDC 800E59DC 8CCE0000 */  lw         $t6, ($a2)
.L800E59E0:
/* C0DE0 800E59E0 2401FFFC */  addiu      $at, $zero, -4
/* C0DE4 800E59E4 25CF0003 */  addiu      $t7, $t6, 3
/* C0DE8 800E59E8 01E1C024 */  and        $t8, $t7, $at
/* C0DEC 800E59EC 27190004 */  addiu      $t9, $t8, 4
/* C0DF0 800E59F0 ACD90000 */  sw         $t9, ($a2)
/* C0DF4 800E59F4 8F2FFFFC */  lw         $t7, -4($t9)
/* C0DF8 800E59F8 000FC7C3 */  sra        $t8, $t7, 0x1f
/* C0DFC 800E59FC AE180000 */  sw         $t8, ($s0)
/* C0E00 800E5A00 AE0F0004 */  sw         $t7, 4($s0)
.L800E5A04:
/* C0E04 800E5A04 92020034 */  lbu        $v0, 0x34($s0)
/* C0E08 800E5A08 24010068 */  addiu      $at, $zero, 0x68
/* C0E0C 800E5A0C 14410007 */  bne        $v0, $at, .L800E5A2C
/* C0E10 800E5A10 00000000 */   nop
/* C0E14 800E5A14 8E0F0004 */  lw         $t7, 4($s0)
/* C0E18 800E5A18 240E0000 */  addiu      $t6, $zero, 0
/* C0E1C 800E5A1C AE0E0000 */  sw         $t6, ($s0)
/* C0E20 800E5A20 31F9FFFF */  andi       $t9, $t7, 0xffff
/* C0E24 800E5A24 10000007 */  b          .L800E5A44
/* C0E28 800E5A28 AE190004 */   sw        $t9, 4($s0)
.L800E5A2C:
/* C0E2C 800E5A2C 54400006 */  bnel       $v0, $zero, .L800E5A48
/* C0E30 800E5A30 8E0F0030 */   lw        $t7, 0x30($s0)
/* C0E34 800E5A34 8E190004 */  lw         $t9, 4($s0)
/* C0E38 800E5A38 24180000 */  addiu      $t8, $zero, 0
/* C0E3C 800E5A3C AE180000 */  sw         $t8, ($s0)
/* C0E40 800E5A40 AE190004 */  sw         $t9, 4($s0)
.L800E5A44:
/* C0E44 800E5A44 8E0F0030 */  lw         $t7, 0x30($s0)
.L800E5A48:
/* C0E48 800E5A48 31EE0008 */  andi       $t6, $t7, 8
/* C0E4C 800E5A4C 51C00014 */  beql       $t6, $zero, .L800E5AA0
/* C0E50 800E5A50 8E18000C */   lw        $t8, 0xc($s0)
/* C0E54 800E5A54 8E19000C */  lw         $t9, 0xc($s0)
/* C0E58 800E5A58 24180030 */  addiu      $t8, $zero, 0x30
/* C0E5C 800E5A5C 24010078 */  addiu      $at, $zero, 0x78
/* C0E60 800E5A60 00F97821 */  addu       $t7, $a3, $t9
/* C0E64 800E5A64 A1F80000 */  sb         $t8, ($t7)
/* C0E68 800E5A68 8E0E000C */  lw         $t6, 0xc($s0)
/* C0E6C 800E5A6C 25D90001 */  addiu      $t9, $t6, 1
/* C0E70 800E5A70 10610004 */  beq        $v1, $at, .L800E5A84
/* C0E74 800E5A74 AE19000C */   sw        $t9, 0xc($s0)
/* C0E78 800E5A78 24010058 */  addiu      $at, $zero, 0x58
/* C0E7C 800E5A7C 54610008 */  bnel       $v1, $at, .L800E5AA0
/* C0E80 800E5A80 8E18000C */   lw        $t8, 0xc($s0)
.L800E5A84:
/* C0E84 800E5A84 8E18000C */  lw         $t8, 0xc($s0)
/* C0E88 800E5A88 00F87821 */  addu       $t7, $a3, $t8
/* C0E8C 800E5A8C A1E50000 */  sb         $a1, ($t7)
/* C0E90 800E5A90 8E0E000C */  lw         $t6, 0xc($s0)
/* C0E94 800E5A94 25D90001 */  addiu      $t9, $t6, 1
/* C0E98 800E5A98 AE19000C */  sw         $t9, 0xc($s0)
/* C0E9C 800E5A9C 8E18000C */  lw         $t8, 0xc($s0)
.L800E5AA0:
/* C0EA0 800E5AA0 02002025 */  or         $a0, $s0, $zero
/* C0EA4 800E5AA4 03077821 */  addu       $t7, $t8, $a3
/* C0EA8 800E5AA8 0C03AFEC */  jal        func_800EBFB0
/* C0EAC 800E5AAC AE0F0008 */   sw        $t7, 8($s0)
/* C0EB0 800E5AB0 100000C0 */  b          .L800E5DB4
/* C0EB4 800E5AB4 8FBF0014 */   lw        $ra, 0x14($sp)
/* C0EB8 800E5AB8 920E0034 */  lbu        $t6, 0x34($s0)
/* C0EBC 800E5ABC 2401004C */  addiu      $at, $zero, 0x4c
/* C0EC0 800E5AC0 55C10019 */  bnel       $t6, $at, .L800E5B28
/* C0EC4 800E5AC4 8CC20000 */   lw        $v0, ($a2)
/* C0EC8 800E5AC8 8CC20000 */  lw         $v0, ($a2)
/* C0ECC 800E5ACC 30590001 */  andi       $t9, $v0, 1
/* C0ED0 800E5AD0 13200005 */  beqz       $t9, .L800E5AE8
/* C0ED4 800E5AD4 00401825 */   or        $v1, $v0, $zero
/* C0ED8 800E5AD8 24780007 */  addiu      $t8, $v1, 7
/* C0EDC 800E5ADC ACD80000 */  sw         $t8, ($a2)
/* C0EE0 800E5AE0 1000000D */  b          .L800E5B18
/* C0EE4 800E5AE4 2702FFEA */   addiu     $v0, $t8, -0x16
.L800E5AE8:
/* C0EE8 800E5AE8 306F0002 */  andi       $t7, $v1, 2
/* C0EEC 800E5AEC 11E00005 */  beqz       $t7, .L800E5B04
/* C0EF0 800E5AF0 24590007 */   addiu     $t9, $v0, 7
/* C0EF4 800E5AF4 246E000A */  addiu      $t6, $v1, 0xa
/* C0EF8 800E5AF8 ACCE0000 */  sw         $t6, ($a2)
/* C0EFC 800E5AFC 10000005 */  b          .L800E5B14
/* C0F00 800E5B00 25C4FFD8 */   addiu     $a0, $t6, -0x28
.L800E5B04:
/* C0F04 800E5B04 2401FFF8 */  addiu      $at, $zero, -8
/* C0F08 800E5B08 0321C024 */  and        $t8, $t9, $at
/* C0F0C 800E5B0C 27040008 */  addiu      $a0, $t8, 8
/* C0F10 800E5B10 ACC40000 */  sw         $a0, ($a2)
.L800E5B14:
/* C0F14 800E5B14 00801025 */  or         $v0, $a0, $zero
.L800E5B18:
/* C0F18 800E5B18 D444FFF8 */  ldc1       $f4, -8($v0)
/* C0F1C 800E5B1C 10000017 */  b          .L800E5B7C
/* C0F20 800E5B20 F6040000 */   sdc1      $f4, ($s0)
/* C0F24 800E5B24 8CC20000 */  lw         $v0, ($a2)
.L800E5B28:
/* C0F28 800E5B28 304E0001 */  andi       $t6, $v0, 1
/* C0F2C 800E5B2C 11C00005 */  beqz       $t6, .L800E5B44
/* C0F30 800E5B30 00401825 */   or        $v1, $v0, $zero
/* C0F34 800E5B34 24790007 */  addiu      $t9, $v1, 7
/* C0F38 800E5B38 ACD90000 */  sw         $t9, ($a2)
/* C0F3C 800E5B3C 1000000D */  b          .L800E5B74
/* C0F40 800E5B40 2722FFEA */   addiu     $v0, $t9, -0x16
.L800E5B44:
/* C0F44 800E5B44 30780002 */  andi       $t8, $v1, 2
/* C0F48 800E5B48 13000005 */  beqz       $t8, .L800E5B60
/* C0F4C 800E5B4C 244E0007 */   addiu     $t6, $v0, 7
/* C0F50 800E5B50 246F000A */  addiu      $t7, $v1, 0xa
/* C0F54 800E5B54 ACCF0000 */  sw         $t7, ($a2)
/* C0F58 800E5B58 10000005 */  b          .L800E5B70
/* C0F5C 800E5B5C 25E4FFD8 */   addiu     $a0, $t7, -0x28
.L800E5B60:
/* C0F60 800E5B60 2401FFF8 */  addiu      $at, $zero, -8
/* C0F64 800E5B64 01C1C824 */  and        $t9, $t6, $at
/* C0F68 800E5B68 27240008 */  addiu      $a0, $t9, 8
/* C0F6C 800E5B6C ACC40000 */  sw         $a0, ($a2)
.L800E5B70:
/* C0F70 800E5B70 00801025 */  or         $v0, $a0, $zero
.L800E5B74:
/* C0F74 800E5B74 D446FFF8 */  ldc1       $f6, -8($v0)
/* C0F78 800E5B78 F6060000 */  sdc1       $f6, ($s0)
.L800E5B7C:
/* C0F7C 800E5B7C 960F0000 */  lhu        $t7, ($s0)
/* C0F80 800E5B80 31EE8000 */  andi       $t6, $t7, 0x8000
/* C0F84 800E5B84 51C0000A */  beql       $t6, $zero, .L800E5BB0
/* C0F88 800E5B88 8E020030 */   lw        $v0, 0x30($s0)
/* C0F8C 800E5B8C 8E18000C */  lw         $t8, 0xc($s0)
/* C0F90 800E5B90 2419002D */  addiu      $t9, $zero, 0x2d
/* C0F94 800E5B94 00F87821 */  addu       $t7, $a3, $t8
/* C0F98 800E5B98 A1F90000 */  sb         $t9, ($t7)
/* C0F9C 800E5B9C 8E0E000C */  lw         $t6, 0xc($s0)
/* C0FA0 800E5BA0 25D80001 */  addiu      $t8, $t6, 1
/* C0FA4 800E5BA4 10000016 */  b          .L800E5C00
/* C0FA8 800E5BA8 AE18000C */   sw        $t8, 0xc($s0)
/* C0FAC 800E5BAC 8E020030 */  lw         $v0, 0x30($s0)
.L800E5BB0:
/* C0FB0 800E5BB0 30590002 */  andi       $t9, $v0, 2
/* C0FB4 800E5BB4 13200009 */  beqz       $t9, .L800E5BDC
/* C0FB8 800E5BB8 304F0001 */   andi      $t7, $v0, 1
/* C0FBC 800E5BBC 8E0E000C */  lw         $t6, 0xc($s0)
/* C0FC0 800E5BC0 240F002B */  addiu      $t7, $zero, 0x2b
/* C0FC4 800E5BC4 00EEC021 */  addu       $t8, $a3, $t6
/* C0FC8 800E5BC8 A30F0000 */  sb         $t7, ($t8)
/* C0FCC 800E5BCC 8E19000C */  lw         $t9, 0xc($s0)
/* C0FD0 800E5BD0 272E0001 */  addiu      $t6, $t9, 1
/* C0FD4 800E5BD4 1000000A */  b          .L800E5C00
/* C0FD8 800E5BD8 AE0E000C */   sw        $t6, 0xc($s0)
.L800E5BDC:
/* C0FDC 800E5BDC 51E00009 */  beql       $t7, $zero, .L800E5C04
/* C0FE0 800E5BE0 8E18000C */   lw        $t8, 0xc($s0)
/* C0FE4 800E5BE4 8E19000C */  lw         $t9, 0xc($s0)
/* C0FE8 800E5BE8 24180020 */  addiu      $t8, $zero, 0x20
/* C0FEC 800E5BEC 00F97021 */  addu       $t6, $a3, $t9
/* C0FF0 800E5BF0 A1D80000 */  sb         $t8, ($t6)
/* C0FF4 800E5BF4 8E0F000C */  lw         $t7, 0xc($s0)
/* C0FF8 800E5BF8 25F90001 */  addiu      $t9, $t7, 1
/* C0FFC 800E5BFC AE19000C */  sw         $t9, 0xc($s0)
.L800E5C00:
/* C1000 800E5C00 8E18000C */  lw         $t8, 0xc($s0)
.L800E5C04:
/* C1004 800E5C04 02002025 */  or         $a0, $s0, $zero
/* C1008 800E5C08 03077021 */  addu       $t6, $t8, $a3
/* C100C 800E5C0C 0C03B1F0 */  jal        func_800EC7C0
/* C1010 800E5C10 AE0E0008 */   sw        $t6, 8($s0)
/* C1014 800E5C14 10000067 */  b          .L800E5DB4
/* C1018 800E5C18 8FBF0014 */   lw        $ra, 0x14($sp)
/* C101C 800E5C1C 92020034 */  lbu        $v0, 0x34($s0)
/* C1020 800E5C20 24010068 */  addiu      $at, $zero, 0x68
/* C1024 800E5C24 5441000C */  bnel       $v0, $at, .L800E5C58
/* C1028 800E5C28 2401006C */   addiu     $at, $zero, 0x6c
/* C102C 800E5C2C 8CCF0000 */  lw         $t7, ($a2)
/* C1030 800E5C30 2401FFFC */  addiu      $at, $zero, -4
/* C1034 800E5C34 25F90003 */  addiu      $t9, $t7, 3
/* C1038 800E5C38 0321C024 */  and        $t8, $t9, $at
/* C103C 800E5C3C 270E0004 */  addiu      $t6, $t8, 4
/* C1040 800E5C40 ACCE0000 */  sw         $t6, ($a2)
/* C1044 800E5C44 8DD9FFFC */  lw         $t9, -4($t6)
/* C1048 800E5C48 8E0F002C */  lw         $t7, 0x2c($s0)
/* C104C 800E5C4C 10000058 */  b          .L800E5DB0
/* C1050 800E5C50 A72F0000 */   sh        $t7, ($t9)
/* C1054 800E5C54 2401006C */  addiu      $at, $zero, 0x6c
.L800E5C58:
/* C1058 800E5C58 5441000C */  bnel       $v0, $at, .L800E5C8C
/* C105C 800E5C5C 2401004C */   addiu     $at, $zero, 0x4c
/* C1060 800E5C60 8CD80000 */  lw         $t8, ($a2)
/* C1064 800E5C64 2401FFFC */  addiu      $at, $zero, -4
/* C1068 800E5C68 270E0003 */  addiu      $t6, $t8, 3
/* C106C 800E5C6C 01C17824 */  and        $t7, $t6, $at
/* C1070 800E5C70 25F90004 */  addiu      $t9, $t7, 4
/* C1074 800E5C74 ACD90000 */  sw         $t9, ($a2)
/* C1078 800E5C78 8F2EFFFC */  lw         $t6, -4($t9)
/* C107C 800E5C7C 8E18002C */  lw         $t8, 0x2c($s0)
/* C1080 800E5C80 1000004B */  b          .L800E5DB0
/* C1084 800E5C84 ADD80000 */   sw        $t8, ($t6)
/* C1088 800E5C88 2401004C */  addiu      $at, $zero, 0x4c
.L800E5C8C:
/* C108C 800E5C8C 5441000E */  bnel       $v0, $at, .L800E5CC8
/* C1090 800E5C90 8CCF0000 */   lw        $t7, ($a2)
/* C1094 800E5C94 8CCF0000 */  lw         $t7, ($a2)
/* C1098 800E5C98 2401FFFC */  addiu      $at, $zero, -4
/* C109C 800E5C9C 25F90003 */  addiu      $t9, $t7, 3
/* C10A0 800E5CA0 0321C024 */  and        $t8, $t9, $at
/* C10A4 800E5CA4 270E0004 */  addiu      $t6, $t8, 4
/* C10A8 800E5CA8 ACCE0000 */  sw         $t6, ($a2)
/* C10AC 800E5CAC 8DCEFFFC */  lw         $t6, -4($t6)
/* C10B0 800E5CB0 8E0F002C */  lw         $t7, 0x2c($s0)
/* C10B4 800E5CB4 24180000 */  addiu      $t8, $zero, 0
/* C10B8 800E5CB8 ADD80000 */  sw         $t8, ($t6)
/* C10BC 800E5CBC 1000003C */  b          .L800E5DB0
/* C10C0 800E5CC0 ADCF0004 */   sw        $t7, 4($t6)
/* C10C4 800E5CC4 8CCF0000 */  lw         $t7, ($a2)
.L800E5CC8:
/* C10C8 800E5CC8 2401FFFC */  addiu      $at, $zero, -4
/* C10CC 800E5CCC 25F80003 */  addiu      $t8, $t7, 3
/* C10D0 800E5CD0 0301C824 */  and        $t9, $t8, $at
/* C10D4 800E5CD4 272E0004 */  addiu      $t6, $t9, 4
/* C10D8 800E5CD8 ACCE0000 */  sw         $t6, ($a2)
/* C10DC 800E5CDC 8DD8FFFC */  lw         $t8, -4($t6)
/* C10E0 800E5CE0 8E0F002C */  lw         $t7, 0x2c($s0)
/* C10E4 800E5CE4 10000032 */  b          .L800E5DB0
/* C10E8 800E5CE8 AF0F0000 */   sw        $t7, ($t8)
/* C10EC 800E5CEC 8CD90000 */  lw         $t9, ($a2)
/* C10F0 800E5CF0 2401FFFC */  addiu      $at, $zero, -4
/* C10F4 800E5CF4 02002025 */  or         $a0, $s0, $zero
/* C10F8 800E5CF8 272E0003 */  addiu      $t6, $t9, 3
/* C10FC 800E5CFC 01C17824 */  and        $t7, $t6, $at
/* C1100 800E5D00 25F80004 */  addiu      $t8, $t7, 4
/* C1104 800E5D04 ACD80000 */  sw         $t8, ($a2)
/* C1108 800E5D08 8F0EFFFC */  lw         $t6, -4($t8)
/* C110C 800E5D0C 8E0F000C */  lw         $t7, 0xc($s0)
/* C1110 800E5D10 24050078 */  addiu      $a1, $zero, 0x78
/* C1114 800E5D14 000EC7C3 */  sra        $t8, $t6, 0x1f
/* C1118 800E5D18 AE0E0004 */  sw         $t6, 4($s0)
/* C111C 800E5D1C 01E77021 */  addu       $t6, $t7, $a3
/* C1120 800E5D20 AE180000 */  sw         $t8, ($s0)
/* C1124 800E5D24 0C03AFEC */  jal        func_800EBFB0
/* C1128 800E5D28 AE0E0008 */   sw        $t6, 8($s0)
/* C112C 800E5D2C 10000021 */  b          .L800E5DB4
/* C1130 800E5D30 8FBF0014 */   lw        $ra, 0x14($sp)
/* C1134 800E5D34 8CD80000 */  lw         $t8, ($a2)
/* C1138 800E5D38 2401FFFC */  addiu      $at, $zero, -4
/* C113C 800E5D3C 27190003 */  addiu      $t9, $t8, 3
/* C1140 800E5D40 03217824 */  and        $t7, $t9, $at
/* C1144 800E5D44 25EE0004 */  addiu      $t6, $t7, 4
/* C1148 800E5D48 ACCE0000 */  sw         $t6, ($a2)
/* C114C 800E5D4C 8DC4FFFC */  lw         $a0, -4($t6)
/* C1150 800E5D50 0C03AFCF */  jal        func_800EBF3C
/* C1154 800E5D54 AE040008 */   sw        $a0, 8($s0)
/* C1158 800E5D58 8E030024 */  lw         $v1, 0x24($s0)
/* C115C 800E5D5C AE020014 */  sw         $v0, 0x14($s0)
/* C1160 800E5D60 04600013 */  bltz       $v1, .L800E5DB0
/* C1164 800E5D64 0062082A */   slt       $at, $v1, $v0
/* C1168 800E5D68 50200012 */  beql       $at, $zero, .L800E5DB4
/* C116C 800E5D6C 8FBF0014 */   lw        $ra, 0x14($sp)
/* C1170 800E5D70 1000000F */  b          .L800E5DB0
/* C1174 800E5D74 AE030014 */   sw        $v1, 0x14($s0)
/* C1178 800E5D78 8E18000C */  lw         $t8, 0xc($s0)
.L800E5D7C:
/* C117C 800E5D7C 240E0025 */  addiu      $t6, $zero, 0x25
/* C1180 800E5D80 00F8C821 */  addu       $t9, $a3, $t8
/* C1184 800E5D84 A32E0000 */  sb         $t6, ($t9)
/* C1188 800E5D88 8E0F000C */  lw         $t7, 0xc($s0)
/* C118C 800E5D8C 25F80001 */  addiu      $t8, $t7, 1
/* C1190 800E5D90 10000007 */  b          .L800E5DB0
/* C1194 800E5D94 AE18000C */   sw        $t8, 0xc($s0)
.L800E5D98:
/* C1198 800E5D98 8E0E000C */  lw         $t6, 0xc($s0)
.L800E5D9C:
/* C119C 800E5D9C 00EEC821 */  addu       $t9, $a3, $t6
/* C11A0 800E5DA0 A3250000 */  sb         $a1, ($t9)
/* C11A4 800E5DA4 8E0F000C */  lw         $t7, 0xc($s0)
/* C11A8 800E5DA8 25F80001 */  addiu      $t8, $t7, 1
/* C11AC 800E5DAC AE18000C */  sw         $t8, 0xc($s0)
.L800E5DB0:
/* C11B0 800E5DB0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E5DB4:
/* C11B4 800E5DB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C11B8 800E5DB8 03E00008 */  jr         $ra
/* C11BC 800E5DBC 00000000 */   nop

glabel func_800E5DC0
/* C11C0 800E5DC0 27BDFF20 */  addiu      $sp, $sp, -0xe0
/* C11C4 800E5DC4 AFB70034 */  sw         $s7, 0x34($sp)
/* C11C8 800E5DC8 AFB60030 */  sw         $s6, 0x30($sp)
/* C11CC 800E5DCC AFB5002C */  sw         $s5, 0x2c($sp)
/* C11D0 800E5DD0 AFBE0038 */  sw         $fp, 0x38($sp)
/* C11D4 800E5DD4 AFB40028 */  sw         $s4, 0x28($sp)
/* C11D8 800E5DD8 AFB30024 */  sw         $s3, 0x24($sp)
/* C11DC 800E5DDC AFA700EC */  sw         $a3, 0xec($sp)
/* C11E0 800E5DE0 3C158011 */  lui        $s5, 0x8011
/* C11E4 800E5DE4 3C168011 */  lui        $s6, 0x8011
/* C11E8 800E5DE8 3C178011 */  lui        $s7, 0x8011
/* C11EC 800E5DEC 00C03825 */  or         $a3, $a2, $zero
/* C11F0 800E5DF0 00A09825 */  or         $s3, $a1, $zero
/* C11F4 800E5DF4 0080A025 */  or         $s4, $a0, $zero
/* C11F8 800E5DF8 AFBF003C */  sw         $ra, 0x3c($sp)
/* C11FC 800E5DFC AFB20020 */  sw         $s2, 0x20($sp)
/* C1200 800E5E00 AFB1001C */  sw         $s1, 0x1c($sp)
/* C1204 800E5E04 AFB00018 */  sw         $s0, 0x18($sp)
/* C1208 800E5E08 AFA600E8 */  sw         $a2, 0xe8($sp)
/* C120C 800E5E0C AFA000D4 */  sw         $zero, 0xd4($sp)
/* C1210 800E5E10 26F79EB0 */  addiu      $s7, $s7, -0x6150
/* C1214 800E5E14 26D60CB4 */  addiu      $s6, $s6, 0xcb4
/* C1218 800E5E18 26B59ED4 */  addiu      $s5, $s5, -0x612c
/* C121C 800E5E1C 241E000A */  addiu      $fp, $zero, 0xa
.L800E5E20:
/* C1220 800E5E20 90F00000 */  lbu        $s0, ($a3)
/* C1224 800E5E24 24F20001 */  addiu      $s2, $a3, 1
/* C1228 800E5E28 24030025 */  addiu      $v1, $zero, 0x25
/* C122C 800E5E2C 1A000009 */  blez       $s0, .L800E5E54
/* C1230 800E5E30 02602025 */   or        $a0, $s3, $zero
.L800E5E34:
/* C1234 800E5E34 54700004 */  bnel       $v1, $s0, .L800E5E48
/* C1238 800E5E38 92500000 */   lbu       $s0, ($s2)
/* C123C 800E5E3C 10000005 */  b          .L800E5E54
/* C1240 800E5E40 2652FFFF */   addiu     $s2, $s2, -1
/* C1244 800E5E44 92500000 */  lbu        $s0, ($s2)
.L800E5E48:
/* C1248 800E5E48 26520001 */  addiu      $s2, $s2, 1
/* C124C 800E5E4C 1E00FFF9 */  bgtz       $s0, .L800E5E34
/* C1250 800E5E50 00000000 */   nop
.L800E5E54:
/* C1254 800E5E54 02471023 */  subu       $v0, $s2, $a3
/* C1258 800E5E58 1840000C */  blez       $v0, .L800E5E8C
/* C125C 800E5E5C 00E02825 */   or        $a1, $a3, $zero
/* C1260 800E5E60 00408825 */  or         $s1, $v0, $zero
/* C1264 800E5E64 0280F809 */  jalr       $s4
/* C1268 800E5E68 00403025 */   or        $a2, $v0, $zero
/* C126C 800E5E6C 10400005 */  beqz       $v0, .L800E5E84
/* C1270 800E5E70 00409825 */   or        $s3, $v0, $zero
/* C1274 800E5E74 8FAE00D4 */  lw         $t6, 0xd4($sp)
/* C1278 800E5E78 01D17821 */  addu       $t7, $t6, $s1
/* C127C 800E5E7C 10000003 */  b          .L800E5E8C
/* C1280 800E5E80 AFAF00D4 */   sw        $t7, 0xd4($sp)
.L800E5E84:
/* C1284 800E5E84 10000153 */  b          .L800E63D4
/* C1288 800E5E88 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E5E8C:
/* C128C 800E5E8C 16000003 */  bnez       $s0, .L800E5E9C
/* C1290 800E5E90 26520001 */   addiu     $s2, $s2, 1
/* C1294 800E5E94 1000014F */  b          .L800E63D4
/* C1298 800E5E98 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E5E9C:
/* C129C 800E5E9C AFA000D8 */  sw         $zero, 0xd8($sp)
/* C12A0 800E5EA0 92450000 */  lbu        $a1, ($s2)
/* C12A4 800E5EA4 0C03AFD9 */  jal        func_800EBF64
/* C12A8 800E5EA8 02C02025 */   or        $a0, $s6, $zero
/* C12AC 800E5EAC 1040000F */  beqz       $v0, .L800E5EEC
/* C12B0 800E5EB0 00408025 */   or        $s0, $v0, $zero
.L800E5EB4:
/* C12B4 800E5EB4 0216C823 */  subu       $t9, $s0, $s6
/* C12B8 800E5EB8 00197080 */  sll        $t6, $t9, 2
/* C12BC 800E5EBC 3C0F8011 */  lui        $t7, %hi(D_80110CBC)
/* C12C0 800E5EC0 01EE7821 */  addu       $t7, $t7, $t6
/* C12C4 800E5EC4 8DEF0CBC */  lw         $t7, %lo(D_80110CBC)($t7)
/* C12C8 800E5EC8 8FB800D8 */  lw         $t8, 0xd8($sp)
/* C12CC 800E5ECC 26520001 */  addiu      $s2, $s2, 1
/* C12D0 800E5ED0 02C02025 */  or         $a0, $s6, $zero
/* C12D4 800E5ED4 030FC825 */  or         $t9, $t8, $t7
/* C12D8 800E5ED8 AFB900D8 */  sw         $t9, 0xd8($sp)
/* C12DC 800E5EDC 0C03AFD9 */  jal        func_800EBF64
/* C12E0 800E5EE0 92450000 */   lbu       $a1, ($s2)
/* C12E4 800E5EE4 1440FFF3 */  bnez       $v0, .L800E5EB4
/* C12E8 800E5EE8 00408025 */   or        $s0, $v0, $zero
.L800E5EEC:
/* C12EC 800E5EEC 924E0000 */  lbu        $t6, ($s2)
/* C12F0 800E5EF0 2402002A */  addiu      $v0, $zero, 0x2a
/* C12F4 800E5EF4 8FB800EC */  lw         $t8, 0xec($sp)
/* C12F8 800E5EF8 144E0011 */  bne        $v0, $t6, .L800E5F40
/* C12FC 800E5EFC 3C048011 */   lui       $a0, 0x8011
/* C1300 800E5F00 270F0003 */  addiu      $t7, $t8, 3
/* C1304 800E5F04 2401FFFC */  addiu      $at, $zero, -4
/* C1308 800E5F08 01E1C824 */  and        $t9, $t7, $at
/* C130C 800E5F0C 272E0004 */  addiu      $t6, $t9, 4
/* C1310 800E5F10 AFAE00EC */  sw         $t6, 0xec($sp)
/* C1314 800E5F14 8F380000 */  lw         $t8, ($t9)
/* C1318 800E5F18 26520001 */  addiu      $s2, $s2, 1
/* C131C 800E5F1C 07010006 */  bgez       $t8, .L800E5F38
/* C1320 800E5F20 AFB800D0 */   sw        $t8, 0xd0($sp)
/* C1324 800E5F24 8FAE00D8 */  lw         $t6, 0xd8($sp)
/* C1328 800E5F28 00187823 */  negu       $t7, $t8
/* C132C 800E5F2C AFAF00D0 */  sw         $t7, 0xd0($sp)
/* C1330 800E5F30 35D90004 */  ori        $t9, $t6, 4
/* C1334 800E5F34 AFB900D8 */  sw         $t9, 0xd8($sp)
.L800E5F38:
/* C1338 800E5F38 10000018 */  b          .L800E5F9C
/* C133C 800E5F3C 92450000 */   lbu       $a1, ($s2)
.L800E5F40:
/* C1340 800E5F40 AFA000D0 */  sw         $zero, 0xd0($sp)
/* C1344 800E5F44 92450000 */  lbu        $a1, ($s2)
/* C1348 800E5F48 28A10030 */  slti       $at, $a1, 0x30
/* C134C 800E5F4C 14200013 */  bnez       $at, .L800E5F9C
/* C1350 800E5F50 28A1003A */   slti      $at, $a1, 0x3a
/* C1354 800E5F54 50200012 */  beql       $at, $zero, .L800E5FA0
/* C1358 800E5F58 2401002E */   addiu     $at, $zero, 0x2e
/* C135C 800E5F5C 8FB800D0 */  lw         $t8, 0xd0($sp)
.L800E5F60:
/* C1360 800E5F60 2B0103E7 */  slti       $at, $t8, 0x3e7
/* C1364 800E5F64 50200007 */  beql       $at, $zero, .L800E5F84
/* C1368 800E5F68 92450001 */   lbu       $a1, 1($s2)
/* C136C 800E5F6C 031E0019 */  multu      $t8, $fp
/* C1370 800E5F70 00007812 */  mflo       $t7
/* C1374 800E5F74 00AF7021 */  addu       $t6, $a1, $t7
/* C1378 800E5F78 25D9FFD0 */  addiu      $t9, $t6, -0x30
/* C137C 800E5F7C AFB900D0 */  sw         $t9, 0xd0($sp)
/* C1380 800E5F80 92450001 */  lbu        $a1, 1($s2)
.L800E5F84:
/* C1384 800E5F84 26520001 */  addiu      $s2, $s2, 1
/* C1388 800E5F88 28A10030 */  slti       $at, $a1, 0x30
/* C138C 800E5F8C 14200003 */  bnez       $at, .L800E5F9C
/* C1390 800E5F90 28A1003A */   slti      $at, $a1, 0x3a
/* C1394 800E5F94 5420FFF2 */  bnel       $at, $zero, .L800E5F60
/* C1398 800E5F98 8FB800D0 */   lw        $t8, 0xd0($sp)
.L800E5F9C:
/* C139C 800E5F9C 2401002E */  addiu      $at, $zero, 0x2e
.L800E5FA0:
/* C13A0 800E5FA0 10A10004 */  beq        $a1, $at, .L800E5FB4
/* C13A4 800E5FA4 2418FFFF */   addiu     $t8, $zero, -1
/* C13A8 800E5FA8 AFB800CC */  sw         $t8, 0xcc($sp)
/* C13AC 800E5FAC 10000026 */  b          .L800E6048
/* C13B0 800E5FB0 92450000 */   lbu       $a1, ($s2)
.L800E5FB4:
/* C13B4 800E5FB4 924F0001 */  lbu        $t7, 1($s2)
/* C13B8 800E5FB8 8FAE00EC */  lw         $t6, 0xec($sp)
/* C13BC 800E5FBC 26520001 */  addiu      $s2, $s2, 1
/* C13C0 800E5FC0 144F000A */  bne        $v0, $t7, .L800E5FEC
/* C13C4 800E5FC4 25D90003 */   addiu     $t9, $t6, 3
/* C13C8 800E5FC8 2401FFFC */  addiu      $at, $zero, -4
/* C13CC 800E5FCC 0321C024 */  and        $t8, $t9, $at
/* C13D0 800E5FD0 270F0004 */  addiu      $t7, $t8, 4
/* C13D4 800E5FD4 AFAF00EC */  sw         $t7, 0xec($sp)
/* C13D8 800E5FD8 8F0E0000 */  lw         $t6, ($t8)
/* C13DC 800E5FDC 26520001 */  addiu      $s2, $s2, 1
/* C13E0 800E5FE0 AFAE00CC */  sw         $t6, 0xcc($sp)
/* C13E4 800E5FE4 10000018 */  b          .L800E6048
/* C13E8 800E5FE8 92450000 */   lbu       $a1, ($s2)
.L800E5FEC:
/* C13EC 800E5FEC AFA000CC */  sw         $zero, 0xcc($sp)
/* C13F0 800E5FF0 92450000 */  lbu        $a1, ($s2)
/* C13F4 800E5FF4 28A10030 */  slti       $at, $a1, 0x30
/* C13F8 800E5FF8 14200013 */  bnez       $at, .L800E6048
/* C13FC 800E5FFC 28A1003A */   slti      $at, $a1, 0x3a
/* C1400 800E6000 10200011 */  beqz       $at, .L800E6048
/* C1404 800E6004 00000000 */   nop
/* C1408 800E6008 8FB900CC */  lw         $t9, 0xcc($sp)
.L800E600C:
/* C140C 800E600C 2B2103E7 */  slti       $at, $t9, 0x3e7
/* C1410 800E6010 50200007 */  beql       $at, $zero, .L800E6030
/* C1414 800E6014 92450001 */   lbu       $a1, 1($s2)
/* C1418 800E6018 033E0019 */  multu      $t9, $fp
/* C141C 800E601C 00007812 */  mflo       $t7
/* C1420 800E6020 00AFC021 */  addu       $t8, $a1, $t7
/* C1424 800E6024 270EFFD0 */  addiu      $t6, $t8, -0x30
/* C1428 800E6028 AFAE00CC */  sw         $t6, 0xcc($sp)
/* C142C 800E602C 92450001 */  lbu        $a1, 1($s2)
.L800E6030:
/* C1430 800E6030 26520001 */  addiu      $s2, $s2, 1
/* C1434 800E6034 28A10030 */  slti       $at, $a1, 0x30
/* C1438 800E6038 14200003 */  bnez       $at, .L800E6048
/* C143C 800E603C 28A1003A */   slti      $at, $a1, 0x3a
/* C1440 800E6040 5420FFF2 */  bnel       $at, $zero, .L800E600C
/* C1444 800E6044 8FB900CC */   lw        $t9, 0xcc($sp)
.L800E6048:
/* C1448 800E6048 0C03AFD9 */  jal        func_800EBF64
/* C144C 800E604C 24840CB0 */   addiu     $a0, $a0, 0xcb0
/* C1450 800E6050 10400005 */  beqz       $v0, .L800E6068
/* C1454 800E6054 27B000A8 */   addiu     $s0, $sp, 0xa8
/* C1458 800E6058 92590000 */  lbu        $t9, ($s2)
/* C145C 800E605C 26520001 */  addiu      $s2, $s2, 1
/* C1460 800E6060 10000002 */  b          .L800E606C
/* C1464 800E6064 A3B900DC */   sb        $t9, 0xdc($sp)
.L800E6068:
/* C1468 800E6068 A3A000DC */  sb         $zero, 0xdc($sp)
.L800E606C:
/* C146C 800E606C 93AF00DC */  lbu        $t7, 0xdc($sp)
/* C1470 800E6070 2402006C */  addiu      $v0, $zero, 0x6c
/* C1474 800E6074 27A600EC */  addiu      $a2, $sp, 0xec
/* C1478 800E6078 144F0007 */  bne        $v0, $t7, .L800E6098
/* C147C 800E607C 27A7007C */   addiu     $a3, $sp, 0x7c
/* C1480 800E6080 92580000 */  lbu        $t8, ($s2)
/* C1484 800E6084 240E004C */  addiu      $t6, $zero, 0x4c
/* C1488 800E6088 14580003 */  bne        $v0, $t8, .L800E6098
/* C148C 800E608C 00000000 */   nop
/* C1490 800E6090 A3AE00DC */  sb         $t6, 0xdc($sp)
/* C1494 800E6094 26520001 */  addiu      $s2, $s2, 1
.L800E6098:
/* C1498 800E6098 0C0395D4 */  jal        func_800E5750
/* C149C 800E609C 92450000 */   lbu       $a1, ($s2)
/* C14A0 800E60A0 8FB900D0 */  lw         $t9, 0xd0($sp)
/* C14A4 800E60A4 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* C14A8 800E60A8 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* C14AC 800E60AC 032FC023 */  subu       $t8, $t9, $t7
/* C14B0 800E60B0 8FAF00BC */  lw         $t7, 0xbc($sp)
/* C14B4 800E60B4 030EC823 */  subu       $t9, $t8, $t6
/* C14B8 800E60B8 8FAE00C0 */  lw         $t6, 0xc0($sp)
/* C14BC 800E60BC 032FC023 */  subu       $t8, $t9, $t7
/* C14C0 800E60C0 8FAF00C4 */  lw         $t7, 0xc4($sp)
/* C14C4 800E60C4 030EC823 */  subu       $t9, $t8, $t6
/* C14C8 800E60C8 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* C14CC 800E60CC 032FC023 */  subu       $t8, $t9, $t7
/* C14D0 800E60D0 8FAF00D8 */  lw         $t7, 0xd8($sp)
/* C14D4 800E60D4 030EC823 */  subu       $t9, $t8, $t6
/* C14D8 800E60D8 AFB900D0 */  sw         $t9, 0xd0($sp)
/* C14DC 800E60DC 31F80004 */  andi       $t8, $t7, 4
/* C14E0 800E60E0 1700001A */  bnez       $t8, .L800E614C
/* C14E4 800E60E4 0019702A */   slt       $t6, $zero, $t9
/* C14E8 800E60E8 51C00019 */  beql       $t6, $zero, .L800E6150
/* C14EC 800E60EC 8FB900B4 */   lw        $t9, 0xb4($sp)
/* C14F0 800E60F0 11C00016 */  beqz       $t6, .L800E614C
/* C14F4 800E60F4 03208825 */   or        $s1, $t9, $zero
/* C14F8 800E60F8 2E210021 */  sltiu      $at, $s1, 0x21
.L800E60FC:
/* C14FC 800E60FC 14200003 */  bnez       $at, .L800E610C
/* C1500 800E6100 02208025 */   or        $s0, $s1, $zero
/* C1504 800E6104 10000001 */  b          .L800E610C
/* C1508 800E6108 24100020 */   addiu     $s0, $zero, 0x20
.L800E610C:
/* C150C 800E610C 1A00000C */  blez       $s0, .L800E6140
/* C1510 800E6110 02602025 */   or        $a0, $s3, $zero
/* C1514 800E6114 02E02825 */  or         $a1, $s7, $zero
/* C1518 800E6118 0280F809 */  jalr       $s4
/* C151C 800E611C 02003025 */   or        $a2, $s0, $zero
/* C1520 800E6120 10400005 */  beqz       $v0, .L800E6138
/* C1524 800E6124 00409825 */   or        $s3, $v0, $zero
/* C1528 800E6128 8FAF00D4 */  lw         $t7, 0xd4($sp)
/* C152C 800E612C 01F0C021 */  addu       $t8, $t7, $s0
/* C1530 800E6130 10000003 */  b          .L800E6140
/* C1534 800E6134 AFB800D4 */   sw        $t8, 0xd4($sp)
.L800E6138:
/* C1538 800E6138 100000A6 */  b          .L800E63D4
/* C153C 800E613C 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E6140:
/* C1540 800E6140 02308823 */  subu       $s1, $s1, $s0
/* C1544 800E6144 5E20FFED */  bgtzl      $s1, .L800E60FC
/* C1548 800E6148 2E210021 */   sltiu     $at, $s1, 0x21
.L800E614C:
/* C154C 800E614C 8FB900B4 */  lw         $t9, 0xb4($sp)
.L800E6150:
/* C1550 800E6150 02602025 */  or         $a0, $s3, $zero
/* C1554 800E6154 27A5007C */  addiu      $a1, $sp, 0x7c
/* C1558 800E6158 5B20000D */  blezl      $t9, .L800E6190
/* C155C 800E615C 8FB900B8 */   lw        $t9, 0xb8($sp)
/* C1560 800E6160 0280F809 */  jalr       $s4
/* C1564 800E6164 03203025 */   or        $a2, $t9, $zero
/* C1568 800E6168 10400006 */  beqz       $v0, .L800E6184
/* C156C 800E616C 00409825 */   or        $s3, $v0, $zero
/* C1570 800E6170 8FAE00D4 */  lw         $t6, 0xd4($sp)
/* C1574 800E6174 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* C1578 800E6178 01CFC021 */  addu       $t8, $t6, $t7
/* C157C 800E617C 10000003 */  b          .L800E618C
/* C1580 800E6180 AFB800D4 */   sw        $t8, 0xd4($sp)
.L800E6184:
/* C1584 800E6184 10000093 */  b          .L800E63D4
/* C1588 800E6188 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E618C:
/* C158C 800E618C 8FB900B8 */  lw         $t9, 0xb8($sp)
.L800E6190:
/* C1590 800E6190 0019702A */  slt        $t6, $zero, $t9
/* C1594 800E6194 51C00019 */  beql       $t6, $zero, .L800E61FC
/* C1598 800E6198 8FB900BC */   lw        $t9, 0xbc($sp)
/* C159C 800E619C 11C00016 */  beqz       $t6, .L800E61F8
/* C15A0 800E61A0 03208825 */   or        $s1, $t9, $zero
/* C15A4 800E61A4 2E210021 */  sltiu      $at, $s1, 0x21
.L800E61A8:
/* C15A8 800E61A8 14200003 */  bnez       $at, .L800E61B8
/* C15AC 800E61AC 02208025 */   or        $s0, $s1, $zero
/* C15B0 800E61B0 10000001 */  b          .L800E61B8
/* C15B4 800E61B4 24100020 */   addiu     $s0, $zero, 0x20
.L800E61B8:
/* C15B8 800E61B8 1A00000C */  blez       $s0, .L800E61EC
/* C15BC 800E61BC 02602025 */   or        $a0, $s3, $zero
/* C15C0 800E61C0 02A02825 */  or         $a1, $s5, $zero
/* C15C4 800E61C4 0280F809 */  jalr       $s4
/* C15C8 800E61C8 02003025 */   or        $a2, $s0, $zero
/* C15CC 800E61CC 10400005 */  beqz       $v0, .L800E61E4
/* C15D0 800E61D0 00409825 */   or        $s3, $v0, $zero
/* C15D4 800E61D4 8FAF00D4 */  lw         $t7, 0xd4($sp)
/* C15D8 800E61D8 01F0C021 */  addu       $t8, $t7, $s0
/* C15DC 800E61DC 10000003 */  b          .L800E61EC
/* C15E0 800E61E0 AFB800D4 */   sw        $t8, 0xd4($sp)
.L800E61E4:
/* C15E4 800E61E4 1000007B */  b          .L800E63D4
/* C15E8 800E61E8 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E61EC:
/* C15EC 800E61EC 02308823 */  subu       $s1, $s1, $s0
/* C15F0 800E61F0 5E20FFED */  bgtzl      $s1, .L800E61A8
/* C15F4 800E61F4 2E210021 */   sltiu     $at, $s1, 0x21
.L800E61F8:
/* C15F8 800E61F8 8FB900BC */  lw         $t9, 0xbc($sp)
.L800E61FC:
/* C15FC 800E61FC 02602025 */  or         $a0, $s3, $zero
/* C1600 800E6200 8FA500B0 */  lw         $a1, 0xb0($sp)
/* C1604 800E6204 5B20000D */  blezl      $t9, .L800E623C
/* C1608 800E6208 8FB900C0 */   lw        $t9, 0xc0($sp)
/* C160C 800E620C 0280F809 */  jalr       $s4
/* C1610 800E6210 03203025 */   or        $a2, $t9, $zero
/* C1614 800E6214 10400006 */  beqz       $v0, .L800E6230
/* C1618 800E6218 00409825 */   or        $s3, $v0, $zero
/* C161C 800E621C 8FAE00D4 */  lw         $t6, 0xd4($sp)
/* C1620 800E6220 8FAF00BC */  lw         $t7, 0xbc($sp)
/* C1624 800E6224 01CFC021 */  addu       $t8, $t6, $t7
/* C1628 800E6228 10000003 */  b          .L800E6238
/* C162C 800E622C AFB800D4 */   sw        $t8, 0xd4($sp)
.L800E6230:
/* C1630 800E6230 10000068 */  b          .L800E63D4
/* C1634 800E6234 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E6238:
/* C1638 800E6238 8FB900C0 */  lw         $t9, 0xc0($sp)
.L800E623C:
/* C163C 800E623C 0019702A */  slt        $t6, $zero, $t9
/* C1640 800E6240 51C00019 */  beql       $t6, $zero, .L800E62A8
/* C1644 800E6244 8FB900C4 */   lw        $t9, 0xc4($sp)
/* C1648 800E6248 11C00016 */  beqz       $t6, .L800E62A4
/* C164C 800E624C 03208825 */   or        $s1, $t9, $zero
/* C1650 800E6250 2E210021 */  sltiu      $at, $s1, 0x21
.L800E6254:
/* C1654 800E6254 14200003 */  bnez       $at, .L800E6264
/* C1658 800E6258 02208025 */   or        $s0, $s1, $zero
/* C165C 800E625C 10000001 */  b          .L800E6264
/* C1660 800E6260 24100020 */   addiu     $s0, $zero, 0x20
.L800E6264:
/* C1664 800E6264 1A00000C */  blez       $s0, .L800E6298
/* C1668 800E6268 02602025 */   or        $a0, $s3, $zero
/* C166C 800E626C 02A02825 */  or         $a1, $s5, $zero
/* C1670 800E6270 0280F809 */  jalr       $s4
/* C1674 800E6274 02003025 */   or        $a2, $s0, $zero
/* C1678 800E6278 10400005 */  beqz       $v0, .L800E6290
/* C167C 800E627C 00409825 */   or        $s3, $v0, $zero
/* C1680 800E6280 8FAF00D4 */  lw         $t7, 0xd4($sp)
/* C1684 800E6284 01F0C021 */  addu       $t8, $t7, $s0
/* C1688 800E6288 10000003 */  b          .L800E6298
/* C168C 800E628C AFB800D4 */   sw        $t8, 0xd4($sp)
.L800E6290:
/* C1690 800E6290 10000050 */  b          .L800E63D4
/* C1694 800E6294 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E6298:
/* C1698 800E6298 02308823 */  subu       $s1, $s1, $s0
/* C169C 800E629C 5E20FFED */  bgtzl      $s1, .L800E6254
/* C16A0 800E62A0 2E210021 */   sltiu     $at, $s1, 0x21
.L800E62A4:
/* C16A4 800E62A4 8FB900C4 */  lw         $t9, 0xc4($sp)
.L800E62A8:
/* C16A8 800E62A8 02602025 */  or         $a0, $s3, $zero
/* C16AC 800E62AC 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* C16B0 800E62B0 1B20000D */  blez       $t9, .L800E62E8
/* C16B4 800E62B4 8FAF00BC */   lw        $t7, 0xbc($sp)
/* C16B8 800E62B8 01CF2821 */  addu       $a1, $t6, $t7
/* C16BC 800E62BC 0280F809 */  jalr       $s4
/* C16C0 800E62C0 03203025 */   or        $a2, $t9, $zero
/* C16C4 800E62C4 10400006 */  beqz       $v0, .L800E62E0
/* C16C8 800E62C8 00409825 */   or        $s3, $v0, $zero
/* C16CC 800E62CC 8FB800D4 */  lw         $t8, 0xd4($sp)
/* C16D0 800E62D0 8FAE00C4 */  lw         $t6, 0xc4($sp)
/* C16D4 800E62D4 030E7821 */  addu       $t7, $t8, $t6
/* C16D8 800E62D8 10000003 */  b          .L800E62E8
/* C16DC 800E62DC AFAF00D4 */   sw        $t7, 0xd4($sp)
.L800E62E0:
/* C16E0 800E62E0 1000003C */  b          .L800E63D4
/* C16E4 800E62E4 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E62E8:
/* C16E8 800E62E8 8FB900C8 */  lw         $t9, 0xc8($sp)
/* C16EC 800E62EC 0019C02A */  slt        $t8, $zero, $t9
/* C16F0 800E62F0 53000019 */  beql       $t8, $zero, .L800E6358
/* C16F4 800E62F4 8FB900D8 */   lw        $t9, 0xd8($sp)
/* C16F8 800E62F8 13000016 */  beqz       $t8, .L800E6354
/* C16FC 800E62FC 03208825 */   or        $s1, $t9, $zero
/* C1700 800E6300 2E210021 */  sltiu      $at, $s1, 0x21
.L800E6304:
/* C1704 800E6304 14200003 */  bnez       $at, .L800E6314
/* C1708 800E6308 02208025 */   or        $s0, $s1, $zero
/* C170C 800E630C 10000001 */  b          .L800E6314
/* C1710 800E6310 24100020 */   addiu     $s0, $zero, 0x20
.L800E6314:
/* C1714 800E6314 1A00000C */  blez       $s0, .L800E6348
/* C1718 800E6318 02602025 */   or        $a0, $s3, $zero
/* C171C 800E631C 02A02825 */  or         $a1, $s5, $zero
/* C1720 800E6320 0280F809 */  jalr       $s4
/* C1724 800E6324 02003025 */   or        $a2, $s0, $zero
/* C1728 800E6328 10400005 */  beqz       $v0, .L800E6340
/* C172C 800E632C 00409825 */   or        $s3, $v0, $zero
/* C1730 800E6330 8FAE00D4 */  lw         $t6, 0xd4($sp)
/* C1734 800E6334 01D07821 */  addu       $t7, $t6, $s0
/* C1738 800E6338 10000003 */  b          .L800E6348
/* C173C 800E633C AFAF00D4 */   sw        $t7, 0xd4($sp)
.L800E6340:
/* C1740 800E6340 10000024 */  b          .L800E63D4
/* C1744 800E6344 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E6348:
/* C1748 800E6348 02308823 */  subu       $s1, $s1, $s0
/* C174C 800E634C 5E20FFED */  bgtzl      $s1, .L800E6304
/* C1750 800E6350 2E210021 */   sltiu     $at, $s1, 0x21
.L800E6354:
/* C1754 800E6354 8FB900D8 */  lw         $t9, 0xd8($sp)
.L800E6358:
/* C1758 800E6358 8FAE00D0 */  lw         $t6, 0xd0($sp)
/* C175C 800E635C 33380004 */  andi       $t8, $t9, 4
/* C1760 800E6360 1300001A */  beqz       $t8, .L800E63CC
/* C1764 800E6364 000E782A */   slt       $t7, $zero, $t6
/* C1768 800E6368 11E00018 */  beqz       $t7, .L800E63CC
/* C176C 800E636C 00000000 */   nop
/* C1770 800E6370 11E00016 */  beqz       $t7, .L800E63CC
/* C1774 800E6374 01C08825 */   or        $s1, $t6, $zero
/* C1778 800E6378 2E210021 */  sltiu      $at, $s1, 0x21
.L800E637C:
/* C177C 800E637C 14200003 */  bnez       $at, .L800E638C
/* C1780 800E6380 02208025 */   or        $s0, $s1, $zero
/* C1784 800E6384 10000001 */  b          .L800E638C
/* C1788 800E6388 24100020 */   addiu     $s0, $zero, 0x20
.L800E638C:
/* C178C 800E638C 1A00000C */  blez       $s0, .L800E63C0
/* C1790 800E6390 02602025 */   or        $a0, $s3, $zero
/* C1794 800E6394 02E02825 */  or         $a1, $s7, $zero
/* C1798 800E6398 0280F809 */  jalr       $s4
/* C179C 800E639C 02003025 */   or        $a2, $s0, $zero
/* C17A0 800E63A0 10400005 */  beqz       $v0, .L800E63B8
/* C17A4 800E63A4 00409825 */   or        $s3, $v0, $zero
/* C17A8 800E63A8 8FB900D4 */  lw         $t9, 0xd4($sp)
/* C17AC 800E63AC 0330C021 */  addu       $t8, $t9, $s0
/* C17B0 800E63B0 10000003 */  b          .L800E63C0
/* C17B4 800E63B4 AFB800D4 */   sw        $t8, 0xd4($sp)
.L800E63B8:
/* C17B8 800E63B8 10000006 */  b          .L800E63D4
/* C17BC 800E63BC 8FA200D4 */   lw        $v0, 0xd4($sp)
.L800E63C0:
/* C17C0 800E63C0 02308823 */  subu       $s1, $s1, $s0
/* C17C4 800E63C4 5E20FFED */  bgtzl      $s1, .L800E637C
/* C17C8 800E63C8 2E210021 */   sltiu     $at, $s1, 0x21
.L800E63CC:
/* C17CC 800E63CC 1000FE94 */  b          .L800E5E20
/* C17D0 800E63D0 26470001 */   addiu     $a3, $s2, 1
.L800E63D4:
/* C17D4 800E63D4 8FBF003C */  lw         $ra, 0x3c($sp)
/* C17D8 800E63D8 8FB00018 */  lw         $s0, 0x18($sp)
/* C17DC 800E63DC 8FB1001C */  lw         $s1, 0x1c($sp)
/* C17E0 800E63E0 8FB20020 */  lw         $s2, 0x20($sp)
/* C17E4 800E63E4 8FB30024 */  lw         $s3, 0x24($sp)
/* C17E8 800E63E8 8FB40028 */  lw         $s4, 0x28($sp)
/* C17EC 800E63EC 8FB5002C */  lw         $s5, 0x2c($sp)
/* C17F0 800E63F0 8FB60030 */  lw         $s6, 0x30($sp)
/* C17F4 800E63F4 8FB70034 */  lw         $s7, 0x34($sp)
/* C17F8 800E63F8 8FBE0038 */  lw         $fp, 0x38($sp)
/* C17FC 800E63FC 03E00008 */  jr         $ra
/* C1800 800E6400 27BD00E0 */   addiu     $sp, $sp, 0xe0
/* C1804 800E6404 00000000 */  nop
/* C1808 800E6408 00000000 */  nop
/* C180C 800E640C 00000000 */  nop
