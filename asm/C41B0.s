.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8DB0
/* C41B0 800E8DB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C41B4 800E8DB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C41B8 800E8DB8 3C05800F */  lui        $a1, %hi(D_800EB334)
/* C41BC 800E8DBC 3C06800F */  lui        $a2, %hi(func_800EB300)
/* C41C0 800E8DC0 24C6B300 */  addiu      $a2, $a2, %lo(func_800EB300)
/* C41C4 800E8DC4 24A5B334 */  addiu      $a1, $a1, %lo(D_800EB334)
/* C41C8 800E8DC8 AFA40018 */  sw         $a0, 0x18($sp)
/* C41CC 800E8DCC 0C03B4F0 */  jal        func_800ED3C0
/* C41D0 800E8DD0 24070003 */   addiu     $a3, $zero, 3
/* C41D4 800E8DD4 8FA40018 */  lw         $a0, 0x18($sp)
/* C41D8 800E8DD8 240E0001 */  addiu      $t6, $zero, 1
/* C41DC 800E8DDC AC800014 */  sw         $zero, 0x14($a0)
/* C41E0 800E8DE0 AC8E0018 */  sw         $t6, 0x18($a0)
/* C41E4 800E8DE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* C41E8 800E8DE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* C41EC 800E8DEC 03E00008 */  jr         $ra
/* C41F0 800E8DF0 00000000 */   nop

glabel func_800E8DF4
/* C41F4 800E8DF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C41F8 800E8DF8 AFA5001C */  sw         $a1, 0x1c($sp)
/* C41FC 800E8DFC AFA60020 */  sw         $a2, 0x20($sp)
/* C4200 800E8E00 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4204 800E8E04 3C06800F */  lui        $a2, %hi(func_800E95F0)
/* C4208 800E8E08 3C05800F */  lui        $a1, %hi(D_800E9620)
/* C420C 800E8E0C 24A59620 */  addiu      $a1, $a1, %lo(D_800E9620)
/* C4210 800E8E10 24C695F0 */  addiu      $a2, $a2, %lo(func_800E95F0)
/* C4214 800E8E14 AFA40018 */  sw         $a0, 0x18($sp)
/* C4218 800E8E18 0C03B4F0 */  jal        func_800ED3C0
/* C421C 800E8E1C 24070007 */   addiu     $a3, $zero, 7
/* C4220 800E8E20 8FA40018 */  lw         $a0, 0x18($sp)
/* C4224 800E8E24 AC800014 */  sw         $zero, 0x14($a0)
/* C4228 800E8E28 8FAE0020 */  lw         $t6, 0x20($sp)
/* C422C 800E8E2C AC8E0018 */  sw         $t6, 0x18($a0)
/* C4230 800E8E30 8FAF001C */  lw         $t7, 0x1c($sp)
/* C4234 800E8E34 AC8F001C */  sw         $t7, 0x1c($a0)
/* C4238 800E8E38 8FBF0014 */  lw         $ra, 0x14($sp)
/* C423C 800E8E3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* C4240 800E8E40 03E00008 */  jr         $ra
/* C4244 800E8E44 00000000 */   nop

glabel func_800E8E48
/* C4248 800E8E48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C424C 800E8E4C AFA5001C */  sw         $a1, 0x1c($sp)
/* C4250 800E8E50 AFA60020 */  sw         $a2, 0x20($sp)
/* C4254 800E8E54 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4258 800E8E58 3C06800F */  lui        $a2, %hi(func_800EB1F0)
/* C425C 800E8E5C 3C05800F */  lui        $a1, %hi(D_800EB220)
/* C4260 800E8E60 24A5B220 */  addiu      $a1, $a1, %lo(D_800EB220)
/* C4264 800E8E64 24C6B1F0 */  addiu      $a2, $a2, %lo(func_800EB1F0)
/* C4268 800E8E68 AFA40018 */  sw         $a0, 0x18($sp)
/* C426C 800E8E6C 0C03B4F0 */  jal        func_800ED3C0
/* C4270 800E8E70 24070006 */   addiu     $a3, $zero, 6
/* C4274 800E8E74 8FA40018 */  lw         $a0, 0x18($sp)
/* C4278 800E8E78 AC800014 */  sw         $zero, 0x14($a0)
/* C427C 800E8E7C 8FAE0020 */  lw         $t6, 0x20($sp)
/* C4280 800E8E80 AC8E0018 */  sw         $t6, 0x18($a0)
/* C4284 800E8E84 8FAF001C */  lw         $t7, 0x1c($sp)
/* C4288 800E8E88 AC8F001C */  sw         $t7, 0x1c($a0)
/* C428C 800E8E8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C4290 800E8E90 27BD0018 */  addiu      $sp, $sp, 0x18
/* C4294 800E8E94 03E00008 */  jr         $ra
/* C4298 800E8E98 00000000 */   nop

glabel func_800E8E9C
/* C429C 800E8E9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C42A0 800E8EA0 AFA50024 */  sw         $a1, 0x24($sp)
/* C42A4 800E8EA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C42A8 800E8EA8 3C05800F */  lui        $a1, %hi(D_800EA37C)
/* C42AC 800E8EAC 3C06800F */  lui        $a2, %hi(func_800EA290)
/* C42B0 800E8EB0 24C6A290 */  addiu      $a2, $a2, %lo(func_800EA290)
/* C42B4 800E8EB4 24A5A37C */  addiu      $a1, $a1, %lo(D_800EA37C)
/* C42B8 800E8EB8 AFA40020 */  sw         $a0, 0x20($sp)
/* C42BC 800E8EBC 0C03B4F0 */  jal        func_800ED3C0
/* C42C0 800E8EC0 24070001 */   addiu     $a3, $zero, 1
/* C42C4 800E8EC4 240E0020 */  addiu      $t6, $zero, 0x20
/* C42C8 800E8EC8 AFAE0010 */  sw         $t6, 0x10($sp)
/* C42CC 800E8ECC 00002025 */  or         $a0, $zero, $zero
/* C42D0 800E8ED0 00002825 */  or         $a1, $zero, $zero
/* C42D4 800E8ED4 8FA60024 */  lw         $a2, 0x24($sp)
/* C42D8 800E8ED8 0C037278 */  jal        func_800DC9E0
/* C42DC 800E8EDC 24070001 */   addiu     $a3, $zero, 1
/* C42E0 800E8EE0 8FA80020 */  lw         $t0, 0x20($sp)
/* C42E4 800E8EE4 3C013F80 */  lui        $at, 0x3f80
/* C42E8 800E8EE8 44802000 */  mtc1       $zero, $f4
/* C42EC 800E8EEC 44813000 */  mtc1       $at, $f6
/* C42F0 800E8EF0 240F0001 */  addiu      $t7, $zero, 1
/* C42F4 800E8EF4 AD020014 */  sw         $v0, 0x14($t0)
/* C42F8 800E8EF8 AD0F0024 */  sw         $t7, 0x24($t0)
/* C42FC 800E8EFC AD000030 */  sw         $zero, 0x30($t0)
/* C4300 800E8F00 AD00001C */  sw         $zero, 0x1c($t0)
/* C4304 800E8F04 AD000028 */  sw         $zero, 0x28($t0)
/* C4308 800E8F08 AD00002C */  sw         $zero, 0x2c($t0)
/* C430C 800E8F0C E5040020 */  swc1       $f4, 0x20($t0)
/* C4310 800E8F10 E5060018 */  swc1       $f6, 0x18($t0)
/* C4314 800E8F14 8FBF001C */  lw         $ra, 0x1c($sp)
/* C4318 800E8F18 27BD0020 */  addiu      $sp, $sp, 0x20
/* C431C 800E8F1C 03E00008 */  jr         $ra
/* C4320 800E8F20 00000000 */   nop

glabel func_800E8F24
/* C4324 800E8F24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C4328 800E8F28 AFA5002C */  sw         $a1, 0x2c($sp)
/* C432C 800E8F2C AFA60030 */  sw         $a2, 0x30($sp)
/* C4330 800E8F30 AFBF0024 */  sw         $ra, 0x24($sp)
/* C4334 800E8F34 AFB00020 */  sw         $s0, 0x20($sp)
/* C4338 800E8F38 3C06800F */  lui        $a2, %hi(func_800E9740)
/* C433C 800E8F3C 3C05800F */  lui        $a1, %hi(D_800E9DEC)
/* C4340 800E8F40 00808025 */  or         $s0, $a0, $zero
/* C4344 800E8F44 24A59DEC */  addiu      $a1, $a1, %lo(D_800E9DEC)
/* C4348 800E8F48 24C69740 */  addiu      $a2, $a2, %lo(func_800E9740)
/* C434C 800E8F4C 0C03B4F0 */  jal        func_800ED3C0
/* C4350 800E8F50 00003825 */   or        $a3, $zero, $zero
/* C4354 800E8F54 240E0020 */  addiu      $t6, $zero, 0x20
/* C4358 800E8F58 AFAE0010 */  sw         $t6, 0x10($sp)
/* C435C 800E8F5C 00002025 */  or         $a0, $zero, $zero
/* C4360 800E8F60 00002825 */  or         $a1, $zero, $zero
/* C4364 800E8F64 8FA60030 */  lw         $a2, 0x30($sp)
/* C4368 800E8F68 0C037278 */  jal        func_800DC9E0
/* C436C 800E8F6C 24070001 */   addiu     $a3, $zero, 1
/* C4370 800E8F70 AE020014 */  sw         $v0, 0x14($s0)
/* C4374 800E8F74 240F0020 */  addiu      $t7, $zero, 0x20
/* C4378 800E8F78 AFAF0010 */  sw         $t7, 0x10($sp)
/* C437C 800E8F7C 8FA60030 */  lw         $a2, 0x30($sp)
/* C4380 800E8F80 00002025 */  or         $a0, $zero, $zero
/* C4384 800E8F84 00002825 */  or         $a1, $zero, $zero
/* C4388 800E8F88 0C037278 */  jal        func_800DC9E0
/* C438C 800E8F8C 24070001 */   addiu     $a3, $zero, 1
/* C4390 800E8F90 AE020018 */  sw         $v0, 0x18($s0)
/* C4394 800E8F94 8FB9002C */  lw         $t9, 0x2c($sp)
/* C4398 800E8F98 26040034 */  addiu      $a0, $s0, 0x34
/* C439C 800E8F9C 0320F809 */  jalr       $t9
/* C43A0 800E8FA0 00000000 */   nop
/* C43A4 800E8FA4 24180001 */  addiu      $t8, $zero, 1
/* C43A8 800E8FA8 AE020030 */  sw         $v0, 0x30($s0)
/* C43AC 800E8FAC AE00003C */  sw         $zero, 0x3c($s0)
/* C43B0 800E8FB0 AE180040 */  sw         $t8, 0x40($s0)
/* C43B4 800E8FB4 AE000044 */  sw         $zero, 0x44($s0)
/* C43B8 800E8FB8 8FBF0024 */  lw         $ra, 0x24($sp)
/* C43BC 800E8FBC 8FB00020 */  lw         $s0, 0x20($sp)
/* C43C0 800E8FC0 27BD0028 */  addiu      $sp, $sp, 0x28
/* C43C4 800E8FC4 03E00008 */  jr         $ra
/* C43C8 800E8FC8 00000000 */   nop

glabel func_800E8FCC
/* C43CC 800E8FCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C43D0 800E8FD0 AFA50024 */  sw         $a1, 0x24($sp)
/* C43D4 800E8FD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C43D8 800E8FD8 3C05800F */  lui        $a1, %hi(D_800EAC9C)
/* C43DC 800E8FDC 3C06800F */  lui        $a2, %hi(func_800EA6A4)
/* C43E0 800E8FE0 24C6A6A4 */  addiu      $a2, $a2, %lo(func_800EA6A4)
/* C43E4 800E8FE4 24A5AC9C */  addiu      $a1, $a1, %lo(D_800EAC9C)
/* C43E8 800E8FE8 AFA40020 */  sw         $a0, 0x20($sp)
/* C43EC 800E8FEC 0C03B4F0 */  jal        func_800ED3C0
/* C43F0 800E8FF0 24070004 */   addiu     $a3, $zero, 4
/* C43F4 800E8FF4 240E0050 */  addiu      $t6, $zero, 0x50
/* C43F8 800E8FF8 AFAE0010 */  sw         $t6, 0x10($sp)
/* C43FC 800E8FFC 00002025 */  or         $a0, $zero, $zero
/* C4400 800E9000 00002825 */  or         $a1, $zero, $zero
/* C4404 800E9004 8FA60024 */  lw         $a2, 0x24($sp)
/* C4408 800E9008 0C037278 */  jal        func_800DC9E0
/* C440C 800E900C 24070001 */   addiu     $a3, $zero, 1
/* C4410 800E9010 8FA80020 */  lw         $t0, 0x20($sp)
/* C4414 800E9014 24030001 */  addiu      $v1, $zero, 1
/* C4418 800E9018 AD020014 */  sw         $v0, 0x14($t0)
/* C441C 800E901C AD030038 */  sw         $v1, 0x38($t0)
/* C4420 800E9020 AD000048 */  sw         $zero, 0x48($t0)
/* C4424 800E9024 A503001A */  sh         $v1, 0x1a($t0)
/* C4428 800E9028 A5030028 */  sh         $v1, 0x28($t0)
/* C442C 800E902C A503002E */  sh         $v1, 0x2e($t0)
/* C4430 800E9030 A503001C */  sh         $v1, 0x1c($t0)
/* C4434 800E9034 A503001E */  sh         $v1, 0x1e($t0)
/* C4438 800E9038 A5000020 */  sh         $zero, 0x20($t0)
/* C443C 800E903C A5000022 */  sh         $zero, 0x22($t0)
/* C4440 800E9040 A5030026 */  sh         $v1, 0x26($t0)
/* C4444 800E9044 A5000024 */  sh         $zero, 0x24($t0)
/* C4448 800E9048 AD000030 */  sw         $zero, 0x30($t0)
/* C444C 800E904C AD000034 */  sw         $zero, 0x34($t0)
/* C4450 800E9050 A5000018 */  sh         $zero, 0x18($t0)
/* C4454 800E9054 AD00003C */  sw         $zero, 0x3c($t0)
/* C4458 800E9058 AD000040 */  sw         $zero, 0x40($t0)
/* C445C 800E905C AD000044 */  sw         $zero, 0x44($t0)
/* C4460 800E9060 8FBF001C */  lw         $ra, 0x1c($sp)
/* C4464 800E9064 27BD0020 */  addiu      $sp, $sp, 0x20
/* C4468 800E9068 03E00008 */  jr         $ra
/* C446C 800E906C 00000000 */   nop

glabel func_800E9070
/* C4470 800E9070 84820000 */  lh         $v0, ($a0)
/* C4474 800E9074 24194000 */  addiu      $t9, $zero, 0x4000
/* C4478 800E9078 24090001 */  addiu      $t1, $zero, 1
/* C447C 800E907C 00027380 */  sll        $t6, $v0, 0xe
/* C4480 800E9080 000E1BC3 */  sra        $v1, $t6, 0xf
/* C4484 800E9084 00037C00 */  sll        $t7, $v1, 0x10
/* C4488 800E9088 000F1C03 */  sra        $v1, $t7, 0x10
/* C448C 800E908C 03234023 */  subu       $t0, $t9, $v1
/* C4490 800E9090 A4880002 */  sh         $t0, 2($a0)
/* C4494 800E9094 AC89002C */  sw         $t1, 0x2c($a0)
/* C4498 800E9098 00002825 */  or         $a1, $zero, $zero
/* C449C 800E909C 00803025 */  or         $a2, $a0, $zero
.L800E90A0:
/* C44A0 800E90A0 24A50001 */  addiu      $a1, $a1, 1
/* C44A4 800E90A4 28A10008 */  slti       $at, $a1, 8
/* C44A8 800E90A8 24C60002 */  addiu      $a2, $a2, 2
/* C44AC 800E90AC 1420FFFC */  bnez       $at, .L800E90A0
/* C44B0 800E90B0 A4C00006 */   sh        $zero, 6($a2)
/* C44B4 800E90B4 44832000 */  mtc1       $v1, $f4
/* C44B8 800E90B8 3C0140D0 */  lui        $at, 0x40d0
/* C44BC 800E90BC 44816800 */  mtc1       $at, $f13
/* C44C0 800E90C0 468021A1 */  cvt.d.w    $f6, $f4
/* C44C4 800E90C4 44806000 */  mtc1       $zero, $f12
/* C44C8 800E90C8 24A50001 */  addiu      $a1, $a1, 1
/* C44CC 800E90CC 28A10010 */  slti       $at, $a1, 0x10
/* C44D0 800E90D0 A4C30008 */  sh         $v1, 8($a2)
/* C44D4 800E90D4 462C3083 */  div.d      $f2, $f6, $f12
/* C44D8 800E90D8 24C60002 */  addiu      $a2, $a2, 2
/* C44DC 800E90DC 1020000A */  beqz       $at, .L800E9108
/* C44E0 800E90E0 46201006 */   mov.d     $f0, $f2
.L800E90E4:
/* C44E4 800E90E4 46220002 */  mul.d      $f0, $f0, $f2
/* C44E8 800E90E8 24A50001 */  addiu      $a1, $a1, 1
/* C44EC 800E90EC 28A10010 */  slti       $at, $a1, 0x10
/* C44F0 800E90F0 24C60002 */  addiu      $a2, $a2, 2
/* C44F4 800E90F4 462C0202 */  mul.d      $f8, $f0, $f12
/* C44F8 800E90F8 4620428D */  trunc.w.d  $f10, $f8
/* C44FC 800E90FC 440B5000 */  mfc1       $t3, $f10
/* C4500 800E9100 1420FFF8 */  bnez       $at, .L800E90E4
/* C4504 800E9104 A4CB0006 */   sh        $t3, 6($a2)
.L800E9108:
/* C4508 800E9108 03E00008 */  jr         $ra
/* C450C 800E910C 00000000 */   nop

glabel func_800E9110
/* C4510 800E9110 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C4514 800E9114 AFB60058 */  sw         $s6, 0x58($sp)
/* C4518 800E9118 00C0B025 */  or         $s6, $a2, $zero
/* C451C 800E911C AFBF0064 */  sw         $ra, 0x64($sp)
/* C4520 800E9120 AFB50054 */  sw         $s5, 0x54($sp)
/* C4524 800E9124 AFA5006C */  sw         $a1, 0x6c($sp)
/* C4528 800E9128 3C06800F */  lui        $a2, 0x800f
/* C452C 800E912C 0080A825 */  or         $s5, $a0, $zero
/* C4530 800E9130 AFBE0060 */  sw         $fp, 0x60($sp)
/* C4534 800E9134 AFB7005C */  sw         $s7, 0x5c($sp)
/* C4538 800E9138 AFB40050 */  sw         $s4, 0x50($sp)
/* C453C 800E913C AFB3004C */  sw         $s3, 0x4c($sp)
/* C4540 800E9140 AFB20048 */  sw         $s2, 0x48($sp)
/* C4544 800E9144 AFB10044 */  sw         $s1, 0x44($sp)
/* C4548 800E9148 AFB00040 */  sw         $s0, 0x40($sp)
/* C454C 800E914C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* C4550 800E9150 F7B80030 */  sdc1       $f24, 0x30($sp)
/* C4554 800E9154 F7B60028 */  sdc1       $f22, 0x28($sp)
/* C4558 800E9158 F7B40020 */  sdc1       $f20, 0x20($sp)
/* C455C 800E915C 24C6DCD4 */  addiu      $a2, $a2, -0x232c
/* C4560 800E9160 00002825 */  or         $a1, $zero, $zero
/* C4564 800E9164 0C03B4F0 */  jal        func_800ED3C0
/* C4568 800E9168 24070005 */   addiu     $a3, $zero, 5
/* C456C 800E916C 8FA2006C */  lw         $v0, 0x6c($sp)
/* C4570 800E9170 3C0E800F */  lui        $t6, %hi(D_800EDCEC)
/* C4574 800E9174 3C0F800F */  lui        $t7, %hi(D_800EDA78)
/* C4578 800E9178 25CEDCEC */  addiu      $t6, $t6, %lo(D_800EDCEC)
/* C457C 800E917C 25EFDA78 */  addiu      $t7, $t7, %lo(D_800EDA78)
/* C4580 800E9180 AEAE0004 */  sw         $t6, 4($s5)
/* C4584 800E9184 AEAF0028 */  sw         $t7, 0x28($s5)
/* C4588 800E9188 9058001C */  lbu        $t8, 0x1c($v0)
/* C458C 800E918C 3C138011 */  lui        $s3, %hi(D_8010A068)
/* C4590 800E9190 2673A068 */  addiu      $s3, $s3, %lo(D_8010A068)
/* C4594 800E9194 2719FFFF */  addiu      $t9, $t8, -1
/* C4598 800E9198 2F210006 */  sltiu      $at, $t9, 6
/* C459C 800E919C 10200017 */  beqz       $at, .L800E91FC
/* C45A0 800E91A0 0019C880 */   sll       $t9, $t9, 2
/* C45A4 800E91A4 3C018011 */  lui        $at, %hi(D_80111070)
/* C45A8 800E91A8 00390821 */  addu       $at, $at, $t9
/* C45AC 800E91AC 8C391070 */  lw         $t9, %lo(D_80111070)($at)
/* C45B0 800E91B0 03200008 */  jr         $t9
/* C45B4 800E91B4 00000000 */   nop
/* C45B8 800E91B8 3C138011 */  lui        $s3, %hi(D_80109F00)
/* C45BC 800E91BC 1000000F */  b          .L800E91FC
/* C45C0 800E91C0 26739F00 */   addiu     $s3, $s3, %lo(D_80109F00)
/* C45C4 800E91C4 3C138011 */  lui        $s3, %hi(D_80109F68)
/* C45C8 800E91C8 1000000C */  b          .L800E91FC
/* C45CC 800E91CC 26739F68 */   addiu     $s3, $s3, %lo(D_80109F68)
/* C45D0 800E91D0 3C138011 */  lui        $s3, %hi(D_80109FF0)
/* C45D4 800E91D4 10000009 */  b          .L800E91FC
/* C45D8 800E91D8 26739FF0 */   addiu     $s3, $s3, %lo(D_80109FF0)
/* C45DC 800E91DC 3C138011 */  lui        $s3, %hi(D_8010A018)
/* C45E0 800E91E0 10000006 */  b          .L800E91FC
/* C45E4 800E91E4 2673A018 */   addiu     $s3, $s3, %lo(D_8010A018)
/* C45E8 800E91E8 3C138011 */  lui        $s3, %hi(D_8010A040)
/* C45EC 800E91EC 10000003 */  b          .L800E91FC
/* C45F0 800E91F0 2673A040 */   addiu     $s3, $s3, %lo(D_8010A040)
/* C45F4 800E91F4 10000001 */  b          .L800E91FC
/* C45F8 800E91F8 8C530020 */   lw        $s3, 0x20($v0)
.L800E91FC:
/* C45FC 800E91FC 8E680000 */  lw         $t0, ($s3)
/* C4600 800E9200 240A0028 */  addiu      $t2, $zero, 0x28
/* C4604 800E9204 24110002 */  addiu      $s1, $zero, 2
/* C4608 800E9208 A2A80024 */  sb         $t0, 0x24($s5)
/* C460C 800E920C 8E690004 */  lw         $t1, 4($s3)
/* C4610 800E9210 00002025 */  or         $a0, $zero, $zero
/* C4614 800E9214 00002825 */  or         $a1, $zero, $zero
/* C4618 800E9218 AEA9001C */  sw         $t1, 0x1c($s5)
/* C461C 800E921C AFAA0010 */  sw         $t2, 0x10($sp)
/* C4620 800E9220 02C03025 */  or         $a2, $s6, $zero
/* C4624 800E9224 0C037278 */  jal        func_800DC9E0
/* C4628 800E9228 310700FF */   andi      $a3, $t0, 0xff
/* C462C 800E922C AEA20020 */  sw         $v0, 0x20($s5)
/* C4630 800E9230 8EA7001C */  lw         $a3, 0x1c($s5)
/* C4634 800E9234 240B0002 */  addiu      $t3, $zero, 2
/* C4638 800E9238 AFAB0010 */  sw         $t3, 0x10($sp)
/* C463C 800E923C 00002025 */  or         $a0, $zero, $zero
/* C4640 800E9240 00002825 */  or         $a1, $zero, $zero
/* C4644 800E9244 0C037278 */  jal        func_800DC9E0
/* C4648 800E9248 02C03025 */   or        $a2, $s6, $zero
/* C464C 800E924C 8EAC001C */  lw         $t4, 0x1c($s5)
/* C4650 800E9250 AEA20014 */  sw         $v0, 0x14($s5)
/* C4654 800E9254 AEA20018 */  sw         $v0, 0x18($s5)
/* C4658 800E9258 1180000C */  beqz       $t4, .L800E928C
/* C465C 800E925C 00001825 */   or        $v1, $zero, $zero
/* C4660 800E9260 8EAD0014 */  lw         $t5, 0x14($s5)
.L800E9264:
/* C4664 800E9264 00037040 */  sll        $t6, $v1, 1
/* C4668 800E9268 24630001 */  addiu      $v1, $v1, 1
/* C466C 800E926C 01AE7821 */  addu       $t7, $t5, $t6
/* C4670 800E9270 A5E00000 */  sh         $zero, ($t7)
/* C4674 800E9274 8EB9001C */  lw         $t9, 0x1c($s5)
/* C4678 800E9278 3078FFFF */  andi       $t8, $v1, 0xffff
/* C467C 800E927C 03001825 */  or         $v1, $t8, $zero
/* C4680 800E9280 0319082B */  sltu       $at, $t8, $t9
/* C4684 800E9284 5420FFF7 */  bnel       $at, $zero, .L800E9264
/* C4688 800E9288 8EAD0014 */   lw        $t5, 0x14($s5)
.L800E928C:
/* C468C 800E928C 92A80024 */  lbu        $t0, 0x24($s5)
/* C4690 800E9290 0000A025 */  or         $s4, $zero, $zero
/* C4694 800E9294 3C013F80 */  lui        $at, 0x3f80
/* C4698 800E9298 1900009C */  blez       $t0, .L800E950C
/* C469C 800E929C 241E0001 */   addiu     $fp, $zero, 1
/* C46A0 800E92A0 4481C000 */  mtc1       $at, $f24
/* C46A4 800E92A4 3C01447A */  lui        $at, 0x447a
/* C46A8 800E92A8 4481B000 */  mtc1       $at, $f22
/* C46AC 800E92AC 3C018011 */  lui        $at, %hi(D_80111088)
/* C46B0 800E92B0 4480D000 */  mtc1       $zero, $f26
/* C46B4 800E92B4 D4341088 */  ldc1       $f20, %lo(D_80111088)($at)
/* C46B8 800E92B8 24170028 */  addiu      $s7, $zero, 0x28
.L800E92BC:
/* C46BC 800E92BC 02970019 */  multu      $s4, $s7
/* C46C0 800E92C0 00115880 */  sll        $t3, $s1, 2
/* C46C4 800E92C4 8EA90020 */  lw         $t1, 0x20($s5)
/* C46C8 800E92C8 026B6021 */  addu       $t4, $s3, $t3
/* C46CC 800E92CC 8D8D0000 */  lw         $t5, ($t4)
/* C46D0 800E92D0 26310001 */  addiu      $s1, $s1, 1
/* C46D4 800E92D4 322EFFFF */  andi       $t6, $s1, 0xffff
/* C46D8 800E92D8 000E7880 */  sll        $t7, $t6, 2
/* C46DC 800E92DC 026FC021 */  addu       $t8, $s3, $t7
/* C46E0 800E92E0 25D10001 */  addiu      $s1, $t6, 1
/* C46E4 800E92E4 00005012 */  mflo       $t2
/* C46E8 800E92E8 012A8021 */  addu       $s0, $t1, $t2
/* C46EC 800E92EC AE0D0000 */  sw         $t5, ($s0)
/* C46F0 800E92F0 8F190000 */  lw         $t9, ($t8)
/* C46F4 800E92F4 3228FFFF */  andi       $t0, $s1, 0xffff
/* C46F8 800E92F8 00084880 */  sll        $t1, $t0, 2
/* C46FC 800E92FC 02695021 */  addu       $t2, $s3, $t1
/* C4700 800E9300 AE190004 */  sw         $t9, 4($s0)
/* C4704 800E9304 8D4B0000 */  lw         $t3, ($t2)
/* C4708 800E9308 25110001 */  addiu      $s1, $t0, 1
/* C470C 800E930C 322CFFFF */  andi       $t4, $s1, 0xffff
/* C4710 800E9310 000C6880 */  sll        $t5, $t4, 2
/* C4714 800E9314 026D7021 */  addu       $t6, $s3, $t5
/* C4718 800E9318 A60B000A */  sh         $t3, 0xa($s0)
/* C471C 800E931C 8DCF0000 */  lw         $t7, ($t6)
/* C4720 800E9320 25910001 */  addiu      $s1, $t4, 1
/* C4724 800E9324 3238FFFF */  andi       $t8, $s1, 0xffff
/* C4728 800E9328 0018C880 */  sll        $t9, $t8, 2
/* C472C 800E932C 02794021 */  addu       $t0, $s3, $t9
/* C4730 800E9330 A60F0008 */  sh         $t7, 8($s0)
/* C4734 800E9334 8D090000 */  lw         $t1, ($t0)
/* C4738 800E9338 27110001 */  addiu      $s1, $t8, 1
/* C473C 800E933C 322AFFFF */  andi       $t2, $s1, 0xffff
/* C4740 800E9340 000A5880 */  sll        $t3, $t2, 2
/* C4744 800E9344 026B6021 */  addu       $t4, $s3, $t3
/* C4748 800E9348 A609000C */  sh         $t1, 0xc($s0)
/* C474C 800E934C 8D820000 */  lw         $v0, ($t4)
/* C4750 800E9350 01408825 */  or         $s1, $t2, $zero
/* C4754 800E9354 02204025 */  or         $t0, $s1, $zero
/* C4758 800E9358 10400040 */  beqz       $v0, .L800E945C
/* C475C 800E935C 25110002 */   addiu     $s1, $t0, 2
/* C4760 800E9360 44822000 */  mtc1       $v0, $f4
/* C4764 800E9364 8FAD006C */  lw         $t5, 0x6c($sp)
/* C4768 800E9368 8E180004 */  lw         $t8, 4($s0)
/* C476C 800E936C 468021A0 */  cvt.s.w    $f6, $f4
/* C4770 800E9370 8DAE0018 */  lw         $t6, 0x18($t5)
/* C4774 800E9374 8E190000 */  lw         $t9, ($s0)
/* C4778 800E9378 25510001 */  addiu      $s1, $t2, 1
/* C477C 800E937C 448E8000 */  mtc1       $t6, $f16
/* C4780 800E9380 322FFFFF */  andi       $t7, $s1, 0xffff
/* C4784 800E9384 46163203 */  div.s      $f8, $f6, $f22
/* C4788 800E9388 03194023 */  subu       $t0, $t8, $t9
/* C478C 800E938C 01E08825 */  or         $s1, $t7, $zero
/* C4790 800E9390 00114880 */  sll        $t1, $s1, 2
/* C4794 800E9394 468084A1 */  cvt.d.w    $f18, $f16
/* C4798 800E9398 02695021 */  addu       $t2, $s3, $t1
/* C479C 800E939C 3C0141F0 */  lui        $at, 0x41f0
/* C47A0 800E93A0 46004021 */  cvt.d.s    $f0, $f8
/* C47A4 800E93A4 44884000 */  mtc1       $t0, $f8
/* C47A8 800E93A8 46200280 */  add.d      $f10, $f0, $f0
/* C47AC 800E93AC 46804421 */  cvt.d.w    $f16, $f8
/* C47B0 800E93B0 46325103 */  div.d      $f4, $f10, $f18
/* C47B4 800E93B4 462021A0 */  cvt.s.d    $f6, $f4
/* C47B8 800E93B8 05010005 */  bgez       $t0, .L800E93D0
/* C47BC 800E93BC E6060010 */   swc1      $f6, 0x10($s0)
/* C47C0 800E93C0 44815800 */  mtc1       $at, $f11
/* C47C4 800E93C4 44805000 */  mtc1       $zero, $f10
/* C47C8 800E93C8 00000000 */  nop
/* C47CC 800E93CC 462A8400 */  add.d      $f16, $f16, $f10
.L800E93D0:
/* C47D0 800E93D0 8D4B0000 */  lw         $t3, ($t2)
/* C47D4 800E93D4 26310001 */  addiu      $s1, $s1, 1
/* C47D8 800E93D8 322CFFFF */  andi       $t4, $s1, 0xffff
/* C47DC 800E93DC 448B9000 */  mtc1       $t3, $f18
/* C47E0 800E93E0 E6180014 */  swc1       $f24, 0x14($s0)
/* C47E4 800E93E4 AE000018 */  sw         $zero, 0x18($s0)
/* C47E8 800E93E8 46809120 */  cvt.s.w    $f4, $f18
/* C47EC 800E93EC 240D0034 */  addiu      $t5, $zero, 0x34
/* C47F0 800E93F0 01808825 */  or         $s1, $t4, $zero
/* C47F4 800E93F4 00002025 */  or         $a0, $zero, $zero
/* C47F8 800E93F8 00002825 */  or         $a1, $zero, $zero
/* C47FC 800E93FC 02C03025 */  or         $a2, $s6, $zero
/* C4800 800E9400 460021A1 */  cvt.d.s    $f6, $f4
/* C4804 800E9404 03C03825 */  or         $a3, $fp, $zero
/* C4808 800E9408 46343203 */  div.d      $f8, $f6, $f20
/* C480C 800E940C 46304282 */  mul.d      $f10, $f8, $f16
/* C4810 800E9410 462054A0 */  cvt.s.d    $f18, $f10
/* C4814 800E9414 E612001C */  swc1       $f18, 0x1c($s0)
/* C4818 800E9418 0C037278 */  jal        func_800DC9E0
/* C481C 800E941C AFAD0010 */   sw        $t5, 0x10($sp)
/* C4820 800E9420 AE020024 */  sw         $v0, 0x24($s0)
/* C4824 800E9424 240E0020 */  addiu      $t6, $zero, 0x20
/* C4828 800E9428 AFAE0010 */  sw         $t6, 0x10($sp)
/* C482C 800E942C 00002025 */  or         $a0, $zero, $zero
/* C4830 800E9430 00002825 */  or         $a1, $zero, $zero
/* C4834 800E9434 02C03025 */  or         $a2, $s6, $zero
/* C4838 800E9438 0C037278 */  jal        func_800DC9E0
/* C483C 800E943C 03C03825 */   or        $a3, $fp, $zero
/* C4840 800E9440 8E0F0024 */  lw         $t7, 0x24($s0)
/* C4844 800E9444 ADE20014 */  sw         $v0, 0x14($t7)
/* C4848 800E9448 8E180024 */  lw         $t8, 0x24($s0)
/* C484C 800E944C E71A0020 */  swc1       $f26, 0x20($t8)
/* C4850 800E9450 8E190024 */  lw         $t9, 0x24($s0)
/* C4854 800E9454 10000004 */  b          .L800E9468
/* C4858 800E9458 AF3E0024 */   sw        $fp, 0x24($t9)
.L800E945C:
/* C485C 800E945C 3229FFFF */  andi       $t1, $s1, 0xffff
/* C4860 800E9460 AE000024 */  sw         $zero, 0x24($s0)
/* C4864 800E9464 01208825 */  or         $s1, $t1, $zero
.L800E9468:
/* C4868 800E9468 00115080 */  sll        $t2, $s1, 2
/* C486C 800E946C 026A9021 */  addu       $s2, $s3, $t2
/* C4870 800E9470 8E4B0000 */  lw         $t3, ($s2)
/* C4874 800E9474 00002025 */  or         $a0, $zero, $zero
/* C4878 800E9478 00002825 */  or         $a1, $zero, $zero
/* C487C 800E947C 11600019 */  beqz       $t3, .L800E94E4
/* C4880 800E9480 02C03025 */   or        $a2, $s6, $zero
/* C4884 800E9484 240C0030 */  addiu      $t4, $zero, 0x30
/* C4888 800E9488 AFAC0010 */  sw         $t4, 0x10($sp)
/* C488C 800E948C 0C037278 */  jal        func_800DC9E0
/* C4890 800E9490 03C03825 */   or        $a3, $fp, $zero
/* C4894 800E9494 AE020020 */  sw         $v0, 0x20($s0)
/* C4898 800E9498 240D0008 */  addiu      $t5, $zero, 8
/* C489C 800E949C AFAD0010 */  sw         $t5, 0x10($sp)
/* C48A0 800E94A0 00002025 */  or         $a0, $zero, $zero
/* C48A4 800E94A4 00002825 */  or         $a1, $zero, $zero
/* C48A8 800E94A8 02C03025 */  or         $a2, $s6, $zero
/* C48AC 800E94AC 0C037278 */  jal        func_800DC9E0
/* C48B0 800E94B0 03C03825 */   or        $a3, $fp, $zero
/* C48B4 800E94B4 8E0E0020 */  lw         $t6, 0x20($s0)
/* C48B8 800E94B8 26310001 */  addiu      $s1, $s1, 1
/* C48BC 800E94BC 3239FFFF */  andi       $t9, $s1, 0xffff
/* C48C0 800E94C0 ADC20028 */  sw         $v0, 0x28($t6)
/* C48C4 800E94C4 8E180020 */  lw         $t8, 0x20($s0)
/* C48C8 800E94C8 8E4F0000 */  lw         $t7, ($s2)
/* C48CC 800E94CC 03208825 */  or         $s1, $t9, $zero
/* C48D0 800E94D0 A70F0000 */  sh         $t7, ($t8)
/* C48D4 800E94D4 0C03A41C */  jal        func_800E9070
/* C48D8 800E94D8 8E040020 */   lw        $a0, 0x20($s0)
/* C48DC 800E94DC 10000006 */  b          .L800E94F8
/* C48E0 800E94E0 92AA0024 */   lbu       $t2, 0x24($s5)
.L800E94E4:
/* C48E4 800E94E4 26310001 */  addiu      $s1, $s1, 1
/* C48E8 800E94E8 3228FFFF */  andi       $t0, $s1, 0xffff
/* C48EC 800E94EC AE000020 */  sw         $zero, 0x20($s0)
/* C48F0 800E94F0 01008825 */  or         $s1, $t0, $zero
/* C48F4 800E94F4 92AA0024 */  lbu        $t2, 0x24($s5)
.L800E94F8:
/* C48F8 800E94F8 26940001 */  addiu      $s4, $s4, 1
/* C48FC 800E94FC 3289FFFF */  andi       $t1, $s4, 0xffff
/* C4900 800E9500 012A082A */  slt        $at, $t1, $t2
/* C4904 800E9504 1420FF6D */  bnez       $at, .L800E92BC
/* C4908 800E9508 0120A025 */   or        $s4, $t1, $zero
.L800E950C:
/* C490C 800E950C 8FBF0064 */  lw         $ra, 0x64($sp)
/* C4910 800E9510 D7B40020 */  ldc1       $f20, 0x20($sp)
/* C4914 800E9514 D7B60028 */  ldc1       $f22, 0x28($sp)
/* C4918 800E9518 D7B80030 */  ldc1       $f24, 0x30($sp)
/* C491C 800E951C D7BA0038 */  ldc1       $f26, 0x38($sp)
/* C4920 800E9520 8FB00040 */  lw         $s0, 0x40($sp)
/* C4924 800E9524 8FB10044 */  lw         $s1, 0x44($sp)
/* C4928 800E9528 8FB20048 */  lw         $s2, 0x48($sp)
/* C492C 800E952C 8FB3004C */  lw         $s3, 0x4c($sp)
/* C4930 800E9530 8FB40050 */  lw         $s4, 0x50($sp)
/* C4934 800E9534 8FB50054 */  lw         $s5, 0x54($sp)
/* C4938 800E9538 8FB60058 */  lw         $s6, 0x58($sp)
/* C493C 800E953C 8FB7005C */  lw         $s7, 0x5c($sp)
/* C4940 800E9540 8FBE0060 */  lw         $fp, 0x60($sp)
/* C4944 800E9544 03E00008 */  jr         $ra
/* C4948 800E9548 27BD0068 */   addiu     $sp, $sp, 0x68
/* C494C 800E954C 00000000 */  nop
