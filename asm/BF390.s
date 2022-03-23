.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E3F90
/* BF390 800E3F90 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* BF394 800E3F94 AFA00008 */  sw         $zero, 8($sp)
/* BF398 800E3F98 AFA40004 */  sw         $a0, 4($sp)
/* BF39C 800E3F9C 18A00010 */  blez       $a1, .L800E3FE0
/* BF3A0 800E3FA0 AFA0000C */   sw        $zero, 0xc($sp)
.L800E3FA4:
/* BF3A4 800E3FA4 8FAF0004 */  lw         $t7, 4($sp)
/* BF3A8 800E3FA8 8FAE0008 */  lw         $t6, 8($sp)
/* BF3AC 800E3FAC 8FAB000C */  lw         $t3, 0xc($sp)
/* BF3B0 800E3FB0 91F80000 */  lbu        $t8, ($t7)
/* BF3B4 800E3FB4 25E80001 */  addiu      $t0, $t7, 1
/* BF3B8 800E3FB8 256C0001 */  addiu      $t4, $t3, 1
/* BF3BC 800E3FBC 01D8C821 */  addu       $t9, $t6, $t8
/* BF3C0 800E3FC0 AFB90008 */  sw         $t9, 8($sp)
/* BF3C4 800E3FC4 8FA90008 */  lw         $t1, 8($sp)
/* BF3C8 800E3FC8 0185082A */  slt        $at, $t4, $a1
/* BF3CC 800E3FCC AFAC000C */  sw         $t4, 0xc($sp)
/* BF3D0 800E3FD0 312AFFFF */  andi       $t2, $t1, 0xffff
/* BF3D4 800E3FD4 AFA80004 */  sw         $t0, 4($sp)
/* BF3D8 800E3FD8 1420FFF2 */  bnez       $at, .L800E3FA4
/* BF3DC 800E3FDC AFAA0008 */   sw        $t2, 8($sp)
.L800E3FE0:
/* BF3E0 800E3FE0 97A2000A */  lhu        $v0, 0xa($sp)
/* BF3E4 800E3FE4 03E00008 */  jr         $ra
/* BF3E8 800E3FE8 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800E3FEC
/* BF3EC 800E3FEC 27BDFFF8 */  addiu      $sp, $sp, -8
/* BF3F0 800E3FF0 A7A00006 */  sh         $zero, 6($sp)
/* BF3F4 800E3FF4 A4C00000 */  sh         $zero, ($a2)
/* BF3F8 800E3FF8 94CE0000 */  lhu        $t6, ($a2)
/* BF3FC 800E3FFC A4AE0000 */  sh         $t6, ($a1)
/* BF400 800E4000 AFA00000 */  sw         $zero, ($sp)
.L800E4004:
/* BF404 800E4004 8FAF0000 */  lw         $t7, ($sp)
/* BF408 800E4008 008FC021 */  addu       $t8, $a0, $t7
/* BF40C 800E400C 97190000 */  lhu        $t9, ($t8)
/* BF410 800E4010 A7B90006 */  sh         $t9, 6($sp)
/* BF414 800E4014 94A80000 */  lhu        $t0, ($a1)
/* BF418 800E4018 01194821 */  addu       $t1, $t0, $t9
/* BF41C 800E401C A4A90000 */  sh         $t1, ($a1)
/* BF420 800E4020 97AB0006 */  lhu        $t3, 6($sp)
/* BF424 800E4024 94CA0000 */  lhu        $t2, ($a2)
/* BF428 800E4028 01606027 */  not        $t4, $t3
/* BF42C 800E402C 014C6821 */  addu       $t5, $t2, $t4
/* BF430 800E4030 A4CD0000 */  sh         $t5, ($a2)
/* BF434 800E4034 8FAE0000 */  lw         $t6, ($sp)
/* BF438 800E4038 25CF0002 */  addiu      $t7, $t6, 2
/* BF43C 800E403C 2DE1001C */  sltiu      $at, $t7, 0x1c
/* BF440 800E4040 1420FFF0 */  bnez       $at, .L800E4004
/* BF444 800E4044 AFAF0000 */   sw        $t7, ($sp)
/* BF448 800E4048 00001025 */  or         $v0, $zero, $zero
/* BF44C 800E404C 03E00008 */  jr         $ra
/* BF450 800E4050 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800E4054
/* BF454 800E4054 27BDFF88 */  addiu      $sp, $sp, -0x78
/* BF458 800E4058 AFA40078 */  sw         $a0, 0x78($sp)
/* BF45C 800E405C 8FAE0078 */  lw         $t6, 0x78($sp)
/* BF460 800E4060 AFBF001C */  sw         $ra, 0x1c($sp)
/* BF464 800E4064 AFA5007C */  sw         $a1, 0x7c($sp)
/* BF468 800E4068 AFA60080 */  sw         $a2, 0x80($sp)
/* BF46C 800E406C AFA00074 */  sw         $zero, 0x74($sp)
/* BF470 800E4070 A3A00033 */  sb         $zero, 0x33($sp)
/* BF474 800E4074 91CF0065 */  lbu        $t7, 0x65($t6)
/* BF478 800E4078 11E0000A */  beqz       $t7, .L800E40A4
/* BF47C 800E407C 00000000 */   nop
/* BF480 800E4080 A1C00065 */  sb         $zero, 0x65($t6)
/* BF484 800E4084 0C03931F */  jal        func_800E4C7C
/* BF488 800E4088 8FA40078 */   lw        $a0, 0x78($sp)
/* BF48C 800E408C AFA20074 */  sw         $v0, 0x74($sp)
/* BF490 800E4090 8FB80074 */  lw         $t8, 0x74($sp)
/* BF494 800E4094 13000003 */  beqz       $t8, .L800E40A4
/* BF498 800E4098 00000000 */   nop
/* BF49C 800E409C 100000EF */  b          .L800E445C
/* BF4A0 800E40A0 03001025 */   or        $v0, $t8, $zero
.L800E40A4:
/* BF4A4 800E40A4 8FA80080 */  lw         $t0, 0x80($sp)
/* BF4A8 800E40A8 2419FFFF */  addiu      $t9, $zero, -1
/* BF4AC 800E40AC 0C038094 */  jal        func_800E0250
/* BF4B0 800E40B0 AD190000 */   sw        $t9, ($t0)
/* BF4B4 800E40B4 8FA90080 */  lw         $t1, 0x80($sp)
/* BF4B8 800E40B8 AD220004 */  sw         $v0, 4($t1)
/* BF4BC 800E40BC 8FAA007C */  lw         $t2, 0x7c($sp)
/* BF4C0 800E40C0 8FAB0080 */  lw         $t3, 0x80($sp)
/* BF4C4 800E40C4 8D4C0008 */  lw         $t4, 8($t2)
/* BF4C8 800E40C8 8D4D000C */  lw         $t5, 0xc($t2)
/* BF4CC 800E40CC AD6C0008 */  sw         $t4, 8($t3)
/* BF4D0 800E40D0 AD6D000C */  sw         $t5, 0xc($t3)
/* BF4D4 800E40D4 8FAF007C */  lw         $t7, 0x7c($sp)
/* BF4D8 800E40D8 8FB80080 */  lw         $t8, 0x80($sp)
/* BF4DC 800E40DC 8DEE0010 */  lw         $t6, 0x10($t7)
/* BF4E0 800E40E0 8DEF0014 */  lw         $t7, 0x14($t7)
/* BF4E4 800E40E4 AF0E0010 */  sw         $t6, 0x10($t8)
/* BF4E8 800E40E8 AF0F0014 */  sw         $t7, 0x14($t8)
/* BF4EC 800E40EC AFA00028 */  sw         $zero, 0x28($sp)
.L800E40F0:
/* BF4F0 800E40F0 8FB90028 */  lw         $t9, 0x28($sp)
/* BF4F4 800E40F4 8FA80078 */  lw         $t0, 0x78($sp)
/* BF4F8 800E40F8 A1190065 */  sb         $t9, 0x65($t0)
/* BF4FC 800E40FC 0C03931F */  jal        func_800E4C7C
/* BF500 800E4100 8FA40078 */   lw        $a0, 0x78($sp)
/* BF504 800E4104 AFA20074 */  sw         $v0, 0x74($sp)
/* BF508 800E4108 8FA90074 */  lw         $t1, 0x74($sp)
/* BF50C 800E410C 11200003 */  beqz       $t1, .L800E411C
/* BF510 800E4110 00000000 */   nop
/* BF514 800E4114 100000D1 */  b          .L800E445C
/* BF518 800E4118 01201025 */   or        $v0, $t1, $zero
.L800E411C:
/* BF51C 800E411C 8FAA0078 */  lw         $t2, 0x78($sp)
/* BF520 800E4120 00003025 */  or         $a2, $zero, $zero
/* BF524 800E4124 27A70054 */  addiu      $a3, $sp, 0x54
/* BF528 800E4128 8D440004 */  lw         $a0, 4($t2)
/* BF52C 800E412C 0C03852C */  jal        func_800E14B0
/* BF530 800E4130 8D450008 */   lw        $a1, 8($t2)
/* BF534 800E4134 AFA20074 */  sw         $v0, 0x74($sp)
/* BF538 800E4138 8FAC0074 */  lw         $t4, 0x74($sp)
/* BF53C 800E413C 11800003 */  beqz       $t4, .L800E414C
/* BF540 800E4140 00000000 */   nop
/* BF544 800E4144 100000C5 */  b          .L800E445C
/* BF548 800E4148 01801025 */   or        $v0, $t4, $zero
.L800E414C:
/* BF54C 800E414C 8FAD0028 */  lw         $t5, 0x28($sp)
/* BF550 800E4150 27AE0054 */  addiu      $t6, $sp, 0x54
/* BF554 800E4154 240F0001 */  addiu      $t7, $zero, 1
/* BF558 800E4158 35AB0080 */  ori        $t3, $t5, 0x80
/* BF55C 800E415C A1CB0000 */  sb         $t3, ($t6)
/* BF560 800E4160 AFAF002C */  sw         $t7, 0x2c($sp)
.L800E4164:
/* BF564 800E4164 8FB8002C */  lw         $t8, 0x2c($sp)
/* BF568 800E4168 27B90054 */  addiu      $t9, $sp, 0x54
/* BF56C 800E416C 03194021 */  addu       $t0, $t8, $t9
/* BF570 800E4170 91090000 */  lbu        $t1, ($t0)
/* BF574 800E4174 01205027 */  not        $t2, $t1
/* BF578 800E4178 A10A0000 */  sb         $t2, ($t0)
/* BF57C 800E417C 8FAC002C */  lw         $t4, 0x2c($sp)
/* BF580 800E4180 258D0001 */  addiu      $t5, $t4, 1
/* BF584 800E4184 29A10020 */  slti       $at, $t5, 0x20
/* BF588 800E4188 1420FFF6 */  bnez       $at, .L800E4164
/* BF58C 800E418C AFAD002C */   sw        $t5, 0x2c($sp)
/* BF590 800E4190 8FAB0078 */  lw         $t3, 0x78($sp)
/* BF594 800E4194 00003025 */  or         $a2, $zero, $zero
/* BF598 800E4198 27A70054 */  addiu      $a3, $sp, 0x54
/* BF59C 800E419C 8D640004 */  lw         $a0, 4($t3)
/* BF5A0 800E41A0 8D650008 */  lw         $a1, 8($t3)
/* BF5A4 800E41A4 0C038440 */  jal        func_800E1100
/* BF5A8 800E41A8 AFA00010 */   sw        $zero, 0x10($sp)
/* BF5AC 800E41AC AFA20074 */  sw         $v0, 0x74($sp)
/* BF5B0 800E41B0 8FAE0074 */  lw         $t6, 0x74($sp)
/* BF5B4 800E41B4 11C00003 */  beqz       $t6, .L800E41C4
/* BF5B8 800E41B8 00000000 */   nop
/* BF5BC 800E41BC 100000A7 */  b          .L800E445C
/* BF5C0 800E41C0 01C01025 */   or        $v0, $t6, $zero
.L800E41C4:
/* BF5C4 800E41C4 8FAF0078 */  lw         $t7, 0x78($sp)
/* BF5C8 800E41C8 00003025 */  or         $a2, $zero, $zero
/* BF5CC 800E41CC 27A70034 */  addiu      $a3, $sp, 0x34
/* BF5D0 800E41D0 8DE40004 */  lw         $a0, 4($t7)
/* BF5D4 800E41D4 0C03852C */  jal        func_800E14B0
/* BF5D8 800E41D8 8DE50008 */   lw        $a1, 8($t7)
/* BF5DC 800E41DC AFA20074 */  sw         $v0, 0x74($sp)
/* BF5E0 800E41E0 8FB80074 */  lw         $t8, 0x74($sp)
/* BF5E4 800E41E4 13000003 */  beqz       $t8, .L800E41F4
/* BF5E8 800E41E8 00000000 */   nop
/* BF5EC 800E41EC 1000009B */  b          .L800E445C
/* BF5F0 800E41F0 03001025 */   or        $v0, $t8, $zero
.L800E41F4:
/* BF5F4 800E41F4 AFA0002C */  sw         $zero, 0x2c($sp)
.L800E41F8:
/* BF5F8 800E41F8 8FB9002C */  lw         $t9, 0x2c($sp)
/* BF5FC 800E41FC 03B94821 */  addu       $t1, $sp, $t9
/* BF600 800E4200 03B95021 */  addu       $t2, $sp, $t9
/* BF604 800E4204 914A0034 */  lbu        $t2, 0x34($t2)
/* BF608 800E4208 91290054 */  lbu        $t1, 0x54($t1)
/* BF60C 800E420C 152A0006 */  bne        $t1, $t2, .L800E4228
/* BF610 800E4210 00000000 */   nop
/* BF614 800E4214 8FA8002C */  lw         $t0, 0x2c($sp)
/* BF618 800E4218 250C0001 */  addiu      $t4, $t0, 1
/* BF61C 800E421C 29810020 */  slti       $at, $t4, 0x20
/* BF620 800E4220 1420FFF5 */  bnez       $at, .L800E41F8
/* BF624 800E4224 AFAC002C */   sw        $t4, 0x2c($sp)
.L800E4228:
/* BF628 800E4228 8FAD002C */  lw         $t5, 0x2c($sp)
/* BF62C 800E422C 24010020 */  addiu      $at, $zero, 0x20
/* BF630 800E4230 15A10026 */  bne        $t5, $at, .L800E42CC
/* BF634 800E4234 00000000 */   nop
/* BF638 800E4238 8FAB0028 */  lw         $t3, 0x28($sp)
/* BF63C 800E423C 1960001C */  blez       $t3, .L800E42B0
/* BF640 800E4240 00000000 */   nop
/* BF644 800E4244 8FAE0078 */  lw         $t6, 0x78($sp)
/* BF648 800E4248 A1C00065 */  sb         $zero, 0x65($t6)
/* BF64C 800E424C 0C03931F */  jal        func_800E4C7C
/* BF650 800E4250 8FA40078 */   lw        $a0, 0x78($sp)
/* BF654 800E4254 AFA20074 */  sw         $v0, 0x74($sp)
/* BF658 800E4258 8FAF0074 */  lw         $t7, 0x74($sp)
/* BF65C 800E425C 11E00003 */  beqz       $t7, .L800E426C
/* BF660 800E4260 00000000 */   nop
/* BF664 800E4264 1000007D */  b          .L800E445C
/* BF668 800E4268 01E01025 */   or        $v0, $t7, $zero
.L800E426C:
/* BF66C 800E426C 8FB80078 */  lw         $t8, 0x78($sp)
/* BF670 800E4270 00003025 */  or         $a2, $zero, $zero
/* BF674 800E4274 27A70054 */  addiu      $a3, $sp, 0x54
/* BF678 800E4278 8F040004 */  lw         $a0, 4($t8)
/* BF67C 800E427C 0C03852C */  jal        func_800E14B0
/* BF680 800E4280 8F050008 */   lw        $a1, 8($t8)
/* BF684 800E4284 AFA20074 */  sw         $v0, 0x74($sp)
/* BF688 800E4288 8FB90074 */  lw         $t9, 0x74($sp)
/* BF68C 800E428C 13200003 */  beqz       $t9, .L800E429C
/* BF690 800E4290 00000000 */   nop
/* BF694 800E4294 10000071 */  b          .L800E445C
/* BF698 800E4298 03201025 */   or        $v0, $t9, $zero
.L800E429C:
/* BF69C 800E429C 27A90054 */  addiu      $t1, $sp, 0x54
/* BF6A0 800E42A0 912A0000 */  lbu        $t2, ($t1)
/* BF6A4 800E42A4 24010080 */  addiu      $at, $zero, 0x80
/* BF6A8 800E42A8 15410008 */  bne        $t2, $at, .L800E42CC
/* BF6AC 800E42AC 00000000 */   nop
.L800E42B0:
/* BF6B0 800E42B0 8FA80028 */  lw         $t0, 0x28($sp)
/* BF6B4 800E42B4 250C0001 */  addiu      $t4, $t0, 1
/* BF6B8 800E42B8 AFAC0028 */  sw         $t4, 0x28($sp)
/* BF6BC 800E42BC 8FAD0028 */  lw         $t5, 0x28($sp)
/* BF6C0 800E42C0 29A1003E */  slti       $at, $t5, 0x3e
/* BF6C4 800E42C4 1420FF8A */  bnez       $at, .L800E40F0
/* BF6C8 800E42C8 00000000 */   nop
.L800E42CC:
/* BF6CC 800E42CC 8FAB0078 */  lw         $t3, 0x78($sp)
/* BF6D0 800E42D0 A1600065 */  sb         $zero, 0x65($t3)
/* BF6D4 800E42D4 0C03931F */  jal        func_800E4C7C
/* BF6D8 800E42D8 8FA40078 */   lw        $a0, 0x78($sp)
/* BF6DC 800E42DC AFA20074 */  sw         $v0, 0x74($sp)
/* BF6E0 800E42E0 8FAE0074 */  lw         $t6, 0x74($sp)
/* BF6E4 800E42E4 11C00003 */  beqz       $t6, .L800E42F4
/* BF6E8 800E42E8 00000000 */   nop
/* BF6EC 800E42EC 1000005B */  b          .L800E445C
/* BF6F0 800E42F0 01C01025 */   or        $v0, $t6, $zero
.L800E42F4:
/* BF6F4 800E42F4 8FAF0028 */  lw         $t7, 0x28($sp)
/* BF6F8 800E42F8 19E00004 */  blez       $t7, .L800E430C
/* BF6FC 800E42FC 00000000 */   nop
/* BF700 800E4300 24180001 */  addiu      $t8, $zero, 1
/* BF704 800E4304 10000002 */  b          .L800E4310
/* BF708 800E4308 A3B80033 */   sb        $t8, 0x33($sp)
.L800E430C:
/* BF70C 800E430C A3A00033 */  sb         $zero, 0x33($sp)
.L800E4310:
/* BF710 800E4310 8FB9007C */  lw         $t9, 0x7c($sp)
/* BF714 800E4314 93A80033 */  lbu        $t0, 0x33($sp)
/* BF718 800E4318 8FAD0080 */  lw         $t5, 0x80($sp)
/* BF71C 800E431C 97290018 */  lhu        $t1, 0x18($t9)
/* BF720 800E4320 312AFFFE */  andi       $t2, $t1, 0xfffe
/* BF724 800E4324 01486025 */  or         $t4, $t2, $t0
/* BF728 800E4328 A5AC0018 */  sh         $t4, 0x18($t5)
/* BF72C 800E432C 8FAE0080 */  lw         $t6, 0x80($sp)
/* BF730 800E4330 8FAB0028 */  lw         $t3, 0x28($sp)
/* BF734 800E4334 A1CB001A */  sb         $t3, 0x1a($t6)
/* BF738 800E4338 8FAF007C */  lw         $t7, 0x7c($sp)
/* BF73C 800E433C 8FB90080 */  lw         $t9, 0x80($sp)
/* BF740 800E4340 91F8001B */  lbu        $t8, 0x1b($t7)
/* BF744 800E4344 A338001B */  sb         $t8, 0x1b($t9)
/* BF748 800E4348 8FA90080 */  lw         $t1, 0x80($sp)
/* BF74C 800E434C 01202025 */  or         $a0, $t1, $zero
/* BF750 800E4350 2525001C */  addiu      $a1, $t1, 0x1c
/* BF754 800E4354 0C038FFB */  jal        func_800E3FEC
/* BF758 800E4358 2526001E */   addiu     $a2, $t1, 0x1e
/* BF75C 800E435C 240A0001 */  addiu      $t2, $zero, 1
/* BF760 800E4360 27A80020 */  addiu      $t0, $sp, 0x20
/* BF764 800E4364 A50A0000 */  sh         $t2, ($t0)
/* BF768 800E4368 240C0003 */  addiu      $t4, $zero, 3
/* BF76C 800E436C 27AD0020 */  addiu      $t5, $sp, 0x20
/* BF770 800E4370 A5AC0002 */  sh         $t4, 2($t5)
/* BF774 800E4374 240B0004 */  addiu      $t3, $zero, 4
/* BF778 800E4378 27AE0020 */  addiu      $t6, $sp, 0x20
/* BF77C 800E437C A5CB0004 */  sh         $t3, 4($t6)
/* BF780 800E4380 240F0006 */  addiu      $t7, $zero, 6
/* BF784 800E4384 27B80020 */  addiu      $t8, $sp, 0x20
/* BF788 800E4388 A70F0006 */  sh         $t7, 6($t8)
/* BF78C 800E438C AFA0002C */  sw         $zero, 0x2c($sp)
.L800E4390:
/* BF790 800E4390 8FA9002C */  lw         $t1, 0x2c($sp)
/* BF794 800E4394 8FB90078 */  lw         $t9, 0x78($sp)
/* BF798 800E4398 24080001 */  addiu      $t0, $zero, 1
/* BF79C 800E439C 00095040 */  sll        $t2, $t1, 1
/* BF7A0 800E43A0 03AA3021 */  addu       $a2, $sp, $t2
/* BF7A4 800E43A4 94C60020 */  lhu        $a2, 0x20($a2)
/* BF7A8 800E43A8 8F240004 */  lw         $a0, 4($t9)
/* BF7AC 800E43AC 8F250008 */  lw         $a1, 8($t9)
/* BF7B0 800E43B0 AFA80010 */  sw         $t0, 0x10($sp)
/* BF7B4 800E43B4 0C038440 */  jal        func_800E1100
/* BF7B8 800E43B8 8FA70080 */   lw        $a3, 0x80($sp)
/* BF7BC 800E43BC AFA20074 */  sw         $v0, 0x74($sp)
/* BF7C0 800E43C0 8FAC0074 */  lw         $t4, 0x74($sp)
/* BF7C4 800E43C4 11800003 */  beqz       $t4, .L800E43D4
/* BF7C8 800E43C8 00000000 */   nop
/* BF7CC 800E43CC 10000023 */  b          .L800E445C
/* BF7D0 800E43D0 01801025 */   or        $v0, $t4, $zero
.L800E43D4:
/* BF7D4 800E43D4 8FAD002C */  lw         $t5, 0x2c($sp)
/* BF7D8 800E43D8 25AB0001 */  addiu      $t3, $t5, 1
/* BF7DC 800E43DC 29610004 */  slti       $at, $t3, 4
/* BF7E0 800E43E0 1420FFEB */  bnez       $at, .L800E4390
/* BF7E4 800E43E4 AFAB002C */   sw        $t3, 0x2c($sp)
/* BF7E8 800E43E8 8FAE0078 */  lw         $t6, 0x78($sp)
/* BF7EC 800E43EC 24060001 */  addiu      $a2, $zero, 1
/* BF7F0 800E43F0 27A70054 */  addiu      $a3, $sp, 0x54
/* BF7F4 800E43F4 8DC40004 */  lw         $a0, 4($t6)
/* BF7F8 800E43F8 0C03852C */  jal        func_800E14B0
/* BF7FC 800E43FC 8DC50008 */   lw        $a1, 8($t6)
/* BF800 800E4400 AFA20074 */  sw         $v0, 0x74($sp)
/* BF804 800E4404 8FAF0074 */  lw         $t7, 0x74($sp)
/* BF808 800E4408 11E00003 */  beqz       $t7, .L800E4418
/* BF80C 800E440C 00000000 */   nop
/* BF810 800E4410 10000012 */  b          .L800E445C
/* BF814 800E4414 01E01025 */   or        $v0, $t7, $zero
.L800E4418:
/* BF818 800E4418 AFA0002C */  sw         $zero, 0x2c($sp)
.L800E441C:
/* BF81C 800E441C 8FB9002C */  lw         $t9, 0x2c($sp)
/* BF820 800E4420 8FB80080 */  lw         $t8, 0x80($sp)
/* BF824 800E4424 03B94021 */  addu       $t0, $sp, $t9
/* BF828 800E4428 03194821 */  addu       $t1, $t8, $t9
/* BF82C 800E442C 912A0000 */  lbu        $t2, ($t1)
/* BF830 800E4430 91080054 */  lbu        $t0, 0x54($t0)
/* BF834 800E4434 11480003 */  beq        $t2, $t0, .L800E4444
/* BF838 800E4438 00000000 */   nop
/* BF83C 800E443C 10000007 */  b          .L800E445C
/* BF840 800E4440 2402000A */   addiu     $v0, $zero, 0xa
.L800E4444:
/* BF844 800E4444 8FAC002C */  lw         $t4, 0x2c($sp)
/* BF848 800E4448 258D0001 */  addiu      $t5, $t4, 1
/* BF84C 800E444C 29A10020 */  slti       $at, $t5, 0x20
/* BF850 800E4450 1420FFF2 */  bnez       $at, .L800E441C
/* BF854 800E4454 AFAD002C */   sw        $t5, 0x2c($sp)
/* BF858 800E4458 00001025 */  or         $v0, $zero, $zero
.L800E445C:
/* BF85C 800E445C 8FBF001C */  lw         $ra, 0x1c($sp)
/* BF860 800E4460 27BD0078 */  addiu      $sp, $sp, 0x78
/* BF864 800E4464 03E00008 */  jr         $ra
/* BF868 800E4468 00000000 */   nop

glabel func_800E446C
/* BF86C 800E446C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BF870 800E4470 AFA40038 */  sw         $a0, 0x38($sp)
/* BF874 800E4474 8FAE0038 */  lw         $t6, 0x38($sp)
/* BF878 800E4478 AFBF001C */  sw         $ra, 0x1c($sp)
/* BF87C 800E447C AFA5003C */  sw         $a1, 0x3c($sp)
/* BF880 800E4480 AFA0002C */  sw         $zero, 0x2c($sp)
/* BF884 800E4484 91CF0065 */  lbu        $t7, 0x65($t6)
/* BF888 800E4488 11E0000A */  beqz       $t7, .L800E44B4
/* BF88C 800E448C 00000000 */   nop
/* BF890 800E4490 A1C00065 */  sb         $zero, 0x65($t6)
/* BF894 800E4494 0C03931F */  jal        func_800E4C7C
/* BF898 800E4498 8FA40038 */   lw        $a0, 0x38($sp)
/* BF89C 800E449C AFA2002C */  sw         $v0, 0x2c($sp)
/* BF8A0 800E44A0 8FB8002C */  lw         $t8, 0x2c($sp)
/* BF8A4 800E44A4 13000003 */  beqz       $t8, .L800E44B4
/* BF8A8 800E44A8 00000000 */   nop
/* BF8AC 800E44AC 10000051 */  b          .L800E45F4
/* BF8B0 800E44B0 03001025 */   or        $v0, $t8, $zero
.L800E44B4:
/* BF8B4 800E44B4 24190001 */  addiu      $t9, $zero, 1
/* BF8B8 800E44B8 27A80030 */  addiu      $t0, $sp, 0x30
/* BF8BC 800E44BC A5190000 */  sh         $t9, ($t0)
/* BF8C0 800E44C0 24090003 */  addiu      $t1, $zero, 3
/* BF8C4 800E44C4 27AA0030 */  addiu      $t2, $sp, 0x30
/* BF8C8 800E44C8 A5490002 */  sh         $t1, 2($t2)
/* BF8CC 800E44CC 240B0004 */  addiu      $t3, $zero, 4
/* BF8D0 800E44D0 27AC0030 */  addiu      $t4, $sp, 0x30
/* BF8D4 800E44D4 A58B0004 */  sh         $t3, 4($t4)
/* BF8D8 800E44D8 240D0006 */  addiu      $t5, $zero, 6
/* BF8DC 800E44DC 27AF0030 */  addiu      $t7, $sp, 0x30
/* BF8E0 800E44E0 A5ED0006 */  sh         $t5, 6($t7)
/* BF8E4 800E44E4 240E0001 */  addiu      $t6, $zero, 1
/* BF8E8 800E44E8 AFAE0024 */  sw         $t6, 0x24($sp)
.L800E44EC:
/* BF8EC 800E44EC 8FB90024 */  lw         $t9, 0x24($sp)
/* BF8F0 800E44F0 8FB80038 */  lw         $t8, 0x38($sp)
/* BF8F4 800E44F4 8FA7003C */  lw         $a3, 0x3c($sp)
/* BF8F8 800E44F8 00194040 */  sll        $t0, $t9, 1
/* BF8FC 800E44FC 03A83021 */  addu       $a2, $sp, $t0
/* BF900 800E4500 94C60030 */  lhu        $a2, 0x30($a2)
/* BF904 800E4504 8F040004 */  lw         $a0, 4($t8)
/* BF908 800E4508 0C03852C */  jal        func_800E14B0
/* BF90C 800E450C 8F050008 */   lw        $a1, 8($t8)
/* BF910 800E4510 AFA2002C */  sw         $v0, 0x2c($sp)
/* BF914 800E4514 8FA9002C */  lw         $t1, 0x2c($sp)
/* BF918 800E4518 11200003 */  beqz       $t1, .L800E4528
/* BF91C 800E451C 00000000 */   nop
/* BF920 800E4520 10000034 */  b          .L800E45F4
/* BF924 800E4524 01201025 */   or        $v0, $t1, $zero
.L800E4528:
/* BF928 800E4528 8FA4003C */  lw         $a0, 0x3c($sp)
/* BF92C 800E452C 27A5002A */  addiu      $a1, $sp, 0x2a
/* BF930 800E4530 0C038FFB */  jal        func_800E3FEC
/* BF934 800E4534 27A60028 */   addiu     $a2, $sp, 0x28
/* BF938 800E4538 8FAA003C */  lw         $t2, 0x3c($sp)
/* BF93C 800E453C 97AC002A */  lhu        $t4, 0x2a($sp)
/* BF940 800E4540 954B001C */  lhu        $t3, 0x1c($t2)
/* BF944 800E4544 156C0005 */  bne        $t3, $t4, .L800E455C
/* BF948 800E4548 00000000 */   nop
/* BF94C 800E454C 954D001E */  lhu        $t5, 0x1e($t2)
/* BF950 800E4550 97AF0028 */  lhu        $t7, 0x28($sp)
/* BF954 800E4554 11AF0006 */  beq        $t5, $t7, .L800E4570
/* BF958 800E4558 00000000 */   nop
.L800E455C:
/* BF95C 800E455C 8FAE0024 */  lw         $t6, 0x24($sp)
/* BF960 800E4560 25D80001 */  addiu      $t8, $t6, 1
/* BF964 800E4564 2B010004 */  slti       $at, $t8, 4
/* BF968 800E4568 1420FFE0 */  bnez       $at, .L800E44EC
/* BF96C 800E456C AFB80024 */   sw        $t8, 0x24($sp)
.L800E4570:
/* BF970 800E4570 8FB90024 */  lw         $t9, 0x24($sp)
/* BF974 800E4574 24010004 */  addiu      $at, $zero, 4
/* BF978 800E4578 17210003 */  bne        $t9, $at, .L800E4588
/* BF97C 800E457C 00000000 */   nop
/* BF980 800E4580 1000001C */  b          .L800E45F4
/* BF984 800E4584 2402000A */   addiu     $v0, $zero, 0xa
.L800E4588:
/* BF988 800E4588 AFA00020 */  sw         $zero, 0x20($sp)
.L800E458C:
/* BF98C 800E458C 8FA80020 */  lw         $t0, 0x20($sp)
/* BF990 800E4590 8FA90024 */  lw         $t1, 0x24($sp)
/* BF994 800E4594 11090011 */  beq        $t0, $t1, .L800E45DC
/* BF998 800E4598 00000000 */   nop
/* BF99C 800E459C 8FAB0038 */  lw         $t3, 0x38($sp)
/* BF9A0 800E45A0 00086040 */  sll        $t4, $t0, 1
/* BF9A4 800E45A4 03AC3021 */  addu       $a2, $sp, $t4
/* BF9A8 800E45A8 94C60030 */  lhu        $a2, 0x30($a2)
/* BF9AC 800E45AC 240A0001 */  addiu      $t2, $zero, 1
/* BF9B0 800E45B0 8D640004 */  lw         $a0, 4($t3)
/* BF9B4 800E45B4 8D650008 */  lw         $a1, 8($t3)
/* BF9B8 800E45B8 AFAA0010 */  sw         $t2, 0x10($sp)
/* BF9BC 800E45BC 0C038440 */  jal        func_800E1100
/* BF9C0 800E45C0 8FA7003C */   lw        $a3, 0x3c($sp)
/* BF9C4 800E45C4 AFA2002C */  sw         $v0, 0x2c($sp)
/* BF9C8 800E45C8 8FAD002C */  lw         $t5, 0x2c($sp)
/* BF9CC 800E45CC 11A00003 */  beqz       $t5, .L800E45DC
/* BF9D0 800E45D0 00000000 */   nop
/* BF9D4 800E45D4 10000007 */  b          .L800E45F4
/* BF9D8 800E45D8 01A01025 */   or        $v0, $t5, $zero
.L800E45DC:
/* BF9DC 800E45DC 8FAF0020 */  lw         $t7, 0x20($sp)
/* BF9E0 800E45E0 25EE0001 */  addiu      $t6, $t7, 1
/* BF9E4 800E45E4 29C10004 */  slti       $at, $t6, 4
/* BF9E8 800E45E8 1420FFE8 */  bnez       $at, .L800E458C
/* BF9EC 800E45EC AFAE0020 */   sw        $t6, 0x20($sp)
/* BF9F0 800E45F0 00001025 */  or         $v0, $zero, $zero
.L800E45F4:
/* BF9F4 800E45F4 8FBF001C */  lw         $ra, 0x1c($sp)
/* BF9F8 800E45F8 27BD0038 */  addiu      $sp, $sp, 0x38
/* BF9FC 800E45FC 03E00008 */  jr         $ra
/* BFA00 800E4600 00000000 */   nop

glabel func_800E4604
/* BFA04 800E4604 27BDFF98 */  addiu      $sp, $sp, -0x68
/* BFA08 800E4608 AFA40068 */  sw         $a0, 0x68($sp)
/* BFA0C 800E460C 8FAE0068 */  lw         $t6, 0x68($sp)
/* BFA10 800E4610 AFBF0014 */  sw         $ra, 0x14($sp)
/* BFA14 800E4614 91CF0065 */  lbu        $t7, 0x65($t6)
/* BFA18 800E4618 11E0000A */  beqz       $t7, .L800E4644
/* BFA1C 800E461C 00000000 */   nop
/* BFA20 800E4620 A1C00065 */  sb         $zero, 0x65($t6)
/* BFA24 800E4624 0C03931F */  jal        func_800E4C7C
/* BFA28 800E4628 8FA40068 */   lw        $a0, 0x68($sp)
/* BFA2C 800E462C AFA2001C */  sw         $v0, 0x1c($sp)
/* BFA30 800E4630 8FB8001C */  lw         $t8, 0x1c($sp)
/* BFA34 800E4634 13000003 */  beqz       $t8, .L800E4644
/* BFA38 800E4638 00000000 */   nop
/* BFA3C 800E463C 10000084 */  b          .L800E4850
/* BFA40 800E4640 03001025 */   or        $v0, $t8, $zero
.L800E4644:
/* BFA44 800E4644 8FB90068 */  lw         $t9, 0x68($sp)
/* BFA48 800E4648 24060001 */  addiu      $a2, $zero, 1
/* BFA4C 800E464C 27A70040 */  addiu      $a3, $sp, 0x40
/* BFA50 800E4650 8F240004 */  lw         $a0, 4($t9)
/* BFA54 800E4654 0C03852C */  jal        func_800E14B0
/* BFA58 800E4658 8F250008 */   lw        $a1, 8($t9)
/* BFA5C 800E465C AFA2001C */  sw         $v0, 0x1c($sp)
/* BFA60 800E4660 8FA8001C */  lw         $t0, 0x1c($sp)
/* BFA64 800E4664 11000003 */  beqz       $t0, .L800E4674
/* BFA68 800E4668 00000000 */   nop
/* BFA6C 800E466C 10000078 */  b          .L800E4850
/* BFA70 800E4670 01001025 */   or        $v0, $t0, $zero
.L800E4674:
/* BFA74 800E4674 27A40040 */  addiu      $a0, $sp, 0x40
/* BFA78 800E4678 27A50062 */  addiu      $a1, $sp, 0x62
/* BFA7C 800E467C 0C038FFB */  jal        func_800E3FEC
/* BFA80 800E4680 27A60060 */   addiu     $a2, $sp, 0x60
/* BFA84 800E4684 27A90040 */  addiu      $t1, $sp, 0x40
/* BFA88 800E4688 AFA90018 */  sw         $t1, 0x18($sp)
/* BFA8C 800E468C 952A001C */  lhu        $t2, 0x1c($t1)
/* BFA90 800E4690 97AB0062 */  lhu        $t3, 0x62($sp)
/* BFA94 800E4694 154B0005 */  bne        $t2, $t3, .L800E46AC
/* BFA98 800E4698 00000000 */   nop
/* BFA9C 800E469C 952C001E */  lhu        $t4, 0x1e($t1)
/* BFAA0 800E46A0 97AD0060 */  lhu        $t5, 0x60($sp)
/* BFAA4 800E46A4 118D001B */  beq        $t4, $t5, .L800E4714
/* BFAA8 800E46A8 00000000 */   nop
.L800E46AC:
/* BFAAC 800E46AC 8FA40068 */  lw         $a0, 0x68($sp)
/* BFAB0 800E46B0 0C03911B */  jal        func_800E446C
/* BFAB4 800E46B4 8FA50018 */   lw        $a1, 0x18($sp)
/* BFAB8 800E46B8 AFA2001C */  sw         $v0, 0x1c($sp)
/* BFABC 800E46BC 8FAF001C */  lw         $t7, 0x1c($sp)
/* BFAC0 800E46C0 2401000A */  addiu      $at, $zero, 0xa
/* BFAC4 800E46C4 15E1000E */  bne        $t7, $at, .L800E4700
/* BFAC8 800E46C8 00000000 */   nop
/* BFACC 800E46CC 8FA40068 */  lw         $a0, 0x68($sp)
/* BFAD0 800E46D0 8FA50018 */  lw         $a1, 0x18($sp)
/* BFAD4 800E46D4 0C039015 */  jal        func_800E4054
/* BFAD8 800E46D8 27A60020 */   addiu     $a2, $sp, 0x20
/* BFADC 800E46DC AFA2001C */  sw         $v0, 0x1c($sp)
/* BFAE0 800E46E0 8FAE001C */  lw         $t6, 0x1c($sp)
/* BFAE4 800E46E4 11C00003 */  beqz       $t6, .L800E46F4
/* BFAE8 800E46E8 00000000 */   nop
/* BFAEC 800E46EC 10000058 */  b          .L800E4850
/* BFAF0 800E46F0 01C01025 */   or        $v0, $t6, $zero
.L800E46F4:
/* BFAF4 800E46F4 27B80020 */  addiu      $t8, $sp, 0x20
/* BFAF8 800E46F8 10000006 */  b          .L800E4714
/* BFAFC 800E46FC AFB80018 */   sw        $t8, 0x18($sp)
.L800E4700:
/* BFB00 800E4700 8FB9001C */  lw         $t9, 0x1c($sp)
/* BFB04 800E4704 13200003 */  beqz       $t9, .L800E4714
/* BFB08 800E4708 00000000 */   nop
/* BFB0C 800E470C 10000050 */  b          .L800E4850
/* BFB10 800E4710 03201025 */   or        $v0, $t9, $zero
.L800E4714:
/* BFB14 800E4714 8FA80018 */  lw         $t0, 0x18($sp)
/* BFB18 800E4718 950A0018 */  lhu        $t2, 0x18($t0)
/* BFB1C 800E471C 314B0001 */  andi       $t3, $t2, 1
/* BFB20 800E4720 15600013 */  bnez       $t3, .L800E4770
/* BFB24 800E4724 00000000 */   nop
/* BFB28 800E4728 8FA40068 */  lw         $a0, 0x68($sp)
/* BFB2C 800E472C 01002825 */  or         $a1, $t0, $zero
/* BFB30 800E4730 0C039015 */  jal        func_800E4054
/* BFB34 800E4734 27A60020 */   addiu     $a2, $sp, 0x20
/* BFB38 800E4738 AFA2001C */  sw         $v0, 0x1c($sp)
/* BFB3C 800E473C 8FA9001C */  lw         $t1, 0x1c($sp)
/* BFB40 800E4740 11200003 */  beqz       $t1, .L800E4750
/* BFB44 800E4744 00000000 */   nop
/* BFB48 800E4748 10000041 */  b          .L800E4850
/* BFB4C 800E474C 01201025 */   or        $v0, $t1, $zero
.L800E4750:
/* BFB50 800E4750 27AC0020 */  addiu      $t4, $sp, 0x20
/* BFB54 800E4754 AFAC0018 */  sw         $t4, 0x18($sp)
/* BFB58 800E4758 958D0018 */  lhu        $t5, 0x18($t4)
/* BFB5C 800E475C 31AF0001 */  andi       $t7, $t5, 1
/* BFB60 800E4760 15E00003 */  bnez       $t7, .L800E4770
/* BFB64 800E4764 00000000 */   nop
/* BFB68 800E4768 10000039 */  b          .L800E4850
/* BFB6C 800E476C 2402000B */   addiu     $v0, $zero, 0xb
.L800E4770:
/* BFB70 800E4770 AFA00064 */  sw         $zero, 0x64($sp)
.L800E4774:
/* BFB74 800E4774 8FAE0018 */  lw         $t6, 0x18($sp)
/* BFB78 800E4778 8FB80064 */  lw         $t8, 0x64($sp)
/* BFB7C 800E477C 8FAB0068 */  lw         $t3, 0x68($sp)
/* BFB80 800E4780 01D8C821 */  addu       $t9, $t6, $t8
/* BFB84 800E4784 932A0000 */  lbu        $t2, ($t9)
/* BFB88 800E4788 01784021 */  addu       $t0, $t3, $t8
/* BFB8C 800E478C A10A000C */  sb         $t2, 0xc($t0)
/* BFB90 800E4790 8FA90064 */  lw         $t1, 0x64($sp)
/* BFB94 800E4794 252C0001 */  addiu      $t4, $t1, 1
/* BFB98 800E4798 29810020 */  slti       $at, $t4, 0x20
/* BFB9C 800E479C 1420FFF5 */  bnez       $at, .L800E4774
/* BFBA0 800E47A0 AFAC0064 */   sw        $t4, 0x64($sp)
/* BFBA4 800E47A4 8FAD0018 */  lw         $t5, 0x18($sp)
/* BFBA8 800E47A8 8FAE0068 */  lw         $t6, 0x68($sp)
/* BFBAC 800E47AC 24060007 */  addiu      $a2, $zero, 7
/* BFBB0 800E47B0 91AF001B */  lbu        $t7, 0x1b($t5)
/* BFBB4 800E47B4 240D0010 */  addiu      $t5, $zero, 0x10
/* BFBB8 800E47B8 ADCF004C */  sw         $t7, 0x4c($t6)
/* BFBBC 800E47BC 8FB90018 */  lw         $t9, 0x18($sp)
/* BFBC0 800E47C0 8FB80068 */  lw         $t8, 0x68($sp)
/* BFBC4 800E47C4 240E0008 */  addiu      $t6, $zero, 8
/* BFBC8 800E47C8 932B001A */  lbu        $t3, 0x1a($t9)
/* BFBCC 800E47CC A30B0064 */  sb         $t3, 0x64($t8)
/* BFBD0 800E47D0 8FAA0068 */  lw         $t2, 0x68($sp)
/* BFBD4 800E47D4 91480064 */  lbu        $t0, 0x64($t2)
/* BFBD8 800E47D8 00084840 */  sll        $t1, $t0, 1
/* BFBDC 800E47DC 252C0003 */  addiu      $t4, $t1, 3
/* BFBE0 800E47E0 AD4C0060 */  sw         $t4, 0x60($t2)
/* BFBE4 800E47E4 8FAF0068 */  lw         $t7, 0x68($sp)
/* BFBE8 800E47E8 ADED0050 */  sw         $t5, 0x50($t7)
/* BFBEC 800E47EC 8FB90068 */  lw         $t9, 0x68($sp)
/* BFBF0 800E47F0 AF2E0054 */  sw         $t6, 0x54($t9)
/* BFBF4 800E47F4 8FAB0068 */  lw         $t3, 0x68($sp)
/* BFBF8 800E47F8 91780064 */  lbu        $t8, 0x64($t3)
/* BFBFC 800E47FC 001840C0 */  sll        $t0, $t8, 3
/* BFC00 800E4800 25090008 */  addiu      $t1, $t0, 8
/* BFC04 800E4804 AD690058 */  sw         $t1, 0x58($t3)
/* BFC08 800E4808 8FAC0068 */  lw         $t4, 0x68($sp)
/* BFC0C 800E480C 918D0064 */  lbu        $t5, 0x64($t4)
/* BFC10 800E4810 8D8A0058 */  lw         $t2, 0x58($t4)
/* BFC14 800E4814 000D78C0 */  sll        $t7, $t5, 3
/* BFC18 800E4818 014F7021 */  addu       $t6, $t2, $t7
/* BFC1C 800E481C AD8E005C */  sw         $t6, 0x5c($t4)
/* BFC20 800E4820 8FB90068 */  lw         $t9, 0x68($sp)
/* BFC24 800E4824 8F240004 */  lw         $a0, 4($t9)
/* BFC28 800E4828 8F250008 */  lw         $a1, 8($t9)
/* BFC2C 800E482C 0C03852C */  jal        func_800E14B0
/* BFC30 800E4830 2727002C */   addiu     $a3, $t9, 0x2c
/* BFC34 800E4834 AFA2001C */  sw         $v0, 0x1c($sp)
/* BFC38 800E4838 8FB8001C */  lw         $t8, 0x1c($sp)
/* BFC3C 800E483C 13000003 */  beqz       $t8, .L800E484C
/* BFC40 800E4840 00000000 */   nop
/* BFC44 800E4844 10000002 */  b          .L800E4850
/* BFC48 800E4848 03001025 */   or        $v0, $t8, $zero
.L800E484C:
/* BFC4C 800E484C 00001025 */  or         $v0, $zero, $zero
.L800E4850:
/* BFC50 800E4850 8FBF0014 */  lw         $ra, 0x14($sp)
/* BFC54 800E4854 27BD0068 */  addiu      $sp, $sp, 0x68
/* BFC58 800E4858 03E00008 */  jr         $ra
/* BFC5C 800E485C 00000000 */   nop

glabel func_800E4860
/* BFC60 800E4860 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BFC64 800E4864 AFA40040 */  sw         $a0, 0x40($sp)
/* BFC68 800E4868 8FAE0040 */  lw         $t6, 0x40($sp)
/* BFC6C 800E486C AFBF0014 */  sw         $ra, 0x14($sp)
/* BFC70 800E4870 91CF0065 */  lbu        $t7, 0x65($t6)
/* BFC74 800E4874 11E0000A */  beqz       $t7, .L800E48A0
/* BFC78 800E4878 00000000 */   nop
/* BFC7C 800E487C A1C00065 */  sb         $zero, 0x65($t6)
/* BFC80 800E4880 0C03931F */  jal        func_800E4C7C
/* BFC84 800E4884 8FA40040 */   lw        $a0, 0x40($sp)
/* BFC88 800E4888 AFA20018 */  sw         $v0, 0x18($sp)
/* BFC8C 800E488C 8FB80018 */  lw         $t8, 0x18($sp)
/* BFC90 800E4890 13000003 */  beqz       $t8, .L800E48A0
/* BFC94 800E4894 00000000 */   nop
/* BFC98 800E4898 1000002C */  b          .L800E494C
/* BFC9C 800E489C 03001025 */   or        $v0, $t8, $zero
.L800E48A0:
/* BFCA0 800E48A0 8FB90040 */  lw         $t9, 0x40($sp)
/* BFCA4 800E48A4 24060001 */  addiu      $a2, $zero, 1
/* BFCA8 800E48A8 27A7001C */  addiu      $a3, $sp, 0x1c
/* BFCAC 800E48AC 8F240004 */  lw         $a0, 4($t9)
/* BFCB0 800E48B0 0C03852C */  jal        func_800E14B0
/* BFCB4 800E48B4 8F250008 */   lw        $a1, 8($t9)
/* BFCB8 800E48B8 AFA20018 */  sw         $v0, 0x18($sp)
/* BFCBC 800E48BC 8FA80018 */  lw         $t0, 0x18($sp)
/* BFCC0 800E48C0 11000011 */  beqz       $t0, .L800E4908
/* BFCC4 800E48C4 24010002 */   addiu     $at, $zero, 2
/* BFCC8 800E48C8 11010003 */  beq        $t0, $at, .L800E48D8
/* BFCCC 800E48CC 00000000 */   nop
/* BFCD0 800E48D0 1000001E */  b          .L800E494C
/* BFCD4 800E48D4 01001025 */   or        $v0, $t0, $zero
.L800E48D8:
/* BFCD8 800E48D8 8FA90040 */  lw         $t1, 0x40($sp)
/* BFCDC 800E48DC 24060001 */  addiu      $a2, $zero, 1
/* BFCE0 800E48E0 27A7001C */  addiu      $a3, $sp, 0x1c
/* BFCE4 800E48E4 8D240004 */  lw         $a0, 4($t1)
/* BFCE8 800E48E8 0C03852C */  jal        func_800E14B0
/* BFCEC 800E48EC 8D250008 */   lw        $a1, 8($t1)
/* BFCF0 800E48F0 AFA20018 */  sw         $v0, 0x18($sp)
/* BFCF4 800E48F4 8FAA0018 */  lw         $t2, 0x18($sp)
/* BFCF8 800E48F8 11400003 */  beqz       $t2, .L800E4908
/* BFCFC 800E48FC 00000000 */   nop
/* BFD00 800E4900 10000012 */  b          .L800E494C
/* BFD04 800E4904 01401025 */   or        $v0, $t2, $zero
.L800E4908:
/* BFD08 800E4908 AFA0003C */  sw         $zero, 0x3c($sp)
.L800E490C:
/* BFD0C 800E490C 8FAB003C */  lw         $t3, 0x3c($sp)
/* BFD10 800E4910 8FAD0040 */  lw         $t5, 0x40($sp)
/* BFD14 800E4914 03AB6021 */  addu       $t4, $sp, $t3
/* BFD18 800E4918 01AB7821 */  addu       $t7, $t5, $t3
/* BFD1C 800E491C 91EE000C */  lbu        $t6, 0xc($t7)
/* BFD20 800E4920 918C001C */  lbu        $t4, 0x1c($t4)
/* BFD24 800E4924 118E0003 */  beq        $t4, $t6, .L800E4934
/* BFD28 800E4928 00000000 */   nop
/* BFD2C 800E492C 10000007 */  b          .L800E494C
/* BFD30 800E4930 24020002 */   addiu     $v0, $zero, 2
.L800E4934:
/* BFD34 800E4934 8FB8003C */  lw         $t8, 0x3c($sp)
/* BFD38 800E4938 27190001 */  addiu      $t9, $t8, 1
/* BFD3C 800E493C 2B210020 */  slti       $at, $t9, 0x20
/* BFD40 800E4940 1420FFF2 */  bnez       $at, .L800E490C
/* BFD44 800E4944 AFB9003C */   sw        $t9, 0x3c($sp)
/* BFD48 800E4948 00001025 */  or         $v0, $zero, $zero
.L800E494C:
/* BFD4C 800E494C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BFD50 800E4950 27BD0040 */  addiu      $sp, $sp, 0x40
/* BFD54 800E4954 03E00008 */  jr         $ra
/* BFD58 800E4958 00000000 */   nop

glabel func_800E495C
/* BFD5C 800E495C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BFD60 800E4960 AFA40038 */  sw         $a0, 0x38($sp)
/* BFD64 800E4964 8FAE0038 */  lw         $t6, 0x38($sp)
/* BFD68 800E4968 AFBF001C */  sw         $ra, 0x1c($sp)
/* BFD6C 800E496C AFA5003C */  sw         $a1, 0x3c($sp)
/* BFD70 800E4970 AFA60040 */  sw         $a2, 0x40($sp)
/* BFD74 800E4974 AFA70044 */  sw         $a3, 0x44($sp)
/* BFD78 800E4978 91CF0065 */  lbu        $t7, 0x65($t6)
/* BFD7C 800E497C 11E0000A */  beqz       $t7, .L800E49A8
/* BFD80 800E4980 00000000 */   nop
/* BFD84 800E4984 A1C00065 */  sb         $zero, 0x65($t6)
/* BFD88 800E4988 0C03931F */  jal        func_800E4C7C
/* BFD8C 800E498C 8FA40038 */   lw        $a0, 0x38($sp)
/* BFD90 800E4990 AFA2002C */  sw         $v0, 0x2c($sp)
/* BFD94 800E4994 8FB8002C */  lw         $t8, 0x2c($sp)
/* BFD98 800E4998 13000003 */  beqz       $t8, .L800E49A8
/* BFD9C 800E499C 00000000 */   nop
/* BFDA0 800E49A0 100000B2 */  b          .L800E4C6C
/* BFDA4 800E49A4 03001025 */   or        $v0, $t8, $zero
.L800E49A8:
/* BFDA8 800E49A8 93B90047 */  lbu        $t9, 0x47($sp)
/* BFDAC 800E49AC 1B200004 */  blez       $t9, .L800E49C0
/* BFDB0 800E49B0 00000000 */   nop
/* BFDB4 800E49B4 24080001 */  addiu      $t0, $zero, 1
/* BFDB8 800E49B8 10000004 */  b          .L800E49CC
/* BFDBC 800E49BC AFA80028 */   sw        $t0, 0x28($sp)
.L800E49C0:
/* BFDC0 800E49C0 8FA90038 */  lw         $t1, 0x38($sp)
/* BFDC4 800E49C4 8D2A0060 */  lw         $t2, 0x60($t1)
/* BFDC8 800E49C8 AFAA0028 */  sw         $t2, 0x28($sp)
.L800E49CC:
/* BFDCC 800E49CC 93AB0043 */  lbu        $t3, 0x43($sp)
/* BFDD0 800E49D0 24010001 */  addiu      $at, $zero, 1
/* BFDD4 800E49D4 1561000C */  bne        $t3, $at, .L800E4A08
/* BFDD8 800E49D8 00000000 */   nop
/* BFDDC 800E49DC 8FAD0028 */  lw         $t5, 0x28($sp)
/* BFDE0 800E49E0 8FAC003C */  lw         $t4, 0x3c($sp)
/* BFDE4 800E49E4 000D2823 */  negu       $a1, $t5
/* BFDE8 800E49E8 00057040 */  sll        $t6, $a1, 1
/* BFDEC 800E49EC 01C02825 */  or         $a1, $t6, $zero
/* BFDF0 800E49F0 000D7840 */  sll        $t7, $t5, 1
/* BFDF4 800E49F4 24A50100 */  addiu      $a1, $a1, 0x100
/* BFDF8 800E49F8 0C038FE4 */  jal        func_800E3F90
/* BFDFC 800E49FC 018F2021 */   addu      $a0, $t4, $t7
/* BFE00 800E4A00 8FB8003C */  lw         $t8, 0x3c($sp)
/* BFE04 800E4A04 A3020001 */  sb         $v0, 1($t8)
.L800E4A08:
/* BFE08 800E4A08 AFA00030 */  sw         $zero, 0x30($sp)
.L800E4A0C:
/* BFE0C 800E4A0C 8FA80030 */  lw         $t0, 0x30($sp)
/* BFE10 800E4A10 8FB9003C */  lw         $t9, 0x3c($sp)
/* BFE14 800E4A14 93AB0043 */  lbu        $t3, 0x43($sp)
/* BFE18 800E4A18 00084940 */  sll        $t1, $t0, 5
/* BFE1C 800E4A1C 24010001 */  addiu      $at, $zero, 1
/* BFE20 800E4A20 03295021 */  addu       $t2, $t9, $t1
/* BFE24 800E4A24 1561001B */  bne        $t3, $at, .L800E4A94
/* BFE28 800E4A28 AFAA0024 */   sw        $t2, 0x24($sp)
/* BFE2C 800E4A2C 8FAC0038 */  lw         $t4, 0x38($sp)
/* BFE30 800E4A30 93AD0047 */  lbu        $t5, 0x47($sp)
/* BFE34 800E4A34 01403825 */  or         $a3, $t2, $zero
/* BFE38 800E4A38 8D8F0054 */  lw         $t7, 0x54($t4)
/* BFE3C 800E4A3C 000D70C0 */  sll        $t6, $t5, 3
/* BFE40 800E4A40 8D840004 */  lw         $a0, 4($t4)
/* BFE44 800E4A44 8D850008 */  lw         $a1, 8($t4)
/* BFE48 800E4A48 01EEC021 */  addu       $t8, $t7, $t6
/* BFE4C 800E4A4C 03083021 */  addu       $a2, $t8, $t0
/* BFE50 800E4A50 0C038440 */  jal        func_800E1100
/* BFE54 800E4A54 AFA00010 */   sw        $zero, 0x10($sp)
/* BFE58 800E4A58 8FB90038 */  lw         $t9, 0x38($sp)
/* BFE5C 800E4A5C 93AB0047 */  lbu        $t3, 0x47($sp)
/* BFE60 800E4A60 AFA2002C */  sw         $v0, 0x2c($sp)
/* BFE64 800E4A64 8F290058 */  lw         $t1, 0x58($t9)
/* BFE68 800E4A68 8FAF0030 */  lw         $t7, 0x30($sp)
/* BFE6C 800E4A6C 000B60C0 */  sll        $t4, $t3, 3
/* BFE70 800E4A70 8F250008 */  lw         $a1, 8($t9)
/* BFE74 800E4A74 8F240004 */  lw         $a0, 4($t9)
/* BFE78 800E4A78 012C6821 */  addu       $t5, $t1, $t4
/* BFE7C 800E4A7C AFA00010 */  sw         $zero, 0x10($sp)
/* BFE80 800E4A80 8FA70024 */  lw         $a3, 0x24($sp)
/* BFE84 800E4A84 0C038440 */  jal        func_800E1100
/* BFE88 800E4A88 01AF3021 */   addu      $a2, $t5, $t7
/* BFE8C 800E4A8C 1000000D */  b          .L800E4AC4
/* BFE90 800E4A90 AFA2002C */   sw        $v0, 0x2c($sp)
.L800E4A94:
/* BFE94 800E4A94 8FAE0038 */  lw         $t6, 0x38($sp)
/* BFE98 800E4A98 93A80047 */  lbu        $t0, 0x47($sp)
/* BFE9C 800E4A9C 8FAB0030 */  lw         $t3, 0x30($sp)
/* BFEA0 800E4AA0 8DD80054 */  lw         $t8, 0x54($t6)
/* BFEA4 800E4AA4 000850C0 */  sll        $t2, $t0, 3
/* BFEA8 800E4AA8 8FA70024 */  lw         $a3, 0x24($sp)
/* BFEAC 800E4AAC 030AC821 */  addu       $t9, $t8, $t2
/* BFEB0 800E4AB0 8DC40004 */  lw         $a0, 4($t6)
/* BFEB4 800E4AB4 8DC50008 */  lw         $a1, 8($t6)
/* BFEB8 800E4AB8 0C03852C */  jal        func_800E14B0
/* BFEBC 800E4ABC 032B3021 */   addu      $a2, $t9, $t3
/* BFEC0 800E4AC0 AFA2002C */  sw         $v0, 0x2c($sp)
.L800E4AC4:
/* BFEC4 800E4AC4 8FA9002C */  lw         $t1, 0x2c($sp)
/* BFEC8 800E4AC8 11200003 */  beqz       $t1, .L800E4AD8
/* BFECC 800E4ACC 00000000 */   nop
/* BFED0 800E4AD0 10000066 */  b          .L800E4C6C
/* BFED4 800E4AD4 01201025 */   or        $v0, $t1, $zero
.L800E4AD8:
/* BFED8 800E4AD8 8FAC0030 */  lw         $t4, 0x30($sp)
/* BFEDC 800E4ADC 258D0001 */  addiu      $t5, $t4, 1
/* BFEE0 800E4AE0 29A10008 */  slti       $at, $t5, 8
/* BFEE4 800E4AE4 1420FFC9 */  bnez       $at, .L800E4A0C
/* BFEE8 800E4AE8 AFAD0030 */   sw        $t5, 0x30($sp)
/* BFEEC 800E4AEC 93AF0043 */  lbu        $t7, 0x43($sp)
/* BFEF0 800E4AF0 15E0005D */  bnez       $t7, .L800E4C68
/* BFEF4 800E4AF4 00000000 */   nop
/* BFEF8 800E4AF8 8FA80028 */  lw         $t0, 0x28($sp)
/* BFEFC 800E4AFC 8FAE003C */  lw         $t6, 0x3c($sp)
/* BFF00 800E4B00 00082823 */  negu       $a1, $t0
/* BFF04 800E4B04 00055040 */  sll        $t2, $a1, 1
/* BFF08 800E4B08 01402825 */  or         $a1, $t2, $zero
/* BFF0C 800E4B0C 0008C040 */  sll        $t8, $t0, 1
/* BFF10 800E4B10 24A50100 */  addiu      $a1, $a1, 0x100
/* BFF14 800E4B14 0C038FE4 */  jal        func_800E3F90
/* BFF18 800E4B18 01D82021 */   addu      $a0, $t6, $t8
/* BFF1C 800E4B1C 8FB9003C */  lw         $t9, 0x3c($sp)
/* BFF20 800E4B20 A3A20037 */  sb         $v0, 0x37($sp)
/* BFF24 800E4B24 93A90037 */  lbu        $t1, 0x37($sp)
/* BFF28 800E4B28 932B0001 */  lbu        $t3, 1($t9)
/* BFF2C 800E4B2C 11690037 */  beq        $t3, $t1, .L800E4C0C
/* BFF30 800E4B30 00000000 */   nop
/* BFF34 800E4B34 AFA00030 */  sw         $zero, 0x30($sp)
.L800E4B38:
/* BFF38 800E4B38 8FAD0030 */  lw         $t5, 0x30($sp)
/* BFF3C 800E4B3C 8FAC003C */  lw         $t4, 0x3c($sp)
/* BFF40 800E4B40 8FB80038 */  lw         $t8, 0x38($sp)
/* BFF44 800E4B44 000D7940 */  sll        $t7, $t5, 5
/* BFF48 800E4B48 018F7021 */  addu       $t6, $t4, $t7
/* BFF4C 800E4B4C 93AA0047 */  lbu        $t2, 0x47($sp)
/* BFF50 800E4B50 AFAE0024 */  sw         $t6, 0x24($sp)
/* BFF54 800E4B54 8F080058 */  lw         $t0, 0x58($t8)
/* BFF58 800E4B58 000AC8C0 */  sll        $t9, $t2, 3
/* BFF5C 800E4B5C 01C03825 */  or         $a3, $t6, $zero
/* BFF60 800E4B60 01195821 */  addu       $t3, $t0, $t9
/* BFF64 800E4B64 016D3021 */  addu       $a2, $t3, $t5
/* BFF68 800E4B68 8F050008 */  lw         $a1, 8($t8)
/* BFF6C 800E4B6C 0C03852C */  jal        func_800E14B0
/* BFF70 800E4B70 8F040004 */   lw        $a0, 4($t8)
/* BFF74 800E4B74 8FA90030 */  lw         $t1, 0x30($sp)
/* BFF78 800E4B78 AFA2002C */  sw         $v0, 0x2c($sp)
/* BFF7C 800E4B7C 252C0001 */  addiu      $t4, $t1, 1
/* BFF80 800E4B80 29810008 */  slti       $at, $t4, 8
/* BFF84 800E4B84 1420FFEC */  bnez       $at, .L800E4B38
/* BFF88 800E4B88 AFAC0030 */   sw        $t4, 0x30($sp)
/* BFF8C 800E4B8C 8FAF003C */  lw         $t7, 0x3c($sp)
/* BFF90 800E4B90 93AA0037 */  lbu        $t2, 0x37($sp)
/* BFF94 800E4B94 91F80001 */  lbu        $t8, 1($t7)
/* BFF98 800E4B98 130A0003 */  beq        $t8, $t2, .L800E4BA8
/* BFF9C 800E4B9C 00000000 */   nop
/* BFFA0 800E4BA0 10000032 */  b          .L800E4C6C
/* BFFA4 800E4BA4 24020003 */   addiu     $v0, $zero, 3
.L800E4BA8:
/* BFFA8 800E4BA8 AFA00030 */  sw         $zero, 0x30($sp)
.L800E4BAC:
/* BFFAC 800E4BAC 8FB90030 */  lw         $t9, 0x30($sp)
/* BFFB0 800E4BB0 8FA8003C */  lw         $t0, 0x3c($sp)
/* BFFB4 800E4BB4 8FAE0038 */  lw         $t6, 0x38($sp)
/* BFFB8 800E4BB8 00195940 */  sll        $t3, $t9, 5
/* BFFBC 800E4BBC 010B6821 */  addu       $t5, $t0, $t3
/* BFFC0 800E4BC0 93AC0047 */  lbu        $t4, 0x47($sp)
/* BFFC4 800E4BC4 AFAD0024 */  sw         $t5, 0x24($sp)
/* BFFC8 800E4BC8 8DC90054 */  lw         $t1, 0x54($t6)
/* BFFCC 800E4BCC 000C78C0 */  sll        $t7, $t4, 3
/* BFFD0 800E4BD0 8DC50008 */  lw         $a1, 8($t6)
/* BFFD4 800E4BD4 8DC40004 */  lw         $a0, 4($t6)
/* BFFD8 800E4BD8 012FC021 */  addu       $t8, $t1, $t7
/* BFFDC 800E4BDC AFA00010 */  sw         $zero, 0x10($sp)
/* BFFE0 800E4BE0 01A03825 */  or         $a3, $t5, $zero
/* BFFE4 800E4BE4 0C038440 */  jal        func_800E1100
/* BFFE8 800E4BE8 03193021 */   addu      $a2, $t8, $t9
/* BFFEC 800E4BEC 8FAA0030 */  lw         $t2, 0x30($sp)
/* BFFF0 800E4BF0 AFA2002C */  sw         $v0, 0x2c($sp)
/* BFFF4 800E4BF4 25480001 */  addiu      $t0, $t2, 1
/* BFFF8 800E4BF8 29010008 */  slti       $at, $t0, 8
/* BFFFC 800E4BFC 1420FFEB */  bnez       $at, .L800E4BAC
/* C0000 800E4C00 AFA80030 */   sw        $t0, 0x30($sp)
/* C0004 800E4C04 10000018 */  b          .L800E4C68
/* C0008 800E4C08 00000000 */   nop
.L800E4C0C:
/* C000C 800E4C0C AFA00030 */  sw         $zero, 0x30($sp)
.L800E4C10:
/* C0010 800E4C10 8FAE0030 */  lw         $t6, 0x30($sp)
/* C0014 800E4C14 8FAB003C */  lw         $t3, 0x3c($sp)
/* C0018 800E4C18 8FAF0038 */  lw         $t7, 0x38($sp)
/* C001C 800E4C1C 000E6140 */  sll        $t4, $t6, 5
/* C0020 800E4C20 016C4821 */  addu       $t1, $t3, $t4
/* C0024 800E4C24 93B90047 */  lbu        $t9, 0x47($sp)
/* C0028 800E4C28 AFA90024 */  sw         $t1, 0x24($sp)
/* C002C 800E4C2C 8DF80058 */  lw         $t8, 0x58($t7)
/* C0030 800E4C30 001968C0 */  sll        $t5, $t9, 3
/* C0034 800E4C34 8DE50008 */  lw         $a1, 8($t7)
/* C0038 800E4C38 8DE40004 */  lw         $a0, 4($t7)
/* C003C 800E4C3C 030D5021 */  addu       $t2, $t8, $t5
/* C0040 800E4C40 AFA00010 */  sw         $zero, 0x10($sp)
/* C0044 800E4C44 01203825 */  or         $a3, $t1, $zero
/* C0048 800E4C48 0C038440 */  jal        func_800E1100
/* C004C 800E4C4C 014E3021 */   addu      $a2, $t2, $t6
/* C0050 800E4C50 8FA80030 */  lw         $t0, 0x30($sp)
/* C0054 800E4C54 AFA2002C */  sw         $v0, 0x2c($sp)
/* C0058 800E4C58 250B0001 */  addiu      $t3, $t0, 1
/* C005C 800E4C5C 29610008 */  slti       $at, $t3, 8
/* C0060 800E4C60 1420FFEB */  bnez       $at, .L800E4C10
/* C0064 800E4C64 AFAB0030 */   sw        $t3, 0x30($sp)
.L800E4C68:
/* C0068 800E4C68 00001025 */  or         $v0, $zero, $zero
.L800E4C6C:
/* C006C 800E4C6C 8FBF001C */  lw         $ra, 0x1c($sp)
/* C0070 800E4C70 27BD0038 */  addiu      $sp, $sp, 0x38
/* C0074 800E4C74 03E00008 */  jr         $ra
/* C0078 800E4C78 00000000 */   nop

glabel func_800E4C7C
/* C007C 800E4C7C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C0080 800E4C80 AFBF001C */  sw         $ra, 0x1c($sp)
/* C0084 800E4C84 AFA40048 */  sw         $a0, 0x48($sp)
/* C0088 800E4C88 AFA00020 */  sw         $zero, 0x20($sp)
/* C008C 800E4C8C AFA00024 */  sw         $zero, 0x24($sp)
.L800E4C90:
/* C0090 800E4C90 8FAE0048 */  lw         $t6, 0x48($sp)
/* C0094 800E4C94 8FB80024 */  lw         $t8, 0x24($sp)
/* C0098 800E4C98 91CF0065 */  lbu        $t7, 0x65($t6)
/* C009C 800E4C9C 03B8C821 */  addu       $t9, $sp, $t8
/* C00A0 800E4CA0 A32F0028 */  sb         $t7, 0x28($t9)
/* C00A4 800E4CA4 8FA80024 */  lw         $t0, 0x24($sp)
/* C00A8 800E4CA8 25090001 */  addiu      $t1, $t0, 1
/* C00AC 800E4CAC 29210020 */  slti       $at, $t1, 0x20
/* C00B0 800E4CB0 1420FFF7 */  bnez       $at, .L800E4C90
/* C00B4 800E4CB4 AFA90024 */   sw        $t1, 0x24($sp)
/* C00B8 800E4CB8 8FAA0048 */  lw         $t2, 0x48($sp)
/* C00BC 800E4CBC 24060400 */  addiu      $a2, $zero, 0x400
/* C00C0 800E4CC0 27A70028 */  addiu      $a3, $sp, 0x28
/* C00C4 800E4CC4 8D440004 */  lw         $a0, 4($t2)
/* C00C8 800E4CC8 8D450008 */  lw         $a1, 8($t2)
/* C00CC 800E4CCC 0C038440 */  jal        func_800E1100
/* C00D0 800E4CD0 AFA00010 */   sw        $zero, 0x10($sp)
/* C00D4 800E4CD4 8FBF001C */  lw         $ra, 0x1c($sp)
/* C00D8 800E4CD8 AFA20020 */  sw         $v0, 0x20($sp)
/* C00DC 800E4CDC 8FA20020 */  lw         $v0, 0x20($sp)
/* C00E0 800E4CE0 03E00008 */  jr         $ra
/* C00E4 800E4CE4 27BD0048 */   addiu     $sp, $sp, 0x48
/* C00E8 800E4CE8 00000000 */  nop
/* C00EC 800E4CEC 00000000 */  nop
