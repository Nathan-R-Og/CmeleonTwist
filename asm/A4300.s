.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C8F00
/* A4300 800C8F00 3C018023 */  lui        $at, %hi(D_80236968)
/* A4304 800C8F04 03E00008 */  jr         $ra
/* A4308 800C8F08 AC206968 */   sw        $zero, %lo(D_80236968)($at)

glabel func_800C8F0C
/* A430C 800C8F0C 27BDFF70 */  addiu      $sp, $sp, -0x90
/* A4310 800C8F10 AFBF005C */  sw         $ra, 0x5c($sp)
/* A4314 800C8F14 AFBE0058 */  sw         $fp, 0x58($sp)
/* A4318 800C8F18 AFB70054 */  sw         $s7, 0x54($sp)
/* A431C 800C8F1C AFB60050 */  sw         $s6, 0x50($sp)
/* A4320 800C8F20 AFB5004C */  sw         $s5, 0x4c($sp)
/* A4324 800C8F24 AFB40048 */  sw         $s4, 0x48($sp)
/* A4328 800C8F28 AFB30044 */  sw         $s3, 0x44($sp)
/* A432C 800C8F2C AFB20040 */  sw         $s2, 0x40($sp)
/* A4330 800C8F30 AFB1003C */  sw         $s1, 0x3c($sp)
/* A4334 800C8F34 AFB00038 */  sw         $s0, 0x38($sp)
/* A4338 800C8F38 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* A433C 800C8F3C F7B80028 */  sdc1       $f24, 0x28($sp)
/* A4340 800C8F40 F7B60020 */  sdc1       $f22, 0x20($sp)
/* A4344 800C8F44 F7B40018 */  sdc1       $f20, 0x18($sp)
/* A4348 800C8F48 8C8E00E8 */  lw         $t6, 0xe8($a0)
/* A434C 800C8F4C 3C038023 */  lui        $v1, %hi(D_80236968)
/* A4350 800C8F50 24636968 */  addiu      $v1, $v1, %lo(D_80236968)
/* A4354 800C8F54 AFAE008C */  sw         $t6, 0x8c($sp)
/* A4358 800C8F58 8DD8000C */  lw         $t8, 0xc($t6)
/* A435C 800C8F5C 8C620000 */  lw         $v0, ($v1)
/* A4360 800C8F60 3C098021 */  lui        $t1, 0x8021
/* A4364 800C8F64 AFB80080 */  sw         $t8, 0x80($sp)
/* A4368 800C8F68 8DD90004 */  lw         $t9, 4($t6)
/* A436C 800C8F6C 00024080 */  sll        $t0, $v0, 2
/* A4370 800C8F70 01024021 */  addu       $t0, $t0, $v0
/* A4374 800C8F74 00592821 */  addu       $a1, $v0, $t9
/* A4378 800C8F78 00084140 */  sll        $t0, $t0, 5
/* A437C 800C8F7C 2529D968 */  addiu      $t1, $t1, -0x2698
/* A4380 800C8F80 28A10401 */  slti       $at, $a1, 0x401
/* A4384 800C8F84 00809825 */  or         $s3, $a0, $zero
/* A4388 800C8F88 0109B821 */  addu       $s7, $t0, $t1
/* A438C 800C8F8C 14200006 */  bnez       $at, .L800C8FA8
/* A4390 800C8F90 AFB9007C */   sw        $t9, 0x7c($sp)
/* A4394 800C8F94 3C048011 */  lui        $a0, %hi(D_80110184)
/* A4398 800C8F98 0C035D18 */  jal        func_800D7460
/* A439C 800C8F9C 24840184 */   addiu     $a0, $a0, %lo(D_80110184)
/* A43A0 800C8FA0 10000149 */  b          .L800C94C8
/* A43A4 800C8FA4 8FBF005C */   lw        $ra, 0x5c($sp)
.L800C8FA8:
/* A43A8 800C8FA8 AC650000 */  sw         $a1, ($v1)
/* A43AC 800C8FAC 8E620010 */  lw         $v0, 0x10($s3)
/* A43B0 800C8FB0 24010008 */  addiu      $at, $zero, 8
/* A43B4 800C8FB4 AE7700E4 */  sw         $s7, 0xe4($s3)
/* A43B8 800C8FB8 1041000D */  beq        $v0, $at, .L800C8FF0
/* A43BC 800C8FBC 2401001B */   addiu     $at, $zero, 0x1b
/* A43C0 800C8FC0 1041000B */  beq        $v0, $at, .L800C8FF0
/* A43C4 800C8FC4 24010019 */   addiu     $at, $zero, 0x19
/* A43C8 800C8FC8 10410009 */  beq        $v0, $at, .L800C8FF0
/* A43CC 800C8FCC 2401001D */   addiu     $at, $zero, 0x1d
/* A43D0 800C8FD0 10410007 */  beq        $v0, $at, .L800C8FF0
/* A43D4 800C8FD4 24010022 */   addiu     $at, $zero, 0x22
/* A43D8 800C8FD8 10410005 */  beq        $v0, $at, .L800C8FF0
/* A43DC 800C8FDC 24010023 */   addiu     $at, $zero, 0x23
/* A43E0 800C8FE0 10410003 */  beq        $v0, $at, .L800C8FF0
/* A43E4 800C8FE4 24030007 */   addiu     $v1, $zero, 7
/* A43E8 800C8FE8 1462000A */  bne        $v1, $v0, .L800C9014
/* A43EC 800C8FEC 24010021 */   addiu     $at, $zero, 0x21
.L800C8FF0:
/* A43F0 800C8FF0 0C036B60 */  jal        func_800DAD80
/* A43F4 800C8FF4 C66C0060 */   lwc1      $f12, 0x60($s3)
/* A43F8 800C8FF8 46000586 */  mov.s      $f22, $f0
/* A43FC 800C8FFC 0C036C30 */  jal        func_800DB0C0
/* A4400 800C9000 C66C0060 */   lwc1      $f12, 0x60($s3)
/* A4404 800C9004 24030007 */  addiu      $v1, $zero, 7
/* A4408 800C9008 E7A0006C */  swc1       $f0, 0x6c($sp)
/* A440C 800C900C 1000002D */  b          .L800C90C4
/* A4410 800C9010 E7B60070 */   swc1      $f22, 0x70($sp)
.L800C9014:
/* A4414 800C9014 5441002C */  bnel       $v0, $at, .L800C90C8
/* A4418 800C9018 8FAA007C */   lw        $t2, 0x7c($sp)
/* A441C 800C901C C664008C */  lwc1       $f4, 0x8c($s3)
/* A4420 800C9020 3C018011 */  lui        $at, %hi(D_80110400)
/* A4424 800C9024 D4380400 */  ldc1       $f24, %lo(D_80110400)($at)
/* A4428 800C9028 460021A1 */  cvt.d.s    $f6, $f4
/* A442C 800C902C 3C018011 */  lui        $at, %hi(D_80110408)
/* A4430 800C9030 46383202 */  mul.d      $f8, $f6, $f24
/* A4434 800C9034 D42A0408 */  ldc1       $f10, %lo(D_80110408)($at)
/* A4438 800C9038 462A4103 */  div.d      $f4, $f8, $f10
/* A443C 800C903C 0C036B60 */  jal        func_800DAD80
/* A4440 800C9040 46202320 */   cvt.s.d   $f12, $f4
/* A4444 800C9044 C666008C */  lwc1       $f6, 0x8c($s3)
/* A4448 800C9048 3C018011 */  lui        $at, %hi(D_80110410)
/* A444C 800C904C D4240410 */  ldc1       $f4, %lo(D_80110410)($at)
/* A4450 800C9050 46003221 */  cvt.d.s    $f8, $f6
/* A4454 800C9054 46000586 */  mov.s      $f22, $f0
/* A4458 800C9058 46384282 */  mul.d      $f10, $f8, $f24
/* A445C 800C905C 46245183 */  div.d      $f6, $f10, $f4
/* A4460 800C9060 0C036C30 */  jal        func_800DB0C0
/* A4464 800C9064 46203320 */   cvt.s.d   $f12, $f6
/* A4468 800C9068 C6680090 */  lwc1       $f8, 0x90($s3)
/* A446C 800C906C 3C018011 */  lui        $at, %hi(D_80110418)
/* A4470 800C9070 D4260418 */  ldc1       $f6, %lo(D_80110418)($at)
/* A4474 800C9074 460042A1 */  cvt.d.s    $f10, $f8
/* A4478 800C9078 46000506 */  mov.s      $f20, $f0
/* A447C 800C907C 46385102 */  mul.d      $f4, $f10, $f24
/* A4480 800C9080 46262203 */  div.d      $f8, $f4, $f6
/* A4484 800C9084 0C036B60 */  jal        func_800DAD80
/* A4488 800C9088 46204320 */   cvt.s.d   $f12, $f8
/* A448C 800C908C C66A0090 */  lwc1       $f10, 0x90($s3)
/* A4490 800C9090 3C018011 */  lui        $at, %hi(D_80110420)
/* A4494 800C9094 D4280420 */  ldc1       $f8, %lo(D_80110420)($at)
/* A4498 800C9098 46005121 */  cvt.d.s    $f4, $f10
/* A449C 800C909C 46000686 */  mov.s      $f26, $f0
/* A44A0 800C90A0 46382182 */  mul.d      $f6, $f4, $f24
/* A44A4 800C90A4 46283283 */  div.d      $f10, $f6, $f8
/* A44A8 800C90A8 0C036C30 */  jal        func_800DB0C0
/* A44AC 800C90AC 46205320 */   cvt.s.d   $f12, $f10
/* A44B0 800C90B0 24030007 */  addiu      $v1, $zero, 7
/* A44B4 800C90B4 E7B4006C */  swc1       $f20, 0x6c($sp)
/* A44B8 800C90B8 E7B60070 */  swc1       $f22, 0x70($sp)
/* A44BC 800C90BC E7A00064 */  swc1       $f0, 0x64($sp)
/* A44C0 800C90C0 E7BA0068 */  swc1       $f26, 0x68($sp)
.L800C90C4:
/* A44C4 800C90C4 8FAA007C */  lw         $t2, 0x7c($sp)
.L800C90C8:
/* A44C8 800C90C8 C7B4006C */  lwc1       $f20, 0x6c($sp)
/* A44CC 800C90CC C7B60070 */  lwc1       $f22, 0x70($sp)
/* A44D0 800C90D0 C7B80064 */  lwc1       $f24, 0x64($sp)
/* A44D4 800C90D4 C7BA0068 */  lwc1       $f26, 0x68($sp)
/* A44D8 800C90D8 194000FA */  blez       $t2, .L800C94C4
/* A44DC 800C90DC AFA00078 */   sw        $zero, 0x78($sp)
/* A44E0 800C90E0 241E0003 */  addiu      $fp, $zero, 3
/* A44E4 800C90E4 2416000C */  addiu      $s6, $zero, 0xc
.L800C90E8:
/* A44E8 800C90E8 AEE00000 */  sw         $zero, ($s7)
/* A44EC 800C90EC 8E6B0000 */  lw         $t3, ($s3)
/* A44F0 800C90F0 0000A025 */  or         $s4, $zero, $zero
/* A44F4 800C90F4 AEEB0004 */  sw         $t3, 4($s7)
/* A44F8 800C90F8 8FB50080 */  lw         $s5, 0x80($sp)
.L800C90FC:
/* A44FC 800C90FC 8EAC0000 */  lw         $t4, ($s5)
/* A4500 800C9100 8FAE008C */  lw         $t6, 0x8c($sp)
/* A4504 800C9104 8E620010 */  lw         $v0, 0x10($s3)
/* A4508 800C9108 01960019 */  multu      $t4, $s6
/* A450C 800C910C 8DD80008 */  lw         $t8, 8($t6)
/* A4510 800C9110 24010021 */  addiu      $at, $zero, 0x21
/* A4514 800C9114 00006812 */  mflo       $t5
/* A4518 800C9118 01B89021 */  addu       $s2, $t5, $t8
/* A451C 800C911C 5441002B */  bnel       $v0, $at, .L800C91CC
/* A4520 800C9120 24010008 */   addiu     $at, $zero, 8
/* A4524 800C9124 C6440004 */  lwc1       $f4, 4($s2)
/* A4528 800C9128 C6660054 */  lwc1       $f6, 0x54($s3)
/* A452C 800C912C C6480008 */  lwc1       $f8, 8($s2)
/* A4530 800C9130 C66A0058 */  lwc1       $f10, 0x58($s3)
/* A4534 800C9134 46062302 */  mul.s      $f12, $f4, $f6
/* A4538 800C9138 C6660050 */  lwc1       $f6, 0x50($s3)
/* A453C 800C913C C6440000 */  lwc1       $f4, ($s2)
/* A4540 800C9140 460A4002 */  mul.s      $f0, $f8, $f10
/* A4544 800C9144 26700018 */  addiu      $s0, $s3, 0x18
/* A4548 800C9148 00147880 */  sll        $t7, $s4, 2
/* A454C 800C914C 46062382 */  mul.s      $f14, $f4, $f6
/* A4550 800C9150 01F47823 */  subu       $t7, $t7, $s4
/* A4554 800C9154 000F7880 */  sll        $t7, $t7, 2
/* A4558 800C9158 460CA202 */  mul.s      $f8, $f20, $f12
/* A455C 800C915C 02EF8821 */  addu       $s1, $s7, $t7
/* A4560 800C9160 4600B282 */  mul.s      $f10, $f22, $f0
/* A4564 800C9164 00000000 */  nop
/* A4568 800C9168 460CB102 */  mul.s      $f4, $f22, $f12
/* A456C 800C916C 00000000 */  nop
/* A4570 800C9170 4600A182 */  mul.s      $f6, $f20, $f0
/* A4574 800C9174 460A4401 */  sub.s      $f16, $f8, $f10
/* A4578 800C9178 46062080 */  add.s      $f2, $f4, $f6
/* A457C 800C917C 4602C202 */  mul.s      $f8, $f24, $f2
/* A4580 800C9180 00000000 */  nop
/* A4584 800C9184 460ED282 */  mul.s      $f10, $f26, $f14
/* A4588 800C9188 00000000 */  nop
/* A458C 800C918C 4602D102 */  mul.s      $f4, $f26, $f2
/* A4590 800C9190 00000000 */  nop
/* A4594 800C9194 460EC182 */  mul.s      $f6, $f24, $f14
/* A4598 800C9198 460A4301 */  sub.s      $f12, $f8, $f10
/* A459C 800C919C C60A0000 */  lwc1       $f10, ($s0)
/* A45A0 800C91A0 46062200 */  add.s      $f8, $f4, $f6
/* A45A4 800C91A4 46085100 */  add.s      $f4, $f10, $f8
/* A45A8 800C91A8 E6240008 */  swc1       $f4, 8($s1)
/* A45AC 800C91AC C6060004 */  lwc1       $f6, 4($s0)
/* A45B0 800C91B0 46103280 */  add.s      $f10, $f6, $f16
/* A45B4 800C91B4 E62A000C */  swc1       $f10, 0xc($s1)
/* A45B8 800C91B8 C6080008 */  lwc1       $f8, 8($s0)
/* A45BC 800C91BC 460C4100 */  add.s      $f4, $f8, $f12
/* A45C0 800C91C0 100000A5 */  b          .L800C9458
/* A45C4 800C91C4 E6240010 */   swc1      $f4, 0x10($s1)
/* A45C8 800C91C8 24010008 */  addiu      $at, $zero, 8
.L800C91CC:
/* A45CC 800C91CC 1041000D */  beq        $v0, $at, .L800C9204
/* A45D0 800C91D0 2401001B */   addiu     $at, $zero, 0x1b
/* A45D4 800C91D4 1041000B */  beq        $v0, $at, .L800C9204
/* A45D8 800C91D8 24010019 */   addiu     $at, $zero, 0x19
/* A45DC 800C91DC 10410009 */  beq        $v0, $at, .L800C9204
/* A45E0 800C91E0 2401001D */   addiu     $at, $zero, 0x1d
/* A45E4 800C91E4 10410007 */  beq        $v0, $at, .L800C9204
/* A45E8 800C91E8 24010022 */   addiu     $at, $zero, 0x22
/* A45EC 800C91EC 10410005 */  beq        $v0, $at, .L800C9204
/* A45F0 800C91F0 24010023 */   addiu     $at, $zero, 0x23
/* A45F4 800C91F4 50410004 */  beql       $v0, $at, .L800C9208
/* A45F8 800C91F8 8E62005C */   lw        $v0, 0x5c($s3)
/* A45FC 800C91FC 14620065 */  bne        $v1, $v0, .L800C9394
/* A4600 800C9200 02602025 */   or        $a0, $s3, $zero
.L800C9204:
/* A4604 800C9204 8E62005C */  lw         $v0, 0x5c($s3)
.L800C9208:
/* A4608 800C9208 24010001 */  addiu      $at, $zero, 1
/* A460C 800C920C 10410007 */  beq        $v0, $at, .L800C922C
/* A4610 800C9210 24010002 */   addiu     $at, $zero, 2
/* A4614 800C9214 50410023 */  beql       $v0, $at, .L800C92A4
/* A4618 800C9218 C6460008 */   lwc1      $f6, 8($s2)
/* A461C 800C921C 505E0040 */  beql       $v0, $fp, .L800C9320
/* A4620 800C9220 C6460000 */   lwc1      $f6, ($s2)
/* A4624 800C9224 1000008D */  b          .L800C945C
/* A4628 800C9228 26940001 */   addiu     $s4, $s4, 1
.L800C922C:
/* A462C 800C922C C6460004 */  lwc1       $f6, 4($s2)
/* A4630 800C9230 C66A0054 */  lwc1       $f10, 0x54($s3)
/* A4634 800C9234 C6480008 */  lwc1       $f8, 8($s2)
/* A4638 800C9238 C6640058 */  lwc1       $f4, 0x58($s3)
/* A463C 800C923C 460A3002 */  mul.s      $f0, $f6, $f10
/* A4640 800C9240 C66A0050 */  lwc1       $f10, 0x50($s3)
/* A4644 800C9244 C6460000 */  lwc1       $f6, ($s2)
/* A4648 800C9248 46044082 */  mul.s      $f2, $f8, $f4
/* A464C 800C924C 26700018 */  addiu      $s0, $s3, 0x18
/* A4650 800C9250 02960019 */  multu      $s4, $s6
/* A4654 800C9254 460A3202 */  mul.s      $f8, $f6, $f10
/* A4658 800C9258 C6040000 */  lwc1       $f4, ($s0)
/* A465C 800C925C 4600A282 */  mul.s      $f10, $f20, $f0
/* A4660 800C9260 46082180 */  add.s      $f6, $f4, $f8
/* A4664 800C9264 4602B102 */  mul.s      $f4, $f22, $f2
/* A4668 800C9268 00004012 */  mflo       $t0
/* A466C 800C926C 02E88821 */  addu       $s1, $s7, $t0
/* A4670 800C9270 E6260008 */  swc1       $f6, 8($s1)
/* A4674 800C9274 C6060004 */  lwc1       $f6, 4($s0)
/* A4678 800C9278 46045201 */  sub.s      $f8, $f10, $f4
/* A467C 800C927C 4600B102 */  mul.s      $f4, $f22, $f0
/* A4680 800C9280 46083280 */  add.s      $f10, $f6, $f8
/* A4684 800C9284 4602A182 */  mul.s      $f6, $f20, $f2
/* A4688 800C9288 E62A000C */  swc1       $f10, 0xc($s1)
/* A468C 800C928C C60A0008 */  lwc1       $f10, 8($s0)
/* A4690 800C9290 46062200 */  add.s      $f8, $f4, $f6
/* A4694 800C9294 46085100 */  add.s      $f4, $f10, $f8
/* A4698 800C9298 1000006F */  b          .L800C9458
/* A469C 800C929C E6240010 */   swc1      $f4, 0x10($s1)
/* A46A0 800C92A0 C6460008 */  lwc1       $f6, 8($s2)
.L800C92A4:
/* A46A4 800C92A4 C66A0058 */  lwc1       $f10, 0x58($s3)
/* A46A8 800C92A8 C6480000 */  lwc1       $f8, ($s2)
/* A46AC 800C92AC C6640050 */  lwc1       $f4, 0x50($s3)
/* A46B0 800C92B0 460A3002 */  mul.s      $f0, $f6, $f10
/* A46B4 800C92B4 26700018 */  addiu      $s0, $s3, 0x18
/* A46B8 800C92B8 02960019 */  multu      $s4, $s6
/* A46BC 800C92BC 46044082 */  mul.s      $f2, $f8, $f4
/* A46C0 800C92C0 C6040000 */  lwc1       $f4, ($s0)
/* A46C4 800C92C4 4600B182 */  mul.s      $f6, $f22, $f0
/* A46C8 800C92C8 00000000 */  nop
/* A46CC 800C92CC 4602A282 */  mul.s      $f10, $f20, $f2
/* A46D0 800C92D0 00004812 */  mflo       $t1
/* A46D4 800C92D4 02E98821 */  addu       $s1, $s7, $t1
/* A46D8 800C92D8 460A3200 */  add.s      $f8, $f6, $f10
/* A46DC 800C92DC 46082180 */  add.s      $f6, $f4, $f8
/* A46E0 800C92E0 E6260008 */  swc1       $f6, 8($s1)
/* A46E4 800C92E4 C6640054 */  lwc1       $f4, 0x54($s3)
/* A46E8 800C92E8 C64A0004 */  lwc1       $f10, 4($s2)
/* A46EC 800C92EC C6060004 */  lwc1       $f6, 4($s0)
/* A46F0 800C92F0 46045202 */  mul.s      $f8, $f10, $f4
/* A46F4 800C92F4 46083280 */  add.s      $f10, $f6, $f8
/* A46F8 800C92F8 4600A102 */  mul.s      $f4, $f20, $f0
/* A46FC 800C92FC 00000000 */  nop
/* A4700 800C9300 4602B182 */  mul.s      $f6, $f22, $f2
/* A4704 800C9304 E62A000C */  swc1       $f10, 0xc($s1)
/* A4708 800C9308 C60A0008 */  lwc1       $f10, 8($s0)
/* A470C 800C930C 46062201 */  sub.s      $f8, $f4, $f6
/* A4710 800C9310 46085100 */  add.s      $f4, $f10, $f8
/* A4714 800C9314 10000050 */  b          .L800C9458
/* A4718 800C9318 E6240010 */   swc1      $f4, 0x10($s1)
/* A471C 800C931C C6460000 */  lwc1       $f6, ($s2)
.L800C9320:
/* A4720 800C9320 C66A0050 */  lwc1       $f10, 0x50($s3)
/* A4724 800C9324 C6480004 */  lwc1       $f8, 4($s2)
/* A4728 800C9328 C6640054 */  lwc1       $f4, 0x54($s3)
/* A472C 800C932C 460A3002 */  mul.s      $f0, $f6, $f10
/* A4730 800C9330 26700018 */  addiu      $s0, $s3, 0x18
/* A4734 800C9334 02960019 */  multu      $s4, $s6
/* A4738 800C9338 46044082 */  mul.s      $f2, $f8, $f4
/* A473C 800C933C C6040000 */  lwc1       $f4, ($s0)
/* A4740 800C9340 4600A182 */  mul.s      $f6, $f20, $f0
/* A4744 800C9344 00000000 */  nop
/* A4748 800C9348 4602B282 */  mul.s      $f10, $f22, $f2
/* A474C 800C934C 0000C812 */  mflo       $t9
/* A4750 800C9350 02F98821 */  addu       $s1, $s7, $t9
/* A4754 800C9354 460A3201 */  sub.s      $f8, $f6, $f10
/* A4758 800C9358 4600B282 */  mul.s      $f10, $f22, $f0
/* A475C 800C935C 46082180 */  add.s      $f6, $f4, $f8
/* A4760 800C9360 4602A102 */  mul.s      $f4, $f20, $f2
/* A4764 800C9364 E6260008 */  swc1       $f6, 8($s1)
/* A4768 800C9368 C6060004 */  lwc1       $f6, 4($s0)
/* A476C 800C936C 46045200 */  add.s      $f8, $f10, $f4
/* A4770 800C9370 46083280 */  add.s      $f10, $f6, $f8
/* A4774 800C9374 E62A000C */  swc1       $f10, 0xc($s1)
/* A4778 800C9378 C6660058 */  lwc1       $f6, 0x58($s3)
/* A477C 800C937C C6440008 */  lwc1       $f4, 8($s2)
/* A4780 800C9380 C60A0008 */  lwc1       $f10, 8($s0)
/* A4784 800C9384 46062202 */  mul.s      $f8, $f4, $f6
/* A4788 800C9388 46085100 */  add.s      $f4, $f10, $f8
/* A478C 800C938C 10000032 */  b          .L800C9458
/* A4790 800C9390 E6240010 */   swc1      $f4, 0x10($s1)
.L800C9394:
/* A4794 800C9394 00145080 */  sll        $t2, $s4, 2
/* A4798 800C9398 01545023 */  subu       $t2, $t2, $s4
/* A479C 800C939C 000A5080 */  sll        $t2, $t2, 2
/* A47A0 800C93A0 02EA8821 */  addu       $s1, $s7, $t2
/* A47A4 800C93A4 03C02825 */  or         $a1, $fp, $zero
/* A47A8 800C93A8 0C02CFFF */  jal        func_800B3FFC
/* A47AC 800C93AC 26700018 */   addiu     $s0, $s3, 0x18
/* A47B0 800C93B0 14400006 */  bnez       $v0, .L800C93CC
/* A47B4 800C93B4 24030007 */   addiu     $v1, $zero, 7
/* A47B8 800C93B8 02602025 */  or         $a0, $s3, $zero
/* A47BC 800C93BC 0C02CFFF */  jal        func_800B3FFC
/* A47C0 800C93C0 24050002 */   addiu     $a1, $zero, 2
/* A47C4 800C93C4 14400005 */  bnez       $v0, .L800C93DC
/* A47C8 800C93C8 24030007 */   addiu     $v1, $zero, 7
.L800C93CC:
/* A47CC 800C93CC 3C0B8017 */  lui        $t3, %hi(D_80174874)
/* A47D0 800C93D0 8D6B4874 */  lw         $t3, %lo(D_80174874)($t3)
/* A47D4 800C93D4 546B0015 */  bnel       $v1, $t3, .L800C942C
/* A47D8 800C93D8 C6060000 */   lwc1      $f6, ($s0)
.L800C93DC:
/* A47DC 800C93DC C6460000 */  lwc1       $f6, ($s2)
/* A47E0 800C93E0 C66A0050 */  lwc1       $f10, 0x50($s3)
/* A47E4 800C93E4 C6040000 */  lwc1       $f4, ($s0)
/* A47E8 800C93E8 460A3202 */  mul.s      $f8, $f6, $f10
/* A47EC 800C93EC 46082180 */  add.s      $f6, $f4, $f8
/* A47F0 800C93F0 E6260008 */  swc1       $f6, 8($s1)
/* A47F4 800C93F4 C6640054 */  lwc1       $f4, 0x54($s3)
/* A47F8 800C93F8 C64A0004 */  lwc1       $f10, 4($s2)
/* A47FC 800C93FC C6060004 */  lwc1       $f6, 4($s0)
/* A4800 800C9400 46045202 */  mul.s      $f8, $f10, $f4
/* A4804 800C9404 46083280 */  add.s      $f10, $f6, $f8
/* A4808 800C9408 E62A000C */  swc1       $f10, 0xc($s1)
/* A480C 800C940C C6660058 */  lwc1       $f6, 0x58($s3)
/* A4810 800C9410 C6440008 */  lwc1       $f4, 8($s2)
/* A4814 800C9414 C60A0008 */  lwc1       $f10, 8($s0)
/* A4818 800C9418 46062202 */  mul.s      $f8, $f4, $f6
/* A481C 800C941C 46085100 */  add.s      $f4, $f10, $f8
/* A4820 800C9420 1000000D */  b          .L800C9458
/* A4824 800C9424 E6240010 */   swc1      $f4, 0x10($s1)
/* A4828 800C9428 C6060000 */  lwc1       $f6, ($s0)
.L800C942C:
/* A482C 800C942C C64A0000 */  lwc1       $f10, ($s2)
/* A4830 800C9430 460A3200 */  add.s      $f8, $f6, $f10
/* A4834 800C9434 E6280008 */  swc1       $f8, 8($s1)
/* A4838 800C9438 C6460004 */  lwc1       $f6, 4($s2)
/* A483C 800C943C C6040004 */  lwc1       $f4, 4($s0)
/* A4840 800C9440 46062280 */  add.s      $f10, $f4, $f6
/* A4844 800C9444 E62A000C */  swc1       $f10, 0xc($s1)
/* A4848 800C9448 C6440008 */  lwc1       $f4, 8($s2)
/* A484C 800C944C C6080008 */  lwc1       $f8, 8($s0)
/* A4850 800C9450 46044180 */  add.s      $f6, $f8, $f4
/* A4854 800C9454 E6260010 */  swc1       $f6, 0x10($s1)
.L800C9458:
/* A4858 800C9458 26940001 */  addiu      $s4, $s4, 1
.L800C945C:
/* A485C 800C945C 169EFF27 */  bne        $s4, $fp, .L800C90FC
/* A4860 800C9460 26B50004 */   addiu     $s5, $s5, 4
/* A4864 800C9464 8E62000C */  lw         $v0, 0xc($s3)
/* A4868 800C9468 24010070 */  addiu      $at, $zero, 0x70
/* A486C 800C946C 10430005 */  beq        $v0, $v1, .L800C9484
/* A4870 800C9470 00000000 */   nop
/* A4874 800C9474 10410005 */  beq        $v0, $at, .L800C948C
/* A4878 800C9478 240C0070 */   addiu     $t4, $zero, 0x70
/* A487C 800C947C 10000005 */  b          .L800C9494
/* A4880 800C9480 3C048011 */   lui       $a0, 0x8011
.L800C9484:
/* A4884 800C9484 10000006 */  b          .L800C94A0
/* A4888 800C9488 AEE30068 */   sw        $v1, 0x68($s7)
.L800C948C:
/* A488C 800C948C 10000004 */  b          .L800C94A0
/* A4890 800C9490 AEEC0068 */   sw        $t4, 0x68($s7)
.L800C9494:
/* A4894 800C9494 0C035D18 */  jal        func_800D7460
/* A4898 800C9498 2484019C */   addiu     $a0, $a0, 0x19c
/* A489C 800C949C 24030007 */  addiu      $v1, $zero, 7
.L800C94A0:
/* A48A0 800C94A0 8FAE0078 */  lw         $t6, 0x78($sp)
/* A48A4 800C94A4 8FB80080 */  lw         $t8, 0x80($sp)
/* A48A8 800C94A8 8FA8007C */  lw         $t0, 0x7c($sp)
/* A48AC 800C94AC 25CD0001 */  addiu      $t5, $t6, 1
/* A48B0 800C94B0 270F000C */  addiu      $t7, $t8, 0xc
/* A48B4 800C94B4 AFAF0080 */  sw         $t7, 0x80($sp)
/* A48B8 800C94B8 AFAD0078 */  sw         $t5, 0x78($sp)
/* A48BC 800C94BC 15A8FF0A */  bne        $t5, $t0, .L800C90E8
/* A48C0 800C94C0 26F700A0 */   addiu     $s7, $s7, 0xa0
.L800C94C4:
/* A48C4 800C94C4 8FBF005C */  lw         $ra, 0x5c($sp)
.L800C94C8:
/* A48C8 800C94C8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* A48CC 800C94CC D7B60020 */  ldc1       $f22, 0x20($sp)
/* A48D0 800C94D0 D7B80028 */  ldc1       $f24, 0x28($sp)
/* A48D4 800C94D4 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* A48D8 800C94D8 8FB00038 */  lw         $s0, 0x38($sp)
/* A48DC 800C94DC 8FB1003C */  lw         $s1, 0x3c($sp)
/* A48E0 800C94E0 8FB20040 */  lw         $s2, 0x40($sp)
/* A48E4 800C94E4 8FB30044 */  lw         $s3, 0x44($sp)
/* A48E8 800C94E8 8FB40048 */  lw         $s4, 0x48($sp)
/* A48EC 800C94EC 8FB5004C */  lw         $s5, 0x4c($sp)
/* A48F0 800C94F0 8FB60050 */  lw         $s6, 0x50($sp)
/* A48F4 800C94F4 8FB70054 */  lw         $s7, 0x54($sp)
/* A48F8 800C94F8 8FBE0058 */  lw         $fp, 0x58($sp)
/* A48FC 800C94FC 03E00008 */  jr         $ra
/* A4900 800C9500 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_800C9504
/* A4904 800C9504 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A4908 800C9508 AFBF0014 */  sw         $ra, 0x14($sp)
/* A490C 800C950C 8C8700E4 */  lw         $a3, 0xe4($a0)
/* A4910 800C9510 00802825 */  or         $a1, $a0, $zero
/* A4914 800C9514 54E00006 */  bnel       $a3, $zero, .L800C9530
/* A4918 800C9518 8CB800E8 */   lw        $t8, 0xe8($a1)
/* A491C 800C951C 0C0323C3 */  jal        func_800C8F0C
/* A4920 800C9520 AFA50028 */   sw        $a1, 0x28($sp)
/* A4924 800C9524 8FA50028 */  lw         $a1, 0x28($sp)
/* A4928 800C9528 8CA700E4 */  lw         $a3, 0xe4($a1)
/* A492C 800C952C 8CB800E8 */  lw         $t8, 0xe8($a1)
.L800C9530:
/* A4930 800C9530 3C088023 */  lui        $t0, %hi(D_8023696C)
/* A4934 800C9534 2508696C */  addiu      $t0, $t0, %lo(D_8023696C)
/* A4938 800C9538 8D040000 */  lw         $a0, ($t0)
/* A493C 800C953C 8F060004 */  lw         $a2, 4($t8)
/* A4940 800C9540 3C0F8023 */  lui        $t7, %hi(D_80235968)
/* A4944 800C9544 25EF5968 */  addiu      $t7, $t7, %lo(D_80235968)
/* A4948 800C9548 0086C821 */  addu       $t9, $a0, $a2
/* A494C 800C954C 2B210401 */  slti       $at, $t9, 0x401
/* A4950 800C9550 00047080 */  sll        $t6, $a0, 2
/* A4954 800C9554 01CF1021 */  addu       $v0, $t6, $t7
/* A4958 800C9558 1420000C */  bnez       $at, .L800C958C
/* A495C 800C955C 00E01825 */   or        $v1, $a3, $zero
/* A4960 800C9560 3C048011 */  lui        $a0, %hi(D_801101B4)
/* A4964 800C9564 248401B4 */  addiu      $a0, $a0, %lo(D_801101B4)
/* A4968 800C9568 AFA20024 */  sw         $v0, 0x24($sp)
/* A496C 800C956C AFA70020 */  sw         $a3, 0x20($sp)
/* A4970 800C9570 0C035D18 */  jal        func_800D7460
/* A4974 800C9574 AFA6001C */   sw        $a2, 0x1c($sp)
/* A4978 800C9578 3C088023 */  lui        $t0, %hi(D_8023696C)
/* A497C 800C957C 2508696C */  addiu      $t0, $t0, %lo(D_8023696C)
/* A4980 800C9580 8FA20024 */  lw         $v0, 0x24($sp)
/* A4984 800C9584 8FA30020 */  lw         $v1, 0x20($sp)
/* A4988 800C9588 8FA6001C */  lw         $a2, 0x1c($sp)
.L800C958C:
/* A498C 800C958C 18C00016 */  blez       $a2, .L800C95E8
/* A4990 800C9590 00002025 */   or        $a0, $zero, $zero
/* A4994 800C9594 30C70003 */  andi       $a3, $a2, 3
/* A4998 800C9598 10E00008 */  beqz       $a3, .L800C95BC
/* A499C 800C959C 00E02825 */   or        $a1, $a3, $zero
.L800C95A0:
/* A49A0 800C95A0 AC430000 */  sw         $v1, ($v0)
/* A49A4 800C95A4 24840001 */  addiu      $a0, $a0, 1
/* A49A8 800C95A8 246300A0 */  addiu      $v1, $v1, 0xa0
/* A49AC 800C95AC 14A4FFFC */  bne        $a1, $a0, .L800C95A0
/* A49B0 800C95B0 24420004 */   addiu     $v0, $v0, 4
/* A49B4 800C95B4 5086000D */  beql       $a0, $a2, .L800C95EC
/* A49B8 800C95B8 8D090000 */   lw        $t1, ($t0)
.L800C95BC:
/* A49BC 800C95BC AC430000 */  sw         $v1, ($v0)
/* A49C0 800C95C0 246300A0 */  addiu      $v1, $v1, 0xa0
/* A49C4 800C95C4 AC430004 */  sw         $v1, 4($v0)
/* A49C8 800C95C8 246300A0 */  addiu      $v1, $v1, 0xa0
/* A49CC 800C95CC AC430008 */  sw         $v1, 8($v0)
/* A49D0 800C95D0 246300A0 */  addiu      $v1, $v1, 0xa0
/* A49D4 800C95D4 AC43000C */  sw         $v1, 0xc($v0)
/* A49D8 800C95D8 24840004 */  addiu      $a0, $a0, 4
/* A49DC 800C95DC 246300A0 */  addiu      $v1, $v1, 0xa0
/* A49E0 800C95E0 1486FFF6 */  bne        $a0, $a2, .L800C95BC
/* A49E4 800C95E4 24420010 */   addiu     $v0, $v0, 0x10
.L800C95E8:
/* A49E8 800C95E8 8D090000 */  lw         $t1, ($t0)
.L800C95EC:
/* A49EC 800C95EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A49F0 800C95F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* A49F4 800C95F4 01265021 */  addu       $t2, $t1, $a2
/* A49F8 800C95F8 03E00008 */  jr         $ra
/* A49FC 800C95FC AD0A0000 */   sw        $t2, ($t0)

glabel func_800C9600
/* A4A00 800C9600 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A4A04 800C9604 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4A08 800C9608 AFA40028 */  sw         $a0, 0x28($sp)
/* A4A0C 800C960C AFA5002C */  sw         $a1, 0x2c($sp)
/* A4A10 800C9610 8C8700E4 */  lw         $a3, 0xe4($a0)
/* A4A14 800C9614 00802825 */  or         $a1, $a0, $zero
/* A4A18 800C9618 54E00006 */  bnel       $a3, $zero, .L800C9634
/* A4A1C 800C961C 8CB800E8 */   lw        $t8, 0xe8($a1)
/* A4A20 800C9620 0C0323C3 */  jal        func_800C8F0C
/* A4A24 800C9624 AFA50028 */   sw        $a1, 0x28($sp)
/* A4A28 800C9628 8FA50028 */  lw         $a1, 0x28($sp)
/* A4A2C 800C962C 8CA700E4 */  lw         $a3, 0xe4($a1)
/* A4A30 800C9630 8CB800E8 */  lw         $t8, 0xe8($a1)
.L800C9634:
/* A4A34 800C9634 3C088023 */  lui        $t0, %hi(D_8023696C)
/* A4A38 800C9638 2508696C */  addiu      $t0, $t0, %lo(D_8023696C)
/* A4A3C 800C963C 8D040000 */  lw         $a0, ($t0)
/* A4A40 800C9640 8F060004 */  lw         $a2, 4($t8)
/* A4A44 800C9644 3C0F8023 */  lui        $t7, %hi(D_80235968)
/* A4A48 800C9648 25EF5968 */  addiu      $t7, $t7, %lo(D_80235968)
/* A4A4C 800C964C 0086C821 */  addu       $t9, $a0, $a2
/* A4A50 800C9650 2B210401 */  slti       $at, $t9, 0x401
/* A4A54 800C9654 00047080 */  sll        $t6, $a0, 2
/* A4A58 800C9658 01CF1021 */  addu       $v0, $t6, $t7
/* A4A5C 800C965C 1420000C */  bnez       $at, .L800C9690
/* A4A60 800C9660 00E01825 */   or        $v1, $a3, $zero
/* A4A64 800C9664 3C048011 */  lui        $a0, %hi(D_801101D0)
/* A4A68 800C9668 248401D0 */  addiu      $a0, $a0, %lo(D_801101D0)
/* A4A6C 800C966C AFA20024 */  sw         $v0, 0x24($sp)
/* A4A70 800C9670 AFA70020 */  sw         $a3, 0x20($sp)
/* A4A74 800C9674 0C035D18 */  jal        func_800D7460
/* A4A78 800C9678 AFA6001C */   sw        $a2, 0x1c($sp)
/* A4A7C 800C967C 3C088023 */  lui        $t0, %hi(D_8023696C)
/* A4A80 800C9680 2508696C */  addiu      $t0, $t0, %lo(D_8023696C)
/* A4A84 800C9684 8FA20024 */  lw         $v0, 0x24($sp)
/* A4A88 800C9688 8FA30020 */  lw         $v1, 0x20($sp)
/* A4A8C 800C968C 8FA6001C */  lw         $a2, 0x1c($sp)
.L800C9690:
/* A4A90 800C9690 18C00016 */  blez       $a2, .L800C96EC
/* A4A94 800C9694 00002025 */   or        $a0, $zero, $zero
/* A4A98 800C9698 30C70003 */  andi       $a3, $a2, 3
/* A4A9C 800C969C 10E00008 */  beqz       $a3, .L800C96C0
/* A4AA0 800C96A0 00E02825 */   or        $a1, $a3, $zero
.L800C96A4:
/* A4AA4 800C96A4 AC430000 */  sw         $v1, ($v0)
/* A4AA8 800C96A8 24840001 */  addiu      $a0, $a0, 1
/* A4AAC 800C96AC 246300A0 */  addiu      $v1, $v1, 0xa0
/* A4AB0 800C96B0 14A4FFFC */  bne        $a1, $a0, .L800C96A4
/* A4AB4 800C96B4 24420004 */   addiu     $v0, $v0, 4
/* A4AB8 800C96B8 5086000D */  beql       $a0, $a2, .L800C96F0
/* A4ABC 800C96BC 8D090000 */   lw        $t1, ($t0)
.L800C96C0:
/* A4AC0 800C96C0 AC430000 */  sw         $v1, ($v0)
/* A4AC4 800C96C4 246300A0 */  addiu      $v1, $v1, 0xa0
/* A4AC8 800C96C8 AC430004 */  sw         $v1, 4($v0)
/* A4ACC 800C96CC 246300A0 */  addiu      $v1, $v1, 0xa0
/* A4AD0 800C96D0 AC430008 */  sw         $v1, 8($v0)
/* A4AD4 800C96D4 246300A0 */  addiu      $v1, $v1, 0xa0
/* A4AD8 800C96D8 AC43000C */  sw         $v1, 0xc($v0)
/* A4ADC 800C96DC 24840004 */  addiu      $a0, $a0, 4
/* A4AE0 800C96E0 246300A0 */  addiu      $v1, $v1, 0xa0
/* A4AE4 800C96E4 1486FFF6 */  bne        $a0, $a2, .L800C96C0
/* A4AE8 800C96E8 24420010 */   addiu     $v0, $v0, 0x10
.L800C96EC:
/* A4AEC 800C96EC 8D090000 */  lw         $t1, ($t0)
.L800C96F0:
/* A4AF0 800C96F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4AF4 800C96F4 27BD0028 */  addiu      $sp, $sp, 0x28
/* A4AF8 800C96F8 01265021 */  addu       $t2, $t1, $a2
/* A4AFC 800C96FC 03E00008 */  jr         $ra
/* A4B00 800C9700 AD0A0000 */   sw        $t2, ($t0)

glabel func_800C9704
/* A4B04 800C9704 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4B08 800C9708 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4B0C 800C970C 3C018023 */  lui        $at, %hi(D_8023696C)
/* A4B10 800C9710 0C032541 */  jal        func_800C9504
/* A4B14 800C9714 AC20696C */   sw        $zero, %lo(D_8023696C)($at)
/* A4B18 800C9718 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4B1C 800C971C 27BD0018 */  addiu      $sp, $sp, 0x18
/* A4B20 800C9720 03E00008 */  jr         $ra
/* A4B24 800C9724 00000000 */   nop

glabel func_800C9728
/* A4B28 800C9728 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4B2C 800C972C AFBF0014 */  sw         $ra, 0x14($sp)
/* A4B30 800C9730 0C032541 */  jal        func_800C9504
/* A4B34 800C9734 00000000 */   nop
/* A4B38 800C9738 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4B3C 800C973C 27BD0018 */  addiu      $sp, $sp, 0x18
/* A4B40 800C9740 03E00008 */  jr         $ra
/* A4B44 800C9744 00000000 */   nop

glabel func_800C9748
/* A4B48 800C9748 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A4B4C 800C974C 3C028024 */  lui        $v0, %hi(D_80240180)
/* A4B50 800C9750 8C420180 */  lw         $v0, %lo(D_80240180)($v0)
/* A4B54 800C9754 AFB20020 */  sw         $s2, 0x20($sp)
/* A4B58 800C9758 AFB60030 */  sw         $s6, 0x30($sp)
/* A4B5C 800C975C AFB5002C */  sw         $s5, 0x2c($sp)
/* A4B60 800C9760 AFB40028 */  sw         $s4, 0x28($sp)
/* A4B64 800C9764 AFB30024 */  sw         $s3, 0x24($sp)
/* A4B68 800C9768 AFB1001C */  sw         $s1, 0x1c($sp)
/* A4B6C 800C976C 3C018023 */  lui        $at, 0x8023
/* A4B70 800C9770 3C128024 */  lui        $s2, 0x8024
/* A4B74 800C9774 00C0A025 */  or         $s4, $a2, $zero
/* A4B78 800C9778 00A0A825 */  or         $s5, $a1, $zero
/* A4B7C 800C977C 0080B025 */  or         $s6, $a0, $zero
/* A4B80 800C9780 AFBF0034 */  sw         $ra, 0x34($sp)
/* A4B84 800C9784 AFB00018 */  sw         $s0, 0x18($sp)
/* A4B88 800C9788 00009825 */  or         $s3, $zero, $zero
/* A4B8C 800C978C AC20696C */  sw         $zero, 0x696c($at)
/* A4B90 800C9790 26520898 */  addiu      $s2, $s2, 0x898
/* A4B94 800C9794 1840001A */  blez       $v0, .L800C9800
/* A4B98 800C9798 00008825 */   or        $s1, $zero, $zero
.L800C979C:
/* A4B9C 800C979C 8E500000 */  lw         $s0, ($s2)
/* A4BA0 800C97A0 8E0E0114 */  lw         $t6, 0x114($s0)
/* A4BA4 800C97A4 01D47824 */  and        $t7, $t6, $s4
/* A4BA8 800C97A8 51E00012 */  beql       $t7, $zero, .L800C97F4
/* A4BAC 800C97AC 26310001 */   addiu     $s1, $s1, 1
/* A4BB0 800C97B0 8E18000C */  lw         $t8, 0xc($s0)
/* A4BB4 800C97B4 02C02025 */  or         $a0, $s6, $zero
/* A4BB8 800C97B8 0315C824 */  and        $t9, $t8, $s5
/* A4BBC 800C97BC 5320000D */  beql       $t9, $zero, .L800C97F4
/* A4BC0 800C97C0 26310001 */   addiu     $s1, $s1, 1
/* A4BC4 800C97C4 0C02BA39 */  jal        func_800AE8E4
/* A4BC8 800C97C8 260500CC */   addiu     $a1, $s0, 0xcc
/* A4BCC 800C97CC 14400003 */  bnez       $v0, .L800C97DC
/* A4BD0 800C97D0 3C028024 */   lui       $v0, %hi(D_80240180)
/* A4BD4 800C97D4 10000006 */  b          .L800C97F0
/* A4BD8 800C97D8 8C420180 */   lw        $v0, %lo(D_80240180)($v0)
.L800C97DC:
/* A4BDC 800C97DC 0C032541 */  jal        func_800C9504
/* A4BE0 800C97E0 02002025 */   or        $a0, $s0, $zero
/* A4BE4 800C97E4 3C028024 */  lui        $v0, %hi(D_80240180)
/* A4BE8 800C97E8 8C420180 */  lw         $v0, %lo(D_80240180)($v0)
/* A4BEC 800C97EC 26730001 */  addiu      $s3, $s3, 1
.L800C97F0:
/* A4BF0 800C97F0 26310001 */  addiu      $s1, $s1, 1
.L800C97F4:
/* A4BF4 800C97F4 0222082A */  slt        $at, $s1, $v0
/* A4BF8 800C97F8 1420FFE8 */  bnez       $at, .L800C979C
/* A4BFC 800C97FC 26520004 */   addiu     $s2, $s2, 4
.L800C9800:
/* A4C00 800C9800 8FBF0034 */  lw         $ra, 0x34($sp)
/* A4C04 800C9804 02601025 */  or         $v0, $s3, $zero
/* A4C08 800C9808 8FB30024 */  lw         $s3, 0x24($sp)
/* A4C0C 800C980C 8FB00018 */  lw         $s0, 0x18($sp)
/* A4C10 800C9810 8FB1001C */  lw         $s1, 0x1c($sp)
/* A4C14 800C9814 8FB20020 */  lw         $s2, 0x20($sp)
/* A4C18 800C9818 8FB40028 */  lw         $s4, 0x28($sp)
/* A4C1C 800C981C 8FB5002C */  lw         $s5, 0x2c($sp)
/* A4C20 800C9820 8FB60030 */  lw         $s6, 0x30($sp)
/* A4C24 800C9824 03E00008 */  jr         $ra
/* A4C28 800C9828 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800C982C
/* A4C2C 800C982C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A4C30 800C9830 3C028024 */  lui        $v0, %hi(D_80240180)
/* A4C34 800C9834 8C420180 */  lw         $v0, %lo(D_80240180)($v0)
/* A4C38 800C9838 AFB20020 */  sw         $s2, 0x20($sp)
/* A4C3C 800C983C AFB60030 */  sw         $s6, 0x30($sp)
/* A4C40 800C9840 AFB5002C */  sw         $s5, 0x2c($sp)
/* A4C44 800C9844 AFB30024 */  sw         $s3, 0x24($sp)
/* A4C48 800C9848 AFB1001C */  sw         $s1, 0x1c($sp)
/* A4C4C 800C984C 3C018023 */  lui        $at, 0x8023
/* A4C50 800C9850 3C128024 */  lui        $s2, 0x8024
/* A4C54 800C9854 00A0A825 */  or         $s5, $a1, $zero
/* A4C58 800C9858 0080B025 */  or         $s6, $a0, $zero
/* A4C5C 800C985C AFBF0034 */  sw         $ra, 0x34($sp)
/* A4C60 800C9860 AFB40028 */  sw         $s4, 0x28($sp)
/* A4C64 800C9864 AFB00018 */  sw         $s0, 0x18($sp)
/* A4C68 800C9868 00009825 */  or         $s3, $zero, $zero
/* A4C6C 800C986C AC20696C */  sw         $zero, 0x696c($at)
/* A4C70 800C9870 26520898 */  addiu      $s2, $s2, 0x898
/* A4C74 800C9874 18400021 */  blez       $v0, .L800C98FC
/* A4C78 800C9878 00008825 */   or        $s1, $zero, $zero
/* A4C7C 800C987C 24140021 */  addiu      $s4, $zero, 0x21
.L800C9880:
/* A4C80 800C9880 8E500000 */  lw         $s0, ($s2)
/* A4C84 800C9884 8E0E0010 */  lw         $t6, 0x10($s0)
/* A4C88 800C9888 568E0005 */  bnel       $s4, $t6, .L800C98A0
/* A4C8C 800C988C 8E180114 */   lw        $t8, 0x114($s0)
/* A4C90 800C9890 8EAF006C */  lw         $t7, 0x6c($s5)
/* A4C94 800C9894 55E00016 */  bnel       $t7, $zero, .L800C98F0
/* A4C98 800C9898 26310001 */   addiu     $s1, $s1, 1
/* A4C9C 800C989C 8E180114 */  lw         $t8, 0x114($s0)
.L800C98A0:
/* A4CA0 800C98A0 33190002 */  andi       $t9, $t8, 2
/* A4CA4 800C98A4 53200012 */  beql       $t9, $zero, .L800C98F0
/* A4CA8 800C98A8 26310001 */   addiu     $s1, $s1, 1
/* A4CAC 800C98AC 8E08000C */  lw         $t0, 0xc($s0)
/* A4CB0 800C98B0 02C02025 */  or         $a0, $s6, $zero
/* A4CB4 800C98B4 31090077 */  andi       $t1, $t0, 0x77
/* A4CB8 800C98B8 5120000D */  beql       $t1, $zero, .L800C98F0
/* A4CBC 800C98BC 26310001 */   addiu     $s1, $s1, 1
/* A4CC0 800C98C0 0C02BA39 */  jal        func_800AE8E4
/* A4CC4 800C98C4 260500CC */   addiu     $a1, $s0, 0xcc
/* A4CC8 800C98C8 14400003 */  bnez       $v0, .L800C98D8
/* A4CCC 800C98CC 3C028024 */   lui       $v0, %hi(D_80240180)
/* A4CD0 800C98D0 10000006 */  b          .L800C98EC
/* A4CD4 800C98D4 8C420180 */   lw        $v0, %lo(D_80240180)($v0)
.L800C98D8:
/* A4CD8 800C98D8 0C032541 */  jal        func_800C9504
/* A4CDC 800C98DC 02002025 */   or        $a0, $s0, $zero
/* A4CE0 800C98E0 3C028024 */  lui        $v0, %hi(D_80240180)
/* A4CE4 800C98E4 8C420180 */  lw         $v0, %lo(D_80240180)($v0)
/* A4CE8 800C98E8 26730001 */  addiu      $s3, $s3, 1
.L800C98EC:
/* A4CEC 800C98EC 26310001 */  addiu      $s1, $s1, 1
.L800C98F0:
/* A4CF0 800C98F0 0222082A */  slt        $at, $s1, $v0
/* A4CF4 800C98F4 1420FFE2 */  bnez       $at, .L800C9880
/* A4CF8 800C98F8 26520004 */   addiu     $s2, $s2, 4
.L800C98FC:
/* A4CFC 800C98FC 8FBF0034 */  lw         $ra, 0x34($sp)
/* A4D00 800C9900 02601025 */  or         $v0, $s3, $zero
/* A4D04 800C9904 8FB30024 */  lw         $s3, 0x24($sp)
/* A4D08 800C9908 8FB00018 */  lw         $s0, 0x18($sp)
/* A4D0C 800C990C 8FB1001C */  lw         $s1, 0x1c($sp)
/* A4D10 800C9910 8FB20020 */  lw         $s2, 0x20($sp)
/* A4D14 800C9914 8FB40028 */  lw         $s4, 0x28($sp)
/* A4D18 800C9918 8FB5002C */  lw         $s5, 0x2c($sp)
/* A4D1C 800C991C 8FB60030 */  lw         $s6, 0x30($sp)
/* A4D20 800C9920 03E00008 */  jr         $ra
/* A4D24 800C9924 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800C9928
/* A4D28 800C9928 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A4D2C 800C992C 3C028024 */  lui        $v0, %hi(D_80240180)
/* A4D30 800C9930 8C420180 */  lw         $v0, %lo(D_80240180)($v0)
/* A4D34 800C9934 AFB2001C */  sw         $s2, 0x1c($sp)
/* A4D38 800C9938 AFB70030 */  sw         $s7, 0x30($sp)
/* A4D3C 800C993C AFB6002C */  sw         $s6, 0x2c($sp)
/* A4D40 800C9940 AFB50028 */  sw         $s5, 0x28($sp)
/* A4D44 800C9944 AFB30020 */  sw         $s3, 0x20($sp)
/* A4D48 800C9948 AFB10018 */  sw         $s1, 0x18($sp)
/* A4D4C 800C994C 3C018023 */  lui        $at, 0x8023
/* A4D50 800C9950 3C128024 */  lui        $s2, 0x8024
/* A4D54 800C9954 00C0A825 */  or         $s5, $a2, $zero
/* A4D58 800C9958 00A0B025 */  or         $s6, $a1, $zero
/* A4D5C 800C995C 0080B825 */  or         $s7, $a0, $zero
/* A4D60 800C9960 AFBF0034 */  sw         $ra, 0x34($sp)
/* A4D64 800C9964 AFB40024 */  sw         $s4, 0x24($sp)
/* A4D68 800C9968 AFB00014 */  sw         $s0, 0x14($sp)
/* A4D6C 800C996C 00009825 */  or         $s3, $zero, $zero
/* A4D70 800C9970 AC20696C */  sw         $zero, 0x696c($at)
/* A4D74 800C9974 26520898 */  addiu      $s2, $s2, 0x898
/* A4D78 800C9978 1840001E */  blez       $v0, .L800C99F4
/* A4D7C 800C997C 00008825 */   or        $s1, $zero, $zero
/* A4D80 800C9980 24140001 */  addiu      $s4, $zero, 1
.L800C9984:
/* A4D84 800C9984 8E500000 */  lw         $s0, ($s2)
/* A4D88 800C9988 8E0E0114 */  lw         $t6, 0x114($s0)
/* A4D8C 800C998C 01D57824 */  and        $t7, $t6, $s5
/* A4D90 800C9990 51E00015 */  beql       $t7, $zero, .L800C99E8
/* A4D94 800C9994 26310001 */   addiu     $s1, $s1, 1
/* A4D98 800C9998 8E180124 */  lw         $t8, 0x124($s0)
/* A4D9C 800C999C 52980012 */  beql       $s4, $t8, .L800C99E8
/* A4DA0 800C99A0 26310001 */   addiu     $s1, $s1, 1
/* A4DA4 800C99A4 8E19000C */  lw         $t9, 0xc($s0)
/* A4DA8 800C99A8 02E02025 */  or         $a0, $s7, $zero
/* A4DAC 800C99AC 03364024 */  and        $t0, $t9, $s6
/* A4DB0 800C99B0 5100000D */  beql       $t0, $zero, .L800C99E8
/* A4DB4 800C99B4 26310001 */   addiu     $s1, $s1, 1
/* A4DB8 800C99B8 0C02BA39 */  jal        func_800AE8E4
/* A4DBC 800C99BC 260500CC */   addiu     $a1, $s0, 0xcc
/* A4DC0 800C99C0 14400003 */  bnez       $v0, .L800C99D0
/* A4DC4 800C99C4 3C028024 */   lui       $v0, %hi(D_80240180)
/* A4DC8 800C99C8 10000006 */  b          .L800C99E4
/* A4DCC 800C99CC 8C420180 */   lw        $v0, %lo(D_80240180)($v0)
.L800C99D0:
/* A4DD0 800C99D0 0C032541 */  jal        func_800C9504
/* A4DD4 800C99D4 02002025 */   or        $a0, $s0, $zero
/* A4DD8 800C99D8 3C028024 */  lui        $v0, %hi(D_80240180)
/* A4DDC 800C99DC 8C420180 */  lw         $v0, %lo(D_80240180)($v0)
/* A4DE0 800C99E0 26730001 */  addiu      $s3, $s3, 1
.L800C99E4:
/* A4DE4 800C99E4 26310001 */  addiu      $s1, $s1, 1
.L800C99E8:
/* A4DE8 800C99E8 0222082A */  slt        $at, $s1, $v0
/* A4DEC 800C99EC 1420FFE5 */  bnez       $at, .L800C9984
/* A4DF0 800C99F0 26520004 */   addiu     $s2, $s2, 4
.L800C99F4:
/* A4DF4 800C99F4 8FBF0034 */  lw         $ra, 0x34($sp)
/* A4DF8 800C99F8 02601025 */  or         $v0, $s3, $zero
/* A4DFC 800C99FC 8FB30020 */  lw         $s3, 0x20($sp)
/* A4E00 800C9A00 8FB00014 */  lw         $s0, 0x14($sp)
/* A4E04 800C9A04 8FB10018 */  lw         $s1, 0x18($sp)
/* A4E08 800C9A08 8FB2001C */  lw         $s2, 0x1c($sp)
/* A4E0C 800C9A0C 8FB40024 */  lw         $s4, 0x24($sp)
/* A4E10 800C9A10 8FB50028 */  lw         $s5, 0x28($sp)
/* A4E14 800C9A14 8FB6002C */  lw         $s6, 0x2c($sp)
/* A4E18 800C9A18 8FB70030 */  lw         $s7, 0x30($sp)
/* A4E1C 800C9A1C 03E00008 */  jr         $ra
/* A4E20 800C9A20 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800C9A24
/* A4E24 800C9A24 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A4E28 800C9A28 3C038024 */  lui        $v1, %hi(D_80240180)
/* A4E2C 800C9A2C 8C630180 */  lw         $v1, %lo(D_80240180)($v1)
/* A4E30 800C9A30 AFB2001C */  sw         $s2, 0x1c($sp)
/* A4E34 800C9A34 AFB50028 */  sw         $s5, 0x28($sp)
/* A4E38 800C9A38 AFB40024 */  sw         $s4, 0x24($sp)
/* A4E3C 800C9A3C AFB30020 */  sw         $s3, 0x20($sp)
/* A4E40 800C9A40 AFB10018 */  sw         $s1, 0x18($sp)
/* A4E44 800C9A44 3C018023 */  lui        $at, 0x8023
/* A4E48 800C9A48 3C128024 */  lui        $s2, 0x8024
/* A4E4C 800C9A4C 00C0A025 */  or         $s4, $a2, $zero
/* A4E50 800C9A50 0080A825 */  or         $s5, $a0, $zero
/* A4E54 800C9A54 AFBF002C */  sw         $ra, 0x2c($sp)
/* A4E58 800C9A58 AFB00014 */  sw         $s0, 0x14($sp)
/* A4E5C 800C9A5C AFA50034 */  sw         $a1, 0x34($sp)
/* A4E60 800C9A60 00009825 */  or         $s3, $zero, $zero
/* A4E64 800C9A64 AC20696C */  sw         $zero, 0x696c($at)
/* A4E68 800C9A68 26520898 */  addiu      $s2, $s2, 0x898
/* A4E6C 800C9A6C 18600020 */  blez       $v1, .L800C9AF0
/* A4E70 800C9A70 00008825 */   or        $s1, $zero, $zero
.L800C9A74:
/* A4E74 800C9A74 8E500000 */  lw         $s0, ($s2)
/* A4E78 800C9A78 00001025 */  or         $v0, $zero, $zero
/* A4E7C 800C9A7C 02A02025 */  or         $a0, $s5, $zero
/* A4E80 800C9A80 8E0E0118 */  lw         $t6, 0x118($s0)
/* A4E84 800C9A84 51C00003 */  beql       $t6, $zero, .L800C9A94
/* A4E88 800C9A88 8E0F0114 */   lw        $t7, 0x114($s0)
/* A4E8C 800C9A8C 24020007 */  addiu      $v0, $zero, 7
/* A4E90 800C9A90 8E0F0114 */  lw         $t7, 0x114($s0)
.L800C9A94:
/* A4E94 800C9A94 34590070 */  ori        $t9, $v0, 0x70
/* A4E98 800C9A98 31F80001 */  andi       $t8, $t7, 1
/* A4E9C 800C9A9C 53000003 */  beql       $t8, $zero, .L800C9AAC
/* A4EA0 800C9AA0 00544024 */   and       $t0, $v0, $s4
/* A4EA4 800C9AA4 03201025 */  or         $v0, $t9, $zero
/* A4EA8 800C9AA8 00544024 */  and        $t0, $v0, $s4
.L800C9AAC:
/* A4EAC 800C9AAC 5100000D */  beql       $t0, $zero, .L800C9AE4
/* A4EB0 800C9AB0 26310001 */   addiu     $s1, $s1, 1
/* A4EB4 800C9AB4 0C02BA39 */  jal        func_800AE8E4
/* A4EB8 800C9AB8 260500CC */   addiu     $a1, $s0, 0xcc
/* A4EBC 800C9ABC 14400003 */  bnez       $v0, .L800C9ACC
/* A4EC0 800C9AC0 3C038024 */   lui       $v1, %hi(D_80240180)
/* A4EC4 800C9AC4 10000006 */  b          .L800C9AE0
/* A4EC8 800C9AC8 8C630180 */   lw        $v1, %lo(D_80240180)($v1)
.L800C9ACC:
/* A4ECC 800C9ACC 0C032541 */  jal        func_800C9504
/* A4ED0 800C9AD0 02002025 */   or        $a0, $s0, $zero
/* A4ED4 800C9AD4 3C038024 */  lui        $v1, %hi(D_80240180)
/* A4ED8 800C9AD8 8C630180 */  lw         $v1, %lo(D_80240180)($v1)
/* A4EDC 800C9ADC 26730001 */  addiu      $s3, $s3, 1
.L800C9AE0:
/* A4EE0 800C9AE0 26310001 */  addiu      $s1, $s1, 1
.L800C9AE4:
/* A4EE4 800C9AE4 0223082A */  slt        $at, $s1, $v1
/* A4EE8 800C9AE8 1420FFE2 */  bnez       $at, .L800C9A74
/* A4EEC 800C9AEC 26520004 */   addiu     $s2, $s2, 4
.L800C9AF0:
/* A4EF0 800C9AF0 8FBF002C */  lw         $ra, 0x2c($sp)
/* A4EF4 800C9AF4 02601025 */  or         $v0, $s3, $zero
/* A4EF8 800C9AF8 8FB30020 */  lw         $s3, 0x20($sp)
/* A4EFC 800C9AFC 8FB00014 */  lw         $s0, 0x14($sp)
/* A4F00 800C9B00 8FB10018 */  lw         $s1, 0x18($sp)
/* A4F04 800C9B04 8FB2001C */  lw         $s2, 0x1c($sp)
/* A4F08 800C9B08 8FB40024 */  lw         $s4, 0x24($sp)
/* A4F0C 800C9B0C 8FB50028 */  lw         $s5, 0x28($sp)
/* A4F10 800C9B10 03E00008 */  jr         $ra
/* A4F14 800C9B14 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800C9B18
/* A4F18 800C9B18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4F1C 800C9B1C AFBF0014 */  sw         $ra, 0x14($sp)
/* A4F20 800C9B20 AFA5001C */  sw         $a1, 0x1c($sp)
/* A4F24 800C9B24 8C8E0000 */  lw         $t6, ($a0)
/* A4F28 800C9B28 00803025 */  or         $a2, $a0, $zero
/* A4F2C 800C9B2C 00C02025 */  or         $a0, $a2, $zero
/* A4F30 800C9B30 05C10003 */  bgez       $t6, .L800C9B40
/* A4F34 800C9B34 24050001 */   addiu     $a1, $zero, 1
/* A4F38 800C9B38 1000000C */  b          .L800C9B6C
/* A4F3C 800C9B3C 00001025 */   or        $v0, $zero, $zero
.L800C9B40:
/* A4F40 800C9B40 0C035E79 */  jal        func_800D79E4
/* A4F44 800C9B44 AFA60018 */   sw        $a2, 0x18($sp)
/* A4F48 800C9B48 8FA60018 */  lw         $a2, 0x18($sp)
/* A4F4C 800C9B4C 8FA4001C */  lw         $a0, 0x1c($sp)
/* A4F50 800C9B50 0C02BA39 */  jal        func_800AE8E4
/* A4F54 800C9B54 24C5002C */   addiu     $a1, $a2, 0x2c
/* A4F58 800C9B58 54400004 */  bnel       $v0, $zero, .L800C9B6C
/* A4F5C 800C9B5C 24020001 */   addiu     $v0, $zero, 1
/* A4F60 800C9B60 10000002 */  b          .L800C9B6C
/* A4F64 800C9B64 00001025 */   or        $v0, $zero, $zero
/* A4F68 800C9B68 24020001 */  addiu      $v0, $zero, 1
.L800C9B6C:
/* A4F6C 800C9B6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4F70 800C9B70 27BD0018 */  addiu      $sp, $sp, 0x18
/* A4F74 800C9B74 03E00008 */  jr         $ra
/* A4F78 800C9B78 00000000 */   nop

glabel func_800C9B7C
/* A4F7C 800C9B7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4F80 800C9B80 AFA40018 */  sw         $a0, 0x18($sp)
/* A4F84 800C9B84 AFA70024 */  sw         $a3, 0x24($sp)
/* A4F88 800C9B88 C7A60024 */  lwc1       $f6, 0x24($sp)
/* A4F8C 800C9B8C C7A40018 */  lwc1       $f4, 0x18($sp)
/* A4F90 800C9B90 AFA5001C */  sw         $a1, 0x1c($sp)
/* A4F94 800C9B94 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* A4F98 800C9B98 46062001 */  sub.s      $f0, $f4, $f6
/* A4F9C 800C9B9C C7AA0028 */  lwc1       $f10, 0x28($sp)
/* A4FA0 800C9BA0 AFA60020 */  sw         $a2, 0x20($sp)
/* A4FA4 800C9BA4 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* A4FA8 800C9BA8 460A4081 */  sub.s      $f2, $f8, $f10
/* A4FAC 800C9BAC 46000402 */  mul.s      $f16, $f0, $f0
/* A4FB0 800C9BB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4FB4 800C9BB4 46021482 */  mul.s      $f18, $f2, $f2
/* A4FB8 800C9BB8 46128100 */  add.s      $f4, $f16, $f18
/* A4FBC 800C9BBC 460E7182 */  mul.s      $f6, $f14, $f14
/* A4FC0 800C9BC0 0C036C2C */  jal        func_800DB0B0
/* A4FC4 800C9BC4 46062300 */   add.s     $f12, $f4, $f6
/* A4FC8 800C9BC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4FCC 800C9BCC 27BD0018 */  addiu      $sp, $sp, 0x18
/* A4FD0 800C9BD0 03E00008 */  jr         $ra
/* A4FD4 800C9BD4 00000000 */   nop

glabel func_800C9BD8
/* A4FD8 800C9BD8 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A4FDC 800C9BDC AFA40060 */  sw         $a0, 0x60($sp)
/* A4FE0 800C9BE0 AFA7006C */  sw         $a3, 0x6c($sp)
/* A4FE4 800C9BE4 C7A6006C */  lwc1       $f6, 0x6c($sp)
/* A4FE8 800C9BE8 C7A40060 */  lwc1       $f4, 0x60($sp)
/* A4FEC 800C9BEC AFA50064 */  sw         $a1, 0x64($sp)
/* A4FF0 800C9BF0 C7A80064 */  lwc1       $f8, 0x64($sp)
/* A4FF4 800C9BF4 C7AA0070 */  lwc1       $f10, 0x70($sp)
/* A4FF8 800C9BF8 46062381 */  sub.s      $f14, $f4, $f6
/* A4FFC 800C9BFC C7A40074 */  lwc1       $f4, 0x74($sp)
/* A5000 800C9C00 3C048011 */  lui        $a0, 0x8011
/* A5004 800C9C04 460A4401 */  sub.s      $f16, $f8, $f10
/* A5008 800C9C08 C7A80078 */  lwc1       $f8, 0x78($sp)
/* A500C 800C9C0C AFBF001C */  sw         $ra, 0x1c($sp)
/* A5010 800C9C10 46062481 */  sub.s      $f18, $f4, $f6
/* A5014 800C9C14 AFA60068 */  sw         $a2, 0x68($sp)
/* A5018 800C9C18 248401EC */  addiu      $a0, $a0, 0x1ec
/* A501C 800C9C1C 460A4081 */  sub.s      $f2, $f8, $f10
/* A5020 800C9C20 46129102 */  mul.s      $f4, $f18, $f18
/* A5024 800C9C24 44804000 */  mtc1       $zero, $f8
/* A5028 800C9C28 46021182 */  mul.s      $f6, $f2, $f2
/* A502C 800C9C2C E7A2005C */  swc1       $f2, 0x5c($sp)
/* A5030 800C9C30 46062300 */  add.s      $f12, $f4, $f6
/* A5034 800C9C34 460C4032 */  c.eq.s     $f8, $f12
/* A5038 800C9C38 E7AC0054 */  swc1       $f12, 0x54($sp)
/* A503C 800C9C3C 45000008 */  bc1f       .L800C9C60
/* A5040 800C9C40 00000000 */   nop
/* A5044 800C9C44 E7AE0048 */  swc1       $f14, 0x48($sp)
/* A5048 800C9C48 E7B0004C */  swc1       $f16, 0x4c($sp)
/* A504C 800C9C4C 0C035D18 */  jal        func_800D7460
/* A5050 800C9C50 E7B20058 */   swc1      $f18, 0x58($sp)
/* A5054 800C9C54 C7AE0048 */  lwc1       $f14, 0x48($sp)
/* A5058 800C9C58 C7B0004C */  lwc1       $f16, 0x4c($sp)
/* A505C 800C9C5C C7B20058 */  lwc1       $f18, 0x58($sp)
.L800C9C60:
/* A5060 800C9C60 460E9282 */  mul.s      $f10, $f18, $f14
/* A5064 800C9C64 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* A5068 800C9C68 3C013F80 */  lui        $at, 0x3f80
/* A506C 800C9C6C 27AF006C */  addiu      $t7, $sp, 0x6c
/* A5070 800C9C70 46102182 */  mul.s      $f6, $f4, $f16
/* A5074 800C9C74 C7A40054 */  lwc1       $f4, 0x54($sp)
/* A5078 800C9C78 27AC0060 */  addiu      $t4, $sp, 0x60
/* A507C 800C9C7C 46065200 */  add.s      $f8, $f10, $f6
/* A5080 800C9C80 44805000 */  mtc1       $zero, $f10
/* A5084 800C9C84 46044003 */  div.s      $f0, $f8, $f4
/* A5088 800C9C88 460A003E */  c.le.s     $f0, $f10
/* A508C 800C9C8C 00000000 */  nop
/* A5090 800C9C90 45020008 */  bc1fl      .L800C9CB4
/* A5094 800C9C94 44816000 */   mtc1      $at, $f12
/* A5098 800C9C98 8DE10000 */  lw         $at, ($t7)
/* A509C 800C9C9C 27AE0038 */  addiu      $t6, $sp, 0x38
/* A50A0 800C9CA0 ADC10000 */  sw         $at, ($t6)
/* A50A4 800C9CA4 8DF90004 */  lw         $t9, 4($t7)
/* A50A8 800C9CA8 1000001B */  b          .L800C9D18
/* A50AC 800C9CAC ADD90004 */   sw        $t9, 4($t6)
/* A50B0 800C9CB0 44816000 */  mtc1       $at, $f12
.L800C9CB4:
/* A50B4 800C9CB4 27A90074 */  addiu      $t1, $sp, 0x74
/* A50B8 800C9CB8 4600603E */  c.le.s     $f12, $f0
/* A50BC 800C9CBC 00000000 */  nop
/* A50C0 800C9CC0 45020008 */  bc1fl      .L800C9CE4
/* A50C4 800C9CC4 46006081 */   sub.s     $f2, $f12, $f0
/* A50C8 800C9CC8 8D210000 */  lw         $at, ($t1)
/* A50CC 800C9CCC 27A80038 */  addiu      $t0, $sp, 0x38
/* A50D0 800C9CD0 AD010000 */  sw         $at, ($t0)
/* A50D4 800C9CD4 8D2B0004 */  lw         $t3, 4($t1)
/* A50D8 800C9CD8 1000000F */  b          .L800C9D18
/* A50DC 800C9CDC AD0B0004 */   sw        $t3, 4($t0)
/* A50E0 800C9CE0 46006081 */  sub.s      $f2, $f12, $f0
.L800C9CE4:
/* A50E4 800C9CE4 C7A6006C */  lwc1       $f6, 0x6c($sp)
/* A50E8 800C9CE8 C7A40074 */  lwc1       $f4, 0x74($sp)
/* A50EC 800C9CEC 46061202 */  mul.s      $f8, $f2, $f6
/* A50F0 800C9CF0 00000000 */  nop
/* A50F4 800C9CF4 46040282 */  mul.s      $f10, $f0, $f4
/* A50F8 800C9CF8 C7A40070 */  lwc1       $f4, 0x70($sp)
/* A50FC 800C9CFC 460A4180 */  add.s      $f6, $f8, $f10
/* A5100 800C9D00 46041202 */  mul.s      $f8, $f2, $f4
/* A5104 800C9D04 C7AA0078 */  lwc1       $f10, 0x78($sp)
/* A5108 800C9D08 E7A60038 */  swc1       $f6, 0x38($sp)
/* A510C 800C9D0C 460A0182 */  mul.s      $f6, $f0, $f10
/* A5110 800C9D10 46064100 */  add.s      $f4, $f8, $f6
/* A5114 800C9D14 E7A4003C */  swc1       $f4, 0x3c($sp)
.L800C9D18:
/* A5118 800C9D18 8D810000 */  lw         $at, ($t4)
/* A511C 800C9D1C 27AE0038 */  addiu      $t6, $sp, 0x38
/* A5120 800C9D20 AFA10000 */  sw         $at, ($sp)
/* A5124 800C9D24 8D850004 */  lw         $a1, 4($t4)
/* A5128 800C9D28 8FA40000 */  lw         $a0, ($sp)
/* A512C 800C9D2C AFA50004 */  sw         $a1, 4($sp)
/* A5130 800C9D30 8D810008 */  lw         $at, 8($t4)
/* A5134 800C9D34 AFA10008 */  sw         $at, 8($sp)
/* A5138 800C9D38 8DC70000 */  lw         $a3, ($t6)
/* A513C 800C9D3C 8FA60008 */  lw         $a2, 8($sp)
/* A5140 800C9D40 AFA7000C */  sw         $a3, 0xc($sp)
/* A5144 800C9D44 8DD90004 */  lw         $t9, 4($t6)
/* A5148 800C9D48 0C0326DF */  jal        func_800C9B7C
/* A514C 800C9D4C AFB90010 */   sw        $t9, 0x10($sp)
/* A5150 800C9D50 8FAA007C */  lw         $t2, 0x7c($sp)
/* A5154 800C9D54 44803000 */  mtc1       $zero, $f6
/* A5158 800C9D58 27A8002C */  addiu      $t0, $sp, 0x2c
/* A515C 800C9D5C E5400000 */  swc1       $f0, ($t2)
/* A5160 800C9D60 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* A5164 800C9D64 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* A5168 800C9D68 E7A60034 */  swc1       $f6, 0x34($sp)
/* A516C 800C9D6C E7AA002C */  swc1       $f10, 0x2c($sp)
/* A5170 800C9D70 E7A80030 */  swc1       $f8, 0x30($sp)
/* A5174 800C9D74 8D010000 */  lw         $at, ($t0)
/* A5178 800C9D78 8FAD0084 */  lw         $t5, 0x84($sp)
/* A517C 800C9D7C 8FA40080 */  lw         $a0, 0x80($sp)
/* A5180 800C9D80 AFA10004 */  sw         $at, 4($sp)
/* A5184 800C9D84 8D060004 */  lw         $a2, 4($t0)
/* A5188 800C9D88 8FA50004 */  lw         $a1, 4($sp)
/* A518C 800C9D8C AFA60008 */  sw         $a2, 8($sp)
/* A5190 800C9D90 8D070008 */  lw         $a3, 8($t0)
/* A5194 800C9D94 AFAD0010 */  sw         $t5, 0x10($sp)
/* A5198 800C9D98 0C035F0F */  jal        func_800D7C3C
/* A519C 800C9D9C AFA7000C */   sw        $a3, 0xc($sp)
/* A51A0 800C9DA0 8FBF001C */  lw         $ra, 0x1c($sp)
/* A51A4 800C9DA4 27BD0060 */  addiu      $sp, $sp, 0x60
/* A51A8 800C9DA8 03E00008 */  jr         $ra
/* A51AC 800C9DAC 00000000 */   nop

glabel func_800C9DB0
/* A51B0 800C9DB0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A51B4 800C9DB4 AFB10030 */  sw         $s1, 0x30($sp)
/* A51B8 800C9DB8 27B10038 */  addiu      $s1, $sp, 0x38
/* A51BC 800C9DBC AFBF0034 */  sw         $ra, 0x34($sp)
/* A51C0 800C9DC0 AFB0002C */  sw         $s0, 0x2c($sp)
/* A51C4 800C9DC4 AFA40038 */  sw         $a0, 0x38($sp)
/* A51C8 800C9DC8 AFA5003C */  sw         $a1, 0x3c($sp)
/* A51CC 800C9DCC AFA60040 */  sw         $a2, 0x40($sp)
/* A51D0 800C9DD0 8E210000 */  lw         $at, ($s1)
/* A51D4 800C9DD4 00E08025 */  or         $s0, $a3, $zero
/* A51D8 800C9DD8 02202025 */  or         $a0, $s1, $zero
/* A51DC 800C9DDC AFA10004 */  sw         $at, 4($sp)
/* A51E0 800C9DE0 8E260004 */  lw         $a2, 4($s1)
/* A51E4 800C9DE4 8FA50004 */  lw         $a1, 4($sp)
/* A51E8 800C9DE8 AFA60008 */  sw         $a2, 8($sp)
/* A51EC 800C9DEC 8E210008 */  lw         $at, 8($s1)
/* A51F0 800C9DF0 AFA70010 */  sw         $a3, 0x10($sp)
/* A51F4 800C9DF4 00203825 */  or         $a3, $at, $zero
/* A51F8 800C9DF8 0C035ED1 */  jal        func_800D7B44
/* A51FC 800C9DFC AFA1000C */   sw        $at, 0xc($sp)
/* A5200 800C9E00 C6040074 */  lwc1       $f4, 0x74($s0)
/* A5204 800C9E04 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A5208 800C9E08 C60A006C */  lwc1       $f10, 0x6c($s0)
/* A520C 800C9E0C C7B00038 */  lwc1       $f16, 0x38($sp)
/* A5210 800C9E10 46062202 */  mul.s      $f8, $f4, $f6
/* A5214 800C9E14 C6040078 */  lwc1       $f4, 0x78($s0)
/* A5218 800C9E18 44806000 */  mtc1       $zero, $f12
/* A521C 800C9E1C 46105482 */  mul.s      $f18, $f10, $f16
/* A5220 800C9E20 00001025 */  or         $v0, $zero, $zero
/* A5224 800C9E24 3C013F80 */  lui        $at, 0x3f80
/* A5228 800C9E28 46062282 */  mul.s      $f10, $f4, $f6
/* A522C 800C9E2C 3C048011 */  lui        $a0, 0x8011
/* A5230 800C9E30 46124000 */  add.s      $f0, $f8, $f18
/* A5234 800C9E34 C6080070 */  lwc1       $f8, 0x70($s0)
/* A5238 800C9E38 46104482 */  mul.s      $f18, $f8, $f16
/* A523C 800C9E3C 460C003C */  c.lt.s     $f0, $f12
/* A5240 800C9E40 00000000 */  nop
/* A5244 800C9E44 45000002 */  bc1f       .L800C9E50
/* A5248 800C9E48 46125080 */   add.s     $f2, $f10, $f18
/* A524C 800C9E4C 24020001 */  addiu      $v0, $zero, 1
.L800C9E50:
/* A5250 800C9E50 460C103C */  c.lt.s     $f2, $f12
/* A5254 800C9E54 46020180 */  add.s      $f6, $f0, $f2
/* A5258 800C9E58 45020003 */  bc1fl      .L800C9E68
/* A525C 800C9E5C 44812000 */   mtc1      $at, $f4
/* A5260 800C9E60 24420002 */  addiu      $v0, $v0, 2
/* A5264 800C9E64 44812000 */  mtc1       $at, $f4
.L800C9E68:
/* A5268 800C9E68 00000000 */  nop
/* A526C 800C9E6C 4606203C */  c.lt.s     $f4, $f6
/* A5270 800C9E70 00000000 */  nop
/* A5274 800C9E74 45020003 */  bc1fl      .L800C9E84
/* A5278 800C9E78 2C410007 */   sltiu     $at, $v0, 7
/* A527C 800C9E7C 24420004 */  addiu      $v0, $v0, 4
/* A5280 800C9E80 2C410007 */  sltiu      $at, $v0, 7
.L800C9E84:
/* A5284 800C9E84 102000BC */  beqz       $at, .L800CA178
/* A5288 800C9E88 0002C080 */   sll       $t8, $v0, 2
/* A528C 800C9E8C 3C018011 */  lui        $at, %hi(D_80110428)
/* A5290 800C9E90 00380821 */  addu       $at, $at, $t8
/* A5294 800C9E94 8C380428 */  lw         $t8, %lo(D_80110428)($at)
/* A5298 800C9E98 03000008 */  jr         $t8
/* A529C 800C9E9C 00000000 */   nop
/* A52A0 800C9EA0 8FA40054 */  lw         $a0, 0x54($sp)
/* A52A4 800C9EA4 8E210000 */  lw         $at, ($s1)
/* A52A8 800C9EA8 AC810000 */  sw         $at, ($a0)
/* A52AC 800C9EAC 8E290004 */  lw         $t1, 4($s1)
/* A52B0 800C9EB0 AC890004 */  sw         $t1, 4($a0)
/* A52B4 800C9EB4 8E210008 */  lw         $at, 8($s1)
/* A52B8 800C9EB8 AC810008 */  sw         $at, 8($a0)
/* A52BC 800C9EBC 8C810000 */  lw         $at, ($a0)
/* A52C0 800C9EC0 E48C0008 */  swc1       $f12, 8($a0)
/* A52C4 800C9EC4 AFA10004 */  sw         $at, 4($sp)
/* A52C8 800C9EC8 8C860004 */  lw         $a2, 4($a0)
/* A52CC 800C9ECC 8FA50004 */  lw         $a1, 4($sp)
/* A52D0 800C9ED0 AFA60008 */  sw         $a2, 8($sp)
/* A52D4 800C9ED4 8C870008 */  lw         $a3, 8($a0)
/* A52D8 800C9ED8 AFB00010 */  sw         $s0, 0x10($sp)
/* A52DC 800C9EDC 0C035F0F */  jal        func_800D7C3C
/* A52E0 800C9EE0 AFA7000C */   sw        $a3, 0xc($sp)
/* A52E4 800C9EE4 C7A80040 */  lwc1       $f8, 0x40($sp)
/* A52E8 800C9EE8 8FAC004C */  lw         $t4, 0x4c($sp)
/* A52EC 800C9EEC E5880000 */  swc1       $f8, ($t4)
/* A52F0 800C9EF0 8FAD0050 */  lw         $t5, 0x50($sp)
/* A52F4 800C9EF4 100000A2 */  b          .L800CA180
/* A52F8 800C9EF8 ADA00000 */   sw        $zero, ($t5)
/* A52FC 800C9EFC 8FAE0054 */  lw         $t6, 0x54($sp)
/* A5300 800C9F00 8E010008 */  lw         $at, 8($s0)
/* A5304 800C9F04 ADC10000 */  sw         $at, ($t6)
/* A5308 800C9F08 8E18000C */  lw         $t8, 0xc($s0)
/* A530C 800C9F0C ADD80004 */  sw         $t8, 4($t6)
/* A5310 800C9F10 8E010010 */  lw         $at, 0x10($s0)
/* A5314 800C9F14 ADC10008 */  sw         $at, 8($t6)
/* A5318 800C9F18 8E210000 */  lw         $at, ($s1)
/* A531C 800C9F1C AFA10000 */  sw         $at, ($sp)
/* A5320 800C9F20 8E250004 */  lw         $a1, 4($s1)
/* A5324 800C9F24 8FA40000 */  lw         $a0, ($sp)
/* A5328 800C9F28 AFA50004 */  sw         $a1, 4($sp)
/* A532C 800C9F2C 8E210008 */  lw         $at, 8($s1)
/* A5330 800C9F30 AFA10008 */  sw         $at, 8($sp)
/* A5334 800C9F34 8E07007C */  lw         $a3, 0x7c($s0)
/* A5338 800C9F38 8FA60008 */  lw         $a2, 8($sp)
/* A533C 800C9F3C AFA7000C */  sw         $a3, 0xc($sp)
/* A5340 800C9F40 8E0A0080 */  lw         $t2, 0x80($s0)
/* A5344 800C9F44 0C0326DF */  jal        func_800C9B7C
/* A5348 800C9F48 AFAA0010 */   sw        $t2, 0x10($sp)
/* A534C 800C9F4C 8FAB004C */  lw         $t3, 0x4c($sp)
/* A5350 800C9F50 240C0001 */  addiu      $t4, $zero, 1
/* A5354 800C9F54 E5600000 */  swc1       $f0, ($t3)
/* A5358 800C9F58 8FAD0050 */  lw         $t5, 0x50($sp)
/* A535C 800C9F5C 10000088 */  b          .L800CA180
/* A5360 800C9F60 ADAC0000 */   sw        $t4, ($t5)
/* A5364 800C9F64 8FAF0054 */  lw         $t7, 0x54($sp)
/* A5368 800C9F68 8E010014 */  lw         $at, 0x14($s0)
/* A536C 800C9F6C ADE10000 */  sw         $at, ($t7)
/* A5370 800C9F70 8E180018 */  lw         $t8, 0x18($s0)
/* A5374 800C9F74 ADF80004 */  sw         $t8, 4($t7)
/* A5378 800C9F78 8E01001C */  lw         $at, 0x1c($s0)
/* A537C 800C9F7C ADE10008 */  sw         $at, 8($t7)
/* A5380 800C9F80 8E210000 */  lw         $at, ($s1)
/* A5384 800C9F84 AFA10000 */  sw         $at, ($sp)
/* A5388 800C9F88 8E250004 */  lw         $a1, 4($s1)
/* A538C 800C9F8C 8FA40000 */  lw         $a0, ($sp)
/* A5390 800C9F90 AFA50004 */  sw         $a1, 4($sp)
/* A5394 800C9F94 8E210008 */  lw         $at, 8($s1)
/* A5398 800C9F98 AFA10008 */  sw         $at, 8($sp)
/* A539C 800C9F9C 8E070084 */  lw         $a3, 0x84($s0)
/* A53A0 800C9FA0 8FA60008 */  lw         $a2, 8($sp)
/* A53A4 800C9FA4 AFA7000C */  sw         $a3, 0xc($sp)
/* A53A8 800C9FA8 8E0A0088 */  lw         $t2, 0x88($s0)
/* A53AC 800C9FAC 0C0326DF */  jal        func_800C9B7C
/* A53B0 800C9FB0 AFAA0010 */   sw        $t2, 0x10($sp)
/* A53B4 800C9FB4 8FAB004C */  lw         $t3, 0x4c($sp)
/* A53B8 800C9FB8 240C0001 */  addiu      $t4, $zero, 1
/* A53BC 800C9FBC E5600000 */  swc1       $f0, ($t3)
/* A53C0 800C9FC0 8FAD0050 */  lw         $t5, 0x50($sp)
/* A53C4 800C9FC4 1000006E */  b          .L800CA180
/* A53C8 800C9FC8 ADAC0000 */   sw        $t4, ($t5)
/* A53CC 800C9FCC 8FAE0054 */  lw         $t6, 0x54($sp)
/* A53D0 800C9FD0 8E010020 */  lw         $at, 0x20($s0)
/* A53D4 800C9FD4 ADC10000 */  sw         $at, ($t6)
/* A53D8 800C9FD8 8E180024 */  lw         $t8, 0x24($s0)
/* A53DC 800C9FDC ADD80004 */  sw         $t8, 4($t6)
/* A53E0 800C9FE0 8E010028 */  lw         $at, 0x28($s0)
/* A53E4 800C9FE4 ADC10008 */  sw         $at, 8($t6)
/* A53E8 800C9FE8 8E210000 */  lw         $at, ($s1)
/* A53EC 800C9FEC AFA10000 */  sw         $at, ($sp)
/* A53F0 800C9FF0 8E250004 */  lw         $a1, 4($s1)
/* A53F4 800C9FF4 8FA40000 */  lw         $a0, ($sp)
/* A53F8 800C9FF8 AFA50004 */  sw         $a1, 4($sp)
/* A53FC 800C9FFC 8E210008 */  lw         $at, 8($s1)
/* A5400 800CA000 AFA10008 */  sw         $at, 8($sp)
/* A5404 800CA004 8E07008C */  lw         $a3, 0x8c($s0)
/* A5408 800CA008 8FA60008 */  lw         $a2, 8($sp)
/* A540C 800CA00C AFA7000C */  sw         $a3, 0xc($sp)
/* A5410 800CA010 8E0A0090 */  lw         $t2, 0x90($s0)
/* A5414 800CA014 0C0326DF */  jal        func_800C9B7C
/* A5418 800CA018 AFAA0010 */   sw        $t2, 0x10($sp)
/* A541C 800CA01C 8FAB004C */  lw         $t3, 0x4c($sp)
/* A5420 800CA020 240C0001 */  addiu      $t4, $zero, 1
/* A5424 800CA024 E5600000 */  swc1       $f0, ($t3)
/* A5428 800CA028 8FAD0050 */  lw         $t5, 0x50($sp)
/* A542C 800CA02C 10000054 */  b          .L800CA180
/* A5430 800CA030 ADAC0000 */   sw        $t4, ($t5)
/* A5434 800CA034 8E210000 */  lw         $at, ($s1)
/* A5438 800CA038 8FAA004C */  lw         $t2, 0x4c($sp)
/* A543C 800CA03C 8FAB0054 */  lw         $t3, 0x54($sp)
/* A5440 800CA040 AFA10000 */  sw         $at, ($sp)
/* A5444 800CA044 8E250004 */  lw         $a1, 4($s1)
/* A5448 800CA048 8FA40000 */  lw         $a0, ($sp)
/* A544C 800CA04C AFA50004 */  sw         $a1, 4($sp)
/* A5450 800CA050 8E210008 */  lw         $at, 8($s1)
/* A5454 800CA054 AFA10008 */  sw         $at, 8($sp)
/* A5458 800CA058 8E01007C */  lw         $at, 0x7c($s0)
/* A545C 800CA05C 8FA60008 */  lw         $a2, 8($sp)
/* A5460 800CA060 AFA1000C */  sw         $at, 0xc($sp)
/* A5464 800CA064 8E080080 */  lw         $t0, 0x80($s0)
/* A5468 800CA068 8FA7000C */  lw         $a3, 0xc($sp)
/* A546C 800CA06C AFA80010 */  sw         $t0, 0x10($sp)
/* A5470 800CA070 8E010084 */  lw         $at, 0x84($s0)
/* A5474 800CA074 AFA10014 */  sw         $at, 0x14($sp)
/* A5478 800CA078 8E090088 */  lw         $t1, 0x88($s0)
/* A547C 800CA07C AFB00024 */  sw         $s0, 0x24($sp)
/* A5480 800CA080 AFAA001C */  sw         $t2, 0x1c($sp)
/* A5484 800CA084 AFAB0020 */  sw         $t3, 0x20($sp)
/* A5488 800CA088 0C0326F6 */  jal        func_800C9BD8
/* A548C 800CA08C AFA90018 */   sw        $t1, 0x18($sp)
/* A5490 800CA090 8FAD0050 */  lw         $t5, 0x50($sp)
/* A5494 800CA094 240C0001 */  addiu      $t4, $zero, 1
/* A5498 800CA098 10000039 */  b          .L800CA180
/* A549C 800CA09C ADAC0000 */   sw        $t4, ($t5)
/* A54A0 800CA0A0 8E210000 */  lw         $at, ($s1)
/* A54A4 800CA0A4 8FAA004C */  lw         $t2, 0x4c($sp)
/* A54A8 800CA0A8 8FAB0054 */  lw         $t3, 0x54($sp)
/* A54AC 800CA0AC AFA10000 */  sw         $at, ($sp)
/* A54B0 800CA0B0 8E250004 */  lw         $a1, 4($s1)
/* A54B4 800CA0B4 8FA40000 */  lw         $a0, ($sp)
/* A54B8 800CA0B8 AFA50004 */  sw         $a1, 4($sp)
/* A54BC 800CA0BC 8E210008 */  lw         $at, 8($s1)
/* A54C0 800CA0C0 AFA10008 */  sw         $at, 8($sp)
/* A54C4 800CA0C4 8E010084 */  lw         $at, 0x84($s0)
/* A54C8 800CA0C8 8FA60008 */  lw         $a2, 8($sp)
/* A54CC 800CA0CC AFA1000C */  sw         $at, 0xc($sp)
/* A54D0 800CA0D0 8E080088 */  lw         $t0, 0x88($s0)
/* A54D4 800CA0D4 8FA7000C */  lw         $a3, 0xc($sp)
/* A54D8 800CA0D8 AFA80010 */  sw         $t0, 0x10($sp)
/* A54DC 800CA0DC 8E01008C */  lw         $at, 0x8c($s0)
/* A54E0 800CA0E0 AFA10014 */  sw         $at, 0x14($sp)
/* A54E4 800CA0E4 8E090090 */  lw         $t1, 0x90($s0)
/* A54E8 800CA0E8 AFB00024 */  sw         $s0, 0x24($sp)
/* A54EC 800CA0EC AFAA001C */  sw         $t2, 0x1c($sp)
/* A54F0 800CA0F0 AFAB0020 */  sw         $t3, 0x20($sp)
/* A54F4 800CA0F4 0C0326F6 */  jal        func_800C9BD8
/* A54F8 800CA0F8 AFA90018 */   sw        $t1, 0x18($sp)
/* A54FC 800CA0FC 8FAD0050 */  lw         $t5, 0x50($sp)
/* A5500 800CA100 240C0001 */  addiu      $t4, $zero, 1
/* A5504 800CA104 1000001E */  b          .L800CA180
/* A5508 800CA108 ADAC0000 */   sw        $t4, ($t5)
/* A550C 800CA10C 8E210000 */  lw         $at, ($s1)
/* A5510 800CA110 8FAA004C */  lw         $t2, 0x4c($sp)
/* A5514 800CA114 8FAB0054 */  lw         $t3, 0x54($sp)
/* A5518 800CA118 AFA10000 */  sw         $at, ($sp)
/* A551C 800CA11C 8E250004 */  lw         $a1, 4($s1)
/* A5520 800CA120 8FA40000 */  lw         $a0, ($sp)
/* A5524 800CA124 AFA50004 */  sw         $a1, 4($sp)
/* A5528 800CA128 8E210008 */  lw         $at, 8($s1)
/* A552C 800CA12C AFA10008 */  sw         $at, 8($sp)
/* A5530 800CA130 8E01008C */  lw         $at, 0x8c($s0)
/* A5534 800CA134 8FA60008 */  lw         $a2, 8($sp)
/* A5538 800CA138 AFA1000C */  sw         $at, 0xc($sp)
/* A553C 800CA13C 8E080090 */  lw         $t0, 0x90($s0)
/* A5540 800CA140 8FA7000C */  lw         $a3, 0xc($sp)
/* A5544 800CA144 AFA80010 */  sw         $t0, 0x10($sp)
/* A5548 800CA148 8E01007C */  lw         $at, 0x7c($s0)
/* A554C 800CA14C AFA10014 */  sw         $at, 0x14($sp)
/* A5550 800CA150 8E090080 */  lw         $t1, 0x80($s0)
/* A5554 800CA154 AFB00024 */  sw         $s0, 0x24($sp)
/* A5558 800CA158 AFAA001C */  sw         $t2, 0x1c($sp)
/* A555C 800CA15C AFAB0020 */  sw         $t3, 0x20($sp)
/* A5560 800CA160 0C0326F6 */  jal        func_800C9BD8
/* A5564 800CA164 AFA90018 */   sw        $t1, 0x18($sp)
/* A5568 800CA168 8FAD0050 */  lw         $t5, 0x50($sp)
/* A556C 800CA16C 240C0001 */  addiu      $t4, $zero, 1
/* A5570 800CA170 10000003 */  b          .L800CA180
/* A5574 800CA174 ADAC0000 */   sw        $t4, ($t5)
.L800CA178:
/* A5578 800CA178 0C035D18 */  jal        func_800D7460
/* A557C 800CA17C 24840214 */   addiu     $a0, $a0, 0x214
.L800CA180:
/* A5580 800CA180 8FBF0034 */  lw         $ra, 0x34($sp)
/* A5584 800CA184 8FB0002C */  lw         $s0, 0x2c($sp)
/* A5588 800CA188 8FB10030 */  lw         $s1, 0x30($sp)
/* A558C 800CA18C 03E00008 */  jr         $ra
/* A5590 800CA190 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800CA194
/* A5594 800CA194 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* A5598 800CA198 F7B60030 */  sdc1       $f22, 0x30($sp)
/* A559C 800CA19C 4487B000 */  mtc1       $a3, $f22
/* A55A0 800CA1A0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* A55A4 800CA1A4 AFA400B8 */  sw         $a0, 0xb8($sp)
/* A55A8 800CA1A8 AFA500BC */  sw         $a1, 0xbc($sp)
/* A55AC 800CA1AC AFA600C0 */  sw         $a2, 0xc0($sp)
/* A55B0 800CA1B0 C7B400C0 */  lwc1       $f20, 0xc0($sp)
/* A55B4 800CA1B4 C7AE00BC */  lwc1       $f14, 0xbc($sp)
/* A55B8 800CA1B8 C7AC00B8 */  lwc1       $f12, 0xb8($sp)
/* A55BC 800CA1BC AFB40050 */  sw         $s4, 0x50($sp)
/* A55C0 800CA1C0 3C148025 */  lui        $s4, %hi(D_802488A8)
/* A55C4 800CA1C4 269488A8 */  addiu      $s4, $s4, %lo(D_802488A8)
/* A55C8 800CA1C8 AE800000 */  sw         $zero, ($s4)
/* A55CC 800CA1CC 3C0E8023 */  lui        $t6, %hi(D_8023696C)
/* A55D0 800CA1D0 4616A401 */  sub.s      $f16, $f20, $f22
/* A55D4 800CA1D4 8DCE696C */  lw         $t6, %lo(D_8023696C)($t6)
/* A55D8 800CA1D8 AFB3004C */  sw         $s3, 0x4c($sp)
/* A55DC 800CA1DC 4616A480 */  add.s      $f18, $f20, $f22
/* A55E0 800CA1E0 AFB10044 */  sw         $s1, 0x44($sp)
/* A55E4 800CA1E4 AFB20048 */  sw         $s2, 0x48($sp)
/* A55E8 800CA1E8 46167201 */  sub.s      $f8, $f14, $f22
/* A55EC 800CA1EC 3C118025 */  lui        $s1, 0x8025
/* A55F0 800CA1F0 3C138023 */  lui        $s3, 0x8023
/* A55F4 800CA1F4 46167280 */  add.s      $f10, $f14, $f22
/* A55F8 800CA1F8 AFBF0064 */  sw         $ra, 0x64($sp)
/* A55FC 800CA1FC AFBE0060 */  sw         $fp, 0x60($sp)
/* A5600 800CA200 46166101 */  sub.s      $f4, $f12, $f22
/* A5604 800CA204 AFB7005C */  sw         $s7, 0x5c($sp)
/* A5608 800CA208 AFB60058 */  sw         $s6, 0x58($sp)
/* A560C 800CA20C 46166180 */  add.s      $f6, $f12, $f22
/* A5610 800CA210 AFB50054 */  sw         $s5, 0x54($sp)
/* A5614 800CA214 AFB00040 */  sw         $s0, 0x40($sp)
/* A5618 800CA218 F7B80038 */  sdc1       $f24, 0x38($sp)
/* A561C 800CA21C 26318528 */  addiu      $s1, $s1, -0x7ad8
/* A5620 800CA220 E7A40070 */  swc1       $f4, 0x70($sp)
/* A5624 800CA224 E7A6007C */  swc1       $f6, 0x7c($sp)
/* A5628 800CA228 E7A80074 */  swc1       $f8, 0x74($sp)
/* A562C 800CA22C E7AA0080 */  swc1       $f10, 0x80($sp)
/* A5630 800CA230 E7B00078 */  swc1       $f16, 0x78($sp)
/* A5634 800CA234 E7B20084 */  swc1       $f18, 0x84($sp)
/* A5638 800CA238 26735968 */  addiu      $s3, $s3, 0x5968
/* A563C 800CA23C 19C00060 */  blez       $t6, .L800CA3C0
/* A5640 800CA240 00009025 */   or        $s2, $zero, $zero
/* A5644 800CA244 4480C000 */  mtc1       $zero, $f24
/* A5648 800CA248 27BE00AC */  addiu      $fp, $sp, 0xac
/* A564C 800CA24C 27B700B8 */  addiu      $s7, $sp, 0xb8
/* A5650 800CA250 27B60070 */  addiu      $s6, $sp, 0x70
/* A5654 800CA254 27B500A0 */  addiu      $s5, $sp, 0xa0
/* A5658 800CA258 8E700000 */  lw         $s0, ($s3)
.L800CA25C:
/* A565C 800CA25C 24050001 */  addiu      $a1, $zero, 1
/* A5660 800CA260 0C035E79 */  jal        func_800D79E4
/* A5664 800CA264 02002025 */   or        $a0, $s0, $zero
/* A5668 800CA268 02002025 */  or         $a0, $s0, $zero
/* A566C 800CA26C 0C0326C6 */  jal        func_800C9B18
/* A5670 800CA270 02C02825 */   or        $a1, $s6, $zero
/* A5674 800CA274 1040004B */  beqz       $v0, .L800CA3A4
/* A5678 800CA278 02002025 */   or        $a0, $s0, $zero
/* A567C 800CA27C 0C035E79 */  jal        func_800D79E4
/* A5680 800CA280 24050002 */   addiu     $a1, $zero, 2
/* A5684 800CA284 C7A400B8 */  lwc1       $f4, 0xb8($sp)
/* A5688 800CA288 C6060008 */  lwc1       $f6, 8($s0)
/* A568C 800CA28C C7A800BC */  lwc1       $f8, 0xbc($sp)
/* A5690 800CA290 C60A000C */  lwc1       $f10, 0xc($s0)
/* A5694 800CA294 46062001 */  sub.s      $f0, $f4, $f6
/* A5698 800CA298 C604005C */  lwc1       $f4, 0x5c($s0)
/* A569C 800CA29C C7B000C0 */  lwc1       $f16, 0xc0($sp)
/* A56A0 800CA2A0 460A4081 */  sub.s      $f2, $f8, $f10
/* A56A4 800CA2A4 C6120010 */  lwc1       $f18, 0x10($s0)
/* A56A8 800CA2A8 46040182 */  mul.s      $f6, $f0, $f4
/* A56AC 800CA2AC C6080060 */  lwc1       $f8, 0x60($s0)
/* A56B0 800CA2B0 46128301 */  sub.s      $f12, $f16, $f18
/* A56B4 800CA2B4 C6120064 */  lwc1       $f18, 0x64($s0)
/* A56B8 800CA2B8 46081282 */  mul.s      $f10, $f2, $f8
/* A56BC 800CA2BC 460A3400 */  add.s      $f16, $f6, $f10
/* A56C0 800CA2C0 460C9102 */  mul.s      $f4, $f18, $f12
/* A56C4 800CA2C4 46102500 */  add.s      $f20, $f4, $f16
/* A56C8 800CA2C8 4618A03C */  c.lt.s     $f20, $f24
/* A56CC 800CA2CC 00000000 */  nop
/* A56D0 800CA2D0 45010034 */  bc1t       .L800CA3A4
/* A56D4 800CA2D4 00000000 */   nop
/* A56D8 800CA2D8 4614B03C */  c.lt.s     $f22, $f20
/* A56DC 800CA2DC 02002025 */  or         $a0, $s0, $zero
/* A56E0 800CA2E0 45010030 */  bc1t       .L800CA3A4
/* A56E4 800CA2E4 00000000 */   nop
/* A56E8 800CA2E8 0C035E79 */  jal        func_800D79E4
/* A56EC 800CA2EC 24050003 */   addiu     $a1, $zero, 3
/* A56F0 800CA2F0 8E0F0000 */  lw         $t7, ($s0)
/* A56F4 800CA2F4 05E0002B */  bltz       $t7, .L800CA3A4
/* A56F8 800CA2F8 00000000 */   nop
/* A56FC 800CA2FC 8EE10000 */  lw         $at, ($s7)
/* A5700 800CA300 27A800B0 */  addiu      $t0, $sp, 0xb0
/* A5704 800CA304 02003825 */  or         $a3, $s0, $zero
/* A5708 800CA308 AFA10000 */  sw         $at, ($sp)
/* A570C 800CA30C 8EE50004 */  lw         $a1, 4($s7)
/* A5710 800CA310 8FA40000 */  lw         $a0, ($sp)
/* A5714 800CA314 AFA50004 */  sw         $a1, 4($sp)
/* A5718 800CA318 8EE60008 */  lw         $a2, 8($s7)
/* A571C 800CA31C AFB5001C */  sw         $s5, 0x1c($sp)
/* A5720 800CA320 AFA80018 */  sw         $t0, 0x18($sp)
/* A5724 800CA324 AFBE0014 */  sw         $fp, 0x14($sp)
/* A5728 800CA328 E7B60010 */  swc1       $f22, 0x10($sp)
/* A572C 800CA32C 0C03276C */  jal        func_800C9DB0
/* A5730 800CA330 AFA60008 */   sw        $a2, 8($sp)
/* A5734 800CA334 C7A800AC */  lwc1       $f8, 0xac($sp)
/* A5738 800CA338 4608B03C */  c.lt.s     $f22, $f8
/* A573C 800CA33C 00000000 */  nop
/* A5740 800CA340 45010018 */  bc1t       .L800CA3A4
/* A5744 800CA344 00000000 */   nop
/* A5748 800CA348 8E890000 */  lw         $t1, ($s4)
/* A574C 800CA34C 3C048011 */  lui        $a0, %hi(D_80110238)
/* A5750 800CA350 29210020 */  slti       $at, $t1, 0x20
/* A5754 800CA354 54200004 */  bnel       $at, $zero, .L800CA368
/* A5758 800CA358 AE300000 */   sw        $s0, ($s1)
/* A575C 800CA35C 0C035D18 */  jal        func_800D7460
/* A5760 800CA360 24840238 */   addiu     $a0, $a0, %lo(D_80110238)
/* A5764 800CA364 AE300000 */  sw         $s0, ($s1)
.L800CA368:
/* A5768 800CA368 8FAA00B0 */  lw         $t2, 0xb0($sp)
/* A576C 800CA36C 2631001C */  addiu      $s1, $s1, 0x1c
/* A5770 800CA370 AE2AFFE8 */  sw         $t2, -0x18($s1)
/* A5774 800CA374 C7A600AC */  lwc1       $f6, 0xac($sp)
/* A5778 800CA378 E634FFF0 */  swc1       $f20, -0x10($s1)
/* A577C 800CA37C E626FFEC */  swc1       $f6, -0x14($s1)
/* A5780 800CA380 8EA10000 */  lw         $at, ($s5)
/* A5784 800CA384 AE21FFF4 */  sw         $at, -0xc($s1)
/* A5788 800CA388 8EAC0004 */  lw         $t4, 4($s5)
/* A578C 800CA38C AE2CFFF8 */  sw         $t4, -8($s1)
/* A5790 800CA390 8EA10008 */  lw         $at, 8($s5)
/* A5794 800CA394 AE21FFFC */  sw         $at, -4($s1)
/* A5798 800CA398 8E8D0000 */  lw         $t5, ($s4)
/* A579C 800CA39C 25AE0001 */  addiu      $t6, $t5, 1
/* A57A0 800CA3A0 AE8E0000 */  sw         $t6, ($s4)
.L800CA3A4:
/* A57A4 800CA3A4 3C0F8023 */  lui        $t7, %hi(D_8023696C)
/* A57A8 800CA3A8 8DEF696C */  lw         $t7, %lo(D_8023696C)($t7)
/* A57AC 800CA3AC 26520001 */  addiu      $s2, $s2, 1
/* A57B0 800CA3B0 26730004 */  addiu      $s3, $s3, 4
/* A57B4 800CA3B4 024F082A */  slt        $at, $s2, $t7
/* A57B8 800CA3B8 5420FFA8 */  bnel       $at, $zero, .L800CA25C
/* A57BC 800CA3BC 8E700000 */   lw        $s0, ($s3)
.L800CA3C0:
/* A57C0 800CA3C0 8FBF0064 */  lw         $ra, 0x64($sp)
/* A57C4 800CA3C4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* A57C8 800CA3C8 D7B60030 */  ldc1       $f22, 0x30($sp)
/* A57CC 800CA3CC D7B80038 */  ldc1       $f24, 0x38($sp)
/* A57D0 800CA3D0 8FB00040 */  lw         $s0, 0x40($sp)
/* A57D4 800CA3D4 8FB10044 */  lw         $s1, 0x44($sp)
/* A57D8 800CA3D8 8FB20048 */  lw         $s2, 0x48($sp)
/* A57DC 800CA3DC 8FB3004C */  lw         $s3, 0x4c($sp)
/* A57E0 800CA3E0 8FB40050 */  lw         $s4, 0x50($sp)
/* A57E4 800CA3E4 8FB50054 */  lw         $s5, 0x54($sp)
/* A57E8 800CA3E8 8FB60058 */  lw         $s6, 0x58($sp)
/* A57EC 800CA3EC 8FB7005C */  lw         $s7, 0x5c($sp)
/* A57F0 800CA3F0 8FBE0060 */  lw         $fp, 0x60($sp)
/* A57F4 800CA3F4 03E00008 */  jr         $ra
/* A57F8 800CA3F8 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel func_800CA3FC
/* A57FC 800CA3FC 3C028025 */  lui        $v0, %hi(D_802488A8)
/* A5800 800CA400 8C4288A8 */  lw         $v0, %lo(D_802488A8)($v0)
/* A5804 800CA404 24010001 */  addiu      $at, $zero, 1
/* A5808 800CA408 14400003 */  bnez       $v0, .L800CA418
/* A580C 800CA40C 00000000 */   nop
/* A5810 800CA410 03E00008 */  jr         $ra
/* A5814 800CA414 00001025 */   or        $v0, $zero, $zero
.L800CA418:
/* A5818 800CA418 14410004 */  bne        $v0, $at, .L800CA42C
/* A581C 800CA41C 3C038025 */   lui       $v1, 0x8025
/* A5820 800CA420 3C028025 */  lui        $v0, %hi(D_80248528)
/* A5824 800CA424 03E00008 */  jr         $ra
/* A5828 800CA428 24428528 */   addiu     $v0, $v0, %lo(D_80248528)
.L800CA42C:
/* A582C 800CA42C 3C048025 */  lui        $a0, %hi(D_80248528)
/* A5830 800CA430 28410002 */  slti       $at, $v0, 2
/* A5834 800CA434 24638544 */  addiu      $v1, $v1, -0x7abc
/* A5838 800CA438 24848528 */  addiu      $a0, $a0, %lo(D_80248528)
/* A583C 800CA43C 1420001C */  bnez       $at, .L800CA4B0
/* A5840 800CA440 24050001 */   addiu     $a1, $zero, 1
.L800CA444:
/* A5844 800CA444 C4800008 */  lwc1       $f0, 8($a0)
/* A5848 800CA448 C4620008 */  lwc1       $f2, 8($v1)
/* A584C 800CA44C 24A50001 */  addiu      $a1, $a1, 1
/* A5850 800CA450 00A2082A */  slt        $at, $a1, $v0
/* A5854 800CA454 4602003C */  c.lt.s     $f0, $f2
/* A5858 800CA458 00000000 */  nop
/* A585C 800CA45C 45010012 */  bc1t       .L800CA4A8
/* A5860 800CA460 00000000 */   nop
/* A5864 800CA464 46020032 */  c.eq.s     $f0, $f2
/* A5868 800CA468 00000000 */  nop
/* A586C 800CA46C 4502000E */  bc1fl      .L800CA4A8
/* A5870 800CA470 00602025 */   or        $a0, $v1, $zero
/* A5874 800CA474 8C6E0004 */  lw         $t6, 4($v1)
/* A5878 800CA478 51C0000B */  beql       $t6, $zero, .L800CA4A8
/* A587C 800CA47C 00602025 */   or        $a0, $v1, $zero
/* A5880 800CA480 8C8F0004 */  lw         $t7, 4($a0)
/* A5884 800CA484 51E00008 */  beql       $t7, $zero, .L800CA4A8
/* A5888 800CA488 00602025 */   or        $a0, $v1, $zero
/* A588C 800CA48C C464000C */  lwc1       $f4, 0xc($v1)
/* A5890 800CA490 C486000C */  lwc1       $f6, 0xc($a0)
/* A5894 800CA494 4606203C */  c.lt.s     $f4, $f6
/* A5898 800CA498 00000000 */  nop
/* A589C 800CA49C 45010002 */  bc1t       .L800CA4A8
/* A58A0 800CA4A0 00000000 */   nop
/* A58A4 800CA4A4 00602025 */  or         $a0, $v1, $zero
.L800CA4A8:
/* A58A8 800CA4A8 1420FFE6 */  bnez       $at, .L800CA444
/* A58AC 800CA4AC 2463001C */   addiu     $v1, $v1, 0x1c
.L800CA4B0:
/* A58B0 800CA4B0 00801025 */  or         $v0, $a0, $zero
/* A58B4 800CA4B4 03E00008 */  jr         $ra
/* A58B8 800CA4B8 00000000 */   nop

glabel func_800CA4BC
/* A58BC 800CA4BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A58C0 800CA4C0 AFBF002C */  sw         $ra, 0x2c($sp)
/* A58C4 800CA4C4 AFB20028 */  sw         $s2, 0x28($sp)
/* A58C8 800CA4C8 AFB10024 */  sw         $s1, 0x24($sp)
/* A58CC 800CA4CC AFB00020 */  sw         $s0, 0x20($sp)
/* A58D0 800CA4D0 8C8E0004 */  lw         $t6, 4($a0)
/* A58D4 800CA4D4 00808825 */  or         $s1, $a0, $zero
/* A58D8 800CA4D8 3C028025 */  lui        $v0, %hi(D_802488A8)
/* A58DC 800CA4DC 51C00030 */  beql       $t6, $zero, .L800CA5A0
/* A58E0 800CA4E0 8FBF002C */   lw        $ra, 0x2c($sp)
/* A58E4 800CA4E4 8C4288A8 */  lw         $v0, %lo(D_802488A8)($v0)
/* A58E8 800CA4E8 3C108025 */  lui        $s0, %hi(D_80248528)
/* A58EC 800CA4EC 26108528 */  addiu      $s0, $s0, %lo(D_80248528)
/* A58F0 800CA4F0 1840002A */  blez       $v0, .L800CA59C
/* A58F4 800CA4F4 00009025 */   or        $s2, $zero, $zero
.L800CA4F8:
/* A58F8 800CA4F8 52110025 */  beql       $s0, $s1, .L800CA590
/* A58FC 800CA4FC 26520001 */   addiu     $s2, $s2, 1
/* A5900 800CA500 8E210010 */  lw         $at, 0x10($s1)
/* A5904 800CA504 AFA10000 */  sw         $at, ($sp)
/* A5908 800CA508 8E250014 */  lw         $a1, 0x14($s1)
/* A590C 800CA50C 8FA40000 */  lw         $a0, ($sp)
/* A5910 800CA510 AFA50004 */  sw         $a1, 4($sp)
/* A5914 800CA514 8E260018 */  lw         $a2, 0x18($s1)
/* A5918 800CA518 AFA60008 */  sw         $a2, 8($sp)
/* A591C 800CA51C 0C035F84 */  jal        func_800D7E10
/* A5920 800CA520 8E070000 */   lw        $a3, ($s0)
/* A5924 800CA524 10400017 */  beqz       $v0, .L800CA584
/* A5928 800CA528 00000000 */   nop
/* A592C 800CA52C 8E190000 */  lw         $t9, ($s0)
/* A5930 800CA530 8F21005C */  lw         $at, 0x5c($t9)
/* A5934 800CA534 AFA10000 */  sw         $at, ($sp)
/* A5938 800CA538 8F250060 */  lw         $a1, 0x60($t9)
/* A593C 800CA53C 8FA40000 */  lw         $a0, ($sp)
/* A5940 800CA540 AFA50004 */  sw         $a1, 4($sp)
/* A5944 800CA544 8F210064 */  lw         $at, 0x64($t9)
/* A5948 800CA548 AFA10008 */  sw         $at, 8($sp)
/* A594C 800CA54C 8E2A0000 */  lw         $t2, ($s1)
/* A5950 800CA550 8FA60008 */  lw         $a2, 8($sp)
/* A5954 800CA554 8D41005C */  lw         $at, 0x5c($t2)
/* A5958 800CA558 AFA1000C */  sw         $at, 0xc($sp)
/* A595C 800CA55C 8D4C0060 */  lw         $t4, 0x60($t2)
/* A5960 800CA560 8FA7000C */  lw         $a3, 0xc($sp)
/* A5964 800CA564 AFAC0010 */  sw         $t4, 0x10($sp)
/* A5968 800CA568 8D410064 */  lw         $at, 0x64($t2)
/* A596C 800CA56C 0C036045 */  jal        func_800D8114
/* A5970 800CA570 AFA10014 */   sw        $at, 0x14($sp)
/* A5974 800CA574 10400003 */  beqz       $v0, .L800CA584
/* A5978 800CA578 00000000 */   nop
/* A597C 800CA57C 10000007 */  b          .L800CA59C
/* A5980 800CA580 AE200004 */   sw        $zero, 4($s1)
.L800CA584:
/* A5984 800CA584 3C028025 */  lui        $v0, %hi(D_802488A8)
/* A5988 800CA588 8C4288A8 */  lw         $v0, %lo(D_802488A8)($v0)
/* A598C 800CA58C 26520001 */  addiu      $s2, $s2, 1
.L800CA590:
/* A5990 800CA590 0242082A */  slt        $at, $s2, $v0
/* A5994 800CA594 1420FFD8 */  bnez       $at, .L800CA4F8
/* A5998 800CA598 2610001C */   addiu     $s0, $s0, 0x1c
.L800CA59C:
/* A599C 800CA59C 8FBF002C */  lw         $ra, 0x2c($sp)
.L800CA5A0:
/* A59A0 800CA5A0 8FB00020 */  lw         $s0, 0x20($sp)
/* A59A4 800CA5A4 8FB10024 */  lw         $s1, 0x24($sp)
/* A59A8 800CA5A8 8FB20028 */  lw         $s2, 0x28($sp)
/* A59AC 800CA5AC 03E00008 */  jr         $ra
/* A59B0 800CA5B0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800CA5B4
/* A59B4 800CA5B4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A59B8 800CA5B8 8FAE0070 */  lw         $t6, 0x70($sp)
/* A59BC 800CA5BC AFBF001C */  sw         $ra, 0x1c($sp)
/* A59C0 800CA5C0 AFA40060 */  sw         $a0, 0x60($sp)
/* A59C4 800CA5C4 AFA50064 */  sw         $a1, 0x64($sp)
/* A59C8 800CA5C8 AFA60068 */  sw         $a2, 0x68($sp)
/* A59CC 800CA5CC AFA7006C */  sw         $a3, 0x6c($sp)
/* A59D0 800CA5D0 8DCF0004 */  lw         $t7, 4($t6)
/* A59D4 800CA5D4 8FAA0070 */  lw         $t2, 0x70($sp)
/* A59D8 800CA5D8 27AB0064 */  addiu      $t3, $sp, 0x64
/* A59DC 800CA5DC 51E0002F */  beql       $t7, $zero, .L800CA69C
/* A59E0 800CA5E0 8D610000 */   lw        $at, ($t3)
/* A59E4 800CA5E4 8DC10010 */  lw         $at, 0x10($t6)
/* A59E8 800CA5E8 27B80054 */  addiu      $t8, $sp, 0x54
/* A59EC 800CA5EC AF010000 */  sw         $at, ($t8)
/* A59F0 800CA5F0 8DC90014 */  lw         $t1, 0x14($t6)
/* A59F4 800CA5F4 AF090004 */  sw         $t1, 4($t8)
/* A59F8 800CA5F8 8DC10018 */  lw         $at, 0x18($t6)
/* A59FC 800CA5FC AF010008 */  sw         $at, 8($t8)
/* A5A00 800CA600 C7A60054 */  lwc1       $f6, 0x54($sp)
/* A5A04 800CA604 C7A40064 */  lwc1       $f4, 0x64($sp)
/* A5A08 800CA608 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* A5A0C 800CA60C C7A80068 */  lwc1       $f8, 0x68($sp)
/* A5A10 800CA610 46062001 */  sub.s      $f0, $f4, $f6
/* A5A14 800CA614 C7A6005C */  lwc1       $f6, 0x5c($sp)
/* A5A18 800CA618 C7A4006C */  lwc1       $f4, 0x6c($sp)
/* A5A1C 800CA61C 460A4481 */  sub.s      $f18, $f8, $f10
/* A5A20 800CA620 46000202 */  mul.s      $f8, $f0, $f0
/* A5A24 800CA624 E7A00048 */  swc1       $f0, 0x48($sp)
/* A5A28 800CA628 46062381 */  sub.s      $f14, $f4, $f6
/* A5A2C 800CA62C 46129282 */  mul.s      $f10, $f18, $f18
/* A5A30 800CA630 E7B2004C */  swc1       $f18, 0x4c($sp)
/* A5A34 800CA634 460E7182 */  mul.s      $f6, $f14, $f14
/* A5A38 800CA638 E7AE0050 */  swc1       $f14, 0x50($sp)
/* A5A3C 800CA63C 460A4100 */  add.s      $f4, $f8, $f10
/* A5A40 800CA640 0C036C2C */  jal        func_800DB0B0
/* A5A44 800CA644 46062300 */   add.s     $f12, $f4, $f6
/* A5A48 800CA648 C7A80074 */  lwc1       $f8, 0x74($sp)
/* A5A4C 800CA64C C7B00048 */  lwc1       $f16, 0x48($sp)
/* A5A50 800CA650 C7B2004C */  lwc1       $f18, 0x4c($sp)
/* A5A54 800CA654 46004083 */  div.s      $f2, $f8, $f0
/* A5A58 800CA658 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* A5A5C 800CA65C C7AA0054 */  lwc1       $f10, 0x54($sp)
/* A5A60 800CA660 C7A60058 */  lwc1       $f6, 0x58($sp)
/* A5A64 800CA664 46028402 */  mul.s      $f16, $f16, $f2
/* A5A68 800CA668 00000000 */  nop
/* A5A6C 800CA66C 46029482 */  mul.s      $f18, $f18, $f2
/* A5A70 800CA670 00000000 */  nop
/* A5A74 800CA674 46026302 */  mul.s      $f12, $f12, $f2
/* A5A78 800CA678 46105100 */  add.s      $f4, $f10, $f16
/* A5A7C 800CA67C C7AA005C */  lwc1       $f10, 0x5c($sp)
/* A5A80 800CA680 46123200 */  add.s      $f8, $f6, $f18
/* A5A84 800CA684 E7A40064 */  swc1       $f4, 0x64($sp)
/* A5A88 800CA688 460C5100 */  add.s      $f4, $f10, $f12
/* A5A8C 800CA68C E7A80068 */  swc1       $f8, 0x68($sp)
/* A5A90 800CA690 1000001B */  b          .L800CA700
/* A5A94 800CA694 E7A4006C */   swc1      $f4, 0x6c($sp)
/* A5A98 800CA698 8D610000 */  lw         $at, ($t3)
.L800CA69C:
/* A5A9C 800CA69C 8D420000 */  lw         $v0, ($t2)
/* A5AA0 800CA6A0 27A40034 */  addiu      $a0, $sp, 0x34
/* A5AA4 800CA6A4 AFA10004 */  sw         $at, 4($sp)
/* A5AA8 800CA6A8 8D660004 */  lw         $a2, 4($t3)
/* A5AAC 800CA6AC 8FA50004 */  lw         $a1, 4($sp)
/* A5AB0 800CA6B0 AFA60008 */  sw         $a2, 8($sp)
/* A5AB4 800CA6B4 8D670008 */  lw         $a3, 8($t3)
/* A5AB8 800CA6B8 AFA20030 */  sw         $v0, 0x30($sp)
/* A5ABC 800CA6BC AFA20010 */  sw         $v0, 0x10($sp)
/* A5AC0 800CA6C0 0C035ED1 */  jal        func_800D7B44
/* A5AC4 800CA6C4 AFA7000C */   sw        $a3, 0xc($sp)
/* A5AC8 800CA6C8 C7A60074 */  lwc1       $f6, 0x74($sp)
/* A5ACC 800CA6CC 27AF0034 */  addiu      $t7, $sp, 0x34
/* A5AD0 800CA6D0 8FA20030 */  lw         $v0, 0x30($sp)
/* A5AD4 800CA6D4 E7A6003C */  swc1       $f6, 0x3c($sp)
/* A5AD8 800CA6D8 8DE10000 */  lw         $at, ($t7)
/* A5ADC 800CA6DC 27A40064 */  addiu      $a0, $sp, 0x64
/* A5AE0 800CA6E0 AFA10004 */  sw         $at, 4($sp)
/* A5AE4 800CA6E4 8DE60004 */  lw         $a2, 4($t7)
/* A5AE8 800CA6E8 8FA50004 */  lw         $a1, 4($sp)
/* A5AEC 800CA6EC AFA60008 */  sw         $a2, 8($sp)
/* A5AF0 800CA6F0 8DE70008 */  lw         $a3, 8($t7)
/* A5AF4 800CA6F4 AFA20010 */  sw         $v0, 0x10($sp)
/* A5AF8 800CA6F8 0C035F0F */  jal        func_800D7C3C
/* A5AFC 800CA6FC AFA7000C */   sw        $a3, 0xc($sp)
.L800CA700:
/* A5B00 800CA700 27AE0064 */  addiu      $t6, $sp, 0x64
/* A5B04 800CA704 8DC10000 */  lw         $at, ($t6)
/* A5B08 800CA708 8FB80060 */  lw         $t8, 0x60($sp)
/* A5B0C 800CA70C AF010000 */  sw         $at, ($t8)
/* A5B10 800CA710 8DCC0004 */  lw         $t4, 4($t6)
/* A5B14 800CA714 AF0C0004 */  sw         $t4, 4($t8)
/* A5B18 800CA718 8DC10008 */  lw         $at, 8($t6)
/* A5B1C 800CA71C AF010008 */  sw         $at, 8($t8)
/* A5B20 800CA720 8FBF001C */  lw         $ra, 0x1c($sp)
/* A5B24 800CA724 8FA20060 */  lw         $v0, 0x60($sp)
/* A5B28 800CA728 27BD0060 */  addiu      $sp, $sp, 0x60
/* A5B2C 800CA72C 03E00008 */  jr         $ra
/* A5B30 800CA730 00000000 */   nop

glabel func_800CA734
/* A5B34 800CA734 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A5B38 800CA738 3C0E8023 */  lui        $t6, %hi(D_8023696C)
/* A5B3C 800CA73C 8DCE696C */  lw         $t6, %lo(D_8023696C)($t6)
/* A5B40 800CA740 AFBF0044 */  sw         $ra, 0x44($sp)
/* A5B44 800CA744 AFB60040 */  sw         $s6, 0x40($sp)
/* A5B48 800CA748 AFB5003C */  sw         $s5, 0x3c($sp)
/* A5B4C 800CA74C AFB40038 */  sw         $s4, 0x38($sp)
/* A5B50 800CA750 AFB30034 */  sw         $s3, 0x34($sp)
/* A5B54 800CA754 AFB20030 */  sw         $s2, 0x30($sp)
/* A5B58 800CA758 AFB1002C */  sw         $s1, 0x2c($sp)
/* A5B5C 800CA75C AFB00028 */  sw         $s0, 0x28($sp)
/* A5B60 800CA760 F7B40020 */  sdc1       $f20, 0x20($sp)
/* A5B64 800CA764 AFA40060 */  sw         $a0, 0x60($sp)
/* A5B68 800CA768 AFA50064 */  sw         $a1, 0x64($sp)
/* A5B6C 800CA76C AFA60068 */  sw         $a2, 0x68($sp)
/* A5B70 800CA770 15C0000E */  bnez       $t6, .L800CA7AC
/* A5B74 800CA774 AFA7006C */   sw        $a3, 0x6c($sp)
/* A5B78 800CA778 3C048025 */  lui        $a0, %hi(D_802488B0)
/* A5B7C 800CA77C 0C036066 */  jal        func_800D8198
/* A5B80 800CA780 248488B0 */   addiu     $a0, $a0, %lo(D_802488B0)
/* A5B84 800CA784 27B20064 */  addiu      $s2, $sp, 0x64
/* A5B88 800CA788 8E410000 */  lw         $at, ($s2)
/* A5B8C 800CA78C 8FAF0060 */  lw         $t7, 0x60($sp)
/* A5B90 800CA790 ADE10000 */  sw         $at, ($t7)
/* A5B94 800CA794 8E590004 */  lw         $t9, 4($s2)
/* A5B98 800CA798 ADF90004 */  sw         $t9, 4($t7)
/* A5B9C 800CA79C 8E410008 */  lw         $at, 8($s2)
/* A5BA0 800CA7A0 ADE10008 */  sw         $at, 8($t7)
/* A5BA4 800CA7A4 10000049 */  b          .L800CA8CC
/* A5BA8 800CA7A8 8FA20060 */   lw        $v0, 0x60($sp)
.L800CA7AC:
/* A5BAC 800CA7AC 27B20064 */  addiu      $s2, $sp, 0x64
/* A5BB0 800CA7B0 8E410000 */  lw         $at, ($s2)
/* A5BB4 800CA7B4 27A80048 */  addiu      $t0, $sp, 0x48
/* A5BB8 800CA7B8 3C158025 */  lui        $s5, 0x8025
/* A5BBC 800CA7BC AD010000 */  sw         $at, ($t0)
/* A5BC0 800CA7C0 8E4A0004 */  lw         $t2, 4($s2)
/* A5BC4 800CA7C4 00008825 */  or         $s1, $zero, $zero
/* A5BC8 800CA7C8 00009825 */  or         $s3, $zero, $zero
/* A5BCC 800CA7CC AD0A0004 */  sw         $t2, 4($t0)
/* A5BD0 800CA7D0 8E410008 */  lw         $at, 8($s2)
/* A5BD4 800CA7D4 26B588A8 */  addiu      $s5, $s5, -0x7758
/* A5BD8 800CA7D8 24160004 */  addiu      $s6, $zero, 4
/* A5BDC 800CA7DC AD010008 */  sw         $at, 8($t0)
/* A5BE0 800CA7E0 8FB40074 */  lw         $s4, 0x74($sp)
/* A5BE4 800CA7E4 C7B40070 */  lwc1       $f20, 0x70($sp)
.L800CA7E8:
/* A5BE8 800CA7E8 8E410000 */  lw         $at, ($s2)
/* A5BEC 800CA7EC 4407A000 */  mfc1       $a3, $f20
/* A5BF0 800CA7F0 AFA10000 */  sw         $at, ($sp)
/* A5BF4 800CA7F4 8E450004 */  lw         $a1, 4($s2)
/* A5BF8 800CA7F8 8FA40000 */  lw         $a0, ($sp)
/* A5BFC 800CA7FC AFA50004 */  sw         $a1, 4($sp)
/* A5C00 800CA800 8E460008 */  lw         $a2, 8($s2)
/* A5C04 800CA804 AFB40010 */  sw         $s4, 0x10($sp)
/* A5C08 800CA808 0C032865 */  jal        func_800CA194
/* A5C0C 800CA80C AFA60008 */   sw        $a2, 8($sp)
/* A5C10 800CA810 8EAD0000 */  lw         $t5, ($s5)
/* A5C14 800CA814 51A00018 */  beql       $t5, $zero, .L800CA878
/* A5C18 800CA818 C7A40064 */   lwc1      $f4, 0x64($sp)
/* A5C1C 800CA81C 0C0328FF */  jal        func_800CA3FC
/* A5C20 800CA820 00000000 */   nop
/* A5C24 800CA824 8C4E0000 */  lw         $t6, ($v0)
/* A5C28 800CA828 00408025 */  or         $s0, $v0, $zero
/* A5C2C 800CA82C 526E0012 */  beql       $s3, $t6, .L800CA878
/* A5C30 800CA830 C7A40064 */   lwc1      $f4, 0x64($sp)
/* A5C34 800CA834 0C03292F */  jal        func_800CA4BC
/* A5C38 800CA838 00402025 */   or        $a0, $v0, $zero
/* A5C3C 800CA83C 8E410000 */  lw         $at, ($s2)
/* A5C40 800CA840 02402025 */  or         $a0, $s2, $zero
/* A5C44 800CA844 AFA10004 */  sw         $at, 4($sp)
/* A5C48 800CA848 8E460004 */  lw         $a2, 4($s2)
/* A5C4C 800CA84C 8FA50004 */  lw         $a1, 4($sp)
/* A5C50 800CA850 AFA60008 */  sw         $a2, 8($sp)
/* A5C54 800CA854 8E470008 */  lw         $a3, 8($s2)
/* A5C58 800CA858 E7B40014 */  swc1       $f20, 0x14($sp)
/* A5C5C 800CA85C AFB00010 */  sw         $s0, 0x10($sp)
/* A5C60 800CA860 0C03296D */  jal        func_800CA5B4
/* A5C64 800CA864 AFA7000C */   sw        $a3, 0xc($sp)
/* A5C68 800CA868 26310001 */  addiu      $s1, $s1, 1
/* A5C6C 800CA86C 1636FFDE */  bne        $s1, $s6, .L800CA7E8
/* A5C70 800CA870 8E130000 */   lw        $s3, ($s0)
/* A5C74 800CA874 C7A40064 */  lwc1       $f4, 0x64($sp)
.L800CA878:
/* A5C78 800CA878 C7A60048 */  lwc1       $f6, 0x48($sp)
/* A5C7C 800CA87C C7AA0068 */  lwc1       $f10, 0x68($sp)
/* A5C80 800CA880 C7B0004C */  lwc1       $f16, 0x4c($sp)
/* A5C84 800CA884 46062201 */  sub.s      $f8, $f4, $f6
/* A5C88 800CA888 C7A60050 */  lwc1       $f6, 0x50($sp)
/* A5C8C 800CA88C C7A4006C */  lwc1       $f4, 0x6c($sp)
/* A5C90 800CA890 3C048025 */  lui        $a0, %hi(D_802488B0)
/* A5C94 800CA894 248488B0 */  addiu      $a0, $a0, %lo(D_802488B0)
/* A5C98 800CA898 E4880000 */  swc1       $f8, ($a0)
/* A5C9C 800CA89C 46105481 */  sub.s      $f18, $f10, $f16
/* A5CA0 800CA8A0 8FB90060 */  lw         $t9, 0x60($sp)
/* A5CA4 800CA8A4 8E410000 */  lw         $at, ($s2)
/* A5CA8 800CA8A8 46062201 */  sub.s      $f8, $f4, $f6
/* A5CAC 800CA8AC E4920004 */  swc1       $f18, 4($a0)
/* A5CB0 800CA8B0 E4880008 */  swc1       $f8, 8($a0)
/* A5CB4 800CA8B4 AF210000 */  sw         $at, ($t9)
/* A5CB8 800CA8B8 8E480004 */  lw         $t0, 4($s2)
/* A5CBC 800CA8BC AF280004 */  sw         $t0, 4($t9)
/* A5CC0 800CA8C0 8E410008 */  lw         $at, 8($s2)
/* A5CC4 800CA8C4 AF210008 */  sw         $at, 8($t9)
/* A5CC8 800CA8C8 8FA20060 */  lw         $v0, 0x60($sp)
.L800CA8CC:
/* A5CCC 800CA8CC 8FBF0044 */  lw         $ra, 0x44($sp)
/* A5CD0 800CA8D0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* A5CD4 800CA8D4 8FB00028 */  lw         $s0, 0x28($sp)
/* A5CD8 800CA8D8 8FB1002C */  lw         $s1, 0x2c($sp)
/* A5CDC 800CA8DC 8FB20030 */  lw         $s2, 0x30($sp)
/* A5CE0 800CA8E0 8FB30034 */  lw         $s3, 0x34($sp)
/* A5CE4 800CA8E4 8FB40038 */  lw         $s4, 0x38($sp)
/* A5CE8 800CA8E8 8FB5003C */  lw         $s5, 0x3c($sp)
/* A5CEC 800CA8EC 8FB60040 */  lw         $s6, 0x40($sp)
/* A5CF0 800CA8F0 03E00008 */  jr         $ra
/* A5CF4 800CA8F4 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800CA8F8
/* A5CF8 800CA8F8 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* A5CFC 800CA8FC 3C0E8023 */  lui        $t6, %hi(D_8023696C)
/* A5D00 800CA900 8DCE696C */  lw         $t6, %lo(D_8023696C)($t6)
/* A5D04 800CA904 AFBF006C */  sw         $ra, 0x6c($sp)
/* A5D08 800CA908 AFB40068 */  sw         $s4, 0x68($sp)
/* A5D0C 800CA90C AFB30064 */  sw         $s3, 0x64($sp)
/* A5D10 800CA910 AFB20060 */  sw         $s2, 0x60($sp)
/* A5D14 800CA914 AFB1005C */  sw         $s1, 0x5c($sp)
/* A5D18 800CA918 AFB00058 */  sw         $s0, 0x58($sp)
/* A5D1C 800CA91C F7BE0050 */  sdc1       $f30, 0x50($sp)
/* A5D20 800CA920 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* A5D24 800CA924 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* A5D28 800CA928 F7B80038 */  sdc1       $f24, 0x38($sp)
/* A5D2C 800CA92C F7B60030 */  sdc1       $f22, 0x30($sp)
/* A5D30 800CA930 F7B40028 */  sdc1       $f20, 0x28($sp)
/* A5D34 800CA934 AFA40108 */  sw         $a0, 0x108($sp)
/* A5D38 800CA938 AFA5010C */  sw         $a1, 0x10c($sp)
/* A5D3C 800CA93C AFA60110 */  sw         $a2, 0x110($sp)
/* A5D40 800CA940 15C00003 */  bnez       $t6, .L800CA950
/* A5D44 800CA944 AFA70114 */   sw        $a3, 0x114($sp)
/* A5D48 800CA948 10000121 */  b          .L800CADD0
/* A5D4C 800CA94C 00001025 */   or        $v0, $zero, $zero
.L800CA950:
/* A5D50 800CA950 3C013F80 */  lui        $at, 0x3f80
/* A5D54 800CA954 44812000 */  mtc1       $at, $f4
/* A5D58 800CA958 27AF0108 */  addiu      $t7, $sp, 0x108
/* A5D5C 800CA95C 27A80114 */  addiu      $t0, $sp, 0x114
/* A5D60 800CA960 E7A400EC */  swc1       $f4, 0xec($sp)
/* A5D64 800CA964 8DE10000 */  lw         $at, ($t7)
/* A5D68 800CA968 27AB00F0 */  addiu      $t3, $sp, 0xf0
/* A5D6C 800CA96C 00009825 */  or         $s3, $zero, $zero
/* A5D70 800CA970 AFA10000 */  sw         $at, ($sp)
/* A5D74 800CA974 8DE50004 */  lw         $a1, 4($t7)
/* A5D78 800CA978 8FA40000 */  lw         $a0, ($sp)
/* A5D7C 800CA97C AFA50004 */  sw         $a1, 4($sp)
/* A5D80 800CA980 8DE10008 */  lw         $at, 8($t7)
/* A5D84 800CA984 AFA10008 */  sw         $at, 8($sp)
/* A5D88 800CA988 8D010000 */  lw         $at, ($t0)
/* A5D8C 800CA98C 8FA60008 */  lw         $a2, 8($sp)
/* A5D90 800CA990 AFA1000C */  sw         $at, 0xc($sp)
/* A5D94 800CA994 8D0A0004 */  lw         $t2, 4($t0)
/* A5D98 800CA998 8FA7000C */  lw         $a3, 0xc($sp)
/* A5D9C 800CA99C AFAA0010 */  sw         $t2, 0x10($sp)
/* A5DA0 800CA9A0 8D010008 */  lw         $at, 8($t0)
/* A5DA4 800CA9A4 AFAB0018 */  sw         $t3, 0x18($sp)
/* A5DA8 800CA9A8 0C02BAAA */  jal        func_800AEAA8
/* A5DAC 800CA9AC AFA10014 */   sw        $at, 0x14($sp)
/* A5DB0 800CA9B0 3C0C8023 */  lui        $t4, %hi(D_8023696C)
/* A5DB4 800CA9B4 8D8C696C */  lw         $t4, %lo(D_8023696C)($t4)
/* A5DB8 800CA9B8 3C128023 */  lui        $s2, %hi(D_80235968)
/* A5DBC 800CA9BC 26525968 */  addiu      $s2, $s2, %lo(D_80235968)
/* A5DC0 800CA9C0 198000E3 */  blez       $t4, .L800CAD50
/* A5DC4 800CA9C4 00008825 */   or        $s1, $zero, $zero
/* A5DC8 800CA9C8 27B400A0 */  addiu      $s4, $sp, 0xa0
/* A5DCC 800CA9CC 8E500000 */  lw         $s0, ($s2)
.L800CA9D0:
/* A5DD0 800CA9D0 24050001 */  addiu      $a1, $zero, 1
/* A5DD4 800CA9D4 0C035E79 */  jal        func_800D79E4
/* A5DD8 800CA9D8 02002025 */   or        $a0, $s0, $zero
/* A5DDC 800CA9DC 02002025 */  or         $a0, $s0, $zero
/* A5DE0 800CA9E0 0C0326C6 */  jal        func_800C9B18
/* A5DE4 800CA9E4 27A500F0 */   addiu     $a1, $sp, 0xf0
/* A5DE8 800CA9E8 104000D2 */  beqz       $v0, .L800CAD34
/* A5DEC 800CA9EC 02002025 */   or        $a0, $s0, $zero
/* A5DF0 800CA9F0 0C035E79 */  jal        func_800D79E4
/* A5DF4 800CA9F4 24050002 */   addiu     $a1, $zero, 2
/* A5DF8 800CA9F8 8FAD0124 */  lw         $t5, 0x124($sp)
/* A5DFC 800CA9FC C7A60108 */  lwc1       $f6, 0x108($sp)
/* A5E00 800CAA00 C7A8010C */  lwc1       $f8, 0x10c($sp)
/* A5E04 800CAA04 11A0002E */  beqz       $t5, .L800CAAC0
/* A5E08 800CAA08 C7A40108 */   lwc1      $f4, 0x108($sp)
/* A5E0C 800CAA0C C6000008 */  lwc1       $f0, 8($s0)
/* A5E10 800CAA10 C602000C */  lwc1       $f2, 0xc($s0)
/* A5E14 800CAA14 C610005C */  lwc1       $f16, 0x5c($s0)
/* A5E18 800CAA18 46003501 */  sub.s      $f20, $f6, $f0
/* A5E1C 800CAA1C C60C0010 */  lwc1       $f12, 0x10($s0)
/* A5E20 800CAA20 C7AA0110 */  lwc1       $f10, 0x110($sp)
/* A5E24 800CAA24 46024601 */  sub.s      $f24, $f8, $f2
/* A5E28 800CAA28 4610A102 */  mul.s      $f4, $f20, $f16
/* A5E2C 800CAA2C C6120060 */  lwc1       $f18, 0x60($s0)
/* A5E30 800CAA30 460C5681 */  sub.s      $f26, $f10, $f12
/* A5E34 800CAA34 C60E0064 */  lwc1       $f14, 0x64($s0)
/* A5E38 800CAA38 4612C182 */  mul.s      $f6, $f24, $f18
/* A5E3C 800CAA3C 44802800 */  mtc1       $zero, $f5
/* A5E40 800CAA40 E7BA00CC */  swc1       $f26, 0xcc($sp)
/* A5E44 800CAA44 461A7282 */  mul.s      $f10, $f14, $f26
/* A5E48 800CAA48 E7B800C8 */  swc1       $f24, 0xc8($sp)
/* A5E4C 800CAA4C E7B400C4 */  swc1       $f20, 0xc4($sp)
/* A5E50 800CAA50 46062200 */  add.s      $f8, $f4, $f6
/* A5E54 800CAA54 44802000 */  mtc1       $zero, $f4
/* A5E58 800CAA58 46085580 */  add.s      $f22, $f10, $f8
/* A5E5C 800CAA5C C7AA0114 */  lwc1       $f10, 0x114($sp)
/* A5E60 800CAA60 C7A80118 */  lwc1       $f8, 0x118($sp)
/* A5E64 800CAA64 4600B1A1 */  cvt.d.s    $f6, $f22
/* A5E68 800CAA68 4624303E */  c.le.d     $f6, $f4
/* A5E6C 800CAA6C 00000000 */  nop
/* A5E70 800CAA70 450100B0 */  bc1t       .L800CAD34
/* A5E74 800CAA74 00000000 */   nop
/* A5E78 800CAA78 46005681 */  sub.s      $f26, $f10, $f0
/* A5E7C 800CAA7C C7A4011C */  lwc1       $f4, 0x11c($sp)
/* A5E80 800CAA80 46024701 */  sub.s      $f28, $f8, $f2
/* A5E84 800CAA84 4610D182 */  mul.s      $f6, $f26, $f16
/* A5E88 800CAA88 460C2781 */  sub.s      $f30, $f4, $f12
/* A5E8C 800CAA8C 4612E282 */  mul.s      $f10, $f28, $f18
/* A5E90 800CAA90 44805800 */  mtc1       $zero, $f11
/* A5E94 800CAA94 461E7102 */  mul.s      $f4, $f14, $f30
/* A5E98 800CAA98 460A3200 */  add.s      $f8, $f6, $f10
/* A5E9C 800CAA9C 44805000 */  mtc1       $zero, $f10
/* A5EA0 800CAAA0 46082600 */  add.s      $f24, $f4, $f8
/* A5EA4 800CAAA4 4600C1A1 */  cvt.d.s    $f6, $f24
/* A5EA8 800CAAA8 4626503E */  c.le.d     $f10, $f6
/* A5EAC 800CAAAC 00000000 */  nop
/* A5EB0 800CAAB0 4502002A */  bc1fl      .L800CAB5C
/* A5EB4 800CAAB4 4618B032 */   c.eq.s    $f22, $f24
/* A5EB8 800CAAB8 1000009E */  b          .L800CAD34
/* A5EBC 800CAABC 00000000 */   nop
.L800CAAC0:
/* A5EC0 800CAAC0 C6000008 */  lwc1       $f0, 8($s0)
/* A5EC4 800CAAC4 C7A6010C */  lwc1       $f6, 0x10c($sp)
/* A5EC8 800CAAC8 46002201 */  sub.s      $f8, $f4, $f0
/* A5ECC 800CAACC C7A40110 */  lwc1       $f4, 0x110($sp)
/* A5ED0 800CAAD0 E7A800C4 */  swc1       $f8, 0xc4($sp)
/* A5ED4 800CAAD4 C602000C */  lwc1       $f2, 0xc($s0)
/* A5ED8 800CAAD8 46023281 */  sub.s      $f10, $f6, $f2
/* A5EDC 800CAADC E7AA00C8 */  swc1       $f10, 0xc8($sp)
/* A5EE0 800CAAE0 C610005C */  lwc1       $f16, 0x5c($s0)
/* A5EE4 800CAAE4 C60C0010 */  lwc1       $f12, 0x10($s0)
/* A5EE8 800CAAE8 C6120060 */  lwc1       $f18, 0x60($s0)
/* A5EEC 800CAAEC 46104182 */  mul.s      $f6, $f8, $f16
/* A5EF0 800CAAF0 460C2501 */  sub.s      $f20, $f4, $f12
/* A5EF4 800CAAF4 C60E0064 */  lwc1       $f14, 0x64($s0)
/* A5EF8 800CAAF8 46125102 */  mul.s      $f4, $f10, $f18
/* A5EFC 800CAAFC E7B400CC */  swc1       $f20, 0xcc($sp)
/* A5F00 800CAB00 46147282 */  mul.s      $f10, $f14, $f20
/* A5F04 800CAB04 46043200 */  add.s      $f8, $f6, $f4
/* A5F08 800CAB08 C7A60114 */  lwc1       $f6, 0x114($sp)
/* A5F0C 800CAB0C C7A40118 */  lwc1       $f4, 0x118($sp)
/* A5F10 800CAB10 46003681 */  sub.s      $f26, $f6, $f0
/* A5F14 800CAB14 46085580 */  add.s      $f22, $f10, $f8
/* A5F18 800CAB18 4610D202 */  mul.s      $f8, $f26, $f16
/* A5F1C 800CAB1C C7AA011C */  lwc1       $f10, 0x11c($sp)
/* A5F20 800CAB20 46022701 */  sub.s      $f28, $f4, $f2
/* A5F24 800CAB24 460C5781 */  sub.s      $f30, $f10, $f12
/* A5F28 800CAB28 4612E182 */  mul.s      $f6, $f28, $f18
/* A5F2C 800CAB2C 46064100 */  add.s      $f4, $f8, $f6
/* A5F30 800CAB30 461E7282 */  mul.s      $f10, $f14, $f30
/* A5F34 800CAB34 44805800 */  mtc1       $zero, $f11
/* A5F38 800CAB38 46045600 */  add.s      $f24, $f10, $f4
/* A5F3C 800CAB3C 44805000 */  mtc1       $zero, $f10
/* A5F40 800CAB40 4618B202 */  mul.s      $f8, $f22, $f24
/* A5F44 800CAB44 460041A1 */  cvt.d.s    $f6, $f8
/* A5F48 800CAB48 4626503E */  c.le.d     $f10, $f6
/* A5F4C 800CAB4C 00000000 */  nop
/* A5F50 800CAB50 45010078 */  bc1t       .L800CAD34
/* A5F54 800CAB54 00000000 */   nop
/* A5F58 800CAB58 4618B032 */  c.eq.s     $f22, $f24
.L800CAB5C:
/* A5F5C 800CAB5C 44804800 */  mtc1       $zero, $f9
/* A5F60 800CAB60 44804000 */  mtc1       $zero, $f8
/* A5F64 800CAB64 3C013F00 */  lui        $at, 0x3f00
/* A5F68 800CAB68 45000004 */  bc1f       .L800CAB7C
/* A5F6C 800CAB6C 3C048011 */   lui       $a0, 0x8011
/* A5F70 800CAB70 4481A000 */  mtc1       $at, $f20
/* A5F74 800CAB74 10000004 */  b          .L800CAB88
/* A5F78 800CAB78 4600A021 */   cvt.d.s   $f0, $f20
.L800CAB7C:
/* A5F7C 800CAB7C 4618B101 */  sub.s      $f4, $f22, $f24
/* A5F80 800CAB80 4604B503 */  div.s      $f20, $f22, $f4
/* A5F84 800CAB84 4600A021 */  cvt.d.s    $f0, $f20
.L800CAB88:
/* A5F88 800CAB88 4628003C */  c.lt.d     $f0, $f8
/* A5F8C 800CAB8C 00000000 */  nop
/* A5F90 800CAB90 45020008 */  bc1fl      .L800CABB4
/* A5F94 800CAB94 3C013FF0 */   lui       $at, 0x3ff0
/* A5F98 800CAB98 0C035D18 */  jal        func_800D7460
/* A5F9C 800CAB9C 2484025C */   addiu     $a0, $a0, 0x25c
/* A5FA0 800CABA0 3C013F80 */  lui        $at, 0x3f80
/* A5FA4 800CABA4 4481A000 */  mtc1       $at, $f20
/* A5FA8 800CABA8 00000000 */  nop
/* A5FAC 800CABAC 4600A021 */  cvt.d.s    $f0, $f20
/* A5FB0 800CABB0 3C013FF0 */  lui        $at, 0x3ff0
.L800CABB4:
/* A5FB4 800CABB4 44813800 */  mtc1       $at, $f7
/* A5FB8 800CABB8 44803000 */  mtc1       $zero, $f6
/* A5FBC 800CABBC 3C013F80 */  lui        $at, 0x3f80
/* A5FC0 800CABC0 3C048011 */  lui        $a0, 0x8011
/* A5FC4 800CABC4 4620303C */  c.lt.d     $f6, $f0
/* A5FC8 800CABC8 00000000 */  nop
/* A5FCC 800CABCC 45020005 */  bc1fl      .L800CABE4
/* A5FD0 800CABD0 C7AA00EC */   lwc1      $f10, 0xec($sp)
/* A5FD4 800CABD4 4481A000 */  mtc1       $at, $f20
/* A5FD8 800CABD8 0C035D18 */  jal        func_800D7460
/* A5FDC 800CABDC 24840280 */   addiu     $a0, $a0, 0x280
/* A5FE0 800CABE0 C7AA00EC */  lwc1       $f10, 0xec($sp)
.L800CABE4:
/* A5FE4 800CABE4 02002025 */  or         $a0, $s0, $zero
/* A5FE8 800CABE8 4614503E */  c.le.s     $f10, $f20
/* A5FEC 800CABEC 00000000 */  nop
/* A5FF0 800CABF0 45010050 */  bc1t       .L800CAD34
/* A5FF4 800CABF4 00000000 */   nop
/* A5FF8 800CABF8 0C035E79 */  jal        func_800D79E4
/* A5FFC 800CABFC 24050003 */   addiu     $a1, $zero, 3
/* A6000 800CAC00 8E0E0000 */  lw         $t6, ($s0)
/* A6004 800CAC04 3C013FF0 */  lui        $at, 0x3ff0
/* A6008 800CAC08 C7A600CC */  lwc1       $f6, 0xcc($sp)
/* A600C 800CAC0C 05C00049 */  bltz       $t6, .L800CAD34
/* A6010 800CAC10 00000000 */   nop
/* A6014 800CAC14 44812800 */  mtc1       $at, $f5
/* A6018 800CAC18 44802000 */  mtc1       $zero, $f4
/* A601C 800CAC1C 4600A221 */  cvt.d.s    $f8, $f20
/* A6020 800CAC20 460032A1 */  cvt.d.s    $f10, $f6
/* A6024 800CAC24 46282001 */  sub.d      $f0, $f4, $f8
/* A6028 800CAC28 02003825 */  or         $a3, $s0, $zero
/* A602C 800CAC2C 46205102 */  mul.d      $f4, $f10, $f0
/* A6030 800CAC30 00000000 */  nop
/* A6034 800CAC34 4614F202 */  mul.s      $f8, $f30, $f20
/* A6038 800CAC38 460041A1 */  cvt.d.s    $f6, $f8
/* A603C 800CAC3C C7A800C4 */  lwc1       $f8, 0xc4($sp)
/* A6040 800CAC40 46262280 */  add.d      $f10, $f4, $f6
/* A6044 800CAC44 46004121 */  cvt.d.s    $f4, $f8
/* A6048 800CAC48 462053A0 */  cvt.s.d    $f14, $f10
/* A604C 800CAC4C 46202182 */  mul.d      $f6, $f4, $f0
/* A6050 800CAC50 00000000 */  nop
/* A6054 800CAC54 4614D282 */  mul.s      $f10, $f26, $f20
/* A6058 800CAC58 46005221 */  cvt.d.s    $f8, $f10
/* A605C 800CAC5C C7AA00C8 */  lwc1       $f10, 0xc8($sp)
/* A6060 800CAC60 46283100 */  add.d      $f4, $f6, $f8
/* A6064 800CAC64 460051A1 */  cvt.d.s    $f6, $f10
/* A6068 800CAC68 462020A0 */  cvt.s.d    $f2, $f4
/* A606C 800CAC6C 46203202 */  mul.d      $f8, $f6, $f0
/* A6070 800CAC70 00000000 */  nop
/* A6074 800CAC74 4614E102 */  mul.s      $f4, $f28, $f20
/* A6078 800CAC78 460022A1 */  cvt.d.s    $f10, $f4
/* A607C 800CAC7C C6040044 */  lwc1       $f4, 0x44($s0)
/* A6080 800CAC80 462A4180 */  add.d      $f6, $f8, $f10
/* A6084 800CAC84 C60A0048 */  lwc1       $f10, 0x48($s0)
/* A6088 800CAC88 46041202 */  mul.s      $f8, $f2, $f4
/* A608C 800CAC8C 46203320 */  cvt.s.d    $f12, $f6
/* A6090 800CAC90 460A6182 */  mul.s      $f6, $f12, $f10
/* A6094 800CAC94 C60A004C */  lwc1       $f10, 0x4c($s0)
/* A6098 800CAC98 46064100 */  add.s      $f4, $f8, $f6
/* A609C 800CAC9C 460E5202 */  mul.s      $f8, $f10, $f14
/* A60A0 800CACA0 46044180 */  add.s      $f6, $f8, $f4
/* A60A4 800CACA4 E7A600A0 */  swc1       $f6, 0xa0($sp)
/* A60A8 800CACA8 C60A0050 */  lwc1       $f10, 0x50($s0)
/* A60AC 800CACAC C6040054 */  lwc1       $f4, 0x54($s0)
/* A60B0 800CACB0 460A1202 */  mul.s      $f8, $f2, $f10
/* A60B4 800CACB4 00000000 */  nop
/* A60B8 800CACB8 46046182 */  mul.s      $f6, $f12, $f4
/* A60BC 800CACBC C6040058 */  lwc1       $f4, 0x58($s0)
/* A60C0 800CACC0 46064280 */  add.s      $f10, $f8, $f6
/* A60C4 800CACC4 460E2202 */  mul.s      $f8, $f4, $f14
/* A60C8 800CACC8 44802000 */  mtc1       $zero, $f4
/* A60CC 800CACCC 00000000 */  nop
/* A60D0 800CACD0 E7A400A8 */  swc1       $f4, 0xa8($sp)
/* A60D4 800CACD4 460A4180 */  add.s      $f6, $f8, $f10
/* A60D8 800CACD8 E7A600A4 */  swc1       $f6, 0xa4($sp)
/* A60DC 800CACDC 8E810000 */  lw         $at, ($s4)
/* A60E0 800CACE0 AFA10000 */  sw         $at, ($sp)
/* A60E4 800CACE4 8E850004 */  lw         $a1, 4($s4)
/* A60E8 800CACE8 8FA40000 */  lw         $a0, ($sp)
/* A60EC 800CACEC AFA50004 */  sw         $a1, 4($sp)
/* A60F0 800CACF0 8E860008 */  lw         $a2, 8($s4)
/* A60F4 800CACF4 0C035F4F */  jal        func_800D7D3C
/* A60F8 800CACF8 AFA60008 */   sw        $a2, 8($sp)
/* A60FC 800CACFC 1040000D */  beqz       $v0, .L800CAD34
/* A6100 800CAD00 00000000 */   nop
/* A6104 800CAD04 E7B400EC */  swc1       $f20, 0xec($sp)
/* A6108 800CAD08 8E810000 */  lw         $at, ($s4)
/* A610C 800CAD0C 27B900DC */  addiu      $t9, $sp, 0xdc
/* A6110 800CAD10 02009825 */  or         $s3, $s0, $zero
/* A6114 800CAD14 AF210000 */  sw         $at, ($t9)
/* A6118 800CAD18 8E8A0004 */  lw         $t2, 4($s4)
/* A611C 800CAD1C AF2A0004 */  sw         $t2, 4($t9)
/* A6120 800CAD20 8E810008 */  lw         $at, 8($s4)
/* A6124 800CAD24 AF210008 */  sw         $at, 8($t9)
/* A6128 800CAD28 8FAB0128 */  lw         $t3, 0x128($sp)
/* A612C 800CAD2C 24010001 */  addiu      $at, $zero, 1
/* A6130 800CAD30 15610007 */  bne        $t3, $at, .L800CAD50
.L800CAD34:
/* A6134 800CAD34 3C0C8023 */   lui       $t4, %hi(D_8023696C)
/* A6138 800CAD38 8D8C696C */  lw         $t4, %lo(D_8023696C)($t4)
/* A613C 800CAD3C 26310001 */  addiu      $s1, $s1, 1
/* A6140 800CAD40 26520004 */  addiu      $s2, $s2, 4
/* A6144 800CAD44 022C082A */  slt        $at, $s1, $t4
/* A6148 800CAD48 5420FF21 */  bnel       $at, $zero, .L800CA9D0
/* A614C 800CAD4C 8E500000 */   lw        $s0, ($s2)
.L800CAD50:
/* A6150 800CAD50 1260001F */  beqz       $s3, .L800CADD0
/* A6154 800CAD54 02601025 */   or        $v0, $s3, $zero
/* A6158 800CAD58 C7A800DC */  lwc1       $f8, 0xdc($sp)
/* A615C 800CAD5C C66A0044 */  lwc1       $f10, 0x44($s3)
/* A6160 800CAD60 C7A400E0 */  lwc1       $f4, 0xe0($sp)
/* A6164 800CAD64 460A4182 */  mul.s      $f6, $f8, $f10
/* A6168 800CAD68 C6680050 */  lwc1       $f8, 0x50($s3)
/* A616C 800CAD6C 46082282 */  mul.s      $f10, $f4, $f8
/* A6170 800CAD70 C6680008 */  lwc1       $f8, 8($s3)
/* A6174 800CAD74 460A3100 */  add.s      $f4, $f6, $f10
/* A6178 800CAD78 46044180 */  add.s      $f6, $f8, $f4
/* A617C 800CAD7C C6680048 */  lwc1       $f8, 0x48($s3)
/* A6180 800CAD80 E6660094 */  swc1       $f6, 0x94($s3)
/* A6184 800CAD84 C7AA00DC */  lwc1       $f10, 0xdc($sp)
/* A6188 800CAD88 C7A600E0 */  lwc1       $f6, 0xe0($sp)
/* A618C 800CAD8C 46085102 */  mul.s      $f4, $f10, $f8
/* A6190 800CAD90 C66A0054 */  lwc1       $f10, 0x54($s3)
/* A6194 800CAD94 460A3202 */  mul.s      $f8, $f6, $f10
/* A6198 800CAD98 C66A000C */  lwc1       $f10, 0xc($s3)
/* A619C 800CAD9C 46082180 */  add.s      $f6, $f4, $f8
/* A61A0 800CADA0 46065100 */  add.s      $f4, $f10, $f6
/* A61A4 800CADA4 C66A004C */  lwc1       $f10, 0x4c($s3)
/* A61A8 800CADA8 E6640098 */  swc1       $f4, 0x98($s3)
/* A61AC 800CADAC C7A800DC */  lwc1       $f8, 0xdc($sp)
/* A61B0 800CADB0 C7A400E0 */  lwc1       $f4, 0xe0($sp)
/* A61B4 800CADB4 460A4182 */  mul.s      $f6, $f8, $f10
/* A61B8 800CADB8 C6680058 */  lwc1       $f8, 0x58($s3)
/* A61BC 800CADBC 46082282 */  mul.s      $f10, $f4, $f8
/* A61C0 800CADC0 C6680010 */  lwc1       $f8, 0x10($s3)
/* A61C4 800CADC4 460A3100 */  add.s      $f4, $f6, $f10
/* A61C8 800CADC8 46044180 */  add.s      $f6, $f8, $f4
/* A61CC 800CADCC E666009C */  swc1       $f6, 0x9c($s3)
.L800CADD0:
/* A61D0 800CADD0 8FBF006C */  lw         $ra, 0x6c($sp)
/* A61D4 800CADD4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* A61D8 800CADD8 D7B60030 */  ldc1       $f22, 0x30($sp)
/* A61DC 800CADDC D7B80038 */  ldc1       $f24, 0x38($sp)
/* A61E0 800CADE0 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* A61E4 800CADE4 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* A61E8 800CADE8 D7BE0050 */  ldc1       $f30, 0x50($sp)
/* A61EC 800CADEC 8FB00058 */  lw         $s0, 0x58($sp)
/* A61F0 800CADF0 8FB1005C */  lw         $s1, 0x5c($sp)
/* A61F4 800CADF4 8FB20060 */  lw         $s2, 0x60($sp)
/* A61F8 800CADF8 8FB30064 */  lw         $s3, 0x64($sp)
/* A61FC 800CADFC 8FB40068 */  lw         $s4, 0x68($sp)
/* A6200 800CAE00 03E00008 */  jr         $ra
/* A6204 800CAE04 27BD0108 */   addiu     $sp, $sp, 0x108

glabel func_800CAE08
/* A6208 800CAE08 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A620C 800CAE0C AFA60070 */  sw         $a2, 0x70($sp)
/* A6210 800CAE10 AFBF002C */  sw         $ra, 0x2c($sp)
/* A6214 800CAE14 AFA70074 */  sw         $a3, 0x74($sp)
/* A6218 800CAE18 44067000 */  mfc1       $a2, $f14
/* A621C 800CAE1C 44056000 */  mfc1       $a1, $f12
/* A6220 800CAE20 8FA70070 */  lw         $a3, 0x70($sp)
/* A6224 800CAE24 27A40044 */  addiu      $a0, $sp, 0x44
/* A6228 800CAE28 E7AC0068 */  swc1       $f12, 0x68($sp)
/* A622C 800CAE2C 0C03605E */  jal        func_800D8178
/* A6230 800CAE30 E7AE006C */   swc1      $f14, 0x6c($sp)
/* A6234 800CAE34 C7A00074 */  lwc1       $f0, 0x74($sp)
/* A6238 800CAE38 C7A20078 */  lwc1       $f2, 0x78($sp)
/* A623C 800CAE3C C7B0007C */  lwc1       $f16, 0x7c($sp)
/* A6240 800CAE40 44050000 */  mfc1       $a1, $f0
/* A6244 800CAE44 44061000 */  mfc1       $a2, $f2
/* A6248 800CAE48 44078000 */  mfc1       $a3, $f16
/* A624C 800CAE4C 0C03605E */  jal        func_800D8178
/* A6250 800CAE50 27A40038 */   addiu     $a0, $sp, 0x38
/* A6254 800CAE54 C7A00074 */  lwc1       $f0, 0x74($sp)
/* A6258 800CAE58 C7AC0068 */  lwc1       $f12, 0x68($sp)
/* A625C 800CAE5C C7A20078 */  lwc1       $f2, 0x78($sp)
/* A6260 800CAE60 C7AE006C */  lwc1       $f14, 0x6c($sp)
/* A6264 800CAE64 4600603C */  c.lt.s     $f12, $f0
/* A6268 800CAE68 C7B0007C */  lwc1       $f16, 0x7c($sp)
/* A626C 800CAE6C 27A40050 */  addiu      $a0, $sp, 0x50
/* A6270 800CAE70 24050077 */  addiu      $a1, $zero, 0x77
/* A6274 800CAE74 45020005 */  bc1fl      .L800CAE8C
/* A6278 800CAE78 E7A00050 */   swc1      $f0, 0x50($sp)
/* A627C 800CAE7C E7AC0050 */  swc1       $f12, 0x50($sp)
/* A6280 800CAE80 10000003 */  b          .L800CAE90
/* A6284 800CAE84 E7A0005C */   swc1      $f0, 0x5c($sp)
/* A6288 800CAE88 E7A00050 */  swc1       $f0, 0x50($sp)
.L800CAE8C:
/* A628C 800CAE8C E7AC005C */  swc1       $f12, 0x5c($sp)
.L800CAE90:
/* A6290 800CAE90 4602703C */  c.lt.s     $f14, $f2
/* A6294 800CAE94 00000000 */  nop
/* A6298 800CAE98 45020005 */  bc1fl      .L800CAEB0
/* A629C 800CAE9C E7A20054 */   swc1      $f2, 0x54($sp)
/* A62A0 800CAEA0 E7AE0054 */  swc1       $f14, 0x54($sp)
/* A62A4 800CAEA4 10000003 */  b          .L800CAEB4
/* A62A8 800CAEA8 E7A20060 */   swc1      $f2, 0x60($sp)
/* A62AC 800CAEAC E7A20054 */  swc1       $f2, 0x54($sp)
.L800CAEB0:
/* A62B0 800CAEB0 E7AE0060 */  swc1       $f14, 0x60($sp)
.L800CAEB4:
/* A62B4 800CAEB4 C7A00070 */  lwc1       $f0, 0x70($sp)
/* A62B8 800CAEB8 4610003C */  c.lt.s     $f0, $f16
/* A62BC 800CAEBC 00000000 */  nop
/* A62C0 800CAEC0 45020005 */  bc1fl      .L800CAED8
/* A62C4 800CAEC4 E7B00058 */   swc1      $f16, 0x58($sp)
/* A62C8 800CAEC8 E7A00058 */  swc1       $f0, 0x58($sp)
/* A62CC 800CAECC 10000003 */  b          .L800CAEDC
/* A62D0 800CAED0 E7B00064 */   swc1      $f16, 0x64($sp)
/* A62D4 800CAED4 E7B00058 */  swc1       $f16, 0x58($sp)
.L800CAED8:
/* A62D8 800CAED8 E7A00064 */  swc1       $f0, 0x64($sp)
.L800CAEDC:
/* A62DC 800CAEDC 0C0325D2 */  jal        func_800C9748
/* A62E0 800CAEE0 24060002 */   addiu     $a2, $zero, 2
/* A62E4 800CAEE4 27AE0044 */  addiu      $t6, $sp, 0x44
/* A62E8 800CAEE8 8DC10000 */  lw         $at, ($t6)
/* A62EC 800CAEEC 27B90038 */  addiu      $t9, $sp, 0x38
/* A62F0 800CAEF0 240A0077 */  addiu      $t2, $zero, 0x77
/* A62F4 800CAEF4 AFA10000 */  sw         $at, ($sp)
/* A62F8 800CAEF8 8DC50004 */  lw         $a1, 4($t6)
/* A62FC 800CAEFC 240B0001 */  addiu      $t3, $zero, 1
/* A6300 800CAF00 8FA40000 */  lw         $a0, ($sp)
/* A6304 800CAF04 AFA50004 */  sw         $a1, 4($sp)
/* A6308 800CAF08 8DC10008 */  lw         $at, 8($t6)
/* A630C 800CAF0C AFA10008 */  sw         $at, 8($sp)
/* A6310 800CAF10 8F210000 */  lw         $at, ($t9)
/* A6314 800CAF14 8FA60008 */  lw         $a2, 8($sp)
/* A6318 800CAF18 AFA1000C */  sw         $at, 0xc($sp)
/* A631C 800CAF1C 8F290004 */  lw         $t1, 4($t9)
/* A6320 800CAF20 8FA7000C */  lw         $a3, 0xc($sp)
/* A6324 800CAF24 AFA90010 */  sw         $t1, 0x10($sp)
/* A6328 800CAF28 8F210008 */  lw         $at, 8($t9)
/* A632C 800CAF2C AFAB0020 */  sw         $t3, 0x20($sp)
/* A6330 800CAF30 AFA0001C */  sw         $zero, 0x1c($sp)
/* A6334 800CAF34 AFAA0018 */  sw         $t2, 0x18($sp)
/* A6338 800CAF38 0C032A3E */  jal        func_800CA8F8
/* A633C 800CAF3C AFA10014 */   sw        $at, 0x14($sp)
/* A6340 800CAF40 14400003 */  bnez       $v0, .L800CAF50
/* A6344 800CAF44 00401825 */   or        $v1, $v0, $zero
/* A6348 800CAF48 1000000B */  b          .L800CAF78
/* A634C 800CAF4C 00001025 */   or        $v0, $zero, $zero
.L800CAF50:
/* A6350 800CAF50 C4640094 */  lwc1       $f4, 0x94($v1)
/* A6354 800CAF54 8FAC0080 */  lw         $t4, 0x80($sp)
/* A6358 800CAF58 24020001 */  addiu      $v0, $zero, 1
/* A635C 800CAF5C E5840000 */  swc1       $f4, ($t4)
/* A6360 800CAF60 8FAD0084 */  lw         $t5, 0x84($sp)
/* A6364 800CAF64 C4660098 */  lwc1       $f6, 0x98($v1)
/* A6368 800CAF68 E5A60000 */  swc1       $f6, ($t5)
/* A636C 800CAF6C 8FAF0088 */  lw         $t7, 0x88($sp)
/* A6370 800CAF70 C468009C */  lwc1       $f8, 0x9c($v1)
/* A6374 800CAF74 E5E80000 */  swc1       $f8, ($t7)
.L800CAF78:
/* A6378 800CAF78 8FBF002C */  lw         $ra, 0x2c($sp)
/* A637C 800CAF7C 27BD0068 */  addiu      $sp, $sp, 0x68
/* A6380 800CAF80 03E00008 */  jr         $ra
/* A6384 800CAF84 00000000 */   nop

glabel func_800CAF88
/* A6388 800CAF88 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* A638C 800CAF8C AFB50058 */  sw         $s5, 0x58($sp)
/* A6390 800CAF90 3C158023 */  lui        $s5, %hi(D_8023696C)
/* A6394 800CAF94 26B5696C */  addiu      $s5, $s5, %lo(D_8023696C)
/* A6398 800CAF98 8EA20000 */  lw         $v0, ($s5)
/* A639C 800CAF9C 44876000 */  mtc1       $a3, $f12
/* A63A0 800CAFA0 AFBF005C */  sw         $ra, 0x5c($sp)
/* A63A4 800CAFA4 AFB40054 */  sw         $s4, 0x54($sp)
/* A63A8 800CAFA8 AFB30050 */  sw         $s3, 0x50($sp)
/* A63AC 800CAFAC AFB2004C */  sw         $s2, 0x4c($sp)
/* A63B0 800CAFB0 AFB10048 */  sw         $s1, 0x48($sp)
/* A63B4 800CAFB4 AFB00044 */  sw         $s0, 0x44($sp)
/* A63B8 800CAFB8 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* A63BC 800CAFBC F7BC0030 */  sdc1       $f28, 0x30($sp)
/* A63C0 800CAFC0 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* A63C4 800CAFC4 F7B80020 */  sdc1       $f24, 0x20($sp)
/* A63C8 800CAFC8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* A63CC 800CAFCC F7B40010 */  sdc1       $f20, 0x10($sp)
/* A63D0 800CAFD0 AFA400B0 */  sw         $a0, 0xb0($sp)
/* A63D4 800CAFD4 AFA500B4 */  sw         $a1, 0xb4($sp)
/* A63D8 800CAFD8 14400003 */  bnez       $v0, .L800CAFE8
/* A63DC 800CAFDC AFA600B8 */   sw        $a2, 0xb8($sp)
/* A63E0 800CAFE0 1000009D */  b          .L800CB258
/* A63E4 800CAFE4 00001025 */   or        $v0, $zero, $zero
.L800CAFE8:
/* A63E8 800CAFE8 27A300B0 */  addiu      $v1, $sp, 0xb0
/* A63EC 800CAFEC 8C610000 */  lw         $at, ($v1)
/* A63F0 800CAFF0 27AE00A0 */  addiu      $t6, $sp, 0xa0
/* A63F4 800CAFF4 27B90094 */  addiu      $t9, $sp, 0x94
/* A63F8 800CAFF8 ADC10000 */  sw         $at, ($t6)
/* A63FC 800CAFFC 8C780004 */  lw         $t8, 4($v1)
/* A6400 800CB000 3C128023 */  lui        $s2, %hi(D_80235968)
/* A6404 800CB004 00009825 */  or         $s3, $zero, $zero
/* A6408 800CB008 ADD80004 */  sw         $t8, 4($t6)
/* A640C 800CB00C 8C610008 */  lw         $at, 8($v1)
/* A6410 800CB010 26525968 */  addiu      $s2, $s2, %lo(D_80235968)
/* A6414 800CB014 00008825 */  or         $s1, $zero, $zero
/* A6418 800CB018 ADC10008 */  sw         $at, 8($t6)
/* A641C 800CB01C C7A400A4 */  lwc1       $f4, 0xa4($sp)
/* A6420 800CB020 460C2180 */  add.s      $f6, $f4, $f12
/* A6424 800CB024 E7A600A4 */  swc1       $f6, 0xa4($sp)
/* A6428 800CB028 8C610000 */  lw         $at, ($v1)
/* A642C 800CB02C AF210000 */  sw         $at, ($t9)
/* A6430 800CB030 8C6A0004 */  lw         $t2, 4($v1)
/* A6434 800CB034 AF2A0004 */  sw         $t2, 4($t9)
/* A6438 800CB038 8C610008 */  lw         $at, 8($v1)
/* A643C 800CB03C AF210008 */  sw         $at, 8($t9)
/* A6440 800CB040 C7A80098 */  lwc1       $f8, 0x98($sp)
/* A6444 800CB044 C7AA00C0 */  lwc1       $f10, 0xc0($sp)
/* A6448 800CB048 460A4680 */  add.s      $f26, $f8, $f10
/* A644C 800CB04C 18400081 */  blez       $v0, .L800CB254
/* A6450 800CB050 E7BA0098 */   swc1      $f26, 0x98($sp)
/* A6454 800CB054 4480F000 */  mtc1       $zero, $f30
/* A6458 800CB058 4480E800 */  mtc1       $zero, $f29
/* A645C 800CB05C 4480E000 */  mtc1       $zero, $f28
/* A6460 800CB060 27B4006C */  addiu      $s4, $sp, 0x6c
/* A6464 800CB064 8E500000 */  lw         $s0, ($s2)
.L800CB068:
/* A6468 800CB068 24050001 */  addiu      $a1, $zero, 1
/* A646C 800CB06C 0C035E79 */  jal        func_800D79E4
/* A6470 800CB070 02002025 */   or        $a0, $s0, $zero
/* A6474 800CB074 C7B200B0 */  lwc1       $f18, 0xb0($sp)
/* A6478 800CB078 C604002C */  lwc1       $f4, 0x2c($s0)
/* A647C 800CB07C 2602002C */  addiu      $v0, $s0, 0x2c
/* A6480 800CB080 C7A800B0 */  lwc1       $f8, 0xb0($sp)
/* A6484 800CB084 4604903C */  c.lt.s     $f18, $f4
/* A6488 800CB088 00000000 */  nop
/* A648C 800CB08C 4503006C */  bc1tl      .L800CB240
/* A6490 800CB090 8EAF0000 */   lw        $t7, ($s5)
/* A6494 800CB094 C446000C */  lwc1       $f6, 0xc($v0)
/* A6498 800CB098 C7AA00B8 */  lwc1       $f10, 0xb8($sp)
/* A649C 800CB09C 4608303C */  c.lt.s     $f6, $f8
/* A64A0 800CB0A0 00000000 */  nop
/* A64A4 800CB0A4 45030066 */  bc1tl      .L800CB240
/* A64A8 800CB0A8 8EAF0000 */   lw        $t7, ($s5)
/* A64AC 800CB0AC C4500008 */  lwc1       $f16, 8($v0)
/* A64B0 800CB0B0 C7A400B8 */  lwc1       $f4, 0xb8($sp)
/* A64B4 800CB0B4 4610503C */  c.lt.s     $f10, $f16
/* A64B8 800CB0B8 00000000 */  nop
/* A64BC 800CB0BC 45030060 */  bc1tl      .L800CB240
/* A64C0 800CB0C0 8EAF0000 */   lw        $t7, ($s5)
/* A64C4 800CB0C4 C4520014 */  lwc1       $f18, 0x14($v0)
/* A64C8 800CB0C8 C7A600A4 */  lwc1       $f6, 0xa4($sp)
/* A64CC 800CB0CC 4604903C */  c.lt.s     $f18, $f4
/* A64D0 800CB0D0 00000000 */  nop
/* A64D4 800CB0D4 4503005A */  bc1tl      .L800CB240
/* A64D8 800CB0D8 8EAF0000 */   lw        $t7, ($s5)
/* A64DC 800CB0DC C4480004 */  lwc1       $f8, 4($v0)
/* A64E0 800CB0E0 4608303C */  c.lt.s     $f6, $f8
/* A64E4 800CB0E4 00000000 */  nop
/* A64E8 800CB0E8 45030055 */  bc1tl      .L800CB240
/* A64EC 800CB0EC 8EAF0000 */   lw        $t7, ($s5)
/* A64F0 800CB0F0 C44A0010 */  lwc1       $f10, 0x10($v0)
/* A64F4 800CB0F4 02002025 */  or         $a0, $s0, $zero
/* A64F8 800CB0F8 461A503C */  c.lt.s     $f10, $f26
/* A64FC 800CB0FC 00000000 */  nop
/* A6500 800CB100 4503004F */  bc1tl      .L800CB240
/* A6504 800CB104 8EAF0000 */   lw        $t7, ($s5)
/* A6508 800CB108 0C035E79 */  jal        func_800D79E4
/* A650C 800CB10C 24050002 */   addiu     $a1, $zero, 2
/* A6510 800CB110 C6020060 */  lwc1       $f2, 0x60($s0)
/* A6514 800CB114 C7B200B0 */  lwc1       $f18, 0xb0($sp)
/* A6518 800CB118 46001421 */  cvt.d.s    $f16, $f2
/* A651C 800CB11C 463C803E */  c.le.d     $f16, $f28
/* A6520 800CB120 00000000 */  nop
/* A6524 800CB124 45030046 */  bc1tl      .L800CB240
/* A6528 800CB128 8EAF0000 */   lw        $t7, ($s5)
/* A652C 800CB12C C6040008 */  lwc1       $f4, 8($s0)
/* A6530 800CB130 C7A600B8 */  lwc1       $f6, 0xb8($sp)
/* A6534 800CB134 C6080010 */  lwc1       $f8, 0x10($s0)
/* A6538 800CB138 46049501 */  sub.s      $f20, $f18, $f4
/* A653C 800CB13C C60A005C */  lwc1       $f10, 0x5c($s0)
/* A6540 800CB140 C6120064 */  lwc1       $f18, 0x64($s0)
/* A6544 800CB144 46083581 */  sub.s      $f22, $f6, $f8
/* A6548 800CB148 46145402 */  mul.s      $f16, $f10, $f20
/* A654C 800CB14C C60A000C */  lwc1       $f10, 0xc($s0)
/* A6550 800CB150 46169102 */  mul.s      $f4, $f18, $f22
/* A6554 800CB154 C7B200A4 */  lwc1       $f18, 0xa4($sp)
/* A6558 800CB158 46048180 */  add.s      $f6, $f16, $f4
/* A655C 800CB15C 46003207 */  neg.s      $f8, $f6
/* A6560 800CB160 46024603 */  div.s      $f24, $f8, $f2
/* A6564 800CB164 46185000 */  add.s      $f0, $f10, $f24
/* A6568 800CB168 461A003C */  c.lt.s     $f0, $f26
/* A656C 800CB16C 00000000 */  nop
/* A6570 800CB170 45030033 */  bc1tl      .L800CB240
/* A6574 800CB174 8EAF0000 */   lw        $t7, ($s5)
/* A6578 800CB178 4600903C */  c.lt.s     $f18, $f0
/* A657C 800CB17C 02002025 */  or         $a0, $s0, $zero
/* A6580 800CB180 4503002F */  bc1tl      .L800CB240
/* A6584 800CB184 8EAF0000 */   lw        $t7, ($s5)
/* A6588 800CB188 0C035E79 */  jal        func_800D79E4
/* A658C 800CB18C 24050003 */   addiu     $a1, $zero, 3
/* A6590 800CB190 8E0B0000 */  lw         $t3, ($s0)
/* A6594 800CB194 0562002A */  bltzl      $t3, .L800CB240
/* A6598 800CB198 8EAF0000 */   lw        $t7, ($s5)
/* A659C 800CB19C C6100044 */  lwc1       $f16, 0x44($s0)
/* A65A0 800CB1A0 C6060048 */  lwc1       $f6, 0x48($s0)
/* A65A4 800CB1A4 C612004C */  lwc1       $f18, 0x4c($s0)
/* A65A8 800CB1A8 4610A102 */  mul.s      $f4, $f20, $f16
/* A65AC 800CB1AC 02003825 */  or         $a3, $s0, $zero
/* A65B0 800CB1B0 4606C202 */  mul.s      $f8, $f24, $f6
/* A65B4 800CB1B4 46082280 */  add.s      $f10, $f4, $f8
/* A65B8 800CB1B8 46169402 */  mul.s      $f16, $f18, $f22
/* A65BC 800CB1BC 460A8180 */  add.s      $f6, $f16, $f10
/* A65C0 800CB1C0 E7A6006C */  swc1       $f6, 0x6c($sp)
/* A65C4 800CB1C4 C6040050 */  lwc1       $f4, 0x50($s0)
/* A65C8 800CB1C8 C6120054 */  lwc1       $f18, 0x54($s0)
/* A65CC 800CB1CC C6060058 */  lwc1       $f6, 0x58($s0)
/* A65D0 800CB1D0 4604A202 */  mul.s      $f8, $f20, $f4
/* A65D4 800CB1D4 E7BE0074 */  swc1       $f30, 0x74($sp)
/* A65D8 800CB1D8 4612C402 */  mul.s      $f16, $f24, $f18
/* A65DC 800CB1DC 46104280 */  add.s      $f10, $f8, $f16
/* A65E0 800CB1E0 46163102 */  mul.s      $f4, $f6, $f22
/* A65E4 800CB1E4 460A2480 */  add.s      $f18, $f4, $f10
/* A65E8 800CB1E8 E7B20070 */  swc1       $f18, 0x70($sp)
/* A65EC 800CB1EC 8E810000 */  lw         $at, ($s4)
/* A65F0 800CB1F0 AFA10000 */  sw         $at, ($sp)
/* A65F4 800CB1F4 8E850004 */  lw         $a1, 4($s4)
/* A65F8 800CB1F8 8FA40000 */  lw         $a0, ($sp)
/* A65FC 800CB1FC AFA50004 */  sw         $a1, 4($sp)
/* A6600 800CB200 8E860008 */  lw         $a2, 8($s4)
/* A6604 800CB204 0C035F4F */  jal        func_800D7D3C
/* A6608 800CB208 AFA60008 */   sw        $a2, 8($sp)
/* A660C 800CB20C 5040000C */  beql       $v0, $zero, .L800CB240
/* A6610 800CB210 8EAF0000 */   lw        $t7, ($s5)
/* A6614 800CB214 C608000C */  lwc1       $f8, 0xc($s0)
/* A6618 800CB218 C6100008 */  lwc1       $f16, 8($s0)
/* A661C 800CB21C C6040010 */  lwc1       $f4, 0x10($s0)
/* A6620 800CB220 46184680 */  add.s      $f26, $f8, $f24
/* A6624 800CB224 02009825 */  or         $s3, $s0, $zero
/* A6628 800CB228 46148180 */  add.s      $f6, $f16, $f20
/* A662C 800CB22C E61A0098 */  swc1       $f26, 0x98($s0)
/* A6630 800CB230 46162280 */  add.s      $f10, $f4, $f22
/* A6634 800CB234 E6060094 */  swc1       $f6, 0x94($s0)
/* A6638 800CB238 E60A009C */  swc1       $f10, 0x9c($s0)
/* A663C 800CB23C 8EAF0000 */  lw         $t7, ($s5)
.L800CB240:
/* A6640 800CB240 26310001 */  addiu      $s1, $s1, 1
/* A6644 800CB244 26520004 */  addiu      $s2, $s2, 4
/* A6648 800CB248 022F082A */  slt        $at, $s1, $t7
/* A664C 800CB24C 5420FF86 */  bnel       $at, $zero, .L800CB068
/* A6650 800CB250 8E500000 */   lw        $s0, ($s2)
.L800CB254:
/* A6654 800CB254 02601025 */  or         $v0, $s3, $zero
.L800CB258:
/* A6658 800CB258 8FBF005C */  lw         $ra, 0x5c($sp)
/* A665C 800CB25C D7B40010 */  ldc1       $f20, 0x10($sp)
/* A6660 800CB260 D7B60018 */  ldc1       $f22, 0x18($sp)
/* A6664 800CB264 D7B80020 */  ldc1       $f24, 0x20($sp)
/* A6668 800CB268 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* A666C 800CB26C D7BC0030 */  ldc1       $f28, 0x30($sp)
/* A6670 800CB270 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* A6674 800CB274 8FB00044 */  lw         $s0, 0x44($sp)
/* A6678 800CB278 8FB10048 */  lw         $s1, 0x48($sp)
/* A667C 800CB27C 8FB2004C */  lw         $s2, 0x4c($sp)
/* A6680 800CB280 8FB30050 */  lw         $s3, 0x50($sp)
/* A6684 800CB284 8FB40054 */  lw         $s4, 0x54($sp)
/* A6688 800CB288 8FB50058 */  lw         $s5, 0x58($sp)
/* A668C 800CB28C 03E00008 */  jr         $ra
/* A6690 800CB290 27BD00B0 */   addiu     $sp, $sp, 0xb0

glabel func_800CB294
/* A6694 800CB294 44876000 */  mtc1       $a3, $f12
/* A6698 800CB298 3C014034 */  lui        $at, 0x4034
/* A669C 800CB29C 44814800 */  mtc1       $at, $f9
/* A66A0 800CB2A0 44804000 */  mtc1       $zero, $f8
/* A66A4 800CB2A4 460061A1 */  cvt.d.s    $f6, $f12
/* A66A8 800CB2A8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* A66AC 800CB2AC 46283282 */  mul.d      $f10, $f6, $f8
/* A66B0 800CB2B0 AFA40058 */  sw         $a0, 0x58($sp)
/* A66B4 800CB2B4 AFA5005C */  sw         $a1, 0x5c($sp)
/* A66B8 800CB2B8 C7A40058 */  lwc1       $f4, 0x58($sp)
/* A66BC 800CB2BC C7B0005C */  lwc1       $f16, 0x5c($sp)
/* A66C0 800CB2C0 AFA60060 */  sw         $a2, 0x60($sp)
/* A66C4 800CB2C4 E7A40044 */  swc1       $f4, 0x44($sp)
/* A66C8 800CB2C8 C7A40060 */  lwc1       $f4, 0x60($sp)
/* A66CC 800CB2CC 46205020 */  cvt.s.d    $f0, $f10
/* A66D0 800CB2D0 AFBF0024 */  sw         $ra, 0x24($sp)
/* A66D4 800CB2D4 27AE0058 */  addiu      $t6, $sp, 0x58
/* A66D8 800CB2D8 E7A4004C */  swc1       $f4, 0x4c($sp)
/* A66DC 800CB2DC 46008481 */  sub.s      $f18, $f16, $f0
/* A66E0 800CB2E0 27B90044 */  addiu      $t9, $sp, 0x44
/* A66E4 800CB2E4 27AA002C */  addiu      $t2, $sp, 0x2c
/* A66E8 800CB2E8 E7B20048 */  swc1       $f18, 0x48($sp)
/* A66EC 800CB2EC 8DC10000 */  lw         $at, ($t6)
/* A66F0 800CB2F0 AFA10000 */  sw         $at, ($sp)
/* A66F4 800CB2F4 8DC50004 */  lw         $a1, 4($t6)
/* A66F8 800CB2F8 8FA40000 */  lw         $a0, ($sp)
/* A66FC 800CB2FC AFA50004 */  sw         $a1, 4($sp)
/* A6700 800CB300 8DC10008 */  lw         $at, 8($t6)
/* A6704 800CB304 AFA10008 */  sw         $at, 8($sp)
/* A6708 800CB308 8F210000 */  lw         $at, ($t9)
/* A670C 800CB30C 8FA60008 */  lw         $a2, 8($sp)
/* A6710 800CB310 AFA1000C */  sw         $at, 0xc($sp)
/* A6714 800CB314 8F290004 */  lw         $t1, 4($t9)
/* A6718 800CB318 8FA7000C */  lw         $a3, 0xc($sp)
/* A671C 800CB31C AFA90010 */  sw         $t1, 0x10($sp)
/* A6720 800CB320 8F210008 */  lw         $at, 8($t9)
/* A6724 800CB324 E7A00028 */  swc1       $f0, 0x28($sp)
/* A6728 800CB328 AFAA0018 */  sw         $t2, 0x18($sp)
/* A672C 800CB32C 0C02BAAA */  jal        func_800AEAA8
/* A6730 800CB330 AFA10014 */   sw        $at, 0x14($sp)
/* A6734 800CB334 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A6738 800CB338 3C014024 */  lui        $at, 0x4024
/* A673C 800CB33C 44815800 */  mtc1       $at, $f11
/* A6740 800CB340 44805000 */  mtc1       $zero, $f10
/* A6744 800CB344 46003221 */  cvt.d.s    $f8, $f6
/* A6748 800CB348 27A4002C */  addiu      $a0, $sp, 0x2c
/* A674C 800CB34C 462A4400 */  add.d      $f16, $f8, $f10
/* A6750 800CB350 24050077 */  addiu      $a1, $zero, 0x77
/* A6754 800CB354 24060002 */  addiu      $a2, $zero, 2
/* A6758 800CB358 462084A0 */  cvt.s.d    $f18, $f16
/* A675C 800CB35C 0C0325D2 */  jal        func_800C9748
/* A6760 800CB360 E7B2003C */   swc1      $f18, 0x3c($sp)
/* A6764 800CB364 27AB0058 */  addiu      $t3, $sp, 0x58
/* A6768 800CB368 8D610000 */  lw         $at, ($t3)
/* A676C 800CB36C C7A40028 */  lwc1       $f4, 0x28($sp)
/* A6770 800CB370 3C074120 */  lui        $a3, 0x4120
/* A6774 800CB374 AFA10000 */  sw         $at, ($sp)
/* A6778 800CB378 8D650004 */  lw         $a1, 4($t3)
/* A677C 800CB37C 46002187 */  neg.s      $f6, $f4
/* A6780 800CB380 8FA40000 */  lw         $a0, ($sp)
/* A6784 800CB384 AFA50004 */  sw         $a1, 4($sp)
/* A6788 800CB388 8D660008 */  lw         $a2, 8($t3)
/* A678C 800CB38C E7A60010 */  swc1       $f6, 0x10($sp)
/* A6790 800CB390 0C032BE2 */  jal        func_800CAF88
/* A6794 800CB394 AFA60008 */   sw        $a2, 8($sp)
/* A6798 800CB398 8FBF0024 */  lw         $ra, 0x24($sp)
/* A679C 800CB39C 27BD0058 */  addiu      $sp, $sp, 0x58
/* A67A0 800CB3A0 03E00008 */  jr         $ra
/* A67A4 800CB3A4 00000000 */   nop

glabel func_800CB3A8
/* A67A8 800CB3A8 3C048011 */  lui        $a0, %hi(D_80108F80)
/* A67AC 800CB3AC 3C018025 */  lui        $at, %hi(D_80248510)
/* A67B0 800CB3B0 24848F80 */  addiu      $a0, $a0, %lo(D_80108F80)
/* A67B4 800CB3B4 AC208510 */  sw         $zero, %lo(D_80248510)($at)
/* A67B8 800CB3B8 8C8E0000 */  lw         $t6, ($a0)
/* A67BC 800CB3BC 3C038025 */  lui        $v1, %hi(D_802488C0)
/* A67C0 800CB3C0 246388C0 */  addiu      $v1, $v1, %lo(D_802488C0)
/* A67C4 800CB3C4 15C00028 */  bnez       $t6, .L800CB468
/* A67C8 800CB3C8 3C058025 */   lui       $a1, %hi(D_802489C0)
/* A67CC 800CB3CC 24A589C0 */  addiu      $a1, $a1, %lo(D_802489C0)
/* A67D0 800CB3D0 24020001 */  addiu      $v0, $zero, 1
.L800CB3D4:
/* A67D4 800CB3D4 24630004 */  addiu      $v1, $v1, 4
/* A67D8 800CB3D8 A062FFFD */  sb         $v0, -3($v1)
/* A67DC 800CB3DC A062FFFE */  sb         $v0, -2($v1)
/* A67E0 800CB3E0 A062FFFF */  sb         $v0, -1($v1)
/* A67E4 800CB3E4 1465FFFB */  bne        $v1, $a1, .L800CB3D4
/* A67E8 800CB3E8 A062FFFC */   sb        $v0, -4($v1)
/* A67EC 800CB3EC 3C028025 */  lui        $v0, %hi(D_802488C0)
/* A67F0 800CB3F0 244288C0 */  addiu      $v0, $v0, %lo(D_802488C0)
/* A67F4 800CB3F4 240F0001 */  addiu      $t7, $zero, 1
/* A67F8 800CB3F8 A0400009 */  sb         $zero, 9($v0)
/* A67FC 800CB3FC A040000B */  sb         $zero, 0xb($v0)
/* A6800 800CB400 A040000C */  sb         $zero, 0xc($v0)
/* A6804 800CB404 A040000A */  sb         $zero, 0xa($v0)
/* A6808 800CB408 A040000F */  sb         $zero, 0xf($v0)
/* A680C 800CB40C A0400014 */  sb         $zero, 0x14($v0)
/* A6810 800CB410 A0400011 */  sb         $zero, 0x11($v0)
/* A6814 800CB414 A0400018 */  sb         $zero, 0x18($v0)
/* A6818 800CB418 A040001B */  sb         $zero, 0x1b($v0)
/* A681C 800CB41C A0400022 */  sb         $zero, 0x22($v0)
/* A6820 800CB420 A0400035 */  sb         $zero, 0x35($v0)
/* A6824 800CB424 A0400034 */  sb         $zero, 0x34($v0)
/* A6828 800CB428 A0400036 */  sb         $zero, 0x36($v0)
/* A682C 800CB42C A040003A */  sb         $zero, 0x3a($v0)
/* A6830 800CB430 A0400041 */  sb         $zero, 0x41($v0)
/* A6834 800CB434 A0400048 */  sb         $zero, 0x48($v0)
/* A6838 800CB438 A0400049 */  sb         $zero, 0x49($v0)
/* A683C 800CB43C A040004C */  sb         $zero, 0x4c($v0)
/* A6840 800CB440 A040004F */  sb         $zero, 0x4f($v0)
/* A6844 800CB444 A0400051 */  sb         $zero, 0x51($v0)
/* A6848 800CB448 A0400053 */  sb         $zero, 0x53($v0)
/* A684C 800CB44C A0400055 */  sb         $zero, 0x55($v0)
/* A6850 800CB450 A0400057 */  sb         $zero, 0x57($v0)
/* A6854 800CB454 A0400059 */  sb         $zero, 0x59($v0)
/* A6858 800CB458 A040005C */  sb         $zero, 0x5c($v0)
/* A685C 800CB45C A040005B */  sb         $zero, 0x5b($v0)
/* A6860 800CB460 A040005E */  sb         $zero, 0x5e($v0)
/* A6864 800CB464 AC8F0000 */  sw         $t7, ($a0)
.L800CB468:
/* A6868 800CB468 03E00008 */  jr         $ra
/* A686C 800CB46C 00000000 */   nop

glabel func_800CB470
/* A6870 800CB470 27BDFF78 */  addiu      $sp, $sp, -0x88
/* A6874 800CB474 8FAE0098 */  lw         $t6, 0x98($sp)
/* A6878 800CB478 AFA40088 */  sw         $a0, 0x88($sp)
/* A687C 800CB47C 8FA4009C */  lw         $a0, 0x9c($sp)
/* A6880 800CB480 AFBF001C */  sw         $ra, 0x1c($sp)
/* A6884 800CB484 AFA5008C */  sw         $a1, 0x8c($sp)
/* A6888 800CB488 AFA60090 */  sw         $a2, 0x90($sp)
/* A688C 800CB48C C5C40000 */  lwc1       $f4, ($t6)
/* A6890 800CB490 3C038025 */  lui        $v1, 0x8025
/* A6894 800CB494 10800011 */  beqz       $a0, .L800CB4DC
/* A6898 800CB498 E7A4006C */   swc1      $f4, 0x6c($sp)
/* A689C 800CB49C 8C820000 */  lw         $v0, ($a0)
/* A68A0 800CB4A0 3C0F8025 */  lui        $t7, %hi(D_802488C0)
/* A68A4 800CB4A4 2401001D */  addiu      $at, $zero, 0x1d
/* A68A8 800CB4A8 01E27821 */  addu       $t7, $t7, $v0
/* A68AC 800CB4AC 91EF88C0 */  lbu        $t7, %lo(D_802488C0)($t7)
/* A68B0 800CB4B0 51E00137 */  beql       $t7, $zero, .L800CB990
/* A68B4 800CB4B4 8FBF001C */   lw        $ra, 0x1c($sp)
/* A68B8 800CB4B8 54410004 */  bnel       $v0, $at, .L800CB4CC
/* A68BC 800CB4BC 24010019 */   addiu     $at, $zero, 0x19
/* A68C0 800CB4C0 8C98010C */  lw         $t8, 0x10c($a0)
/* A68C4 800CB4C4 13000131 */  beqz       $t8, .L800CB98C
/* A68C8 800CB4C8 24010019 */   addiu     $at, $zero, 0x19
.L800CB4CC:
/* A68CC 800CB4CC 14410003 */  bne        $v0, $at, .L800CB4DC
/* A68D0 800CB4D0 00000000 */   nop
/* A68D4 800CB4D4 8C990110 */  lw         $t9, 0x110($a0)
/* A68D8 800CB4D8 1720012C */  bnez       $t9, .L800CB98C
.L800CB4DC:
/* A68DC 800CB4DC 24638510 */   addiu     $v1, $v1, -0x7af0
/* A68E0 800CB4E0 8C620000 */  lw         $v0, ($v1)
/* A68E4 800CB4E4 3C0A8024 */  lui        $t2, %hi(D_80247910)
/* A68E8 800CB4E8 254A7910 */  addiu      $t2, $t2, %lo(D_80247910)
/* A68EC 800CB4EC 28410040 */  slti       $at, $v0, 0x40
/* A68F0 800CB4F0 10200126 */  beqz       $at, .L800CB98C
/* A68F4 800CB4F4 00024880 */   sll       $t1, $v0, 2
/* A68F8 800CB4F8 01224823 */  subu       $t1, $t1, $v0
/* A68FC 800CB4FC 00094900 */  sll        $t1, $t1, 4
/* A6900 800CB500 10E000EA */  beqz       $a3, .L800CB8AC
/* A6904 800CB504 012A4021 */   addu      $t0, $t1, $t2
/* A6908 800CB508 C4EC0060 */  lwc1       $f12, 0x60($a3)
/* A690C 800CB50C AFA80084 */  sw         $t0, 0x84($sp)
/* A6910 800CB510 0C0322F9 */  jal        func_800C8BE4
/* A6914 800CB514 AFA70094 */   sw        $a3, 0x94($sp)
/* A6918 800CB518 8FA20094 */  lw         $v0, 0x94($sp)
/* A691C 800CB51C E7A00080 */  swc1       $f0, 0x80($sp)
/* A6920 800CB520 2443005C */  addiu      $v1, $v0, 0x5c
/* A6924 800CB524 C4620008 */  lwc1       $f2, 8($v1)
/* A6928 800CB528 C46E0000 */  lwc1       $f14, ($v1)
/* A692C 800CB52C AFA30034 */  sw         $v1, 0x34($sp)
/* A6930 800CB530 46021182 */  mul.s      $f6, $f2, $f2
/* A6934 800CB534 00000000 */  nop
/* A6938 800CB538 460E7202 */  mul.s      $f8, $f14, $f14
/* A693C 800CB53C 0C036C2C */  jal        func_800DB0B0
/* A6940 800CB540 46083300 */   add.s     $f12, $f6, $f8
/* A6944 800CB544 44801800 */  mtc1       $zero, $f3
/* A6948 800CB548 44801000 */  mtc1       $zero, $f2
/* A694C 800CB54C 460002A1 */  cvt.d.s    $f10, $f0
/* A6950 800CB550 8FA20094 */  lw         $v0, 0x94($sp)
/* A6954 800CB554 462A1032 */  c.eq.d     $f2, $f10
/* A6958 800CB558 8FA30034 */  lw         $v1, 0x34($sp)
/* A695C 800CB55C 8FA80084 */  lw         $t0, 0x84($sp)
/* A6960 800CB560 4503000F */  bc1tl      .L800CB5A0
/* A6964 800CB564 44809000 */   mtc1      $zero, $f18
/* A6968 800CB568 C4640008 */  lwc1       $f4, 8($v1)
/* A696C 800CB56C AFA80084 */  sw         $t0, 0x84($sp)
/* A6970 800CB570 AFA30034 */  sw         $v1, 0x34($sp)
/* A6974 800CB574 0C0322F9 */  jal        func_800C8BE4
/* A6978 800CB578 46002303 */   div.s     $f12, $f4, $f0
/* A697C 800CB57C 44801800 */  mtc1       $zero, $f3
/* A6980 800CB580 44801000 */  mtc1       $zero, $f2
/* A6984 800CB584 44809000 */  mtc1       $zero, $f18
/* A6988 800CB588 8FA20094 */  lw         $v0, 0x94($sp)
/* A698C 800CB58C 8FA30034 */  lw         $v1, 0x34($sp)
/* A6990 800CB590 8FA80084 */  lw         $t0, 0x84($sp)
/* A6994 800CB594 10000004 */  b          .L800CB5A8
/* A6998 800CB598 E7A0007C */   swc1      $f0, 0x7c($sp)
/* A699C 800CB59C 44809000 */  mtc1       $zero, $f18
.L800CB5A0:
/* A69A0 800CB5A0 00000000 */  nop
/* A69A4 800CB5A4 E7B2007C */  swc1       $f18, 0x7c($sp)
.L800CB5A8:
/* A69A8 800CB5A8 C46E0000 */  lwc1       $f14, ($v1)
/* A69AC 800CB5AC C7A8007C */  lwc1       $f8, 0x7c($sp)
/* A69B0 800CB5B0 3C01BFF0 */  lui        $at, 0xbff0
/* A69B4 800CB5B4 460071A1 */  cvt.d.s    $f6, $f14
/* A69B8 800CB5B8 4622303C */  c.lt.d     $f6, $f2
/* A69BC 800CB5BC 00000000 */  nop
/* A69C0 800CB5C0 45020008 */  bc1fl      .L800CB5E4
/* A69C4 800CB5C4 C7AA006C */   lwc1      $f10, 0x6c($sp)
/* A69C8 800CB5C8 44812800 */  mtc1       $at, $f5
/* A69CC 800CB5CC 44802000 */  mtc1       $zero, $f4
/* A69D0 800CB5D0 460042A1 */  cvt.d.s    $f10, $f8
/* A69D4 800CB5D4 46245182 */  mul.d      $f6, $f10, $f4
/* A69D8 800CB5D8 46203220 */  cvt.s.d    $f8, $f6
/* A69DC 800CB5DC E7A8007C */  swc1       $f8, 0x7c($sp)
/* A69E0 800CB5E0 C7AA006C */  lwc1       $f10, 0x6c($sp)
.L800CB5E4:
/* A69E4 800CB5E4 3C013FF0 */  lui        $at, 0x3ff0
/* A69E8 800CB5E8 44816800 */  mtc1       $at, $f13
/* A69EC 800CB5EC 3C014034 */  lui        $at, 0x4034
/* A69F0 800CB5F0 44813800 */  mtc1       $at, $f7
/* A69F4 800CB5F4 44803000 */  mtc1       $zero, $f6
/* A69F8 800CB5F8 46005121 */  cvt.d.s    $f4, $f10
/* A69FC 800CB5FC C7AA008C */  lwc1       $f10, 0x8c($sp)
/* A6A00 800CB600 C4500098 */  lwc1       $f16, 0x98($v0)
/* A6A04 800CB604 46262202 */  mul.d      $f8, $f4, $f6
/* A6A08 800CB608 44806000 */  mtc1       $zero, $f12
/* A6A0C 800CB60C 46105101 */  sub.s      $f4, $f10, $f16
/* A6A10 800CB610 3C013F80 */  lui        $at, 0x3f80
/* A6A14 800CB614 460021A1 */  cvt.d.s    $f6, $f4
/* A6A18 800CB618 46283283 */  div.d      $f10, $f6, $f8
/* A6A1C 800CB61C 462A6101 */  sub.d      $f4, $f12, $f10
/* A6A20 800CB620 462021A0 */  cvt.s.d    $f6, $f4
/* A6A24 800CB624 46003021 */  cvt.d.s    $f0, $f6
/* A6A28 800CB628 E7A60078 */  swc1       $f6, 0x78($sp)
/* A6A2C 800CB62C 4620603C */  c.lt.d     $f12, $f0
/* A6A30 800CB630 00000000 */  nop
/* A6A34 800CB634 45020006 */  bc1fl      .L800CB650
/* A6A38 800CB638 4622003C */   c.lt.d    $f0, $f2
/* A6A3C 800CB63C 44814000 */  mtc1       $at, $f8
/* A6A40 800CB640 00000000 */  nop
/* A6A44 800CB644 E7A80078 */  swc1       $f8, 0x78($sp)
/* A6A48 800CB648 46004021 */  cvt.d.s    $f0, $f8
/* A6A4C 800CB64C 4622003C */  c.lt.d     $f0, $f2
.L800CB650:
/* A6A50 800CB650 00000000 */  nop
/* A6A54 800CB654 450300CE */  bc1tl      .L800CB990
/* A6A58 800CB658 8FBF001C */   lw        $ra, 0x1c($sp)
/* A6A5C 800CB65C 46008121 */  cvt.d.s    $f4, $f16
/* A6A60 800CB660 C44A0094 */  lwc1       $f10, 0x94($v0)
/* A6A64 800CB664 462021A0 */  cvt.s.d    $f6, $f4
/* A6A68 800CB668 8FAB009C */  lw         $t3, 0x9c($sp)
/* A6A6C 800CB66C E7AA0068 */  swc1       $f10, 0x68($sp)
/* A6A70 800CB670 E7A60064 */  swc1       $f6, 0x64($sp)
/* A6A74 800CB674 C448009C */  lwc1       $f8, 0x9c($v0)
/* A6A78 800CB678 11600088 */  beqz       $t3, .L800CB89C
/* A6A7C 800CB67C E7A80060 */   swc1      $f8, 0x60($sp)
/* A6A80 800CB680 8D6C0000 */  lw         $t4, ($t3)
/* A6A84 800CB684 2401001C */  addiu      $at, $zero, 0x1c
/* A6A88 800CB688 15810084 */  bne        $t4, $at, .L800CB89C
/* A6A8C 800CB68C 00000000 */   nop
/* A6A90 800CB690 E7AE0054 */  swc1       $f14, 0x54($sp)
/* A6A94 800CB694 C7A40054 */  lwc1       $f4, 0x54($sp)
/* A6A98 800CB698 E7B20058 */  swc1       $f18, 0x58($sp)
/* A6A9C 800CB69C C46A0008 */  lwc1       $f10, 8($v1)
/* A6AA0 800CB6A0 460021A1 */  cvt.d.s    $f6, $f4
/* A6AA4 800CB6A4 27A40054 */  addiu      $a0, $sp, 0x54
/* A6AA8 800CB6A8 46261032 */  c.eq.d     $f2, $f6
/* A6AAC 800CB6AC E7AA005C */  swc1       $f10, 0x5c($sp)
/* A6AB0 800CB6B0 45020012 */  bc1fl      .L800CB6FC
/* A6AB4 800CB6B4 8C810000 */   lw        $at, ($a0)
/* A6AB8 800CB6B8 46009221 */  cvt.d.s    $f8, $f18
/* A6ABC 800CB6BC C7AA005C */  lwc1       $f10, 0x5c($sp)
/* A6AC0 800CB6C0 46281032 */  c.eq.d     $f2, $f8
/* A6AC4 800CB6C4 00000000 */  nop
/* A6AC8 800CB6C8 4502000C */  bc1fl      .L800CB6FC
/* A6ACC 800CB6CC 8C810000 */   lw        $at, ($a0)
/* A6AD0 800CB6D0 46005121 */  cvt.d.s    $f4, $f10
/* A6AD4 800CB6D4 3C013F80 */  lui        $at, 0x3f80
/* A6AD8 800CB6D8 46241032 */  c.eq.d     $f2, $f4
/* A6ADC 800CB6DC 00000000 */  nop
/* A6AE0 800CB6E0 45020006 */  bc1fl      .L800CB6FC
/* A6AE4 800CB6E4 8C810000 */   lw        $at, ($a0)
/* A6AE8 800CB6E8 44813000 */  mtc1       $at, $f6
/* A6AEC 800CB6EC E7B20054 */  swc1       $f18, 0x54($sp)
/* A6AF0 800CB6F0 10000010 */  b          .L800CB734
/* A6AF4 800CB6F4 E7A6005C */   swc1      $f6, 0x5c($sp)
/* A6AF8 800CB6F8 8C810000 */  lw         $at, ($a0)
.L800CB6FC:
/* A6AFC 800CB6FC AFA10004 */  sw         $at, 4($sp)
/* A6B00 800CB700 8C860004 */  lw         $a2, 4($a0)
/* A6B04 800CB704 8FA50004 */  lw         $a1, 4($sp)
/* A6B08 800CB708 AFA60008 */  sw         $a2, 8($sp)
/* A6B0C 800CB70C 8C870008 */  lw         $a3, 8($a0)
/* A6B10 800CB710 AFA80084 */  sw         $t0, 0x84($sp)
/* A6B14 800CB714 AFA30034 */  sw         $v1, 0x34($sp)
/* A6B18 800CB718 AFA20010 */  sw         $v0, 0x10($sp)
/* A6B1C 800CB71C 0C035E93 */  jal        func_800D7A4C
/* A6B20 800CB720 AFA7000C */   sw        $a3, 0xc($sp)
/* A6B24 800CB724 0C03606C */  jal        func_800D81B0
/* A6B28 800CB728 27A40054 */   addiu     $a0, $sp, 0x54
/* A6B2C 800CB72C 8FA30034 */  lw         $v1, 0x34($sp)
/* A6B30 800CB730 8FA80084 */  lw         $t0, 0x84($sp)
.L800CB734:
/* A6B34 800CB734 8FAF009C */  lw         $t7, 0x9c($sp)
/* A6B38 800CB738 3C018011 */  lui        $at, %hi(D_80110448)
/* A6B3C 800CB73C D4240448 */  ldc1       $f4, %lo(D_80110448)($at)
/* A6B40 800CB740 C5E80090 */  lwc1       $f8, 0x90($t7)
/* A6B44 800CB744 3C018011 */  lui        $at, %hi(D_80110450)
/* A6B48 800CB748 AFA80084 */  sw         $t0, 0x84($sp)
/* A6B4C 800CB74C 460042A1 */  cvt.d.s    $f10, $f8
/* A6B50 800CB750 D4280450 */  ldc1       $f8, %lo(D_80110450)($at)
/* A6B54 800CB754 46245182 */  mul.d      $f6, $f10, $f4
/* A6B58 800CB758 AFA30034 */  sw         $v1, 0x34($sp)
/* A6B5C 800CB75C 46283283 */  div.d      $f10, $f6, $f8
/* A6B60 800CB760 0C036C30 */  jal        func_800DB0C0
/* A6B64 800CB764 46205320 */   cvt.s.d   $f12, $f10
/* A6B68 800CB768 8FB8009C */  lw         $t8, 0x9c($sp)
/* A6B6C 800CB76C E7A00048 */  swc1       $f0, 0x48($sp)
/* A6B70 800CB770 3C018011 */  lui        $at, %hi(D_80110458)
/* A6B74 800CB774 C7040090 */  lwc1       $f4, 0x90($t8)
/* A6B78 800CB778 D4280458 */  ldc1       $f8, %lo(D_80110458)($at)
/* A6B7C 800CB77C 3C018011 */  lui        $at, %hi(D_80110460)
/* A6B80 800CB780 460021A1 */  cvt.d.s    $f6, $f4
/* A6B84 800CB784 D4240460 */  ldc1       $f4, %lo(D_80110460)($at)
/* A6B88 800CB788 46283282 */  mul.d      $f10, $f6, $f8
/* A6B8C 800CB78C 46245183 */  div.d      $f6, $f10, $f4
/* A6B90 800CB790 0C036B60 */  jal        func_800DAD80
/* A6B94 800CB794 46203320 */   cvt.s.d   $f12, $f6
/* A6B98 800CB798 8FA30034 */  lw         $v1, 0x34($sp)
/* A6B9C 800CB79C 46000207 */  neg.s      $f8, $f0
/* A6BA0 800CB7A0 C7A40048 */  lwc1       $f4, 0x48($sp)
/* A6BA4 800CB7A4 E7A80050 */  swc1       $f8, 0x50($sp)
/* A6BA8 800CB7A8 C46A0000 */  lwc1       $f10, ($v1)
/* A6BAC 800CB7AC C7A80050 */  lwc1       $f8, 0x50($sp)
/* A6BB0 800CB7B0 27A40048 */  addiu      $a0, $sp, 0x48
/* A6BB4 800CB7B4 46045182 */  mul.s      $f6, $f10, $f4
/* A6BB8 800CB7B8 C46A0008 */  lwc1       $f10, 8($v1)
/* A6BBC 800CB7BC 460A4102 */  mul.s      $f4, $f8, $f10
/* A6BC0 800CB7C0 46043200 */  add.s      $f8, $f6, $f4
/* A6BC4 800CB7C4 C4660004 */  lwc1       $f6, 4($v1)
/* A6BC8 800CB7C8 46004287 */  neg.s      $f10, $f8
/* A6BCC 800CB7CC 46065103 */  div.s      $f4, $f10, $f6
/* A6BD0 800CB7D0 0C03606C */  jal        func_800D81B0
/* A6BD4 800CB7D4 E7A4004C */   swc1      $f4, 0x4c($sp)
/* A6BD8 800CB7D8 27B90054 */  addiu      $t9, $sp, 0x54
/* A6BDC 800CB7DC 8F210000 */  lw         $at, ($t9)
/* A6BE0 800CB7E0 27A7003C */  addiu      $a3, $sp, 0x3c
/* A6BE4 800CB7E4 27AB0044 */  addiu      $t3, $sp, 0x44
/* A6BE8 800CB7E8 AFA10000 */  sw         $at, ($sp)
/* A6BEC 800CB7EC 8F250004 */  lw         $a1, 4($t9)
/* A6BF0 800CB7F0 8FA40000 */  lw         $a0, ($sp)
/* A6BF4 800CB7F4 AFA50004 */  sw         $a1, 4($sp)
/* A6BF8 800CB7F8 8F260008 */  lw         $a2, 8($t9)
/* A6BFC 800CB7FC AFAB0014 */  sw         $t3, 0x14($sp)
/* A6C00 800CB800 AFA70010 */  sw         $a3, 0x10($sp)
/* A6C04 800CB804 0C0360CE */  jal        func_800D8338
/* A6C08 800CB808 AFA60008 */   sw        $a2, 8($sp)
/* A6C0C 800CB80C 27AC0048 */  addiu      $t4, $sp, 0x48
/* A6C10 800CB810 8D810000 */  lw         $at, ($t4)
/* A6C14 800CB814 27A7003C */  addiu      $a3, $sp, 0x3c
/* A6C18 800CB818 27AF0040 */  addiu      $t7, $sp, 0x40
/* A6C1C 800CB81C AFA10000 */  sw         $at, ($sp)
/* A6C20 800CB820 8D850004 */  lw         $a1, 4($t4)
/* A6C24 800CB824 8FA40000 */  lw         $a0, ($sp)
/* A6C28 800CB828 AFA50004 */  sw         $a1, 4($sp)
/* A6C2C 800CB82C 8D860008 */  lw         $a2, 8($t4)
/* A6C30 800CB830 AFAF0014 */  sw         $t7, 0x14($sp)
/* A6C34 800CB834 AFA70010 */  sw         $a3, 0x10($sp)
/* A6C38 800CB838 0C0360CE */  jal        func_800D8338
/* A6C3C 800CB83C AFA60008 */   sw        $a2, 8($sp)
/* A6C40 800CB840 C7AC0044 */  lwc1       $f12, 0x44($sp)
/* A6C44 800CB844 0C035D38 */  jal        func_800D74E0
/* A6C48 800CB848 C7AE0040 */   lwc1      $f14, 0x40($sp)
/* A6C4C 800CB84C C7A80054 */  lwc1       $f8, 0x54($sp)
/* A6C50 800CB850 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* A6C54 800CB854 C7A40058 */  lwc1       $f4, 0x58($sp)
/* A6C58 800CB858 AFA20038 */  sw         $v0, 0x38($sp)
/* A6C5C 800CB85C 460A4182 */  mul.s      $f6, $f8, $f10
/* A6C60 800CB860 C7A8004C */  lwc1       $f8, 0x4c($sp)
/* A6C64 800CB864 46082282 */  mul.s      $f10, $f4, $f8
/* A6C68 800CB868 C7A8005C */  lwc1       $f8, 0x5c($sp)
/* A6C6C 800CB86C 460A3100 */  add.s      $f4, $f6, $f10
/* A6C70 800CB870 C7A60050 */  lwc1       $f6, 0x50($sp)
/* A6C74 800CB874 46064282 */  mul.s      $f10, $f8, $f6
/* A6C78 800CB878 0C0322F9 */  jal        func_800C8BE4
/* A6C7C 800CB87C 460A2300 */   add.s     $f12, $f4, $f10
/* A6C80 800CB880 8FB80038 */  lw         $t8, 0x38($sp)
/* A6C84 800CB884 8FA80084 */  lw         $t0, 0x84($sp)
/* A6C88 800CB888 44984000 */  mtc1       $t8, $f8
/* A6C8C 800CB88C 00000000 */  nop
/* A6C90 800CB890 468041A0 */  cvt.s.w    $f6, $f8
/* A6C94 800CB894 46060102 */  mul.s      $f4, $f0, $f6
/* A6C98 800CB898 E7A4006C */  swc1       $f4, 0x6c($sp)
.L800CB89C:
/* A6C9C 800CB89C 3C038025 */  lui        $v1, %hi(D_80248510)
/* A6CA0 800CB8A0 24638510 */  addiu      $v1, $v1, %lo(D_80248510)
/* A6CA4 800CB8A4 1000000F */  b          .L800CB8E4
/* A6CA8 800CB8A8 8FA4009C */   lw        $a0, 0x9c($sp)
.L800CB8AC:
/* A6CAC 800CB8AC C7A8008C */  lwc1       $f8, 0x8c($sp)
/* A6CB0 800CB8B0 C7AA0088 */  lwc1       $f10, 0x88($sp)
/* A6CB4 800CB8B4 44809000 */  mtc1       $zero, $f18
/* A6CB8 800CB8B8 460041A1 */  cvt.d.s    $f6, $f8
/* A6CBC 800CB8BC 3C013F80 */  lui        $at, 0x3f80
/* A6CC0 800CB8C0 46203120 */  cvt.s.d    $f4, $f6
/* A6CC4 800CB8C4 E7AA0068 */  swc1       $f10, 0x68($sp)
/* A6CC8 800CB8C8 C7AA0090 */  lwc1       $f10, 0x90($sp)
/* A6CCC 800CB8CC 44814000 */  mtc1       $at, $f8
/* A6CD0 800CB8D0 E7A40064 */  swc1       $f4, 0x64($sp)
/* A6CD4 800CB8D4 E7B2007C */  swc1       $f18, 0x7c($sp)
/* A6CD8 800CB8D8 E7B20080 */  swc1       $f18, 0x80($sp)
/* A6CDC 800CB8DC E7AA0060 */  swc1       $f10, 0x60($sp)
/* A6CE0 800CB8E0 E7A80078 */  swc1       $f8, 0x78($sp)
.L800CB8E4:
/* A6CE4 800CB8E4 24090001 */  addiu      $t1, $zero, 1
/* A6CE8 800CB8E8 AD090000 */  sw         $t1, ($t0)
/* A6CEC 800CB8EC C7A60068 */  lwc1       $f6, 0x68($sp)
/* A6CF0 800CB8F0 3C190200 */  lui        $t9, 0x200
/* A6CF4 800CB8F4 27396988 */  addiu      $t9, $t9, 0x6988
/* A6CF8 800CB8F8 E5060004 */  swc1       $f6, 4($t0)
/* A6CFC 800CB8FC C7A40064 */  lwc1       $f4, 0x64($sp)
/* A6D00 800CB900 3C0B8017 */  lui        $t3, 0x8017
/* A6D04 800CB904 3C028024 */  lui        $v0, 0x8024
/* A6D08 800CB908 E5040008 */  swc1       $f4, 8($t0)
/* A6D0C 800CB90C C7AA0060 */  lwc1       $f10, 0x60($sp)
/* A6D10 800CB910 E50A000C */  swc1       $f10, 0xc($t0)
/* A6D14 800CB914 C7A8007C */  lwc1       $f8, 0x7c($sp)
/* A6D18 800CB918 E5080010 */  swc1       $f8, 0x10($t0)
/* A6D1C 800CB91C C7A60080 */  lwc1       $f6, 0x80($sp)
/* A6D20 800CB920 E5060014 */  swc1       $f6, 0x14($t0)
/* A6D24 800CB924 C7A40078 */  lwc1       $f4, 0x78($sp)
/* A6D28 800CB928 E504001C */  swc1       $f4, 0x1c($t0)
/* A6D2C 800CB92C C7AA006C */  lwc1       $f10, 0x6c($sp)
/* A6D30 800CB930 AD190024 */  sw         $t9, 0x24($t0)
/* A6D34 800CB934 14800003 */  bnez       $a0, .L800CB944
/* A6D38 800CB938 E50A0020 */   swc1      $f10, 0x20($t0)
/* A6D3C 800CB93C 10000003 */  b          .L800CB94C
/* A6D40 800CB940 AD000028 */   sw        $zero, 0x28($t0)
.L800CB944:
/* A6D44 800CB944 8C8A0000 */  lw         $t2, ($a0)
/* A6D48 800CB948 AD0A0028 */  sw         $t2, 0x28($t0)
.L800CB94C:
/* A6D4C 800CB94C AD04002C */  sw         $a0, 0x2c($t0)
/* A6D50 800CB950 8D6B4874 */  lw         $t3, 0x4874($t3)
/* A6D54 800CB954 24010003 */  addiu      $at, $zero, 3
/* A6D58 800CB958 5561000A */  bnel       $t3, $at, .L800CB984
/* A6D5C 800CB95C 8C6C0000 */   lw        $t4, ($v1)
/* A6D60 800CB960 8C420CD8 */  lw         $v0, 0xcd8($v0)
/* A6D64 800CB964 2841001E */  slti       $at, $v0, 0x1e
/* A6D68 800CB968 14200005 */  bnez       $at, .L800CB980
/* A6D6C 800CB96C 28410021 */   slti      $at, $v0, 0x21
/* A6D70 800CB970 10200003 */  beqz       $at, .L800CB980
/* A6D74 800CB974 3C0D0200 */   lui       $t5, 0x200
/* A6D78 800CB978 25AD6A48 */  addiu      $t5, $t5, 0x6a48
/* A6D7C 800CB97C AD0D0024 */  sw         $t5, 0x24($t0)
.L800CB980:
/* A6D80 800CB980 8C6C0000 */  lw         $t4, ($v1)
.L800CB984:
/* A6D84 800CB984 258E0001 */  addiu      $t6, $t4, 1
/* A6D88 800CB988 AC6E0000 */  sw         $t6, ($v1)
.L800CB98C:
/* A6D8C 800CB98C 8FBF001C */  lw         $ra, 0x1c($sp)
.L800CB990:
/* A6D90 800CB990 27BD0088 */  addiu      $sp, $sp, 0x88
/* A6D94 800CB994 03E00008 */  jr         $ra
/* A6D98 800CB998 00000000 */   nop

glabel func_800CB99C
/* A6D9C 800CB99C 3C0F8025 */  lui        $t7, %hi(D_80248510)
/* A6DA0 800CB9A0 8DEF8510 */  lw         $t7, %lo(D_80248510)($t7)
/* A6DA4 800CB9A4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* A6DA8 800CB9A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* A6DAC 800CB9AC AFA60078 */  sw         $a2, 0x78($sp)
/* A6DB0 800CB9B0 AFA7007C */  sw         $a3, 0x7c($sp)
/* A6DB4 800CB9B4 29E10040 */  slti       $at, $t7, 0x40
/* A6DB8 800CB9B8 10200009 */  beqz       $at, .L800CB9E0
/* A6DBC 800CB9BC C4E20000 */   lwc1      $f2, ($a3)
/* A6DC0 800CB9C0 44802800 */  mtc1       $zero, $f5
/* A6DC4 800CB9C4 44802000 */  mtc1       $zero, $f4
/* A6DC8 800CB9C8 46001021 */  cvt.d.s    $f0, $f2
/* A6DCC 800CB9CC 27B80060 */  addiu      $t8, $sp, 0x60
/* A6DD0 800CB9D0 4624003E */  c.le.d     $f0, $f4
/* A6DD4 800CB9D4 00000000 */  nop
/* A6DD8 800CB9D8 45020004 */  bc1fl      .L800CB9EC
/* A6DDC 800CB9DC C7A60078 */   lwc1      $f6, 0x78($sp)
.L800CB9E0:
/* A6DE0 800CB9E0 1000004E */  b          .L800CBB1C
/* A6DE4 800CB9E4 00001025 */   or        $v0, $zero, $zero
/* A6DE8 800CB9E8 C7A60078 */  lwc1       $f6, 0x78($sp)
.L800CB9EC:
/* A6DEC 800CB9EC E7AC0060 */  swc1       $f12, 0x60($sp)
/* A6DF0 800CB9F0 E7AE0064 */  swc1       $f14, 0x64($sp)
/* A6DF4 800CB9F4 E7A60068 */  swc1       $f6, 0x68($sp)
/* A6DF8 800CB9F8 8F010000 */  lw         $at, ($t8)
/* A6DFC 800CB9FC 27A20030 */  addiu      $v0, $sp, 0x30
/* A6E00 800CBA00 27AA0054 */  addiu      $t2, $sp, 0x54
/* A6E04 800CBA04 AC410000 */  sw         $at, ($v0)
/* A6E08 800CBA08 8F090004 */  lw         $t1, 4($t8)
/* A6E0C 800CBA0C 27A40048 */  addiu      $a0, $sp, 0x48
/* A6E10 800CBA10 44804000 */  mtc1       $zero, $f8
/* A6E14 800CBA14 AC490004 */  sw         $t1, 4($v0)
/* A6E18 800CBA18 8F010008 */  lw         $at, 8($t8)
/* A6E1C 800CBA1C 24050077 */  addiu      $a1, $zero, 0x77
/* A6E20 800CBA20 24060002 */  addiu      $a2, $zero, 2
/* A6E24 800CBA24 AC410008 */  sw         $at, 8($v0)
/* A6E28 800CBA28 8C410000 */  lw         $at, ($v0)
/* A6E2C 800CBA2C AD410000 */  sw         $at, ($t2)
/* A6E30 800CBA30 8C4D0004 */  lw         $t5, 4($v0)
/* A6E34 800CBA34 AD4D0004 */  sw         $t5, 4($t2)
/* A6E38 800CBA38 8C410008 */  lw         $at, 8($v0)
/* A6E3C 800CBA3C AD410008 */  sw         $at, 8($t2)
/* A6E40 800CBA40 8C410000 */  lw         $at, ($v0)
/* A6E44 800CBA44 8C480004 */  lw         $t0, 4($v0)
/* A6E48 800CBA48 AC810000 */  sw         $at, ($a0)
/* A6E4C 800CBA4C 8C410008 */  lw         $at, 8($v0)
/* A6E50 800CBA50 AC880004 */  sw         $t0, 4($a0)
/* A6E54 800CBA54 AC810008 */  sw         $at, 8($a0)
/* A6E58 800CBA58 3C014034 */  lui        $at, 0x4034
/* A6E5C 800CBA5C 44814800 */  mtc1       $at, $f9
/* A6E60 800CBA60 C7A40058 */  lwc1       $f4, 0x58($sp)
/* A6E64 800CBA64 3C014024 */  lui        $at, 0x4024
/* A6E68 800CBA68 46280282 */  mul.d      $f10, $f0, $f8
/* A6E6C 800CBA6C 44804000 */  mtc1       $zero, $f8
/* A6E70 800CBA70 44814800 */  mtc1       $at, $f9
/* A6E74 800CBA74 460021A1 */  cvt.d.s    $f6, $f4
/* A6E78 800CBA78 C7B0004C */  lwc1       $f16, 0x4c($sp)
/* A6E7C 800CBA7C 462050A0 */  cvt.s.d    $f2, $f10
/* A6E80 800CBA80 46283280 */  add.d      $f10, $f6, $f8
/* A6E84 800CBA84 E7A20024 */  swc1       $f2, 0x24($sp)
/* A6E88 800CBA88 46028481 */  sub.s      $f18, $f16, $f2
/* A6E8C 800CBA8C 46205420 */  cvt.s.d    $f16, $f10
/* A6E90 800CBA90 E7B2004C */  swc1       $f18, 0x4c($sp)
/* A6E94 800CBA94 0C0325D2 */  jal        func_800C9748
/* A6E98 800CBA98 E7B00058 */   swc1      $f16, 0x58($sp)
/* A6E9C 800CBA9C 27B90060 */  addiu      $t9, $sp, 0x60
/* A6EA0 800CBAA0 8F210000 */  lw         $at, ($t9)
/* A6EA4 800CBAA4 C7A20024 */  lwc1       $f2, 0x24($sp)
/* A6EA8 800CBAA8 3C074120 */  lui        $a3, 0x4120
/* A6EAC 800CBAAC AFA10000 */  sw         $at, ($sp)
/* A6EB0 800CBAB0 8F250004 */  lw         $a1, 4($t9)
/* A6EB4 800CBAB4 46001487 */  neg.s      $f18, $f2
/* A6EB8 800CBAB8 8FA40000 */  lw         $a0, ($sp)
/* A6EBC 800CBABC AFA50004 */  sw         $a1, 4($sp)
/* A6EC0 800CBAC0 8F260008 */  lw         $a2, 8($t9)
/* A6EC4 800CBAC4 E7B20010 */  swc1       $f18, 0x10($sp)
/* A6EC8 800CBAC8 0C032BE2 */  jal        func_800CAF88
/* A6ECC 800CBACC AFA60008 */   sw        $a2, 8($sp)
/* A6ED0 800CBAD0 10400010 */  beqz       $v0, .L800CBB14
/* A6ED4 800CBAD4 00403825 */   or        $a3, $v0, $zero
/* A6ED8 800CBAD8 27AC0060 */  addiu      $t4, $sp, 0x60
/* A6EDC 800CBADC 8D810000 */  lw         $at, ($t4)
/* A6EE0 800CBAE0 8FAD007C */  lw         $t5, 0x7c($sp)
/* A6EE4 800CBAE4 8FAF0080 */  lw         $t7, 0x80($sp)
/* A6EE8 800CBAE8 AFA10000 */  sw         $at, ($sp)
/* A6EEC 800CBAEC 8D850004 */  lw         $a1, 4($t4)
/* A6EF0 800CBAF0 8FA40000 */  lw         $a0, ($sp)
/* A6EF4 800CBAF4 AFA50004 */  sw         $a1, 4($sp)
/* A6EF8 800CBAF8 8D860008 */  lw         $a2, 8($t4)
/* A6EFC 800CBAFC AFAD0010 */  sw         $t5, 0x10($sp)
/* A6F00 800CBB00 AFAF0014 */  sw         $t7, 0x14($sp)
/* A6F04 800CBB04 0C032D1C */  jal        func_800CB470
/* A6F08 800CBB08 AFA60008 */   sw        $a2, 8($sp)
/* A6F0C 800CBB0C 10000002 */  b          .L800CBB18
/* A6F10 800CBB10 24030001 */   addiu     $v1, $zero, 1
.L800CBB14:
/* A6F14 800CBB14 00001825 */  or         $v1, $zero, $zero
.L800CBB18:
/* A6F18 800CBB18 00601025 */  or         $v0, $v1, $zero
.L800CBB1C:
/* A6F1C 800CBB1C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A6F20 800CBB20 27BD0070 */  addiu      $sp, $sp, 0x70
/* A6F24 800CBB24 03E00008 */  jr         $ra
/* A6F28 800CBB28 00000000 */   nop

glabel func_800CBB2C
/* A6F2C 800CBB2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6F30 800CBB30 AFBF001C */  sw         $ra, 0x1c($sp)
/* A6F34 800CBB34 8C86000C */  lw         $a2, 0xc($a0)
/* A6F38 800CBB38 C48E0008 */  lwc1       $f14, 8($a0)
/* A6F3C 800CBB3C C48C0004 */  lwc1       $f12, 4($a0)
/* A6F40 800CBB40 AFA40020 */  sw         $a0, 0x20($sp)
/* A6F44 800CBB44 AFA00010 */  sw         $zero, 0x10($sp)
/* A6F48 800CBB48 0C032E67 */  jal        func_800CB99C
/* A6F4C 800CBB4C 2487004C */   addiu     $a3, $a0, 0x4c
/* A6F50 800CBB50 1040000B */  beqz       $v0, .L800CBB80
/* A6F54 800CBB54 8FA40020 */   lw        $a0, 0x20($sp)
/* A6F58 800CBB58 3C0E8025 */  lui        $t6, %hi(D_80248510)
/* A6F5C 800CBB5C 8DCE8510 */  lw         $t6, %lo(D_80248510)($t6)
/* A6F60 800CBB60 3C018024 */  lui        $at, %hi(D_802478E8)
/* A6F64 800CBB64 000E7880 */  sll        $t7, $t6, 2
/* A6F68 800CBB68 01EE7823 */  subu       $t7, $t7, $t6
/* A6F6C 800CBB6C 000F7900 */  sll        $t7, $t7, 4
/* A6F70 800CBB70 002F0821 */  addu       $at, $at, $t7
/* A6F74 800CBB74 C42478E8 */  lwc1       $f4, %lo(D_802478E8)($at)
/* A6F78 800CBB78 10000003 */  b          .L800CBB88
/* A6F7C 800CBB7C E484001C */   swc1      $f4, 0x1c($a0)
.L800CBB80:
/* A6F80 800CBB80 C4860008 */  lwc1       $f6, 8($a0)
/* A6F84 800CBB84 E486001C */  swc1       $f6, 0x1c($a0)
.L800CBB88:
/* A6F88 800CBB88 8FBF001C */  lw         $ra, 0x1c($sp)
/* A6F8C 800CBB8C 27BD0020 */  addiu      $sp, $sp, 0x20
/* A6F90 800CBB90 03E00008 */  jr         $ra
/* A6F94 800CBB94 00000000 */   nop

glabel func_800CBB98
/* A6F98 800CBB98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A6F9C 800CBB9C AFBF001C */  sw         $ra, 0x1c($sp)
/* A6FA0 800CBBA0 AFB00018 */  sw         $s0, 0x18($sp)
/* A6FA4 800CBBA4 C4860024 */  lwc1       $f6, 0x24($a0)
/* A6FA8 800CBBA8 C4840054 */  lwc1       $f4, 0x54($a0)
/* A6FAC 800CBBAC 27AE0020 */  addiu      $t6, $sp, 0x20
/* A6FB0 800CBBB0 46062200 */  add.s      $f8, $f4, $f6
/* A6FB4 800CBBB4 E7A80020 */  swc1       $f8, 0x20($sp)
/* A6FB8 800CBBB8 C48A0028 */  lwc1       $f10, 0x28($a0)
/* A6FBC 800CBBBC E7AA0024 */  swc1       $f10, 0x24($sp)
/* A6FC0 800CBBC0 C492002C */  lwc1       $f18, 0x2c($a0)
/* A6FC4 800CBBC4 C490005C */  lwc1       $f16, 0x5c($a0)
/* A6FC8 800CBBC8 46128100 */  add.s      $f4, $f16, $f18
/* A6FCC 800CBBCC E7A40028 */  swc1       $f4, 0x28($sp)
/* A6FD0 800CBBD0 8DC10000 */  lw         $at, ($t6)
/* A6FD4 800CBBD4 AFA10000 */  sw         $at, ($sp)
/* A6FD8 800CBBD8 8DC50004 */  lw         $a1, 4($t6)
/* A6FDC 800CBBDC AFA50004 */  sw         $a1, 4($sp)
/* A6FE0 800CBBE0 8DC60008 */  lw         $a2, 8($t6)
/* A6FE4 800CBBE4 AFA60008 */  sw         $a2, 8($sp)
/* A6FE8 800CBBE8 8C870060 */  lw         $a3, 0x60($a0)
/* A6FEC 800CBBEC 0C032CA5 */  jal        func_800CB294
/* A6FF0 800CBBF0 8FA40000 */   lw        $a0, ($sp)
/* A6FF4 800CBBF4 8FBF001C */  lw         $ra, 0x1c($sp)
/* A6FF8 800CBBF8 8FB00018 */  lw         $s0, 0x18($sp)
/* A6FFC 800CBBFC 27BD0030 */  addiu      $sp, $sp, 0x30
/* A7000 800CBC00 03E00008 */  jr         $ra
/* A7004 800CBC04 00000000 */   nop

glabel func_800CBC08
/* A7008 800CBC08 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A700C 800CBC0C AFBF0024 */  sw         $ra, 0x24($sp)
/* A7010 800CBC10 AFB00020 */  sw         $s0, 0x20($sp)
/* A7014 800CBC14 8C8E0000 */  lw         $t6, ($a0)
/* A7018 800CBC18 00808025 */  or         $s0, $a0, $zero
/* A701C 800CBC1C 51C0003D */  beql       $t6, $zero, .L800CBD14
/* A7020 800CBC20 8FBF0024 */   lw        $ra, 0x24($sp)
/* A7024 800CBC24 8C8F0008 */  lw         $t7, 8($a0)
/* A7028 800CBC28 24010002 */  addiu      $at, $zero, 2
/* A702C 800CBC2C 51E10039 */  beql       $t7, $at, .L800CBD14
/* A7030 800CBC30 8FBF0024 */   lw        $ra, 0x24($sp)
/* A7034 800CBC34 C4860060 */  lwc1       $f6, 0x60($a0)
/* A7038 800CBC38 44802800 */  mtc1       $zero, $f5
/* A703C 800CBC3C 44802000 */  mtc1       $zero, $f4
/* A7040 800CBC40 46003221 */  cvt.d.s    $f8, $f6
/* A7044 800CBC44 4624403E */  c.le.d     $f8, $f4
/* A7048 800CBC48 00000000 */  nop
/* A704C 800CBC4C 45030031 */  bc1tl      .L800CBD14
/* A7050 800CBC50 8FBF0024 */   lw        $ra, 0x24($sp)
/* A7054 800CBC54 C48A0054 */  lwc1       $f10, 0x54($a0)
/* A7058 800CBC58 C4900024 */  lwc1       $f16, 0x24($a0)
/* A705C 800CBC5C 3C0745BB */  lui        $a3, 0x45bb
/* A7060 800CBC60 34E78000 */  ori        $a3, $a3, 0x8000
/* A7064 800CBC64 46105480 */  add.s      $f18, $f10, $f16
/* A7068 800CBC68 E7B20028 */  swc1       $f18, 0x28($sp)
/* A706C 800CBC6C C4860028 */  lwc1       $f6, 0x28($a0)
/* A7070 800CBC70 C7AC0028 */  lwc1       $f12, 0x28($sp)
/* A7074 800CBC74 E7A6002C */  swc1       $f6, 0x2c($sp)
/* A7078 800CBC78 C488002C */  lwc1       $f8, 0x2c($a0)
/* A707C 800CBC7C C484005C */  lwc1       $f4, 0x5c($a0)
/* A7080 800CBC80 C7AE002C */  lwc1       $f14, 0x2c($sp)
/* A7084 800CBC84 46082280 */  add.s      $f10, $f4, $f8
/* A7088 800CBC88 E7AA0030 */  swc1       $f10, 0x30($sp)
/* A708C 800CBC8C 0C02BD8B */  jal        func_800AF62C
/* A7090 800CBC90 8FA60030 */   lw        $a2, 0x30($sp)
/* A7094 800CBC94 1040001E */  beqz       $v0, .L800CBD10
/* A7098 800CBC98 27B80028 */   addiu     $t8, $sp, 0x28
/* A709C 800CBC9C 8F010000 */  lw         $at, ($t8)
/* A70A0 800CBCA0 AFA10000 */  sw         $at, ($sp)
/* A70A4 800CBCA4 8F050004 */  lw         $a1, 4($t8)
/* A70A8 800CBCA8 8FA40000 */  lw         $a0, ($sp)
/* A70AC 800CBCAC AFA50004 */  sw         $a1, 4($sp)
/* A70B0 800CBCB0 8F060008 */  lw         $a2, 8($t8)
/* A70B4 800CBCB4 AFA60008 */  sw         $a2, 8($sp)
/* A70B8 800CBCB8 0C032CA5 */  jal        func_800CB294
/* A70BC 800CBCBC 8E070060 */   lw        $a3, 0x60($s0)
/* A70C0 800CBCC0 10400013 */  beqz       $v0, .L800CBD10
/* A70C4 800CBCC4 00403825 */   or        $a3, $v0, $zero
/* A70C8 800CBCC8 C4500094 */  lwc1       $f16, 0x94($v0)
/* A70CC 800CBCCC 27A90028 */  addiu      $t1, $sp, 0x28
/* A70D0 800CBCD0 260C0060 */  addiu      $t4, $s0, 0x60
/* A70D4 800CBCD4 E61000D4 */  swc1       $f16, 0xd4($s0)
/* A70D8 800CBCD8 C4520098 */  lwc1       $f18, 0x98($v0)
/* A70DC 800CBCDC E61200D8 */  swc1       $f18, 0xd8($s0)
/* A70E0 800CBCE0 C446009C */  lwc1       $f6, 0x9c($v0)
/* A70E4 800CBCE4 E60600DC */  swc1       $f6, 0xdc($s0)
/* A70E8 800CBCE8 8D210000 */  lw         $at, ($t1)
/* A70EC 800CBCEC AFA10000 */  sw         $at, ($sp)
/* A70F0 800CBCF0 8D250004 */  lw         $a1, 4($t1)
/* A70F4 800CBCF4 8FA40000 */  lw         $a0, ($sp)
/* A70F8 800CBCF8 AFA50004 */  sw         $a1, 4($sp)
/* A70FC 800CBCFC 8D260008 */  lw         $a2, 8($t1)
/* A7100 800CBD00 AFB00014 */  sw         $s0, 0x14($sp)
/* A7104 800CBD04 AFAC0010 */  sw         $t4, 0x10($sp)
/* A7108 800CBD08 0C032D1C */  jal        func_800CB470
/* A710C 800CBD0C AFA60008 */   sw        $a2, 8($sp)
.L800CBD10:
/* A7110 800CBD10 8FBF0024 */  lw         $ra, 0x24($sp)
.L800CBD14:
/* A7114 800CBD14 8FB00020 */  lw         $s0, 0x20($sp)
/* A7118 800CBD18 27BD0038 */  addiu      $sp, $sp, 0x38
/* A711C 800CBD1C 03E00008 */  jr         $ra
/* A7120 800CBD20 00000000 */   nop

glabel func_800CBD24
/* A7124 800CBD24 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A7128 800CBD28 AFBF003C */  sw         $ra, 0x3c($sp)
/* A712C 800CBD2C AFB40038 */  sw         $s4, 0x38($sp)
/* A7130 800CBD30 AFB30034 */  sw         $s3, 0x34($sp)
/* A7134 800CBD34 AFB20030 */  sw         $s2, 0x30($sp)
/* A7138 800CBD38 AFB1002C */  sw         $s1, 0x2c($sp)
/* A713C 800CBD3C AFB00028 */  sw         $s0, 0x28($sp)
/* A7140 800CBD40 F7B40020 */  sdc1       $f20, 0x20($sp)
/* A7144 800CBD44 8C820000 */  lw         $v0, ($a0)
/* A7148 800CBD48 00809025 */  or         $s2, $a0, $zero
/* A714C 800CBD4C 24010007 */  addiu      $at, $zero, 7
/* A7150 800CBD50 50400040 */  beql       $v0, $zero, .L800CBE54
/* A7154 800CBD54 8FBF003C */   lw        $ra, 0x3c($sp)
/* A7158 800CBD58 5041003E */  beql       $v0, $at, .L800CBE54
/* A715C 800CBD5C 8FBF003C */   lw        $ra, 0x3c($sp)
/* A7160 800CBD60 8C8E0008 */  lw         $t6, 8($a0)
/* A7164 800CBD64 24010002 */  addiu      $at, $zero, 2
/* A7168 800CBD68 51C1003A */  beql       $t6, $at, .L800CBE54
/* A716C 800CBD6C 8FBF003C */   lw        $ra, 0x3c($sp)
/* A7170 800CBD70 8C820050 */  lw         $v0, 0x50($a0)
/* A7174 800CBD74 28410002 */  slti       $at, $v0, 2
/* A7178 800CBD78 14200035 */  bnez       $at, .L800CBE50
/* A717C 800CBD7C 28410002 */   slti      $at, $v0, 2
/* A7180 800CBD80 14200033 */  bnez       $at, .L800CBE50
/* A7184 800CBD84 24130001 */   addiu     $s3, $zero, 1
/* A7188 800CBD88 3C018011 */  lui        $at, %hi(D_80110468)
/* A718C 800CBD8C C4340468 */  lwc1       $f20, %lo(D_80110468)($at)
/* A7190 800CBD90 24910014 */  addiu      $s1, $a0, 0x14
/* A7194 800CBD94 27B40054 */  addiu      $s4, $sp, 0x54
/* A7198 800CBD98 C6440024 */  lwc1       $f4, 0x24($s2)
.L800CBD9C:
/* A719C 800CBD9C C6260054 */  lwc1       $f6, 0x54($s1)
/* A71A0 800CBDA0 4407A000 */  mfc1       $a3, $f20
/* A71A4 800CBDA4 46062200 */  add.s      $f8, $f4, $f6
/* A71A8 800CBDA8 E7A80054 */  swc1       $f8, 0x54($sp)
/* A71AC 800CBDAC C64A0028 */  lwc1       $f10, 0x28($s2)
/* A71B0 800CBDB0 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* A71B4 800CBDB4 E7AA0058 */  swc1       $f10, 0x58($sp)
/* A71B8 800CBDB8 C632005C */  lwc1       $f18, 0x5c($s1)
/* A71BC 800CBDBC C650002C */  lwc1       $f16, 0x2c($s2)
/* A71C0 800CBDC0 C7AE0058 */  lwc1       $f14, 0x58($sp)
/* A71C4 800CBDC4 46128100 */  add.s      $f4, $f16, $f18
/* A71C8 800CBDC8 E7A4005C */  swc1       $f4, 0x5c($sp)
/* A71CC 800CBDCC 0C02BD81 */  jal        func_800AF604
/* A71D0 800CBDD0 8FA6005C */   lw        $a2, 0x5c($sp)
/* A71D4 800CBDD4 50400019 */  beql       $v0, $zero, .L800CBE3C
/* A71D8 800CBDD8 8E4A0050 */   lw        $t2, 0x50($s2)
/* A71DC 800CBDDC 8E810000 */  lw         $at, ($s4)
/* A71E0 800CBDE0 26300054 */  addiu      $s0, $s1, 0x54
/* A71E4 800CBDE4 AFA10000 */  sw         $at, ($sp)
/* A71E8 800CBDE8 8E850004 */  lw         $a1, 4($s4)
/* A71EC 800CBDEC 8FA40000 */  lw         $a0, ($sp)
/* A71F0 800CBDF0 AFA50004 */  sw         $a1, 4($sp)
/* A71F4 800CBDF4 8E860008 */  lw         $a2, 8($s4)
/* A71F8 800CBDF8 AFA60008 */  sw         $a2, 8($sp)
/* A71FC 800CBDFC 0C032CA5 */  jal        func_800CB294
/* A7200 800CBE00 8E07000C */   lw        $a3, 0xc($s0)
/* A7204 800CBE04 1040000C */  beqz       $v0, .L800CBE38
/* A7208 800CBE08 00403825 */   or        $a3, $v0, $zero
/* A720C 800CBE0C 8E810000 */  lw         $at, ($s4)
/* A7210 800CBE10 2609000C */  addiu      $t1, $s0, 0xc
/* A7214 800CBE14 AFA10000 */  sw         $at, ($sp)
/* A7218 800CBE18 8E850004 */  lw         $a1, 4($s4)
/* A721C 800CBE1C 8FA40000 */  lw         $a0, ($sp)
/* A7220 800CBE20 AFA50004 */  sw         $a1, 4($sp)
/* A7224 800CBE24 8E860008 */  lw         $a2, 8($s4)
/* A7228 800CBE28 AFB20014 */  sw         $s2, 0x14($sp)
/* A722C 800CBE2C AFA90010 */  sw         $t1, 0x10($sp)
/* A7230 800CBE30 0C032D1C */  jal        func_800CB470
/* A7234 800CBE34 AFA60008 */   sw        $a2, 8($sp)
.L800CBE38:
/* A7238 800CBE38 8E4A0050 */  lw         $t2, 0x50($s2)
.L800CBE3C:
/* A723C 800CBE3C 26730001 */  addiu      $s3, $s3, 1
/* A7240 800CBE40 26310014 */  addiu      $s1, $s1, 0x14
/* A7244 800CBE44 026A082A */  slt        $at, $s3, $t2
/* A7248 800CBE48 5420FFD4 */  bnel       $at, $zero, .L800CBD9C
/* A724C 800CBE4C C6440024 */   lwc1      $f4, 0x24($s2)
.L800CBE50:
/* A7250 800CBE50 8FBF003C */  lw         $ra, 0x3c($sp)
.L800CBE54:
/* A7254 800CBE54 D7B40020 */  ldc1       $f20, 0x20($sp)
/* A7258 800CBE58 8FB00028 */  lw         $s0, 0x28($sp)
/* A725C 800CBE5C 8FB1002C */  lw         $s1, 0x2c($sp)
/* A7260 800CBE60 8FB20030 */  lw         $s2, 0x30($sp)
/* A7264 800CBE64 8FB30034 */  lw         $s3, 0x34($sp)
/* A7268 800CBE68 8FB40038 */  lw         $s4, 0x38($sp)
/* A726C 800CBE6C 03E00008 */  jr         $ra
/* A7270 800CBE70 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800CBE74
/* A7274 800CBE74 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A7278 800CBE78 AFBF0024 */  sw         $ra, 0x24($sp)
/* A727C 800CBE7C AFB00020 */  sw         $s0, 0x20($sp)
/* A7280 800CBE80 C4860024 */  lwc1       $f6, 0x24($a0)
/* A7284 800CBE84 C4840054 */  lwc1       $f4, 0x54($a0)
/* A7288 800CBE88 3C0745BB */  lui        $a3, 0x45bb
/* A728C 800CBE8C 00808025 */  or         $s0, $a0, $zero
/* A7290 800CBE90 46062200 */  add.s      $f8, $f4, $f6
/* A7294 800CBE94 34E78000 */  ori        $a3, $a3, 0x8000
/* A7298 800CBE98 E7A80028 */  swc1       $f8, 0x28($sp)
/* A729C 800CBE9C C48A0028 */  lwc1       $f10, 0x28($a0)
/* A72A0 800CBEA0 C7AC0028 */  lwc1       $f12, 0x28($sp)
/* A72A4 800CBEA4 E7AA002C */  swc1       $f10, 0x2c($sp)
/* A72A8 800CBEA8 C492002C */  lwc1       $f18, 0x2c($a0)
/* A72AC 800CBEAC C490005C */  lwc1       $f16, 0x5c($a0)
/* A72B0 800CBEB0 C7AE002C */  lwc1       $f14, 0x2c($sp)
/* A72B4 800CBEB4 46128100 */  add.s      $f4, $f16, $f18
/* A72B8 800CBEB8 E7A40030 */  swc1       $f4, 0x30($sp)
/* A72BC 800CBEBC 0C02BD8B */  jal        func_800AF62C
/* A72C0 800CBEC0 8FA60030 */   lw        $a2, 0x30($sp)
/* A72C4 800CBEC4 1040001E */  beqz       $v0, .L800CBF40
/* A72C8 800CBEC8 27AE0028 */   addiu     $t6, $sp, 0x28
/* A72CC 800CBECC 8DC10000 */  lw         $at, ($t6)
/* A72D0 800CBED0 AFA10000 */  sw         $at, ($sp)
/* A72D4 800CBED4 8DC50004 */  lw         $a1, 4($t6)
/* A72D8 800CBED8 8FA40000 */  lw         $a0, ($sp)
/* A72DC 800CBEDC AFA50004 */  sw         $a1, 4($sp)
/* A72E0 800CBEE0 8DC60008 */  lw         $a2, 8($t6)
/* A72E4 800CBEE4 AFA60008 */  sw         $a2, 8($sp)
/* A72E8 800CBEE8 0C032CA5 */  jal        func_800CB294
/* A72EC 800CBEEC 8E070060 */   lw        $a3, 0x60($s0)
/* A72F0 800CBEF0 10400013 */  beqz       $v0, .L800CBF40
/* A72F4 800CBEF4 00403825 */   or        $a3, $v0, $zero
/* A72F8 800CBEF8 C4460094 */  lwc1       $f6, 0x94($v0)
/* A72FC 800CBEFC 27B90028 */  addiu      $t9, $sp, 0x28
/* A7300 800CBF00 260A0060 */  addiu      $t2, $s0, 0x60
/* A7304 800CBF04 E60600D4 */  swc1       $f6, 0xd4($s0)
/* A7308 800CBF08 C4480098 */  lwc1       $f8, 0x98($v0)
/* A730C 800CBF0C E60800D8 */  swc1       $f8, 0xd8($s0)
/* A7310 800CBF10 C44A009C */  lwc1       $f10, 0x9c($v0)
/* A7314 800CBF14 E60A00DC */  swc1       $f10, 0xdc($s0)
/* A7318 800CBF18 8F210000 */  lw         $at, ($t9)
/* A731C 800CBF1C AFA10000 */  sw         $at, ($sp)
/* A7320 800CBF20 8F250004 */  lw         $a1, 4($t9)
/* A7324 800CBF24 8FA40000 */  lw         $a0, ($sp)
/* A7328 800CBF28 AFA50004 */  sw         $a1, 4($sp)
/* A732C 800CBF2C 8F260008 */  lw         $a2, 8($t9)
/* A7330 800CBF30 AFB00014 */  sw         $s0, 0x14($sp)
/* A7334 800CBF34 AFAA0010 */  sw         $t2, 0x10($sp)
/* A7338 800CBF38 0C032D1C */  jal        func_800CB470
/* A733C 800CBF3C AFA60008 */   sw        $a2, 8($sp)
.L800CBF40:
/* A7340 800CBF40 8FBF0024 */  lw         $ra, 0x24($sp)
/* A7344 800CBF44 8FB00020 */  lw         $s0, 0x20($sp)
/* A7348 800CBF48 27BD0038 */  addiu      $sp, $sp, 0x38
/* A734C 800CBF4C 03E00008 */  jr         $ra
/* A7350 800CBF50 00000000 */   nop

glabel func_800CBF54
/* A7354 800CBF54 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A7358 800CBF58 AFB00018 */  sw         $s0, 0x18($sp)
/* A735C 800CBF5C AFB20020 */  sw         $s2, 0x20($sp)
/* A7360 800CBF60 AFB1001C */  sw         $s1, 0x1c($sp)
/* A7364 800CBF64 3C108017 */  lui        $s0, %hi(D_8016AC68)
/* A7368 800CBF68 AFBF0024 */  sw         $ra, 0x24($sp)
/* A736C 800CBF6C 2610AC68 */  addiu      $s0, $s0, %lo(D_8016AC68)
/* A7370 800CBF70 00008825 */  or         $s1, $zero, $zero
/* A7374 800CBF74 24120040 */  addiu      $s2, $zero, 0x40
.L800CBF78:
/* A7378 800CBF78 8E0E0000 */  lw         $t6, ($s0)
/* A737C 800CBF7C 29C1005F */  slti       $at, $t6, 0x5f
/* A7380 800CBF80 54200004 */  bnel       $at, $zero, .L800CBF94
/* A7384 800CBF84 26310001 */   addiu     $s1, $s1, 1
/* A7388 800CBF88 0C032F9D */  jal        func_800CBE74
/* A738C 800CBF8C 02002025 */   or        $a0, $s0, $zero
/* A7390 800CBF90 26310001 */  addiu      $s1, $s1, 1
.L800CBF94:
/* A7394 800CBF94 1632FFF8 */  bne        $s1, $s2, .L800CBF78
/* A7398 800CBF98 26100174 */   addiu     $s0, $s0, 0x174
/* A739C 800CBF9C 8FBF0024 */  lw         $ra, 0x24($sp)
/* A73A0 800CBFA0 8FB00018 */  lw         $s0, 0x18($sp)
/* A73A4 800CBFA4 8FB1001C */  lw         $s1, 0x1c($sp)
/* A73A8 800CBFA8 8FB20020 */  lw         $s2, 0x20($sp)
/* A73AC 800CBFAC 03E00008 */  jr         $ra
/* A73B0 800CBFB0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800CBFB4
/* A73B4 800CBFB4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A73B8 800CBFB8 AFBF002C */  sw         $ra, 0x2c($sp)
/* A73BC 800CBFBC AFB20028 */  sw         $s2, 0x28($sp)
/* A73C0 800CBFC0 AFB10024 */  sw         $s1, 0x24($sp)
/* A73C4 800CBFC4 AFB00020 */  sw         $s0, 0x20($sp)
/* A73C8 800CBFC8 AFA5006C */  sw         $a1, 0x6c($sp)
/* A73CC 800CBFCC 8C83002C */  lw         $v1, 0x2c($a0)
/* A73D0 800CBFD0 24010007 */  addiu      $at, $zero, 7
/* A73D4 800CBFD4 00C08825 */  or         $s1, $a2, $zero
/* A73D8 800CBFD8 8C6E0000 */  lw         $t6, ($v1)
/* A73DC 800CBFDC 00809025 */  or         $s2, $a0, $zero
/* A73E0 800CBFE0 51C10004 */  beql       $t6, $at, .L800CBFF4
/* A73E4 800CBFE4 8C6F0110 */   lw        $t7, 0x110($v1)
/* A73E8 800CBFE8 100000BC */  b          .L800CC2DC
/* A73EC 800CBFEC 00C01025 */   or        $v0, $a2, $zero
/* A73F0 800CBFF0 8C6F0110 */  lw         $t7, 0x110($v1)
.L800CBFF4:
/* A73F4 800CBFF4 55E00037 */  bnel       $t7, $zero, .L800CC0D4
/* A73F8 800CBFF8 44807000 */   mtc1      $zero, $f14
/* A73FC 800CBFFC 8C6200F0 */  lw         $v0, 0xf0($v1)
/* A7400 800CC000 2C410008 */  sltiu      $at, $v0, 8
/* A7404 800CC004 50200017 */  beql       $at, $zero, .L800CC064
/* A7408 800CC008 2C410010 */   sltiu     $at, $v0, 0x10
/* A740C 800CC00C 44822000 */  mtc1       $v0, $f4
/* A7410 800CC010 44805000 */  mtc1       $zero, $f10
/* A7414 800CC014 04410006 */  bgez       $v0, .L800CC030
/* A7418 800CC018 468021A1 */   cvt.d.w   $f6, $f4
/* A741C 800CC01C 3C0141F0 */  lui        $at, 0x41f0
/* A7420 800CC020 44814800 */  mtc1       $at, $f9
/* A7424 800CC024 44804000 */  mtc1       $zero, $f8
/* A7428 800CC028 00000000 */  nop
/* A742C 800CC02C 46283180 */  add.d      $f6, $f6, $f8
.L800CC030:
/* A7430 800CC030 3C014034 */  lui        $at, 0x4034
/* A7434 800CC034 44815800 */  mtc1       $at, $f11
/* A7438 800CC038 3C01401C */  lui        $at, 0x401c
/* A743C 800CC03C 44812800 */  mtc1       $at, $f5
/* A7440 800CC040 462A3482 */  mul.d      $f18, $f6, $f10
/* A7444 800CC044 44802000 */  mtc1       $zero, $f4
/* A7448 800CC048 3C018011 */  lui        $at, %hi(D_80110470)
/* A744C 800CC04C D4260470 */  ldc1       $f6, %lo(D_80110470)($at)
/* A7450 800CC050 46249203 */  div.d      $f8, $f18, $f4
/* A7454 800CC054 46264280 */  add.d      $f10, $f8, $f6
/* A7458 800CC058 1000001F */  b          .L800CC0D8
/* A745C 800CC05C 462053A0 */   cvt.s.d   $f14, $f10
/* A7460 800CC060 2C410010 */  sltiu      $at, $v0, 0x10
.L800CC064:
/* A7464 800CC064 10200005 */  beqz       $at, .L800CC07C
/* A7468 800CC068 2458FFF1 */   addiu     $t8, $v0, -0xf
/* A746C 800CC06C 3C014348 */  lui        $at, 0x4348
/* A7470 800CC070 44817000 */  mtc1       $at, $f14
/* A7474 800CC074 10000019 */  b          .L800CC0DC
/* A7478 800CC078 C46A0090 */   lwc1      $f10, 0x90($v1)
.L800CC07C:
/* A747C 800CC07C 44989000 */  mtc1       $t8, $f18
/* A7480 800CC080 44803000 */  mtc1       $zero, $f6
/* A7484 800CC084 07010006 */  bgez       $t8, .L800CC0A0
/* A7488 800CC088 46809121 */   cvt.d.w   $f4, $f18
/* A748C 800CC08C 3C0141F0 */  lui        $at, 0x41f0
/* A7490 800CC090 44814800 */  mtc1       $at, $f9
/* A7494 800CC094 44804000 */  mtc1       $zero, $f8
/* A7498 800CC098 00000000 */  nop
/* A749C 800CC09C 46282100 */  add.d      $f4, $f4, $f8
.L800CC0A0:
/* A74A0 800CC0A0 3C014064 */  lui        $at, 0x4064
/* A74A4 800CC0A4 44813800 */  mtc1       $at, $f7
/* A74A8 800CC0A8 3C018011 */  lui        $at, %hi(D_80110478)
/* A74AC 800CC0AC D4320478 */  ldc1       $f18, %lo(D_80110478)($at)
/* A74B0 800CC0B0 46262282 */  mul.d      $f10, $f4, $f6
/* A74B4 800CC0B4 3C014069 */  lui        $at, 0x4069
/* A74B8 800CC0B8 44812800 */  mtc1       $at, $f5
/* A74BC 800CC0BC 44802000 */  mtc1       $zero, $f4
/* A74C0 800CC0C0 46325203 */  div.d      $f8, $f10, $f18
/* A74C4 800CC0C4 46244180 */  add.d      $f6, $f8, $f4
/* A74C8 800CC0C8 10000003 */  b          .L800CC0D8
/* A74CC 800CC0CC 462033A0 */   cvt.s.d   $f14, $f6
/* A74D0 800CC0D0 44807000 */  mtc1       $zero, $f14
.L800CC0D4:
/* A74D4 800CC0D4 00000000 */  nop
.L800CC0D8:
/* A74D8 800CC0D8 C46A0090 */  lwc1       $f10, 0x90($v1)
.L800CC0DC:
/* A74DC 800CC0DC 3C018011 */  lui        $at, %hi(D_80110480)
/* A74E0 800CC0E0 D4280480 */  ldc1       $f8, %lo(D_80110480)($at)
/* A74E4 800CC0E4 460A7380 */  add.s      $f14, $f14, $f10
/* A74E8 800CC0E8 3C018011 */  lui        $at, %hi(D_80110488)
/* A74EC 800CC0EC D4260488 */  ldc1       $f6, %lo(D_80110488)($at)
/* A74F0 800CC0F0 460074A1 */  cvt.d.s    $f18, $f14
/* A74F4 800CC0F4 E7AE004C */  swc1       $f14, 0x4c($sp)
/* A74F8 800CC0F8 46289102 */  mul.d      $f4, $f18, $f8
/* A74FC 800CC0FC 46262283 */  div.d      $f10, $f4, $f6
/* A7500 800CC100 46205320 */  cvt.s.d    $f12, $f10
/* A7504 800CC104 0C036C30 */  jal        func_800DB0C0
/* A7508 800CC108 E7AC0030 */   swc1      $f12, 0x30($sp)
/* A750C 800CC10C C7AC0030 */  lwc1       $f12, 0x30($sp)
/* A7510 800CC110 0C036B60 */  jal        func_800DAD80
/* A7514 800CC114 E7A00058 */   swc1      $f0, 0x58($sp)
/* A7518 800CC118 C652001C */  lwc1       $f18, 0x1c($s2)
/* A751C 800CC11C 3C013FF0 */  lui        $at, 0x3ff0
/* A7520 800CC120 44816800 */  mtc1       $at, $f13
/* A7524 800CC124 44806000 */  mtc1       $zero, $f12
/* A7528 800CC128 46009221 */  cvt.d.s    $f8, $f18
/* A752C 800CC12C 3C018011 */  lui        $at, %hi(D_80110490)
/* A7530 800CC130 46286081 */  sub.d      $f2, $f12, $f8
/* A7534 800CC134 D4300490 */  ldc1       $f16, %lo(D_80110490)($at)
/* A7538 800CC138 3C014069 */  lui        $at, 0x4069
/* A753C 800CC13C 44815800 */  mtc1       $at, $f11
/* A7540 800CC140 46221102 */  mul.d      $f4, $f2, $f2
/* A7544 800CC144 44805000 */  mtc1       $zero, $f10
/* A7548 800CC148 8FB9006C */  lw         $t9, 0x6c($sp)
/* A754C 800CC14C 3C018011 */  lui        $at, %hi(D_80110498)
/* A7550 800CC150 8F300000 */  lw         $s0, ($t9)
/* A7554 800CC154 46246181 */  sub.d      $f6, $f12, $f4
/* A7558 800CC158 C4240498 */  lwc1       $f4, %lo(D_80110498)($at)
/* A755C 800CC15C 02002025 */  or         $a0, $s0, $zero
/* A7560 800CC160 462A3482 */  mul.d      $f18, $f6, $f10
/* A7564 800CC164 4620920D */  trunc.w.d  $f8, $f18
/* A7568 800CC168 E7A80050 */  swc1       $f8, 0x50($sp)
/* A756C 800CC16C E6440018 */  swc1       $f4, 0x18($s2)
/* A7570 800CC170 C7B20058 */  lwc1       $f18, 0x58($sp)
/* A7574 800CC174 C6460004 */  lwc1       $f6, 4($s2)
/* A7578 800CC178 8E460008 */  lw         $a2, 8($s2)
/* A757C 800CC17C 46009221 */  cvt.d.s    $f8, $f18
/* A7580 800CC180 460032A1 */  cvt.d.s    $f10, $f6
/* A7584 800CC184 46304102 */  mul.d      $f4, $f8, $f16
/* A7588 800CC188 C648000C */  lwc1       $f8, 0xc($s2)
/* A758C 800CC18C 46245181 */  sub.d      $f6, $f10, $f4
/* A7590 800CC190 46000107 */  neg.s      $f4, $f0
/* A7594 800CC194 462034A0 */  cvt.s.d    $f18, $f6
/* A7598 800CC198 460021A1 */  cvt.d.s    $f6, $f4
/* A759C 800CC19C 44059000 */  mfc1       $a1, $f18
/* A75A0 800CC1A0 46303482 */  mul.d      $f18, $f6, $f16
/* A75A4 800CC1A4 460042A1 */  cvt.d.s    $f10, $f8
/* A75A8 800CC1A8 46325201 */  sub.d      $f8, $f10, $f18
/* A75AC 800CC1AC 46204120 */  cvt.s.d    $f4, $f8
/* A75B0 800CC1B0 44072000 */  mfc1       $a3, $f4
/* A75B4 800CC1B4 0C036BE2 */  jal        func_800DAF88
/* A75B8 800CC1B8 00000000 */   nop
/* A75BC 800CC1BC 44800000 */  mtc1       $zero, $f0
/* A75C0 800CC1C0 C7AE004C */  lwc1       $f14, 0x4c($sp)
/* A75C4 800CC1C4 3C018000 */  lui        $at, 0x8000
/* A75C8 800CC1C8 02015021 */  addu       $t2, $s0, $at
/* A75CC 800CC1CC 02201025 */  or         $v0, $s1, $zero
/* A75D0 800CC1D0 3C090104 */  lui        $t1, 0x104
/* A75D4 800CC1D4 35290040 */  ori        $t1, $t1, 0x40
/* A75D8 800CC1D8 AC490000 */  sw         $t1, ($v0)
/* A75DC 800CC1DC AC4A0004 */  sw         $t2, 4($v0)
/* A75E0 800CC1E0 26100040 */  addiu      $s0, $s0, 0x40
/* A75E4 800CC1E4 44057000 */  mfc1       $a1, $f14
/* A75E8 800CC1E8 44060000 */  mfc1       $a2, $f0
/* A75EC 800CC1EC 26310008 */  addiu      $s1, $s1, 8
/* A75F0 800CC1F0 02002025 */  or         $a0, $s0, $zero
/* A75F4 800CC1F4 3C073F80 */  lui        $a3, 0x3f80
/* A75F8 800CC1F8 0C036B49 */  jal        func_800DAD24
/* A75FC 800CC1FC E7A00010 */   swc1      $f0, 0x10($sp)
/* A7600 800CC200 02201025 */  or         $v0, $s1, $zero
/* A7604 800CC204 3C0B0100 */  lui        $t3, 0x100
/* A7608 800CC208 3C018000 */  lui        $at, 0x8000
/* A760C 800CC20C 02016021 */  addu       $t4, $s0, $at
/* A7610 800CC210 356B0040 */  ori        $t3, $t3, 0x40
/* A7614 800CC214 AC4B0000 */  sw         $t3, ($v0)
/* A7618 800CC218 AC4C0004 */  sw         $t4, 4($v0)
/* A761C 800CC21C C6460018 */  lwc1       $f6, 0x18($s2)
/* A7620 800CC220 3C014012 */  lui        $at, 0x4012
/* A7624 800CC224 44815800 */  mtc1       $at, $f11
/* A7628 800CC228 44805000 */  mtc1       $zero, $f10
/* A762C 800CC22C 46003021 */  cvt.d.s    $f0, $f6
/* A7630 800CC230 3C013FF8 */  lui        $at, 0x3ff8
/* A7634 800CC234 462A0482 */  mul.d      $f18, $f0, $f10
/* A7638 800CC238 44812800 */  mtc1       $at, $f5
/* A763C 800CC23C 44802000 */  mtc1       $zero, $f4
/* A7640 800CC240 26100040 */  addiu      $s0, $s0, 0x40
/* A7644 800CC244 26310008 */  addiu      $s1, $s1, 8
/* A7648 800CC248 46240182 */  mul.d      $f6, $f0, $f4
/* A764C 800CC24C 02002025 */  or         $a0, $s0, $zero
/* A7650 800CC250 3C063F80 */  lui        $a2, 0x3f80
/* A7654 800CC254 46209220 */  cvt.s.d    $f8, $f18
/* A7658 800CC258 462032A0 */  cvt.s.d    $f10, $f6
/* A765C 800CC25C 44054000 */  mfc1       $a1, $f8
/* A7660 800CC260 44075000 */  mfc1       $a3, $f10
/* A7664 800CC264 0C036AA1 */  jal        func_800DAA84
/* A7668 800CC268 00000000 */   nop
/* A766C 800CC26C 02201025 */  or         $v0, $s1, $zero
/* A7670 800CC270 3C0D0100 */  lui        $t5, 0x100
/* A7674 800CC274 3C018000 */  lui        $at, 0x8000
/* A7678 800CC278 02017021 */  addu       $t6, $s0, $at
/* A767C 800CC27C 35AD0040 */  ori        $t5, $t5, 0x40
/* A7680 800CC280 AC4D0000 */  sw         $t5, ($v0)
/* A7684 800CC284 AC4E0004 */  sw         $t6, 4($v0)
/* A7688 800CC288 26230008 */  addiu      $v1, $s1, 8
/* A768C 800CC28C 3C0FFA00 */  lui        $t7, 0xfa00
/* A7690 800CC290 AC6F0000 */  sw         $t7, ($v1)
/* A7694 800CC294 8FB80050 */  lw         $t8, 0x50($sp)
/* A7698 800CC298 2401FF00 */  addiu      $at, $zero, -0x100
/* A769C 800CC29C 24640008 */  addiu      $a0, $v1, 8
/* A76A0 800CC2A0 331900FF */  andi       $t9, $t8, 0xff
/* A76A4 800CC2A4 03214025 */  or         $t0, $t9, $at
/* A76A8 800CC2A8 AC680004 */  sw         $t0, 4($v1)
/* A76AC 800CC2AC 3C090600 */  lui        $t1, 0x600
/* A76B0 800CC2B0 AC890000 */  sw         $t1, ($a0)
/* A76B4 800CC2B4 8E4A0024 */  lw         $t2, 0x24($s2)
/* A76B8 800CC2B8 24850008 */  addiu      $a1, $a0, 8
/* A76BC 800CC2BC 3C0BBD00 */  lui        $t3, 0xbd00
/* A76C0 800CC2C0 AC8A0004 */  sw         $t2, 4($a0)
/* A76C4 800CC2C4 ACA00004 */  sw         $zero, 4($a1)
/* A76C8 800CC2C8 ACAB0000 */  sw         $t3, ($a1)
/* A76CC 800CC2CC 8FAC006C */  lw         $t4, 0x6c($sp)
/* A76D0 800CC2D0 26100040 */  addiu      $s0, $s0, 0x40
/* A76D4 800CC2D4 24A20008 */  addiu      $v0, $a1, 8
/* A76D8 800CC2D8 AD900000 */  sw         $s0, ($t4)
.L800CC2DC:
/* A76DC 800CC2DC 8FBF002C */  lw         $ra, 0x2c($sp)
/* A76E0 800CC2E0 8FB00020 */  lw         $s0, 0x20($sp)
/* A76E4 800CC2E4 8FB10024 */  lw         $s1, 0x24($sp)
/* A76E8 800CC2E8 8FB20028 */  lw         $s2, 0x28($sp)
/* A76EC 800CC2EC 03E00008 */  jr         $ra
/* A76F0 800CC2F0 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_800CC2F4
/* A76F4 800CC2F4 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* A76F8 800CC2F8 3C068025 */  lui        $a2, %hi(D_80248510)
/* A76FC 800CC2FC 8CC68510 */  lw         $a2, %lo(D_80248510)($a2)
/* A7700 800CC300 3C010001 */  lui        $at, 1
/* A7704 800CC304 AFB00050 */  sw         $s0, 0x50($sp)
/* A7708 800CC308 34212880 */  ori        $at, $at, 0x2880
/* A770C 800CC30C AFB50064 */  sw         $s5, 0x64($sp)
/* A7710 800CC310 AFB10054 */  sw         $s1, 0x54($sp)
/* A7714 800CC314 00817021 */  addu       $t6, $a0, $at
/* A7718 800CC318 3C108024 */  lui        $s0, 0x8024
/* A771C 800CC31C 00A08825 */  or         $s1, $a1, $zero
/* A7720 800CC320 AFBF006C */  sw         $ra, 0x6c($sp)
/* A7724 800CC324 AFB60068 */  sw         $s6, 0x68($sp)
/* A7728 800CC328 AFB40060 */  sw         $s4, 0x60($sp)
/* A772C 800CC32C AFB3005C */  sw         $s3, 0x5c($sp)
/* A7730 800CC330 AFB20058 */  sw         $s2, 0x58($sp)
/* A7734 800CC334 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* A7738 800CC338 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* A773C 800CC33C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* A7740 800CC340 F7B80030 */  sdc1       $f24, 0x30($sp)
/* A7744 800CC344 F7B60028 */  sdc1       $f22, 0x28($sp)
/* A7748 800CC348 F7B40020 */  sdc1       $f20, 0x20($sp)
/* A774C 800CC34C AFAE00AC */  sw         $t6, 0xac($sp)
/* A7750 800CC350 26107910 */  addiu      $s0, $s0, 0x7910
/* A7754 800CC354 18C00111 */  blez       $a2, .L800CC79C
/* A7758 800CC358 0000A825 */   or        $s5, $zero, $zero
/* A775C 800CC35C 3C018011 */  lui        $at, %hi(D_801104A0)
/* A7760 800CC360 D43E04A0 */  ldc1       $f30, %lo(D_801104A0)($at)
/* A7764 800CC364 3C013FF0 */  lui        $at, 0x3ff0
/* A7768 800CC368 4481D800 */  mtc1       $at, $f27
/* A776C 800CC36C 3C013F80 */  lui        $at, 0x3f80
/* A7770 800CC370 4481C000 */  mtc1       $at, $f24
/* A7774 800CC374 3C018011 */  lui        $at, 0x8011
/* A7778 800CC378 3C130100 */  lui        $s3, 0x100
/* A777C 800CC37C 4480E800 */  mtc1       $zero, $f29
/* A7780 800CC380 4480E000 */  mtc1       $zero, $f28
/* A7784 800CC384 4480D000 */  mtc1       $zero, $f26
/* A7788 800CC388 4480A000 */  mtc1       $zero, $f20
/* A778C 800CC38C 36730040 */  ori        $s3, $s3, 0x40
/* A7790 800CC390 D43604A8 */  ldc1       $f22, 0x4a8($at)
/* A7794 800CC394 24160007 */  addiu      $s6, $zero, 7
/* A7798 800CC398 3C128000 */  lui        $s2, 0x8000
.L800CC39C:
/* A779C 800CC39C 8E0F0000 */  lw         $t7, ($s0)
/* A77A0 800CC3A0 51E000FB */  beql       $t7, $zero, .L800CC790
/* A77A4 800CC3A4 26B50001 */   addiu     $s5, $s5, 1
/* A77A8 800CC3A8 8E04002C */  lw         $a0, 0x2c($s0)
/* A77AC 800CC3AC 3C188017 */  lui        $t8, %hi(D_80174874)
/* A77B0 800CC3B0 00001825 */  or         $v1, $zero, $zero
/* A77B4 800CC3B4 10800011 */  beqz       $a0, .L800CC3FC
/* A77B8 800CC3B8 00000000 */   nop
/* A77BC 800CC3BC 8F184874 */  lw         $t8, %lo(D_80174874)($t8)
/* A77C0 800CC3C0 8C830000 */  lw         $v1, ($a0)
/* A77C4 800CC3C4 56D8000E */  bnel       $s6, $t8, .L800CC400
/* A77C8 800CC3C8 2401004B */   addiu     $at, $zero, 0x4b
/* A77CC 800CC3CC 0C02C898 */  jal        func_800B2260
/* A77D0 800CC3D0 AFA300A4 */   sw        $v1, 0xa4($sp)
/* A77D4 800CC3D4 10400009 */  beqz       $v0, .L800CC3FC
/* A77D8 800CC3D8 8FA300A4 */   lw        $v1, 0xa4($sp)
/* A77DC 800CC3DC 3C19800F */  lui        $t9, %hi(D_800F0B58)
/* A77E0 800CC3E0 8F390B58 */  lw         $t9, %lo(D_800F0B58)($t9)
/* A77E4 800CC3E4 3C068025 */  lui        $a2, %hi(D_80248510)
/* A77E8 800CC3E8 2B210005 */  slti       $at, $t9, 5
/* A77EC 800CC3EC 50200004 */  beql       $at, $zero, .L800CC400
/* A77F0 800CC3F0 2401004B */   addiu     $at, $zero, 0x4b
/* A77F4 800CC3F4 100000E5 */  b          .L800CC78C
/* A77F8 800CC3F8 8CC68510 */   lw        $a2, %lo(D_80248510)($a2)
.L800CC3FC:
/* A77FC 800CC3FC 2401004B */  addiu      $at, $zero, 0x4b
.L800CC400:
/* A7800 800CC400 5461000E */  bnel       $v1, $at, .L800CC43C
/* A7804 800CC404 2401003D */   addiu     $at, $zero, 0x3d
/* A7808 800CC408 8E04002C */  lw         $a0, 0x2c($s0)
/* A780C 800CC40C 24010006 */  addiu      $at, $zero, 6
/* A7810 800CC410 8C88010C */  lw         $t0, 0x10c($a0)
/* A7814 800CC414 55010009 */  bnel       $t0, $at, .L800CC43C
/* A7818 800CC418 2401003D */   addiu     $at, $zero, 0x3d
/* A781C 800CC41C 8C890114 */  lw         $t1, 0x114($a0)
/* A7820 800CC420 3C068025 */  lui        $a2, %hi(D_80248510)
/* A7824 800CC424 29210079 */  slti       $at, $t1, 0x79
/* A7828 800CC428 50200004 */  beql       $at, $zero, .L800CC43C
/* A782C 800CC42C 2401003D */   addiu     $at, $zero, 0x3d
/* A7830 800CC430 100000D6 */  b          .L800CC78C
/* A7834 800CC434 8CC68510 */   lw        $a2, %lo(D_80248510)($a2)
/* A7838 800CC438 2401003D */  addiu      $at, $zero, 0x3d
.L800CC43C:
/* A783C 800CC43C 5461000C */  bnel       $v1, $at, .L800CC470
/* A7840 800CC440 C6040020 */   lwc1      $f4, 0x20($s0)
/* A7844 800CC444 8E0A002C */  lw         $t2, 0x2c($s0)
/* A7848 800CC448 24010001 */  addiu      $at, $zero, 1
/* A784C 800CC44C 3C068025 */  lui        $a2, 0x8025
/* A7850 800CC450 8D420114 */  lw         $v0, 0x114($t2)
/* A7854 800CC454 10400003 */  beqz       $v0, .L800CC464
/* A7858 800CC458 00000000 */   nop
/* A785C 800CC45C 54410004 */  bnel       $v0, $at, .L800CC470
/* A7860 800CC460 C6040020 */   lwc1      $f4, 0x20($s0)
.L800CC464:
/* A7864 800CC464 100000C9 */  b          .L800CC78C
/* A7868 800CC468 8CC68510 */   lw        $a2, -0x7af0($a2)
/* A786C 800CC46C C6040020 */  lwc1       $f4, 0x20($s0)
.L800CC470:
/* A7870 800CC470 3C018011 */  lui        $at, %hi(D_801104B0)
/* A7874 800CC474 D42A04B0 */  ldc1       $f10, %lo(D_801104B0)($at)
/* A7878 800CC478 460021A1 */  cvt.d.s    $f6, $f4
/* A787C 800CC47C C604001C */  lwc1       $f4, 0x1c($s0)
/* A7880 800CC480 463E3203 */  div.d      $f8, $f6, $f30
/* A7884 800CC484 3C014069 */  lui        $at, 0x4069
/* A7888 800CC488 02002025 */  or         $a0, $s0, $zero
/* A788C 800CC48C 27A500AC */  addiu      $a1, $sp, 0xac
/* A7890 800CC490 460021A1 */  cvt.d.s    $f6, $f4
/* A7894 800CC494 4626D001 */  sub.d      $f0, $f26, $f6
/* A7898 800CC498 462A4402 */  mul.d      $f16, $f8, $f10
/* A789C 800CC49C 00000000 */  nop
/* A78A0 800CC4A0 46200202 */  mul.d      $f8, $f0, $f0
/* A78A4 800CC4A4 462084A0 */  cvt.s.d    $f18, $f16
/* A78A8 800CC4A8 44808000 */  mtc1       $zero, $f16
/* A78AC 800CC4AC 44818800 */  mtc1       $at, $f17
/* A78B0 800CC4B0 4628D281 */  sub.d      $f10, $f26, $f8
/* A78B4 800CC4B4 E6120018 */  swc1       $f18, 0x18($s0)
/* A78B8 800CC4B8 24010021 */  addiu      $at, $zero, 0x21
/* A78BC 800CC4BC 46305482 */  mul.d      $f18, $f10, $f16
/* A78C0 800CC4C0 4620910D */  trunc.w.d  $f4, $f18
/* A78C4 800CC4C4 44142000 */  mfc1       $s4, $f4
/* A78C8 800CC4C8 14760007 */  bne        $v1, $s6, .L800CC4E8
/* A78CC 800CC4CC 00000000 */   nop
/* A78D0 800CC4D0 0C032FED */  jal        func_800CBFB4
/* A78D4 800CC4D4 02203025 */   or        $a2, $s1, $zero
/* A78D8 800CC4D8 3C068025 */  lui        $a2, %hi(D_80248510)
/* A78DC 800CC4DC 00408825 */  or         $s1, $v0, $zero
/* A78E0 800CC4E0 100000AA */  b          .L800CC78C
/* A78E4 800CC4E4 8CC68510 */   lw        $a2, %lo(D_80248510)($a2)
.L800CC4E8:
/* A78E8 800CC4E8 5461000B */  bnel       $v1, $at, .L800CC518
/* A78EC 800CC4EC 2401002C */   addiu     $at, $zero, 0x2c
/* A78F0 800CC4F0 C6060018 */  lwc1       $f6, 0x18($s0)
/* A78F4 800CC4F4 3C013FF8 */  lui        $at, 0x3ff8
/* A78F8 800CC4F8 44815800 */  mtc1       $at, $f11
/* A78FC 800CC4FC 44805000 */  mtc1       $zero, $f10
/* A7900 800CC500 46003221 */  cvt.d.s    $f8, $f6
/* A7904 800CC504 462A4402 */  mul.d      $f16, $f8, $f10
/* A7908 800CC508 462084A0 */  cvt.s.d    $f18, $f16
/* A790C 800CC50C 1000001D */  b          .L800CC584
/* A7910 800CC510 E6120018 */   swc1      $f18, 0x18($s0)
/* A7914 800CC514 2401002C */  addiu      $at, $zero, 0x2c
.L800CC518:
/* A7918 800CC518 10610003 */  beq        $v1, $at, .L800CC528
/* A791C 800CC51C 2401002D */   addiu     $at, $zero, 0x2d
/* A7920 800CC520 54610008 */  bnel       $v1, $at, .L800CC544
/* A7924 800CC524 2401002A */   addiu     $at, $zero, 0x2a
.L800CC528:
/* A7928 800CC528 C6040018 */  lwc1       $f4, 0x18($s0)
/* A792C 800CC52C 460021A1 */  cvt.d.s    $f6, $f4
/* A7930 800CC530 46363202 */  mul.d      $f8, $f6, $f22
/* A7934 800CC534 462042A0 */  cvt.s.d    $f10, $f8
/* A7938 800CC538 10000012 */  b          .L800CC584
/* A793C 800CC53C E60A0018 */   swc1      $f10, 0x18($s0)
/* A7940 800CC540 2401002A */  addiu      $at, $zero, 0x2a
.L800CC544:
/* A7944 800CC544 54610008 */  bnel       $v1, $at, .L800CC568
/* A7948 800CC548 2401002B */   addiu     $at, $zero, 0x2b
/* A794C 800CC54C C6100018 */  lwc1       $f16, 0x18($s0)
/* A7950 800CC550 460084A1 */  cvt.d.s    $f18, $f16
/* A7954 800CC554 46369102 */  mul.d      $f4, $f18, $f22
/* A7958 800CC558 462021A0 */  cvt.s.d    $f6, $f4
/* A795C 800CC55C 10000009 */  b          .L800CC584
/* A7960 800CC560 E6060018 */   swc1      $f6, 0x18($s0)
/* A7964 800CC564 2401002B */  addiu      $at, $zero, 0x2b
.L800CC568:
/* A7968 800CC568 54610007 */  bnel       $v1, $at, .L800CC588
/* A796C 800CC56C 8FA400AC */   lw        $a0, 0xac($sp)
/* A7970 800CC570 C6080018 */  lwc1       $f8, 0x18($s0)
/* A7974 800CC574 460042A1 */  cvt.d.s    $f10, $f8
/* A7978 800CC578 46365402 */  mul.d      $f16, $f10, $f22
/* A797C 800CC57C 462084A0 */  cvt.s.d    $f18, $f16
/* A7980 800CC580 E6120018 */  swc1       $f18, 0x18($s0)
.L800CC584:
/* A7984 800CC584 8FA400AC */  lw         $a0, 0xac($sp)
.L800CC588:
/* A7988 800CC588 8E050004 */  lw         $a1, 4($s0)
/* A798C 800CC58C 8E060008 */  lw         $a2, 8($s0)
/* A7990 800CC590 0C036BE2 */  jal        func_800DAF88
/* A7994 800CC594 8E07000C */   lw        $a3, 0xc($s0)
/* A7998 800CC598 3C0C0104 */  lui        $t4, 0x104
/* A799C 800CC59C 358C0040 */  ori        $t4, $t4, 0x40
/* A79A0 800CC5A0 02201025 */  or         $v0, $s1, $zero
/* A79A4 800CC5A4 AC4C0000 */  sw         $t4, ($v0)
/* A79A8 800CC5A8 8FAD00AC */  lw         $t5, 0xac($sp)
/* A79AC 800CC5AC 26310008 */  addiu      $s1, $s1, 8
/* A79B0 800CC5B0 01B27021 */  addu       $t6, $t5, $s2
/* A79B4 800CC5B4 AC4E0004 */  sw         $t6, 4($v0)
/* A79B8 800CC5B8 8FAF00AC */  lw         $t7, 0xac($sp)
/* A79BC 800CC5BC 25F80040 */  addiu      $t8, $t7, 0x40
/* A79C0 800CC5C0 AFB800AC */  sw         $t8, 0xac($sp)
/* A79C4 800CC5C4 C6000010 */  lwc1       $f0, 0x10($s0)
/* A79C8 800CC5C8 03002025 */  or         $a0, $t8, $zero
/* A79CC 800CC5CC 46000121 */  cvt.d.s    $f4, $f0
/* A79D0 800CC5D0 4624E032 */  c.eq.d     $f28, $f4
/* A79D4 800CC5D4 00000000 */  nop
/* A79D8 800CC5D8 45030010 */  bc1tl      .L800CC61C
/* A79DC 800CC5DC C6000014 */   lwc1      $f0, 0x14($s0)
/* A79E0 800CC5E0 44050000 */  mfc1       $a1, $f0
/* A79E4 800CC5E4 4406A000 */  mfc1       $a2, $f20
/* A79E8 800CC5E8 4407C000 */  mfc1       $a3, $f24
/* A79EC 800CC5EC 0C036B49 */  jal        func_800DAD24
/* A79F0 800CC5F0 E7B40010 */   swc1      $f20, 0x10($sp)
/* A79F4 800CC5F4 02201025 */  or         $v0, $s1, $zero
/* A79F8 800CC5F8 AC530000 */  sw         $s3, ($v0)
/* A79FC 800CC5FC 8FB900AC */  lw         $t9, 0xac($sp)
/* A7A00 800CC600 26310008 */  addiu      $s1, $s1, 8
/* A7A04 800CC604 03324021 */  addu       $t0, $t9, $s2
/* A7A08 800CC608 AC480004 */  sw         $t0, 4($v0)
/* A7A0C 800CC60C 8FA900AC */  lw         $t1, 0xac($sp)
/* A7A10 800CC610 252A0040 */  addiu      $t2, $t1, 0x40
/* A7A14 800CC614 AFAA00AC */  sw         $t2, 0xac($sp)
/* A7A18 800CC618 C6000014 */  lwc1       $f0, 0x14($s0)
.L800CC61C:
/* A7A1C 800CC61C 8FA400AC */  lw         $a0, 0xac($sp)
/* A7A20 800CC620 460001A1 */  cvt.d.s    $f6, $f0
/* A7A24 800CC624 4626E032 */  c.eq.d     $f28, $f6
/* A7A28 800CC628 00000000 */  nop
/* A7A2C 800CC62C 45030010 */  bc1tl      .L800CC670
/* A7A30 800CC630 8E0F0028 */   lw        $t7, 0x28($s0)
/* A7A34 800CC634 44050000 */  mfc1       $a1, $f0
/* A7A38 800CC638 4406C000 */  mfc1       $a2, $f24
/* A7A3C 800CC63C 4407A000 */  mfc1       $a3, $f20
/* A7A40 800CC640 0C036B49 */  jal        func_800DAD24
/* A7A44 800CC644 E7B40010 */   swc1      $f20, 0x10($sp)
/* A7A48 800CC648 02201025 */  or         $v0, $s1, $zero
/* A7A4C 800CC64C AC530000 */  sw         $s3, ($v0)
/* A7A50 800CC650 8FAB00AC */  lw         $t3, 0xac($sp)
/* A7A54 800CC654 26310008 */  addiu      $s1, $s1, 8
/* A7A58 800CC658 01726021 */  addu       $t4, $t3, $s2
/* A7A5C 800CC65C AC4C0004 */  sw         $t4, 4($v0)
/* A7A60 800CC660 8FAD00AC */  lw         $t5, 0xac($sp)
/* A7A64 800CC664 25AE0040 */  addiu      $t6, $t5, 0x40
/* A7A68 800CC668 AFAE00AC */  sw         $t6, 0xac($sp)
/* A7A6C 800CC66C 8E0F0028 */  lw         $t7, 0x28($s0)
.L800CC670:
/* A7A70 800CC670 2401001C */  addiu      $at, $zero, 0x1c
/* A7A74 800CC674 8FA400AC */  lw         $a0, 0xac($sp)
/* A7A78 800CC678 55E10020 */  bnel       $t7, $at, .L800CC6FC
/* A7A7C 800CC67C C6000018 */   lwc1      $f0, 0x18($s0)
/* A7A80 800CC680 8E050020 */  lw         $a1, 0x20($s0)
/* A7A84 800CC684 4406A000 */  mfc1       $a2, $f20
/* A7A88 800CC688 4407C000 */  mfc1       $a3, $f24
/* A7A8C 800CC68C 0C036B49 */  jal        func_800DAD24
/* A7A90 800CC690 E7B40010 */   swc1      $f20, 0x10($sp)
/* A7A94 800CC694 02201025 */  or         $v0, $s1, $zero
/* A7A98 800CC698 AC530000 */  sw         $s3, ($v0)
/* A7A9C 800CC69C 8FB800AC */  lw         $t8, 0xac($sp)
/* A7AA0 800CC6A0 3C053EA3 */  lui        $a1, 0x3ea3
/* A7AA4 800CC6A4 4406C000 */  mfc1       $a2, $f24
/* A7AA8 800CC6A8 0312C821 */  addu       $t9, $t8, $s2
/* A7AAC 800CC6AC AC590004 */  sw         $t9, 4($v0)
/* A7AB0 800CC6B0 8FA800AC */  lw         $t0, 0xac($sp)
/* A7AB4 800CC6B4 3C073FF5 */  lui        $a3, 0x3ff5
/* A7AB8 800CC6B8 26310008 */  addiu      $s1, $s1, 8
/* A7ABC 800CC6BC 25040040 */  addiu      $a0, $t0, 0x40
/* A7AC0 800CC6C0 AFA400AC */  sw         $a0, 0xac($sp)
/* A7AC4 800CC6C4 34E7C28F */  ori        $a3, $a3, 0xc28f
/* A7AC8 800CC6C8 0C036AA1 */  jal        func_800DAA84
/* A7ACC 800CC6CC 34A5D70A */   ori       $a1, $a1, 0xd70a
/* A7AD0 800CC6D0 02201025 */  or         $v0, $s1, $zero
/* A7AD4 800CC6D4 AC530000 */  sw         $s3, ($v0)
/* A7AD8 800CC6D8 8FAA00AC */  lw         $t2, 0xac($sp)
/* A7ADC 800CC6DC 26310008 */  addiu      $s1, $s1, 8
/* A7AE0 800CC6E0 01525821 */  addu       $t3, $t2, $s2
/* A7AE4 800CC6E4 AC4B0004 */  sw         $t3, 4($v0)
/* A7AE8 800CC6E8 8FAC00AC */  lw         $t4, 0xac($sp)
/* A7AEC 800CC6EC 258D0040 */  addiu      $t5, $t4, 0x40
/* A7AF0 800CC6F0 10000011 */  b          .L800CC738
/* A7AF4 800CC6F4 AFAD00AC */   sw        $t5, 0xac($sp)
/* A7AF8 800CC6F8 C6000018 */  lwc1       $f0, 0x18($s0)
.L800CC6FC:
/* A7AFC 800CC6FC 4406C000 */  mfc1       $a2, $f24
/* A7B00 800CC700 8FA400AC */  lw         $a0, 0xac($sp)
/* A7B04 800CC704 44050000 */  mfc1       $a1, $f0
/* A7B08 800CC708 44070000 */  mfc1       $a3, $f0
/* A7B0C 800CC70C 0C036AA1 */  jal        func_800DAA84
/* A7B10 800CC710 00000000 */   nop
/* A7B14 800CC714 02201025 */  or         $v0, $s1, $zero
/* A7B18 800CC718 AC530000 */  sw         $s3, ($v0)
/* A7B1C 800CC71C 8FAE00AC */  lw         $t6, 0xac($sp)
/* A7B20 800CC720 26310008 */  addiu      $s1, $s1, 8
/* A7B24 800CC724 01D27821 */  addu       $t7, $t6, $s2
/* A7B28 800CC728 AC4F0004 */  sw         $t7, 4($v0)
/* A7B2C 800CC72C 8FB800AC */  lw         $t8, 0xac($sp)
/* A7B30 800CC730 27190040 */  addiu      $t9, $t8, 0x40
/* A7B34 800CC734 AFB900AC */  sw         $t9, 0xac($sp)
.L800CC738:
/* A7B38 800CC738 02201025 */  or         $v0, $s1, $zero
/* A7B3C 800CC73C 328900FF */  andi       $t1, $s4, 0xff
/* A7B40 800CC740 2401FF00 */  addiu      $at, $zero, -0x100
/* A7B44 800CC744 01215025 */  or         $t2, $t1, $at
/* A7B48 800CC748 26310008 */  addiu      $s1, $s1, 8
/* A7B4C 800CC74C 3C08FA00 */  lui        $t0, 0xfa00
/* A7B50 800CC750 AC480000 */  sw         $t0, ($v0)
/* A7B54 800CC754 AC4A0004 */  sw         $t2, 4($v0)
/* A7B58 800CC758 02201825 */  or         $v1, $s1, $zero
/* A7B5C 800CC75C 3C0B0600 */  lui        $t3, 0x600
/* A7B60 800CC760 AC6B0000 */  sw         $t3, ($v1)
/* A7B64 800CC764 8E0C0024 */  lw         $t4, 0x24($s0)
/* A7B68 800CC768 26310008 */  addiu      $s1, $s1, 8
/* A7B6C 800CC76C 02202025 */  or         $a0, $s1, $zero
/* A7B70 800CC770 AC6C0004 */  sw         $t4, 4($v1)
/* A7B74 800CC774 3C0DBD00 */  lui        $t5, 0xbd00
/* A7B78 800CC778 3C068025 */  lui        $a2, %hi(D_80248510)
/* A7B7C 800CC77C AC8D0000 */  sw         $t5, ($a0)
/* A7B80 800CC780 AC800004 */  sw         $zero, 4($a0)
/* A7B84 800CC784 8CC68510 */  lw         $a2, %lo(D_80248510)($a2)
/* A7B88 800CC788 26310008 */  addiu      $s1, $s1, 8
.L800CC78C:
/* A7B8C 800CC78C 26B50001 */  addiu      $s5, $s5, 1
.L800CC790:
/* A7B90 800CC790 02A6082A */  slt        $at, $s5, $a2
/* A7B94 800CC794 1420FF01 */  bnez       $at, .L800CC39C
/* A7B98 800CC798 26100030 */   addiu     $s0, $s0, 0x30
.L800CC79C:
/* A7B9C 800CC79C 8FBF006C */  lw         $ra, 0x6c($sp)
/* A7BA0 800CC7A0 02201025 */  or         $v0, $s1, $zero
/* A7BA4 800CC7A4 8FB10054 */  lw         $s1, 0x54($sp)
/* A7BA8 800CC7A8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* A7BAC 800CC7AC D7B60028 */  ldc1       $f22, 0x28($sp)
/* A7BB0 800CC7B0 D7B80030 */  ldc1       $f24, 0x30($sp)
/* A7BB4 800CC7B4 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* A7BB8 800CC7B8 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* A7BBC 800CC7BC D7BE0048 */  ldc1       $f30, 0x48($sp)
/* A7BC0 800CC7C0 8FB00050 */  lw         $s0, 0x50($sp)
/* A7BC4 800CC7C4 8FB20058 */  lw         $s2, 0x58($sp)
/* A7BC8 800CC7C8 8FB3005C */  lw         $s3, 0x5c($sp)
/* A7BCC 800CC7CC 8FB40060 */  lw         $s4, 0x60($sp)
/* A7BD0 800CC7D0 8FB50064 */  lw         $s5, 0x64($sp)
/* A7BD4 800CC7D4 8FB60068 */  lw         $s6, 0x68($sp)
/* A7BD8 800CC7D8 03E00008 */  jr         $ra
/* A7BDC 800CC7DC 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel func_800CC7E0
/* A7BE0 800CC7E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A7BE4 800CC7E4 AFA60020 */  sw         $a2, 0x20($sp)
/* A7BE8 800CC7E8 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* A7BEC 800CC7EC AFBF0014 */  sw         $ra, 0x14($sp)
/* A7BF0 800CC7F0 AFA40018 */  sw         $a0, 0x18($sp)
/* A7BF4 800CC7F4 AFA5001C */  sw         $a1, 0x1c($sp)
/* A7BF8 800CC7F8 C7AC0018 */  lwc1       $f12, 0x18($sp)
/* A7BFC 800CC7FC 0C032305 */  jal        func_800C8C14
/* A7C00 800CC800 46007387 */   neg.s     $f14, $f14
/* A7C04 800CC804 8FBF0014 */  lw         $ra, 0x14($sp)
/* A7C08 800CC808 27BD0018 */  addiu      $sp, $sp, 0x18
/* A7C0C 800CC80C 03E00008 */  jr         $ra
/* A7C10 800CC810 00000000 */   nop

glabel func_800CC814
/* A7C14 800CC814 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A7C18 800CC818 AFA50034 */  sw         $a1, 0x34($sp)
/* A7C1C 800CC81C AFA7003C */  sw         $a3, 0x3c($sp)
/* A7C20 800CC820 AFBF0014 */  sw         $ra, 0x14($sp)
/* A7C24 800CC824 AFA40030 */  sw         $a0, 0x30($sp)
/* A7C28 800CC828 AFA60038 */  sw         $a2, 0x38($sp)
/* A7C2C 800CC82C 8FAE0040 */  lw         $t6, 0x40($sp)
/* A7C30 800CC830 C7AE003C */  lwc1       $f14, 0x3c($sp)
/* A7C34 800CC834 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* A7C38 800CC838 C4840054 */  lwc1       $f4, 0x54($a0)
/* A7C3C 800CC83C C486005C */  lwc1       $f6, 0x5c($a0)
/* A7C40 800CC840 24030001 */  addiu      $v1, $zero, 1
/* A7C44 800CC844 00803825 */  or         $a3, $a0, $zero
/* A7C48 800CC848 00001025 */  or         $v0, $zero, $zero
/* A7C4C 800CC84C 46046301 */  sub.s      $f12, $f12, $f4
/* A7C50 800CC850 15C3005D */  bne        $t6, $v1, .L800CC9C8
/* A7C54 800CC854 46067381 */   sub.s     $f14, $f14, $f6
/* A7C58 800CC858 C480003C */  lwc1       $f0, 0x3c($a0)
/* A7C5C 800CC85C C48800F4 */  lwc1       $f8, 0xf4($a0)
/* A7C60 800CC860 3C013F80 */  lui        $at, 0x3f80
/* A7C64 800CC864 27AF0024 */  addiu      $t7, $sp, 0x24
/* A7C68 800CC868 46004280 */  add.s      $f10, $f8, $f0
/* A7C6C 800CC86C 460A603C */  c.lt.s     $f12, $f10
/* A7C70 800CC870 00000000 */  nop
/* A7C74 800CC874 45020009 */  bc1fl      .L800CC89C
/* A7C78 800CC878 C4F200F8 */   lwc1      $f18, 0xf8($a3)
/* A7C7C 800CC87C 44811000 */  mtc1       $at, $f2
/* A7C80 800CC880 3C01BF80 */  lui        $at, 0xbf80
/* A7C84 800CC884 44816000 */  mtc1       $at, $f12
/* A7C88 800CC888 44808000 */  mtc1       $zero, $f16
/* A7C8C 800CC88C 00601025 */  or         $v0, $v1, $zero
/* A7C90 800CC890 10000016 */  b          .L800CC8EC
/* A7C94 800CC894 E7A20024 */   swc1      $f2, 0x24($sp)
/* A7C98 800CC898 C4F200F8 */  lwc1       $f18, 0xf8($a3)
.L800CC89C:
/* A7C9C 800CC89C 3C01BF80 */  lui        $at, 0xbf80
/* A7CA0 800CC8A0 46009101 */  sub.s      $f4, $f18, $f0
/* A7CA4 800CC8A4 460C203C */  c.lt.s     $f4, $f12
/* A7CA8 800CC8A8 00000000 */  nop
/* A7CAC 800CC8AC 4502000A */  bc1fl      .L800CC8D8
/* A7CB0 800CC8B0 E4EC0024 */   swc1      $f12, 0x24($a3)
/* A7CB4 800CC8B4 3C01BF80 */  lui        $at, 0xbf80
/* A7CB8 800CC8B8 44816000 */  mtc1       $at, $f12
/* A7CBC 800CC8BC 3C013F80 */  lui        $at, 0x3f80
/* A7CC0 800CC8C0 44811000 */  mtc1       $at, $f2
/* A7CC4 800CC8C4 44808000 */  mtc1       $zero, $f16
/* A7CC8 800CC8C8 00601025 */  or         $v0, $v1, $zero
/* A7CCC 800CC8CC 10000007 */  b          .L800CC8EC
/* A7CD0 800CC8D0 E7AC0024 */   swc1      $f12, 0x24($sp)
/* A7CD4 800CC8D4 E4EC0024 */  swc1       $f12, 0x24($a3)
.L800CC8D8:
/* A7CD8 800CC8D8 44808000 */  mtc1       $zero, $f16
/* A7CDC 800CC8DC 44816000 */  mtc1       $at, $f12
/* A7CE0 800CC8E0 3C013F80 */  lui        $at, 0x3f80
/* A7CE4 800CC8E4 44811000 */  mtc1       $at, $f2
/* A7CE8 800CC8E8 E7B00024 */  swc1       $f16, 0x24($sp)
.L800CC8EC:
/* A7CEC 800CC8EC C7A00038 */  lwc1       $f0, 0x38($sp)
/* A7CF0 800CC8F0 C4E600FC */  lwc1       $f6, 0xfc($a3)
/* A7CF4 800CC8F4 4606003C */  c.lt.s     $f0, $f6
/* A7CF8 800CC8F8 00000000 */  nop
/* A7CFC 800CC8FC 45020005 */  bc1fl      .L800CC914
/* A7D00 800CC900 C4E80100 */   lwc1      $f8, 0x100($a3)
/* A7D04 800CC904 E7A20028 */  swc1       $f2, 0x28($sp)
/* A7D08 800CC908 1000000B */  b          .L800CC938
/* A7D0C 800CC90C 00601025 */   or        $v0, $v1, $zero
/* A7D10 800CC910 C4E80100 */  lwc1       $f8, 0x100($a3)
.L800CC914:
/* A7D14 800CC914 4600403C */  c.lt.s     $f8, $f0
/* A7D18 800CC918 00000000 */  nop
/* A7D1C 800CC91C 45020005 */  bc1fl      .L800CC934
/* A7D20 800CC920 E4E00028 */   swc1      $f0, 0x28($a3)
/* A7D24 800CC924 E7AC0028 */  swc1       $f12, 0x28($sp)
/* A7D28 800CC928 10000003 */  b          .L800CC938
/* A7D2C 800CC92C 00601025 */   or        $v0, $v1, $zero
/* A7D30 800CC930 E4E00028 */  swc1       $f0, 0x28($a3)
.L800CC934:
/* A7D34 800CC934 E7B00028 */  swc1       $f16, 0x28($sp)
.L800CC938:
/* A7D38 800CC938 C4E0003C */  lwc1       $f0, 0x3c($a3)
/* A7D3C 800CC93C C4EA0104 */  lwc1       $f10, 0x104($a3)
/* A7D40 800CC940 46005480 */  add.s      $f18, $f10, $f0
/* A7D44 800CC944 4612703C */  c.lt.s     $f14, $f18
/* A7D48 800CC948 00000000 */  nop
/* A7D4C 800CC94C 45020005 */  bc1fl      .L800CC964
/* A7D50 800CC950 C4E40108 */   lwc1      $f4, 0x108($a3)
/* A7D54 800CC954 E7A2002C */  swc1       $f2, 0x2c($sp)
/* A7D58 800CC958 1000000C */  b          .L800CC98C
/* A7D5C 800CC95C 00601025 */   or        $v0, $v1, $zero
/* A7D60 800CC960 C4E40108 */  lwc1       $f4, 0x108($a3)
.L800CC964:
/* A7D64 800CC964 46002181 */  sub.s      $f6, $f4, $f0
/* A7D68 800CC968 460E303C */  c.lt.s     $f6, $f14
/* A7D6C 800CC96C 00000000 */  nop
/* A7D70 800CC970 45020005 */  bc1fl      .L800CC988
/* A7D74 800CC974 E4EE002C */   swc1      $f14, 0x2c($a3)
/* A7D78 800CC978 E7AC002C */  swc1       $f12, 0x2c($sp)
/* A7D7C 800CC97C 10000003 */  b          .L800CC98C
/* A7D80 800CC980 00601025 */   or        $v0, $v1, $zero
/* A7D84 800CC984 E4EE002C */  swc1       $f14, 0x2c($a3)
.L800CC988:
/* A7D88 800CC988 E7B0002C */  swc1       $f16, 0x2c($sp)
.L800CC98C:
/* A7D8C 800CC98C 50400013 */  beql       $v0, $zero, .L800CC9DC
/* A7D90 800CC990 8CE80098 */   lw        $t0, 0x98($a3)
/* A7D94 800CC994 ACE3009C */  sw         $v1, 0x9c($a3)
/* A7D98 800CC998 8DE10000 */  lw         $at, ($t7)
/* A7D9C 800CC99C AFA10000 */  sw         $at, ($sp)
/* A7DA0 800CC9A0 8DE50004 */  lw         $a1, 4($t7)
/* A7DA4 800CC9A4 8FA40000 */  lw         $a0, ($sp)
/* A7DA8 800CC9A8 AFA50004 */  sw         $a1, 4($sp)
/* A7DAC 800CC9AC 8DE60008 */  lw         $a2, 8($t7)
/* A7DB0 800CC9B0 AFA70030 */  sw         $a3, 0x30($sp)
/* A7DB4 800CC9B4 0C0331F8 */  jal        func_800CC7E0
/* A7DB8 800CC9B8 AFA60008 */   sw        $a2, 8($sp)
/* A7DBC 800CC9BC 8FA70030 */  lw         $a3, 0x30($sp)
/* A7DC0 800CC9C0 10000005 */  b          .L800CC9D8
/* A7DC4 800CC9C4 E4E000B0 */   swc1      $f0, 0xb0($a3)
.L800CC9C8:
/* A7DC8 800CC9C8 C7A00038 */  lwc1       $f0, 0x38($sp)
/* A7DCC 800CC9CC E4EC0024 */  swc1       $f12, 0x24($a3)
/* A7DD0 800CC9D0 E4EE002C */  swc1       $f14, 0x2c($a3)
/* A7DD4 800CC9D4 E4E00028 */  swc1       $f0, 0x28($a3)
.L800CC9D8:
/* A7DD8 800CC9D8 8CE80098 */  lw         $t0, 0x98($a3)
.L800CC9DC:
/* A7DDC 800CC9DC 2402FFFF */  addiu      $v0, $zero, -1
/* A7DE0 800CC9E0 51000004 */  beql       $t0, $zero, .L800CC9F4
/* A7DE4 800CC9E4 8FBF0014 */   lw        $ra, 0x14($sp)
/* A7DE8 800CC9E8 ACE200E0 */  sw         $v0, 0xe0($a3)
/* A7DEC 800CC9EC ACE200E4 */  sw         $v0, 0xe4($a3)
/* A7DF0 800CC9F0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800CC9F4:
/* A7DF4 800CC9F4 27BD0030 */  addiu      $sp, $sp, 0x30
/* A7DF8 800CC9F8 03E00008 */  jr         $ra
/* A7DFC 800CC9FC 00000000 */   nop

glabel func_800CCA00
/* A7E00 800CCA00 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* A7E04 800CCA04 AFBF0034 */  sw         $ra, 0x34($sp)
/* A7E08 800CCA08 AFB00030 */  sw         $s0, 0x30($sp)
/* A7E0C 800CCA0C C4860024 */  lwc1       $f6, 0x24($a0)
/* A7E10 800CCA10 C4840054 */  lwc1       $f4, 0x54($a0)
/* A7E14 800CCA14 3C013FE0 */  lui        $at, 0x3fe0
/* A7E18 800CCA18 44813800 */  mtc1       $at, $f7
/* A7E1C 800CCA1C 46062200 */  add.s      $f8, $f4, $f6
/* A7E20 800CCA20 44803000 */  mtc1       $zero, $f6
/* A7E24 800CCA24 00808025 */  or         $s0, $a0, $zero
/* A7E28 800CCA28 E7A8009C */  swc1       $f8, 0x9c($sp)
/* A7E2C 800CCA2C C48A0040 */  lwc1       $f10, 0x40($a0)
/* A7E30 800CCA30 46005121 */  cvt.d.s    $f4, $f10
/* A7E34 800CCA34 C48A0028 */  lwc1       $f10, 0x28($a0)
/* A7E38 800CCA38 46262202 */  mul.d      $f8, $f4, $f6
/* A7E3C 800CCA3C 46005121 */  cvt.d.s    $f4, $f10
/* A7E40 800CCA40 46282180 */  add.d      $f6, $f4, $f8
/* A7E44 800CCA44 462032A0 */  cvt.s.d    $f10, $f6
/* A7E48 800CCA48 E7AA00A0 */  swc1       $f10, 0xa0($sp)
/* A7E4C 800CCA4C C488002C */  lwc1       $f8, 0x2c($a0)
/* A7E50 800CCA50 C484005C */  lwc1       $f4, 0x5c($a0)
/* A7E54 800CCA54 46082180 */  add.s      $f6, $f4, $f8
/* A7E58 800CCA58 E7A600A4 */  swc1       $f6, 0xa4($sp)
/* A7E5C 800CCA5C C4820030 */  lwc1       $f2, 0x30($a0)
/* A7E60 800CCA60 C48E0034 */  lwc1       $f14, 0x34($a0)
/* A7E64 800CCA64 C4900038 */  lwc1       $f16, 0x38($a0)
/* A7E68 800CCA68 46021282 */  mul.s      $f10, $f2, $f2
/* A7E6C 800CCA6C E7A20078 */  swc1       $f2, 0x78($sp)
/* A7E70 800CCA70 E7AE007C */  swc1       $f14, 0x7c($sp)
/* A7E74 800CCA74 460E7102 */  mul.s      $f4, $f14, $f14
/* A7E78 800CCA78 E7B00080 */  swc1       $f16, 0x80($sp)
/* A7E7C 800CCA7C 46108182 */  mul.s      $f6, $f16, $f16
/* A7E80 800CCA80 46045200 */  add.s      $f8, $f10, $f4
/* A7E84 800CCA84 0C036C2C */  jal        func_800DB0B0
/* A7E88 800CCA88 46064300 */   add.s     $f12, $f8, $f6
/* A7E8C 800CCA8C 44805800 */  mtc1       $zero, $f11
/* A7E90 800CCA90 44805000 */  mtc1       $zero, $f10
/* A7E94 800CCA94 46000121 */  cvt.d.s    $f4, $f0
/* A7E98 800CCA98 C7A20078 */  lwc1       $f2, 0x78($sp)
/* A7E9C 800CCA9C 46245032 */  c.eq.d     $f10, $f4
/* A7EA0 800CCAA0 C7AE007C */  lwc1       $f14, 0x7c($sp)
/* A7EA4 800CCAA4 C7B00080 */  lwc1       $f16, 0x80($sp)
/* A7EA8 800CCAA8 46000306 */  mov.s      $f12, $f0
/* A7EAC 800CCAAC 4500001D */  bc1f       .L800CCB24
/* A7EB0 800CCAB0 3C048011 */   lui       $a0, %hi(D_801102A4)
/* A7EB4 800CCAB4 0C035D18 */  jal        func_800D7460
/* A7EB8 800CCAB8 248402A4 */   addiu     $a0, $a0, %lo(D_801102A4)
/* A7EBC 800CCABC C6080040 */  lwc1       $f8, 0x40($s0)
/* A7EC0 800CCAC0 3C013FE0 */  lui        $at, 0x3fe0
/* A7EC4 800CCAC4 44815800 */  mtc1       $at, $f11
/* A7EC8 800CCAC8 44805000 */  mtc1       $zero, $f10
/* A7ECC 800CCACC 460041A1 */  cvt.d.s    $f6, $f8
/* A7ED0 800CCAD0 C7A800A0 */  lwc1       $f8, 0xa0($sp)
/* A7ED4 800CCAD4 462A3102 */  mul.d      $f4, $f6, $f10
/* A7ED8 800CCAD8 27AE009C */  addiu      $t6, $sp, 0x9c
/* A7EDC 800CCADC 460041A1 */  cvt.d.s    $f6, $f8
/* A7EE0 800CCAE0 02002025 */  or         $a0, $s0, $zero
/* A7EE4 800CCAE4 46243281 */  sub.d      $f10, $f6, $f4
/* A7EE8 800CCAE8 46205220 */  cvt.s.d    $f8, $f10
/* A7EEC 800CCAEC E7A800A0 */  swc1       $f8, 0xa0($sp)
/* A7EF0 800CCAF0 8DC10000 */  lw         $at, ($t6)
/* A7EF4 800CCAF4 AFA10004 */  sw         $at, 4($sp)
/* A7EF8 800CCAF8 8DC60004 */  lw         $a2, 4($t6)
/* A7EFC 800CCAFC 8FA50004 */  lw         $a1, 4($sp)
/* A7F00 800CCB00 AFA60008 */  sw         $a2, 8($sp)
/* A7F04 800CCB04 8DC70008 */  lw         $a3, 8($t6)
/* A7F08 800CCB08 AFA00010 */  sw         $zero, 0x10($sp)
/* A7F0C 800CCB0C 0C033205 */  jal        func_800CC814
/* A7F10 800CCB10 AFA7000C */   sw        $a3, 0xc($sp)
/* A7F14 800CCB14 0C032F02 */  jal        func_800CBC08
/* A7F18 800CCB18 02002025 */   or        $a0, $s0, $zero
/* A7F1C 800CCB1C 100000A6 */  b          .L800CCDB8
/* A7F20 800CCB20 00001025 */   or        $v0, $zero, $zero
.L800CCB24:
/* A7F24 800CCB24 C606003C */  lwc1       $f6, 0x3c($s0)
/* A7F28 800CCB28 C7A4009C */  lwc1       $f4, 0x9c($sp)
/* A7F2C 800CCB2C C7A800A0 */  lwc1       $f8, 0xa0($sp)
/* A7F30 800CCB30 460C3003 */  div.s      $f0, $f6, $f12
/* A7F34 800CCB34 27B9009C */  addiu      $t9, $sp, 0x9c
/* A7F38 800CCB38 27AA0090 */  addiu      $t2, $sp, 0x90
/* A7F3C 800CCB3C 27AD0048 */  addiu      $t5, $sp, 0x48
/* A7F40 800CCB40 46022280 */  add.s      $f10, $f4, $f2
/* A7F44 800CCB44 C7A400A4 */  lwc1       $f4, 0xa4($sp)
/* A7F48 800CCB48 460E4180 */  add.s      $f6, $f8, $f14
/* A7F4C 800CCB4C E7AA0084 */  swc1       $f10, 0x84($sp)
/* A7F50 800CCB50 E7A60088 */  swc1       $f6, 0x88($sp)
/* A7F54 800CCB54 46102200 */  add.s      $f8, $f4, $f16
/* A7F58 800CCB58 46001482 */  mul.s      $f18, $f2, $f0
/* A7F5C 800CCB5C E7A8008C */  swc1       $f8, 0x8c($sp)
/* A7F60 800CCB60 46125100 */  add.s      $f4, $f10, $f18
/* A7F64 800CCB64 46007282 */  mul.s      $f10, $f14, $f0
/* A7F68 800CCB68 E7A40090 */  swc1       $f4, 0x90($sp)
/* A7F6C 800CCB6C E7AA003C */  swc1       $f10, 0x3c($sp)
/* A7F70 800CCB70 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* A7F74 800CCB74 46043280 */  add.s      $f10, $f6, $f4
/* A7F78 800CCB78 46008182 */  mul.s      $f6, $f16, $f0
/* A7F7C 800CCB7C E7AA0094 */  swc1       $f10, 0x94($sp)
/* A7F80 800CCB80 E7A60038 */  swc1       $f6, 0x38($sp)
/* A7F84 800CCB84 C7A40038 */  lwc1       $f4, 0x38($sp)
/* A7F88 800CCB88 46044280 */  add.s      $f10, $f8, $f4
/* A7F8C 800CCB8C E7AA0098 */  swc1       $f10, 0x98($sp)
/* A7F90 800CCB90 8F210000 */  lw         $at, ($t9)
/* A7F94 800CCB94 AFA10000 */  sw         $at, ($sp)
/* A7F98 800CCB98 8F250004 */  lw         $a1, 4($t9)
/* A7F9C 800CCB9C 8FA40000 */  lw         $a0, ($sp)
/* A7FA0 800CCBA0 AFA50004 */  sw         $a1, 4($sp)
/* A7FA4 800CCBA4 8F210008 */  lw         $at, 8($t9)
/* A7FA8 800CCBA8 AFA10008 */  sw         $at, 8($sp)
/* A7FAC 800CCBAC 8D410000 */  lw         $at, ($t2)
/* A7FB0 800CCBB0 8FA60008 */  lw         $a2, 8($sp)
/* A7FB4 800CCBB4 AFA1000C */  sw         $at, 0xc($sp)
/* A7FB8 800CCBB8 8D4C0004 */  lw         $t4, 4($t2)
/* A7FBC 800CCBBC 8FA7000C */  lw         $a3, 0xc($sp)
/* A7FC0 800CCBC0 AFAC0010 */  sw         $t4, 0x10($sp)
/* A7FC4 800CCBC4 8D410008 */  lw         $at, 8($t2)
/* A7FC8 800CCBC8 E7B20040 */  swc1       $f18, 0x40($sp)
/* A7FCC 800CCBCC AFAD0018 */  sw         $t5, 0x18($sp)
/* A7FD0 800CCBD0 0C02BAAA */  jal        func_800AEAA8
/* A7FD4 800CCBD4 AFA10014 */   sw        $at, 0x14($sp)
/* A7FD8 800CCBD8 27A40048 */  addiu      $a0, $sp, 0x48
/* A7FDC 800CCBDC 24050077 */  addiu      $a1, $zero, 0x77
/* A7FE0 800CCBE0 0C0325D2 */  jal        func_800C9748
/* A7FE4 800CCBE4 24060002 */   addiu     $a2, $zero, 2
/* A7FE8 800CCBE8 AFA00068 */  sw         $zero, 0x68($sp)
/* A7FEC 800CCBEC 27AF009C */  addiu      $t7, $sp, 0x9c
/* A7FF0 800CCBF0 8DE10000 */  lw         $at, ($t7)
/* A7FF4 800CCBF4 27A80090 */  addiu      $t0, $sp, 0x90
/* A7FF8 800CCBF8 240B0077 */  addiu      $t3, $zero, 0x77
/* A7FFC 800CCBFC AFA10000 */  sw         $at, ($sp)
/* A8000 800CCC00 8DE50004 */  lw         $a1, 4($t7)
/* A8004 800CCC04 240A0001 */  addiu      $t2, $zero, 1
/* A8008 800CCC08 8FA40000 */  lw         $a0, ($sp)
/* A800C 800CCC0C AFA50004 */  sw         $a1, 4($sp)
/* A8010 800CCC10 8DE10008 */  lw         $at, 8($t7)
/* A8014 800CCC14 AFA10008 */  sw         $at, 8($sp)
/* A8018 800CCC18 8D010000 */  lw         $at, ($t0)
/* A801C 800CCC1C 8FA60008 */  lw         $a2, 8($sp)
/* A8020 800CCC20 AFA1000C */  sw         $at, 0xc($sp)
/* A8024 800CCC24 8D090004 */  lw         $t1, 4($t0)
/* A8028 800CCC28 8FA7000C */  lw         $a3, 0xc($sp)
/* A802C 800CCC2C AFA90010 */  sw         $t1, 0x10($sp)
/* A8030 800CCC30 8D010008 */  lw         $at, 8($t0)
/* A8034 800CCC34 AFA00020 */  sw         $zero, 0x20($sp)
/* A8038 800CCC38 AFAA001C */  sw         $t2, 0x1c($sp)
/* A803C 800CCC3C AFAB0018 */  sw         $t3, 0x18($sp)
/* A8040 800CCC40 0C032A3E */  jal        func_800CA8F8
/* A8044 800CCC44 AFA10014 */   sw        $at, 0x14($sp)
/* A8048 800CCC48 1040001C */  beqz       $v0, .L800CCCBC
/* A804C 800CCC4C 240C0001 */   addiu     $t4, $zero, 1
/* A8050 800CCC50 AFAC0068 */  sw         $t4, 0x68($sp)
/* A8054 800CCC54 C4460094 */  lwc1       $f6, 0x94($v0)
/* A8058 800CCC58 C7A80040 */  lwc1       $f8, 0x40($sp)
/* A805C 800CCC5C 3C0F8023 */  lui        $t7, 0x8023
/* A8060 800CCC60 2401000C */  addiu      $at, $zero, 0xc
/* A8064 800CCC64 46083101 */  sub.s      $f4, $f6, $f8
/* A8068 800CCC68 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A806C 800CCC6C E7A40084 */  swc1       $f4, 0x84($sp)
/* A8070 800CCC70 C44A0098 */  lwc1       $f10, 0x98($v0)
/* A8074 800CCC74 46065201 */  sub.s      $f8, $f10, $f6
/* A8078 800CCC78 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* A807C 800CCC7C E7A80088 */  swc1       $f8, 0x88($sp)
/* A8080 800CCC80 C444009C */  lwc1       $f4, 0x9c($v0)
/* A8084 800CCC84 460A2181 */  sub.s      $f6, $f4, $f10
/* A8088 800CCC88 E7A6008C */  swc1       $f6, 0x8c($sp)
/* A808C 800CCC8C 8C4D0004 */  lw         $t5, 4($v0)
/* A8090 800CCC90 000D7080 */  sll        $t6, $t5, 2
/* A8094 800CCC94 01CD7021 */  addu       $t6, $t6, $t5
/* A8098 800CCC98 000E7080 */  sll        $t6, $t6, 2
/* A809C 800CCC9C 01CD7023 */  subu       $t6, $t6, $t5
/* A80A0 800CCCA0 000E7100 */  sll        $t6, $t6, 4
/* A80A4 800CCCA4 01EE7821 */  addu       $t7, $t7, $t6
/* A80A8 800CCCA8 8DEF6990 */  lw         $t7, 0x6990($t7)
/* A80AC 800CCCAC 55E10004 */  bnel       $t7, $at, .L800CCCC0
/* A80B0 800CCCB0 C6080040 */   lwc1      $f8, 0x40($s0)
/* A80B4 800CCCB4 0C02E02A */  jal        func_800B80A8
/* A80B8 800CCCB8 00402025 */   or        $a0, $v0, $zero
.L800CCCBC:
/* A80BC 800CCCBC C6080040 */  lwc1       $f8, 0x40($s0)
.L800CCCC0:
/* A80C0 800CCCC0 3C013FE0 */  lui        $at, 0x3fe0
/* A80C4 800CCCC4 44815800 */  mtc1       $at, $f11
/* A80C8 800CCCC8 44805000 */  mtc1       $zero, $f10
/* A80CC 800CCCCC 46004121 */  cvt.d.s    $f4, $f8
/* A80D0 800CCCD0 C7A80088 */  lwc1       $f8, 0x88($sp)
/* A80D4 800CCCD4 462A2182 */  mul.d      $f6, $f4, $f10
/* A80D8 800CCCD8 27B80084 */  addiu      $t8, $sp, 0x84
/* A80DC 800CCCDC 46004121 */  cvt.d.s    $f4, $f8
/* A80E0 800CCCE0 02002025 */  or         $a0, $s0, $zero
/* A80E4 800CCCE4 46262281 */  sub.d      $f10, $f4, $f6
/* A80E8 800CCCE8 46205220 */  cvt.s.d    $f8, $f10
/* A80EC 800CCCEC E7A80088 */  swc1       $f8, 0x88($sp)
/* A80F0 800CCCF0 8F010000 */  lw         $at, ($t8)
/* A80F4 800CCCF4 AFA10004 */  sw         $at, 4($sp)
/* A80F8 800CCCF8 8F060004 */  lw         $a2, 4($t8)
/* A80FC 800CCCFC 8FA50004 */  lw         $a1, 4($sp)
/* A8100 800CCD00 AFA60008 */  sw         $a2, 8($sp)
/* A8104 800CCD04 8F070008 */  lw         $a3, 8($t8)
/* A8108 800CCD08 AFA00010 */  sw         $zero, 0x10($sp)
/* A810C 800CCD0C 0C033205 */  jal        func_800CC814
/* A8110 800CCD10 AFA7000C */   sw        $a3, 0xc($sp)
/* A8114 800CCD14 C6040054 */  lwc1       $f4, 0x54($s0)
/* A8118 800CCD18 C6060024 */  lwc1       $f6, 0x24($s0)
/* A811C 800CCD1C 27A90084 */  addiu      $t1, $sp, 0x84
/* A8120 800CCD20 46062280 */  add.s      $f10, $f4, $f6
/* A8124 800CCD24 E7AA0084 */  swc1       $f10, 0x84($sp)
/* A8128 800CCD28 C6080028 */  lwc1       $f8, 0x28($s0)
/* A812C 800CCD2C E7A80088 */  swc1       $f8, 0x88($sp)
/* A8130 800CCD30 C606002C */  lwc1       $f6, 0x2c($s0)
/* A8134 800CCD34 C604005C */  lwc1       $f4, 0x5c($s0)
/* A8138 800CCD38 46062280 */  add.s      $f10, $f4, $f6
/* A813C 800CCD3C E7AA008C */  swc1       $f10, 0x8c($sp)
/* A8140 800CCD40 8D210000 */  lw         $at, ($t1)
/* A8144 800CCD44 AFA10000 */  sw         $at, ($sp)
/* A8148 800CCD48 8D250004 */  lw         $a1, 4($t1)
/* A814C 800CCD4C 8FA40000 */  lw         $a0, ($sp)
/* A8150 800CCD50 AFA50004 */  sw         $a1, 4($sp)
/* A8154 800CCD54 8D260008 */  lw         $a2, 8($t1)
/* A8158 800CCD58 AFA60008 */  sw         $a2, 8($sp)
/* A815C 800CCD5C 0C032CA5 */  jal        func_800CB294
/* A8160 800CCD60 8E070060 */   lw        $a3, 0x60($s0)
/* A8164 800CCD64 1040000D */  beqz       $v0, .L800CCD9C
/* A8168 800CCD68 00403825 */   or        $a3, $v0, $zero
/* A816C 800CCD6C 27AC0084 */  addiu      $t4, $sp, 0x84
/* A8170 800CCD70 8D810000 */  lw         $at, ($t4)
/* A8174 800CCD74 260F0060 */  addiu      $t7, $s0, 0x60
/* A8178 800CCD78 AFA10000 */  sw         $at, ($sp)
/* A817C 800CCD7C 8D850004 */  lw         $a1, 4($t4)
/* A8180 800CCD80 8FA40000 */  lw         $a0, ($sp)
/* A8184 800CCD84 AFA50004 */  sw         $a1, 4($sp)
/* A8188 800CCD88 8D860008 */  lw         $a2, 8($t4)
/* A818C 800CCD8C AFB00014 */  sw         $s0, 0x14($sp)
/* A8190 800CCD90 AFAF0010 */  sw         $t7, 0x10($sp)
/* A8194 800CCD94 0C032D1C */  jal        func_800CB470
/* A8198 800CCD98 AFA60008 */   sw        $a2, 8($sp)
.L800CCD9C:
/* A819C 800CCD9C 8E190050 */  lw         $t9, 0x50($s0)
/* A81A0 800CCDA0 2B210002 */  slti       $at, $t9, 2
/* A81A4 800CCDA4 54200004 */  bnel       $at, $zero, .L800CCDB8
/* A81A8 800CCDA8 8FA20068 */   lw        $v0, 0x68($sp)
/* A81AC 800CCDAC 0C032F49 */  jal        func_800CBD24
/* A81B0 800CCDB0 02002025 */   or        $a0, $s0, $zero
/* A81B4 800CCDB4 8FA20068 */  lw         $v0, 0x68($sp)
.L800CCDB8:
/* A81B8 800CCDB8 8FBF0034 */  lw         $ra, 0x34($sp)
/* A81BC 800CCDBC 8FB00030 */  lw         $s0, 0x30($sp)
/* A81C0 800CCDC0 27BD00A8 */  addiu      $sp, $sp, 0xa8
/* A81C4 800CCDC4 03E00008 */  jr         $ra
/* A81C8 800CCDC8 00000000 */   nop

glabel func_800CCDCC
/* A81CC 800CCDCC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A81D0 800CCDD0 AFBF001C */  sw         $ra, 0x1c($sp)
/* A81D4 800CCDD4 C4860024 */  lwc1       $f6, 0x24($a0)
/* A81D8 800CCDD8 C4840054 */  lwc1       $f4, 0x54($a0)
/* A81DC 800CCDDC 27AE0024 */  addiu      $t6, $sp, 0x24
/* A81E0 800CCDE0 24190001 */  addiu      $t9, $zero, 1
/* A81E4 800CCDE4 46062200 */  add.s      $f8, $f4, $f6
/* A81E8 800CCDE8 E7A80024 */  swc1       $f8, 0x24($sp)
/* A81EC 800CCDEC C48A0028 */  lwc1       $f10, 0x28($a0)
/* A81F0 800CCDF0 E7AA0028 */  swc1       $f10, 0x28($sp)
/* A81F4 800CCDF4 C492002C */  lwc1       $f18, 0x2c($a0)
/* A81F8 800CCDF8 C490005C */  lwc1       $f16, 0x5c($a0)
/* A81FC 800CCDFC 46128100 */  add.s      $f4, $f16, $f18
/* A8200 800CCE00 E7A4002C */  swc1       $f4, 0x2c($sp)
/* A8204 800CCE04 AC800098 */  sw         $zero, 0x98($a0)
/* A8208 800CCE08 AC80009C */  sw         $zero, 0x9c($a0)
/* A820C 800CCE0C 8DC10000 */  lw         $at, ($t6)
/* A8210 800CCE10 AFA10004 */  sw         $at, 4($sp)
/* A8214 800CCE14 8DC60004 */  lw         $a2, 4($t6)
/* A8218 800CCE18 8FA50004 */  lw         $a1, 4($sp)
/* A821C 800CCE1C AFA60008 */  sw         $a2, 8($sp)
/* A8220 800CCE20 8DC70008 */  lw         $a3, 8($t6)
/* A8224 800CCE24 AFA40030 */  sw         $a0, 0x30($sp)
/* A8228 800CCE28 AFB90010 */  sw         $t9, 0x10($sp)
/* A822C 800CCE2C 0C033205 */  jal        func_800CC814
/* A8230 800CCE30 AFA7000C */   sw        $a3, 0xc($sp)
/* A8234 800CCE34 0C032F02 */  jal        func_800CBC08
/* A8238 800CCE38 8FA40030 */   lw        $a0, 0x30($sp)
/* A823C 800CCE3C 8FBF001C */  lw         $ra, 0x1c($sp)
/* A8240 800CCE40 27BD0030 */  addiu      $sp, $sp, 0x30
/* A8244 800CCE44 03E00008 */  jr         $ra
/* A8248 800CCE48 00000000 */   nop

glabel func_800CCE4C
/* A824C 800CCE4C 27BDFEE8 */  addiu      $sp, $sp, -0x118
/* A8250 800CCE50 AFBF0034 */  sw         $ra, 0x34($sp)
/* A8254 800CCE54 AFB00030 */  sw         $s0, 0x30($sp)
/* A8258 800CCE58 C4880024 */  lwc1       $f8, 0x24($a0)
/* A825C 800CCE5C C48A0054 */  lwc1       $f10, 0x54($a0)
/* A8260 800CCE60 00808025 */  or         $s0, $a0, $zero
/* A8264 800CCE64 46085100 */  add.s      $f4, $f10, $f8
/* A8268 800CCE68 E7A4010C */  swc1       $f4, 0x10c($sp)
/* A826C 800CCE6C C4860028 */  lwc1       $f6, 0x28($a0)
/* A8270 800CCE70 E7A60110 */  swc1       $f6, 0x110($sp)
/* A8274 800CCE74 C488002C */  lwc1       $f8, 0x2c($a0)
/* A8278 800CCE78 C48A005C */  lwc1       $f10, 0x5c($a0)
/* A827C 800CCE7C 46085100 */  add.s      $f4, $f10, $f8
/* A8280 800CCE80 E7A40114 */  swc1       $f4, 0x114($sp)
/* A8284 800CCE84 C4800030 */  lwc1       $f0, 0x30($a0)
/* A8288 800CCE88 C4820034 */  lwc1       $f2, 0x34($a0)
/* A828C 800CCE8C C48E0038 */  lwc1       $f14, 0x38($a0)
/* A8290 800CCE90 46000182 */  mul.s      $f6, $f0, $f0
/* A8294 800CCE94 AC80009C */  sw         $zero, 0x9c($a0)
/* A8298 800CCE98 AFA000D4 */  sw         $zero, 0xd4($sp)
/* A829C 800CCE9C 46021282 */  mul.s      $f10, $f2, $f2
/* A82A0 800CCEA0 E7A000E8 */  swc1       $f0, 0xe8($sp)
/* A82A4 800CCEA4 E7A200EC */  swc1       $f2, 0xec($sp)
/* A82A8 800CCEA8 460E7102 */  mul.s      $f4, $f14, $f14
/* A82AC 800CCEAC E7AE00F0 */  swc1       $f14, 0xf0($sp)
/* A82B0 800CCEB0 460A3200 */  add.s      $f8, $f6, $f10
/* A82B4 800CCEB4 0C036C2C */  jal        func_800DB0B0
/* A82B8 800CCEB8 46044300 */   add.s     $f12, $f8, $f4
/* A82BC 800CCEBC 44801800 */  mtc1       $zero, $f3
/* A82C0 800CCEC0 44801000 */  mtc1       $zero, $f2
/* A82C4 800CCEC4 460001A1 */  cvt.d.s    $f6, $f0
/* A82C8 800CCEC8 46000486 */  mov.s      $f18, $f0
/* A82CC 800CCECC 46261032 */  c.eq.d     $f2, $f6
/* A82D0 800CCED0 27B9010C */  addiu      $t9, $sp, 0x10c
/* A82D4 800CCED4 45020024 */  bc1fl      .L800CCF68
/* A82D8 800CCED8 8E0200A8 */   lw        $v0, 0xa8($s0)
/* A82DC 800CCEDC AE00009C */  sw         $zero, 0x9c($s0)
/* A82E0 800CCEE0 8F210000 */  lw         $at, ($t9)
/* A82E4 800CCEE4 240D0001 */  addiu      $t5, $zero, 1
/* A82E8 800CCEE8 02002025 */  or         $a0, $s0, $zero
/* A82EC 800CCEEC AFA10004 */  sw         $at, 4($sp)
/* A82F0 800CCEF0 8F260004 */  lw         $a2, 4($t9)
/* A82F4 800CCEF4 8FA50004 */  lw         $a1, 4($sp)
/* A82F8 800CCEF8 AFA60008 */  sw         $a2, 8($sp)
/* A82FC 800CCEFC 8F270008 */  lw         $a3, 8($t9)
/* A8300 800CCF00 AFAD0010 */  sw         $t5, 0x10($sp)
/* A8304 800CCF04 0C033205 */  jal        func_800CC814
/* A8308 800CCF08 AFA7000C */   sw        $a3, 0xc($sp)
/* A830C 800CCF0C 8E0A0098 */  lw         $t2, 0x98($s0)
/* A8310 800CCF10 27B8010C */  addiu      $t8, $sp, 0x10c
/* A8314 800CCF14 1540000F */  bnez       $t2, .L800CCF54
/* A8318 800CCF18 00000000 */   nop
/* A831C 800CCF1C 8F010000 */  lw         $at, ($t8)
/* A8320 800CCF20 26090060 */  addiu      $t1, $s0, 0x60
/* A8324 800CCF24 00003825 */  or         $a3, $zero, $zero
/* A8328 800CCF28 AFA10000 */  sw         $at, ($sp)
/* A832C 800CCF2C 8F050004 */  lw         $a1, 4($t8)
/* A8330 800CCF30 8FA40000 */  lw         $a0, ($sp)
/* A8334 800CCF34 AFA50004 */  sw         $a1, 4($sp)
/* A8338 800CCF38 8F060008 */  lw         $a2, 8($t8)
/* A833C 800CCF3C AFB00014 */  sw         $s0, 0x14($sp)
/* A8340 800CCF40 AFA90010 */  sw         $t1, 0x10($sp)
/* A8344 800CCF44 0C032D1C */  jal        func_800CB470
/* A8348 800CCF48 AFA60008 */   sw        $a2, 8($sp)
/* A834C 800CCF4C 100001B5 */  b          .L800CD624
/* A8350 800CCF50 8FBF0034 */   lw        $ra, 0x34($sp)
.L800CCF54:
/* A8354 800CCF54 0C032F02 */  jal        func_800CBC08
/* A8358 800CCF58 02002025 */   or        $a0, $s0, $zero
/* A835C 800CCF5C 100001B1 */  b          .L800CD624
/* A8360 800CCF60 8FBF0034 */   lw        $ra, 0x34($sp)
/* A8364 800CCF64 8E0200A8 */  lw         $v0, 0xa8($s0)
.L800CCF68:
/* A8368 800CCF68 24010001 */  addiu      $at, $zero, 1
/* A836C 800CCF6C C7AA010C */  lwc1       $f10, 0x10c($sp)
/* A8370 800CCF70 10400007 */  beqz       $v0, .L800CCF90
/* A8374 800CCF74 C7A800E8 */   lwc1      $f8, 0xe8($sp)
/* A8378 800CCF78 10410010 */  beq        $v0, $at, .L800CCFBC
/* A837C 800CCF7C 24010002 */   addiu     $at, $zero, 2
/* A8380 800CCF80 5041000F */  beql       $v0, $at, .L800CCFC0
/* A8384 800CCF84 C6040040 */   lwc1      $f4, 0x40($s0)
/* A8388 800CCF88 100000D4 */  b          .L800CD2DC
/* A838C 800CCF8C AFA000B8 */   sw        $zero, 0xb8($sp)
.L800CCF90:
/* A8390 800CCF90 46085100 */  add.s      $f4, $f10, $f8
/* A8394 800CCF94 C7AA00EC */  lwc1       $f10, 0xec($sp)
/* A8398 800CCF98 C7A60110 */  lwc1       $f6, 0x110($sp)
/* A839C 800CCF9C E7A400F4 */  swc1       $f4, 0xf4($sp)
/* A83A0 800CCFA0 460A3200 */  add.s      $f8, $f6, $f10
/* A83A4 800CCFA4 C7A600F0 */  lwc1       $f6, 0xf0($sp)
/* A83A8 800CCFA8 C7A40114 */  lwc1       $f4, 0x114($sp)
/* A83AC 800CCFAC E7A800F8 */  swc1       $f8, 0xf8($sp)
/* A83B0 800CCFB0 46062280 */  add.s      $f10, $f4, $f6
/* A83B4 800CCFB4 100000C8 */  b          .L800CD2D8
/* A83B8 800CCFB8 E7AA00FC */   swc1      $f10, 0xfc($sp)
.L800CCFBC:
/* A83BC 800CCFBC C6040040 */  lwc1       $f4, 0x40($s0)
.L800CCFC0:
/* A83C0 800CCFC0 C608003C */  lwc1       $f8, 0x3c($s0)
/* A83C4 800CCFC4 3C013FE0 */  lui        $at, 0x3fe0
/* A83C8 800CCFC8 44815800 */  mtc1       $at, $f11
/* A83CC 800CCFCC 44805000 */  mtc1       $zero, $f10
/* A83D0 800CCFD0 460021A1 */  cvt.d.s    $f6, $f4
/* A83D4 800CCFD4 46124003 */  div.s      $f0, $f8, $f18
/* A83D8 800CCFD8 C7A40110 */  lwc1       $f4, 0x110($sp)
/* A83DC 800CCFDC 27AB010C */  addiu      $t3, $sp, 0x10c
/* A83E0 800CCFE0 27AD0100 */  addiu      $t5, $sp, 0x100
/* A83E4 800CCFE4 462A3202 */  mul.d      $f8, $f6, $f10
/* A83E8 800CCFE8 460021A1 */  cvt.d.s    $f6, $f4
/* A83EC 800CCFEC 27B800BC */  addiu      $t8, $sp, 0xbc
/* A83F0 800CCFF0 46283280 */  add.d      $f10, $f6, $f8
/* A83F4 800CCFF4 C7A800E8 */  lwc1       $f8, 0xe8($sp)
/* A83F8 800CCFF8 C7A6010C */  lwc1       $f6, 0x10c($sp)
/* A83FC 800CCFFC 46205120 */  cvt.s.d    $f4, $f10
/* A8400 800CD000 E7A80038 */  swc1       $f8, 0x38($sp)
/* A8404 800CD004 46083280 */  add.s      $f10, $f6, $f8
/* A8408 800CD008 C7A600EC */  lwc1       $f6, 0xec($sp)
/* A840C 800CD00C E7A40110 */  swc1       $f4, 0x110($sp)
/* A8410 800CD010 C7A80114 */  lwc1       $f8, 0x114($sp)
/* A8414 800CD014 46062100 */  add.s      $f4, $f4, $f6
/* A8418 800CD018 E7A60040 */  swc1       $f6, 0x40($sp)
/* A841C 800CD01C C7A60038 */  lwc1       $f6, 0x38($sp)
/* A8420 800CD020 E7AA003C */  swc1       $f10, 0x3c($sp)
/* A8424 800CD024 E7AA00F4 */  swc1       $f10, 0xf4($sp)
/* A8428 800CD028 46003302 */  mul.s      $f12, $f6, $f0
/* A842C 800CD02C C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A8430 800CD030 C7AA00F0 */  lwc1       $f10, 0xf0($sp)
/* A8434 800CD034 E7A400F8 */  swc1       $f4, 0xf8($sp)
/* A8438 800CD038 460A4200 */  add.s      $f8, $f8, $f10
/* A843C 800CD03C 460C3180 */  add.s      $f6, $f6, $f12
/* A8440 800CD040 E7A800FC */  swc1       $f8, 0xfc($sp)
/* A8444 800CD044 E7A60100 */  swc1       $f6, 0x100($sp)
/* A8448 800CD048 C7A60040 */  lwc1       $f6, 0x40($sp)
/* A844C 800CD04C 46003382 */  mul.s      $f14, $f6, $f0
/* A8450 800CD050 00000000 */  nop
/* A8454 800CD054 46005402 */  mul.s      $f16, $f10, $f0
/* A8458 800CD058 460E2180 */  add.s      $f6, $f4, $f14
/* A845C 800CD05C 46104100 */  add.s      $f4, $f8, $f16
/* A8460 800CD060 E7A60104 */  swc1       $f6, 0x104($sp)
/* A8464 800CD064 E7A40108 */  swc1       $f4, 0x108($sp)
/* A8468 800CD068 8D610000 */  lw         $at, ($t3)
/* A846C 800CD06C AFA10000 */  sw         $at, ($sp)
/* A8470 800CD070 8D650004 */  lw         $a1, 4($t3)
/* A8474 800CD074 8FA40000 */  lw         $a0, ($sp)
/* A8478 800CD078 AFA50004 */  sw         $a1, 4($sp)
/* A847C 800CD07C 8D610008 */  lw         $at, 8($t3)
/* A8480 800CD080 AFA10008 */  sw         $at, 8($sp)
/* A8484 800CD084 8DA10000 */  lw         $at, ($t5)
/* A8488 800CD088 8FA60008 */  lw         $a2, 8($sp)
/* A848C 800CD08C AFA1000C */  sw         $at, 0xc($sp)
/* A8490 800CD090 8DAF0004 */  lw         $t7, 4($t5)
/* A8494 800CD094 8FA7000C */  lw         $a3, 0xc($sp)
/* A8498 800CD098 AFAF0010 */  sw         $t7, 0x10($sp)
/* A849C 800CD09C 8DA10008 */  lw         $at, 8($t5)
/* A84A0 800CD0A0 E7B0004C */  swc1       $f16, 0x4c($sp)
/* A84A4 800CD0A4 E7AE0050 */  swc1       $f14, 0x50($sp)
/* A84A8 800CD0A8 E7AC0054 */  swc1       $f12, 0x54($sp)
/* A84AC 800CD0AC AFB80018 */  sw         $t8, 0x18($sp)
/* A84B0 800CD0B0 0C02BAAA */  jal        func_800AEAA8
/* A84B4 800CD0B4 AFA10014 */   sw        $at, 0x14($sp)
/* A84B8 800CD0B8 C7A600C0 */  lwc1       $f6, 0xc0($sp)
/* A84BC 800CD0BC C60A0040 */  lwc1       $f10, 0x40($s0)
/* A84C0 800CD0C0 27A400BC */  addiu      $a0, $sp, 0xbc
/* A84C4 800CD0C4 24050077 */  addiu      $a1, $zero, 0x77
/* A84C8 800CD0C8 460A3201 */  sub.s      $f8, $f6, $f10
/* A84CC 800CD0CC 24060004 */  addiu      $a2, $zero, 4
/* A84D0 800CD0D0 0C0325D2 */  jal        func_800C9748
/* A84D4 800CD0D4 E7A800C0 */   swc1      $f8, 0xc0($sp)
/* A84D8 800CD0D8 240E0001 */  addiu      $t6, $zero, 1
/* A84DC 800CD0DC AFAE00D4 */  sw         $t6, 0xd4($sp)
/* A84E0 800CD0E0 27A9010C */  addiu      $t1, $sp, 0x10c
/* A84E4 800CD0E4 8D210000 */  lw         $at, ($t1)
/* A84E8 800CD0E8 27AC0100 */  addiu      $t4, $sp, 0x100
/* A84EC 800CD0EC 240F0077 */  addiu      $t7, $zero, 0x77
/* A84F0 800CD0F0 AFA10000 */  sw         $at, ($sp)
/* A84F4 800CD0F4 8D250004 */  lw         $a1, 4($t1)
/* A84F8 800CD0F8 24180001 */  addiu      $t8, $zero, 1
/* A84FC 800CD0FC 8FA40000 */  lw         $a0, ($sp)
/* A8500 800CD100 AFA50004 */  sw         $a1, 4($sp)
/* A8504 800CD104 8D210008 */  lw         $at, 8($t1)
/* A8508 800CD108 AFA10008 */  sw         $at, 8($sp)
/* A850C 800CD10C 8D810000 */  lw         $at, ($t4)
/* A8510 800CD110 8FA60008 */  lw         $a2, 8($sp)
/* A8514 800CD114 AFA1000C */  sw         $at, 0xc($sp)
/* A8518 800CD118 8D8D0004 */  lw         $t5, 4($t4)
/* A851C 800CD11C 8FA7000C */  lw         $a3, 0xc($sp)
/* A8520 800CD120 AFAD0010 */  sw         $t5, 0x10($sp)
/* A8524 800CD124 8D810008 */  lw         $at, 8($t4)
/* A8528 800CD128 AFAE0020 */  sw         $t6, 0x20($sp)
/* A852C 800CD12C AFB8001C */  sw         $t8, 0x1c($sp)
/* A8530 800CD130 AFAF0018 */  sw         $t7, 0x18($sp)
/* A8534 800CD134 0C032A3E */  jal        func_800CA8F8
/* A8538 800CD138 AFA10014 */   sw        $at, 0x14($sp)
/* A853C 800CD13C 50400052 */  beql       $v0, $zero, .L800CD288
/* A8540 800CD140 C6080040 */   lwc1      $f8, 0x40($s0)
/* A8544 800CD144 8C41005C */  lw         $at, 0x5c($v0)
/* A8548 800CD148 27B900A4 */  addiu      $t9, $sp, 0xa4
/* A854C 800CD14C 27A400F4 */  addiu      $a0, $sp, 0xf4
/* A8550 800CD150 AF210000 */  sw         $at, ($t9)
/* A8554 800CD154 8C4B0060 */  lw         $t3, 0x60($v0)
/* A8558 800CD158 240F0077 */  addiu      $t7, $zero, 0x77
/* A855C 800CD15C AF2B0004 */  sw         $t3, 4($t9)
/* A8560 800CD160 8C410064 */  lw         $at, 0x64($v0)
/* A8564 800CD164 AF210008 */  sw         $at, 8($t9)
/* A8568 800CD168 C7A60054 */  lwc1       $f6, 0x54($sp)
/* A856C 800CD16C C4440094 */  lwc1       $f4, 0x94($v0)
/* A8570 800CD170 46062281 */  sub.s      $f10, $f4, $f6
/* A8574 800CD174 C7A40050 */  lwc1       $f4, 0x50($sp)
/* A8578 800CD178 E7AA00F4 */  swc1       $f10, 0xf4($sp)
/* A857C 800CD17C C4480098 */  lwc1       $f8, 0x98($v0)
/* A8580 800CD180 46044181 */  sub.s      $f6, $f8, $f4
/* A8584 800CD184 C7A8004C */  lwc1       $f8, 0x4c($sp)
/* A8588 800CD188 E7A600F8 */  swc1       $f6, 0xf8($sp)
/* A858C 800CD18C C44A009C */  lwc1       $f10, 0x9c($v0)
/* A8590 800CD190 46085101 */  sub.s      $f4, $f10, $f8
/* A8594 800CD194 E7A400FC */  swc1       $f4, 0xfc($sp)
/* A8598 800CD198 8C810000 */  lw         $at, ($a0)
/* A859C 800CD19C AFA10004 */  sw         $at, 4($sp)
/* A85A0 800CD1A0 8C860004 */  lw         $a2, 4($a0)
/* A85A4 800CD1A4 8FA50004 */  lw         $a1, 4($sp)
/* A85A8 800CD1A8 AFA60008 */  sw         $a2, 8($sp)
/* A85AC 800CD1AC 8C870008 */  lw         $a3, 8($a0)
/* A85B0 800CD1B0 AFA7000C */  sw         $a3, 0xc($sp)
/* A85B4 800CD1B4 C606003C */  lwc1       $f6, 0x3c($s0)
/* A85B8 800CD1B8 AFAF0014 */  sw         $t7, 0x14($sp)
/* A85BC 800CD1BC 0C0329CD */  jal        func_800CA734
/* A85C0 800CD1C0 E7A60010 */   swc1      $f6, 0x10($sp)
/* A85C4 800CD1C4 3C038025 */  lui        $v1, %hi(D_802488B0)
/* A85C8 800CD1C8 246388B0 */  addiu      $v1, $v1, %lo(D_802488B0)
/* A85CC 800CD1CC C46A0000 */  lwc1       $f10, ($v1)
/* A85D0 800CD1D0 44801800 */  mtc1       $zero, $f3
/* A85D4 800CD1D4 44801000 */  mtc1       $zero, $f2
/* A85D8 800CD1D8 46005221 */  cvt.d.s    $f8, $f10
/* A85DC 800CD1DC 46281032 */  c.eq.d     $f2, $f8
/* A85E0 800CD1E0 00000000 */  nop
/* A85E4 800CD1E4 4502000E */  bc1fl      .L800CD220
/* A85E8 800CD1E8 8C610000 */   lw        $at, ($v1)
/* A85EC 800CD1EC C4640004 */  lwc1       $f4, 4($v1)
/* A85F0 800CD1F0 460021A1 */  cvt.d.s    $f6, $f4
/* A85F4 800CD1F4 46261032 */  c.eq.d     $f2, $f6
/* A85F8 800CD1F8 00000000 */  nop
/* A85FC 800CD1FC 45020008 */  bc1fl      .L800CD220
/* A8600 800CD200 8C610000 */   lw        $at, ($v1)
/* A8604 800CD204 C46A0008 */  lwc1       $f10, 8($v1)
/* A8608 800CD208 46005221 */  cvt.d.s    $f8, $f10
/* A860C 800CD20C 46281032 */  c.eq.d     $f2, $f8
/* A8610 800CD210 00000000 */  nop
/* A8614 800CD214 4503000A */  bc1tl      .L800CD240
/* A8618 800CD218 24090001 */   addiu     $t1, $zero, 1
/* A861C 800CD21C 8C610000 */  lw         $at, ($v1)
.L800CD220:
/* A8620 800CD220 27A400A4 */  addiu      $a0, $sp, 0xa4
/* A8624 800CD224 8C6E0004 */  lw         $t6, 4($v1)
/* A8628 800CD228 AC810000 */  sw         $at, ($a0)
/* A862C 800CD22C 8C610008 */  lw         $at, 8($v1)
/* A8630 800CD230 AC8E0004 */  sw         $t6, 4($a0)
/* A8634 800CD234 0C03606C */  jal        func_800D81B0
/* A8638 800CD238 AC810008 */   sw        $at, 8($a0)
/* A863C 800CD23C 24090001 */  addiu      $t1, $zero, 1
.L800CD240:
/* A8640 800CD240 AE09009C */  sw         $t1, 0x9c($s0)
/* A8644 800CD244 C7A400A4 */  lwc1       $f4, 0xa4($sp)
/* A8648 800CD248 27B900A4 */  addiu      $t9, $sp, 0xa4
/* A864C 800CD24C E60400B4 */  swc1       $f4, 0xb4($s0)
/* A8650 800CD250 C7A600A8 */  lwc1       $f6, 0xa8($sp)
/* A8654 800CD254 E60600B8 */  swc1       $f6, 0xb8($s0)
/* A8658 800CD258 C7AA00AC */  lwc1       $f10, 0xac($sp)
/* A865C 800CD25C E60A00BC */  swc1       $f10, 0xbc($s0)
/* A8660 800CD260 8F210000 */  lw         $at, ($t9)
/* A8664 800CD264 AFA10000 */  sw         $at, ($sp)
/* A8668 800CD268 8F250004 */  lw         $a1, 4($t9)
/* A866C 800CD26C 8FA40000 */  lw         $a0, ($sp)
/* A8670 800CD270 AFA50004 */  sw         $a1, 4($sp)
/* A8674 800CD274 8F260008 */  lw         $a2, 8($t9)
/* A8678 800CD278 0C0331F8 */  jal        func_800CC7E0
/* A867C 800CD27C AFA60008 */   sw        $a2, 8($sp)
/* A8680 800CD280 E60000B0 */  swc1       $f0, 0xb0($s0)
/* A8684 800CD284 C6080040 */  lwc1       $f8, 0x40($s0)
.L800CD288:
/* A8688 800CD288 3C013FE0 */  lui        $at, 0x3fe0
/* A868C 800CD28C 44813800 */  mtc1       $at, $f7
/* A8690 800CD290 44803000 */  mtc1       $zero, $f6
/* A8694 800CD294 46004121 */  cvt.d.s    $f4, $f8
/* A8698 800CD298 C7A80110 */  lwc1       $f8, 0x110($sp)
/* A869C 800CD29C 46262282 */  mul.d      $f10, $f4, $f6
/* A86A0 800CD2A0 46004121 */  cvt.d.s    $f4, $f8
/* A86A4 800CD2A4 462A2181 */  sub.d      $f6, $f4, $f10
/* A86A8 800CD2A8 46203220 */  cvt.s.d    $f8, $f6
/* A86AC 800CD2AC 44803000 */  mtc1       $zero, $f6
/* A86B0 800CD2B0 44813800 */  mtc1       $at, $f7
/* A86B4 800CD2B4 E7A80110 */  swc1       $f8, 0x110($sp)
/* A86B8 800CD2B8 C6040040 */  lwc1       $f4, 0x40($s0)
/* A86BC 800CD2BC 460022A1 */  cvt.d.s    $f10, $f4
/* A86C0 800CD2C0 C7A400F8 */  lwc1       $f4, 0xf8($sp)
/* A86C4 800CD2C4 46265202 */  mul.d      $f8, $f10, $f6
/* A86C8 800CD2C8 460022A1 */  cvt.d.s    $f10, $f4
/* A86CC 800CD2CC 46285181 */  sub.d      $f6, $f10, $f8
/* A86D0 800CD2D0 46203120 */  cvt.s.d    $f4, $f6
/* A86D4 800CD2D4 E7A400F8 */  swc1       $f4, 0xf8($sp)
.L800CD2D8:
/* A86D8 800CD2D8 AFA000B8 */  sw         $zero, 0xb8($sp)
.L800CD2DC:
/* A86DC 800CD2DC 8E0A0098 */  lw         $t2, 0x98($s0)
/* A86E0 800CD2E0 8FAF00D4 */  lw         $t7, 0xd4($sp)
/* A86E4 800CD2E4 15400004 */  bnez       $t2, .L800CD2F8
/* A86E8 800CD2E8 00000000 */   nop
/* A86EC 800CD2EC 8E0D00AC */  lw         $t5, 0xac($s0)
/* A86F0 800CD2F0 51A00098 */  beql       $t5, $zero, .L800CD554
/* A86F4 800CD2F4 AE000098 */   sw        $zero, 0x98($s0)
.L800CD2F8:
/* A86F8 800CD2F8 15E0003D */  bnez       $t7, .L800CD3F0
/* A86FC 800CD2FC 3C013FE0 */   lui       $at, 0x3fe0
/* A8700 800CD300 44810800 */  mtc1       $at, $f1
/* A8704 800CD304 27B800F4 */  addiu      $t8, $sp, 0xf4
/* A8708 800CD308 8F010000 */  lw         $at, ($t8)
/* A870C 800CD30C 27A20058 */  addiu      $v0, $sp, 0x58
/* A8710 800CD310 27A3008C */  addiu      $v1, $sp, 0x8c
/* A8714 800CD314 AC410000 */  sw         $at, ($v0)
/* A8718 800CD318 8F090004 */  lw         $t1, 4($t8)
/* A871C 800CD31C 27A80098 */  addiu      $t0, $sp, 0x98
/* A8720 800CD320 44800000 */  mtc1       $zero, $f0
/* A8724 800CD324 AC490004 */  sw         $t1, 4($v0)
/* A8728 800CD328 8F010008 */  lw         $at, 8($t8)
/* A872C 800CD32C AC690004 */  sw         $t1, 4($v1)
/* A8730 800CD330 AD090004 */  sw         $t1, 4($t0)
/* A8734 800CD334 AC410008 */  sw         $at, 8($v0)
/* A8738 800CD338 8C410000 */  lw         $at, ($v0)
/* A873C 800CD33C 27A90074 */  addiu      $t1, $sp, 0x74
/* A8740 800CD340 AC610000 */  sw         $at, ($v1)
/* A8744 800CD344 8C410008 */  lw         $at, 8($v0)
/* A8748 800CD348 AC610008 */  sw         $at, 8($v1)
/* A874C 800CD34C 8C410000 */  lw         $at, ($v0)
/* A8750 800CD350 AD010000 */  sw         $at, ($t0)
/* A8754 800CD354 8C410008 */  lw         $at, 8($v0)
/* A8758 800CD358 AD010008 */  sw         $at, 8($t0)
/* A875C 800CD35C C6060040 */  lwc1       $f6, 0x40($s0)
/* A8760 800CD360 C7AA009C */  lwc1       $f10, 0x9c($sp)
/* A8764 800CD364 46003121 */  cvt.d.s    $f4, $f6
/* A8768 800CD368 46005221 */  cvt.d.s    $f8, $f10
/* A876C 800CD36C 46202282 */  mul.d      $f10, $f4, $f0
/* A8770 800CD370 462A4180 */  add.d      $f6, $f8, $f10
/* A8774 800CD374 C7A80090 */  lwc1       $f8, 0x90($sp)
/* A8778 800CD378 46203120 */  cvt.s.d    $f4, $f6
/* A877C 800CD37C 460042A1 */  cvt.d.s    $f10, $f8
/* A8780 800CD380 E7A4009C */  swc1       $f4, 0x9c($sp)
/* A8784 800CD384 C6060040 */  lwc1       $f6, 0x40($s0)
/* A8788 800CD388 46003121 */  cvt.d.s    $f4, $f6
/* A878C 800CD38C 46202202 */  mul.d      $f8, $f4, $f0
/* A8790 800CD390 46285181 */  sub.d      $f6, $f10, $f8
/* A8794 800CD394 46203120 */  cvt.s.d    $f4, $f6
/* A8798 800CD398 E7A40090 */  swc1       $f4, 0x90($sp)
/* A879C 800CD39C 8D010000 */  lw         $at, ($t0)
/* A87A0 800CD3A0 AFA10000 */  sw         $at, ($sp)
/* A87A4 800CD3A4 8D050004 */  lw         $a1, 4($t0)
/* A87A8 800CD3A8 8FA40000 */  lw         $a0, ($sp)
/* A87AC 800CD3AC AFA50004 */  sw         $a1, 4($sp)
/* A87B0 800CD3B0 8D010008 */  lw         $at, 8($t0)
/* A87B4 800CD3B4 AFA10008 */  sw         $at, 8($sp)
/* A87B8 800CD3B8 8C610000 */  lw         $at, ($v1)
/* A87BC 800CD3BC 8FA60008 */  lw         $a2, 8($sp)
/* A87C0 800CD3C0 AFA1000C */  sw         $at, 0xc($sp)
/* A87C4 800CD3C4 8C780004 */  lw         $t8, 4($v1)
/* A87C8 800CD3C8 8FA7000C */  lw         $a3, 0xc($sp)
/* A87CC 800CD3CC AFB80010 */  sw         $t8, 0x10($sp)
/* A87D0 800CD3D0 8C610008 */  lw         $at, 8($v1)
/* A87D4 800CD3D4 AFA90018 */  sw         $t1, 0x18($sp)
/* A87D8 800CD3D8 0C02BAAA */  jal        func_800AEAA8
/* A87DC 800CD3DC AFA10014 */   sw        $at, 0x14($sp)
/* A87E0 800CD3E0 27A40074 */  addiu      $a0, $sp, 0x74
/* A87E4 800CD3E4 24050077 */  addiu      $a1, $zero, 0x77
/* A87E8 800CD3E8 0C0325D2 */  jal        func_800C9748
/* A87EC 800CD3EC 24060002 */   addiu     $a2, $zero, 2
.L800CD3F0:
/* A87F0 800CD3F0 27AB00F4 */  addiu      $t3, $sp, 0xf4
/* A87F4 800CD3F4 8D610000 */  lw         $at, ($t3)
/* A87F8 800CD3F8 AFA10000 */  sw         $at, ($sp)
/* A87FC 800CD3FC 8D650004 */  lw         $a1, 4($t3)
/* A8800 800CD400 8FA40000 */  lw         $a0, ($sp)
/* A8804 800CD404 AFA50004 */  sw         $a1, 4($sp)
/* A8808 800CD408 8D610008 */  lw         $at, 8($t3)
/* A880C 800CD40C AFA10008 */  sw         $at, 8($sp)
/* A8810 800CD410 C6000040 */  lwc1       $f0, 0x40($s0)
/* A8814 800CD414 3C018011 */  lui        $at, %hi(D_801104B8)
/* A8818 800CD418 D42804B8 */  ldc1       $f8, %lo(D_801104B8)($at)
/* A881C 800CD41C 460002A1 */  cvt.d.s    $f10, $f0
/* A8820 800CD420 3C013FE0 */  lui        $at, 0x3fe0
/* A8824 800CD424 46285182 */  mul.d      $f6, $f10, $f8
/* A8828 800CD428 46000287 */  neg.s      $f10, $f0
/* A882C 800CD42C 8FA60008 */  lw         $a2, 8($sp)
/* A8830 800CD430 46005221 */  cvt.d.s    $f8, $f10
/* A8834 800CD434 46203120 */  cvt.s.d    $f4, $f6
/* A8838 800CD438 44803000 */  mtc1       $zero, $f6
/* A883C 800CD43C 44813800 */  mtc1       $at, $f7
/* A8840 800CD440 44072000 */  mfc1       $a3, $f4
/* A8844 800CD444 46264102 */  mul.d      $f4, $f8, $f6
/* A8848 800CD448 462022A0 */  cvt.s.d    $f10, $f4
/* A884C 800CD44C 0C032BE2 */  jal        func_800CAF88
/* A8850 800CD450 E7AA0010 */   swc1      $f10, 0x10($sp)
/* A8854 800CD454 14400034 */  bnez       $v0, .L800CD528
/* A8858 800CD458 00403825 */   or        $a3, $v0, $zero
/* A885C 800CD45C 8E0A00AC */  lw         $t2, 0xac($s0)
/* A8860 800CD460 24010002 */  addiu      $at, $zero, 2
/* A8864 800CD464 27AF010C */  addiu      $t7, $sp, 0x10c
/* A8868 800CD468 15410021 */  bne        $t2, $at, .L800CD4F0
/* A886C 800CD46C 27AE00F4 */   addiu     $t6, $sp, 0xf4
/* A8870 800CD470 8DE10000 */  lw         $at, ($t7)
/* A8874 800CD474 27AD00F4 */  addiu      $t5, $sp, 0xf4
/* A8878 800CD478 24090001 */  addiu      $t1, $zero, 1
/* A887C 800CD47C ADA10000 */  sw         $at, ($t5)
/* A8880 800CD480 8DF80004 */  lw         $t8, 4($t7)
/* A8884 800CD484 27B90068 */  addiu      $t9, $sp, 0x68
/* A8888 800CD488 ADB80004 */  sw         $t8, 4($t5)
/* A888C 800CD48C 8DE10008 */  lw         $at, 8($t7)
/* A8890 800CD490 ADA10008 */  sw         $at, 8($t5)
/* A8894 800CD494 AE000098 */  sw         $zero, 0x98($s0)
/* A8898 800CD498 AE09009C */  sw         $t1, 0x9c($s0)
/* A889C 800CD49C C7A800E8 */  lwc1       $f8, 0xe8($sp)
/* A88A0 800CD4A0 C7A400EC */  lwc1       $f4, 0xec($sp)
/* A88A4 800CD4A4 46004187 */  neg.s      $f6, $f8
/* A88A8 800CD4A8 C7A800F0 */  lwc1       $f8, 0xf0($sp)
/* A88AC 800CD4AC E7A60068 */  swc1       $f6, 0x68($sp)
/* A88B0 800CD4B0 46002287 */  neg.s      $f10, $f4
/* A88B4 800CD4B4 46004187 */  neg.s      $f6, $f8
/* A88B8 800CD4B8 E7AA006C */  swc1       $f10, 0x6c($sp)
/* A88BC 800CD4BC E7A60070 */  swc1       $f6, 0x70($sp)
/* A88C0 800CD4C0 8F210000 */  lw         $at, ($t9)
/* A88C4 800CD4C4 AFA10000 */  sw         $at, ($sp)
/* A88C8 800CD4C8 8F250004 */  lw         $a1, 4($t9)
/* A88CC 800CD4CC 8FA40000 */  lw         $a0, ($sp)
/* A88D0 800CD4D0 AFA50004 */  sw         $a1, 4($sp)
/* A88D4 800CD4D4 8F260008 */  lw         $a2, 8($t9)
/* A88D8 800CD4D8 AFA700B8 */  sw         $a3, 0xb8($sp)
/* A88DC 800CD4DC 0C0331F8 */  jal        func_800CC7E0
/* A88E0 800CD4E0 AFA60008 */   sw        $a2, 8($sp)
/* A88E4 800CD4E4 8FA700B8 */  lw         $a3, 0xb8($sp)
/* A88E8 800CD4E8 10000017 */  b          .L800CD548
/* A88EC 800CD4EC E60000B0 */   swc1      $f0, 0xb0($s0)
.L800CD4F0:
/* A88F0 800CD4F0 240A0001 */  addiu      $t2, $zero, 1
/* A88F4 800CD4F4 AE0A0098 */  sw         $t2, 0x98($s0)
/* A88F8 800CD4F8 AE00009C */  sw         $zero, 0x9c($s0)
/* A88FC 800CD4FC 8DC10000 */  lw         $at, ($t6)
/* A8900 800CD500 AFA10000 */  sw         $at, ($sp)
/* A8904 800CD504 8DC50004 */  lw         $a1, 4($t6)
/* A8908 800CD508 8FA40000 */  lw         $a0, ($sp)
/* A890C 800CD50C AFA50004 */  sw         $a1, 4($sp)
/* A8910 800CD510 8DC60008 */  lw         $a2, 8($t6)
/* A8914 800CD514 AFA60008 */  sw         $a2, 8($sp)
/* A8918 800CD518 0C032CA5 */  jal        func_800CB294
/* A891C 800CD51C 8E070060 */   lw        $a3, 0x60($s0)
/* A8920 800CD520 10000009 */  b          .L800CD548
/* A8924 800CD524 00403825 */   or        $a3, $v0, $zero
.L800CD528:
/* A8928 800CD528 AE000098 */  sw         $zero, 0x98($s0)
/* A892C 800CD52C 8C410094 */  lw         $at, 0x94($v0)
/* A8930 800CD530 27B800F4 */  addiu      $t8, $sp, 0xf4
/* A8934 800CD534 AF010000 */  sw         $at, ($t8)
/* A8938 800CD538 8C4B0098 */  lw         $t3, 0x98($v0)
/* A893C 800CD53C AF0B0004 */  sw         $t3, 4($t8)
/* A8940 800CD540 8C41009C */  lw         $at, 0x9c($v0)
/* A8944 800CD544 AF010008 */  sw         $at, 8($t8)
.L800CD548:
/* A8948 800CD548 10000002 */  b          .L800CD554
/* A894C 800CD54C AFA700B8 */   sw        $a3, 0xb8($sp)
/* A8950 800CD550 AE000098 */  sw         $zero, 0x98($s0)
.L800CD554:
/* A8954 800CD554 27B900F4 */  addiu      $t9, $sp, 0xf4
/* A8958 800CD558 8F210000 */  lw         $at, ($t9)
/* A895C 800CD55C 240D0001 */  addiu      $t5, $zero, 1
/* A8960 800CD560 02002025 */  or         $a0, $s0, $zero
/* A8964 800CD564 AFA10004 */  sw         $at, 4($sp)
/* A8968 800CD568 8F260004 */  lw         $a2, 4($t9)
/* A896C 800CD56C 8FA50004 */  lw         $a1, 4($sp)
/* A8970 800CD570 AFA60008 */  sw         $a2, 8($sp)
/* A8974 800CD574 8F270008 */  lw         $a3, 8($t9)
/* A8978 800CD578 AFAD0010 */  sw         $t5, 0x10($sp)
/* A897C 800CD57C 0C033205 */  jal        func_800CC814
/* A8980 800CD580 AFA7000C */   sw        $a3, 0xc($sp)
/* A8984 800CD584 C6040054 */  lwc1       $f4, 0x54($s0)
/* A8988 800CD588 C60A0024 */  lwc1       $f10, 0x24($s0)
/* A898C 800CD58C 8FA700B8 */  lw         $a3, 0xb8($sp)
/* A8990 800CD590 27AE00F4 */  addiu      $t6, $sp, 0xf4
/* A8994 800CD594 460A2200 */  add.s      $f8, $f4, $f10
/* A8998 800CD598 27AB00F4 */  addiu      $t3, $sp, 0xf4
/* A899C 800CD59C E7A800F4 */  swc1       $f8, 0xf4($sp)
/* A89A0 800CD5A0 C6060028 */  lwc1       $f6, 0x28($s0)
/* A89A4 800CD5A4 E7A600F8 */  swc1       $f6, 0xf8($sp)
/* A89A8 800CD5A8 C60A002C */  lwc1       $f10, 0x2c($s0)
/* A89AC 800CD5AC C604005C */  lwc1       $f4, 0x5c($s0)
/* A89B0 800CD5B0 460A2200 */  add.s      $f8, $f4, $f10
/* A89B4 800CD5B4 10E0000E */  beqz       $a3, .L800CD5F0
/* A89B8 800CD5B8 E7A800FC */   swc1      $f8, 0xfc($sp)
/* A89BC 800CD5BC 8DC10000 */  lw         $at, ($t6)
/* A89C0 800CD5C0 26180060 */  addiu      $t8, $s0, 0x60
/* A89C4 800CD5C4 AFA10000 */  sw         $at, ($sp)
/* A89C8 800CD5C8 8DC50004 */  lw         $a1, 4($t6)
/* A89CC 800CD5CC 8FA40000 */  lw         $a0, ($sp)
/* A89D0 800CD5D0 AFA50004 */  sw         $a1, 4($sp)
/* A89D4 800CD5D4 8DC60008 */  lw         $a2, 8($t6)
/* A89D8 800CD5D8 AFB00014 */  sw         $s0, 0x14($sp)
/* A89DC 800CD5DC AFB80010 */  sw         $t8, 0x10($sp)
/* A89E0 800CD5E0 0C032D1C */  jal        func_800CB470
/* A89E4 800CD5E4 AFA60008 */   sw        $a2, 8($sp)
/* A89E8 800CD5E8 1000000E */  b          .L800CD624
/* A89EC 800CD5EC 8FBF0034 */   lw        $ra, 0x34($sp)
.L800CD5F0:
/* A89F0 800CD5F0 8D610000 */  lw         $at, ($t3)
/* A89F4 800CD5F4 260A0060 */  addiu      $t2, $s0, 0x60
/* A89F8 800CD5F8 00003825 */  or         $a3, $zero, $zero
/* A89FC 800CD5FC AFA10000 */  sw         $at, ($sp)
/* A8A00 800CD600 8D650004 */  lw         $a1, 4($t3)
/* A8A04 800CD604 8FA40000 */  lw         $a0, ($sp)
/* A8A08 800CD608 AFA50004 */  sw         $a1, 4($sp)
/* A8A0C 800CD60C 8D660008 */  lw         $a2, 8($t3)
/* A8A10 800CD610 AFB00014 */  sw         $s0, 0x14($sp)
/* A8A14 800CD614 AFAA0010 */  sw         $t2, 0x10($sp)
/* A8A18 800CD618 0C032D1C */  jal        func_800CB470
/* A8A1C 800CD61C AFA60008 */   sw        $a2, 8($sp)
/* A8A20 800CD620 8FBF0034 */  lw         $ra, 0x34($sp)
.L800CD624:
/* A8A24 800CD624 8FB00030 */  lw         $s0, 0x30($sp)
/* A8A28 800CD628 27BD0118 */  addiu      $sp, $sp, 0x118
/* A8A2C 800CD62C 03E00008 */  jr         $ra
/* A8A30 800CD630 00000000 */   nop

glabel func_800CD634
/* A8A34 800CD634 27BDFF08 */  addiu      $sp, $sp, -0xf8
/* A8A38 800CD638 AFBF0034 */  sw         $ra, 0x34($sp)
/* A8A3C 800CD63C AFB00030 */  sw         $s0, 0x30($sp)
/* A8A40 800CD640 C4860024 */  lwc1       $f6, 0x24($a0)
/* A8A44 800CD644 C4840054 */  lwc1       $f4, 0x54($a0)
/* A8A48 800CD648 24010001 */  addiu      $at, $zero, 1
/* A8A4C 800CD64C 00808025 */  or         $s0, $a0, $zero
/* A8A50 800CD650 46062200 */  add.s      $f8, $f4, $f6
/* A8A54 800CD654 E7A800EC */  swc1       $f8, 0xec($sp)
/* A8A58 800CD658 C48A0028 */  lwc1       $f10, 0x28($a0)
/* A8A5C 800CD65C E7AA00F0 */  swc1       $f10, 0xf0($sp)
/* A8A60 800CD660 C484002C */  lwc1       $f4, 0x2c($a0)
/* A8A64 800CD664 C492005C */  lwc1       $f18, 0x5c($a0)
/* A8A68 800CD668 46049180 */  add.s      $f6, $f18, $f4
/* A8A6C 800CD66C E7A600F4 */  swc1       $f6, 0xf4($sp)
/* A8A70 800CD670 C4880030 */  lwc1       $f8, 0x30($a0)
/* A8A74 800CD674 E7A800C8 */  swc1       $f8, 0xc8($sp)
/* A8A78 800CD678 C48A0034 */  lwc1       $f10, 0x34($a0)
/* A8A7C 800CD67C E7AA00CC */  swc1       $f10, 0xcc($sp)
/* A8A80 800CD680 C4920038 */  lwc1       $f18, 0x38($a0)
/* A8A84 800CD684 E7B200D0 */  swc1       $f18, 0xd0($sp)
/* A8A88 800CD688 8C8E00AC */  lw         $t6, 0xac($a0)
/* A8A8C 800CD68C AC80009C */  sw         $zero, 0x9c($a0)
/* A8A90 800CD690 51C1003E */  beql       $t6, $at, .L800CD78C
/* A8A94 800CD694 AFA000B4 */   sw        $zero, 0xb4($sp)
/* A8A98 800CD698 8C8F0098 */  lw         $t7, 0x98($a0)
/* A8A9C 800CD69C 27B800EC */  addiu      $t8, $sp, 0xec
/* A8AA0 800CD6A0 51E0003A */  beql       $t7, $zero, .L800CD78C
/* A8AA4 800CD6A4 AFA000B4 */   sw        $zero, 0xb4($sp)
/* A8AA8 800CD6A8 8F010000 */  lw         $at, ($t8)
/* A8AAC 800CD6AC AFA10000 */  sw         $at, ($sp)
/* A8AB0 800CD6B0 8F050004 */  lw         $a1, 4($t8)
/* A8AB4 800CD6B4 AFA50004 */  sw         $a1, 4($sp)
/* A8AB8 800CD6B8 8F060008 */  lw         $a2, 8($t8)
/* A8ABC 800CD6BC AFA60008 */  sw         $a2, 8($sp)
/* A8AC0 800CD6C0 8C870060 */  lw         $a3, 0x60($a0)
/* A8AC4 800CD6C4 0C032CA5 */  jal        func_800CB294
/* A8AC8 800CD6C8 8FA40000 */   lw        $a0, ($sp)
/* A8ACC 800CD6CC 14400015 */  bnez       $v0, .L800CD724
/* A8AD0 800CD6D0 3C048011 */   lui       $a0, %hi(D_801102DC)
/* A8AD4 800CD6D4 0C035D18 */  jal        func_800D7460
/* A8AD8 800CD6D8 248402DC */   addiu     $a0, $a0, %lo(D_801102DC)
/* A8ADC 800CD6DC C7A400EC */  lwc1       $f4, 0xec($sp)
/* A8AE0 800CD6E0 C7A800F0 */  lwc1       $f8, 0xf0($sp)
/* A8AE4 800CD6E4 C7B200F4 */  lwc1       $f18, 0xf4($sp)
/* A8AE8 800CD6E8 460021A1 */  cvt.d.s    $f6, $f4
/* A8AEC 800CD6EC 460042A1 */  cvt.d.s    $f10, $f8
/* A8AF0 800CD6F0 46009121 */  cvt.d.s    $f4, $f18
/* A8AF4 800CD6F4 44073000 */  mfc1       $a3, $f6
/* A8AF8 800CD6F8 44063800 */  mfc1       $a2, $f7
/* A8AFC 800CD6FC 3C048011 */  lui        $a0, %hi(D_8011030C)
/* A8B00 800CD700 2484030C */  addiu      $a0, $a0, %lo(D_8011030C)
/* A8B04 800CD704 F7A40018 */  sdc1       $f4, 0x18($sp)
/* A8B08 800CD708 0C035D18 */  jal        func_800D7460
/* A8B0C 800CD70C F7AA0010 */   sdc1      $f10, 0x10($sp)
/* A8B10 800CD710 3C048011 */  lui        $a0, %hi(D_80110320)
/* A8B14 800CD714 0C035D18 */  jal        func_800D7460
/* A8B18 800CD718 24840320 */   addiu     $a0, $a0, %lo(D_80110320)
/* A8B1C 800CD71C 100001F7 */  b          .L800CDEFC
/* A8B20 800CD720 8FBF0034 */   lw        $ra, 0x34($sp)
.L800CD724:
/* A8B24 800CD724 8C410094 */  lw         $at, 0x94($v0)
/* A8B28 800CD728 27A900EC */  addiu      $t1, $sp, 0xec
/* A8B2C 800CD72C 3C0D8023 */  lui        $t5, %hi(D_80236980)
/* A8B30 800CD730 AD210000 */  sw         $at, ($t1)
/* A8B34 800CD734 8C4B0098 */  lw         $t3, 0x98($v0)
/* A8B38 800CD738 25AD6980 */  addiu      $t5, $t5, %lo(D_80236980)
/* A8B3C 800CD73C AD2B0004 */  sw         $t3, 4($t1)
/* A8B40 800CD740 8C41009C */  lw         $at, 0x9c($v0)
/* A8B44 800CD744 AD210008 */  sw         $at, 8($t1)
/* A8B48 800CD748 8C430004 */  lw         $v1, 4($v0)
/* A8B4C 800CD74C 240100A0 */  addiu      $at, $zero, 0xa0
/* A8B50 800CD750 00036080 */  sll        $t4, $v1, 2
/* A8B54 800CD754 01836021 */  addu       $t4, $t4, $v1
/* A8B58 800CD758 000C6080 */  sll        $t4, $t4, 2
/* A8B5C 800CD75C 01836023 */  subu       $t4, $t4, $v1
/* A8B60 800CD760 000C6100 */  sll        $t4, $t4, 4
/* A8B64 800CD764 018D2021 */  addu       $a0, $t4, $t5
/* A8B68 800CD768 AE0300E0 */  sw         $v1, 0xe0($s0)
/* A8B6C 800CD76C 8C8E00E4 */  lw         $t6, 0xe4($a0)
/* A8B70 800CD770 AE000098 */  sw         $zero, 0x98($s0)
/* A8B74 800CD774 004E7823 */  subu       $t7, $v0, $t6
/* A8B78 800CD778 01E1001A */  div        $zero, $t7, $at
/* A8B7C 800CD77C 0000C812 */  mflo       $t9
/* A8B80 800CD780 AE1900E4 */  sw         $t9, 0xe4($s0)
/* A8B84 800CD784 00000000 */  nop
/* A8B88 800CD788 AFA000B4 */  sw         $zero, 0xb4($sp)
.L800CD78C:
/* A8B8C 800CD78C 8E180098 */  lw         $t8, 0x98($s0)
/* A8B90 800CD790 5700009D */  bnel       $t8, $zero, .L800CDA08
/* A8B94 800CD794 8FA200B4 */   lw        $v0, 0xb4($sp)
/* A8B98 800CD798 44803000 */  mtc1       $zero, $f6
/* A8B9C 800CD79C 3C088023 */  lui        $t0, %hi(D_80236980)
/* A8BA0 800CD7A0 C7A800EC */  lwc1       $f8, 0xec($sp)
/* A8BA4 800CD7A4 E7A600CC */  swc1       $f6, 0xcc($sp)
/* A8BA8 800CD7A8 8E0200E0 */  lw         $v0, 0xe0($s0)
/* A8BAC 800CD7AC 25086980 */  addiu      $t0, $t0, %lo(D_80236980)
/* A8BB0 800CD7B0 04410064 */  bgez       $v0, .L800CD944
/* A8BB4 800CD7B4 00025080 */   sll       $t2, $v0, 2
/* A8BB8 800CD7B8 E7A8006C */  swc1       $f8, 0x6c($sp)
/* A8BBC 800CD7BC C6120040 */  lwc1       $f18, 0x40($s0)
/* A8BC0 800CD7C0 3C013FE0 */  lui        $at, 0x3fe0
/* A8BC4 800CD7C4 44811800 */  mtc1       $at, $f3
/* A8BC8 800CD7C8 44801000 */  mtc1       $zero, $f2
/* A8BCC 800CD7CC 46009121 */  cvt.d.s    $f4, $f18
/* A8BD0 800CD7D0 C7AA00F0 */  lwc1       $f10, 0xf0($sp)
/* A8BD4 800CD7D4 46222182 */  mul.d      $f6, $f4, $f2
/* A8BD8 800CD7D8 C7A400F4 */  lwc1       $f4, 0xf4($sp)
/* A8BDC 800CD7DC 46005021 */  cvt.d.s    $f0, $f10
/* A8BE0 800CD7E0 E7A80060 */  swc1       $f8, 0x60($sp)
/* A8BE4 800CD7E4 E7A40074 */  swc1       $f4, 0x74($sp)
/* A8BE8 800CD7E8 27A8006C */  addiu      $t0, $sp, 0x6c
/* A8BEC 800CD7EC 27AB0060 */  addiu      $t3, $sp, 0x60
/* A8BF0 800CD7F0 27AE0078 */  addiu      $t6, $sp, 0x78
/* A8BF4 800CD7F4 46260281 */  sub.d      $f10, $f0, $f6
/* A8BF8 800CD7F8 462054A0 */  cvt.s.d    $f18, $f10
/* A8BFC 800CD7FC E7B20070 */  swc1       $f18, 0x70($sp)
/* A8C00 800CD800 C6060040 */  lwc1       $f6, 0x40($s0)
/* A8C04 800CD804 E7A40068 */  swc1       $f4, 0x68($sp)
/* A8C08 800CD808 460032A1 */  cvt.d.s    $f10, $f6
/* A8C0C 800CD80C 46225482 */  mul.d      $f18, $f10, $f2
/* A8C10 800CD810 46320200 */  add.d      $f8, $f0, $f18
/* A8C14 800CD814 462041A0 */  cvt.s.d    $f6, $f8
/* A8C18 800CD818 E7A60064 */  swc1       $f6, 0x64($sp)
/* A8C1C 800CD81C 8D010000 */  lw         $at, ($t0)
/* A8C20 800CD820 AFA10000 */  sw         $at, ($sp)
/* A8C24 800CD824 8D050004 */  lw         $a1, 4($t0)
/* A8C28 800CD828 8FA40000 */  lw         $a0, ($sp)
/* A8C2C 800CD82C AFA50004 */  sw         $a1, 4($sp)
/* A8C30 800CD830 8D010008 */  lw         $at, 8($t0)
/* A8C34 800CD834 AFA10008 */  sw         $at, 8($sp)
/* A8C38 800CD838 8D610000 */  lw         $at, ($t3)
/* A8C3C 800CD83C 8FA60008 */  lw         $a2, 8($sp)
/* A8C40 800CD840 AFA1000C */  sw         $at, 0xc($sp)
/* A8C44 800CD844 8D6D0004 */  lw         $t5, 4($t3)
/* A8C48 800CD848 8FA7000C */  lw         $a3, 0xc($sp)
/* A8C4C 800CD84C AFAD0010 */  sw         $t5, 0x10($sp)
/* A8C50 800CD850 8D610008 */  lw         $at, 8($t3)
/* A8C54 800CD854 AFAE0018 */  sw         $t6, 0x18($sp)
/* A8C58 800CD858 0C02BAAA */  jal        func_800AEAA8
/* A8C5C 800CD85C AFA10014 */   sw        $at, 0x14($sp)
/* A8C60 800CD860 27A40078 */  addiu      $a0, $sp, 0x78
/* A8C64 800CD864 24050077 */  addiu      $a1, $zero, 0x77
/* A8C68 800CD868 0C0325D2 */  jal        func_800C9748
/* A8C6C 800CD86C 24060002 */   addiu     $a2, $zero, 2
/* A8C70 800CD870 3C013FE0 */  lui        $at, 0x3fe0
/* A8C74 800CD874 44811800 */  mtc1       $at, $f3
/* A8C78 800CD878 27AF00EC */  addiu      $t7, $sp, 0xec
/* A8C7C 800CD87C 8DE10000 */  lw         $at, ($t7)
/* A8C80 800CD880 44801000 */  mtc1       $zero, $f2
/* A8C84 800CD884 AFA10000 */  sw         $at, ($sp)
/* A8C88 800CD888 8DE50004 */  lw         $a1, 4($t7)
/* A8C8C 800CD88C 8FA40000 */  lw         $a0, ($sp)
/* A8C90 800CD890 AFA50004 */  sw         $a1, 4($sp)
/* A8C94 800CD894 8DE60008 */  lw         $a2, 8($t7)
/* A8C98 800CD898 AFA60008 */  sw         $a2, 8($sp)
/* A8C9C 800CD89C C6000040 */  lwc1       $f0, 0x40($s0)
/* A8CA0 800CD8A0 460002A1 */  cvt.d.s    $f10, $f0
/* A8CA4 800CD8A4 46000187 */  neg.s      $f6, $f0
/* A8CA8 800CD8A8 46225482 */  mul.d      $f18, $f10, $f2
/* A8CAC 800CD8AC 46003121 */  cvt.d.s    $f4, $f6
/* A8CB0 800CD8B0 46222282 */  mul.d      $f10, $f4, $f2
/* A8CB4 800CD8B4 46209220 */  cvt.s.d    $f8, $f18
/* A8CB8 800CD8B8 462054A0 */  cvt.s.d    $f18, $f10
/* A8CBC 800CD8BC 44074000 */  mfc1       $a3, $f8
/* A8CC0 800CD8C0 0C032BE2 */  jal        func_800CAF88
/* A8CC4 800CD8C4 E7B20010 */   swc1      $f18, 0x10($sp)
/* A8CC8 800CD8C8 14400007 */  bnez       $v0, .L800CD8E8
/* A8CCC 800CD8CC AFA200B4 */   sw        $v0, 0xb4($sp)
/* A8CD0 800CD8D0 2402FFFF */  addiu      $v0, $zero, -1
/* A8CD4 800CD8D4 240A0001 */  addiu      $t2, $zero, 1
/* A8CD8 800CD8D8 AE0A0098 */  sw         $t2, 0x98($s0)
/* A8CDC 800CD8DC AE0200E0 */  sw         $v0, 0xe0($s0)
/* A8CE0 800CD8E0 10000027 */  b          .L800CD980
/* A8CE4 800CD8E4 AE0200E4 */   sw        $v0, 0xe4($s0)
.L800CD8E8:
/* A8CE8 800CD8E8 8C480004 */  lw         $t0, 4($v0)
/* A8CEC 800CD8EC 3C0B8023 */  lui        $t3, 0x8023
/* A8CF0 800CD8F0 240100A0 */  addiu      $at, $zero, 0xa0
/* A8CF4 800CD8F4 00086080 */  sll        $t4, $t0, 2
/* A8CF8 800CD8F8 01886021 */  addu       $t4, $t4, $t0
/* A8CFC 800CD8FC 000C6080 */  sll        $t4, $t4, 2
/* A8D00 800CD900 01886023 */  subu       $t4, $t4, $t0
/* A8D04 800CD904 000C6100 */  sll        $t4, $t4, 4
/* A8D08 800CD908 016C5821 */  addu       $t3, $t3, $t4
/* A8D0C 800CD90C AE0800E0 */  sw         $t0, 0xe0($s0)
/* A8D10 800CD910 8D6B6A64 */  lw         $t3, 0x6a64($t3)
/* A8D14 800CD914 27B900EC */  addiu      $t9, $sp, 0xec
/* A8D18 800CD918 004B6823 */  subu       $t5, $v0, $t3
/* A8D1C 800CD91C 01A1001A */  div        $zero, $t5, $at
/* A8D20 800CD920 00007012 */  mflo       $t6
/* A8D24 800CD924 AE0E00E4 */  sw         $t6, 0xe4($s0)
/* A8D28 800CD928 8C410094 */  lw         $at, 0x94($v0)
/* A8D2C 800CD92C AF210000 */  sw         $at, ($t9)
/* A8D30 800CD930 8C580098 */  lw         $t8, 0x98($v0)
/* A8D34 800CD934 AF380004 */  sw         $t8, 4($t9)
/* A8D38 800CD938 8C41009C */  lw         $at, 0x9c($v0)
/* A8D3C 800CD93C 10000010 */  b          .L800CD980
/* A8D40 800CD940 AF210008 */   sw        $at, 8($t9)
.L800CD944:
/* A8D44 800CD944 01425021 */  addu       $t2, $t2, $v0
/* A8D48 800CD948 000A5080 */  sll        $t2, $t2, 2
/* A8D4C 800CD94C 01425023 */  subu       $t2, $t2, $v0
/* A8D50 800CD950 000A5100 */  sll        $t2, $t2, 4
/* A8D54 800CD954 01482021 */  addu       $a0, $t2, $t0
/* A8D58 800CD958 0C0325C1 */  jal        func_800C9704
/* A8D5C 800CD95C AFA400B8 */   sw        $a0, 0xb8($sp)
/* A8D60 800CD960 8FA400B8 */  lw         $a0, 0xb8($sp)
/* A8D64 800CD964 8E0C00E4 */  lw         $t4, 0xe4($s0)
/* A8D68 800CD968 8C8900E4 */  lw         $t1, 0xe4($a0)
/* A8D6C 800CD96C 000C5880 */  sll        $t3, $t4, 2
/* A8D70 800CD970 016C5821 */  addu       $t3, $t3, $t4
/* A8D74 800CD974 000B5940 */  sll        $t3, $t3, 5
/* A8D78 800CD978 012B6821 */  addu       $t5, $t1, $t3
/* A8D7C 800CD97C AFAD00B4 */  sw         $t5, 0xb4($sp)
.L800CD980:
/* A8D80 800CD980 8FAE00B4 */  lw         $t6, 0xb4($sp)
/* A8D84 800CD984 11C0001F */  beqz       $t6, .L800CDA04
/* A8D88 800CD988 01C02025 */   or        $a0, $t6, $zero
/* A8D8C 800CD98C 0C035E79 */  jal        func_800D79E4
/* A8D90 800CD990 24050002 */   addiu     $a1, $zero, 2
/* A8D94 800CD994 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* A8D98 800CD998 44804800 */  mtc1       $zero, $f9
/* A8D9C 800CD99C 44804000 */  mtc1       $zero, $f8
/* A8DA0 800CD9A0 C5E60060 */  lwc1       $f6, 0x60($t7)
/* A8DA4 800CD9A4 27A400C8 */  addiu      $a0, $sp, 0xc8
/* A8DA8 800CD9A8 46003121 */  cvt.d.s    $f4, $f6
/* A8DAC 800CD9AC 4628203E */  c.le.d     $f4, $f8
/* A8DB0 800CD9B0 00000000 */  nop
/* A8DB4 800CD9B4 4502000A */  bc1fl      .L800CD9E0
/* A8DB8 800CD9B8 8C810000 */   lw        $at, ($a0)
/* A8DBC 800CD9BC 3C048011 */  lui        $a0, %hi(D_80110338)
/* A8DC0 800CD9C0 0C035D18 */  jal        func_800D7460
/* A8DC4 800CD9C4 24840338 */   addiu     $a0, $a0, %lo(D_80110338)
/* A8DC8 800CD9C8 3C048011 */  lui        $a0, %hi(D_8011036C)
/* A8DCC 800CD9CC 0C035D18 */  jal        func_800D7460
/* A8DD0 800CD9D0 2484036C */   addiu     $a0, $a0, %lo(D_8011036C)
/* A8DD4 800CD9D4 10000149 */  b          .L800CDEFC
/* A8DD8 800CD9D8 8FBF0034 */   lw        $ra, 0x34($sp)
/* A8DDC 800CD9DC 8C810000 */  lw         $at, ($a0)
.L800CD9E0:
/* A8DE0 800CD9E0 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* A8DE4 800CD9E4 AFA10004 */  sw         $at, 4($sp)
/* A8DE8 800CD9E8 8C860004 */  lw         $a2, 4($a0)
/* A8DEC 800CD9EC 8FA50004 */  lw         $a1, 4($sp)
/* A8DF0 800CD9F0 AFA60008 */  sw         $a2, 8($sp)
/* A8DF4 800CD9F4 8C870008 */  lw         $a3, 8($a0)
/* A8DF8 800CD9F8 AFAA0010 */  sw         $t2, 0x10($sp)
/* A8DFC 800CD9FC 0C035E93 */  jal        func_800D7A4C
/* A8E00 800CDA00 AFA7000C */   sw        $a3, 0xc($sp)
.L800CDA04:
/* A8E04 800CDA04 8FA200B4 */  lw         $v0, 0xb4($sp)
.L800CDA08:
/* A8E08 800CDA08 27A800EC */  addiu      $t0, $sp, 0xec
/* A8E0C 800CDA0C 50400018 */  beql       $v0, $zero, .L800CDA70
/* A8E10 800CDA10 C7A000C8 */   lwc1      $f0, 0xc8($sp)
/* A8E14 800CDA14 8D010000 */  lw         $at, ($t0)
/* A8E18 800CDA18 27A40054 */  addiu      $a0, $sp, 0x54
/* A8E1C 800CDA1C AFA10004 */  sw         $at, 4($sp)
/* A8E20 800CDA20 8D060004 */  lw         $a2, 4($t0)
/* A8E24 800CDA24 8FA50004 */  lw         $a1, 4($sp)
/* A8E28 800CDA28 AFA60008 */  sw         $a2, 8($sp)
/* A8E2C 800CDA2C 8D070008 */  lw         $a3, 8($t0)
/* A8E30 800CDA30 AFA20010 */  sw         $v0, 0x10($sp)
/* A8E34 800CDA34 0C02CAAD */  jal        func_800B2AB4
/* A8E38 800CDA38 AFA7000C */   sw        $a3, 0xc($sp)
/* A8E3C 800CDA3C C7A000C8 */  lwc1       $f0, 0xc8($sp)
/* A8E40 800CDA40 C7A200CC */  lwc1       $f2, 0xcc($sp)
/* A8E44 800CDA44 C7AE00D0 */  lwc1       $f14, 0xd0($sp)
/* A8E48 800CDA48 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* A8E4C 800CDA4C C7B20058 */  lwc1       $f18, 0x58($sp)
/* A8E50 800CDA50 C7A6005C */  lwc1       $f6, 0x5c($sp)
/* A8E54 800CDA54 460A0000 */  add.s      $f0, $f0, $f10
/* A8E58 800CDA58 46121080 */  add.s      $f2, $f2, $f18
/* A8E5C 800CDA5C E7A000C8 */  swc1       $f0, 0xc8($sp)
/* A8E60 800CDA60 46067380 */  add.s      $f14, $f14, $f6
/* A8E64 800CDA64 E7A200CC */  swc1       $f2, 0xcc($sp)
/* A8E68 800CDA68 E7AE00D0 */  swc1       $f14, 0xd0($sp)
/* A8E6C 800CDA6C C7A000C8 */  lwc1       $f0, 0xc8($sp)
.L800CDA70:
/* A8E70 800CDA70 C7A200CC */  lwc1       $f2, 0xcc($sp)
/* A8E74 800CDA74 C7AE00D0 */  lwc1       $f14, 0xd0($sp)
/* A8E78 800CDA78 46000202 */  mul.s      $f8, $f0, $f0
/* A8E7C 800CDA7C 00000000 */  nop
/* A8E80 800CDA80 46021102 */  mul.s      $f4, $f2, $f2
/* A8E84 800CDA84 46044280 */  add.s      $f10, $f8, $f4
/* A8E88 800CDA88 460E7482 */  mul.s      $f18, $f14, $f14
/* A8E8C 800CDA8C 0C036C2C */  jal        func_800DB0B0
/* A8E90 800CDA90 46125300 */   add.s     $f12, $f10, $f18
/* A8E94 800CDA94 44803800 */  mtc1       $zero, $f7
/* A8E98 800CDA98 44803000 */  mtc1       $zero, $f6
/* A8E9C 800CDA9C 46000221 */  cvt.d.s    $f8, $f0
/* A8EA0 800CDAA0 46000406 */  mov.s      $f16, $f0
/* A8EA4 800CDAA4 46283032 */  c.eq.d     $f6, $f8
/* A8EA8 800CDAA8 27AB00EC */  addiu      $t3, $sp, 0xec
/* A8EAC 800CDAAC 45020011 */  bc1fl      .L800CDAF4
/* A8EB0 800CDAB0 8E0200A8 */   lw        $v0, 0xa8($s0)
/* A8EB4 800CDAB4 8D610000 */  lw         $at, ($t3)
/* A8EB8 800CDAB8 240F0001 */  addiu      $t7, $zero, 1
/* A8EBC 800CDABC 02002025 */  or         $a0, $s0, $zero
/* A8EC0 800CDAC0 AFA10004 */  sw         $at, 4($sp)
/* A8EC4 800CDAC4 8D660004 */  lw         $a2, 4($t3)
/* A8EC8 800CDAC8 8FA50004 */  lw         $a1, 4($sp)
/* A8ECC 800CDACC AFA60008 */  sw         $a2, 8($sp)
/* A8ED0 800CDAD0 8D670008 */  lw         $a3, 8($t3)
/* A8ED4 800CDAD4 AFAF0010 */  sw         $t7, 0x10($sp)
/* A8ED8 800CDAD8 0C033205 */  jal        func_800CC814
/* A8EDC 800CDADC AFA7000C */   sw        $a3, 0xc($sp)
/* A8EE0 800CDAE0 0C032F02 */  jal        func_800CBC08
/* A8EE4 800CDAE4 02002025 */   or        $a0, $s0, $zero
/* A8EE8 800CDAE8 10000104 */  b          .L800CDEFC
/* A8EEC 800CDAEC 8FBF0034 */   lw        $ra, 0x34($sp)
/* A8EF0 800CDAF0 8E0200A8 */  lw         $v0, 0xa8($s0)
.L800CDAF4:
/* A8EF4 800CDAF4 C7A000C8 */  lwc1       $f0, 0xc8($sp)
/* A8EF8 800CDAF8 C7A200CC */  lwc1       $f2, 0xcc($sp)
/* A8EFC 800CDAFC 10400008 */  beqz       $v0, .L800CDB20
/* A8F00 800CDB00 C7AE00D0 */   lwc1      $f14, 0xd0($sp)
/* A8F04 800CDB04 24010001 */  addiu      $at, $zero, 1
/* A8F08 800CDB08 1041000F */  beq        $v0, $at, .L800CDB48
/* A8F0C 800CDB0C 24010002 */   addiu     $at, $zero, 2
/* A8F10 800CDB10 5041000E */  beql       $v0, $at, .L800CDB4C
/* A8F14 800CDB14 C60A003C */   lwc1      $f10, 0x3c($s0)
/* A8F18 800CDB18 10000089 */  b          .L800CDD40
/* A8F1C 800CDB1C 3C013FE0 */   lui       $at, 0x3fe0
.L800CDB20:
/* A8F20 800CDB20 C7A400EC */  lwc1       $f4, 0xec($sp)
/* A8F24 800CDB24 C7B200F0 */  lwc1       $f18, 0xf0($sp)
/* A8F28 800CDB28 C7A800F4 */  lwc1       $f8, 0xf4($sp)
/* A8F2C 800CDB2C 46002280 */  add.s      $f10, $f4, $f0
/* A8F30 800CDB30 46029180 */  add.s      $f6, $f18, $f2
/* A8F34 800CDB34 E7AA00D4 */  swc1       $f10, 0xd4($sp)
/* A8F38 800CDB38 460E4100 */  add.s      $f4, $f8, $f14
/* A8F3C 800CDB3C E7A600D8 */  swc1       $f6, 0xd8($sp)
/* A8F40 800CDB40 1000007E */  b          .L800CDD3C
/* A8F44 800CDB44 E7A400DC */   swc1      $f4, 0xdc($sp)
.L800CDB48:
/* A8F48 800CDB48 C60A003C */  lwc1       $f10, 0x3c($s0)
.L800CDB4C:
/* A8F4C 800CDB4C C7B200C8 */  lwc1       $f18, 0xc8($sp)
/* A8F50 800CDB50 C7A600CC */  lwc1       $f6, 0xcc($sp)
/* A8F54 800CDB54 46105003 */  div.s      $f0, $f10, $f16
/* A8F58 800CDB58 C7A800D0 */  lwc1       $f8, 0xd0($sp)
/* A8F5C 800CDB5C 3C013FE0 */  lui        $at, 0x3fe0
/* A8F60 800CDB60 44812800 */  mtc1       $at, $f5
/* A8F64 800CDB64 27B900EC */  addiu      $t9, $sp, 0xec
/* A8F68 800CDB68 27AC00E0 */  addiu      $t4, $sp, 0xe0
/* A8F6C 800CDB6C 27AD0094 */  addiu      $t5, $sp, 0x94
/* A8F70 800CDB70 46009082 */  mul.s      $f2, $f18, $f0
/* A8F74 800CDB74 00000000 */  nop
/* A8F78 800CDB78 46003302 */  mul.s      $f12, $f6, $f0
/* A8F7C 800CDB7C 00000000 */  nop
/* A8F80 800CDB80 46004382 */  mul.s      $f14, $f8, $f0
/* A8F84 800CDB84 E7A200BC */  swc1       $f2, 0xbc($sp)
/* A8F88 800CDB88 E7AC00C0 */  swc1       $f12, 0xc0($sp)
/* A8F8C 800CDB8C E7AE00C4 */  swc1       $f14, 0xc4($sp)
/* A8F90 800CDB90 C6040040 */  lwc1       $f4, 0x40($s0)
/* A8F94 800CDB94 460022A1 */  cvt.d.s    $f10, $f4
/* A8F98 800CDB98 44802000 */  mtc1       $zero, $f4
/* A8F9C 800CDB9C 00000000 */  nop
/* A8FA0 800CDBA0 46245282 */  mul.d      $f10, $f10, $f4
/* A8FA4 800CDBA4 C7A400F0 */  lwc1       $f4, 0xf0($sp)
/* A8FA8 800CDBA8 46002121 */  cvt.d.s    $f4, $f4
/* A8FAC 800CDBAC 462A2100 */  add.d      $f4, $f4, $f10
/* A8FB0 800CDBB0 462022A0 */  cvt.s.d    $f10, $f4
/* A8FB4 800CDBB4 C7A400EC */  lwc1       $f4, 0xec($sp)
/* A8FB8 800CDBB8 46122100 */  add.s      $f4, $f4, $f18
/* A8FBC 800CDBBC E7AA00F0 */  swc1       $f10, 0xf0($sp)
/* A8FC0 800CDBC0 46065480 */  add.s      $f18, $f10, $f6
/* A8FC4 800CDBC4 C7AA00F4 */  lwc1       $f10, 0xf4($sp)
/* A8FC8 800CDBC8 E7A400D4 */  swc1       $f4, 0xd4($sp)
/* A8FCC 800CDBCC 46085180 */  add.s      $f6, $f10, $f8
/* A8FD0 800CDBD0 E7B200D8 */  swc1       $f18, 0xd8($sp)
/* A8FD4 800CDBD4 46022280 */  add.s      $f10, $f4, $f2
/* A8FD8 800CDBD8 E7A600DC */  swc1       $f6, 0xdc($sp)
/* A8FDC 800CDBDC 460E3100 */  add.s      $f4, $f6, $f14
/* A8FE0 800CDBE0 E7AA00E0 */  swc1       $f10, 0xe0($sp)
/* A8FE4 800CDBE4 460C9200 */  add.s      $f8, $f18, $f12
/* A8FE8 800CDBE8 E7A400E8 */  swc1       $f4, 0xe8($sp)
/* A8FEC 800CDBEC E7A800E4 */  swc1       $f8, 0xe4($sp)
/* A8FF0 800CDBF0 8F210000 */  lw         $at, ($t9)
/* A8FF4 800CDBF4 AFA10000 */  sw         $at, ($sp)
/* A8FF8 800CDBF8 8F250004 */  lw         $a1, 4($t9)
/* A8FFC 800CDBFC 8FA40000 */  lw         $a0, ($sp)
/* A9000 800CDC00 AFA50004 */  sw         $a1, 4($sp)
/* A9004 800CDC04 8F210008 */  lw         $at, 8($t9)
/* A9008 800CDC08 AFA10008 */  sw         $at, 8($sp)
/* A900C 800CDC0C 8D810000 */  lw         $at, ($t4)
/* A9010 800CDC10 8FA60008 */  lw         $a2, 8($sp)
/* A9014 800CDC14 AFA1000C */  sw         $at, 0xc($sp)
/* A9018 800CDC18 8D890004 */  lw         $t1, 4($t4)
/* A901C 800CDC1C 8FA7000C */  lw         $a3, 0xc($sp)
/* A9020 800CDC20 AFA90010 */  sw         $t1, 0x10($sp)
/* A9024 800CDC24 8D810008 */  lw         $at, 8($t4)
/* A9028 800CDC28 AFAD0018 */  sw         $t5, 0x18($sp)
/* A902C 800CDC2C 0C02BAAA */  jal        func_800AEAA8
/* A9030 800CDC30 AFA10014 */   sw        $at, 0x14($sp)
/* A9034 800CDC34 C7AA0098 */  lwc1       $f10, 0x98($sp)
/* A9038 800CDC38 C6120040 */  lwc1       $f18, 0x40($s0)
/* A903C 800CDC3C 27A40094 */  addiu      $a0, $sp, 0x94
/* A9040 800CDC40 24050077 */  addiu      $a1, $zero, 0x77
/* A9044 800CDC44 46125201 */  sub.s      $f8, $f10, $f18
/* A9048 800CDC48 24060004 */  addiu      $a2, $zero, 4
/* A904C 800CDC4C 0C0325D2 */  jal        func_800C9748
/* A9050 800CDC50 E7A80098 */   swc1      $f8, 0x98($sp)
/* A9054 800CDC54 27AB00EC */  addiu      $t3, $sp, 0xec
/* A9058 800CDC58 8D610000 */  lw         $at, ($t3)
/* A905C 800CDC5C 27B800E0 */  addiu      $t8, $sp, 0xe0
/* A9060 800CDC60 24080077 */  addiu      $t0, $zero, 0x77
/* A9064 800CDC64 AFA10000 */  sw         $at, ($sp)
/* A9068 800CDC68 8D650004 */  lw         $a1, 4($t3)
/* A906C 800CDC6C 240C0001 */  addiu      $t4, $zero, 1
/* A9070 800CDC70 24090001 */  addiu      $t1, $zero, 1
/* A9074 800CDC74 AFA50004 */  sw         $a1, 4($sp)
/* A9078 800CDC78 8D610008 */  lw         $at, 8($t3)
/* A907C 800CDC7C 8FA40000 */  lw         $a0, ($sp)
/* A9080 800CDC80 AFA10008 */  sw         $at, 8($sp)
/* A9084 800CDC84 8F010000 */  lw         $at, ($t8)
/* A9088 800CDC88 8FA60008 */  lw         $a2, 8($sp)
/* A908C 800CDC8C AFA1000C */  sw         $at, 0xc($sp)
/* A9090 800CDC90 8F0A0004 */  lw         $t2, 4($t8)
/* A9094 800CDC94 8FA7000C */  lw         $a3, 0xc($sp)
/* A9098 800CDC98 AFAA0010 */  sw         $t2, 0x10($sp)
/* A909C 800CDC9C 8F010008 */  lw         $at, 8($t8)
/* A90A0 800CDCA0 AFA90020 */  sw         $t1, 0x20($sp)
/* A90A4 800CDCA4 AFAC001C */  sw         $t4, 0x1c($sp)
/* A90A8 800CDCA8 AFA80018 */  sw         $t0, 0x18($sp)
/* A90AC 800CDCAC 0C032A3E */  jal        func_800CA8F8
/* A90B0 800CDCB0 AFA10014 */   sw        $at, 0x14($sp)
/* A90B4 800CDCB4 1040000D */  beqz       $v0, .L800CDCEC
/* A90B8 800CDCB8 3C013FE0 */   lui       $at, 0x3fe0
/* A90BC 800CDCBC C4460094 */  lwc1       $f6, 0x94($v0)
/* A90C0 800CDCC0 C7A400BC */  lwc1       $f4, 0xbc($sp)
/* A90C4 800CDCC4 C7A800C0 */  lwc1       $f8, 0xc0($sp)
/* A90C8 800CDCC8 46043281 */  sub.s      $f10, $f6, $f4
/* A90CC 800CDCCC E7AA00D4 */  swc1       $f10, 0xd4($sp)
/* A90D0 800CDCD0 C4520098 */  lwc1       $f18, 0x98($v0)
/* A90D4 800CDCD4 C7AA00C4 */  lwc1       $f10, 0xc4($sp)
/* A90D8 800CDCD8 46089181 */  sub.s      $f6, $f18, $f8
/* A90DC 800CDCDC E7A600D8 */  swc1       $f6, 0xd8($sp)
/* A90E0 800CDCE0 C444009C */  lwc1       $f4, 0x9c($v0)
/* A90E4 800CDCE4 460A2481 */  sub.s      $f18, $f4, $f10
/* A90E8 800CDCE8 E7B200DC */  swc1       $f18, 0xdc($sp)
.L800CDCEC:
/* A90EC 800CDCEC C6080040 */  lwc1       $f8, 0x40($s0)
/* A90F0 800CDCF0 44812800 */  mtc1       $at, $f5
/* A90F4 800CDCF4 44802000 */  mtc1       $zero, $f4
/* A90F8 800CDCF8 460041A1 */  cvt.d.s    $f6, $f8
/* A90FC 800CDCFC C7B200F0 */  lwc1       $f18, 0xf0($sp)
/* A9100 800CDD00 46243282 */  mul.d      $f10, $f6, $f4
/* A9104 800CDD04 46009221 */  cvt.d.s    $f8, $f18
/* A9108 800CDD08 462A4181 */  sub.d      $f6, $f8, $f10
/* A910C 800CDD0C 44805000 */  mtc1       $zero, $f10
/* A9110 800CDD10 44815800 */  mtc1       $at, $f11
/* A9114 800CDD14 46203120 */  cvt.s.d    $f4, $f6
/* A9118 800CDD18 E7A400F0 */  swc1       $f4, 0xf0($sp)
/* A911C 800CDD1C C6120040 */  lwc1       $f18, 0x40($s0)
/* A9120 800CDD20 C7A400D8 */  lwc1       $f4, 0xd8($sp)
/* A9124 800CDD24 46009221 */  cvt.d.s    $f8, $f18
/* A9128 800CDD28 460024A1 */  cvt.d.s    $f18, $f4
/* A912C 800CDD2C 462A4182 */  mul.d      $f6, $f8, $f10
/* A9130 800CDD30 46269201 */  sub.d      $f8, $f18, $f6
/* A9134 800CDD34 462042A0 */  cvt.s.d    $f10, $f8
/* A9138 800CDD38 E7AA00D8 */  swc1       $f10, 0xd8($sp)
.L800CDD3C:
/* A913C 800CDD3C 3C013FE0 */  lui        $at, 0x3fe0
.L800CDD40:
/* A9140 800CDD40 44811800 */  mtc1       $at, $f3
/* A9144 800CDD44 27AD00D4 */  addiu      $t5, $sp, 0xd4
/* A9148 800CDD48 8DA10000 */  lw         $at, ($t5)
/* A914C 800CDD4C 44801000 */  mtc1       $zero, $f2
/* A9150 800CDD50 AFA10000 */  sw         $at, ($sp)
/* A9154 800CDD54 8DA50004 */  lw         $a1, 4($t5)
/* A9158 800CDD58 8FA40000 */  lw         $a0, ($sp)
/* A915C 800CDD5C AFA50004 */  sw         $a1, 4($sp)
/* A9160 800CDD60 8DA60008 */  lw         $a2, 8($t5)
/* A9164 800CDD64 AFA60008 */  sw         $a2, 8($sp)
/* A9168 800CDD68 C6000040 */  lwc1       $f0, 0x40($s0)
/* A916C 800CDD6C 46000121 */  cvt.d.s    $f4, $f0
/* A9170 800CDD70 46000207 */  neg.s      $f8, $f0
/* A9174 800CDD74 46222482 */  mul.d      $f18, $f4, $f2
/* A9178 800CDD78 460042A1 */  cvt.d.s    $f10, $f8
/* A917C 800CDD7C 46225102 */  mul.d      $f4, $f10, $f2
/* A9180 800CDD80 462091A0 */  cvt.s.d    $f6, $f18
/* A9184 800CDD84 462024A0 */  cvt.s.d    $f18, $f4
/* A9188 800CDD88 44073000 */  mfc1       $a3, $f6
/* A918C 800CDD8C 0C032BE2 */  jal        func_800CAF88
/* A9190 800CDD90 E7B20010 */   swc1      $f18, 0x10($sp)
/* A9194 800CDD94 14400020 */  bnez       $v0, .L800CDE18
/* A9198 800CDD98 00403825 */   or        $a3, $v0, $zero
/* A919C 800CDD9C 8E0F00AC */  lw         $t7, 0xac($s0)
/* A91A0 800CDDA0 27B900EC */  addiu      $t9, $sp, 0xec
/* A91A4 800CDDA4 240D0001 */  addiu      $t5, $zero, 1
/* A91A8 800CDDA8 55E00019 */  bnel       $t7, $zero, .L800CDE10
/* A91AC 800CDDAC AE0D0098 */   sw        $t5, 0x98($s0)
/* A91B0 800CDDB0 8F210000 */  lw         $at, ($t9)
/* A91B4 800CDDB4 27A200D4 */  addiu      $v0, $sp, 0xd4
/* A91B8 800CDDB8 24080001 */  addiu      $t0, $zero, 1
/* A91BC 800CDDBC AC410000 */  sw         $at, ($v0)
/* A91C0 800CDDC0 8F2A0004 */  lw         $t2, 4($t9)
/* A91C4 800CDDC4 260E0060 */  addiu      $t6, $s0, 0x60
/* A91C8 800CDDC8 AC4A0004 */  sw         $t2, 4($v0)
/* A91CC 800CDDCC 8F210008 */  lw         $at, 8($t9)
/* A91D0 800CDDD0 AC410008 */  sw         $at, 8($v0)
/* A91D4 800CDDD4 AE000098 */  sw         $zero, 0x98($s0)
/* A91D8 800CDDD8 AE08009C */  sw         $t0, 0x9c($s0)
/* A91DC 800CDDDC 8C410000 */  lw         $at, ($v0)
/* A91E0 800CDDE0 AFA10000 */  sw         $at, ($sp)
/* A91E4 800CDDE4 8C450004 */  lw         $a1, 4($v0)
/* A91E8 800CDDE8 8FA40000 */  lw         $a0, ($sp)
/* A91EC 800CDDEC AFA50004 */  sw         $a1, 4($sp)
/* A91F0 800CDDF0 8C460008 */  lw         $a2, 8($v0)
/* A91F4 800CDDF4 AFB00014 */  sw         $s0, 0x14($sp)
/* A91F8 800CDDF8 AFAE0010 */  sw         $t6, 0x10($sp)
/* A91FC 800CDDFC 0C032D1C */  jal        func_800CB470
/* A9200 800CDE00 AFA60008 */   sw        $a2, 8($sp)
/* A9204 800CDE04 10000031 */  b          .L800CDECC
/* A9208 800CDE08 27AA00D4 */   addiu     $t2, $sp, 0xd4
/* A920C 800CDE0C AE0D0098 */  sw         $t5, 0x98($s0)
.L800CDE10:
/* A9210 800CDE10 1000002D */  b          .L800CDEC8
/* A9214 800CDE14 AE00009C */   sw        $zero, 0x9c($s0)
.L800CDE18:
/* A9218 800CDE18 8CE10094 */  lw         $at, 0x94($a3)
/* A921C 800CDE1C 27AB00D4 */  addiu      $t3, $sp, 0xd4
/* A9220 800CDE20 3C0C8023 */  lui        $t4, %hi(D_80236980)
/* A9224 800CDE24 AD610000 */  sw         $at, ($t3)
/* A9228 800CDE28 8CF80098 */  lw         $t8, 0x98($a3)
/* A922C 800CDE2C 258C6980 */  addiu      $t4, $t4, %lo(D_80236980)
/* A9230 800CDE30 27AF00D4 */  addiu      $t7, $sp, 0xd4
/* A9234 800CDE34 AD780004 */  sw         $t8, 4($t3)
/* A9238 800CDE38 8CE1009C */  lw         $at, 0x9c($a3)
/* A923C 800CDE3C AD610008 */  sw         $at, 8($t3)
/* A9240 800CDE40 C7A600D4 */  lwc1       $f6, 0xd4($sp)
/* A9244 800CDE44 240100A0 */  addiu      $at, $zero, 0xa0
/* A9248 800CDE48 E60600D4 */  swc1       $f6, 0xd4($s0)
/* A924C 800CDE4C C7A800D8 */  lwc1       $f8, 0xd8($sp)
/* A9250 800CDE50 E60800D8 */  swc1       $f8, 0xd8($s0)
/* A9254 800CDE54 C7AA00DC */  lwc1       $f10, 0xdc($sp)
/* A9258 800CDE58 E60A00DC */  swc1       $f10, 0xdc($s0)
/* A925C 800CDE5C 8CF90004 */  lw         $t9, 4($a3)
/* A9260 800CDE60 AE1900E0 */  sw         $t9, 0xe0($s0)
/* A9264 800CDE64 8CEA0004 */  lw         $t2, 4($a3)
/* A9268 800CDE68 26190060 */  addiu      $t9, $s0, 0x60
/* A926C 800CDE6C 000A4080 */  sll        $t0, $t2, 2
/* A9270 800CDE70 010A4021 */  addu       $t0, $t0, $t2
/* A9274 800CDE74 00084080 */  sll        $t0, $t0, 2
/* A9278 800CDE78 010A4023 */  subu       $t0, $t0, $t2
/* A927C 800CDE7C 00084100 */  sll        $t0, $t0, 4
/* A9280 800CDE80 010C1021 */  addu       $v0, $t0, $t4
/* A9284 800CDE84 8C4900E4 */  lw         $t1, 0xe4($v0)
/* A9288 800CDE88 AE000098 */  sw         $zero, 0x98($s0)
/* A928C 800CDE8C AE00009C */  sw         $zero, 0x9c($s0)
/* A9290 800CDE90 00E97023 */  subu       $t6, $a3, $t1
/* A9294 800CDE94 01C1001A */  div        $zero, $t6, $at
/* A9298 800CDE98 00006812 */  mflo       $t5
/* A929C 800CDE9C AE0D00E4 */  sw         $t5, 0xe4($s0)
/* A92A0 800CDEA0 8DE10000 */  lw         $at, ($t7)
/* A92A4 800CDEA4 AFA10000 */  sw         $at, ($sp)
/* A92A8 800CDEA8 8DE50004 */  lw         $a1, 4($t7)
/* A92AC 800CDEAC 8FA40000 */  lw         $a0, ($sp)
/* A92B0 800CDEB0 AFA50004 */  sw         $a1, 4($sp)
/* A92B4 800CDEB4 8DE60008 */  lw         $a2, 8($t7)
/* A92B8 800CDEB8 AFB00014 */  sw         $s0, 0x14($sp)
/* A92BC 800CDEBC AFB90010 */  sw         $t9, 0x10($sp)
/* A92C0 800CDEC0 0C032D1C */  jal        func_800CB470
/* A92C4 800CDEC4 AFA60008 */   sw        $a2, 8($sp)
.L800CDEC8:
/* A92C8 800CDEC8 27AA00D4 */  addiu      $t2, $sp, 0xd4
.L800CDECC:
/* A92CC 800CDECC 8D410000 */  lw         $at, ($t2)
/* A92D0 800CDED0 24090001 */  addiu      $t1, $zero, 1
/* A92D4 800CDED4 02002025 */  or         $a0, $s0, $zero
/* A92D8 800CDED8 AFA10004 */  sw         $at, 4($sp)
/* A92DC 800CDEDC 8D460004 */  lw         $a2, 4($t2)
/* A92E0 800CDEE0 8FA50004 */  lw         $a1, 4($sp)
/* A92E4 800CDEE4 AFA60008 */  sw         $a2, 8($sp)
/* A92E8 800CDEE8 8D470008 */  lw         $a3, 8($t2)
/* A92EC 800CDEEC AFA90010 */  sw         $t1, 0x10($sp)
/* A92F0 800CDEF0 0C033205 */  jal        func_800CC814
/* A92F4 800CDEF4 AFA7000C */   sw        $a3, 0xc($sp)
/* A92F8 800CDEF8 8FBF0034 */  lw         $ra, 0x34($sp)
.L800CDEFC:
/* A92FC 800CDEFC 8FB00030 */  lw         $s0, 0x30($sp)
/* A9300 800CDF00 27BD00F8 */  addiu      $sp, $sp, 0xf8
/* A9304 800CDF04 03E00008 */  jr         $ra
/* A9308 800CDF08 00000000 */   nop

glabel func_800CDF0C
/* A930C 800CDF0C 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* A9310 800CDF10 AFBF0034 */  sw         $ra, 0x34($sp)
/* A9314 800CDF14 AFB00030 */  sw         $s0, 0x30($sp)
/* A9318 800CDF18 C4860024 */  lwc1       $f6, 0x24($a0)
/* A931C 800CDF1C C4840054 */  lwc1       $f4, 0x54($a0)
/* A9320 800CDF20 00808025 */  or         $s0, $a0, $zero
/* A9324 800CDF24 46062200 */  add.s      $f8, $f4, $f6
/* A9328 800CDF28 E7A80154 */  swc1       $f8, 0x154($sp)
/* A932C 800CDF2C C48A0028 */  lwc1       $f10, 0x28($a0)
/* A9330 800CDF30 E7AA0158 */  swc1       $f10, 0x158($sp)
/* A9334 800CDF34 C484002C */  lwc1       $f4, 0x2c($a0)
/* A9338 800CDF38 C492005C */  lwc1       $f18, 0x5c($a0)
/* A933C 800CDF3C 46049180 */  add.s      $f6, $f18, $f4
/* A9340 800CDF40 E7A6015C */  swc1       $f6, 0x15c($sp)
/* A9344 800CDF44 C4880030 */  lwc1       $f8, 0x30($a0)
/* A9348 800CDF48 E7A80130 */  swc1       $f8, 0x130($sp)
/* A934C 800CDF4C C48A0034 */  lwc1       $f10, 0x34($a0)
/* A9350 800CDF50 E7AA0134 */  swc1       $f10, 0x134($sp)
/* A9354 800CDF54 C4920038 */  lwc1       $f18, 0x38($a0)
/* A9358 800CDF58 E7B20138 */  swc1       $f18, 0x138($sp)
/* A935C 800CDF5C AC80009C */  sw         $zero, 0x9c($a0)
/* A9360 800CDF60 AFA000EC */  sw         $zero, 0xec($sp)
/* A9364 800CDF64 AFA000E8 */  sw         $zero, 0xe8($sp)
/* A9368 800CDF68 8C8E0098 */  lw         $t6, 0x98($a0)
/* A936C 800CDF6C 55C00030 */  bnel       $t6, $zero, .L800CE030
/* A9370 800CDF70 AFA0011C */   sw        $zero, 0x11c($sp)
/* A9374 800CDF74 8C8200E0 */  lw         $v0, 0xe0($a0)
/* A9378 800CDF78 0442002D */  bltzl      $v0, .L800CE030
/* A937C 800CDF7C AFA0011C */   sw        $zero, 0x11c($sp)
/* A9380 800CDF80 8C8F00E4 */  lw         $t7, 0xe4($a0)
/* A9384 800CDF84 0002C080 */  sll        $t8, $v0, 2
/* A9388 800CDF88 0302C021 */  addu       $t8, $t8, $v0
/* A938C 800CDF8C 05E00027 */  bltz       $t7, .L800CE02C
/* A9390 800CDF90 0018C080 */   sll       $t8, $t8, 2
/* A9394 800CDF94 0302C023 */  subu       $t8, $t8, $v0
/* A9398 800CDF98 3C198023 */  lui        $t9, %hi(D_80236980)
/* A939C 800CDF9C 27396980 */  addiu      $t9, $t9, %lo(D_80236980)
/* A93A0 800CDFA0 0018C100 */  sll        $t8, $t8, 4
/* A93A4 800CDFA4 03192021 */  addu       $a0, $t8, $t9
/* A93A8 800CDFA8 0C0325C1 */  jal        func_800C9704
/* A93AC 800CDFAC AFA40120 */   sw        $a0, 0x120($sp)
/* A93B0 800CDFB0 8FA60120 */  lw         $a2, 0x120($sp)
/* A93B4 800CDFB4 8E0A00E4 */  lw         $t2, 0xe4($s0)
/* A93B8 800CDFB8 24050002 */  addiu      $a1, $zero, 2
/* A93BC 800CDFBC 8CC900E4 */  lw         $t1, 0xe4($a2)
/* A93C0 800CDFC0 000A5880 */  sll        $t3, $t2, 2
/* A93C4 800CDFC4 016A5821 */  addu       $t3, $t3, $t2
/* A93C8 800CDFC8 000B5940 */  sll        $t3, $t3, 5
/* A93CC 800CDFCC 012B2021 */  addu       $a0, $t1, $t3
/* A93D0 800CDFD0 0C035E79 */  jal        func_800D79E4
/* A93D4 800CDFD4 AFA4011C */   sw        $a0, 0x11c($sp)
/* A93D8 800CDFD8 8FA2011C */  lw         $v0, 0x11c($sp)
/* A93DC 800CDFDC C7A60130 */  lwc1       $f6, 0x130($sp)
/* A93E0 800CDFE0 C7B20134 */  lwc1       $f18, 0x134($sp)
/* A93E4 800CDFE4 C448005C */  lwc1       $f8, 0x5c($v0)
/* A93E8 800CDFE8 44802800 */  mtc1       $zero, $f5
/* A93EC 800CDFEC 44802000 */  mtc1       $zero, $f4
/* A93F0 800CDFF0 46083282 */  mul.s      $f10, $f6, $f8
/* A93F4 800CDFF4 C4460060 */  lwc1       $f6, 0x60($v0)
/* A93F8 800CDFF8 240C0001 */  addiu      $t4, $zero, 1
/* A93FC 800CDFFC 46069202 */  mul.s      $f8, $f18, $f6
/* A9400 800CE000 C4460064 */  lwc1       $f6, 0x64($v0)
/* A9404 800CE004 46085480 */  add.s      $f18, $f10, $f8
/* A9408 800CE008 C7AA0138 */  lwc1       $f10, 0x138($sp)
/* A940C 800CE00C 460A3202 */  mul.s      $f8, $f6, $f10
/* A9410 800CE010 46124180 */  add.s      $f6, $f8, $f18
/* A9414 800CE014 460032A1 */  cvt.d.s    $f10, $f6
/* A9418 800CE018 462A203C */  c.lt.d     $f4, $f10
/* A941C 800CE01C 00000000 */  nop
/* A9420 800CE020 45020003 */  bc1fl      .L800CE030
/* A9424 800CE024 AFA0011C */   sw        $zero, 0x11c($sp)
/* A9428 800CE028 AFAC00E8 */  sw         $t4, 0xe8($sp)
.L800CE02C:
/* A942C 800CE02C AFA0011C */  sw         $zero, 0x11c($sp)
.L800CE030:
/* A9430 800CE030 8E0D0098 */  lw         $t5, 0x98($s0)
/* A9434 800CE034 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* A9438 800CE038 55A0009E */  bnel       $t5, $zero, .L800CE2B4
/* A943C 800CE03C 8FAA011C */   lw        $t2, 0x11c($sp)
/* A9440 800CE040 55C0009C */  bnel       $t6, $zero, .L800CE2B4
/* A9444 800CE044 8FAA011C */   lw        $t2, 0x11c($sp)
/* A9448 800CE048 8E0200E0 */  lw         $v0, 0xe0($s0)
/* A944C 800CE04C 3C0B8023 */  lui        $t3, %hi(D_80236980)
/* A9450 800CE050 256B6980 */  addiu      $t3, $t3, %lo(D_80236980)
/* A9454 800CE054 04410067 */  bgez       $v0, .L800CE1F4
/* A9458 800CE058 00025080 */   sll       $t2, $v0, 2
/* A945C 800CE05C C7A80154 */  lwc1       $f8, 0x154($sp)
/* A9460 800CE060 3C013FE0 */  lui        $at, 0x3fe0
/* A9464 800CE064 44811800 */  mtc1       $at, $f3
/* A9468 800CE068 E7A800C0 */  swc1       $f8, 0xc0($sp)
/* A946C 800CE06C C6060040 */  lwc1       $f6, 0x40($s0)
/* A9470 800CE070 44801000 */  mtc1       $zero, $f2
/* A9474 800CE074 C7B20158 */  lwc1       $f18, 0x158($sp)
/* A9478 800CE078 46003121 */  cvt.d.s    $f4, $f6
/* A947C 800CE07C E7A800B4 */  swc1       $f8, 0xb4($sp)
/* A9480 800CE080 46222282 */  mul.d      $f10, $f4, $f2
/* A9484 800CE084 46009021 */  cvt.d.s    $f0, $f18
/* A9488 800CE088 C7A4015C */  lwc1       $f4, 0x15c($sp)
/* A948C 800CE08C 27AF00C0 */  addiu      $t7, $sp, 0xc0
/* A9490 800CE090 27AA00B4 */  addiu      $t2, $sp, 0xb4
/* A9494 800CE094 E7A400C8 */  swc1       $f4, 0xc8($sp)
/* A9498 800CE098 27AC00CC */  addiu      $t4, $sp, 0xcc
/* A949C 800CE09C 462A0481 */  sub.d      $f18, $f0, $f10
/* A94A0 800CE0A0 462091A0 */  cvt.s.d    $f6, $f18
/* A94A4 800CE0A4 E7A600C4 */  swc1       $f6, 0xc4($sp)
/* A94A8 800CE0A8 C60A0040 */  lwc1       $f10, 0x40($s0)
/* A94AC 800CE0AC E7A400BC */  swc1       $f4, 0xbc($sp)
/* A94B0 800CE0B0 460054A1 */  cvt.d.s    $f18, $f10
/* A94B4 800CE0B4 46229182 */  mul.d      $f6, $f18, $f2
/* A94B8 800CE0B8 46260200 */  add.d      $f8, $f0, $f6
/* A94BC 800CE0BC 462042A0 */  cvt.s.d    $f10, $f8
/* A94C0 800CE0C0 E7AA00B8 */  swc1       $f10, 0xb8($sp)
/* A94C4 800CE0C4 8DE10000 */  lw         $at, ($t7)
/* A94C8 800CE0C8 AFA10000 */  sw         $at, ($sp)
/* A94CC 800CE0CC 8DE50004 */  lw         $a1, 4($t7)
/* A94D0 800CE0D0 8FA40000 */  lw         $a0, ($sp)
/* A94D4 800CE0D4 AFA50004 */  sw         $a1, 4($sp)
/* A94D8 800CE0D8 8DE10008 */  lw         $at, 8($t7)
/* A94DC 800CE0DC AFA10008 */  sw         $at, 8($sp)
/* A94E0 800CE0E0 8D410000 */  lw         $at, ($t2)
/* A94E4 800CE0E4 8FA60008 */  lw         $a2, 8($sp)
/* A94E8 800CE0E8 AFA1000C */  sw         $at, 0xc($sp)
/* A94EC 800CE0EC 8D4B0004 */  lw         $t3, 4($t2)
/* A94F0 800CE0F0 8FA7000C */  lw         $a3, 0xc($sp)
/* A94F4 800CE0F4 AFAB0010 */  sw         $t3, 0x10($sp)
/* A94F8 800CE0F8 8D410008 */  lw         $at, 8($t2)
/* A94FC 800CE0FC AFAC0018 */  sw         $t4, 0x18($sp)
/* A9500 800CE100 0C02BAAA */  jal        func_800AEAA8
/* A9504 800CE104 AFA10014 */   sw        $at, 0x14($sp)
/* A9508 800CE108 27A400CC */  addiu      $a0, $sp, 0xcc
/* A950C 800CE10C 24050077 */  addiu      $a1, $zero, 0x77
/* A9510 800CE110 0C0325D2 */  jal        func_800C9748
/* A9514 800CE114 24060002 */   addiu     $a2, $zero, 2
/* A9518 800CE118 3C013FE0 */  lui        $at, 0x3fe0
/* A951C 800CE11C 44811800 */  mtc1       $at, $f3
/* A9520 800CE120 27AD0154 */  addiu      $t5, $sp, 0x154
/* A9524 800CE124 8DA10000 */  lw         $at, ($t5)
/* A9528 800CE128 44801000 */  mtc1       $zero, $f2
/* A952C 800CE12C AFA10000 */  sw         $at, ($sp)
/* A9530 800CE130 8DA50004 */  lw         $a1, 4($t5)
/* A9534 800CE134 8FA40000 */  lw         $a0, ($sp)
/* A9538 800CE138 AFA50004 */  sw         $a1, 4($sp)
/* A953C 800CE13C 8DA60008 */  lw         $a2, 8($t5)
/* A9540 800CE140 AFA60008 */  sw         $a2, 8($sp)
/* A9544 800CE144 C6000040 */  lwc1       $f0, 0x40($s0)
/* A9548 800CE148 460004A1 */  cvt.d.s    $f18, $f0
/* A954C 800CE14C 46000287 */  neg.s      $f10, $f0
/* A9550 800CE150 46229182 */  mul.d      $f6, $f18, $f2
/* A9554 800CE154 46005121 */  cvt.d.s    $f4, $f10
/* A9558 800CE158 46222482 */  mul.d      $f18, $f4, $f2
/* A955C 800CE15C 46203220 */  cvt.s.d    $f8, $f6
/* A9560 800CE160 462091A0 */  cvt.s.d    $f6, $f18
/* A9564 800CE164 44074000 */  mfc1       $a3, $f8
/* A9568 800CE168 0C032BE2 */  jal        func_800CAF88
/* A956C 800CE16C E7A60010 */   swc1      $f6, 0x10($sp)
/* A9570 800CE170 14400008 */  bnez       $v0, .L800CE194
/* A9574 800CE174 AFA2011C */   sw        $v0, 0x11c($sp)
/* A9578 800CE178 240F0001 */  addiu      $t7, $zero, 1
/* A957C 800CE17C 2419FFFF */  addiu      $t9, $zero, -1
/* A9580 800CE180 2409FFFF */  addiu      $t1, $zero, -1
/* A9584 800CE184 AE0F0098 */  sw         $t7, 0x98($s0)
/* A9588 800CE188 AE1900E0 */  sw         $t9, 0xe0($s0)
/* A958C 800CE18C 10000028 */  b          .L800CE230
/* A9590 800CE190 AE0900E4 */   sw        $t1, 0xe4($s0)
.L800CE194:
/* A9594 800CE194 8C4A0004 */  lw         $t2, 4($v0)
/* A9598 800CE198 3C0E8023 */  lui        $t6, 0x8023
/* A959C 800CE19C 240100A0 */  addiu      $at, $zero, 0xa0
/* A95A0 800CE1A0 AE0A00E0 */  sw         $t2, 0xe0($s0)
/* A95A4 800CE1A4 8C4B0004 */  lw         $t3, 4($v0)
/* A95A8 800CE1A8 27AF0154 */  addiu      $t7, $sp, 0x154
/* A95AC 800CE1AC 000B6080 */  sll        $t4, $t3, 2
/* A95B0 800CE1B0 018B6021 */  addu       $t4, $t4, $t3
/* A95B4 800CE1B4 000C6080 */  sll        $t4, $t4, 2
/* A95B8 800CE1B8 018B6023 */  subu       $t4, $t4, $t3
/* A95BC 800CE1BC 000C6100 */  sll        $t4, $t4, 4
/* A95C0 800CE1C0 01CC7021 */  addu       $t6, $t6, $t4
/* A95C4 800CE1C4 8DCE6A64 */  lw         $t6, 0x6a64($t6)
/* A95C8 800CE1C8 004E6823 */  subu       $t5, $v0, $t6
/* A95CC 800CE1CC 01A1001A */  div        $zero, $t5, $at
/* A95D0 800CE1D0 0000C012 */  mflo       $t8
/* A95D4 800CE1D4 AE1800E4 */  sw         $t8, 0xe4($s0)
/* A95D8 800CE1D8 8C410094 */  lw         $at, 0x94($v0)
/* A95DC 800CE1DC ADE10000 */  sw         $at, ($t7)
/* A95E0 800CE1E0 8C490098 */  lw         $t1, 0x98($v0)
/* A95E4 800CE1E4 ADE90004 */  sw         $t1, 4($t7)
/* A95E8 800CE1E8 8C41009C */  lw         $at, 0x9c($v0)
/* A95EC 800CE1EC 10000010 */  b          .L800CE230
/* A95F0 800CE1F0 ADE10008 */   sw        $at, 8($t7)
.L800CE1F4:
/* A95F4 800CE1F4 01425021 */  addu       $t2, $t2, $v0
/* A95F8 800CE1F8 000A5080 */  sll        $t2, $t2, 2
/* A95FC 800CE1FC 01425023 */  subu       $t2, $t2, $v0
/* A9600 800CE200 000A5100 */  sll        $t2, $t2, 4
/* A9604 800CE204 014B2021 */  addu       $a0, $t2, $t3
/* A9608 800CE208 0C0325C1 */  jal        func_800C9704
/* A960C 800CE20C AFA40120 */   sw        $a0, 0x120($sp)
/* A9610 800CE210 8FA60120 */  lw         $a2, 0x120($sp)
/* A9614 800CE214 8E0E00E4 */  lw         $t6, 0xe4($s0)
/* A9618 800CE218 8CCC00E4 */  lw         $t4, 0xe4($a2)
/* A961C 800CE21C 000E6880 */  sll        $t5, $t6, 2
/* A9620 800CE220 01AE6821 */  addu       $t5, $t5, $t6
/* A9624 800CE224 000D6940 */  sll        $t5, $t5, 5
/* A9628 800CE228 018DC021 */  addu       $t8, $t4, $t5
/* A962C 800CE22C AFB8011C */  sw         $t8, 0x11c($sp)
.L800CE230:
/* A9630 800CE230 8FB9011C */  lw         $t9, 0x11c($sp)
/* A9634 800CE234 1320001E */  beqz       $t9, .L800CE2B0
/* A9638 800CE238 03202025 */   or        $a0, $t9, $zero
/* A963C 800CE23C 0C035E79 */  jal        func_800D79E4
/* A9640 800CE240 24050002 */   addiu     $a1, $zero, 2
/* A9644 800CE244 8FA2011C */  lw         $v0, 0x11c($sp)
/* A9648 800CE248 44804800 */  mtc1       $zero, $f9
/* A964C 800CE24C 44804000 */  mtc1       $zero, $f8
/* A9650 800CE250 C44A0060 */  lwc1       $f10, 0x60($v0)
/* A9654 800CE254 27A40130 */  addiu      $a0, $sp, 0x130
/* A9658 800CE258 46005121 */  cvt.d.s    $f4, $f10
/* A965C 800CE25C 4628203E */  c.le.d     $f4, $f8
/* A9660 800CE260 00000000 */  nop
/* A9664 800CE264 4502000A */  bc1fl      .L800CE290
/* A9668 800CE268 8C810000 */   lw        $at, ($a0)
/* A966C 800CE26C 3C048011 */  lui        $a0, %hi(D_80110384)
/* A9670 800CE270 0C035D18 */  jal        func_800D7460
/* A9674 800CE274 24840384 */   addiu     $a0, $a0, %lo(D_80110384)
/* A9678 800CE278 3C048011 */  lui        $a0, %hi(D_801103B8)
/* A967C 800CE27C 0C035D18 */  jal        func_800D7460
/* A9680 800CE280 248403B8 */   addiu     $a0, $a0, %lo(D_801103B8)
/* A9684 800CE284 1000021E */  b          .L800CEB00
/* A9688 800CE288 8FBF0034 */   lw        $ra, 0x34($sp)
/* A968C 800CE28C 8C810000 */  lw         $at, ($a0)
.L800CE290:
/* A9690 800CE290 AFA10004 */  sw         $at, 4($sp)
/* A9694 800CE294 8C860004 */  lw         $a2, 4($a0)
/* A9698 800CE298 8FA50004 */  lw         $a1, 4($sp)
/* A969C 800CE29C AFA60008 */  sw         $a2, 8($sp)
/* A96A0 800CE2A0 8C870008 */  lw         $a3, 8($a0)
/* A96A4 800CE2A4 AFA20010 */  sw         $v0, 0x10($sp)
/* A96A8 800CE2A8 0C035E93 */  jal        func_800D7A4C
/* A96AC 800CE2AC AFA7000C */   sw        $a3, 0xc($sp)
.L800CE2B0:
/* A96B0 800CE2B0 8FAA011C */  lw         $t2, 0x11c($sp)
.L800CE2B4:
/* A96B4 800CE2B4 27AB0154 */  addiu      $t3, $sp, 0x154
/* A96B8 800CE2B8 51400018 */  beql       $t2, $zero, .L800CE31C
/* A96BC 800CE2BC C7A00130 */   lwc1      $f0, 0x130($sp)
/* A96C0 800CE2C0 8D610000 */  lw         $at, ($t3)
/* A96C4 800CE2C4 27A400A8 */  addiu      $a0, $sp, 0xa8
/* A96C8 800CE2C8 AFA10004 */  sw         $at, 4($sp)
/* A96CC 800CE2CC 8D660004 */  lw         $a2, 4($t3)
/* A96D0 800CE2D0 8FA50004 */  lw         $a1, 4($sp)
/* A96D4 800CE2D4 AFA60008 */  sw         $a2, 8($sp)
/* A96D8 800CE2D8 8D670008 */  lw         $a3, 8($t3)
/* A96DC 800CE2DC AFAA0010 */  sw         $t2, 0x10($sp)
/* A96E0 800CE2E0 0C02CAAD */  jal        func_800B2AB4
/* A96E4 800CE2E4 AFA7000C */   sw        $a3, 0xc($sp)
/* A96E8 800CE2E8 C7A00130 */  lwc1       $f0, 0x130($sp)
/* A96EC 800CE2EC C7A20134 */  lwc1       $f2, 0x134($sp)
/* A96F0 800CE2F0 C7AE0138 */  lwc1       $f14, 0x138($sp)
/* A96F4 800CE2F4 C7B200A8 */  lwc1       $f18, 0xa8($sp)
/* A96F8 800CE2F8 C7A600AC */  lwc1       $f6, 0xac($sp)
/* A96FC 800CE2FC C7AA00B0 */  lwc1       $f10, 0xb0($sp)
/* A9700 800CE300 46120000 */  add.s      $f0, $f0, $f18
/* A9704 800CE304 46061080 */  add.s      $f2, $f2, $f6
/* A9708 800CE308 E7A00130 */  swc1       $f0, 0x130($sp)
/* A970C 800CE30C 460A7380 */  add.s      $f14, $f14, $f10
/* A9710 800CE310 E7A20134 */  swc1       $f2, 0x134($sp)
/* A9714 800CE314 E7AE0138 */  swc1       $f14, 0x138($sp)
/* A9718 800CE318 C7A00130 */  lwc1       $f0, 0x130($sp)
.L800CE31C:
/* A971C 800CE31C C7A20134 */  lwc1       $f2, 0x134($sp)
/* A9720 800CE320 C7AE0138 */  lwc1       $f14, 0x138($sp)
/* A9724 800CE324 46000202 */  mul.s      $f8, $f0, $f0
/* A9728 800CE328 00000000 */  nop
/* A972C 800CE32C 46021102 */  mul.s      $f4, $f2, $f2
/* A9730 800CE330 46044480 */  add.s      $f18, $f8, $f4
/* A9734 800CE334 460E7182 */  mul.s      $f6, $f14, $f14
/* A9738 800CE338 0C036C2C */  jal        func_800DB0B0
/* A973C 800CE33C 46069300 */   add.s     $f12, $f18, $f6
/* A9740 800CE340 44805800 */  mtc1       $zero, $f11
/* A9744 800CE344 44805000 */  mtc1       $zero, $f10
/* A9748 800CE348 46000221 */  cvt.d.s    $f8, $f0
/* A974C 800CE34C 46000406 */  mov.s      $f16, $f0
/* A9750 800CE350 46285032 */  c.eq.d     $f10, $f8
/* A9754 800CE354 27AD0154 */  addiu      $t5, $sp, 0x154
/* A9758 800CE358 45020055 */  bc1fl      .L800CE4B0
/* A975C 800CE35C 8E0200A8 */   lw        $v0, 0xa8($s0)
/* A9760 800CE360 8DA10000 */  lw         $at, ($t5)
/* A9764 800CE364 AFA10000 */  sw         $at, ($sp)
/* A9768 800CE368 8DA50004 */  lw         $a1, 4($t5)
/* A976C 800CE36C 8FA40000 */  lw         $a0, ($sp)
/* A9770 800CE370 AFA50004 */  sw         $a1, 4($sp)
/* A9774 800CE374 8DA60008 */  lw         $a2, 8($t5)
/* A9778 800CE378 AFA60008 */  sw         $a2, 8($sp)
/* A977C 800CE37C 0C032CA5 */  jal        func_800CB294
/* A9780 800CE380 8E070060 */   lw        $a3, 0x60($s0)
/* A9784 800CE384 14400014 */  bnez       $v0, .L800CE3D8
/* A9788 800CE388 00401825 */   or        $v1, $v0, $zero
/* A978C 800CE38C 240F0001 */  addiu      $t7, $zero, 1
/* A9790 800CE390 AE0F0098 */  sw         $t7, 0x98($s0)
/* A9794 800CE394 AE00009C */  sw         $zero, 0x9c($s0)
/* A9798 800CE398 27A90154 */  addiu      $t1, $sp, 0x154
/* A979C 800CE39C 8D210000 */  lw         $at, ($t1)
/* A97A0 800CE3A0 240C0001 */  addiu      $t4, $zero, 1
/* A97A4 800CE3A4 02002025 */  or         $a0, $s0, $zero
/* A97A8 800CE3A8 AFA10004 */  sw         $at, 4($sp)
/* A97AC 800CE3AC 8D260004 */  lw         $a2, 4($t1)
/* A97B0 800CE3B0 8FA50004 */  lw         $a1, 4($sp)
/* A97B4 800CE3B4 AFA60008 */  sw         $a2, 8($sp)
/* A97B8 800CE3B8 8D270008 */  lw         $a3, 8($t1)
/* A97BC 800CE3BC AFAC0010 */  sw         $t4, 0x10($sp)
/* A97C0 800CE3C0 0C033205 */  jal        func_800CC814
/* A97C4 800CE3C4 AFA7000C */   sw        $a3, 0xc($sp)
/* A97C8 800CE3C8 0C032F02 */  jal        func_800CBC08
/* A97CC 800CE3CC 02002025 */   or        $a0, $s0, $zero
/* A97D0 800CE3D0 100001CB */  b          .L800CEB00
/* A97D4 800CE3D4 8FBF0034 */   lw        $ra, 0x34($sp)
.L800CE3D8:
/* A97D8 800CE3D8 8C61005C */  lw         $at, 0x5c($v1)
/* A97DC 800CE3DC 27A200F0 */  addiu      $v0, $sp, 0xf0
/* A97E0 800CE3E0 24190001 */  addiu      $t9, $zero, 1
/* A97E4 800CE3E4 AC410000 */  sw         $at, ($v0)
/* A97E8 800CE3E8 8C6D0060 */  lw         $t5, 0x60($v1)
/* A97EC 800CE3EC AC4D0004 */  sw         $t5, 4($v0)
/* A97F0 800CE3F0 8C610064 */  lw         $at, 0x64($v1)
/* A97F4 800CE3F4 AC410008 */  sw         $at, 8($v0)
/* A97F8 800CE3F8 AE000098 */  sw         $zero, 0x98($s0)
/* A97FC 800CE3FC AE19009C */  sw         $t9, 0x9c($s0)
/* A9800 800CE400 C7A400F0 */  lwc1       $f4, 0xf0($sp)
/* A9804 800CE404 E60400B4 */  swc1       $f4, 0xb4($s0)
/* A9808 800CE408 C7B200F4 */  lwc1       $f18, 0xf4($sp)
/* A980C 800CE40C E61200B8 */  swc1       $f18, 0xb8($s0)
/* A9810 800CE410 C7A600F8 */  lwc1       $f6, 0xf8($sp)
/* A9814 800CE414 E60600BC */  swc1       $f6, 0xbc($s0)
/* A9818 800CE418 8C410000 */  lw         $at, ($v0)
/* A981C 800CE41C AFA10000 */  sw         $at, ($sp)
/* A9820 800CE420 8C450004 */  lw         $a1, 4($v0)
/* A9824 800CE424 8FA40000 */  lw         $a0, ($sp)
/* A9828 800CE428 AFA50004 */  sw         $a1, 4($sp)
/* A982C 800CE42C 8C460008 */  lw         $a2, 8($v0)
/* A9830 800CE430 AFA30118 */  sw         $v1, 0x118($sp)
/* A9834 800CE434 0C0331F8 */  jal        func_800CC7E0
/* A9838 800CE438 AFA60008 */   sw        $a2, 8($sp)
/* A983C 800CE43C E60000B0 */  swc1       $f0, 0xb0($s0)
/* A9840 800CE440 27A90154 */  addiu      $t1, $sp, 0x154
/* A9844 800CE444 8D210000 */  lw         $at, ($t1)
/* A9848 800CE448 24180001 */  addiu      $t8, $zero, 1
/* A984C 800CE44C 02002025 */  or         $a0, $s0, $zero
/* A9850 800CE450 AFA10004 */  sw         $at, 4($sp)
/* A9854 800CE454 8D260004 */  lw         $a2, 4($t1)
/* A9858 800CE458 8FA50004 */  lw         $a1, 4($sp)
/* A985C 800CE45C AFA60008 */  sw         $a2, 8($sp)
/* A9860 800CE460 8D270008 */  lw         $a3, 8($t1)
/* A9864 800CE464 AFB80010 */  sw         $t8, 0x10($sp)
/* A9868 800CE468 0C033205 */  jal        func_800CC814
/* A986C 800CE46C AFA7000C */   sw        $a3, 0xc($sp)
/* A9870 800CE470 27AA0154 */  addiu      $t2, $sp, 0x154
/* A9874 800CE474 8D410000 */  lw         $at, ($t2)
/* A9878 800CE478 260F0060 */  addiu      $t7, $s0, 0x60
/* A987C 800CE47C 8FA70118 */  lw         $a3, 0x118($sp)
/* A9880 800CE480 AFA10000 */  sw         $at, ($sp)
/* A9884 800CE484 8D450004 */  lw         $a1, 4($t2)
/* A9888 800CE488 8FA40000 */  lw         $a0, ($sp)
/* A988C 800CE48C AFA50004 */  sw         $a1, 4($sp)
/* A9890 800CE490 8D460008 */  lw         $a2, 8($t2)
/* A9894 800CE494 AFB00014 */  sw         $s0, 0x14($sp)
/* A9898 800CE498 AFAF0010 */  sw         $t7, 0x10($sp)
/* A989C 800CE49C 0C032D1C */  jal        func_800CB470
/* A98A0 800CE4A0 AFA60008 */   sw        $a2, 8($sp)
/* A98A4 800CE4A4 10000196 */  b          .L800CEB00
/* A98A8 800CE4A8 8FBF0034 */   lw        $ra, 0x34($sp)
/* A98AC 800CE4AC 8E0200A8 */  lw         $v0, 0xa8($s0)
.L800CE4B0:
/* A98B0 800CE4B0 C7A00130 */  lwc1       $f0, 0x130($sp)
/* A98B4 800CE4B4 C7A20134 */  lwc1       $f2, 0x134($sp)
/* A98B8 800CE4B8 10400008 */  beqz       $v0, .L800CE4DC
/* A98BC 800CE4BC C7AE0138 */   lwc1      $f14, 0x138($sp)
/* A98C0 800CE4C0 24010001 */  addiu      $at, $zero, 1
/* A98C4 800CE4C4 1041000F */  beq        $v0, $at, .L800CE504
/* A98C8 800CE4C8 24010002 */   addiu     $at, $zero, 2
/* A98CC 800CE4CC 5041000E */  beql       $v0, $at, .L800CE508
/* A98D0 800CE4D0 C608003C */   lwc1      $f8, 0x3c($s0)
/* A98D4 800CE4D4 100000D3 */  b          .L800CE824
/* A98D8 800CE4D8 8FB800EC */   lw        $t8, 0xec($sp)
.L800CE4DC:
/* A98DC 800CE4DC C7AA0154 */  lwc1       $f10, 0x154($sp)
/* A98E0 800CE4E0 C7A40158 */  lwc1       $f4, 0x158($sp)
/* A98E4 800CE4E4 C7A6015C */  lwc1       $f6, 0x15c($sp)
/* A98E8 800CE4E8 46005200 */  add.s      $f8, $f10, $f0
/* A98EC 800CE4EC 46022480 */  add.s      $f18, $f4, $f2
/* A98F0 800CE4F0 E7A8013C */  swc1       $f8, 0x13c($sp)
/* A98F4 800CE4F4 460E3280 */  add.s      $f10, $f6, $f14
/* A98F8 800CE4F8 E7B20140 */  swc1       $f18, 0x140($sp)
/* A98FC 800CE4FC 100000C8 */  b          .L800CE820
/* A9900 800CE500 E7AA0144 */   swc1      $f10, 0x144($sp)
.L800CE504:
/* A9904 800CE504 C608003C */  lwc1       $f8, 0x3c($s0)
.L800CE508:
/* A9908 800CE508 C7A40130 */  lwc1       $f4, 0x130($sp)
/* A990C 800CE50C C7B20134 */  lwc1       $f18, 0x134($sp)
/* A9910 800CE510 46104003 */  div.s      $f0, $f8, $f16
/* A9914 800CE514 C7A60138 */  lwc1       $f6, 0x138($sp)
/* A9918 800CE518 3C013FE0 */  lui        $at, 0x3fe0
/* A991C 800CE51C 44815800 */  mtc1       $at, $f11
/* A9920 800CE520 27AE0154 */  addiu      $t6, $sp, 0x154
/* A9924 800CE524 27AC0148 */  addiu      $t4, $sp, 0x148
/* A9928 800CE528 27AA00FC */  addiu      $t2, $sp, 0xfc
/* A992C 800CE52C 46002082 */  mul.s      $f2, $f4, $f0
/* A9930 800CE530 00000000 */  nop
/* A9934 800CE534 46009302 */  mul.s      $f12, $f18, $f0
/* A9938 800CE538 00000000 */  nop
/* A993C 800CE53C 46003382 */  mul.s      $f14, $f6, $f0
/* A9940 800CE540 E7A20124 */  swc1       $f2, 0x124($sp)
/* A9944 800CE544 E7AC0128 */  swc1       $f12, 0x128($sp)
/* A9948 800CE548 E7AE012C */  swc1       $f14, 0x12c($sp)
/* A994C 800CE54C C60A0040 */  lwc1       $f10, 0x40($s0)
/* A9950 800CE550 46005221 */  cvt.d.s    $f8, $f10
/* A9954 800CE554 44805000 */  mtc1       $zero, $f10
/* A9958 800CE558 00000000 */  nop
/* A995C 800CE55C 462A4202 */  mul.d      $f8, $f8, $f10
/* A9960 800CE560 C7AA0158 */  lwc1       $f10, 0x158($sp)
/* A9964 800CE564 460052A1 */  cvt.d.s    $f10, $f10
/* A9968 800CE568 46285280 */  add.d      $f10, $f10, $f8
/* A996C 800CE56C 46205220 */  cvt.s.d    $f8, $f10
/* A9970 800CE570 C7AA0154 */  lwc1       $f10, 0x154($sp)
/* A9974 800CE574 46045280 */  add.s      $f10, $f10, $f4
/* A9978 800CE578 E7A80158 */  swc1       $f8, 0x158($sp)
/* A997C 800CE57C 46124100 */  add.s      $f4, $f8, $f18
/* A9980 800CE580 C7A8015C */  lwc1       $f8, 0x15c($sp)
/* A9984 800CE584 E7AA013C */  swc1       $f10, 0x13c($sp)
/* A9988 800CE588 46064480 */  add.s      $f18, $f8, $f6
/* A998C 800CE58C E7A40140 */  swc1       $f4, 0x140($sp)
/* A9990 800CE590 46025200 */  add.s      $f8, $f10, $f2
/* A9994 800CE594 E7B20144 */  swc1       $f18, 0x144($sp)
/* A9998 800CE598 460E9280 */  add.s      $f10, $f18, $f14
/* A999C 800CE59C E7A80148 */  swc1       $f8, 0x148($sp)
/* A99A0 800CE5A0 460C2180 */  add.s      $f6, $f4, $f12
/* A99A4 800CE5A4 E7AA0150 */  swc1       $f10, 0x150($sp)
/* A99A8 800CE5A8 E7A6014C */  swc1       $f6, 0x14c($sp)
/* A99AC 800CE5AC 8DC10000 */  lw         $at, ($t6)
/* A99B0 800CE5B0 AFA10000 */  sw         $at, ($sp)
/* A99B4 800CE5B4 8DC50004 */  lw         $a1, 4($t6)
/* A99B8 800CE5B8 8FA40000 */  lw         $a0, ($sp)
/* A99BC 800CE5BC AFA50004 */  sw         $a1, 4($sp)
/* A99C0 800CE5C0 8DC10008 */  lw         $at, 8($t6)
/* A99C4 800CE5C4 AFA10008 */  sw         $at, 8($sp)
/* A99C8 800CE5C8 8D810000 */  lw         $at, ($t4)
/* A99CC 800CE5CC 8FA60008 */  lw         $a2, 8($sp)
/* A99D0 800CE5D0 AFA1000C */  sw         $at, 0xc($sp)
/* A99D4 800CE5D4 8D8D0004 */  lw         $t5, 4($t4)
/* A99D8 800CE5D8 8FA7000C */  lw         $a3, 0xc($sp)
/* A99DC 800CE5DC AFAD0010 */  sw         $t5, 0x10($sp)
/* A99E0 800CE5E0 8D810008 */  lw         $at, 8($t4)
/* A99E4 800CE5E4 AFAA0018 */  sw         $t2, 0x18($sp)
/* A99E8 800CE5E8 0C02BAAA */  jal        func_800AEAA8
/* A99EC 800CE5EC AFA10014 */   sw        $at, 0x14($sp)
/* A99F0 800CE5F0 C7A80100 */  lwc1       $f8, 0x100($sp)
/* A99F4 800CE5F4 C6040040 */  lwc1       $f4, 0x40($s0)
/* A99F8 800CE5F8 27A400FC */  addiu      $a0, $sp, 0xfc
/* A99FC 800CE5FC 24050077 */  addiu      $a1, $zero, 0x77
/* A9A00 800CE600 46044181 */  sub.s      $f6, $f8, $f4
/* A9A04 800CE604 24060004 */  addiu      $a2, $zero, 4
/* A9A08 800CE608 0C0325D2 */  jal        func_800C9748
/* A9A0C 800CE60C E7A60100 */   swc1      $f6, 0x100($sp)
/* A9A10 800CE610 24190001 */  addiu      $t9, $zero, 1
/* A9A14 800CE614 AFB900EC */  sw         $t9, 0xec($sp)
/* A9A18 800CE618 27AF0154 */  addiu      $t7, $sp, 0x154
/* A9A1C 800CE61C 8DE10000 */  lw         $at, ($t7)
/* A9A20 800CE620 27A90148 */  addiu      $t1, $sp, 0x148
/* A9A24 800CE624 240D0077 */  addiu      $t5, $zero, 0x77
/* A9A28 800CE628 AFA10000 */  sw         $at, ($sp)
/* A9A2C 800CE62C 8DE50004 */  lw         $a1, 4($t7)
/* A9A30 800CE630 240A0001 */  addiu      $t2, $zero, 1
/* A9A34 800CE634 8FA40000 */  lw         $a0, ($sp)
/* A9A38 800CE638 AFA50004 */  sw         $a1, 4($sp)
/* A9A3C 800CE63C 8DE10008 */  lw         $at, 8($t7)
/* A9A40 800CE640 AFA10008 */  sw         $at, 8($sp)
/* A9A44 800CE644 8D210000 */  lw         $at, ($t1)
/* A9A48 800CE648 8FA60008 */  lw         $a2, 8($sp)
/* A9A4C 800CE64C AFA1000C */  sw         $at, 0xc($sp)
/* A9A50 800CE650 8D2C0004 */  lw         $t4, 4($t1)
/* A9A54 800CE654 8FA7000C */  lw         $a3, 0xc($sp)
/* A9A58 800CE658 AFAC0010 */  sw         $t4, 0x10($sp)
/* A9A5C 800CE65C 8D210008 */  lw         $at, 8($t1)
/* A9A60 800CE660 AFB90020 */  sw         $t9, 0x20($sp)
/* A9A64 800CE664 AFAA001C */  sw         $t2, 0x1c($sp)
/* A9A68 800CE668 AFAD0018 */  sw         $t5, 0x18($sp)
/* A9A6C 800CE66C 0C032A3E */  jal        func_800CA8F8
/* A9A70 800CE670 AFA10014 */   sw        $at, 0x14($sp)
/* A9A74 800CE674 50400056 */  beql       $v0, $zero, .L800CE7D0
/* A9A78 800CE678 C6120040 */   lwc1      $f18, 0x40($s0)
/* A9A7C 800CE67C 8C41005C */  lw         $at, 0x5c($v0)
/* A9A80 800CE680 27AB009C */  addiu      $t3, $sp, 0x9c
/* A9A84 800CE684 27A4013C */  addiu      $a0, $sp, 0x13c
/* A9A88 800CE688 AD610000 */  sw         $at, ($t3)
/* A9A8C 800CE68C 8C4E0060 */  lw         $t6, 0x60($v0)
/* A9A90 800CE690 240D0077 */  addiu      $t5, $zero, 0x77
/* A9A94 800CE694 AD6E0004 */  sw         $t6, 4($t3)
/* A9A98 800CE698 8C410064 */  lw         $at, 0x64($v0)
/* A9A9C 800CE69C AD610008 */  sw         $at, 8($t3)
/* A9AA0 800CE6A0 C7AA0124 */  lwc1       $f10, 0x124($sp)
/* A9AA4 800CE6A4 C4520094 */  lwc1       $f18, 0x94($v0)
/* A9AA8 800CE6A8 C7A60128 */  lwc1       $f6, 0x128($sp)
/* A9AAC 800CE6AC 460A9201 */  sub.s      $f8, $f18, $f10
/* A9AB0 800CE6B0 E7A8013C */  swc1       $f8, 0x13c($sp)
/* A9AB4 800CE6B4 C4440098 */  lwc1       $f4, 0x98($v0)
/* A9AB8 800CE6B8 C7A8012C */  lwc1       $f8, 0x12c($sp)
/* A9ABC 800CE6BC 46062481 */  sub.s      $f18, $f4, $f6
/* A9AC0 800CE6C0 E7B20140 */  swc1       $f18, 0x140($sp)
/* A9AC4 800CE6C4 C44A009C */  lwc1       $f10, 0x9c($v0)
/* A9AC8 800CE6C8 46085101 */  sub.s      $f4, $f10, $f8
/* A9ACC 800CE6CC E7A40144 */  swc1       $f4, 0x144($sp)
/* A9AD0 800CE6D0 8C810000 */  lw         $at, ($a0)
/* A9AD4 800CE6D4 AFA10004 */  sw         $at, 4($sp)
/* A9AD8 800CE6D8 8C860004 */  lw         $a2, 4($a0)
/* A9ADC 800CE6DC 8FA50004 */  lw         $a1, 4($sp)
/* A9AE0 800CE6E0 AFA60008 */  sw         $a2, 8($sp)
/* A9AE4 800CE6E4 8C870008 */  lw         $a3, 8($a0)
/* A9AE8 800CE6E8 AFA7000C */  sw         $a3, 0xc($sp)
/* A9AEC 800CE6EC C606003C */  lwc1       $f6, 0x3c($s0)
/* A9AF0 800CE6F0 AFAD0014 */  sw         $t5, 0x14($sp)
/* A9AF4 800CE6F4 0C0329CD */  jal        func_800CA734
/* A9AF8 800CE6F8 E7A60010 */   swc1      $f6, 0x10($sp)
/* A9AFC 800CE6FC 3C038025 */  lui        $v1, %hi(D_802488B0)
/* A9B00 800CE700 246388B0 */  addiu      $v1, $v1, %lo(D_802488B0)
/* A9B04 800CE704 C46A0000 */  lwc1       $f10, ($v1)
/* A9B08 800CE708 44809800 */  mtc1       $zero, $f19
/* A9B0C 800CE70C 44809000 */  mtc1       $zero, $f18
/* A9B10 800CE710 46005221 */  cvt.d.s    $f8, $f10
/* A9B14 800CE714 46289032 */  c.eq.d     $f18, $f8
/* A9B18 800CE718 00000000 */  nop
/* A9B1C 800CE71C 45020012 */  bc1fl      .L800CE768
/* A9B20 800CE720 8C610000 */   lw        $at, ($v1)
/* A9B24 800CE724 C4660004 */  lwc1       $f6, 4($v1)
/* A9B28 800CE728 44802800 */  mtc1       $zero, $f5
/* A9B2C 800CE72C 44802000 */  mtc1       $zero, $f4
/* A9B30 800CE730 460032A1 */  cvt.d.s    $f10, $f6
/* A9B34 800CE734 462A2032 */  c.eq.d     $f4, $f10
/* A9B38 800CE738 00000000 */  nop
/* A9B3C 800CE73C 4502000A */  bc1fl      .L800CE768
/* A9B40 800CE740 8C610000 */   lw        $at, ($v1)
/* A9B44 800CE744 C4680008 */  lwc1       $f8, 8($v1)
/* A9B48 800CE748 44809800 */  mtc1       $zero, $f19
/* A9B4C 800CE74C 44809000 */  mtc1       $zero, $f18
/* A9B50 800CE750 460041A1 */  cvt.d.s    $f6, $f8
/* A9B54 800CE754 46269032 */  c.eq.d     $f18, $f6
/* A9B58 800CE758 00000000 */  nop
/* A9B5C 800CE75C 4503000A */  bc1tl      .L800CE788
/* A9B60 800CE760 240F0001 */   addiu     $t7, $zero, 1
/* A9B64 800CE764 8C610000 */  lw         $at, ($v1)
.L800CE768:
/* A9B68 800CE768 27A4009C */  addiu      $a0, $sp, 0x9c
/* A9B6C 800CE76C 8C790004 */  lw         $t9, 4($v1)
/* A9B70 800CE770 AC810000 */  sw         $at, ($a0)
/* A9B74 800CE774 8C610008 */  lw         $at, 8($v1)
/* A9B78 800CE778 AC990004 */  sw         $t9, 4($a0)
/* A9B7C 800CE77C 0C03606C */  jal        func_800D81B0
/* A9B80 800CE780 AC810008 */   sw        $at, 8($a0)
/* A9B84 800CE784 240F0001 */  addiu      $t7, $zero, 1
.L800CE788:
/* A9B88 800CE788 AE0F009C */  sw         $t7, 0x9c($s0)
/* A9B8C 800CE78C C7A4009C */  lwc1       $f4, 0x9c($sp)
/* A9B90 800CE790 27AB009C */  addiu      $t3, $sp, 0x9c
/* A9B94 800CE794 E60400B4 */  swc1       $f4, 0xb4($s0)
/* A9B98 800CE798 C7AA00A0 */  lwc1       $f10, 0xa0($sp)
/* A9B9C 800CE79C E60A00B8 */  swc1       $f10, 0xb8($s0)
/* A9BA0 800CE7A0 C7A800A4 */  lwc1       $f8, 0xa4($sp)
/* A9BA4 800CE7A4 E60800BC */  swc1       $f8, 0xbc($s0)
/* A9BA8 800CE7A8 8D610000 */  lw         $at, ($t3)
/* A9BAC 800CE7AC AFA10000 */  sw         $at, ($sp)
/* A9BB0 800CE7B0 8D650004 */  lw         $a1, 4($t3)
/* A9BB4 800CE7B4 8FA40000 */  lw         $a0, ($sp)
/* A9BB8 800CE7B8 AFA50004 */  sw         $a1, 4($sp)
/* A9BBC 800CE7BC 8D660008 */  lw         $a2, 8($t3)
/* A9BC0 800CE7C0 0C0331F8 */  jal        func_800CC7E0
/* A9BC4 800CE7C4 AFA60008 */   sw        $a2, 8($sp)
/* A9BC8 800CE7C8 E60000B0 */  swc1       $f0, 0xb0($s0)
/* A9BCC 800CE7CC C6120040 */  lwc1       $f18, 0x40($s0)
.L800CE7D0:
/* A9BD0 800CE7D0 3C013FE0 */  lui        $at, 0x3fe0
/* A9BD4 800CE7D4 44812800 */  mtc1       $at, $f5
/* A9BD8 800CE7D8 44802000 */  mtc1       $zero, $f4
/* A9BDC 800CE7DC 460091A1 */  cvt.d.s    $f6, $f18
/* A9BE0 800CE7E0 C7A80158 */  lwc1       $f8, 0x158($sp)
/* A9BE4 800CE7E4 46243282 */  mul.d      $f10, $f6, $f4
/* A9BE8 800CE7E8 460044A1 */  cvt.d.s    $f18, $f8
/* A9BEC 800CE7EC 462A9181 */  sub.d      $f6, $f18, $f10
/* A9BF0 800CE7F0 44805000 */  mtc1       $zero, $f10
/* A9BF4 800CE7F4 44815800 */  mtc1       $at, $f11
/* A9BF8 800CE7F8 46203120 */  cvt.s.d    $f4, $f6
/* A9BFC 800CE7FC E7A40158 */  swc1       $f4, 0x158($sp)
/* A9C00 800CE800 C6080040 */  lwc1       $f8, 0x40($s0)
/* A9C04 800CE804 C7A40140 */  lwc1       $f4, 0x140($sp)
/* A9C08 800CE808 460044A1 */  cvt.d.s    $f18, $f8
/* A9C0C 800CE80C 46002221 */  cvt.d.s    $f8, $f4
/* A9C10 800CE810 462A9182 */  mul.d      $f6, $f18, $f10
/* A9C14 800CE814 46264481 */  sub.d      $f18, $f8, $f6
/* A9C18 800CE818 462092A0 */  cvt.s.d    $f10, $f18
/* A9C1C 800CE81C E7AA0140 */  swc1       $f10, 0x140($sp)
.L800CE820:
/* A9C20 800CE820 8FB800EC */  lw         $t8, 0xec($sp)
.L800CE824:
/* A9C24 800CE824 3C013FE0 */  lui        $at, 0x3fe0
/* A9C28 800CE828 27AC013C */  addiu      $t4, $sp, 0x13c
/* A9C2C 800CE82C 5700003D */  bnel       $t8, $zero, .L800CE924
/* A9C30 800CE830 27B9013C */   addiu     $t9, $sp, 0x13c
/* A9C34 800CE834 44810800 */  mtc1       $at, $f1
/* A9C38 800CE838 8D810000 */  lw         $at, ($t4)
/* A9C3C 800CE83C 27A20050 */  addiu      $v0, $sp, 0x50
/* A9C40 800CE840 27A30084 */  addiu      $v1, $sp, 0x84
/* A9C44 800CE844 AC410000 */  sw         $at, ($v0)
/* A9C48 800CE848 8D8A0004 */  lw         $t2, 4($t4)
/* A9C4C 800CE84C 27A80090 */  addiu      $t0, $sp, 0x90
/* A9C50 800CE850 44800000 */  mtc1       $zero, $f0
/* A9C54 800CE854 AC4A0004 */  sw         $t2, 4($v0)
/* A9C58 800CE858 8D810008 */  lw         $at, 8($t4)
/* A9C5C 800CE85C AC6A0004 */  sw         $t2, 4($v1)
/* A9C60 800CE860 AD0A0004 */  sw         $t2, 4($t0)
/* A9C64 800CE864 AC410008 */  sw         $at, 8($v0)
/* A9C68 800CE868 8C410000 */  lw         $at, ($v0)
/* A9C6C 800CE86C 27AA006C */  addiu      $t2, $sp, 0x6c
/* A9C70 800CE870 AC610000 */  sw         $at, ($v1)
/* A9C74 800CE874 8C410008 */  lw         $at, 8($v0)
/* A9C78 800CE878 AC610008 */  sw         $at, 8($v1)
/* A9C7C 800CE87C 8C410000 */  lw         $at, ($v0)
/* A9C80 800CE880 AD010000 */  sw         $at, ($t0)
/* A9C84 800CE884 8C410008 */  lw         $at, 8($v0)
/* A9C88 800CE888 AD010008 */  sw         $at, 8($t0)
/* A9C8C 800CE88C C6060040 */  lwc1       $f6, 0x40($s0)
/* A9C90 800CE890 C7A40094 */  lwc1       $f4, 0x94($sp)
/* A9C94 800CE894 460034A1 */  cvt.d.s    $f18, $f6
/* A9C98 800CE898 46002221 */  cvt.d.s    $f8, $f4
/* A9C9C 800CE89C 46209282 */  mul.d      $f10, $f18, $f0
/* A9CA0 800CE8A0 C7B20088 */  lwc1       $f18, 0x88($sp)
/* A9CA4 800CE8A4 462A4100 */  add.d      $f4, $f8, $f10
/* A9CA8 800CE8A8 46009221 */  cvt.d.s    $f8, $f18
/* A9CAC 800CE8AC 462021A0 */  cvt.s.d    $f6, $f4
/* A9CB0 800CE8B0 E7A60094 */  swc1       $f6, 0x94($sp)
/* A9CB4 800CE8B4 C60A0040 */  lwc1       $f10, 0x40($s0)
/* A9CB8 800CE8B8 46005121 */  cvt.d.s    $f4, $f10
/* A9CBC 800CE8BC 46202182 */  mul.d      $f6, $f4, $f0
/* A9CC0 800CE8C0 46264481 */  sub.d      $f18, $f8, $f6
/* A9CC4 800CE8C4 462092A0 */  cvt.s.d    $f10, $f18
/* A9CC8 800CE8C8 E7AA0088 */  swc1       $f10, 0x88($sp)
/* A9CCC 800CE8CC 8D010000 */  lw         $at, ($t0)
/* A9CD0 800CE8D0 AFA10000 */  sw         $at, ($sp)
/* A9CD4 800CE8D4 8D050004 */  lw         $a1, 4($t0)
/* A9CD8 800CE8D8 8FA40000 */  lw         $a0, ($sp)
/* A9CDC 800CE8DC AFA50004 */  sw         $a1, 4($sp)
/* A9CE0 800CE8E0 8D010008 */  lw         $at, 8($t0)
/* A9CE4 800CE8E4 AFA10008 */  sw         $at, 8($sp)
/* A9CE8 800CE8E8 8C610000 */  lw         $at, ($v1)
/* A9CEC 800CE8EC 8FA60008 */  lw         $a2, 8($sp)
/* A9CF0 800CE8F0 AFA1000C */  sw         $at, 0xc($sp)
/* A9CF4 800CE8F4 8C6C0004 */  lw         $t4, 4($v1)
/* A9CF8 800CE8F8 8FA7000C */  lw         $a3, 0xc($sp)
/* A9CFC 800CE8FC AFAC0010 */  sw         $t4, 0x10($sp)
/* A9D00 800CE900 8C610008 */  lw         $at, 8($v1)
/* A9D04 800CE904 AFAA0018 */  sw         $t2, 0x18($sp)
/* A9D08 800CE908 0C02BAAA */  jal        func_800AEAA8
/* A9D0C 800CE90C AFA10014 */   sw        $at, 0x14($sp)
/* A9D10 800CE910 27A4006C */  addiu      $a0, $sp, 0x6c
/* A9D14 800CE914 24050077 */  addiu      $a1, $zero, 0x77
/* A9D18 800CE918 0C0325D2 */  jal        func_800C9748
/* A9D1C 800CE91C 24060002 */   addiu     $a2, $zero, 2
/* A9D20 800CE920 27B9013C */  addiu      $t9, $sp, 0x13c
.L800CE924:
/* A9D24 800CE924 8F210000 */  lw         $at, ($t9)
/* A9D28 800CE928 AFA10000 */  sw         $at, ($sp)
/* A9D2C 800CE92C 8F250004 */  lw         $a1, 4($t9)
/* A9D30 800CE930 8FA40000 */  lw         $a0, ($sp)
/* A9D34 800CE934 AFA50004 */  sw         $a1, 4($sp)
/* A9D38 800CE938 8F210008 */  lw         $at, 8($t9)
/* A9D3C 800CE93C AFA10008 */  sw         $at, 8($sp)
/* A9D40 800CE940 C6000040 */  lwc1       $f0, 0x40($s0)
/* A9D44 800CE944 3C018011 */  lui        $at, %hi(D_801104C0)
/* A9D48 800CE948 D42804C0 */  ldc1       $f8, %lo(D_801104C0)($at)
/* A9D4C 800CE94C 46000121 */  cvt.d.s    $f4, $f0
/* A9D50 800CE950 46000287 */  neg.s      $f10, $f0
/* A9D54 800CE954 46282182 */  mul.d      $f6, $f4, $f8
/* A9D58 800CE958 3C013FE0 */  lui        $at, 0x3fe0
/* A9D5C 800CE95C 44814800 */  mtc1       $at, $f9
/* A9D60 800CE960 44804000 */  mtc1       $zero, $f8
/* A9D64 800CE964 46005121 */  cvt.d.s    $f4, $f10
/* A9D68 800CE968 8FA60008 */  lw         $a2, 8($sp)
/* A9D6C 800CE96C 462034A0 */  cvt.s.d    $f18, $f6
/* A9D70 800CE970 46282182 */  mul.d      $f6, $f4, $f8
/* A9D74 800CE974 44079000 */  mfc1       $a3, $f18
/* A9D78 800CE978 462034A0 */  cvt.s.d    $f18, $f6
/* A9D7C 800CE97C 0C032BE2 */  jal        func_800CAF88
/* A9D80 800CE980 E7B20010 */   swc1      $f18, 0x10($sp)
/* A9D84 800CE984 10400003 */  beqz       $v0, .L800CE994
/* A9D88 800CE988 AFA2011C */   sw        $v0, 0x11c($sp)
/* A9D8C 800CE98C 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* A9D90 800CE990 1160000A */  beqz       $t3, .L800CE9BC
.L800CE994:
/* A9D94 800CE994 24090001 */   addiu     $t1, $zero, 1
/* A9D98 800CE998 2418FFFF */  addiu      $t8, $zero, -1
/* A9D9C 800CE99C 240DFFFF */  addiu      $t5, $zero, -1
/* A9DA0 800CE9A0 AE090098 */  sw         $t1, 0x98($s0)
/* A9DA4 800CE9A4 AE1800E0 */  sw         $t8, 0xe0($s0)
/* A9DA8 800CE9A8 AE0D00E4 */  sw         $t5, 0xe4($s0)
/* A9DAC 800CE9AC 0C032F02 */  jal        func_800CBC08
/* A9DB0 800CE9B0 02002025 */   or        $a0, $s0, $zero
/* A9DB4 800CE9B4 10000046 */  b          .L800CEAD0
/* A9DB8 800CE9B8 27AC013C */   addiu     $t4, $sp, 0x13c
.L800CE9BC:
/* A9DBC 800CE9BC AE000098 */  sw         $zero, 0x98($s0)
/* A9DC0 800CE9C0 8C410094 */  lw         $at, 0x94($v0)
/* A9DC4 800CE9C4 27AC013C */  addiu      $t4, $sp, 0x13c
/* A9DC8 800CE9C8 3C098023 */  lui        $t1, %hi(D_80236980)
/* A9DCC 800CE9CC AD810000 */  sw         $at, ($t4)
/* A9DD0 800CE9D0 8C4F0098 */  lw         $t7, 0x98($v0)
/* A9DD4 800CE9D4 25296980 */  addiu      $t1, $t1, %lo(D_80236980)
/* A9DD8 800CE9D8 27A30060 */  addiu      $v1, $sp, 0x60
/* A9DDC 800CE9DC AD8F0004 */  sw         $t7, 4($t4)
/* A9DE0 800CE9E0 8C41009C */  lw         $at, 0x9c($v0)
/* A9DE4 800CE9E4 AD810008 */  sw         $at, 8($t4)
/* A9DE8 800CE9E8 C7AA013C */  lwc1       $f10, 0x13c($sp)
/* A9DEC 800CE9EC 240100A0 */  addiu      $at, $zero, 0xa0
/* A9DF0 800CE9F0 E60A00D4 */  swc1       $f10, 0xd4($s0)
/* A9DF4 800CE9F4 C7A40140 */  lwc1       $f4, 0x140($sp)
/* A9DF8 800CE9F8 E60400D8 */  swc1       $f4, 0xd8($s0)
/* A9DFC 800CE9FC C7A80144 */  lwc1       $f8, 0x144($sp)
/* A9E00 800CEA00 E60800DC */  swc1       $f8, 0xdc($s0)
/* A9E04 800CEA04 8C590004 */  lw         $t9, 4($v0)
/* A9E08 800CEA08 AE1900E0 */  sw         $t9, 0xe0($s0)
/* A9E0C 800CEA0C 8C4E0004 */  lw         $t6, 4($v0)
/* A9E10 800CEA10 24190001 */  addiu      $t9, $zero, 1
/* A9E14 800CEA14 000E5880 */  sll        $t3, $t6, 2
/* A9E18 800CEA18 016E5821 */  addu       $t3, $t3, $t6
/* A9E1C 800CEA1C 000B5880 */  sll        $t3, $t3, 2
/* A9E20 800CEA20 016E5823 */  subu       $t3, $t3, $t6
/* A9E24 800CEA24 000B5900 */  sll        $t3, $t3, 4
/* A9E28 800CEA28 01693021 */  addu       $a2, $t3, $t1
/* A9E2C 800CEA2C 8CD800E4 */  lw         $t8, 0xe4($a2)
/* A9E30 800CEA30 00586823 */  subu       $t5, $v0, $t8
/* A9E34 800CEA34 01A1001A */  div        $zero, $t5, $at
/* A9E38 800CEA38 00005012 */  mflo       $t2
/* A9E3C 800CEA3C AE0A00E4 */  sw         $t2, 0xe4($s0)
/* A9E40 800CEA40 8C41005C */  lw         $at, 0x5c($v0)
/* A9E44 800CEA44 AC610000 */  sw         $at, ($v1)
/* A9E48 800CEA48 8C4F0060 */  lw         $t7, 0x60($v0)
/* A9E4C 800CEA4C AC6F0004 */  sw         $t7, 4($v1)
/* A9E50 800CEA50 8C410064 */  lw         $at, 0x64($v0)
/* A9E54 800CEA54 AC610008 */  sw         $at, 8($v1)
/* A9E58 800CEA58 AE19009C */  sw         $t9, 0x9c($s0)
/* A9E5C 800CEA5C C7A60060 */  lwc1       $f6, 0x60($sp)
/* A9E60 800CEA60 E60600B4 */  swc1       $f6, 0xb4($s0)
/* A9E64 800CEA64 C7B20064 */  lwc1       $f18, 0x64($sp)
/* A9E68 800CEA68 E61200B8 */  swc1       $f18, 0xb8($s0)
/* A9E6C 800CEA6C C7AA0068 */  lwc1       $f10, 0x68($sp)
/* A9E70 800CEA70 E60A00BC */  swc1       $f10, 0xbc($s0)
/* A9E74 800CEA74 8C610000 */  lw         $at, ($v1)
/* A9E78 800CEA78 AFA10000 */  sw         $at, ($sp)
/* A9E7C 800CEA7C 8C650004 */  lw         $a1, 4($v1)
/* A9E80 800CEA80 8FA40000 */  lw         $a0, ($sp)
/* A9E84 800CEA84 AFA50004 */  sw         $a1, 4($sp)
/* A9E88 800CEA88 8C660008 */  lw         $a2, 8($v1)
/* A9E8C 800CEA8C 0C0331F8 */  jal        func_800CC7E0
/* A9E90 800CEA90 AFA60008 */   sw        $a2, 8($sp)
/* A9E94 800CEA94 E60000B0 */  swc1       $f0, 0xb0($s0)
/* A9E98 800CEA98 27A9013C */  addiu      $t1, $sp, 0x13c
/* A9E9C 800CEA9C 8D210000 */  lw         $at, ($t1)
/* A9EA0 800CEAA0 260A0060 */  addiu      $t2, $s0, 0x60
/* A9EA4 800CEAA4 8FA7011C */  lw         $a3, 0x11c($sp)
/* A9EA8 800CEAA8 AFA10000 */  sw         $at, ($sp)
/* A9EAC 800CEAAC 8D250004 */  lw         $a1, 4($t1)
/* A9EB0 800CEAB0 8FA40000 */  lw         $a0, ($sp)
/* A9EB4 800CEAB4 AFA50004 */  sw         $a1, 4($sp)
/* A9EB8 800CEAB8 8D260008 */  lw         $a2, 8($t1)
/* A9EBC 800CEABC AFB00014 */  sw         $s0, 0x14($sp)
/* A9EC0 800CEAC0 AFAA0010 */  sw         $t2, 0x10($sp)
/* A9EC4 800CEAC4 0C032D1C */  jal        func_800CB470
/* A9EC8 800CEAC8 AFA60008 */   sw        $a2, 8($sp)
/* A9ECC 800CEACC 27AC013C */  addiu      $t4, $sp, 0x13c
.L800CEAD0:
/* A9ED0 800CEAD0 8D810000 */  lw         $at, ($t4)
/* A9ED4 800CEAD4 240E0001 */  addiu      $t6, $zero, 1
/* A9ED8 800CEAD8 02002025 */  or         $a0, $s0, $zero
/* A9EDC 800CEADC AFA10004 */  sw         $at, 4($sp)
/* A9EE0 800CEAE0 8D860004 */  lw         $a2, 4($t4)
/* A9EE4 800CEAE4 8FA50004 */  lw         $a1, 4($sp)
/* A9EE8 800CEAE8 AFA60008 */  sw         $a2, 8($sp)
/* A9EEC 800CEAEC 8D870008 */  lw         $a3, 8($t4)
/* A9EF0 800CEAF0 AFAE0010 */  sw         $t6, 0x10($sp)
/* A9EF4 800CEAF4 0C033205 */  jal        func_800CC814
/* A9EF8 800CEAF8 AFA7000C */   sw        $a3, 0xc($sp)
/* A9EFC 800CEAFC 8FBF0034 */  lw         $ra, 0x34($sp)
.L800CEB00:
/* A9F00 800CEB00 8FB00030 */  lw         $s0, 0x30($sp)
/* A9F04 800CEB04 27BD0160 */  addiu      $sp, $sp, 0x160
/* A9F08 800CEB08 03E00008 */  jr         $ra
/* A9F0C 800CEB0C 00000000 */   nop

glabel func_800CEB10
/* A9F10 800CEB10 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* A9F14 800CEB14 AFBF0034 */  sw         $ra, 0x34($sp)
/* A9F18 800CEB18 AFB00030 */  sw         $s0, 0x30($sp)
/* A9F1C 800CEB1C C4860024 */  lwc1       $f6, 0x24($a0)
/* A9F20 800CEB20 C4840054 */  lwc1       $f4, 0x54($a0)
/* A9F24 800CEB24 240E0001 */  addiu      $t6, $zero, 1
/* A9F28 800CEB28 00808025 */  or         $s0, $a0, $zero
/* A9F2C 800CEB2C 46062200 */  add.s      $f8, $f4, $f6
/* A9F30 800CEB30 E7A800AC */  swc1       $f8, 0xac($sp)
/* A9F34 800CEB34 C48A0028 */  lwc1       $f10, 0x28($a0)
/* A9F38 800CEB38 E7AA00B0 */  swc1       $f10, 0xb0($sp)
/* A9F3C 800CEB3C C486002C */  lwc1       $f6, 0x2c($a0)
/* A9F40 800CEB40 C484005C */  lwc1       $f4, 0x5c($a0)
/* A9F44 800CEB44 46062200 */  add.s      $f8, $f4, $f6
/* A9F48 800CEB48 E7A800B4 */  swc1       $f8, 0xb4($sp)
/* A9F4C 800CEB4C C48E0030 */  lwc1       $f14, 0x30($a0)
/* A9F50 800CEB50 C4820034 */  lwc1       $f2, 0x34($a0)
/* A9F54 800CEB54 C4900038 */  lwc1       $f16, 0x38($a0)
/* A9F58 800CEB58 460E7282 */  mul.s      $f10, $f14, $f14
/* A9F5C 800CEB5C AC80009C */  sw         $zero, 0x9c($a0)
/* A9F60 800CEB60 AC8E0098 */  sw         $t6, 0x98($a0)
/* A9F64 800CEB64 46021102 */  mul.s      $f4, $f2, $f2
/* A9F68 800CEB68 E7AE0088 */  swc1       $f14, 0x88($sp)
/* A9F6C 800CEB6C E7A2008C */  swc1       $f2, 0x8c($sp)
/* A9F70 800CEB70 46108202 */  mul.s      $f8, $f16, $f16
/* A9F74 800CEB74 E7B00090 */  swc1       $f16, 0x90($sp)
/* A9F78 800CEB78 46045180 */  add.s      $f6, $f10, $f4
/* A9F7C 800CEB7C 0C036C2C */  jal        func_800DB0B0
/* A9F80 800CEB80 46083300 */   add.s     $f12, $f6, $f8
/* A9F84 800CEB84 44806800 */  mtc1       $zero, $f13
/* A9F88 800CEB88 44806000 */  mtc1       $zero, $f12
/* A9F8C 800CEB8C 460002A1 */  cvt.d.s    $f10, $f0
/* A9F90 800CEB90 C7A2008C */  lwc1       $f2, 0x8c($sp)
/* A9F94 800CEB94 462A6032 */  c.eq.d     $f12, $f10
/* A9F98 800CEB98 C7AE0088 */  lwc1       $f14, 0x88($sp)
/* A9F9C 800CEB9C C7B00090 */  lwc1       $f16, 0x90($sp)
/* A9FA0 800CEBA0 E7A00048 */  swc1       $f0, 0x48($sp)
/* A9FA4 800CEBA4 45000011 */  bc1f       .L800CEBEC
/* A9FA8 800CEBA8 27AF00AC */   addiu     $t7, $sp, 0xac
/* A9FAC 800CEBAC AE00009C */  sw         $zero, 0x9c($s0)
/* A9FB0 800CEBB0 8DE10000 */  lw         $at, ($t7)
/* A9FB4 800CEBB4 24080001 */  addiu      $t0, $zero, 1
/* A9FB8 800CEBB8 02002025 */  or         $a0, $s0, $zero
/* A9FBC 800CEBBC AFA10004 */  sw         $at, 4($sp)
/* A9FC0 800CEBC0 8DE60004 */  lw         $a2, 4($t7)
/* A9FC4 800CEBC4 8FA50004 */  lw         $a1, 4($sp)
/* A9FC8 800CEBC8 AFA60008 */  sw         $a2, 8($sp)
/* A9FCC 800CEBCC 8DE70008 */  lw         $a3, 8($t7)
/* A9FD0 800CEBD0 AFA80010 */  sw         $t0, 0x10($sp)
/* A9FD4 800CEBD4 0C033205 */  jal        func_800CC814
/* A9FD8 800CEBD8 AFA7000C */   sw        $a3, 0xc($sp)
/* A9FDC 800CEBDC 0C032F02 */  jal        func_800CBC08
/* A9FE0 800CEBE0 02002025 */   or        $a0, $s0, $zero
/* A9FE4 800CEBE4 100000F3 */  b          .L800CEFB4
/* A9FE8 800CEBE8 8FBF0034 */   lw        $ra, 0x34($sp)
.L800CEBEC:
/* A9FEC 800CEBEC 8E0200A8 */  lw         $v0, 0xa8($s0)
/* A9FF0 800CEBF0 24010001 */  addiu      $at, $zero, 1
/* A9FF4 800CEBF4 C7A400AC */  lwc1       $f4, 0xac($sp)
/* A9FF8 800CEBF8 50400008 */  beql       $v0, $zero, .L800CEC1C
/* A9FFC 800CEBFC 460E2180 */   add.s     $f6, $f4, $f14
/* AA000 800CEC00 1041000E */  beq        $v0, $at, .L800CEC3C
/* AA004 800CEC04 24010002 */   addiu     $at, $zero, 2
/* AA008 800CEC08 5041000D */  beql       $v0, $at, .L800CEC40
/* AA00C 800CEC0C 46001221 */   cvt.d.s   $f8, $f2
/* AA010 800CEC10 100000DA */  b          .L800CEF7C
/* AA014 800CEC14 27AB0094 */   addiu     $t3, $sp, 0x94
/* AA018 800CEC18 460E2180 */  add.s      $f6, $f4, $f14
.L800CEC1C:
/* AA01C 800CEC1C C7A400B4 */  lwc1       $f4, 0xb4($sp)
/* AA020 800CEC20 C7A800B0 */  lwc1       $f8, 0xb0($sp)
/* AA024 800CEC24 E7A60094 */  swc1       $f6, 0x94($sp)
/* AA028 800CEC28 46102180 */  add.s      $f6, $f4, $f16
/* AA02C 800CEC2C 46024280 */  add.s      $f10, $f8, $f2
/* AA030 800CEC30 E7A6009C */  swc1       $f6, 0x9c($sp)
/* AA034 800CEC34 100000D0 */  b          .L800CEF78
/* AA038 800CEC38 E7AA0098 */   swc1      $f10, 0x98($sp)
.L800CEC3C:
/* AA03C 800CEC3C 46001221 */  cvt.d.s    $f8, $f2
.L800CEC40:
/* AA040 800CEC40 24090001 */  addiu      $t1, $zero, 1
/* AA044 800CEC44 46286032 */  c.eq.d     $f12, $f8
/* AA048 800CEC48 00000000 */  nop
/* AA04C 800CEC4C 45020004 */  bc1fl      .L800CEC60
/* AA050 800CEC50 AFA00058 */   sw        $zero, 0x58($sp)
/* AA054 800CEC54 10000002 */  b          .L800CEC60
/* AA058 800CEC58 AFA90058 */   sw        $t1, 0x58($sp)
/* AA05C 800CEC5C AFA00058 */  sw         $zero, 0x58($sp)
.L800CEC60:
/* AA060 800CEC60 C60A003C */  lwc1       $f10, 0x3c($s0)
/* AA064 800CEC64 C7A40048 */  lwc1       $f4, 0x48($sp)
/* AA068 800CEC68 C6060040 */  lwc1       $f6, 0x40($s0)
/* AA06C 800CEC6C 3C013FE0 */  lui        $at, 0x3fe0
/* AA070 800CEC70 46045003 */  div.s      $f0, $f10, $f4
/* AA074 800CEC74 44805000 */  mtc1       $zero, $f10
/* AA078 800CEC78 44815800 */  mtc1       $at, $f11
/* AA07C 800CEC7C 27AA00AC */  addiu      $t2, $sp, 0xac
/* AA080 800CEC80 46003221 */  cvt.d.s    $f8, $f6
/* AA084 800CEC84 C7A600B0 */  lwc1       $f6, 0xb0($sp)
/* AA088 800CEC88 462A4102 */  mul.d      $f4, $f8, $f10
/* AA08C 800CEC8C 27AD00A0 */  addiu      $t5, $sp, 0xa0
/* AA090 800CEC90 46003221 */  cvt.d.s    $f8, $f6
/* AA094 800CEC94 27AF005C */  addiu      $t7, $sp, 0x5c
/* AA098 800CEC98 46244280 */  add.d      $f10, $f8, $f4
/* AA09C 800CEC9C C7A800AC */  lwc1       $f8, 0xac($sp)
/* AA0A0 800CECA0 46007482 */  mul.s      $f18, $f14, $f0
/* AA0A4 800CECA4 460E4100 */  add.s      $f4, $f8, $f14
/* AA0A8 800CECA8 C7A800B4 */  lwc1       $f8, 0xb4($sp)
/* AA0AC 800CECAC 462051A0 */  cvt.s.d    $f6, $f10
/* AA0B0 800CECB0 E7A40094 */  swc1       $f4, 0x94($sp)
/* AA0B4 800CECB4 46023280 */  add.s      $f10, $f6, $f2
/* AA0B8 800CECB8 E7A600B0 */  swc1       $f6, 0xb0($sp)
/* AA0BC 800CECBC 46104180 */  add.s      $f6, $f8, $f16
/* AA0C0 800CECC0 E7AA0098 */  swc1       $f10, 0x98($sp)
/* AA0C4 800CECC4 46122200 */  add.s      $f8, $f4, $f18
/* AA0C8 800CECC8 46001102 */  mul.s      $f4, $f2, $f0
/* AA0CC 800CECCC E7A6009C */  swc1       $f6, 0x9c($sp)
/* AA0D0 800CECD0 E7A800A0 */  swc1       $f8, 0xa0($sp)
/* AA0D4 800CECD4 E7A4003C */  swc1       $f4, 0x3c($sp)
/* AA0D8 800CECD8 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* AA0DC 800CECDC 46085100 */  add.s      $f4, $f10, $f8
/* AA0E0 800CECE0 46008282 */  mul.s      $f10, $f16, $f0
/* AA0E4 800CECE4 E7A400A4 */  swc1       $f4, 0xa4($sp)
/* AA0E8 800CECE8 E7AA0038 */  swc1       $f10, 0x38($sp)
/* AA0EC 800CECEC C7A80038 */  lwc1       $f8, 0x38($sp)
/* AA0F0 800CECF0 46083100 */  add.s      $f4, $f6, $f8
/* AA0F4 800CECF4 E7A400A8 */  swc1       $f4, 0xa8($sp)
/* AA0F8 800CECF8 8D410000 */  lw         $at, ($t2)
/* AA0FC 800CECFC AFA10000 */  sw         $at, ($sp)
/* AA100 800CED00 8D450004 */  lw         $a1, 4($t2)
/* AA104 800CED04 8FA40000 */  lw         $a0, ($sp)
/* AA108 800CED08 AFA50004 */  sw         $a1, 4($sp)
/* AA10C 800CED0C 8D410008 */  lw         $at, 8($t2)
/* AA110 800CED10 AFA10008 */  sw         $at, 8($sp)
/* AA114 800CED14 8DA10000 */  lw         $at, ($t5)
/* AA118 800CED18 8FA60008 */  lw         $a2, 8($sp)
/* AA11C 800CED1C AFA1000C */  sw         $at, 0xc($sp)
/* AA120 800CED20 8DB80004 */  lw         $t8, 4($t5)
/* AA124 800CED24 8FA7000C */  lw         $a3, 0xc($sp)
/* AA128 800CED28 AFB80010 */  sw         $t8, 0x10($sp)
/* AA12C 800CED2C 8DA10008 */  lw         $at, 8($t5)
/* AA130 800CED30 E7B20040 */  swc1       $f18, 0x40($sp)
/* AA134 800CED34 AFAF0018 */  sw         $t7, 0x18($sp)
/* AA138 800CED38 0C02BAAA */  jal        func_800AEAA8
/* AA13C 800CED3C AFA10014 */   sw        $at, 0x14($sp)
/* AA140 800CED40 C7AA0060 */  lwc1       $f10, 0x60($sp)
/* AA144 800CED44 C6060040 */  lwc1       $f6, 0x40($s0)
/* AA148 800CED48 27A4005C */  addiu      $a0, $sp, 0x5c
/* AA14C 800CED4C 24050077 */  addiu      $a1, $zero, 0x77
/* AA150 800CED50 46065201 */  sub.s      $f8, $f10, $f6
/* AA154 800CED54 24060002 */  addiu      $a2, $zero, 2
/* AA158 800CED58 0C0325D2 */  jal        func_800C9748
/* AA15C 800CED5C E7A80060 */   swc1      $f8, 0x60($sp)
/* AA160 800CED60 27B900AC */  addiu      $t9, $sp, 0xac
/* AA164 800CED64 8F210000 */  lw         $at, ($t9)
/* AA168 800CED68 27AB00A0 */  addiu      $t3, $sp, 0xa0
/* AA16C 800CED6C 240E0077 */  addiu      $t6, $zero, 0x77
/* AA170 800CED70 AFA10000 */  sw         $at, ($sp)
/* AA174 800CED74 8F250004 */  lw         $a1, 4($t9)
/* AA178 800CED78 240D0001 */  addiu      $t5, $zero, 1
/* AA17C 800CED7C 24180001 */  addiu      $t8, $zero, 1
/* AA180 800CED80 AFA50004 */  sw         $a1, 4($sp)
/* AA184 800CED84 8F210008 */  lw         $at, 8($t9)
/* AA188 800CED88 8FA40000 */  lw         $a0, ($sp)
/* AA18C 800CED8C AFA10008 */  sw         $at, 8($sp)
/* AA190 800CED90 8D610000 */  lw         $at, ($t3)
/* AA194 800CED94 8FA60008 */  lw         $a2, 8($sp)
/* AA198 800CED98 AFA1000C */  sw         $at, 0xc($sp)
/* AA19C 800CED9C 8D6C0004 */  lw         $t4, 4($t3)
/* AA1A0 800CEDA0 8FA7000C */  lw         $a3, 0xc($sp)
/* AA1A4 800CEDA4 AFAC0010 */  sw         $t4, 0x10($sp)
/* AA1A8 800CEDA8 8D610008 */  lw         $at, 8($t3)
/* AA1AC 800CEDAC AFB80020 */  sw         $t8, 0x20($sp)
/* AA1B0 800CEDB0 AFAD001C */  sw         $t5, 0x1c($sp)
/* AA1B4 800CEDB4 AFAE0018 */  sw         $t6, 0x18($sp)
/* AA1B8 800CEDB8 0C032A3E */  jal        func_800CA8F8
/* AA1BC 800CEDBC AFA10014 */   sw        $at, 0x14($sp)
/* AA1C0 800CEDC0 10400016 */  beqz       $v0, .L800CEE1C
/* AA1C4 800CEDC4 27A40094 */   addiu     $a0, $sp, 0x94
/* AA1C8 800CEDC8 8C41005C */  lw         $at, 0x5c($v0)
/* AA1CC 800CEDCC 27AF004C */  addiu      $t7, $sp, 0x4c
/* AA1D0 800CEDD0 24090001 */  addiu      $t1, $zero, 1
/* AA1D4 800CEDD4 ADE10000 */  sw         $at, ($t7)
/* AA1D8 800CEDD8 8C590060 */  lw         $t9, 0x60($v0)
/* AA1DC 800CEDDC ADF90004 */  sw         $t9, 4($t7)
/* AA1E0 800CEDE0 8C410064 */  lw         $at, 0x64($v0)
/* AA1E4 800CEDE4 ADE10008 */  sw         $at, 8($t7)
/* AA1E8 800CEDE8 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* AA1EC 800CEDEC C4440094 */  lwc1       $f4, 0x94($v0)
/* AA1F0 800CEDF0 460A2181 */  sub.s      $f6, $f4, $f10
/* AA1F4 800CEDF4 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* AA1F8 800CEDF8 E7A60094 */  swc1       $f6, 0x94($sp)
/* AA1FC 800CEDFC C4480098 */  lwc1       $f8, 0x98($v0)
/* AA200 800CEE00 46044281 */  sub.s      $f10, $f8, $f4
/* AA204 800CEE04 C7A80038 */  lwc1       $f8, 0x38($sp)
/* AA208 800CEE08 E7AA0098 */  swc1       $f10, 0x98($sp)
/* AA20C 800CEE0C C446009C */  lwc1       $f6, 0x9c($v0)
/* AA210 800CEE10 46083101 */  sub.s      $f4, $f6, $f8
/* AA214 800CEE14 E7A4009C */  swc1       $f4, 0x9c($sp)
/* AA218 800CEE18 AE09009C */  sw         $t1, 0x9c($s0)
.L800CEE1C:
/* AA21C 800CEE1C 8C810000 */  lw         $at, ($a0)
/* AA220 800CEE20 240C0077 */  addiu      $t4, $zero, 0x77
/* AA224 800CEE24 AFA10004 */  sw         $at, 4($sp)
/* AA228 800CEE28 8C860004 */  lw         $a2, 4($a0)
/* AA22C 800CEE2C 8FA50004 */  lw         $a1, 4($sp)
/* AA230 800CEE30 AFA60008 */  sw         $a2, 8($sp)
/* AA234 800CEE34 8C870008 */  lw         $a3, 8($a0)
/* AA238 800CEE38 AFA7000C */  sw         $a3, 0xc($sp)
/* AA23C 800CEE3C C60A003C */  lwc1       $f10, 0x3c($s0)
/* AA240 800CEE40 AFAC0014 */  sw         $t4, 0x14($sp)
/* AA244 800CEE44 0C0329CD */  jal        func_800CA734
/* AA248 800CEE48 E7AA0010 */   swc1      $f10, 0x10($sp)
/* AA24C 800CEE4C 3C038025 */  lui        $v1, %hi(D_802488B0)
/* AA250 800CEE50 246388B0 */  addiu      $v1, $v1, %lo(D_802488B0)
/* AA254 800CEE54 C4660000 */  lwc1       $f6, ($v1)
/* AA258 800CEE58 44806800 */  mtc1       $zero, $f13
/* AA25C 800CEE5C 44806000 */  mtc1       $zero, $f12
/* AA260 800CEE60 46003221 */  cvt.d.s    $f8, $f6
/* AA264 800CEE64 46286032 */  c.eq.d     $f12, $f8
/* AA268 800CEE68 00000000 */  nop
/* AA26C 800CEE6C 4502000E */  bc1fl      .L800CEEA8
/* AA270 800CEE70 8C610000 */   lw        $at, ($v1)
/* AA274 800CEE74 C4640004 */  lwc1       $f4, 4($v1)
/* AA278 800CEE78 460022A1 */  cvt.d.s    $f10, $f4
/* AA27C 800CEE7C 462A6032 */  c.eq.d     $f12, $f10
/* AA280 800CEE80 00000000 */  nop
/* AA284 800CEE84 45020008 */  bc1fl      .L800CEEA8
/* AA288 800CEE88 8C610000 */   lw        $at, ($v1)
/* AA28C 800CEE8C C4660008 */  lwc1       $f6, 8($v1)
/* AA290 800CEE90 46003221 */  cvt.d.s    $f8, $f6
/* AA294 800CEE94 46286032 */  c.eq.d     $f12, $f8
/* AA298 800CEE98 00000000 */  nop
/* AA29C 800CEE9C 4503000C */  bc1tl      .L800CEED0
/* AA2A0 800CEEA0 8FA80058 */   lw        $t0, 0x58($sp)
/* AA2A4 800CEEA4 8C610000 */  lw         $at, ($v1)
.L800CEEA8:
/* AA2A8 800CEEA8 27A4004C */  addiu      $a0, $sp, 0x4c
/* AA2AC 800CEEAC 8C6D0004 */  lw         $t5, 4($v1)
/* AA2B0 800CEEB0 AC810000 */  sw         $at, ($a0)
/* AA2B4 800CEEB4 8C610008 */  lw         $at, 8($v1)
/* AA2B8 800CEEB8 AC8D0004 */  sw         $t5, 4($a0)
/* AA2BC 800CEEBC 0C03606C */  jal        func_800D81B0
/* AA2C0 800CEEC0 AC810008 */   sw        $at, 8($a0)
/* AA2C4 800CEEC4 24180001 */  addiu      $t8, $zero, 1
/* AA2C8 800CEEC8 AE18009C */  sw         $t8, 0x9c($s0)
/* AA2CC 800CEECC 8FA80058 */  lw         $t0, 0x58($sp)
.L800CEED0:
/* AA2D0 800CEED0 C7A400B0 */  lwc1       $f4, 0xb0($sp)
/* AA2D4 800CEED4 51000003 */  beql       $t0, $zero, .L800CEEE4
/* AA2D8 800CEED8 8E0F009C */   lw        $t7, 0x9c($s0)
/* AA2DC 800CEEDC E7A40098 */  swc1       $f4, 0x98($sp)
/* AA2E0 800CEEE0 8E0F009C */  lw         $t7, 0x9c($s0)
.L800CEEE4:
/* AA2E4 800CEEE4 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* AA2E8 800CEEE8 51E00011 */  beql       $t7, $zero, .L800CEF30
/* AA2EC 800CEEEC C6060040 */   lwc1      $f6, 0x40($s0)
/* AA2F0 800CEEF0 E60A00B4 */  swc1       $f10, 0xb4($s0)
/* AA2F4 800CEEF4 C7A60050 */  lwc1       $f6, 0x50($sp)
/* AA2F8 800CEEF8 27B9004C */  addiu      $t9, $sp, 0x4c
/* AA2FC 800CEEFC E60600B8 */  swc1       $f6, 0xb8($s0)
/* AA300 800CEF00 C7A80054 */  lwc1       $f8, 0x54($sp)
/* AA304 800CEF04 E60800BC */  swc1       $f8, 0xbc($s0)
/* AA308 800CEF08 8F210000 */  lw         $at, ($t9)
/* AA30C 800CEF0C AFA10000 */  sw         $at, ($sp)
/* AA310 800CEF10 8F250004 */  lw         $a1, 4($t9)
/* AA314 800CEF14 8FA40000 */  lw         $a0, ($sp)
/* AA318 800CEF18 AFA50004 */  sw         $a1, 4($sp)
/* AA31C 800CEF1C 8F260008 */  lw         $a2, 8($t9)
/* AA320 800CEF20 0C0331F8 */  jal        func_800CC7E0
/* AA324 800CEF24 AFA60008 */   sw        $a2, 8($sp)
/* AA328 800CEF28 E60000B0 */  swc1       $f0, 0xb0($s0)
/* AA32C 800CEF2C C6060040 */  lwc1       $f6, 0x40($s0)
.L800CEF30:
/* AA330 800CEF30 C7A400B0 */  lwc1       $f4, 0xb0($sp)
/* AA334 800CEF34 3C013FE0 */  lui        $at, 0x3fe0
/* AA338 800CEF38 44810800 */  mtc1       $at, $f1
/* AA33C 800CEF3C 44800000 */  mtc1       $zero, $f0
/* AA340 800CEF40 46003221 */  cvt.d.s    $f8, $f6
/* AA344 800CEF44 460022A1 */  cvt.d.s    $f10, $f4
/* AA348 800CEF48 46204102 */  mul.d      $f4, $f8, $f0
/* AA34C 800CEF4C 46245181 */  sub.d      $f6, $f10, $f4
/* AA350 800CEF50 C7AA0098 */  lwc1       $f10, 0x98($sp)
/* AA354 800CEF54 46203220 */  cvt.s.d    $f8, $f6
/* AA358 800CEF58 46005121 */  cvt.d.s    $f4, $f10
/* AA35C 800CEF5C E7A800B0 */  swc1       $f8, 0xb0($sp)
/* AA360 800CEF60 C6060040 */  lwc1       $f6, 0x40($s0)
/* AA364 800CEF64 46003221 */  cvt.d.s    $f8, $f6
/* AA368 800CEF68 46204282 */  mul.d      $f10, $f8, $f0
/* AA36C 800CEF6C 462A2181 */  sub.d      $f6, $f4, $f10
/* AA370 800CEF70 46203220 */  cvt.s.d    $f8, $f6
/* AA374 800CEF74 E7A80098 */  swc1       $f8, 0x98($sp)
.L800CEF78:
/* AA378 800CEF78 27AB0094 */  addiu      $t3, $sp, 0x94
.L800CEF7C:
/* AA37C 800CEF7C 8D610000 */  lw         $at, ($t3)
/* AA380 800CEF80 240D0001 */  addiu      $t5, $zero, 1
/* AA384 800CEF84 02002025 */  or         $a0, $s0, $zero
/* AA388 800CEF88 AFA10004 */  sw         $at, 4($sp)
/* AA38C 800CEF8C 8D660004 */  lw         $a2, 4($t3)
/* AA390 800CEF90 8FA50004 */  lw         $a1, 4($sp)
/* AA394 800CEF94 AFA60008 */  sw         $a2, 8($sp)
/* AA398 800CEF98 8D670008 */  lw         $a3, 8($t3)
/* AA39C 800CEF9C AFAD0010 */  sw         $t5, 0x10($sp)
/* AA3A0 800CEFA0 0C033205 */  jal        func_800CC814
/* AA3A4 800CEFA4 AFA7000C */   sw        $a3, 0xc($sp)
/* AA3A8 800CEFA8 0C032F02 */  jal        func_800CBC08
/* AA3AC 800CEFAC 02002025 */   or        $a0, $s0, $zero
/* AA3B0 800CEFB0 8FBF0034 */  lw         $ra, 0x34($sp)
.L800CEFB4:
/* AA3B4 800CEFB4 8FB00030 */  lw         $s0, 0x30($sp)
/* AA3B8 800CEFB8 27BD00B8 */  addiu      $sp, $sp, 0xb8
/* AA3BC 800CEFBC 03E00008 */  jr         $ra
/* AA3C0 800CEFC0 00000000 */   nop

glabel func_800CEFC4
/* AA3C4 800CEFC4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA3C8 800CEFC8 AFBF001C */  sw         $ra, 0x1c($sp)
/* AA3CC 800CEFCC AFB00018 */  sw         $s0, 0x18($sp)
/* AA3D0 800CEFD0 8C8E00A4 */  lw         $t6, 0xa4($a0)
/* AA3D4 800CEFD4 00808025 */  or         $s0, $a0, $zero
/* AA3D8 800CEFD8 3C048011 */  lui        $a0, 0x8011
/* AA3DC 800CEFDC 2DC10005 */  sltiu      $at, $t6, 5
/* AA3E0 800CEFE0 1020001A */  beqz       $at, .L800CF04C
/* AA3E4 800CEFE4 000E7080 */   sll       $t6, $t6, 2
/* AA3E8 800CEFE8 3C018011 */  lui        $at, %hi(D_801104C8)
/* AA3EC 800CEFEC 002E0821 */  addu       $at, $at, $t6
/* AA3F0 800CEFF0 8C2E04C8 */  lw         $t6, %lo(D_801104C8)($at)
/* AA3F4 800CEFF4 01C00008 */  jr         $t6
/* AA3F8 800CEFF8 00000000 */   nop
/* AA3FC 800CEFFC 0C033373 */  jal        func_800CCDCC
/* AA400 800CF000 02002025 */   or        $a0, $s0, $zero
/* AA404 800CF004 10000014 */  b          .L800CF058
/* AA408 800CF008 8E0F0050 */   lw        $t7, 0x50($s0)
/* AA40C 800CF00C 0C033393 */  jal        func_800CCE4C
/* AA410 800CF010 02002025 */   or        $a0, $s0, $zero
/* AA414 800CF014 10000010 */  b          .L800CF058
/* AA418 800CF018 8E0F0050 */   lw        $t7, 0x50($s0)
/* AA41C 800CF01C 0C03358D */  jal        func_800CD634
/* AA420 800CF020 02002025 */   or        $a0, $s0, $zero
/* AA424 800CF024 1000000C */  b          .L800CF058
/* AA428 800CF028 8E0F0050 */   lw        $t7, 0x50($s0)
/* AA42C 800CF02C 0C0337C3 */  jal        func_800CDF0C
/* AA430 800CF030 02002025 */   or        $a0, $s0, $zero
/* AA434 800CF034 10000008 */  b          .L800CF058
/* AA438 800CF038 8E0F0050 */   lw        $t7, 0x50($s0)
/* AA43C 800CF03C 0C033AC4 */  jal        func_800CEB10
/* AA440 800CF040 02002025 */   or        $a0, $s0, $zero
/* AA444 800CF044 10000004 */  b          .L800CF058
/* AA448 800CF048 8E0F0050 */   lw        $t7, 0x50($s0)
.L800CF04C:
/* AA44C 800CF04C 0C035D18 */  jal        func_800D7460
/* AA450 800CF050 248403D0 */   addiu     $a0, $a0, 0x3d0
/* AA454 800CF054 8E0F0050 */  lw         $t7, 0x50($s0)
.L800CF058:
/* AA458 800CF058 29E10002 */  slti       $at, $t7, 2
/* AA45C 800CF05C 54200004 */  bnel       $at, $zero, .L800CF070
/* AA460 800CF060 8FBF001C */   lw        $ra, 0x1c($sp)
/* AA464 800CF064 0C032F49 */  jal        func_800CBD24
/* AA468 800CF068 02002025 */   or        $a0, $s0, $zero
/* AA46C 800CF06C 8FBF001C */  lw         $ra, 0x1c($sp)
.L800CF070:
/* AA470 800CF070 8FB00018 */  lw         $s0, 0x18($sp)
/* AA474 800CF074 27BD0020 */  addiu      $sp, $sp, 0x20
/* AA478 800CF078 03E00008 */  jr         $ra
/* AA47C 800CF07C 00000000 */   nop

glabel func_800CF080
/* AA480 800CF080 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* AA484 800CF084 AFBF0034 */  sw         $ra, 0x34($sp)
/* AA488 800CF088 F7B40028 */  sdc1       $f20, 0x28($sp)
/* AA48C 800CF08C C4840004 */  lwc1       $f4, 4($a0)
/* AA490 800CF090 3C018011 */  lui        $at, 0x8011
/* AA494 800CF094 4485A000 */  mtc1       $a1, $f20
/* AA498 800CF098 E7A400AC */  swc1       $f4, 0xac($sp)
/* AA49C 800CF09C C4880128 */  lwc1       $f8, 0x128($a0)
/* AA4A0 800CF0A0 C4860008 */  lwc1       $f6, 8($a0)
/* AA4A4 800CF0A4 46083280 */  add.s      $f10, $f6, $f8
/* AA4A8 800CF0A8 E7AA00B0 */  swc1       $f10, 0xb0($sp)
/* AA4AC 800CF0AC C484000C */  lwc1       $f4, 0xc($a0)
/* AA4B0 800CF0B0 D42A04E0 */  ldc1       $f10, 0x4e0($at)
/* AA4B4 800CF0B4 3C018011 */  lui        $at, %hi(D_801104E8)
/* AA4B8 800CF0B8 E7A400B4 */  swc1       $f4, 0xb4($sp)
/* AA4BC 800CF0BC C486003C */  lwc1       $f6, 0x3c($a0)
/* AA4C0 800CF0C0 46003221 */  cvt.d.s    $f8, $f6
/* AA4C4 800CF0C4 462A4100 */  add.d      $f4, $f8, $f10
/* AA4C8 800CF0C8 D42A04E8 */  ldc1       $f10, %lo(D_801104E8)($at)
/* AA4CC 800CF0CC 3C018011 */  lui        $at, %hi(D_801104F0)
/* AA4D0 800CF0D0 462021A0 */  cvt.s.d    $f6, $f4
/* AA4D4 800CF0D4 46003221 */  cvt.d.s    $f8, $f6
/* AA4D8 800CF0D8 D42604F0 */  ldc1       $f6, %lo(D_801104F0)($at)
/* AA4DC 800CF0DC 462A4102 */  mul.d      $f4, $f8, $f10
/* AA4E0 800CF0E0 46262203 */  div.d      $f8, $f4, $f6
/* AA4E4 800CF0E4 46204320 */  cvt.s.d    $f12, $f8
/* AA4E8 800CF0E8 0C036B60 */  jal        func_800DAD80
/* AA4EC 800CF0EC E7AC0090 */   swc1      $f12, 0x90($sp)
/* AA4F0 800CF0F0 46140482 */  mul.s      $f18, $f0, $f20
/* AA4F4 800CF0F4 C7AC0090 */  lwc1       $f12, 0x90($sp)
/* AA4F8 800CF0F8 0C036C30 */  jal        func_800DB0C0
/* AA4FC 800CF0FC E7B20094 */   swc1      $f18, 0x94($sp)
/* AA500 800CF100 C7B20094 */  lwc1       $f18, 0x94($sp)
/* AA504 800CF104 C7AA00AC */  lwc1       $f10, 0xac($sp)
/* AA508 800CF108 46140402 */  mul.s      $f16, $f0, $f20
/* AA50C 800CF10C C7A600B0 */  lwc1       $f6, 0xb0($sp)
/* AA510 800CF110 46125100 */  add.s      $f4, $f10, $f18
/* AA514 800CF114 44804000 */  mtc1       $zero, $f8
/* AA518 800CF118 27AE00AC */  addiu      $t6, $sp, 0xac
/* AA51C 800CF11C 27B900A0 */  addiu      $t9, $sp, 0xa0
/* AA520 800CF120 E7A400A0 */  swc1       $f4, 0xa0($sp)
/* AA524 800CF124 C7A400B4 */  lwc1       $f4, 0xb4($sp)
/* AA528 800CF128 46083280 */  add.s      $f10, $f6, $f8
/* AA52C 800CF12C 27AA0078 */  addiu      $t2, $sp, 0x78
/* AA530 800CF130 46102180 */  add.s      $f6, $f4, $f16
/* AA534 800CF134 E7AA00A4 */  swc1       $f10, 0xa4($sp)
/* AA538 800CF138 E7A600A8 */  swc1       $f6, 0xa8($sp)
/* AA53C 800CF13C 8DC10000 */  lw         $at, ($t6)
/* AA540 800CF140 AFA10000 */  sw         $at, ($sp)
/* AA544 800CF144 8DC50004 */  lw         $a1, 4($t6)
/* AA548 800CF148 8FA40000 */  lw         $a0, ($sp)
/* AA54C 800CF14C AFA50004 */  sw         $a1, 4($sp)
/* AA550 800CF150 8DC10008 */  lw         $at, 8($t6)
/* AA554 800CF154 AFA10008 */  sw         $at, 8($sp)
/* AA558 800CF158 8F210000 */  lw         $at, ($t9)
/* AA55C 800CF15C 8FA60008 */  lw         $a2, 8($sp)
/* AA560 800CF160 AFA1000C */  sw         $at, 0xc($sp)
/* AA564 800CF164 8F290004 */  lw         $t1, 4($t9)
/* AA568 800CF168 8FA7000C */  lw         $a3, 0xc($sp)
/* AA56C 800CF16C AFA90010 */  sw         $t1, 0x10($sp)
/* AA570 800CF170 8F210008 */  lw         $at, 8($t9)
/* AA574 800CF174 E7B0009C */  swc1       $f16, 0x9c($sp)
/* AA578 800CF178 AFAA0018 */  sw         $t2, 0x18($sp)
/* AA57C 800CF17C 0C02BAAA */  jal        func_800AEAA8
/* AA580 800CF180 AFA10014 */   sw        $at, 0x14($sp)
/* AA584 800CF184 27A40078 */  addiu      $a0, $sp, 0x78
/* AA588 800CF188 24050077 */  addiu      $a1, $zero, 0x77
/* AA58C 800CF18C 0C0325D2 */  jal        func_800C9748
/* AA590 800CF190 24060002 */   addiu     $a2, $zero, 2
/* AA594 800CF194 27AB00AC */  addiu      $t3, $sp, 0xac
/* AA598 800CF198 8D610000 */  lw         $at, ($t3)
/* AA59C 800CF19C 27AF00A0 */  addiu      $t7, $sp, 0xa0
/* AA5A0 800CF1A0 24080077 */  addiu      $t0, $zero, 0x77
/* AA5A4 800CF1A4 AFA10000 */  sw         $at, ($sp)
/* AA5A8 800CF1A8 8D650004 */  lw         $a1, 4($t3)
/* AA5AC 800CF1AC 24190001 */  addiu      $t9, $zero, 1
/* AA5B0 800CF1B0 24090001 */  addiu      $t1, $zero, 1
/* AA5B4 800CF1B4 AFA50004 */  sw         $a1, 4($sp)
/* AA5B8 800CF1B8 8D610008 */  lw         $at, 8($t3)
/* AA5BC 800CF1BC 8FA40000 */  lw         $a0, ($sp)
/* AA5C0 800CF1C0 AFA10008 */  sw         $at, 8($sp)
/* AA5C4 800CF1C4 8DE10000 */  lw         $at, ($t7)
/* AA5C8 800CF1C8 8FA60008 */  lw         $a2, 8($sp)
/* AA5CC 800CF1CC AFA1000C */  sw         $at, 0xc($sp)
/* AA5D0 800CF1D0 8DF80004 */  lw         $t8, 4($t7)
/* AA5D4 800CF1D4 8FA7000C */  lw         $a3, 0xc($sp)
/* AA5D8 800CF1D8 AFB80010 */  sw         $t8, 0x10($sp)
/* AA5DC 800CF1DC 8DE10008 */  lw         $at, 8($t7)
/* AA5E0 800CF1E0 AFA90020 */  sw         $t1, 0x20($sp)
/* AA5E4 800CF1E4 AFB9001C */  sw         $t9, 0x1c($sp)
/* AA5E8 800CF1E8 AFA80018 */  sw         $t0, 0x18($sp)
/* AA5EC 800CF1EC 0C032A3E */  jal        func_800CA8F8
/* AA5F0 800CF1F0 AFA10014 */   sw        $at, 0x14($sp)
/* AA5F4 800CF1F4 C7B0009C */  lwc1       $f16, 0x9c($sp)
/* AA5F8 800CF1F8 C7B20094 */  lwc1       $f18, 0x94($sp)
/* AA5FC 800CF1FC 1040002A */  beqz       $v0, .L800CF2A8
/* AA600 800CF200 00003825 */   or        $a3, $zero, $zero
/* AA604 800CF204 8C4A0004 */  lw         $t2, 4($v0)
/* AA608 800CF208 3C0B8023 */  lui        $t3, %hi(D_80236980)
/* AA60C 800CF20C 256B6980 */  addiu      $t3, $t3, %lo(D_80236980)
/* AA610 800CF210 000A6080 */  sll        $t4, $t2, 2
/* AA614 800CF214 018A6021 */  addu       $t4, $t4, $t2
/* AA618 800CF218 000C6080 */  sll        $t4, $t4, 2
/* AA61C 800CF21C 018A6023 */  subu       $t4, $t4, $t2
/* AA620 800CF220 000C6100 */  sll        $t4, $t4, 4
/* AA624 800CF224 018B1821 */  addu       $v1, $t4, $t3
/* AA628 800CF228 8C640010 */  lw         $a0, 0x10($v1)
/* AA62C 800CF22C 2401000E */  addiu      $at, $zero, 0xe
/* AA630 800CF230 54810004 */  bnel       $a0, $at, .L800CF244
/* AA634 800CF234 2401000C */   addiu     $at, $zero, 0xc
/* AA638 800CF238 1000001B */  b          .L800CF2A8
/* AA63C 800CF23C 24070001 */   addiu     $a3, $zero, 1
/* AA640 800CF240 2401000C */  addiu      $at, $zero, 0xc
.L800CF244:
/* AA644 800CF244 14810018 */  bne        $a0, $at, .L800CF2A8
/* AA648 800CF248 00000000 */   nop
/* AA64C 800CF24C C4680098 */  lwc1       $f8, 0x98($v1)
/* AA650 800CF250 C46A008C */  lwc1       $f10, 0x8c($v1)
/* AA654 800CF254 C464009C */  lwc1       $f4, 0x9c($v1)
/* AA658 800CF258 C4660090 */  lwc1       $f6, 0x90($v1)
/* AA65C 800CF25C 460A4001 */  sub.s      $f0, $f8, $f10
/* AA660 800CF260 C46A0094 */  lwc1       $f10, 0x94($v1)
/* AA664 800CF264 C46800A0 */  lwc1       $f8, 0xa0($v1)
/* AA668 800CF268 46062081 */  sub.s      $f2, $f4, $f6
/* AA66C 800CF26C C444005C */  lwc1       $f4, 0x5c($v0)
/* AA670 800CF270 460A4301 */  sub.s      $f12, $f8, $f10
/* AA674 800CF274 46040182 */  mul.s      $f6, $f0, $f4
/* AA678 800CF278 C4480060 */  lwc1       $f8, 0x60($v0)
/* AA67C 800CF27C 46081282 */  mul.s      $f10, $f2, $f8
/* AA680 800CF280 C4480064 */  lwc1       $f8, 0x64($v0)
/* AA684 800CF284 460A3100 */  add.s      $f4, $f6, $f10
/* AA688 800CF288 460C4182 */  mul.s      $f6, $f8, $f12
/* AA68C 800CF28C 44804000 */  mtc1       $zero, $f8
/* AA690 800CF290 46043280 */  add.s      $f10, $f6, $f4
/* AA694 800CF294 4608503C */  c.lt.s     $f10, $f8
/* AA698 800CF298 00000000 */  nop
/* AA69C 800CF29C 45000002 */  bc1f       .L800CF2A8
/* AA6A0 800CF2A0 00000000 */   nop
/* AA6A4 800CF2A4 24070001 */  addiu      $a3, $zero, 1
.L800CF2A8:
/* AA6A8 800CF2A8 3C058024 */  lui        $a1, %hi(D_80240180)
/* AA6AC 800CF2AC 8CA50180 */  lw         $a1, %lo(D_80240180)($a1)
/* AA6B0 800CF2B0 3C048024 */  lui        $a0, %hi(D_80240898)
/* AA6B4 800CF2B4 24840898 */  addiu      $a0, $a0, %lo(D_80240898)
/* AA6B8 800CF2B8 18A00038 */  blez       $a1, .L800CF39C
/* AA6BC 800CF2BC 00001025 */   or        $v0, $zero, $zero
/* AA6C0 800CF2C0 2406001A */  addiu      $a2, $zero, 0x1a
.L800CF2C4:
/* AA6C4 800CF2C4 8C830000 */  lw         $v1, ($a0)
/* AA6C8 800CF2C8 24420001 */  addiu      $v0, $v0, 1
/* AA6CC 800CF2CC C7A400AC */  lwc1       $f4, 0xac($sp)
/* AA6D0 800CF2D0 8C6D0010 */  lw         $t5, 0x10($v1)
/* AA6D4 800CF2D4 0045082A */  slt        $at, $v0, $a1
/* AA6D8 800CF2D8 14CD002E */  bne        $a2, $t5, .L800CF394
/* AA6DC 800CF2DC 00000000 */   nop
/* AA6E0 800CF2E0 C4660018 */  lwc1       $f6, 0x18($v1)
/* AA6E4 800CF2E4 C46A0020 */  lwc1       $f10, 0x20($v1)
/* AA6E8 800CF2E8 C7A800B4 */  lwc1       $f8, 0xb4($sp)
/* AA6EC 800CF2EC 46043001 */  sub.s      $f0, $f6, $f4
/* AA6F0 800CF2F0 4614A182 */  mul.s      $f6, $f20, $f20
/* AA6F4 800CF2F4 46085081 */  sub.s      $f2, $f10, $f8
/* AA6F8 800CF2F8 46000102 */  mul.s      $f4, $f0, $f0
/* AA6FC 800CF2FC 00000000 */  nop
/* AA700 800CF300 46021282 */  mul.s      $f10, $f2, $f2
/* AA704 800CF304 460A2200 */  add.s      $f8, $f4, $f10
/* AA708 800CF308 C7A400B0 */  lwc1       $f4, 0xb0($sp)
/* AA70C 800CF30C 4608303C */  c.lt.s     $f6, $f8
/* AA710 800CF310 00000000 */  nop
/* AA714 800CF314 4501001F */  bc1t       .L800CF394
/* AA718 800CF318 00000000 */   nop
/* AA71C 800CF31C C46C001C */  lwc1       $f12, 0x1c($v1)
/* AA720 800CF320 460C203C */  c.lt.s     $f4, $f12
/* AA724 800CF324 00000000 */  nop
/* AA728 800CF328 4501001A */  bc1t       .L800CF394
/* AA72C 800CF32C 00000000 */   nop
/* AA730 800CF330 C46A00A8 */  lwc1       $f10, 0xa8($v1)
/* AA734 800CF334 460C5180 */  add.s      $f6, $f10, $f12
/* AA738 800CF338 4604303C */  c.lt.s     $f6, $f4
/* AA73C 800CF33C 00000000 */  nop
/* AA740 800CF340 45010014 */  bc1t       .L800CF394
/* AA744 800CF344 00000000 */   nop
/* AA748 800CF348 46029302 */  mul.s      $f12, $f18, $f2
/* AA74C 800CF34C 00000000 */  nop
/* AA750 800CF350 46008382 */  mul.s      $f14, $f16, $f0
/* AA754 800CF354 460E603C */  c.lt.s     $f12, $f14
/* AA758 800CF358 00000000 */  nop
/* AA75C 800CF35C 45000004 */  bc1f       .L800CF370
/* AA760 800CF360 00000000 */   nop
/* AA764 800CF364 460E6001 */  sub.s      $f0, $f12, $f14
/* AA768 800CF368 10000002 */  b          .L800CF374
/* AA76C 800CF36C 46000007 */   neg.s     $f0, $f0
.L800CF370:
/* AA770 800CF370 460E6001 */  sub.s      $f0, $f12, $f14
.L800CF374:
/* AA774 800CF374 46140283 */  div.s      $f10, $f0, $f20
/* AA778 800CF378 C46800A4 */  lwc1       $f8, 0xa4($v1)
/* AA77C 800CF37C 460A403C */  c.lt.s     $f8, $f10
/* AA780 800CF380 00000000 */  nop
/* AA784 800CF384 45010003 */  bc1t       .L800CF394
/* AA788 800CF388 00000000 */   nop
/* AA78C 800CF38C 10000003 */  b          .L800CF39C
/* AA790 800CF390 24070001 */   addiu     $a3, $zero, 1
.L800CF394:
/* AA794 800CF394 1420FFCB */  bnez       $at, .L800CF2C4
/* AA798 800CF398 24840004 */   addiu     $a0, $a0, 4
.L800CF39C:
/* AA79C 800CF39C 8FBF0034 */  lw         $ra, 0x34($sp)
/* AA7A0 800CF3A0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* AA7A4 800CF3A4 27BD00B8 */  addiu      $sp, $sp, 0xb8
/* AA7A8 800CF3A8 03E00008 */  jr         $ra
/* AA7AC 800CF3AC 00E01025 */   or        $v0, $a3, $zero

glabel func_800CF3B0
/* AA7B0 800CF3B0 27BDFF78 */  addiu      $sp, $sp, -0x88
/* AA7B4 800CF3B4 AFBF002C */  sw         $ra, 0x2c($sp)
/* AA7B8 800CF3B8 AFB00028 */  sw         $s0, 0x28($sp)
/* AA7BC 800CF3BC F7B60020 */  sdc1       $f22, 0x20($sp)
/* AA7C0 800CF3C0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* AA7C4 800CF3C4 AFA70094 */  sw         $a3, 0x94($sp)
/* AA7C8 800CF3C8 C4840004 */  lwc1       $f4, 4($a0)
/* AA7CC 800CF3CC 00808025 */  or         $s0, $a0, $zero
/* AA7D0 800CF3D0 E7A4007C */  swc1       $f4, 0x7c($sp)
/* AA7D4 800CF3D4 C4860008 */  lwc1       $f6, 8($a0)
/* AA7D8 800CF3D8 E7A60080 */  swc1       $f6, 0x80($sp)
/* AA7DC 800CF3DC C488000C */  lwc1       $f8, 0xc($a0)
/* AA7E0 800CF3E0 E7A80084 */  swc1       $f8, 0x84($sp)
/* AA7E4 800CF3E4 C4800024 */  lwc1       $f0, 0x24($a0)
/* AA7E8 800CF3E8 C4820028 */  lwc1       $f2, 0x28($a0)
/* AA7EC 800CF3EC C48E002C */  lwc1       $f14, 0x2c($a0)
/* AA7F0 800CF3F0 46000282 */  mul.s      $f10, $f0, $f0
/* AA7F4 800CF3F4 AFA60090 */  sw         $a2, 0x90($sp)
/* AA7F8 800CF3F8 AFA5008C */  sw         $a1, 0x8c($sp)
/* AA7FC 800CF3FC 46021102 */  mul.s      $f4, $f2, $f2
/* AA800 800CF400 46045180 */  add.s      $f6, $f10, $f4
/* AA804 800CF404 460E7202 */  mul.s      $f8, $f14, $f14
/* AA808 800CF408 0C036C2C */  jal        func_800DB0B0
/* AA80C 800CF40C 46083300 */   add.s     $f12, $f6, $f8
/* AA810 800CF410 C60A004C */  lwc1       $f10, 0x4c($s0)
/* AA814 800CF414 3C013FF8 */  lui        $at, 0x3ff8
/* AA818 800CF418 44814800 */  mtc1       $at, $f9
/* AA81C 800CF41C 46005100 */  add.s      $f4, $f10, $f0
/* AA820 800CF420 44804000 */  mtc1       $zero, $f8
/* AA824 800CF424 8FA5008C */  lw         $a1, 0x8c($sp)
/* AA828 800CF428 8FA60090 */  lw         $a2, 0x90($sp)
/* AA82C 800CF42C 460021A1 */  cvt.d.s    $f6, $f4
/* AA830 800CF430 8CAE0004 */  lw         $t6, 4($a1)
/* AA834 800CF434 46283282 */  mul.d      $f10, $f6, $f8
/* AA838 800CF438 27AF007C */  addiu      $t7, $sp, 0x7c
/* AA83C 800CF43C 15C00029 */  bnez       $t6, .L800CF4E4
/* AA840 800CF440 462055A0 */   cvt.s.d   $f22, $f10
/* AA844 800CF444 8DE10000 */  lw         $at, ($t7)
/* AA848 800CF448 27A20040 */  addiu      $v0, $sp, 0x40
/* AA84C 800CF44C AC410000 */  sw         $at, ($v0)
/* AA850 800CF450 8DF90004 */  lw         $t9, 4($t7)
/* AA854 800CF454 AC590004 */  sw         $t9, 4($v0)
/* AA858 800CF458 8DE10008 */  lw         $at, 8($t7)
/* AA85C 800CF45C AC410008 */  sw         $at, 8($v0)
/* AA860 800CF460 8C410000 */  lw         $at, ($v0)
/* AA864 800CF464 ACC1000C */  sw         $at, 0xc($a2)
/* AA868 800CF468 8C4A0004 */  lw         $t2, 4($v0)
/* AA86C 800CF46C ACCA0010 */  sw         $t2, 0x10($a2)
/* AA870 800CF470 8C410008 */  lw         $at, 8($v0)
/* AA874 800CF474 ACC10014 */  sw         $at, 0x14($a2)
/* AA878 800CF478 8C410000 */  lw         $at, ($v0)
/* AA87C 800CF47C ACC10000 */  sw         $at, ($a2)
/* AA880 800CF480 8C4C0004 */  lw         $t4, 4($v0)
/* AA884 800CF484 C4C40000 */  lwc1       $f4, ($a2)
/* AA888 800CF488 ACCC0004 */  sw         $t4, 4($a2)
/* AA88C 800CF48C C4C80004 */  lwc1       $f8, 4($a2)
/* AA890 800CF490 8C410008 */  lw         $at, 8($v0)
/* AA894 800CF494 46162181 */  sub.s      $f6, $f4, $f22
/* AA898 800CF498 ACC10008 */  sw         $at, 8($a2)
/* AA89C 800CF49C 46164281 */  sub.s      $f10, $f8, $f22
/* AA8A0 800CF4A0 C4C40008 */  lwc1       $f4, 8($a2)
/* AA8A4 800CF4A4 C4C8000C */  lwc1       $f8, 0xc($a2)
/* AA8A8 800CF4A8 E4C60000 */  swc1       $f6, ($a2)
/* AA8AC 800CF4AC E4CA0004 */  swc1       $f10, 4($a2)
/* AA8B0 800CF4B0 46162181 */  sub.s      $f6, $f4, $f22
/* AA8B4 800CF4B4 C4C40010 */  lwc1       $f4, 0x10($a2)
/* AA8B8 800CF4B8 46164280 */  add.s      $f10, $f8, $f22
/* AA8BC 800CF4BC E4C60008 */  swc1       $f6, 8($a2)
/* AA8C0 800CF4C0 E4CA000C */  swc1       $f10, 0xc($a2)
/* AA8C4 800CF4C4 C6060050 */  lwc1       $f6, 0x50($s0)
/* AA8C8 800CF4C8 4606B200 */  add.s      $f8, $f22, $f6
/* AA8CC 800CF4CC C4C60014 */  lwc1       $f6, 0x14($a2)
/* AA8D0 800CF4D0 46082280 */  add.s      $f10, $f4, $f8
/* AA8D4 800CF4D4 46163100 */  add.s      $f4, $f6, $f22
/* AA8D8 800CF4D8 E4CA0010 */  swc1       $f10, 0x10($a2)
/* AA8DC 800CF4DC 10000057 */  b          .L800CF63C
/* AA8E0 800CF4E0 E4C40014 */   swc1      $f4, 0x14($a2)
.L800CF4E4:
/* AA8E4 800CF4E4 4480A000 */  mtc1       $zero, $f20
/* AA8E8 800CF4E8 8CA80008 */  lw         $t0, 8($a1)
/* AA8EC 800CF4EC 8CA7000C */  lw         $a3, 0xc($a1)
/* AA8F0 800CF4F0 4600A086 */  mov.s      $f2, $f20
/* AA8F4 800CF4F4 2508FFFF */  addiu      $t0, $t0, -1
/* AA8F8 800CF4F8 0107082A */  slt        $at, $t0, $a3
/* AA8FC 800CF4FC 4600A306 */  mov.s      $f12, $f20
/* AA900 800CF500 4600A386 */  mov.s      $f14, $f20
/* AA904 800CF504 4600A406 */  mov.s      $f16, $f20
/* AA908 800CF508 14200032 */  bnez       $at, .L800CF5D4
/* AA90C 800CF50C 4600A486 */   mov.s     $f18, $f20
/* AA910 800CF510 28E1001D */  slti       $at, $a3, 0x1d
/* AA914 800CF514 1020002F */  beqz       $at, .L800CF5D4
/* AA918 800CF518 00071880 */   sll       $v1, $a3, 2
/* AA91C 800CF51C 00086880 */  sll        $t5, $t0, 2
/* AA920 800CF520 01A52021 */  addu       $a0, $t5, $a1
/* AA924 800CF524 00A31021 */  addu       $v0, $a1, $v1
/* AA928 800CF528 C4400018 */  lwc1       $f0, 0x18($v0)
.L800CF52C:
/* AA92C 800CF52C 460E003C */  c.lt.s     $f0, $f14
/* AA930 800CF530 00000000 */  nop
/* AA934 800CF534 45020004 */  bc1fl      .L800CF548
/* AA938 800CF538 4600A03C */   c.lt.s    $f20, $f0
/* AA93C 800CF53C 10000006 */  b          .L800CF558
/* AA940 800CF540 46000386 */   mov.s     $f14, $f0
/* AA944 800CF544 4600A03C */  c.lt.s     $f20, $f0
.L800CF548:
/* AA948 800CF548 00000000 */  nop
/* AA94C 800CF54C 45020003 */  bc1fl      .L800CF55C
/* AA950 800CF550 C440009C */   lwc1      $f0, 0x9c($v0)
/* AA954 800CF554 46000506 */  mov.s      $f20, $f0
.L800CF558:
/* AA958 800CF558 C440009C */  lwc1       $f0, 0x9c($v0)
.L800CF55C:
/* AA95C 800CF55C 460C003C */  c.lt.s     $f0, $f12
/* AA960 800CF560 00000000 */  nop
/* AA964 800CF564 45020004 */  bc1fl      .L800CF578
/* AA968 800CF568 4600903C */   c.lt.s    $f18, $f0
/* AA96C 800CF56C 10000006 */  b          .L800CF588
/* AA970 800CF570 46000306 */   mov.s     $f12, $f0
/* AA974 800CF574 4600903C */  c.lt.s     $f18, $f0
.L800CF578:
/* AA978 800CF578 00000000 */  nop
/* AA97C 800CF57C 45020003 */  bc1fl      .L800CF58C
/* AA980 800CF580 C4400120 */   lwc1      $f0, 0x120($v0)
/* AA984 800CF584 46000486 */  mov.s      $f18, $f0
.L800CF588:
/* AA988 800CF588 C4400120 */  lwc1       $f0, 0x120($v0)
.L800CF58C:
/* AA98C 800CF58C 24420004 */  addiu      $v0, $v0, 4
/* AA990 800CF590 0082082B */  sltu       $at, $a0, $v0
/* AA994 800CF594 4602003C */  c.lt.s     $f0, $f2
/* AA998 800CF598 00000000 */  nop
/* AA99C 800CF59C 45020004 */  bc1fl      .L800CF5B0
/* AA9A0 800CF5A0 4600803C */   c.lt.s    $f16, $f0
/* AA9A4 800CF5A4 10000006 */  b          .L800CF5C0
/* AA9A8 800CF5A8 46000086 */   mov.s     $f2, $f0
/* AA9AC 800CF5AC 4600803C */  c.lt.s     $f16, $f0
.L800CF5B0:
/* AA9B0 800CF5B0 00000000 */  nop
/* AA9B4 800CF5B4 45000002 */  bc1f       .L800CF5C0
/* AA9B8 800CF5B8 00000000 */   nop
/* AA9BC 800CF5BC 46000406 */  mov.s      $f16, $f0
.L800CF5C0:
/* AA9C0 800CF5C0 14200004 */  bnez       $at, .L800CF5D4
/* AA9C4 800CF5C4 24630004 */   addiu     $v1, $v1, 4
/* AA9C8 800CF5C8 28610074 */  slti       $at, $v1, 0x74
/* AA9CC 800CF5CC 5420FFD7 */  bnel       $at, $zero, .L800CF52C
/* AA9D0 800CF5D0 C4400018 */   lwc1      $f0, 0x18($v0)
.L800CF5D4:
/* AA9D4 800CF5D4 46167381 */  sub.s      $f14, $f14, $f22
/* AA9D8 800CF5D8 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* AA9DC 800CF5DC C6080050 */  lwc1       $f8, 0x50($s0)
/* AA9E0 800CF5E0 46166301 */  sub.s      $f12, $f12, $f22
/* AA9E4 800CF5E4 460E3100 */  add.s      $f4, $f6, $f14
/* AA9E8 800CF5E8 4608B280 */  add.s      $f10, $f22, $f8
/* AA9EC 800CF5EC E4C40000 */  swc1       $f4, ($a2)
/* AA9F0 800CF5F0 C7A80080 */  lwc1       $f8, 0x80($sp)
/* AA9F4 800CF5F4 46161081 */  sub.s      $f2, $f2, $f22
/* AA9F8 800CF5F8 460A9480 */  add.s      $f18, $f18, $f10
/* AA9FC 800CF5FC 460C4280 */  add.s      $f10, $f8, $f12
/* AAA00 800CF600 4616A500 */  add.s      $f20, $f20, $f22
/* AAA04 800CF604 E4CA0004 */  swc1       $f10, 4($a2)
/* AAA08 800CF608 C7A60084 */  lwc1       $f6, 0x84($sp)
/* AAA0C 800CF60C 46168400 */  add.s      $f16, $f16, $f22
/* AAA10 800CF610 46023100 */  add.s      $f4, $f6, $f2
/* AAA14 800CF614 E4C40008 */  swc1       $f4, 8($a2)
/* AAA18 800CF618 C7A8007C */  lwc1       $f8, 0x7c($sp)
/* AAA1C 800CF61C 46144280 */  add.s      $f10, $f8, $f20
/* AAA20 800CF620 E4CA000C */  swc1       $f10, 0xc($a2)
/* AAA24 800CF624 C7A60080 */  lwc1       $f6, 0x80($sp)
/* AAA28 800CF628 46123100 */  add.s      $f4, $f6, $f18
/* AAA2C 800CF62C E4C40010 */  swc1       $f4, 0x10($a2)
/* AAA30 800CF630 C7A80084 */  lwc1       $f8, 0x84($sp)
/* AAA34 800CF634 46104280 */  add.s      $f10, $f8, $f16
/* AAA38 800CF638 E4CA0014 */  swc1       $f10, 0x14($a2)
.L800CF63C:
/* AAA3C 800CF63C 8FBF002C */  lw         $ra, 0x2c($sp)
/* AAA40 800CF640 D7B40018 */  ldc1       $f20, 0x18($sp)
/* AAA44 800CF644 D7B60020 */  ldc1       $f22, 0x20($sp)
/* AAA48 800CF648 8FB00028 */  lw         $s0, 0x28($sp)
/* AAA4C 800CF64C 03E00008 */  jr         $ra
/* AAA50 800CF650 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_800CF654
/* AAA54 800CF654 27BDFF90 */  addiu      $sp, $sp, -0x70
/* AAA58 800CF658 AFBF0024 */  sw         $ra, 0x24($sp)
/* AAA5C 800CF65C AFB20020 */  sw         $s2, 0x20($sp)
/* AAA60 800CF660 AFB1001C */  sw         $s1, 0x1c($sp)
/* AAA64 800CF664 AFB00018 */  sw         $s0, 0x18($sp)
/* AAA68 800CF668 C4840004 */  lwc1       $f4, 4($a0)
/* AAA6C 800CF66C 00808025 */  or         $s0, $a0, $zero
/* AAA70 800CF670 00A08825 */  or         $s1, $a1, $zero
/* AAA74 800CF674 E7A40064 */  swc1       $f4, 0x64($sp)
/* AAA78 800CF678 C4860008 */  lwc1       $f6, 8($a0)
/* AAA7C 800CF67C 00C09025 */  or         $s2, $a2, $zero
/* AAA80 800CF680 E7A60068 */  swc1       $f6, 0x68($sp)
/* AAA84 800CF684 C488000C */  lwc1       $f8, 0xc($a0)
/* AAA88 800CF688 E7A8006C */  swc1       $f8, 0x6c($sp)
/* AAA8C 800CF68C C4800024 */  lwc1       $f0, 0x24($a0)
/* AAA90 800CF690 C4820028 */  lwc1       $f2, 0x28($a0)
/* AAA94 800CF694 C48E002C */  lwc1       $f14, 0x2c($a0)
/* AAA98 800CF698 46000282 */  mul.s      $f10, $f0, $f0
/* AAA9C 800CF69C 00000000 */  nop
/* AAAA0 800CF6A0 46021402 */  mul.s      $f16, $f2, $f2
/* AAAA4 800CF6A4 46105480 */  add.s      $f18, $f10, $f16
/* AAAA8 800CF6A8 460E7102 */  mul.s      $f4, $f14, $f14
/* AAAAC 800CF6AC 0C036C2C */  jal        func_800DB0B0
/* AAAB0 800CF6B0 46049300 */   add.s     $f12, $f18, $f4
/* AAAB4 800CF6B4 27A80064 */  addiu      $t0, $sp, 0x64
/* AAAB8 800CF6B8 8D010000 */  lw         $at, ($t0)
/* AAABC 800CF6BC C606004C */  lwc1       $f6, 0x4c($s0)
/* AAAC0 800CF6C0 27A20038 */  addiu      $v0, $sp, 0x38
/* AAAC4 800CF6C4 AC410000 */  sw         $at, ($v0)
/* AAAC8 800CF6C8 8D010008 */  lw         $at, 8($t0)
/* AAACC 800CF6CC 8D180004 */  lw         $t8, 4($t0)
/* AAAD0 800CF6D0 46003200 */  add.s      $f8, $f6, $f0
/* AAAD4 800CF6D4 AC410008 */  sw         $at, 8($v0)
/* AAAD8 800CF6D8 8C410000 */  lw         $at, ($v0)
/* AAADC 800CF6DC AC580004 */  sw         $t8, 4($v0)
/* AAAE0 800CF6E0 460040A1 */  cvt.d.s    $f2, $f8
/* AAAE4 800CF6E4 AE41000C */  sw         $at, 0xc($s2)
/* AAAE8 800CF6E8 8C4A0004 */  lw         $t2, 4($v0)
/* AAAEC 800CF6EC 46221280 */  add.d      $f10, $f2, $f2
/* AAAF0 800CF6F0 AE4A0010 */  sw         $t2, 0x10($s2)
/* AAAF4 800CF6F4 8C410008 */  lw         $at, 8($v0)
/* AAAF8 800CF6F8 C6500010 */  lwc1       $f16, 0x10($s2)
/* AAAFC 800CF6FC 46205320 */  cvt.s.d    $f12, $f10
/* AAB00 800CF700 AE410014 */  sw         $at, 0x14($s2)
/* AAB04 800CF704 8C410000 */  lw         $at, ($v0)
/* AAB08 800CF708 AE410000 */  sw         $at, ($s2)
/* AAB0C 800CF70C 8C4D0004 */  lw         $t5, 4($v0)
/* AAB10 800CF710 AE4D0004 */  sw         $t5, 4($s2)
/* AAB14 800CF714 8C410008 */  lw         $at, 8($v0)
/* AAB18 800CF718 AE410008 */  sw         $at, 8($s2)
/* AAB1C 800CF71C C6120050 */  lwc1       $f18, 0x50($s0)
/* AAB20 800CF720 24010008 */  addiu      $at, $zero, 8
/* AAB24 800CF724 46128100 */  add.s      $f4, $f16, $f18
/* AAB28 800CF728 E6440010 */  swc1       $f4, 0x10($s2)
/* AAB2C 800CF72C 8E230004 */  lw         $v1, 4($s1)
/* AAB30 800CF730 10610003 */  beq        $v1, $at, .L800CF740
/* AAB34 800CF734 24010009 */   addiu     $at, $zero, 9
/* AAB38 800CF738 5461002B */  bnel       $v1, $at, .L800CF7E8
/* AAB3C 800CF73C 44056000 */   mfc1      $a1, $f12
.L800CF740:
/* AAB40 800CF740 8D010000 */  lw         $at, ($t0)
/* AAB44 800CF744 27A20044 */  addiu      $v0, $sp, 0x44
/* AAB48 800CF748 8D0E0004 */  lw         $t6, 4($t0)
/* AAB4C 800CF74C AC410000 */  sw         $at, ($v0)
/* AAB50 800CF750 8D010008 */  lw         $at, 8($t0)
/* AAB54 800CF754 AC4E0004 */  sw         $t6, 4($v0)
/* AAB58 800CF758 02402025 */  or         $a0, $s2, $zero
/* AAB5C 800CF75C AC410008 */  sw         $at, 8($v0)
/* AAB60 800CF760 8E380008 */  lw         $t8, 8($s1)
/* AAB64 800CF764 C7A60044 */  lwc1       $f6, 0x44($sp)
/* AAB68 800CF768 00184880 */  sll        $t1, $t8, 2
/* AAB6C 800CF76C 0229C821 */  addu       $t9, $s1, $t1
/* AAB70 800CF770 C7280014 */  lwc1       $f8, 0x14($t9)
/* AAB74 800CF774 46083280 */  add.s      $f10, $f6, $f8
/* AAB78 800CF778 C7A60048 */  lwc1       $f6, 0x48($sp)
/* AAB7C 800CF77C E7AA0044 */  swc1       $f10, 0x44($sp)
/* AAB80 800CF780 8E2A0008 */  lw         $t2, 8($s1)
/* AAB84 800CF784 C6120128 */  lwc1       $f18, 0x128($s0)
/* AAB88 800CF788 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* AAB8C 800CF78C 000A6080 */  sll        $t4, $t2, 2
/* AAB90 800CF790 022C5821 */  addu       $t3, $s1, $t4
/* AAB94 800CF794 C5700098 */  lwc1       $f16, 0x98($t3)
/* AAB98 800CF798 46128100 */  add.s      $f4, $f16, $f18
/* AAB9C 800CF79C 46043200 */  add.s      $f8, $f6, $f4
/* AABA0 800CF7A0 E7A80048 */  swc1       $f8, 0x48($sp)
/* AABA4 800CF7A4 8E2D0008 */  lw         $t5, 8($s1)
/* AABA8 800CF7A8 000D7880 */  sll        $t7, $t5, 2
/* AABAC 800CF7AC 022F7021 */  addu       $t6, $s1, $t7
/* AABB0 800CF7B0 C5D0011C */  lwc1       $f16, 0x11c($t6)
/* AABB4 800CF7B4 46105480 */  add.s      $f18, $f10, $f16
/* AABB8 800CF7B8 E7B2004C */  swc1       $f18, 0x4c($sp)
/* AABBC 800CF7BC 8C410000 */  lw         $at, ($v0)
/* AABC0 800CF7C0 AFA10004 */  sw         $at, 4($sp)
/* AABC4 800CF7C4 8C460004 */  lw         $a2, 4($v0)
/* AABC8 800CF7C8 8FA50004 */  lw         $a1, 4($sp)
/* AABCC 800CF7CC AFA60008 */  sw         $a2, 8($sp)
/* AABD0 800CF7D0 8C470008 */  lw         $a3, 8($v0)
/* AABD4 800CF7D4 E7AC0050 */  swc1       $f12, 0x50($sp)
/* AABD8 800CF7D8 0C02B9DC */  jal        func_800AE770
/* AABDC 800CF7DC AFA7000C */   sw        $a3, 0xc($sp)
/* AABE0 800CF7E0 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* AABE4 800CF7E4 44056000 */  mfc1       $a1, $f12
.L800CF7E8:
/* AABE8 800CF7E8 0C02BA0B */  jal        func_800AE82C
/* AABEC 800CF7EC 02402025 */   or        $a0, $s2, $zero
/* AABF0 800CF7F0 8FBF0024 */  lw         $ra, 0x24($sp)
/* AABF4 800CF7F4 8FB00018 */  lw         $s0, 0x18($sp)
/* AABF8 800CF7F8 8FB1001C */  lw         $s1, 0x1c($sp)
/* AABFC 800CF7FC 8FB20020 */  lw         $s2, 0x20($sp)
/* AAC00 800CF800 03E00008 */  jr         $ra
/* AAC04 800CF804 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800CF808
/* AAC08 800CF808 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* AAC0C 800CF80C AFBF005C */  sw         $ra, 0x5c($sp)
/* AAC10 800CF810 AFBE0058 */  sw         $fp, 0x58($sp)
/* AAC14 800CF814 AFB70054 */  sw         $s7, 0x54($sp)
/* AAC18 800CF818 AFB60050 */  sw         $s6, 0x50($sp)
/* AAC1C 800CF81C AFB5004C */  sw         $s5, 0x4c($sp)
/* AAC20 800CF820 AFB40048 */  sw         $s4, 0x48($sp)
/* AAC24 800CF824 AFB30044 */  sw         $s3, 0x44($sp)
/* AAC28 800CF828 AFB20040 */  sw         $s2, 0x40($sp)
/* AAC2C 800CF82C AFB1003C */  sw         $s1, 0x3c($sp)
/* AAC30 800CF830 AFB00038 */  sw         $s0, 0x38($sp)
/* AAC34 800CF834 F7B40030 */  sdc1       $f20, 0x30($sp)
/* AAC38 800CF838 AFA00084 */  sw         $zero, 0x84($sp)
/* AAC3C 800CF83C 8CA20004 */  lw         $v0, 4($a1)
/* AAC40 800CF840 24010008 */  addiu      $at, $zero, 8
/* AAC44 800CF844 00809025 */  or         $s2, $a0, $zero
/* AAC48 800CF848 10410003 */  beq        $v0, $at, .L800CF858
/* AAC4C 800CF84C 24010009 */   addiu     $at, $zero, 9
/* AAC50 800CF850 54410008 */  bnel       $v0, $at, .L800CF874
/* AAC54 800CF854 8CA8000C */   lw        $t0, 0xc($a1)
.L800CF858:
/* AAC58 800CF858 8CAE0008 */  lw         $t6, 8($a1)
/* AAC5C 800CF85C 8CA8000C */  lw         $t0, 0xc($a1)
/* AAC60 800CF860 25CFFFFE */  addiu      $t7, $t6, -2
/* AAC64 800CF864 AFAF0074 */  sw         $t7, 0x74($sp)
/* AAC68 800CF868 10000006 */  b          .L800CF884
/* AAC6C 800CF86C 25080001 */   addiu     $t0, $t0, 1
/* AAC70 800CF870 8CA8000C */  lw         $t0, 0xc($a1)
.L800CF874:
/* AAC74 800CF874 AFA8007C */  sw         $t0, 0x7c($sp)
/* AAC78 800CF878 8CB90008 */  lw         $t9, 8($a1)
/* AAC7C 800CF87C 2729FFFF */  addiu      $t1, $t9, -1
/* AAC80 800CF880 AFA90074 */  sw         $t1, 0x74($sp)
.L800CF884:
/* AAC84 800CF884 8FAA0074 */  lw         $t2, 0x74($sp)
/* AAC88 800CF888 00087080 */  sll        $t6, $t0, 2
/* AAC8C 800CF88C 00AE1021 */  addu       $v0, $a1, $t6
/* AAC90 800CF890 01485823 */  subu       $t3, $t2, $t0
/* AAC94 800CF894 05610003 */  bgez       $t3, .L800CF8A4
/* AAC98 800CF898 000B60C3 */   sra       $t4, $t3, 3
/* AAC9C 800CF89C 25610007 */  addiu      $at, $t3, 7
/* AACA0 800CF8A0 000160C3 */  sra        $t4, $at, 3
.L800CF8A4:
/* AACA4 800CF8A4 000C68C0 */  sll        $t5, $t4, 3
/* AACA8 800CF8A8 01A81821 */  addu       $v1, $t5, $t0
/* AACAC 800CF8AC 010A082A */  slt        $at, $t0, $t2
/* AACB0 800CF8B0 14200003 */  bnez       $at, .L800CF8C0
/* AACB4 800CF8B4 0060A825 */   or        $s5, $v1, $zero
/* AACB8 800CF8B8 1000009F */  b          .L800CFB38
/* AACBC 800CF8BC 00001025 */   or        $v0, $zero, $zero
.L800CF8C0:
/* AACC0 800CF8C0 C4440018 */  lwc1       $f4, 0x18($v0)
/* AACC4 800CF8C4 C6460004 */  lwc1       $f6, 4($s2)
/* AACC8 800CF8C8 C6540128 */  lwc1       $f20, 0x128($s2)
/* AACCC 800CF8CC 0103082A */  slt        $at, $t0, $v1
/* AACD0 800CF8D0 46062200 */  add.s      $f8, $f4, $f6
/* AACD4 800CF8D4 00087880 */  sll        $t7, $t0, 2
/* AACD8 800CF8D8 3C178023 */  lui        $s7, %hi(D_80236980)
/* AACDC 800CF8DC 26F76980 */  addiu      $s7, $s7, %lo(D_80236980)
/* AACE0 800CF8E0 E7A80094 */  swc1       $f8, 0x94($sp)
/* AACE4 800CF8E4 C6500008 */  lwc1       $f16, 8($s2)
/* AACE8 800CF8E8 C44A009C */  lwc1       $f10, 0x9c($v0)
/* AACEC 800CF8EC 00AF8021 */  addu       $s0, $a1, $t7
/* AACF0 800CF8F0 01008825 */  or         $s1, $t0, $zero
/* AACF4 800CF8F4 46105480 */  add.s      $f18, $f10, $f16
/* AACF8 800CF8F8 241E0130 */  addiu      $fp, $zero, 0x130
/* AACFC 800CF8FC 24160001 */  addiu      $s6, $zero, 1
/* AAD00 800CF900 27B40088 */  addiu      $s4, $sp, 0x88
/* AAD04 800CF904 46149100 */  add.s      $f4, $f18, $f20
/* AAD08 800CF908 27B30094 */  addiu      $s3, $sp, 0x94
/* AAD0C 800CF90C E7A40098 */  swc1       $f4, 0x98($sp)
/* AAD10 800CF910 C648000C */  lwc1       $f8, 0xc($s2)
/* AAD14 800CF914 C4460120 */  lwc1       $f6, 0x120($v0)
/* AAD18 800CF918 AFA8007C */  sw         $t0, 0x7c($sp)
/* AAD1C 800CF91C AFA500A4 */  sw         $a1, 0xa4($sp)
/* AAD20 800CF920 46083280 */  add.s      $f10, $f6, $f8
/* AAD24 800CF924 AFA500A4 */  sw         $a1, 0xa4($sp)
/* AAD28 800CF928 AFA8007C */  sw         $t0, 0x7c($sp)
/* AAD2C 800CF92C 10200040 */  beqz       $at, .L800CFA30
/* AAD30 800CF930 E7AA009C */   swc1      $f10, 0x9c($sp)
/* AAD34 800CF934 AFA500A4 */  sw         $a1, 0xa4($sp)
/* AAD38 800CF938 AFA8007C */  sw         $t0, 0x7c($sp)
/* AAD3C 800CF93C C6100038 */  lwc1       $f16, 0x38($s0)
.L800CF940:
/* AAD40 800CF940 C6520004 */  lwc1       $f18, 4($s2)
/* AAD44 800CF944 240C0077 */  addiu      $t4, $zero, 0x77
/* AAD48 800CF948 46128100 */  add.s      $f4, $f16, $f18
/* AAD4C 800CF94C E7A40088 */  swc1       $f4, 0x88($sp)
/* AAD50 800CF950 C6480008 */  lwc1       $f8, 8($s2)
/* AAD54 800CF954 C60600BC */  lwc1       $f6, 0xbc($s0)
/* AAD58 800CF958 46083280 */  add.s      $f10, $f6, $f8
/* AAD5C 800CF95C 46145400 */  add.s      $f16, $f10, $f20
/* AAD60 800CF960 E7B0008C */  swc1       $f16, 0x8c($sp)
/* AAD64 800CF964 C644000C */  lwc1       $f4, 0xc($s2)
/* AAD68 800CF968 C6120140 */  lwc1       $f18, 0x140($s0)
/* AAD6C 800CF96C 46049180 */  add.s      $f6, $f18, $f4
/* AAD70 800CF970 E7A60090 */  swc1       $f6, 0x90($sp)
/* AAD74 800CF974 8E610000 */  lw         $at, ($s3)
/* AAD78 800CF978 AFA10000 */  sw         $at, ($sp)
/* AAD7C 800CF97C 8E650004 */  lw         $a1, 4($s3)
/* AAD80 800CF980 8FA40000 */  lw         $a0, ($sp)
/* AAD84 800CF984 AFA50004 */  sw         $a1, 4($sp)
/* AAD88 800CF988 8E610008 */  lw         $at, 8($s3)
/* AAD8C 800CF98C AFA10008 */  sw         $at, 8($sp)
/* AAD90 800CF990 8E810000 */  lw         $at, ($s4)
/* AAD94 800CF994 8FA60008 */  lw         $a2, 8($sp)
/* AAD98 800CF998 AFA1000C */  sw         $at, 0xc($sp)
/* AAD9C 800CF99C 8E8B0004 */  lw         $t3, 4($s4)
/* AADA0 800CF9A0 8FA7000C */  lw         $a3, 0xc($sp)
/* AADA4 800CF9A4 AFAB0010 */  sw         $t3, 0x10($sp)
/* AADA8 800CF9A8 8E810008 */  lw         $at, 8($s4)
/* AADAC 800CF9AC AFB60020 */  sw         $s6, 0x20($sp)
/* AADB0 800CF9B0 AFA0001C */  sw         $zero, 0x1c($sp)
/* AADB4 800CF9B4 AFAC0018 */  sw         $t4, 0x18($sp)
/* AADB8 800CF9B8 0C032A3E */  jal        func_800CA8F8
/* AADBC 800CF9BC AFA10014 */   sw        $at, 0x14($sp)
/* AADC0 800CF9C0 50400011 */  beql       $v0, $zero, .L800CFA08
/* AADC4 800CF9C4 8E810000 */   lw        $at, ($s4)
/* AADC8 800CF9C8 8C4D0004 */  lw         $t5, 4($v0)
/* AADCC 800CF9CC 01BE0019 */  multu      $t5, $fp
/* AADD0 800CF9D0 00005012 */  mflo       $t2
/* AADD4 800CF9D4 02EA1821 */  addu       $v1, $s7, $t2
/* AADD8 800CF9D8 8C6E0124 */  lw         $t6, 0x124($v1)
/* AADDC 800CF9DC 52CE000A */  beql       $s6, $t6, .L800CFA08
/* AADE0 800CF9E0 8E810000 */   lw        $at, ($s4)
/* AADE4 800CF9E4 8C640010 */  lw         $a0, 0x10($v1)
/* AADE8 800CF9E8 24010011 */  addiu      $at, $zero, 0x11
/* AADEC 800CF9EC 10810005 */  beq        $a0, $at, .L800CFA04
/* AADF0 800CF9F0 24010013 */   addiu     $at, $zero, 0x13
/* AADF4 800CF9F4 10810003 */  beq        $a0, $at, .L800CFA04
/* AADF8 800CF9F8 240F0002 */   addiu     $t7, $zero, 2
/* AADFC 800CF9FC 1000000C */  b          .L800CFA30
/* AAE00 800CFA00 AFAF0084 */   sw        $t7, 0x84($sp)
.L800CFA04:
/* AAE04 800CFA04 8E810000 */  lw         $at, ($s4)
.L800CFA08:
/* AAE08 800CFA08 8E890004 */  lw         $t1, 4($s4)
/* AAE0C 800CFA0C 26310008 */  addiu      $s1, $s1, 8
/* AAE10 800CFA10 AE610000 */  sw         $at, ($s3)
/* AAE14 800CFA14 8E810008 */  lw         $at, 8($s4)
/* AAE18 800CFA18 26100020 */  addiu      $s0, $s0, 0x20
/* AAE1C 800CFA1C AE690004 */  sw         $t1, 4($s3)
/* AAE20 800CFA20 AE610008 */  sw         $at, 8($s3)
/* AAE24 800CFA24 0235082A */  slt        $at, $s1, $s5
/* AAE28 800CFA28 5420FFC5 */  bnel       $at, $zero, .L800CF940
/* AAE2C 800CFA2C C6100038 */   lwc1      $f16, 0x38($s0)
.L800CFA30:
/* AAE30 800CFA30 8FAB0084 */  lw         $t3, 0x84($sp)
/* AAE34 800CFA34 3C178023 */  lui        $s7, %hi(D_80236980)
/* AAE38 800CFA38 26F76980 */  addiu      $s7, $s7, %lo(D_80236980)
/* AAE3C 800CFA3C 8FA500A4 */  lw         $a1, 0xa4($sp)
/* AAE40 800CFA40 8FA8007C */  lw         $t0, 0x7c($sp)
/* AAE44 800CFA44 27B30094 */  addiu      $s3, $sp, 0x94
/* AAE48 800CFA48 27B40088 */  addiu      $s4, $sp, 0x88
/* AAE4C 800CFA4C 24160001 */  addiu      $s6, $zero, 1
/* AAE50 800CFA50 15600038 */  bnez       $t3, .L800CFB34
/* AAE54 800CFA54 241E0130 */   addiu     $fp, $zero, 0x130
/* AAE58 800CFA58 8FAC0074 */  lw         $t4, 0x74($sp)
/* AAE5C 800CFA5C AFA500A4 */  sw         $a1, 0xa4($sp)
/* AAE60 800CFA60 010C082A */  slt        $at, $t0, $t4
/* AAE64 800CFA64 10200033 */  beqz       $at, .L800CFB34
/* AAE68 800CFA68 000C5080 */   sll       $t2, $t4, 2
/* AAE6C 800CFA6C 00AA1021 */  addu       $v0, $a1, $t2
/* AAE70 800CFA70 C4480018 */  lwc1       $f8, 0x18($v0)
/* AAE74 800CFA74 C64A0004 */  lwc1       $f10, 4($s2)
/* AAE78 800CFA78 24090077 */  addiu      $t1, $zero, 0x77
/* AAE7C 800CFA7C 460A4400 */  add.s      $f16, $f8, $f10
/* AAE80 800CFA80 E7B00088 */  swc1       $f16, 0x88($sp)
/* AAE84 800CFA84 C6440008 */  lwc1       $f4, 8($s2)
/* AAE88 800CFA88 C452009C */  lwc1       $f18, 0x9c($v0)
/* AAE8C 800CFA8C 46049180 */  add.s      $f6, $f18, $f4
/* AAE90 800CFA90 46143200 */  add.s      $f8, $f6, $f20
/* AAE94 800CFA94 E7A8008C */  swc1       $f8, 0x8c($sp)
/* AAE98 800CFA98 C650000C */  lwc1       $f16, 0xc($s2)
/* AAE9C 800CFA9C C44A0120 */  lwc1       $f10, 0x120($v0)
/* AAEA0 800CFAA0 46105480 */  add.s      $f18, $f10, $f16
/* AAEA4 800CFAA4 E7B20090 */  swc1       $f18, 0x90($sp)
/* AAEA8 800CFAA8 8E610000 */  lw         $at, ($s3)
/* AAEAC 800CFAAC AFA10000 */  sw         $at, ($sp)
/* AAEB0 800CFAB0 8E650004 */  lw         $a1, 4($s3)
/* AAEB4 800CFAB4 8FA40000 */  lw         $a0, ($sp)
/* AAEB8 800CFAB8 AFA50004 */  sw         $a1, 4($sp)
/* AAEBC 800CFABC 8E610008 */  lw         $at, 8($s3)
/* AAEC0 800CFAC0 AFA10008 */  sw         $at, 8($sp)
/* AAEC4 800CFAC4 8E810000 */  lw         $at, ($s4)
/* AAEC8 800CFAC8 8FA60008 */  lw         $a2, 8($sp)
/* AAECC 800CFACC AFA1000C */  sw         $at, 0xc($sp)
/* AAED0 800CFAD0 8E980004 */  lw         $t8, 4($s4)
/* AAED4 800CFAD4 8FA7000C */  lw         $a3, 0xc($sp)
/* AAED8 800CFAD8 AFB80010 */  sw         $t8, 0x10($sp)
/* AAEDC 800CFADC 8E810008 */  lw         $at, 8($s4)
/* AAEE0 800CFAE0 AFB60020 */  sw         $s6, 0x20($sp)
/* AAEE4 800CFAE4 AFA0001C */  sw         $zero, 0x1c($sp)
/* AAEE8 800CFAE8 AFA90018 */  sw         $t1, 0x18($sp)
/* AAEEC 800CFAEC 0C032A3E */  jal        func_800CA8F8
/* AAEF0 800CFAF0 AFA10014 */   sw        $at, 0x14($sp)
/* AAEF4 800CFAF4 50400010 */  beql       $v0, $zero, .L800CFB38
/* AAEF8 800CFAF8 8FA20084 */   lw        $v0, 0x84($sp)
/* AAEFC 800CFAFC 8C4B0004 */  lw         $t3, 4($v0)
/* AAF00 800CFB00 017E0019 */  multu      $t3, $fp
/* AAF04 800CFB04 00006012 */  mflo       $t4
/* AAF08 800CFB08 02EC1821 */  addu       $v1, $s7, $t4
/* AAF0C 800CFB0C 8C6D0124 */  lw         $t5, 0x124($v1)
/* AAF10 800CFB10 52CD0009 */  beql       $s6, $t5, .L800CFB38
/* AAF14 800CFB14 8FA20084 */   lw        $v0, 0x84($sp)
/* AAF18 800CFB18 8C640010 */  lw         $a0, 0x10($v1)
/* AAF1C 800CFB1C 24010011 */  addiu      $at, $zero, 0x11
/* AAF20 800CFB20 10810004 */  beq        $a0, $at, .L800CFB34
/* AAF24 800CFB24 24010013 */   addiu     $at, $zero, 0x13
/* AAF28 800CFB28 10810002 */  beq        $a0, $at, .L800CFB34
/* AAF2C 800CFB2C 240A0003 */   addiu     $t2, $zero, 3
/* AAF30 800CFB30 AFAA0084 */  sw         $t2, 0x84($sp)
.L800CFB34:
/* AAF34 800CFB34 8FA20084 */  lw         $v0, 0x84($sp)
.L800CFB38:
/* AAF38 800CFB38 8FBF005C */  lw         $ra, 0x5c($sp)
/* AAF3C 800CFB3C D7B40030 */  ldc1       $f20, 0x30($sp)
/* AAF40 800CFB40 8FB00038 */  lw         $s0, 0x38($sp)
/* AAF44 800CFB44 8FB1003C */  lw         $s1, 0x3c($sp)
/* AAF48 800CFB48 8FB20040 */  lw         $s2, 0x40($sp)
/* AAF4C 800CFB4C 8FB30044 */  lw         $s3, 0x44($sp)
/* AAF50 800CFB50 8FB40048 */  lw         $s4, 0x48($sp)
/* AAF54 800CFB54 8FB5004C */  lw         $s5, 0x4c($sp)
/* AAF58 800CFB58 8FB60050 */  lw         $s6, 0x50($sp)
/* AAF5C 800CFB5C 8FB70054 */  lw         $s7, 0x54($sp)
/* AAF60 800CFB60 8FBE0058 */  lw         $fp, 0x58($sp)
/* AAF64 800CFB64 03E00008 */  jr         $ra
/* AAF68 800CFB68 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_800CFB6C
/* AAF6C 800CFB6C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* AAF70 800CFB70 AFBF002C */  sw         $ra, 0x2c($sp)
/* AAF74 800CFB74 AFB20028 */  sw         $s2, 0x28($sp)
/* AAF78 800CFB78 AFB10024 */  sw         $s1, 0x24($sp)
/* AAF7C 800CFB7C AFB00020 */  sw         $s0, 0x20($sp)
/* AAF80 800CFB80 AC86008C */  sw         $a2, 0x8c($a0)
/* AAF84 800CFB84 8CA20004 */  lw         $v0, 4($a1)
/* AAF88 800CFB88 3C0F8023 */  lui        $t7, %hi(D_80236980)
/* AAF8C 800CFB8C 25EF6980 */  addiu      $t7, $t7, %lo(D_80236980)
/* AAF90 800CFB90 00027080 */  sll        $t6, $v0, 2
/* AAF94 800CFB94 01C27021 */  addu       $t6, $t6, $v0
/* AAF98 800CFB98 000E7080 */  sll        $t6, $t6, 2
/* AAF9C 800CFB9C 01C27023 */  subu       $t6, $t6, $v0
/* AAFA0 800CFBA0 000E7100 */  sll        $t6, $t6, 4
/* AAFA4 800CFBA4 01CF8021 */  addu       $s0, $t6, $t7
/* AAFA8 800CFBA8 AC82007C */  sw         $v0, 0x7c($a0)
/* AAFAC 800CFBAC 8E1800E4 */  lw         $t8, 0xe4($s0)
/* AAFB0 800CFBB0 240100A0 */  addiu      $at, $zero, 0xa0
/* AAFB4 800CFBB4 00808825 */  or         $s1, $a0, $zero
/* AAFB8 800CFBB8 00B8C823 */  subu       $t9, $a1, $t8
/* AAFBC 800CFBBC 0321001A */  div        $zero, $t9, $at
/* AAFC0 800CFBC0 00004012 */  mflo       $t0
/* AAFC4 800CFBC4 AC880088 */  sw         $t0, 0x88($a0)
/* AAFC8 800CFBC8 C6060018 */  lwc1       $f6, 0x18($s0)
/* AAFCC 800CFBCC C4A40094 */  lwc1       $f4, 0x94($a1)
/* AAFD0 800CFBD0 00A09025 */  or         $s2, $a1, $zero
/* AAFD4 800CFBD4 02002025 */  or         $a0, $s0, $zero
/* AAFD8 800CFBD8 46062201 */  sub.s      $f8, $f4, $f6
/* AAFDC 800CFBDC E7A80050 */  swc1       $f8, 0x50($sp)
/* AAFE0 800CFBE0 C610001C */  lwc1       $f16, 0x1c($s0)
/* AAFE4 800CFBE4 C4AA0098 */  lwc1       $f10, 0x98($a1)
/* AAFE8 800CFBE8 46105481 */  sub.s      $f18, $f10, $f16
/* AAFEC 800CFBEC E7B20054 */  swc1       $f18, 0x54($sp)
/* AAFF0 800CFBF0 C6060020 */  lwc1       $f6, 0x20($s0)
/* AAFF4 800CFBF4 C4A4009C */  lwc1       $f4, 0x9c($a1)
/* AAFF8 800CFBF8 24050001 */  addiu      $a1, $zero, 1
/* AAFFC 800CFBFC 46062201 */  sub.s      $f8, $f4, $f6
/* AB000 800CFC00 0C02CFFF */  jal        func_800B3FFC
/* AB004 800CFC04 E7A80058 */   swc1      $f8, 0x58($sp)
/* AB008 800CFC08 24010002 */  addiu      $at, $zero, 2
/* AB00C 800CFC0C 1441004F */  bne        $v0, $at, .L800CFD4C
/* AB010 800CFC10 C7A80050 */   lwc1      $f8, 0x50($sp)
/* AB014 800CFC14 27A40050 */  addiu      $a0, $sp, 0x50
/* AB018 800CFC18 8C810000 */  lw         $at, ($a0)
/* AB01C 800CFC1C AFA10004 */  sw         $at, 4($sp)
/* AB020 800CFC20 8C860004 */  lw         $a2, 4($a0)
/* AB024 800CFC24 8FA50004 */  lw         $a1, 4($sp)
/* AB028 800CFC28 AFA60008 */  sw         $a2, 8($sp)
/* AB02C 800CFC2C 8C870008 */  lw         $a3, 8($a0)
/* AB030 800CFC30 AFA7000C */  sw         $a3, 0xc($sp)
/* AB034 800CFC34 C60A0060 */  lwc1       $f10, 0x60($s0)
/* AB038 800CFC38 46005407 */  neg.s      $f16, $f10
/* AB03C 800CFC3C E7B00010 */  swc1       $f16, 0x10($sp)
/* AB040 800CFC40 8E0B005C */  lw         $t3, 0x5c($s0)
/* AB044 800CFC44 0C035FB8 */  jal        func_800D7EE0
/* AB048 800CFC48 AFAB0014 */   sw        $t3, 0x14($sp)
/* AB04C 800CFC4C C7B20050 */  lwc1       $f18, 0x50($sp)
/* AB050 800CFC50 27AC0050 */  addiu      $t4, $sp, 0x50
/* AB054 800CFC54 27A40044 */  addiu      $a0, $sp, 0x44
/* AB058 800CFC58 E6320090 */  swc1       $f18, 0x90($s1)
/* AB05C 800CFC5C C7A40054 */  lwc1       $f4, 0x54($sp)
/* AB060 800CFC60 E6240094 */  swc1       $f4, 0x94($s1)
/* AB064 800CFC64 C7A60058 */  lwc1       $f6, 0x58($sp)
/* AB068 800CFC68 E6260098 */  swc1       $f6, 0x98($s1)
/* AB06C 800CFC6C 8D810000 */  lw         $at, ($t4)
/* AB070 800CFC70 AFA10004 */  sw         $at, 4($sp)
/* AB074 800CFC74 8D860004 */  lw         $a2, 4($t4)
/* AB078 800CFC78 8FA50004 */  lw         $a1, 4($sp)
/* AB07C 800CFC7C AFA60008 */  sw         $a2, 8($sp)
/* AB080 800CFC80 8D870008 */  lw         $a3, 8($t4)
/* AB084 800CFC84 AFA7000C */  sw         $a3, 0xc($sp)
/* AB088 800CFC88 C6080060 */  lwc1       $f8, 0x60($s0)
/* AB08C 800CFC8C E7A80010 */  swc1       $f8, 0x10($sp)
/* AB090 800CFC90 8E0F005C */  lw         $t7, 0x5c($s0)
/* AB094 800CFC94 0C035FB8 */  jal        func_800D7EE0
/* AB098 800CFC98 AFAF0014 */   sw        $t7, 0x14($sp)
/* AB09C 800CFC9C 27B80050 */  addiu      $t8, $sp, 0x50
/* AB0A0 800CFCA0 8F010000 */  lw         $at, ($t8)
/* AB0A4 800CFCA4 27A40038 */  addiu      $a0, $sp, 0x38
/* AB0A8 800CFCA8 AFA10004 */  sw         $at, 4($sp)
/* AB0AC 800CFCAC 8F060004 */  lw         $a2, 4($t8)
/* AB0B0 800CFCB0 8FA50004 */  lw         $a1, 4($sp)
/* AB0B4 800CFCB4 AFA60008 */  sw         $a2, 8($sp)
/* AB0B8 800CFCB8 8F070008 */  lw         $a3, 8($t8)
/* AB0BC 800CFCBC AFA7000C */  sw         $a3, 0xc($sp)
/* AB0C0 800CFCC0 C6100060 */  lwc1       $f16, 0x60($s0)
/* AB0C4 800CFCC4 C60A0064 */  lwc1       $f10, 0x64($s0)
/* AB0C8 800CFCC8 46105480 */  add.s      $f18, $f10, $f16
/* AB0CC 800CFCCC E7B20010 */  swc1       $f18, 0x10($sp)
/* AB0D0 800CFCD0 8E09005C */  lw         $t1, 0x5c($s0)
/* AB0D4 800CFCD4 0C035FB8 */  jal        func_800D7EE0
/* AB0D8 800CFCD8 AFA90014 */   sw        $t1, 0x14($sp)
/* AB0DC 800CFCDC C7A40038 */  lwc1       $f4, 0x38($sp)
/* AB0E0 800CFCE0 C7A60044 */  lwc1       $f6, 0x44($sp)
/* AB0E4 800CFCE4 C7AA003C */  lwc1       $f10, 0x3c($sp)
/* AB0E8 800CFCE8 C7B00048 */  lwc1       $f16, 0x48($sp)
/* AB0EC 800CFCEC 46062201 */  sub.s      $f8, $f4, $f6
/* AB0F0 800CFCF0 C7A6004C */  lwc1       $f6, 0x4c($sp)
/* AB0F4 800CFCF4 C7A40040 */  lwc1       $f4, 0x40($sp)
/* AB0F8 800CFCF8 46105481 */  sub.s      $f18, $f10, $f16
/* AB0FC 800CFCFC E7A80050 */  swc1       $f8, 0x50($sp)
/* AB100 800CFD00 46062281 */  sub.s      $f10, $f4, $f6
/* AB104 800CFD04 E7B20054 */  swc1       $f18, 0x54($sp)
/* AB108 800CFD08 E7AA0058 */  swc1       $f10, 0x58($sp)
/* AB10C 800CFD0C C6100024 */  lwc1       $f16, 0x24($s0)
/* AB110 800CFD10 46088100 */  add.s      $f4, $f16, $f8
/* AB114 800CFD14 E7A40050 */  swc1       $f4, 0x50($sp)
/* AB118 800CFD18 C6060028 */  lwc1       $f6, 0x28($s0)
/* AB11C 800CFD1C 46123400 */  add.s      $f16, $f6, $f18
/* AB120 800CFD20 C7A60050 */  lwc1       $f6, 0x50($sp)
/* AB124 800CFD24 E7B00054 */  swc1       $f16, 0x54($sp)
/* AB128 800CFD28 C608002C */  lwc1       $f8, 0x2c($s0)
/* AB12C 800CFD2C 460A4100 */  add.s      $f4, $f8, $f10
/* AB130 800CFD30 E7A40058 */  swc1       $f4, 0x58($sp)
/* AB134 800CFD34 E626009C */  swc1       $f6, 0x9c($s1)
/* AB138 800CFD38 C7B20054 */  lwc1       $f18, 0x54($sp)
/* AB13C 800CFD3C E63200A0 */  swc1       $f18, 0xa0($s1)
/* AB140 800CFD40 C7B00058 */  lwc1       $f16, 0x58($sp)
/* AB144 800CFD44 10000016 */  b          .L800CFDA0
/* AB148 800CFD48 E63000A4 */   swc1      $f16, 0xa4($s1)
.L800CFD4C:
/* AB14C 800CFD4C E6280090 */  swc1       $f8, 0x90($s1)
/* AB150 800CFD50 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* AB154 800CFD54 27A40050 */  addiu      $a0, $sp, 0x50
/* AB158 800CFD58 E62A0094 */  swc1       $f10, 0x94($s1)
/* AB15C 800CFD5C C7A40058 */  lwc1       $f4, 0x58($sp)
/* AB160 800CFD60 E6240098 */  swc1       $f4, 0x98($s1)
/* AB164 800CFD64 8E410094 */  lw         $at, 0x94($s2)
/* AB168 800CFD68 AFA10004 */  sw         $at, 4($sp)
/* AB16C 800CFD6C 8E460098 */  lw         $a2, 0x98($s2)
/* AB170 800CFD70 8FA50004 */  lw         $a1, 4($sp)
/* AB174 800CFD74 AFA60008 */  sw         $a2, 8($sp)
/* AB178 800CFD78 8E47009C */  lw         $a3, 0x9c($s2)
/* AB17C 800CFD7C AFB00010 */  sw         $s0, 0x10($sp)
/* AB180 800CFD80 0C02C957 */  jal        func_800B255C
/* AB184 800CFD84 AFA7000C */   sw        $a3, 0xc($sp)
/* AB188 800CFD88 C7A60050 */  lwc1       $f6, 0x50($sp)
/* AB18C 800CFD8C E626009C */  swc1       $f6, 0x9c($s1)
/* AB190 800CFD90 C7B20054 */  lwc1       $f18, 0x54($sp)
/* AB194 800CFD94 E63200A0 */  swc1       $f18, 0xa0($s1)
/* AB198 800CFD98 C7B00058 */  lwc1       $f16, 0x58($sp)
/* AB19C 800CFD9C E63000A4 */  swc1       $f16, 0xa4($s1)
.L800CFDA0:
/* AB1A0 800CFDA0 8FBF002C */  lw         $ra, 0x2c($sp)
/* AB1A4 800CFDA4 8FB00020 */  lw         $s0, 0x20($sp)
/* AB1A8 800CFDA8 8FB10024 */  lw         $s1, 0x24($sp)
/* AB1AC 800CFDAC 8FB20028 */  lw         $s2, 0x28($sp)
/* AB1B0 800CFDB0 03E00008 */  jr         $ra
/* AB1B4 800CFDB4 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800CFDB8
/* AB1B8 800CFDB8 240EFFFF */  addiu      $t6, $zero, -1
/* AB1BC 800CFDBC AC80008C */  sw         $zero, 0x8c($a0)
/* AB1C0 800CFDC0 03E00008 */  jr         $ra
/* AB1C4 800CFDC4 AC8E007C */   sw        $t6, 0x7c($a0)

glabel func_800CFDC8
/* AB1C8 800CFDC8 44800000 */  mtc1       $zero, $f0
/* AB1CC 800CFDCC 240EFFFF */  addiu      $t6, $zero, -1
/* AB1D0 800CFDD0 240F0001 */  addiu      $t7, $zero, 1
/* AB1D4 800CFDD4 AC80008C */  sw         $zero, 0x8c($a0)
/* AB1D8 800CFDD8 AC8E007C */  sw         $t6, 0x7c($a0)
/* AB1DC 800CFDDC AC8F0054 */  sw         $t7, 0x54($a0)
/* AB1E0 800CFDE0 E4800024 */  swc1       $f0, 0x24($a0)
/* AB1E4 800CFDE4 E4800028 */  swc1       $f0, 0x28($a0)
/* AB1E8 800CFDE8 E480002C */  swc1       $f0, 0x2c($a0)
/* AB1EC 800CFDEC E48000A8 */  swc1       $f0, 0xa8($a0)
/* AB1F0 800CFDF0 E48000AC */  swc1       $f0, 0xac($a0)
/* AB1F4 800CFDF4 E48000B0 */  swc1       $f0, 0xb0($a0)
/* AB1F8 800CFDF8 E4800090 */  swc1       $f0, 0x90($a0)
/* AB1FC 800CFDFC E4800094 */  swc1       $f0, 0x94($a0)
/* AB200 800CFE00 E4800098 */  swc1       $f0, 0x98($a0)
/* AB204 800CFE04 E480009C */  swc1       $f0, 0x9c($a0)
/* AB208 800CFE08 E48000A0 */  swc1       $f0, 0xa0($a0)
/* AB20C 800CFE0C 03E00008 */  jr         $ra
/* AB210 800CFE10 E48000A4 */   swc1      $f0, 0xa4($a0)

glabel func_800CFE14
/* AB214 800CFE14 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AB218 800CFE18 AFBF001C */  sw         $ra, 0x1c($sp)
/* AB21C 800CFE1C AFB00018 */  sw         $s0, 0x18($sp)
/* AB220 800CFE20 AFA40028 */  sw         $a0, 0x28($sp)
/* AB224 800CFE24 AFA5002C */  sw         $a1, 0x2c($sp)
/* AB228 800CFE28 8C82007C */  lw         $v0, 0x7c($a0)
/* AB22C 800CFE2C AC860054 */  sw         $a2, 0x54($a0)
/* AB230 800CFE30 18C00002 */  blez       $a2, .L800CFE3C
/* AB234 800CFE34 00401825 */   or        $v1, $v0, $zero
/* AB238 800CFE38 2403FFFF */  addiu      $v1, $zero, -1
.L800CFE3C:
/* AB23C 800CFE3C 50620014 */  beql       $v1, $v0, .L800CFE90
/* AB240 800CFE40 8FB80028 */   lw        $t8, 0x28($sp)
/* AB244 800CFE44 04400011 */  bltz       $v0, .L800CFE8C
/* AB248 800CFE48 00027880 */   sll       $t7, $v0, 2
/* AB24C 800CFE4C 01E27821 */  addu       $t7, $t7, $v0
/* AB250 800CFE50 000F7880 */  sll        $t7, $t7, 2
/* AB254 800CFE54 01E27823 */  subu       $t7, $t7, $v0
/* AB258 800CFE58 000F7900 */  sll        $t7, $t7, 4
/* AB25C 800CFE5C 3C048023 */  lui        $a0, %hi(D_80236A84)
/* AB260 800CFE60 008F2021 */  addu       $a0, $a0, $t7
/* AB264 800CFE64 8C846A84 */  lw         $a0, %lo(D_80236A84)($a0)
/* AB268 800CFE68 AFA30020 */  sw         $v1, 0x20($sp)
/* AB26C 800CFE6C 0C02CD03 */  jal        func_800B340C
/* AB270 800CFE70 AFA40024 */   sw        $a0, 0x24($sp)
/* AB274 800CFE74 8FA30020 */  lw         $v1, 0x20($sp)
/* AB278 800CFE78 10400004 */  beqz       $v0, .L800CFE8C
/* AB27C 800CFE7C 8FA40024 */   lw        $a0, 0x24($sp)
/* AB280 800CFE80 0C02CD7F */  jal        func_800B35FC
/* AB284 800CFE84 AFA30020 */   sw        $v1, 0x20($sp)
/* AB288 800CFE88 8FA30020 */  lw         $v1, 0x20($sp)
.L800CFE8C:
/* AB28C 800CFE8C 8FB80028 */  lw         $t8, 0x28($sp)
.L800CFE90:
/* AB290 800CFE90 0003C880 */  sll        $t9, $v1, 2
/* AB294 800CFE94 0460002C */  bltz       $v1, .L800CFF48
/* AB298 800CFE98 AF03007C */   sw        $v1, 0x7c($t8)
/* AB29C 800CFE9C 0323C821 */  addu       $t9, $t9, $v1
/* AB2A0 800CFEA0 0019C880 */  sll        $t9, $t9, 2
/* AB2A4 800CFEA4 0323C823 */  subu       $t9, $t9, $v1
/* AB2A8 800CFEA8 3C088023 */  lui        $t0, %hi(D_80236980)
/* AB2AC 800CFEAC 25086980 */  addiu      $t0, $t0, %lo(D_80236980)
/* AB2B0 800CFEB0 0019C900 */  sll        $t9, $t9, 4
/* AB2B4 800CFEB4 03288021 */  addu       $s0, $t9, $t0
/* AB2B8 800CFEB8 8E040104 */  lw         $a0, 0x104($s0)
/* AB2BC 800CFEBC 0C02CD03 */  jal        func_800B340C
/* AB2C0 800CFEC0 AFA40024 */   sw        $a0, 0x24($sp)
/* AB2C4 800CFEC4 10400003 */  beqz       $v0, .L800CFED4
/* AB2C8 800CFEC8 8FA40024 */   lw        $a0, 0x24($sp)
/* AB2CC 800CFECC 0C02CD6C */  jal        func_800B35B0
/* AB2D0 800CFED0 00000000 */   nop
.L800CFED4:
/* AB2D4 800CFED4 8E040108 */  lw         $a0, 0x108($s0)
/* AB2D8 800CFED8 0C02CD03 */  jal        func_800B340C
/* AB2DC 800CFEDC AFA40024 */   sw        $a0, 0x24($sp)
/* AB2E0 800CFEE0 10400003 */  beqz       $v0, .L800CFEF0
/* AB2E4 800CFEE4 8FA40024 */   lw        $a0, 0x24($sp)
/* AB2E8 800CFEE8 0C02CD6C */  jal        func_800B35B0
/* AB2EC 800CFEEC 00000000 */   nop
.L800CFEF0:
/* AB2F0 800CFEF0 8E09011C */  lw         $t1, 0x11c($s0)
/* AB2F4 800CFEF4 3C018023 */  lui        $at, %hi(D_80236970)
/* AB2F8 800CFEF8 8FA40028 */  lw         $a0, 0x28($sp)
/* AB2FC 800CFEFC AC296970 */  sw         $t1, %lo(D_80236970)($at)
/* AB300 800CFF00 8E0A0010 */  lw         $t2, 0x10($s0)
/* AB304 800CFF04 24010017 */  addiu      $at, $zero, 0x17
/* AB308 800CFF08 55410006 */  bnel       $t2, $at, .L800CFF24
/* AB30C 800CFF0C 8E0B0120 */   lw        $t3, 0x120($s0)
/* AB310 800CFF10 0C02EBE9 */  jal        func_800BAFA4
/* AB314 800CFF14 02002825 */   or        $a1, $s0, $zero
/* AB318 800CFF18 54400005 */  bnel       $v0, $zero, .L800CFF30
/* AB31C 800CFF1C 8FA40028 */   lw        $a0, 0x28($sp)
/* AB320 800CFF20 8E0B0120 */  lw         $t3, 0x120($s0)
.L800CFF24:
/* AB324 800CFF24 51600005 */  beql       $t3, $zero, .L800CFF3C
/* AB328 800CFF28 8E0C012C */   lw        $t4, 0x12c($s0)
/* AB32C 800CFF2C 8FA40028 */  lw         $a0, 0x28($sp)
.L800CFF30:
/* AB330 800CFF30 0C00DB5D */  jal        func_80036D74
/* AB334 800CFF34 8FA5002C */   lw        $a1, 0x2c($sp)
/* AB338 800CFF38 8E0C012C */  lw         $t4, 0x12c($s0)
.L800CFF3C:
/* AB33C 800CFF3C 8FAD0028 */  lw         $t5, 0x28($sp)
/* AB340 800CFF40 10000003 */  b          .L800CFF50
/* AB344 800CFF44 ADAC0064 */   sw        $t4, 0x64($t5)
.L800CFF48:
/* AB348 800CFF48 8FAE0028 */  lw         $t6, 0x28($sp)
/* AB34C 800CFF4C ADC00064 */  sw         $zero, 0x64($t6)
.L800CFF50:
/* AB350 800CFF50 8FBF001C */  lw         $ra, 0x1c($sp)
/* AB354 800CFF54 8FB00018 */  lw         $s0, 0x18($sp)
/* AB358 800CFF58 27BD0028 */  addiu      $sp, $sp, 0x28
/* AB35C 800CFF5C 03E00008 */  jr         $ra
/* AB360 800CFF60 00000000 */   nop

glabel func_800CFF64
/* AB364 800CFF64 44800000 */  mtc1       $zero, $f0
/* AB368 800CFF68 AC800084 */  sw         $zero, 0x84($a0)
/* AB36C 800CFF6C E48000B0 */  swc1       $f0, 0xb0($a0)
/* AB370 800CFF70 E48000AC */  swc1       $f0, 0xac($a0)
/* AB374 800CFF74 03E00008 */  jr         $ra
/* AB378 800CFF78 E48000A8 */   swc1      $f0, 0xa8($a0)

glabel func_800CFF7C
/* AB37C 800CFF7C 3C0E8023 */  lui        $t6, %hi(D_80236974)
/* AB380 800CFF80 8DCE6974 */  lw         $t6, %lo(D_80236974)($t6)
/* AB384 800CFF84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB388 800CFF88 24020001 */  addiu      $v0, $zero, 1
/* AB38C 800CFF8C 104E004F */  beq        $v0, $t6, .L800D00CC
/* AB390 800CFF90 AFBF0014 */   sw        $ra, 0x14($sp)
/* AB394 800CFF94 3C0F8017 */  lui        $t7, %hi(D_80174874)
/* AB398 800CFF98 8DEF4874 */  lw         $t7, %lo(D_80174874)($t7)
/* AB39C 800CFF9C 3C198024 */  lui        $t9, 0x8024
/* AB3A0 800CFFA0 3C0A8024 */  lui        $t2, 0x8024
/* AB3A4 800CFFA4 144F0024 */  bne        $v0, $t7, .L800D0038
/* AB3A8 800CFFA8 3C028024 */   lui       $v0, %hi(D_80240CD8)
/* AB3AC 800CFFAC 8C420CD8 */  lw         $v0, %lo(D_80240CD8)($v0)
/* AB3B0 800CFFB0 24010007 */  addiu      $at, $zero, 7
/* AB3B4 800CFFB4 3C188017 */  lui        $t8, %hi(D_80174880)
/* AB3B8 800CFFB8 10410003 */  beq        $v0, $at, .L800CFFC8
/* AB3BC 800CFFBC 2401000F */   addiu     $at, $zero, 0xf
/* AB3C0 800CFFC0 1441001D */  bne        $v0, $at, .L800D0038
/* AB3C4 800CFFC4 00000000 */   nop
.L800CFFC8:
/* AB3C8 800CFFC8 8F184880 */  lw         $t8, %lo(D_80174880)($t8)
/* AB3CC 800CFFCC 1300001A */  beqz       $t8, .L800D0038
/* AB3D0 800CFFD0 00000000 */   nop
/* AB3D4 800CFFD4 C4800000 */  lwc1       $f0, ($a0)
/* AB3D8 800CFFD8 C4820008 */  lwc1       $f2, 8($a0)
/* AB3DC 800CFFDC 3C018011 */  lui        $at, %hi(D_801104F8)
/* AB3E0 800CFFE0 46000102 */  mul.s      $f4, $f0, $f0
/* AB3E4 800CFFE4 D43004F8 */  ldc1       $f16, %lo(D_801104F8)($at)
/* AB3E8 800CFFE8 46021182 */  mul.s      $f6, $f2, $f2
/* AB3EC 800CFFEC 46062300 */  add.s      $f12, $f4, $f6
/* AB3F0 800CFFF0 460063A1 */  cvt.d.s    $f14, $f12
/* AB3F4 800CFFF4 462E803C */  c.lt.d     $f16, $f14
/* AB3F8 800CFFF8 00000000 */  nop
/* AB3FC 800CFFFC 45020034 */  bc1fl      .L800D00D0
/* AB400 800D0000 8FBF0014 */   lw        $ra, 0x14($sp)
/* AB404 800D0004 462E8203 */  div.d      $f8, $f16, $f14
/* AB408 800D0008 AFA40018 */  sw         $a0, 0x18($sp)
/* AB40C 800D000C 0C036C2C */  jal        func_800DB0B0
/* AB410 800D0010 46204320 */   cvt.s.d   $f12, $f8
/* AB414 800D0014 8FA40018 */  lw         $a0, 0x18($sp)
/* AB418 800D0018 C48A0000 */  lwc1       $f10, ($a0)
/* AB41C 800D001C C4840008 */  lwc1       $f4, 8($a0)
/* AB420 800D0020 46005482 */  mul.s      $f18, $f10, $f0
/* AB424 800D0024 00000000 */  nop
/* AB428 800D0028 46002182 */  mul.s      $f6, $f4, $f0
/* AB42C 800D002C E4920000 */  swc1       $f18, ($a0)
/* AB430 800D0030 10000026 */  b          .L800D00CC
/* AB434 800D0034 E4860008 */   swc1      $f6, 8($a0)
.L800D0038:
/* AB438 800D0038 8F390CD8 */  lw         $t9, 0xcd8($t9)
/* AB43C 800D003C 254A0CE0 */  addiu      $t2, $t2, 0xce0
/* AB440 800D0040 C4800000 */  lwc1       $f0, ($a0)
/* AB444 800D0044 001940C0 */  sll        $t0, $t9, 3
/* AB448 800D0048 01194023 */  subu       $t0, $t0, $t9
/* AB44C 800D004C 00084080 */  sll        $t0, $t0, 2
/* AB450 800D0050 01194023 */  subu       $t0, $t0, $t9
/* AB454 800D0054 000840C0 */  sll        $t0, $t0, 3
/* AB458 800D0058 25090030 */  addiu      $t1, $t0, 0x30
/* AB45C 800D005C 012A1021 */  addu       $v0, $t1, $t2
/* AB460 800D0060 C4420000 */  lwc1       $f2, ($v0)
/* AB464 800D0064 4602003C */  c.lt.s     $f0, $f2
/* AB468 800D0068 00000000 */  nop
/* AB46C 800D006C 45020004 */  bc1fl      .L800D0080
/* AB470 800D0070 C442000C */   lwc1      $f2, 0xc($v0)
/* AB474 800D0074 E4820000 */  swc1       $f2, ($a0)
/* AB478 800D0078 C4800000 */  lwc1       $f0, ($a0)
/* AB47C 800D007C C442000C */  lwc1       $f2, 0xc($v0)
.L800D0080:
/* AB480 800D0080 4600103C */  c.lt.s     $f2, $f0
/* AB484 800D0084 00000000 */  nop
/* AB488 800D0088 45020003 */  bc1fl      .L800D0098
/* AB48C 800D008C C4820008 */   lwc1      $f2, 8($a0)
/* AB490 800D0090 E4820000 */  swc1       $f2, ($a0)
/* AB494 800D0094 C4820008 */  lwc1       $f2, 8($a0)
.L800D0098:
/* AB498 800D0098 C4400008 */  lwc1       $f0, 8($v0)
/* AB49C 800D009C 4600103C */  c.lt.s     $f2, $f0
/* AB4A0 800D00A0 00000000 */  nop
/* AB4A4 800D00A4 45020004 */  bc1fl      .L800D00B8
/* AB4A8 800D00A8 C4400014 */   lwc1      $f0, 0x14($v0)
/* AB4AC 800D00AC E4800008 */  swc1       $f0, 8($a0)
/* AB4B0 800D00B0 C4820008 */  lwc1       $f2, 8($a0)
/* AB4B4 800D00B4 C4400014 */  lwc1       $f0, 0x14($v0)
.L800D00B8:
/* AB4B8 800D00B8 4602003C */  c.lt.s     $f0, $f2
/* AB4BC 800D00BC 00000000 */  nop
/* AB4C0 800D00C0 45020003 */  bc1fl      .L800D00D0
/* AB4C4 800D00C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* AB4C8 800D00C8 E4800008 */  swc1       $f0, 8($a0)
.L800D00CC:
/* AB4CC 800D00CC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800D00D0:
/* AB4D0 800D00D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB4D4 800D00D4 03E00008 */  jr         $ra
/* AB4D8 800D00D8 00000000 */   nop

glabel func_800D00DC
/* AB4DC 800D00DC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AB4E0 800D00E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB4E4 800D00E4 AFA40030 */  sw         $a0, 0x30($sp)
/* AB4E8 800D00E8 8CA60080 */  lw         $a2, 0x80($a1)
/* AB4EC 800D00EC 3C0F8023 */  lui        $t7, %hi(D_80236980)
/* AB4F0 800D00F0 25EF6980 */  addiu      $t7, $t7, %lo(D_80236980)
/* AB4F4 800D00F4 04C10005 */  bgez       $a2, .L800D010C
/* AB4F8 800D00F8 00067080 */   sll       $t6, $a2, 2
/* AB4FC 800D00FC 0C036066 */  jal        func_800D8198
/* AB500 800D0100 27A40024 */   addiu     $a0, $sp, 0x24
/* AB504 800D0104 1000001C */  b          .L800D0178
/* AB508 800D0108 27A80024 */   addiu     $t0, $sp, 0x24
.L800D010C:
/* AB50C 800D010C 01C67021 */  addu       $t6, $t6, $a2
/* AB510 800D0110 000E7080 */  sll        $t6, $t6, 2
/* AB514 800D0114 01C67023 */  subu       $t6, $t6, $a2
/* AB518 800D0118 000E7100 */  sll        $t6, $t6, 4
/* AB51C 800D011C 01CF1821 */  addu       $v1, $t6, $t7
/* AB520 800D0120 8C620010 */  lw         $v0, 0x10($v1)
/* AB524 800D0124 24010014 */  addiu      $at, $zero, 0x14
/* AB528 800D0128 10410005 */  beq        $v0, $at, .L800D0140
/* AB52C 800D012C 24010015 */   addiu     $at, $zero, 0x15
/* AB530 800D0130 10410003 */  beq        $v0, $at, .L800D0140
/* AB534 800D0134 24010016 */   addiu     $at, $zero, 0x16
/* AB538 800D0138 1441000C */  bne        $v0, $at, .L800D016C
/* AB53C 800D013C 00000000 */   nop
.L800D0140:
/* AB540 800D0140 8CB8011C */  lw         $t8, 0x11c($a1)
/* AB544 800D0144 24010004 */  addiu      $at, $zero, 4
/* AB548 800D0148 13010008 */  beq        $t8, $at, .L800D016C
/* AB54C 800D014C 00000000 */   nop
/* AB550 800D0150 C464008C */  lwc1       $f4, 0x8c($v1)
/* AB554 800D0154 E7A40024 */  swc1       $f4, 0x24($sp)
/* AB558 800D0158 C4660090 */  lwc1       $f6, 0x90($v1)
/* AB55C 800D015C E7A60028 */  swc1       $f6, 0x28($sp)
/* AB560 800D0160 C4680094 */  lwc1       $f8, 0x94($v1)
/* AB564 800D0164 10000003 */  b          .L800D0174
/* AB568 800D0168 E7A8002C */   swc1      $f8, 0x2c($sp)
.L800D016C:
/* AB56C 800D016C 0C036066 */  jal        func_800D8198
/* AB570 800D0170 27A40024 */   addiu     $a0, $sp, 0x24
.L800D0174:
/* AB574 800D0174 27A80024 */  addiu      $t0, $sp, 0x24
.L800D0178:
/* AB578 800D0178 8D010000 */  lw         $at, ($t0)
/* AB57C 800D017C 8FB90030 */  lw         $t9, 0x30($sp)
/* AB580 800D0180 AF210000 */  sw         $at, ($t9)
/* AB584 800D0184 8D0B0004 */  lw         $t3, 4($t0)
/* AB588 800D0188 AF2B0004 */  sw         $t3, 4($t9)
/* AB58C 800D018C 8D010008 */  lw         $at, 8($t0)
/* AB590 800D0190 AF210008 */  sw         $at, 8($t9)
/* AB594 800D0194 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB598 800D0198 8FA20030 */  lw         $v0, 0x30($sp)
/* AB59C 800D019C 27BD0030 */  addiu      $sp, $sp, 0x30
/* AB5A0 800D01A0 03E00008 */  jr         $ra
/* AB5A4 800D01A4 00000000 */   nop

glabel func_800D01A8
/* AB5A8 800D01A8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* AB5AC 800D01AC AFBF0024 */  sw         $ra, 0x24($sp)
/* AB5B0 800D01B0 AFB00020 */  sw         $s0, 0x20($sp)
/* AB5B4 800D01B4 C4840004 */  lwc1       $f4, 4($a0)
/* AB5B8 800D01B8 00808025 */  or         $s0, $a0, $zero
/* AB5BC 800D01BC 24050077 */  addiu      $a1, $zero, 0x77
/* AB5C0 800D01C0 E7A4006C */  swc1       $f4, 0x6c($sp)
/* AB5C4 800D01C4 C4860008 */  lwc1       $f6, 8($a0)
/* AB5C8 800D01C8 C7AA006C */  lwc1       $f10, 0x6c($sp)
/* AB5CC 800D01CC 24060010 */  addiu      $a2, $zero, 0x10
/* AB5D0 800D01D0 E7A60070 */  swc1       $f6, 0x70($sp)
/* AB5D4 800D01D4 C488000C */  lwc1       $f8, 0xc($a0)
/* AB5D8 800D01D8 C7A40070 */  lwc1       $f4, 0x70($sp)
/* AB5DC 800D01DC E7A80074 */  swc1       $f8, 0x74($sp)
/* AB5E0 800D01E0 C490004C */  lwc1       $f16, 0x4c($a0)
/* AB5E4 800D01E4 E7A40058 */  swc1       $f4, 0x58($sp)
/* AB5E8 800D01E8 C7A60074 */  lwc1       $f6, 0x74($sp)
/* AB5EC 800D01EC 46105481 */  sub.s      $f18, $f10, $f16
/* AB5F0 800D01F0 E7B20054 */  swc1       $f18, 0x54($sp)
/* AB5F4 800D01F4 C488004C */  lwc1       $f8, 0x4c($a0)
/* AB5F8 800D01F8 46083401 */  sub.s      $f16, $f6, $f8
/* AB5FC 800D01FC E7B0005C */  swc1       $f16, 0x5c($sp)
/* AB600 800D0200 C492004C */  lwc1       $f18, 0x4c($a0)
/* AB604 800D0204 460A9200 */  add.s      $f8, $f18, $f10
/* AB608 800D0208 E7A80060 */  swc1       $f8, 0x60($sp)
/* AB60C 800D020C C4900050 */  lwc1       $f16, 0x50($a0)
/* AB610 800D0210 46048480 */  add.s      $f18, $f16, $f4
/* AB614 800D0214 E7B20064 */  swc1       $f18, 0x64($sp)
/* AB618 800D0218 C48A004C */  lwc1       $f10, 0x4c($a0)
/* AB61C 800D021C 27A40054 */  addiu      $a0, $sp, 0x54
/* AB620 800D0220 46065200 */  add.s      $f8, $f10, $f6
/* AB624 800D0224 0C0325D2 */  jal        func_800C9748
/* AB628 800D0228 E7A80068 */   swc1      $f8, 0x68($sp)
/* AB62C 800D022C 27AE006C */  addiu      $t6, $sp, 0x6c
/* AB630 800D0230 8DC10000 */  lw         $at, ($t6)
/* AB634 800D0234 AFA10000 */  sw         $at, ($sp)
/* AB638 800D0238 8DC50004 */  lw         $a1, 4($t6)
/* AB63C 800D023C 8FA40000 */  lw         $a0, ($sp)
/* AB640 800D0240 AFA50004 */  sw         $a1, 4($sp)
/* AB644 800D0244 8DC10008 */  lw         $at, 8($t6)
/* AB648 800D0248 AFA10008 */  sw         $at, 8($sp)
/* AB64C 800D024C 3C013F80 */  lui        $at, 0x3f80
/* AB650 800D0250 44818000 */  mtc1       $at, $f16
/* AB654 800D0254 8E070050 */  lw         $a3, 0x50($s0)
/* AB658 800D0258 8FA60008 */  lw         $a2, 8($sp)
/* AB65C 800D025C 0C032BE2 */  jal        func_800CAF88
/* AB660 800D0260 E7B00010 */   swc1      $f16, 0x10($sp)
/* AB664 800D0264 3C013F80 */  lui        $at, 0x3f80
/* AB668 800D0268 44817000 */  mtc1       $at, $f14
/* AB66C 800D026C 1040006B */  beqz       $v0, .L800D041C
/* AB670 800D0270 3C01BF80 */   lui       $at, 0xbf80
/* AB674 800D0274 8C590004 */  lw         $t9, 4($v0)
/* AB678 800D0278 3C098023 */  lui        $t1, %hi(D_80236980)
/* AB67C 800D027C 25296980 */  addiu      $t1, $t1, %lo(D_80236980)
/* AB680 800D0280 00194080 */  sll        $t0, $t9, 2
/* AB684 800D0284 01194021 */  addu       $t0, $t0, $t9
/* AB688 800D0288 00084080 */  sll        $t0, $t0, 2
/* AB68C 800D028C 01194023 */  subu       $t0, $t0, $t9
/* AB690 800D0290 00084100 */  sll        $t0, $t0, 4
/* AB694 800D0294 01092021 */  addu       $a0, $t0, $t1
/* AB698 800D0298 8C830010 */  lw         $v1, 0x10($a0)
/* AB69C 800D029C 24010014 */  addiu      $at, $zero, 0x14
/* AB6A0 800D02A0 8E050068 */  lw         $a1, 0x68($s0)
/* AB6A4 800D02A4 10610009 */  beq        $v1, $at, .L800D02CC
/* AB6A8 800D02A8 240A0001 */   addiu     $t2, $zero, 1
/* AB6AC 800D02AC 24010015 */  addiu      $at, $zero, 0x15
/* AB6B0 800D02B0 10610008 */  beq        $v1, $at, .L800D02D4
/* AB6B4 800D02B4 240B0002 */   addiu     $t3, $zero, 2
/* AB6B8 800D02B8 24010016 */  addiu      $at, $zero, 0x16
/* AB6BC 800D02BC 10610007 */  beq        $v1, $at, .L800D02DC
/* AB6C0 800D02C0 240C0003 */   addiu     $t4, $zero, 3
/* AB6C4 800D02C4 10000007 */  b          .L800D02E4
/* AB6C8 800D02C8 C4440098 */   lwc1      $f4, 0x98($v0)
.L800D02CC:
/* AB6CC 800D02CC 10000004 */  b          .L800D02E0
/* AB6D0 800D02D0 AE0A0068 */   sw        $t2, 0x68($s0)
.L800D02D4:
/* AB6D4 800D02D4 10000002 */  b          .L800D02E0
/* AB6D8 800D02D8 AE0B0068 */   sw        $t3, 0x68($s0)
.L800D02DC:
/* AB6DC 800D02DC AE0C0068 */  sw         $t4, 0x68($s0)
.L800D02E0:
/* AB6E0 800D02E0 C4440098 */  lwc1       $f4, 0x98($v0)
.L800D02E4:
/* AB6E4 800D02E4 C7B20070 */  lwc1       $f18, 0x70($sp)
/* AB6E8 800D02E8 C6060050 */  lwc1       $f6, 0x50($s0)
/* AB6EC 800D02EC 3C018011 */  lui        $at, 0x8011
/* AB6F0 800D02F0 46122281 */  sub.s      $f10, $f4, $f18
/* AB6F4 800D02F4 3C0F8025 */  lui        $t7, 0x8025
/* AB6F8 800D02F8 46003221 */  cvt.d.s    $f8, $f6
/* AB6FC 800D02FC E60A0020 */  swc1       $f10, 0x20($s0)
/* AB700 800D0300 8C4D0004 */  lw         $t5, 4($v0)
/* AB704 800D0304 C6040020 */  lwc1       $f4, 0x20($s0)
/* AB708 800D0308 AE0D0080 */  sw         $t5, 0x80($s0)
/* AB70C 800D030C D4300500 */  ldc1       $f16, 0x500($at)
/* AB710 800D0310 460020A1 */  cvt.d.s    $f2, $f4
/* AB714 800D0314 3C013FF0 */  lui        $at, 0x3ff0
/* AB718 800D0318 46304002 */  mul.d      $f0, $f8, $f16
/* AB71C 800D031C 4622003C */  c.lt.d     $f0, $f2
/* AB720 800D0320 00000000 */  nop
/* AB724 800D0324 45020007 */  bc1fl      .L800D0344
/* AB728 800D0328 46201403 */   div.d     $f16, $f2, $f0
/* AB72C 800D032C C4920098 */  lwc1       $f18, 0x98($a0)
/* AB730 800D0330 44816800 */  mtc1       $at, $f13
/* AB734 800D0334 44806000 */  mtc1       $zero, $f12
/* AB738 800D0338 1000000C */  b          .L800D036C
/* AB73C 800D033C E6120048 */   swc1      $f18, 0x48($s0)
/* AB740 800D0340 46201403 */  div.d      $f16, $f2, $f0
.L800D0344:
/* AB744 800D0344 C48A0098 */  lwc1       $f10, 0x98($a0)
/* AB748 800D0348 3C013FF0 */  lui        $at, 0x3ff0
/* AB74C 800D034C 44816800 */  mtc1       $at, $f13
/* AB750 800D0350 44806000 */  mtc1       $zero, $f12
/* AB754 800D0354 460051A1 */  cvt.d.s    $f6, $f10
/* AB758 800D0358 46266201 */  sub.d      $f8, $f12, $f6
/* AB75C 800D035C 46304102 */  mul.d      $f4, $f8, $f16
/* AB760 800D0360 46246481 */  sub.d      $f18, $f12, $f4
/* AB764 800D0364 462092A0 */  cvt.s.d    $f10, $f18
/* AB768 800D0368 E60A0048 */  swc1       $f10, 0x48($s0)
.L800D036C:
/* AB76C 800D036C C6060048 */  lwc1       $f6, 0x48($s0)
/* AB770 800D0370 44804800 */  mtc1       $zero, $f9
/* AB774 800D0374 44804000 */  mtc1       $zero, $f8
/* AB778 800D0378 46003021 */  cvt.d.s    $f0, $f6
/* AB77C 800D037C 4628003C */  c.lt.d     $f0, $f8
/* AB780 800D0380 00000000 */  nop
/* AB784 800D0384 45020005 */  bc1fl      .L800D039C
/* AB788 800D0388 4620603C */   c.lt.d    $f12, $f0
/* AB78C 800D038C 44808000 */  mtc1       $zero, $f16
/* AB790 800D0390 10000006 */  b          .L800D03AC
/* AB794 800D0394 E6100048 */   swc1      $f16, 0x48($s0)
/* AB798 800D0398 4620603C */  c.lt.d     $f12, $f0
.L800D039C:
/* AB79C 800D039C 00000000 */  nop
/* AB7A0 800D03A0 45000002 */  bc1f       .L800D03AC
/* AB7A4 800D03A4 00000000 */   nop
/* AB7A8 800D03A8 E60E0048 */  swc1       $f14, 0x48($s0)
.L800D03AC:
/* AB7AC 800D03AC 54A00022 */  bnel       $a1, $zero, .L800D0438
/* AB7B0 800D03B0 8FBF0024 */   lw        $ra, 0x24($sp)
/* AB7B4 800D03B4 8DEF89C0 */  lw         $t7, -0x7640($t7)
/* AB7B8 800D03B8 3C0E8011 */  lui        $t6, %hi(D_80108F84)
/* AB7BC 800D03BC 25CE8F84 */  addiu      $t6, $t6, %lo(D_80108F84)
/* AB7C0 800D03C0 51E0001D */  beql       $t7, $zero, .L800D0438
/* AB7C4 800D03C4 8FBF0024 */   lw        $ra, 0x24($sp)
/* AB7C8 800D03C8 8DC10000 */  lw         $at, ($t6)
/* AB7CC 800D03CC 27A2003C */  addiu      $v0, $sp, 0x3c
/* AB7D0 800D03D0 26050004 */  addiu      $a1, $s0, 4
/* AB7D4 800D03D4 AC410000 */  sw         $at, ($v0)
/* AB7D8 800D03D8 8DD90004 */  lw         $t9, 4($t6)
/* AB7DC 800D03DC 26060008 */  addiu      $a2, $s0, 8
/* AB7E0 800D03E0 2607000C */  addiu      $a3, $s0, 0xc
/* AB7E4 800D03E4 AC590004 */  sw         $t9, 4($v0)
/* AB7E8 800D03E8 8DC10008 */  lw         $at, 8($t6)
/* AB7EC 800D03EC AC410008 */  sw         $at, 8($v0)
/* AB7F0 800D03F0 8E080068 */  lw         $t0, 0x68($s0)
/* AB7F4 800D03F4 00084880 */  sll        $t1, $t0, 2
/* AB7F8 800D03F8 00495021 */  addu       $t2, $v0, $t1
/* AB7FC 800D03FC 8D44FFFC */  lw         $a0, -4($t2)
/* AB800 800D0400 AFA00014 */  sw         $zero, 0x14($sp)
/* AB804 800D0404 0C021FB4 */  jal        func_80087ED0
/* AB808 800D0408 AFA00010 */   sw        $zero, 0x10($sp)
/* AB80C 800D040C 0C0221A6 */  jal        func_80088698
/* AB810 800D0410 00402025 */   or        $a0, $v0, $zero
/* AB814 800D0414 10000008 */  b          .L800D0438
/* AB818 800D0418 8FBF0024 */   lw        $ra, 0x24($sp)
.L800D041C:
/* AB81C 800D041C 44812000 */  mtc1       $at, $f4
/* AB820 800D0420 240BFFFF */  addiu      $t3, $zero, -1
/* AB824 800D0424 AE000068 */  sw         $zero, 0x68($s0)
/* AB828 800D0428 AE0B0080 */  sw         $t3, 0x80($s0)
/* AB82C 800D042C E60E0048 */  swc1       $f14, 0x48($s0)
/* AB830 800D0430 E6040020 */  swc1       $f4, 0x20($s0)
/* AB834 800D0434 8FBF0024 */  lw         $ra, 0x24($sp)
.L800D0438:
/* AB838 800D0438 8FB00020 */  lw         $s0, 0x20($sp)
/* AB83C 800D043C 27BD0078 */  addiu      $sp, $sp, 0x78
/* AB840 800D0440 03E00008 */  jr         $ra
/* AB844 800D0444 00000000 */   nop

glabel func_800D0448
/* AB848 800D0448 3C058024 */  lui        $a1, %hi(D_80240180)
/* AB84C 800D044C 8CA50180 */  lw         $a1, %lo(D_80240180)($a1)
/* AB850 800D0450 3C038024 */  lui        $v1, %hi(D_80240898)
/* AB854 800D0454 27BDFFF8 */  addiu      $sp, $sp, -8
/* AB858 800D0458 00803025 */  or         $a2, $a0, $zero
/* AB85C 800D045C 24630898 */  addiu      $v1, $v1, %lo(D_80240898)
/* AB860 800D0460 18A00010 */  blez       $a1, .L800D04A4
/* AB864 800D0464 00001025 */   or        $v0, $zero, $zero
/* AB868 800D0468 24070001 */  addiu      $a3, $zero, 1
.L800D046C:
/* AB86C 800D046C 8C640000 */  lw         $a0, ($v1)
/* AB870 800D0470 24420001 */  addiu      $v0, $v0, 1
/* AB874 800D0474 0045082A */  slt        $at, $v0, $a1
/* AB878 800D0478 8C8E0124 */  lw         $t6, 0x124($a0)
/* AB87C 800D047C 14EE0006 */  bne        $a3, $t6, .L800D0498
/* AB880 800D0480 00000000 */   nop
/* AB884 800D0484 8C8F0128 */  lw         $t7, 0x128($a0)
/* AB888 800D0488 14CF0003 */  bne        $a2, $t7, .L800D0498
/* AB88C 800D048C 00000000 */   nop
/* AB890 800D0490 10000004 */  b          .L800D04A4
/* AB894 800D0494 AFA40004 */   sw        $a0, 4($sp)
.L800D0498:
/* AB898 800D0498 1420FFF4 */  bnez       $at, .L800D046C
/* AB89C 800D049C 24630004 */   addiu     $v1, $v1, 4
/* AB8A0 800D04A0 AFA40004 */  sw         $a0, 4($sp)
.L800D04A4:
/* AB8A4 800D04A4 8FA20004 */  lw         $v0, 4($sp)
/* AB8A8 800D04A8 03E00008 */  jr         $ra
/* AB8AC 800D04AC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800D04B0
/* AB8B0 800D04B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* AB8B4 800D04B4 AFB0001C */  sw         $s0, 0x1c($sp)
/* AB8B8 800D04B8 8FB00048 */  lw         $s0, 0x48($sp)
/* AB8BC 800D04BC AFBF0024 */  sw         $ra, 0x24($sp)
/* AB8C0 800D04C0 AFB10020 */  sw         $s1, 0x20($sp)
/* AB8C4 800D04C4 AFA40038 */  sw         $a0, 0x38($sp)
/* AB8C8 800D04C8 AFA5003C */  sw         $a1, 0x3c($sp)
/* AB8CC 800D04CC AFA60040 */  sw         $a2, 0x40($sp)
/* AB8D0 800D04D0 AFA70044 */  sw         $a3, 0x44($sp)
/* AB8D4 800D04D4 8E0E0010 */  lw         $t6, 0x10($s0)
/* AB8D8 800D04D8 24010021 */  addiu      $at, $zero, 0x21
/* AB8DC 800D04DC 27AF003C */  addiu      $t7, $sp, 0x3c
/* AB8E0 800D04E0 15C10042 */  bne        $t6, $at, .L800D05EC
/* AB8E4 800D04E4 02002025 */   or        $a0, $s0, $zero
/* AB8E8 800D04E8 8DE10000 */  lw         $at, ($t7)
/* AB8EC 800D04EC 27B1002C */  addiu      $s1, $sp, 0x2c
/* AB8F0 800D04F0 24080002 */  addiu      $t0, $zero, 2
/* AB8F4 800D04F4 AFA10004 */  sw         $at, 4($sp)
/* AB8F8 800D04F8 8DE60004 */  lw         $a2, 4($t7)
/* AB8FC 800D04FC 8FA50004 */  lw         $a1, 4($sp)
/* AB900 800D0500 02202025 */  or         $a0, $s1, $zero
/* AB904 800D0504 AFA60008 */  sw         $a2, 8($sp)
/* AB908 800D0508 8DE10008 */  lw         $at, 8($t7)
/* AB90C 800D050C AFA1000C */  sw         $at, 0xc($sp)
/* AB910 800D0510 C6040090 */  lwc1       $f4, 0x90($s0)
/* AB914 800D0514 3C018011 */  lui        $at, %hi(D_80110508)
/* AB918 800D0518 D4280508 */  ldc1       $f8, %lo(D_80110508)($at)
/* AB91C 800D051C 460021A1 */  cvt.d.s    $f6, $f4
/* AB920 800D0520 3C018011 */  lui        $at, %hi(D_80110510)
/* AB924 800D0524 46283282 */  mul.d      $f10, $f6, $f8
/* AB928 800D0528 D4300510 */  ldc1       $f16, %lo(D_80110510)($at)
/* AB92C 800D052C AFA80014 */  sw         $t0, 0x14($sp)
/* AB930 800D0530 8FA7000C */  lw         $a3, 0xc($sp)
/* AB934 800D0534 46305483 */  div.d      $f18, $f10, $f16
/* AB938 800D0538 46209107 */  neg.d      $f4, $f18
/* AB93C 800D053C 462021A0 */  cvt.s.d    $f6, $f4
/* AB940 800D0540 0C035FB8 */  jal        func_800D7EE0
/* AB944 800D0544 E7A60010 */   swc1      $f6, 0x10($sp)
/* AB948 800D0548 8E210000 */  lw         $at, ($s1)
/* AB94C 800D054C 240B0001 */  addiu      $t3, $zero, 1
/* AB950 800D0550 02202025 */  or         $a0, $s1, $zero
/* AB954 800D0554 AFA10004 */  sw         $at, 4($sp)
/* AB958 800D0558 8E260004 */  lw         $a2, 4($s1)
/* AB95C 800D055C 8FA50004 */  lw         $a1, 4($sp)
/* AB960 800D0560 AFA60008 */  sw         $a2, 8($sp)
/* AB964 800D0564 8E270008 */  lw         $a3, 8($s1)
/* AB968 800D0568 AFA7000C */  sw         $a3, 0xc($sp)
/* AB96C 800D056C C6080094 */  lwc1       $f8, 0x94($s0)
/* AB970 800D0570 AFAB0014 */  sw         $t3, 0x14($sp)
/* AB974 800D0574 46004287 */  neg.s      $f10, $f8
/* AB978 800D0578 0C035FB8 */  jal        func_800D7EE0
/* AB97C 800D057C E7AA0010 */   swc1      $f10, 0x10($sp)
/* AB980 800D0580 8E210000 */  lw         $at, ($s1)
/* AB984 800D0584 240E0002 */  addiu      $t6, $zero, 2
/* AB988 800D0588 02202025 */  or         $a0, $s1, $zero
/* AB98C 800D058C AFA10004 */  sw         $at, 4($sp)
/* AB990 800D0590 8E260004 */  lw         $a2, 4($s1)
/* AB994 800D0594 8FA50004 */  lw         $a1, 4($sp)
/* AB998 800D0598 AFA60008 */  sw         $a2, 8($sp)
/* AB99C 800D059C 8E210008 */  lw         $at, 8($s1)
/* AB9A0 800D05A0 AFA1000C */  sw         $at, 0xc($sp)
/* AB9A4 800D05A4 C6100090 */  lwc1       $f16, 0x90($s0)
/* AB9A8 800D05A8 3C018011 */  lui        $at, %hi(D_80110518)
/* AB9AC 800D05AC D4240518 */  ldc1       $f4, %lo(D_80110518)($at)
/* AB9B0 800D05B0 460084A1 */  cvt.d.s    $f18, $f16
/* AB9B4 800D05B4 3C018011 */  lui        $at, %hi(D_80110520)
/* AB9B8 800D05B8 46249182 */  mul.d      $f6, $f18, $f4
/* AB9BC 800D05BC D4280520 */  ldc1       $f8, %lo(D_80110520)($at)
/* AB9C0 800D05C0 C6100098 */  lwc1       $f16, 0x98($s0)
/* AB9C4 800D05C4 AFAE0014 */  sw         $t6, 0x14($sp)
/* AB9C8 800D05C8 8FA7000C */  lw         $a3, 0xc($sp)
/* AB9CC 800D05CC 460084A1 */  cvt.d.s    $f18, $f16
/* AB9D0 800D05D0 46283283 */  div.d      $f10, $f6, $f8
/* AB9D4 800D05D4 462A9100 */  add.d      $f4, $f18, $f10
/* AB9D8 800D05D8 462021A0 */  cvt.s.d    $f6, $f4
/* AB9DC 800D05DC 0C035FB8 */  jal        func_800D7EE0
/* AB9E0 800D05E0 E7A60010 */   swc1      $f6, 0x10($sp)
/* AB9E4 800D05E4 1000001F */  b          .L800D0664
/* AB9E8 800D05E8 8FAD0038 */   lw        $t5, 0x38($sp)
.L800D05EC:
/* AB9EC 800D05EC 0C02CFFF */  jal        func_800B3FFC
/* AB9F0 800D05F0 24050001 */   addiu     $a1, $zero, 1
/* AB9F4 800D05F4 24010002 */  addiu      $at, $zero, 2
/* AB9F8 800D05F8 14410012 */  bne        $v0, $at, .L800D0644
/* AB9FC 800D05FC 27A9003C */   addiu     $t1, $sp, 0x3c
/* ABA00 800D0600 27B8003C */  addiu      $t8, $sp, 0x3c
/* ABA04 800D0604 8F010000 */  lw         $at, ($t8)
/* ABA08 800D0608 27B1002C */  addiu      $s1, $sp, 0x2c
/* ABA0C 800D060C 02202025 */  or         $a0, $s1, $zero
/* ABA10 800D0610 AFA10004 */  sw         $at, 4($sp)
/* ABA14 800D0614 8F060004 */  lw         $a2, 4($t8)
/* ABA18 800D0618 8FA50004 */  lw         $a1, 4($sp)
/* ABA1C 800D061C AFA60008 */  sw         $a2, 8($sp)
/* ABA20 800D0620 8F070008 */  lw         $a3, 8($t8)
/* ABA24 800D0624 AFA7000C */  sw         $a3, 0xc($sp)
/* ABA28 800D0628 C6080064 */  lwc1       $f8, 0x64($s0)
/* ABA2C 800D062C E7A80010 */  swc1       $f8, 0x10($sp)
/* ABA30 800D0630 8E08005C */  lw         $t0, 0x5c($s0)
/* ABA34 800D0634 0C035FB8 */  jal        func_800D7EE0
/* ABA38 800D0638 AFA80014 */   sw        $t0, 0x14($sp)
/* ABA3C 800D063C 10000009 */  b          .L800D0664
/* ABA40 800D0640 8FAD0038 */   lw        $t5, 0x38($sp)
.L800D0644:
/* ABA44 800D0644 8D210000 */  lw         $at, ($t1)
/* ABA48 800D0648 27B1002C */  addiu      $s1, $sp, 0x2c
/* ABA4C 800D064C AE210000 */  sw         $at, ($s1)
/* ABA50 800D0650 8D2C0004 */  lw         $t4, 4($t1)
/* ABA54 800D0654 AE2C0004 */  sw         $t4, 4($s1)
/* ABA58 800D0658 8D210008 */  lw         $at, 8($t1)
/* ABA5C 800D065C AE210008 */  sw         $at, 8($s1)
/* ABA60 800D0660 8FAD0038 */  lw         $t5, 0x38($sp)
.L800D0664:
/* ABA64 800D0664 8E210000 */  lw         $at, ($s1)
/* ABA68 800D0668 ADA10000 */  sw         $at, ($t5)
/* ABA6C 800D066C 8E380004 */  lw         $t8, 4($s1)
/* ABA70 800D0670 ADB80004 */  sw         $t8, 4($t5)
/* ABA74 800D0674 8E210008 */  lw         $at, 8($s1)
/* ABA78 800D0678 ADA10008 */  sw         $at, 8($t5)
/* ABA7C 800D067C 8FBF0024 */  lw         $ra, 0x24($sp)
/* ABA80 800D0680 8FB10020 */  lw         $s1, 0x20($sp)
/* ABA84 800D0684 8FB0001C */  lw         $s0, 0x1c($sp)
/* ABA88 800D0688 8FA20038 */  lw         $v0, 0x38($sp)
/* ABA8C 800D068C 03E00008 */  jr         $ra
/* ABA90 800D0690 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800D0694
/* ABA94 800D0694 AFA50004 */  sw         $a1, 4($sp)
/* ABA98 800D0698 AFA60008 */  sw         $a2, 8($sp)
/* ABA9C 800D069C AFA7000C */  sw         $a3, 0xc($sp)
/* ABAA0 800D06A0 8C82007C */  lw         $v0, 0x7c($a0)
/* ABAA4 800D06A4 3C0F8023 */  lui        $t7, %hi(D_80236980)
/* ABAA8 800D06A8 25EF6980 */  addiu      $t7, $t7, %lo(D_80236980)
/* ABAAC 800D06AC 04400014 */  bltz       $v0, .L800D0700
/* ABAB0 800D06B0 00027080 */   sll       $t6, $v0, 2
/* ABAB4 800D06B4 01C27021 */  addu       $t6, $t6, $v0
/* ABAB8 800D06B8 000E7080 */  sll        $t6, $t6, 2
/* ABABC 800D06BC 01C27023 */  subu       $t6, $t6, $v0
/* ABAC0 800D06C0 000E7100 */  sll        $t6, $t6, 4
/* ABAC4 800D06C4 01CF1821 */  addu       $v1, $t6, $t7
/* ABAC8 800D06C8 8C65012C */  lw         $a1, 0x12c($v1)
/* ABACC 800D06CC 3C018011 */  lui        $at, %hi(D_80108F90)
/* ABAD0 800D06D0 C7A40004 */  lwc1       $f4, 4($sp)
/* ABAD4 800D06D4 18A0000A */  blez       $a1, .L800D0700
/* ABAD8 800D06D8 0005C080 */   sll       $t8, $a1, 2
/* ABADC 800D06DC 00380821 */  addu       $at, $at, $t8
/* ABAE0 800D06E0 C4208F90 */  lwc1       $f0, %lo(D_80108F90)($at)
/* ABAE4 800D06E4 44804000 */  mtc1       $zero, $f8
/* ABAE8 800D06E8 46002182 */  mul.s      $f6, $f4, $f0
/* ABAEC 800D06EC E48800AC */  swc1       $f8, 0xac($a0)
/* ABAF0 800D06F0 E48600A8 */  swc1       $f6, 0xa8($a0)
/* ABAF4 800D06F4 C7AA000C */  lwc1       $f10, 0xc($sp)
/* ABAF8 800D06F8 46005402 */  mul.s      $f16, $f10, $f0
/* ABAFC 800D06FC E49000B0 */  swc1       $f16, 0xb0($a0)
.L800D0700:
/* ABB00 800D0700 03E00008 */  jr         $ra
/* ABB04 800D0704 00000000 */   nop

glabel func_800D0708
/* ABB08 800D0708 27BDFD90 */  addiu      $sp, $sp, -0x270
/* ABB0C 800D070C 3C0E8017 */  lui        $t6, %hi(D_80174874)
/* ABB10 800D0710 8DCE4874 */  lw         $t6, %lo(D_80174874)($t6)
/* ABB14 800D0714 AFB10038 */  sw         $s1, 0x38($sp)
/* ABB18 800D0718 24010007 */  addiu      $at, $zero, 7
/* ABB1C 800D071C 00808825 */  or         $s1, $a0, $zero
/* ABB20 800D0720 AFBF003C */  sw         $ra, 0x3c($sp)
/* ABB24 800D0724 AFB00034 */  sw         $s0, 0x34($sp)
/* ABB28 800D0728 F7B40028 */  sdc1       $f20, 0x28($sp)
/* ABB2C 800D072C 15C10008 */  bne        $t6, $at, .L800D0750
/* ABB30 800D0730 AFA50274 */   sw        $a1, 0x274($sp)
/* ABB34 800D0734 3C0D8020 */  lui        $t5, %hi(D_8020251C)
/* ABB38 800D0738 8DAD251C */  lw         $t5, %lo(D_8020251C)($t5)
/* ABB3C 800D073C 24190001 */  addiu      $t9, $zero, 1
/* ABB40 800D0740 51A00004 */  beql       $t5, $zero, .L800D0754
/* ABB44 800D0744 AFA00188 */   sw        $zero, 0x188($sp)
/* ABB48 800D0748 10000002 */  b          .L800D0754
/* ABB4C 800D074C AFB90188 */   sw        $t9, 0x188($sp)
.L800D0750:
/* ABB50 800D0750 AFA00188 */  sw         $zero, 0x188($sp)
.L800D0754:
/* ABB54 800D0754 8FB80274 */  lw         $t8, 0x274($sp)
/* ABB58 800D0758 24010001 */  addiu      $at, $zero, 1
/* ABB5C 800D075C 27B00248 */  addiu      $s0, $sp, 0x248
/* ABB60 800D0760 8F020004 */  lw         $v0, 4($t8)
/* ABB64 800D0764 02003025 */  or         $a2, $s0, $zero
/* ABB68 800D0768 02202025 */  or         $a0, $s1, $zero
/* ABB6C 800D076C 1041000C */  beq        $v0, $at, .L800D07A0
/* ABB70 800D0770 8FA50274 */   lw        $a1, 0x274($sp)
/* ABB74 800D0774 24010004 */  addiu      $at, $zero, 4
/* ABB78 800D0778 10410009 */  beq        $v0, $at, .L800D07A0
/* ABB7C 800D077C 24010005 */   addiu     $at, $zero, 5
/* ABB80 800D0780 10410007 */  beq        $v0, $at, .L800D07A0
/* ABB84 800D0784 24010008 */   addiu     $at, $zero, 8
/* ABB88 800D0788 10410005 */  beq        $v0, $at, .L800D07A0
/* ABB8C 800D078C 24010009 */   addiu     $at, $zero, 9
/* ABB90 800D0790 10410003 */  beq        $v0, $at, .L800D07A0
/* ABB94 800D0794 2401000B */   addiu     $at, $zero, 0xb
/* ABB98 800D0798 54410010 */  bnel       $v0, $at, .L800D07DC
/* ABB9C 800D079C 27B00248 */   addiu     $s0, $sp, 0x248
.L800D07A0:
/* ABBA0 800D07A0 0C033CEC */  jal        func_800CF3B0
/* ABBA4 800D07A4 00003825 */   or        $a3, $zero, $zero
/* ABBA8 800D07A8 02002025 */  or         $a0, $s0, $zero
/* ABBAC 800D07AC 24050077 */  addiu      $a1, $zero, 0x77
/* ABBB0 800D07B0 0C03264A */  jal        func_800C9928
/* ABBB4 800D07B4 24060002 */   addiu     $a2, $zero, 2
/* ABBB8 800D07B8 02202025 */  or         $a0, $s1, $zero
/* ABBBC 800D07BC 0C033E02 */  jal        func_800CF808
/* ABBC0 800D07C0 8FA50274 */   lw        $a1, 0x274($sp)
/* ABBC4 800D07C4 10400004 */  beqz       $v0, .L800D07D8
/* ABBC8 800D07C8 02202025 */   or        $a0, $s1, $zero
/* ABBCC 800D07CC 8FA50274 */  lw         $a1, 0x274($sp)
/* ABBD0 800D07D0 0C00C76C */  jal        func_80031DB0
/* ABBD4 800D07D4 24060001 */   addiu     $a2, $zero, 1
.L800D07D8:
/* ABBD8 800D07D8 27B00248 */  addiu      $s0, $sp, 0x248
.L800D07DC:
/* ABBDC 800D07DC 02003025 */  or         $a2, $s0, $zero
/* ABBE0 800D07E0 02202025 */  or         $a0, $s1, $zero
/* ABBE4 800D07E4 0C033D95 */  jal        func_800CF654
/* ABBE8 800D07E8 8FA50274 */   lw        $a1, 0x274($sp)
/* ABBEC 800D07EC 02002025 */  or         $a0, $s0, $zero
/* ABBF0 800D07F0 0C03260B */  jal        func_800C982C
/* ABBF4 800D07F4 02202825 */   or        $a1, $s1, $zero
/* ABBF8 800D07F8 8E23007C */  lw         $v1, 0x7c($s1)
/* ABBFC 800D07FC 3C0B8023 */  lui        $t3, 0x8023
/* ABC00 800D0800 0460000D */  bltz       $v1, .L800D0838
/* ABC04 800D0804 00034880 */   sll       $t1, $v1, 2
/* ABC08 800D0808 01234821 */  addu       $t1, $t1, $v1
/* ABC0C 800D080C 00094880 */  sll        $t1, $t1, 2
/* ABC10 800D0810 01234823 */  subu       $t1, $t1, $v1
/* ABC14 800D0814 00094900 */  sll        $t1, $t1, 4
/* ABC18 800D0818 01695821 */  addu       $t3, $t3, $t1
/* ABC1C 800D081C 8D6B6A64 */  lw         $t3, 0x6a64($t3)
/* ABC20 800D0820 55600006 */  bnel       $t3, $zero, .L800D083C
/* ABC24 800D0824 8E220054 */   lw        $v0, 0x54($s1)
/* ABC28 800D0828 0C033F6E */  jal        func_800CFDB8
/* ABC2C 800D082C 02202025 */   or        $a0, $s1, $zero
/* ABC30 800D0830 240A0001 */  addiu      $t2, $zero, 1
/* ABC34 800D0834 AE2A0054 */  sw         $t2, 0x54($s1)
.L800D0838:
/* ABC38 800D0838 8E220054 */  lw         $v0, 0x54($s1)
.L800D083C:
/* ABC3C 800D083C 3C018025 */  lui        $at, %hi(D_802489C0)
/* ABC40 800D0840 27A5023C */  addiu      $a1, $sp, 0x23c
/* ABC44 800D0844 AFA201C0 */  sw         $v0, 0x1c0($sp)
/* ABC48 800D0848 AC2289C0 */  sw         $v0, %lo(D_802489C0)($at)
/* ABC4C 800D084C C62A0004 */  lwc1       $f10, 4($s1)
/* ABC50 800D0850 27A30230 */  addiu      $v1, $sp, 0x230
/* ABC54 800D0854 27AE0224 */  addiu      $t6, $sp, 0x224
/* ABC58 800D0858 E7AA023C */  swc1       $f10, 0x23c($sp)
/* ABC5C 800D085C C6280008 */  lwc1       $f8, 8($s1)
/* ABC60 800D0860 27A90218 */  addiu      $t1, $sp, 0x218
/* ABC64 800D0864 27A401C8 */  addiu      $a0, $sp, 0x1c8
/* ABC68 800D0868 E7A80240 */  swc1       $f8, 0x240($sp)
/* ABC6C 800D086C C624000C */  lwc1       $f4, 0xc($s1)
/* ABC70 800D0870 E7A40244 */  swc1       $f4, 0x244($sp)
/* ABC74 800D0874 8CA10000 */  lw         $at, ($a1)
/* ABC78 800D0878 8CA80004 */  lw         $t0, 4($a1)
/* ABC7C 800D087C AC610000 */  sw         $at, ($v1)
/* ABC80 800D0880 8CA10008 */  lw         $at, 8($a1)
/* ABC84 800D0884 AC680004 */  sw         $t0, 4($v1)
/* ABC88 800D0888 AC610008 */  sw         $at, 8($v1)
/* ABC8C 800D088C C7A60234 */  lwc1       $f6, 0x234($sp)
/* ABC90 800D0890 C62A0050 */  lwc1       $f10, 0x50($s1)
/* ABC94 800D0894 460A3200 */  add.s      $f8, $f6, $f10
/* ABC98 800D0898 E7A80234 */  swc1       $f8, 0x234($sp)
/* ABC9C 800D089C 8CA10000 */  lw         $at, ($a1)
/* ABCA0 800D08A0 ADC10000 */  sw         $at, ($t6)
/* ABCA4 800D08A4 8CB80004 */  lw         $t8, 4($a1)
/* ABCA8 800D08A8 ADD80004 */  sw         $t8, 4($t6)
/* ABCAC 800D08AC 8CA10008 */  lw         $at, 8($a1)
/* ABCB0 800D08B0 ADC10008 */  sw         $at, 8($t6)
/* ABCB4 800D08B4 C626004C */  lwc1       $f6, 0x4c($s1)
/* ABCB8 800D08B8 C7A40228 */  lwc1       $f4, 0x228($sp)
/* ABCBC 800D08BC 46062280 */  add.s      $f10, $f4, $f6
/* ABCC0 800D08C0 E7AA0228 */  swc1       $f10, 0x228($sp)
/* ABCC4 800D08C4 8C610000 */  lw         $at, ($v1)
/* ABCC8 800D08C8 AD210000 */  sw         $at, ($t1)
/* ABCCC 800D08CC 8C6C0004 */  lw         $t4, 4($v1)
/* ABCD0 800D08D0 AD2C0004 */  sw         $t4, 4($t1)
/* ABCD4 800D08D4 8C610008 */  lw         $at, 8($v1)
/* ABCD8 800D08D8 AD210008 */  sw         $at, 8($t1)
/* ABCDC 800D08DC C7A8021C */  lwc1       $f8, 0x21c($sp)
/* ABCE0 800D08E0 C624004C */  lwc1       $f4, 0x4c($s1)
/* ABCE4 800D08E4 46044181 */  sub.s      $f6, $f8, $f4
/* ABCE8 800D08E8 E7A6021C */  swc1       $f6, 0x21c($sp)
/* ABCEC 800D08EC C62A0024 */  lwc1       $f10, 0x24($s1)
/* ABCF0 800D08F0 E7AA01F0 */  swc1       $f10, 0x1f0($sp)
/* ABCF4 800D08F4 C6280028 */  lwc1       $f8, 0x28($s1)
/* ABCF8 800D08F8 E7A801F4 */  swc1       $f8, 0x1f4($sp)
/* ABCFC 800D08FC C624002C */  lwc1       $f4, 0x2c($s1)
/* ABD00 800D0900 0C036066 */  jal        func_800D8198
/* ABD04 800D0904 E7A401F8 */   swc1      $f4, 0x1f8($sp)
/* ABD08 800D0908 8E2F007C */  lw         $t7, 0x7c($s1)
/* ABD0C 800D090C 05E3002C */  bgezl      $t7, .L800D09C0
/* ABD10 800D0910 8FB00274 */   lw        $s0, 0x274($sp)
/* ABD14 800D0914 8E28008C */  lw         $t0, 0x8c($s1)
/* ABD18 800D0918 8FB901C0 */  lw         $t9, 0x1c0($sp)
/* ABD1C 800D091C 55000028 */  bnel       $t0, $zero, .L800D09C0
/* ABD20 800D0920 8FB00274 */   lw        $s0, 0x274($sp)
/* ABD24 800D0924 17200025 */  bnez       $t9, .L800D09BC
/* ABD28 800D0928 27AD023C */   addiu     $t5, $sp, 0x23c
/* ABD2C 800D092C 8DA10000 */  lw         $at, ($t5)
/* ABD30 800D0930 44805000 */  mtc1       $zero, $f10
/* ABD34 800D0934 AFA10000 */  sw         $at, ($sp)
/* ABD38 800D0938 8DA50004 */  lw         $a1, 4($t5)
/* ABD3C 800D093C 8FA40000 */  lw         $a0, ($sp)
/* ABD40 800D0940 AFA50004 */  sw         $a1, 4($sp)
/* ABD44 800D0944 8DA10008 */  lw         $at, 8($t5)
/* ABD48 800D0948 AFA10008 */  sw         $at, 8($sp)
/* ABD4C 800D094C C626004C */  lwc1       $f6, 0x4c($s1)
/* ABD50 800D0950 3C014008 */  lui        $at, 0x4008
/* ABD54 800D0954 44815800 */  mtc1       $at, $f11
/* ABD58 800D0958 46003021 */  cvt.d.s    $f0, $f6
/* ABD5C 800D095C 3C01C000 */  lui        $at, 0xc000
/* ABD60 800D0960 462A0202 */  mul.d      $f8, $f0, $f10
/* ABD64 800D0964 44813800 */  mtc1       $at, $f7
/* ABD68 800D0968 44803000 */  mtc1       $zero, $f6
/* ABD6C 800D096C 8FA60008 */  lw         $a2, 8($sp)
/* ABD70 800D0970 46260282 */  mul.d      $f10, $f0, $f6
/* ABD74 800D0974 46204120 */  cvt.s.d    $f4, $f8
/* ABD78 800D0978 46205220 */  cvt.s.d    $f8, $f10
/* ABD7C 800D097C 44072000 */  mfc1       $a3, $f4
/* ABD80 800D0980 0C032BE2 */  jal        func_800CAF88
/* ABD84 800D0984 E7A80010 */   swc1      $f8, 0x10($sp)
/* ABD88 800D0988 14400007 */  bnez       $v0, .L800D09A8
/* ABD8C 800D098C 00408025 */   or        $s0, $v0, $zero
/* ABD90 800D0990 240A0001 */  addiu      $t2, $zero, 1
/* ABD94 800D0994 AFAA01C0 */  sw         $t2, 0x1c0($sp)
/* ABD98 800D0998 0C033F6E */  jal        func_800CFDB8
/* ABD9C 800D099C 02202025 */   or        $a0, $s1, $zero
/* ABDA0 800D09A0 10000007 */  b          .L800D09C0
/* ABDA4 800D09A4 8FB00274 */   lw        $s0, 0x274($sp)
.L800D09A8:
/* ABDA8 800D09A8 AFA001C0 */  sw         $zero, 0x1c0($sp)
/* ABDAC 800D09AC 02202025 */  or         $a0, $s1, $zero
/* ABDB0 800D09B0 02002825 */  or         $a1, $s0, $zero
/* ABDB4 800D09B4 0C033EDB */  jal        func_800CFB6C
/* ABDB8 800D09B8 00003025 */   or        $a2, $zero, $zero
.L800D09BC:
/* ABDBC 800D09BC 8FB00274 */  lw         $s0, 0x274($sp)
.L800D09C0:
/* ABDC0 800D09C0 2401000A */  addiu      $at, $zero, 0xa
/* ABDC4 800D09C4 8E0B0004 */  lw         $t3, 4($s0)
/* ABDC8 800D09C8 5561000A */  bnel       $t3, $at, .L800D09F4
/* ABDCC 800D09CC 8E2F007C */   lw        $t7, 0x7c($s1)
/* ABDD0 800D09D0 8E29008C */  lw         $t1, 0x8c($s1)
/* ABDD4 800D09D4 24010001 */  addiu      $at, $zero, 1
/* ABDD8 800D09D8 240C0001 */  addiu      $t4, $zero, 1
/* ABDDC 800D09DC 15210004 */  bne        $t1, $at, .L800D09F0
/* ABDE0 800D09E0 02202025 */   or        $a0, $s1, $zero
/* ABDE4 800D09E4 0C033F6E */  jal        func_800CFDB8
/* ABDE8 800D09E8 AFAC01C0 */   sw        $t4, 0x1c0($sp)
/* ABDEC 800D09EC 8FB00274 */  lw         $s0, 0x274($sp)
.L800D09F0:
/* ABDF0 800D09F0 8E2F007C */  lw         $t7, 0x7c($s1)
.L800D09F4:
/* ABDF4 800D09F4 05E200A8 */  bltzl      $t7, .L800D0C98
/* ABDF8 800D09F8 8E020004 */   lw        $v0, 4($s0)
/* ABDFC 800D09FC 8E28008C */  lw         $t0, 0x8c($s1)
/* ABE00 800D0A00 27B9023C */  addiu      $t9, $sp, 0x23c
/* ABE04 800D0A04 55000030 */  bnel       $t0, $zero, .L800D0AC8
/* ABE08 800D0A08 8E28007C */   lw        $t0, 0x7c($s1)
/* ABE0C 800D0A0C 8F210000 */  lw         $at, ($t9)
/* ABE10 800D0A10 44803000 */  mtc1       $zero, $f6
/* ABE14 800D0A14 AFA10000 */  sw         $at, ($sp)
/* ABE18 800D0A18 8F250004 */  lw         $a1, 4($t9)
/* ABE1C 800D0A1C 8FA40000 */  lw         $a0, ($sp)
/* ABE20 800D0A20 AFA50004 */  sw         $a1, 4($sp)
/* ABE24 800D0A24 8F210008 */  lw         $at, 8($t9)
/* ABE28 800D0A28 AFA10008 */  sw         $at, 8($sp)
/* ABE2C 800D0A2C C624004C */  lwc1       $f4, 0x4c($s1)
/* ABE30 800D0A30 3C014008 */  lui        $at, 0x4008
/* ABE34 800D0A34 44813800 */  mtc1       $at, $f7
/* ABE38 800D0A38 46002021 */  cvt.d.s    $f0, $f4
/* ABE3C 800D0A3C 3C01C000 */  lui        $at, 0xc000
/* ABE40 800D0A40 46260282 */  mul.d      $f10, $f0, $f6
/* ABE44 800D0A44 44812800 */  mtc1       $at, $f5
/* ABE48 800D0A48 44802000 */  mtc1       $zero, $f4
/* ABE4C 800D0A4C 8FA60008 */  lw         $a2, 8($sp)
/* ABE50 800D0A50 46240182 */  mul.d      $f6, $f0, $f4
/* ABE54 800D0A54 46205220 */  cvt.s.d    $f8, $f10
/* ABE58 800D0A58 462032A0 */  cvt.s.d    $f10, $f6
/* ABE5C 800D0A5C 44074000 */  mfc1       $a3, $f8
/* ABE60 800D0A60 0C032BE2 */  jal        func_800CAF88
/* ABE64 800D0A64 E7AA0010 */   swc1      $f10, 0x10($sp)
/* ABE68 800D0A68 10400016 */  beqz       $v0, .L800D0AC4
/* ABE6C 800D0A6C 00408025 */   or        $s0, $v0, $zero
/* ABE70 800D0A70 8C430004 */  lw         $v1, 4($v0)
/* ABE74 800D0A74 8E38007C */  lw         $t8, 0x7c($s1)
/* ABE78 800D0A78 3C098023 */  lui        $t1, 0x8023
/* ABE7C 800D0A7C 00035880 */  sll        $t3, $v1, 2
/* ABE80 800D0A80 1478000C */  bne        $v1, $t8, .L800D0AB4
/* ABE84 800D0A84 01635821 */   addu      $t3, $t3, $v1
/* ABE88 800D0A88 000B5880 */  sll        $t3, $t3, 2
/* ABE8C 800D0A8C 01635823 */  subu       $t3, $t3, $v1
/* ABE90 800D0A90 000B5900 */  sll        $t3, $t3, 4
/* ABE94 800D0A94 012B4821 */  addu       $t1, $t1, $t3
/* ABE98 800D0A98 8D296A64 */  lw         $t1, 0x6a64($t1)
/* ABE9C 800D0A9C 240100A0 */  addiu      $at, $zero, 0xa0
/* ABEA0 800D0AA0 8E2A0088 */  lw         $t2, 0x88($s1)
/* ABEA4 800D0AA4 00496023 */  subu       $t4, $v0, $t1
/* ABEA8 800D0AA8 0181001A */  div        $zero, $t4, $at
/* ABEAC 800D0AAC 00007812 */  mflo       $t7
/* ABEB0 800D0AB0 114F0004 */  beq        $t2, $t7, .L800D0AC4
.L800D0AB4:
/* ABEB4 800D0AB4 02202025 */   or        $a0, $s1, $zero
/* ABEB8 800D0AB8 02002825 */  or         $a1, $s0, $zero
/* ABEBC 800D0ABC 0C033EDB */  jal        func_800CFB6C
/* ABEC0 800D0AC0 00003025 */   or        $a2, $zero, $zero
.L800D0AC4:
/* ABEC4 800D0AC4 8E28007C */  lw         $t0, 0x7c($s1)
.L800D0AC8:
/* ABEC8 800D0AC8 3C198023 */  lui        $t9, %hi(D_80236980)
/* ABECC 800D0ACC 27396980 */  addiu      $t9, $t9, %lo(D_80236980)
/* ABED0 800D0AD0 00087080 */  sll        $t6, $t0, 2
/* ABED4 800D0AD4 01C87021 */  addu       $t6, $t6, $t0
/* ABED8 800D0AD8 000E7080 */  sll        $t6, $t6, 2
/* ABEDC 800D0ADC 01C87023 */  subu       $t6, $t6, $t0
/* ABEE0 800D0AE0 000E7100 */  sll        $t6, $t6, 4
/* ABEE4 800D0AE4 01D92021 */  addu       $a0, $t6, $t9
/* ABEE8 800D0AE8 0C02CFFF */  jal        func_800B3FFC
/* ABEEC 800D0AEC 24050001 */   addiu     $a1, $zero, 1
/* ABEF0 800D0AF0 24010002 */  addiu      $at, $zero, 2
/* ABEF4 800D0AF4 54410048 */  bnel       $v0, $at, .L800D0C18
/* ABEF8 800D0AF8 C62A0090 */   lwc1      $f10, 0x90($s1)
/* ABEFC 800D0AFC C6280090 */  lwc1       $f8, 0x90($s1)
/* ABF00 800D0B00 8E2D007C */  lw         $t5, 0x7c($s1)
/* ABF04 800D0B04 27A901D4 */  addiu      $t1, $sp, 0x1d4
/* ABF08 800D0B08 E7A801D4 */  swc1       $f8, 0x1d4($sp)
/* ABF0C 800D0B0C C6240094 */  lwc1       $f4, 0x94($s1)
/* ABF10 800D0B10 000DC080 */  sll        $t8, $t5, 2
/* ABF14 800D0B14 030DC021 */  addu       $t8, $t8, $t5
/* ABF18 800D0B18 E7A401D8 */  swc1       $f4, 0x1d8($sp)
/* ABF1C 800D0B1C C6260098 */  lwc1       $f6, 0x98($s1)
/* ABF20 800D0B20 0018C080 */  sll        $t8, $t8, 2
/* ABF24 800D0B24 3C0B8023 */  lui        $t3, 0x8023
/* ABF28 800D0B28 E7A601DC */  swc1       $f6, 0x1dc($sp)
/* ABF2C 800D0B2C 8D210000 */  lw         $at, ($t1)
/* ABF30 800D0B30 030DC023 */  subu       $t8, $t8, $t5
/* ABF34 800D0B34 0018C100 */  sll        $t8, $t8, 4
/* ABF38 800D0B38 AFA10004 */  sw         $at, 4($sp)
/* ABF3C 800D0B3C 8D260004 */  lw         $a2, 4($t1)
/* ABF40 800D0B40 256B6980 */  addiu      $t3, $t3, 0x6980
/* ABF44 800D0B44 030B1021 */  addu       $v0, $t8, $t3
/* ABF48 800D0B48 AFA60008 */  sw         $a2, 8($sp)
/* ABF4C 800D0B4C 8D270008 */  lw         $a3, 8($t1)
/* ABF50 800D0B50 8FA50004 */  lw         $a1, 4($sp)
/* ABF54 800D0B54 27A40178 */  addiu      $a0, $sp, 0x178
/* ABF58 800D0B58 AFA7000C */  sw         $a3, 0xc($sp)
/* ABF5C 800D0B5C C44A0060 */  lwc1       $f10, 0x60($v0)
/* ABF60 800D0B60 E7AA0010 */  swc1       $f10, 0x10($sp)
/* ABF64 800D0B64 8C4F005C */  lw         $t7, 0x5c($v0)
/* ABF68 800D0B68 AFA201FC */  sw         $v0, 0x1fc($sp)
/* ABF6C 800D0B6C 0C035FB8 */  jal        func_800D7EE0
/* ABF70 800D0B70 AFAF0014 */   sw        $t7, 0x14($sp)
/* ABF74 800D0B74 27A801D4 */  addiu      $t0, $sp, 0x1d4
/* ABF78 800D0B78 8D010000 */  lw         $at, ($t0)
/* ABF7C 800D0B7C 8FA301FC */  lw         $v1, 0x1fc($sp)
/* ABF80 800D0B80 27A4016C */  addiu      $a0, $sp, 0x16c
/* ABF84 800D0B84 AFA10004 */  sw         $at, 4($sp)
/* ABF88 800D0B88 8D060004 */  lw         $a2, 4($t0)
/* ABF8C 800D0B8C 8FA50004 */  lw         $a1, 4($sp)
/* ABF90 800D0B90 AFA60008 */  sw         $a2, 8($sp)
/* ABF94 800D0B94 8D070008 */  lw         $a3, 8($t0)
/* ABF98 800D0B98 AFA7000C */  sw         $a3, 0xc($sp)
/* ABF9C 800D0B9C C4640060 */  lwc1       $f4, 0x60($v1)
/* ABFA0 800D0BA0 C4680064 */  lwc1       $f8, 0x64($v1)
/* ABFA4 800D0BA4 46044180 */  add.s      $f6, $f8, $f4
/* ABFA8 800D0BA8 E7A60010 */  swc1       $f6, 0x10($sp)
/* ABFAC 800D0BAC 8C6D005C */  lw         $t5, 0x5c($v1)
/* ABFB0 800D0BB0 0C035FB8 */  jal        func_800D7EE0
/* ABFB4 800D0BB4 AFAD0014 */   sw        $t5, 0x14($sp)
/* ABFB8 800D0BB8 C7AA016C */  lwc1       $f10, 0x16c($sp)
/* ABFBC 800D0BBC C7A80178 */  lwc1       $f8, 0x178($sp)
/* ABFC0 800D0BC0 C7A60170 */  lwc1       $f6, 0x170($sp)
/* ABFC4 800D0BC4 8FA301FC */  lw         $v1, 0x1fc($sp)
/* ABFC8 800D0BC8 46085101 */  sub.s      $f4, $f10, $f8
/* ABFCC 800D0BCC C7AA017C */  lwc1       $f10, 0x17c($sp)
/* ABFD0 800D0BD0 460A3201 */  sub.s      $f8, $f6, $f10
/* ABFD4 800D0BD4 C7AA0180 */  lwc1       $f10, 0x180($sp)
/* ABFD8 800D0BD8 C7A60174 */  lwc1       $f6, 0x174($sp)
/* ABFDC 800D0BDC E7A401D4 */  swc1       $f4, 0x1d4($sp)
/* ABFE0 800D0BE0 E7A801D8 */  swc1       $f8, 0x1d8($sp)
/* ABFE4 800D0BE4 460A3181 */  sub.s      $f6, $f6, $f10
/* ABFE8 800D0BE8 E7A601DC */  swc1       $f6, 0x1dc($sp)
/* ABFEC 800D0BEC C46A0024 */  lwc1       $f10, 0x24($v1)
/* ABFF0 800D0BF0 46045280 */  add.s      $f10, $f10, $f4
/* ABFF4 800D0BF4 E7AA01D4 */  swc1       $f10, 0x1d4($sp)
/* ABFF8 800D0BF8 C4640028 */  lwc1       $f4, 0x28($v1)
/* ABFFC 800D0BFC 46082280 */  add.s      $f10, $f4, $f8
/* AC000 800D0C00 E7AA01D8 */  swc1       $f10, 0x1d8($sp)
/* AC004 800D0C04 C464002C */  lwc1       $f4, 0x2c($v1)
/* AC008 800D0C08 46062200 */  add.s      $f8, $f4, $f6
/* AC00C 800D0C0C 1000001A */  b          .L800D0C78
/* AC010 800D0C10 E7A801DC */   swc1      $f8, 0x1dc($sp)
/* AC014 800D0C14 C62A0090 */  lwc1       $f10, 0x90($s1)
.L800D0C18:
/* AC018 800D0C18 27A401D4 */  addiu      $a0, $sp, 0x1d4
/* AC01C 800D0C1C 3C0F8023 */  lui        $t7, %hi(D_80236980)
/* AC020 800D0C20 E7AA01D4 */  swc1       $f10, 0x1d4($sp)
/* AC024 800D0C24 C6240094 */  lwc1       $f4, 0x94($s1)
/* AC028 800D0C28 25EF6980 */  addiu      $t7, $t7, %lo(D_80236980)
/* AC02C 800D0C2C E7A401D8 */  swc1       $f4, 0x1d8($sp)
/* AC030 800D0C30 C6260098 */  lwc1       $f6, 0x98($s1)
/* AC034 800D0C34 E7A601DC */  swc1       $f6, 0x1dc($sp)
/* AC038 800D0C38 8C810000 */  lw         $at, ($a0)
/* AC03C 800D0C3C AFA10004 */  sw         $at, 4($sp)
/* AC040 800D0C40 8C860004 */  lw         $a2, 4($a0)
/* AC044 800D0C44 8FA50004 */  lw         $a1, 4($sp)
/* AC048 800D0C48 AFA60008 */  sw         $a2, 8($sp)
/* AC04C 800D0C4C 8C870008 */  lw         $a3, 8($a0)
/* AC050 800D0C50 AFA7000C */  sw         $a3, 0xc($sp)
/* AC054 800D0C54 8E29007C */  lw         $t1, 0x7c($s1)
/* AC058 800D0C58 00095080 */  sll        $t2, $t1, 2
/* AC05C 800D0C5C 01495021 */  addu       $t2, $t2, $t1
/* AC060 800D0C60 000A5080 */  sll        $t2, $t2, 2
/* AC064 800D0C64 01495023 */  subu       $t2, $t2, $t1
/* AC068 800D0C68 000A5100 */  sll        $t2, $t2, 4
/* AC06C 800D0C6C 014F7021 */  addu       $t6, $t2, $t7
/* AC070 800D0C70 0C02C957 */  jal        func_800B255C
/* AC074 800D0C74 AFAE0010 */   sw        $t6, 0x10($sp)
.L800D0C78:
/* AC078 800D0C78 C7A801D4 */  lwc1       $f8, 0x1d4($sp)
/* AC07C 800D0C7C E628009C */  swc1       $f8, 0x9c($s1)
/* AC080 800D0C80 C7AA01D8 */  lwc1       $f10, 0x1d8($sp)
/* AC084 800D0C84 E62A00A0 */  swc1       $f10, 0xa0($s1)
/* AC088 800D0C88 C7A401DC */  lwc1       $f4, 0x1dc($sp)
/* AC08C 800D0C8C E62400A4 */  swc1       $f4, 0xa4($s1)
/* AC090 800D0C90 8FB00274 */  lw         $s0, 0x274($sp)
/* AC094 800D0C94 8E020004 */  lw         $v0, 4($s0)
.L800D0C98:
/* AC098 800D0C98 24010004 */  addiu      $at, $zero, 4
/* AC09C 800D0C9C 10410003 */  beq        $v0, $at, .L800D0CAC
/* AC0A0 800D0CA0 24010005 */   addiu     $at, $zero, 5
/* AC0A4 800D0CA4 54410037 */  bnel       $v0, $at, .L800D0D84
/* AC0A8 800D0CA8 2401000B */   addiu     $at, $zero, 0xb
.L800D0CAC:
/* AC0AC 800D0CAC 44803000 */  mtc1       $zero, $f6
/* AC0B0 800D0CB0 00000000 */  nop
/* AC0B4 800D0CB4 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AC0B8 800D0CB8 0C034112 */  jal        func_800D0448
/* AC0BC 800D0CBC 8E040600 */   lw        $a0, 0x600($s0)
/* AC0C0 800D0CC0 C4480024 */  lwc1       $f8, 0x24($v0)
/* AC0C4 800D0CC4 C7AA01F0 */  lwc1       $f10, 0x1f0($sp)
/* AC0C8 800D0CC8 02202025 */  or         $a0, $s1, $zero
/* AC0CC 800D0CCC 460A4100 */  add.s      $f4, $f8, $f10
/* AC0D0 800D0CD0 C7A801F4 */  lwc1       $f8, 0x1f4($sp)
/* AC0D4 800D0CD4 E7A401F0 */  swc1       $f4, 0x1f0($sp)
/* AC0D8 800D0CD8 C4460028 */  lwc1       $f6, 0x28($v0)
/* AC0DC 800D0CDC 46083280 */  add.s      $f10, $f6, $f8
/* AC0E0 800D0CE0 C7A601F8 */  lwc1       $f6, 0x1f8($sp)
/* AC0E4 800D0CE4 E7AA01F4 */  swc1       $f10, 0x1f4($sp)
/* AC0E8 800D0CE8 C444002C */  lwc1       $f4, 0x2c($v0)
/* AC0EC 800D0CEC C7AA023C */  lwc1       $f10, 0x23c($sp)
/* AC0F0 800D0CF0 46062200 */  add.s      $f8, $f4, $f6
/* AC0F4 800D0CF4 C7A401F0 */  lwc1       $f4, 0x1f0($sp)
/* AC0F8 800D0CF8 46045180 */  add.s      $f6, $f10, $f4
/* AC0FC 800D0CFC E7A801F8 */  swc1       $f8, 0x1f8($sp)
/* AC100 800D0D00 C7A80240 */  lwc1       $f8, 0x240($sp)
/* AC104 800D0D04 C7AA01F4 */  lwc1       $f10, 0x1f4($sp)
/* AC108 800D0D08 E7A6020C */  swc1       $f6, 0x20c($sp)
/* AC10C 800D0D0C C7A60244 */  lwc1       $f6, 0x244($sp)
/* AC110 800D0D10 460A4100 */  add.s      $f4, $f8, $f10
/* AC114 800D0D14 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AC118 800D0D18 46083280 */  add.s      $f10, $f6, $f8
/* AC11C 800D0D1C E7A40210 */  swc1       $f4, 0x210($sp)
/* AC120 800D0D20 0C033F6E */  jal        func_800CFDB8
/* AC124 800D0D24 E7AA0214 */   swc1      $f10, 0x214($sp)
/* AC128 800D0D28 02202025 */  or         $a0, $s1, $zero
/* AC12C 800D0D2C 8FA50274 */  lw         $a1, 0x274($sp)
/* AC130 800D0D30 0C033F85 */  jal        func_800CFE14
/* AC134 800D0D34 24060001 */   addiu     $a2, $zero, 1
/* AC138 800D0D38 0C033FD9 */  jal        func_800CFF64
/* AC13C 800D0D3C 02202025 */   or        $a0, $s1, $zero
/* AC140 800D0D40 0C033FDF */  jal        func_800CFF7C
/* AC144 800D0D44 27A4020C */   addiu     $a0, $sp, 0x20c
/* AC148 800D0D48 C7A4020C */  lwc1       $f4, 0x20c($sp)
/* AC14C 800D0D4C 44800000 */  mtc1       $zero, $f0
/* AC150 800D0D50 02202025 */  or         $a0, $s1, $zero
/* AC154 800D0D54 E6240004 */  swc1       $f4, 4($s1)
/* AC158 800D0D58 C7A60210 */  lwc1       $f6, 0x210($sp)
/* AC15C 800D0D5C E6260008 */  swc1       $f6, 8($s1)
/* AC160 800D0D60 C7A80214 */  lwc1       $f8, 0x214($sp)
/* AC164 800D0D64 E6200024 */  swc1       $f0, 0x24($s1)
/* AC168 800D0D68 E6200028 */  swc1       $f0, 0x28($s1)
/* AC16C 800D0D6C E620002C */  swc1       $f0, 0x2c($s1)
/* AC170 800D0D70 0C03406A */  jal        func_800D01A8
/* AC174 800D0D74 E628000C */   swc1      $f8, 0xc($s1)
/* AC178 800D0D78 100009CF */  b          .L800D34B8
/* AC17C 800D0D7C 8FBF003C */   lw        $ra, 0x3c($sp)
/* AC180 800D0D80 2401000B */  addiu      $at, $zero, 0xb
.L800D0D84:
/* AC184 800D0D84 54410114 */  bnel       $v0, $at, .L800D11D8
/* AC188 800D0D88 24010008 */   addiu     $at, $zero, 8
/* AC18C 800D0D8C 44805000 */  mtc1       $zero, $f10
/* AC190 800D0D90 00000000 */  nop
/* AC194 800D0D94 E7AA01F4 */  swc1       $f10, 0x1f4($sp)
/* AC198 800D0D98 0C034112 */  jal        func_800D0448
/* AC19C 800D0D9C 8E040600 */   lw        $a0, 0x600($s0)
/* AC1A0 800D0DA0 C4440024 */  lwc1       $f4, 0x24($v0)
/* AC1A4 800D0DA4 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AC1A8 800D0DA8 46062200 */  add.s      $f8, $f4, $f6
/* AC1AC 800D0DAC C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* AC1B0 800D0DB0 E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* AC1B4 800D0DB4 C44A0028 */  lwc1       $f10, 0x28($v0)
/* AC1B8 800D0DB8 46045180 */  add.s      $f6, $f10, $f4
/* AC1BC 800D0DBC C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* AC1C0 800D0DC0 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AC1C4 800D0DC4 C448002C */  lwc1       $f8, 0x2c($v0)
/* AC1C8 800D0DC8 C7A6023C */  lwc1       $f6, 0x23c($sp)
/* AC1CC 800D0DCC 460A4100 */  add.s      $f4, $f8, $f10
/* AC1D0 800D0DD0 C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* AC1D4 800D0DD4 46083280 */  add.s      $f10, $f6, $f8
/* AC1D8 800D0DD8 E7A401F8 */  swc1       $f4, 0x1f8($sp)
/* AC1DC 800D0DDC C7A40240 */  lwc1       $f4, 0x240($sp)
/* AC1E0 800D0DE0 C7A601F4 */  lwc1       $f6, 0x1f4($sp)
/* AC1E4 800D0DE4 E7AA020C */  swc1       $f10, 0x20c($sp)
/* AC1E8 800D0DE8 46062280 */  add.s      $f10, $f4, $f6
/* AC1EC 800D0DEC C7A40244 */  lwc1       $f4, 0x244($sp)
/* AC1F0 800D0DF0 E7AA0210 */  swc1       $f10, 0x210($sp)
/* AC1F4 800D0DF4 C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* AC1F8 800D0DF8 460A2100 */  add.s      $f4, $f4, $f10
/* AC1FC 800D0DFC E7A40214 */  swc1       $f4, 0x214($sp)
/* AC200 800D0E00 46084102 */  mul.s      $f4, $f8, $f8
/* AC204 800D0E04 00000000 */  nop
/* AC208 800D0E08 46063202 */  mul.s      $f8, $f6, $f6
/* AC20C 800D0E0C 46082180 */  add.s      $f6, $f4, $f8
/* AC210 800D0E10 460A5102 */  mul.s      $f4, $f10, $f10
/* AC214 800D0E14 0C036C2C */  jal        func_800DB0B0
/* AC218 800D0E18 46043300 */   add.s     $f12, $f6, $f4
/* AC21C 800D0E1C 4480A800 */  mtc1       $zero, $f21
/* AC220 800D0E20 4480A000 */  mtc1       $zero, $f20
/* AC224 800D0E24 46000221 */  cvt.d.s    $f8, $f0
/* AC228 800D0E28 00008025 */  or         $s0, $zero, $zero
/* AC22C 800D0E2C 4628A03C */  c.lt.d     $f20, $f8
/* AC230 800D0E30 00000000 */  nop
/* AC234 800D0E34 45000047 */  bc1f       .L800D0F54
/* AC238 800D0E38 00000000 */   nop
/* AC23C 800D0E3C C62A004C */  lwc1       $f10, 0x4c($s1)
/* AC240 800D0E40 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AC244 800D0E44 C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* AC248 800D0E48 46005003 */  div.s      $f0, $f10, $f0
/* AC24C 800D0E4C C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AC250 800D0E50 27A8023C */  addiu      $t0, $sp, 0x23c
/* AC254 800D0E54 27A20160 */  addiu      $v0, $sp, 0x160
/* AC258 800D0E58 27A90200 */  addiu      $t1, $sp, 0x200
/* AC25C 800D0E5C 240E0077 */  addiu      $t6, $zero, 0x77
/* AC260 800D0E60 240D0001 */  addiu      $t5, $zero, 1
/* AC264 800D0E64 24190001 */  addiu      $t9, $zero, 1
/* AC268 800D0E68 46003082 */  mul.s      $f2, $f6, $f0
/* AC26C 800D0E6C 00000000 */  nop
/* AC270 800D0E70 46002302 */  mul.s      $f12, $f4, $f0
/* AC274 800D0E74 00000000 */  nop
/* AC278 800D0E78 46004382 */  mul.s      $f14, $f8, $f0
/* AC27C 800D0E7C E7A201E4 */  swc1       $f2, 0x1e4($sp)
/* AC280 800D0E80 E7AC01E8 */  swc1       $f12, 0x1e8($sp)
/* AC284 800D0E84 E7AE01EC */  swc1       $f14, 0x1ec($sp)
/* AC288 800D0E88 8D010000 */  lw         $at, ($t0)
/* AC28C 800D0E8C AC410000 */  sw         $at, ($v0)
/* AC290 800D0E90 8D0B0004 */  lw         $t3, 4($t0)
/* AC294 800D0E94 AC4B0004 */  sw         $t3, 4($v0)
/* AC298 800D0E98 8D010008 */  lw         $at, 8($t0)
/* AC29C 800D0E9C AC410008 */  sw         $at, 8($v0)
/* AC2A0 800D0EA0 3C014000 */  lui        $at, 0x4000
/* AC2A4 800D0EA4 44813000 */  mtc1       $at, $f6
/* AC2A8 800D0EA8 C62A0050 */  lwc1       $f10, 0x50($s1)
/* AC2AC 800D0EAC C7A80164 */  lwc1       $f8, 0x164($sp)
/* AC2B0 800D0EB0 46065103 */  div.s      $f4, $f10, $f6
/* AC2B4 800D0EB4 C7A60160 */  lwc1       $f6, 0x160($sp)
/* AC2B8 800D0EB8 46044280 */  add.s      $f10, $f8, $f4
/* AC2BC 800D0EBC C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* AC2C0 800D0EC0 46083100 */  add.s      $f4, $f6, $f8
/* AC2C4 800D0EC4 C7A601F4 */  lwc1       $f6, 0x1f4($sp)
/* AC2C8 800D0EC8 E7AA0164 */  swc1       $f10, 0x164($sp)
/* AC2CC 800D0ECC 46065200 */  add.s      $f8, $f10, $f6
/* AC2D0 800D0ED0 C7A601F8 */  lwc1       $f6, 0x1f8($sp)
/* AC2D4 800D0ED4 C7AA0168 */  lwc1       $f10, 0x168($sp)
/* AC2D8 800D0ED8 E7A40264 */  swc1       $f4, 0x264($sp)
/* AC2DC 800D0EDC E7A80268 */  swc1       $f8, 0x268($sp)
/* AC2E0 800D0EE0 46065280 */  add.s      $f10, $f10, $f6
/* AC2E4 800D0EE4 46022180 */  add.s      $f6, $f4, $f2
/* AC2E8 800D0EE8 E7AA026C */  swc1       $f10, 0x26c($sp)
/* AC2EC 800D0EEC 460C4100 */  add.s      $f4, $f8, $f12
/* AC2F0 800D0EF0 E7A60200 */  swc1       $f6, 0x200($sp)
/* AC2F4 800D0EF4 460E5180 */  add.s      $f6, $f10, $f14
/* AC2F8 800D0EF8 E7A40204 */  swc1       $f4, 0x204($sp)
/* AC2FC 800D0EFC E7A60208 */  swc1       $f6, 0x208($sp)
/* AC300 800D0F00 8C410000 */  lw         $at, ($v0)
/* AC304 800D0F04 AFA10000 */  sw         $at, ($sp)
/* AC308 800D0F08 8C450004 */  lw         $a1, 4($v0)
/* AC30C 800D0F0C 8FA40000 */  lw         $a0, ($sp)
/* AC310 800D0F10 AFA50004 */  sw         $a1, 4($sp)
/* AC314 800D0F14 8C410008 */  lw         $at, 8($v0)
/* AC318 800D0F18 AFA10008 */  sw         $at, 8($sp)
/* AC31C 800D0F1C 8D210000 */  lw         $at, ($t1)
/* AC320 800D0F20 8FA60008 */  lw         $a2, 8($sp)
/* AC324 800D0F24 AFA1000C */  sw         $at, 0xc($sp)
/* AC328 800D0F28 8D2F0004 */  lw         $t7, 4($t1)
/* AC32C 800D0F2C 8FA7000C */  lw         $a3, 0xc($sp)
/* AC330 800D0F30 AFAF0010 */  sw         $t7, 0x10($sp)
/* AC334 800D0F34 8D210008 */  lw         $at, 8($t1)
/* AC338 800D0F38 AFB90020 */  sw         $t9, 0x20($sp)
/* AC33C 800D0F3C AFAD001C */  sw         $t5, 0x1c($sp)
/* AC340 800D0F40 AFAE0018 */  sw         $t6, 0x18($sp)
/* AC344 800D0F44 0C032A3E */  jal        func_800CA8F8
/* AC348 800D0F48 AFA10014 */   sw        $at, 0x14($sp)
/* AC34C 800D0F4C 10000001 */  b          .L800D0F54
/* AC350 800D0F50 00408025 */   or        $s0, $v0, $zero
.L800D0F54:
/* AC354 800D0F54 1200006F */  beqz       $s0, .L800D1114
/* AC358 800D0F58 02202025 */   or        $a0, $s1, $zero
/* AC35C 800D0F5C 02202025 */  or         $a0, $s1, $zero
/* AC360 800D0F60 8FA50274 */  lw         $a1, 0x274($sp)
/* AC364 800D0F64 0C00C76C */  jal        func_80031DB0
/* AC368 800D0F68 00003025 */   or        $a2, $zero, $zero
/* AC36C 800D0F6C C6080094 */  lwc1       $f8, 0x94($s0)
/* AC370 800D0F70 C7A401E4 */  lwc1       $f4, 0x1e4($sp)
/* AC374 800D0F74 3C014000 */  lui        $at, 0x4000
/* AC378 800D0F78 27A80264 */  addiu      $t0, $sp, 0x264
/* AC37C 800D0F7C 46044281 */  sub.s      $f10, $f8, $f4
/* AC380 800D0F80 C7A801E8 */  lwc1       $f8, 0x1e8($sp)
/* AC384 800D0F84 E7AA0264 */  swc1       $f10, 0x264($sp)
/* AC388 800D0F88 C6060098 */  lwc1       $f6, 0x98($s0)
/* AC38C 800D0F8C 46083101 */  sub.s      $f4, $f6, $f8
/* AC390 800D0F90 C7A601EC */  lwc1       $f6, 0x1ec($sp)
/* AC394 800D0F94 E7A40268 */  swc1       $f4, 0x268($sp)
/* AC398 800D0F98 C60A009C */  lwc1       $f10, 0x9c($s0)
/* AC39C 800D0F9C 46065201 */  sub.s      $f8, $f10, $f6
/* AC3A0 800D0FA0 44815000 */  mtc1       $at, $f10
/* AC3A4 800D0FA4 E7A8026C */  swc1       $f8, 0x26c($sp)
/* AC3A8 800D0FA8 C6240050 */  lwc1       $f4, 0x50($s1)
/* AC3AC 800D0FAC C7A80268 */  lwc1       $f8, 0x268($sp)
/* AC3B0 800D0FB0 460A2183 */  div.s      $f6, $f4, $f10
/* AC3B4 800D0FB4 46064101 */  sub.s      $f4, $f8, $f6
/* AC3B8 800D0FB8 44804000 */  mtc1       $zero, $f8
/* AC3BC 800D0FBC E7A40268 */  swc1       $f4, 0x268($sp)
/* AC3C0 800D0FC0 8D010000 */  lw         $at, ($t0)
/* AC3C4 800D0FC4 AFA10000 */  sw         $at, ($sp)
/* AC3C8 800D0FC8 8D050004 */  lw         $a1, 4($t0)
/* AC3CC 800D0FCC 8FA40000 */  lw         $a0, ($sp)
/* AC3D0 800D0FD0 AFA50004 */  sw         $a1, 4($sp)
/* AC3D4 800D0FD4 8D010008 */  lw         $at, 8($t0)
/* AC3D8 800D0FD8 AFA10008 */  sw         $at, 8($sp)
/* AC3DC 800D0FDC C62A004C */  lwc1       $f10, 0x4c($s1)
/* AC3E0 800D0FE0 3C014008 */  lui        $at, 0x4008
/* AC3E4 800D0FE4 44814800 */  mtc1       $at, $f9
/* AC3E8 800D0FE8 46005021 */  cvt.d.s    $f0, $f10
/* AC3EC 800D0FEC 3C01C000 */  lui        $at, 0xc000
/* AC3F0 800D0FF0 46280182 */  mul.d      $f6, $f0, $f8
/* AC3F4 800D0FF4 44815800 */  mtc1       $at, $f11
/* AC3F8 800D0FF8 44805000 */  mtc1       $zero, $f10
/* AC3FC 800D0FFC 8FA60008 */  lw         $a2, 8($sp)
/* AC400 800D1000 462A0202 */  mul.d      $f8, $f0, $f10
/* AC404 800D1004 46203120 */  cvt.s.d    $f4, $f6
/* AC408 800D1008 462041A0 */  cvt.s.d    $f6, $f8
/* AC40C 800D100C 44072000 */  mfc1       $a3, $f4
/* AC410 800D1010 0C032BE2 */  jal        func_800CAF88
/* AC414 800D1014 E7A60010 */   swc1      $f6, 0x10($sp)
/* AC418 800D1018 1040000D */  beqz       $v0, .L800D1050
/* AC41C 800D101C 00408025 */   or        $s0, $v0, $zero
/* AC420 800D1020 8C41005C */  lw         $at, 0x5c($v0)
/* AC424 800D1024 27A701BC */  addiu      $a3, $sp, 0x1bc
/* AC428 800D1028 27A901B8 */  addiu      $t1, $sp, 0x1b8
/* AC42C 800D102C AFA10000 */  sw         $at, ($sp)
/* AC430 800D1030 8C450060 */  lw         $a1, 0x60($v0)
/* AC434 800D1034 8FA40000 */  lw         $a0, ($sp)
/* AC438 800D1038 AFA50004 */  sw         $a1, 4($sp)
/* AC43C 800D103C 8C460064 */  lw         $a2, 0x64($v0)
/* AC440 800D1040 AFA70014 */  sw         $a3, 0x14($sp)
/* AC444 800D1044 AFA90010 */  sw         $t1, 0x10($sp)
/* AC448 800D1048 0C0360CE */  jal        func_800D8338
/* AC44C 800D104C AFA60008 */   sw        $a2, 8($sp)
.L800D1050:
/* AC450 800D1050 12000022 */  beqz       $s0, .L800D10DC
/* AC454 800D1054 C7A401B8 */   lwc1      $f4, 0x1b8($sp)
/* AC458 800D1058 3C018011 */  lui        $at, %hi(D_80110528)
/* AC45C 800D105C D4280528 */  ldc1       $f8, %lo(D_80110528)($at)
/* AC460 800D1060 460022A1 */  cvt.d.s    $f10, $f4
/* AC464 800D1064 4628503C */  c.lt.d     $f10, $f8
/* AC468 800D1068 00000000 */  nop
/* AC46C 800D106C 4502001C */  bc1fl      .L800D10E0
/* AC470 800D1070 27A80264 */   addiu     $t0, $sp, 0x264
/* AC474 800D1074 8E010094 */  lw         $at, 0x94($s0)
/* AC478 800D1078 27AF020C */  addiu      $t7, $sp, 0x20c
/* AC47C 800D107C 02202025 */  or         $a0, $s1, $zero
/* AC480 800D1080 ADE10000 */  sw         $at, ($t7)
/* AC484 800D1084 8E0D0098 */  lw         $t5, 0x98($s0)
/* AC488 800D1088 02002825 */  or         $a1, $s0, $zero
/* AC48C 800D108C 00003025 */  or         $a2, $zero, $zero
/* AC490 800D1090 ADED0004 */  sw         $t5, 4($t7)
/* AC494 800D1094 8E01009C */  lw         $at, 0x9c($s0)
/* AC498 800D1098 ADE10008 */  sw         $at, 8($t7)
/* AC49C 800D109C 0C033EDB */  jal        func_800CFB6C
/* AC4A0 800D10A0 AFA001C0 */   sw        $zero, 0x1c0($sp)
/* AC4A4 800D10A4 44803000 */  mtc1       $zero, $f6
/* AC4A8 800D10A8 24190010 */  addiu      $t9, $zero, 0x10
/* AC4AC 800D10AC AFB90014 */  sw         $t9, 0x14($sp)
/* AC4B0 800D10B0 24040006 */  addiu      $a0, $zero, 6
/* AC4B4 800D10B4 27A5020C */  addiu      $a1, $sp, 0x20c
/* AC4B8 800D10B8 27A60210 */  addiu      $a2, $sp, 0x210
/* AC4BC 800D10BC 27A70214 */  addiu      $a3, $sp, 0x214
/* AC4C0 800D10C0 AFA00010 */  sw         $zero, 0x10($sp)
/* AC4C4 800D10C4 0C021FB4 */  jal        func_80087ED0
/* AC4C8 800D10C8 E7A601F4 */   swc1      $f6, 0x1f4($sp)
/* AC4CC 800D10CC 0C0221A6 */  jal        func_80088698
/* AC4D0 800D10D0 00402025 */   or        $a0, $v0, $zero
/* AC4D4 800D10D4 10000012 */  b          .L800D1120
/* AC4D8 800D10D8 02202025 */   or        $a0, $s1, $zero
.L800D10DC:
/* AC4DC 800D10DC 27A80264 */  addiu      $t0, $sp, 0x264
.L800D10E0:
/* AC4E0 800D10E0 8D010000 */  lw         $at, ($t0)
/* AC4E4 800D10E4 27AB020C */  addiu      $t3, $sp, 0x20c
/* AC4E8 800D10E8 24090001 */  addiu      $t1, $zero, 1
/* AC4EC 800D10EC AD610000 */  sw         $at, ($t3)
/* AC4F0 800D10F0 8D0A0004 */  lw         $t2, 4($t0)
/* AC4F4 800D10F4 02202025 */  or         $a0, $s1, $zero
/* AC4F8 800D10F8 AD6A0004 */  sw         $t2, 4($t3)
/* AC4FC 800D10FC 8D010008 */  lw         $at, 8($t0)
/* AC500 800D1100 AD610008 */  sw         $at, 8($t3)
/* AC504 800D1104 0C033F6E */  jal        func_800CFDB8
/* AC508 800D1108 AFA901C0 */   sw        $t1, 0x1c0($sp)
/* AC50C 800D110C 10000004 */  b          .L800D1120
/* AC510 800D1110 02202025 */   or        $a0, $s1, $zero
.L800D1114:
/* AC514 800D1114 0C033F6E */  jal        func_800CFDB8
/* AC518 800D1118 AFA001C0 */   sw        $zero, 0x1c0($sp)
/* AC51C 800D111C 02202025 */  or         $a0, $s1, $zero
.L800D1120:
/* AC520 800D1120 8FA50274 */  lw         $a1, 0x274($sp)
/* AC524 800D1124 0C033F85 */  jal        func_800CFE14
/* AC528 800D1128 8FA601C0 */   lw        $a2, 0x1c0($sp)
/* AC52C 800D112C 0C033FD9 */  jal        func_800CFF64
/* AC530 800D1130 02202025 */   or        $a0, $s1, $zero
/* AC534 800D1134 0C033FDF */  jal        func_800CFF7C
/* AC538 800D1138 27A4020C */   addiu     $a0, $sp, 0x20c
/* AC53C 800D113C C7A4020C */  lwc1       $f4, 0x20c($sp)
/* AC540 800D1140 3C013FE0 */  lui        $at, 0x3fe0
/* AC544 800D1144 44818800 */  mtc1       $at, $f17
/* AC548 800D1148 E6240004 */  swc1       $f4, 4($s1)
/* AC54C 800D114C C7AA0210 */  lwc1       $f10, 0x210($sp)
/* AC550 800D1150 44808000 */  mtc1       $zero, $f16
/* AC554 800D1154 44800000 */  mtc1       $zero, $f0
/* AC558 800D1158 E62A0008 */  swc1       $f10, 8($s1)
/* AC55C 800D115C C7A80214 */  lwc1       $f8, 0x214($sp)
/* AC560 800D1160 02202025 */  or         $a0, $s1, $zero
/* AC564 800D1164 E628000C */  swc1       $f8, 0xc($s1)
/* AC568 800D1168 C7A4023C */  lwc1       $f4, 0x23c($sp)
/* AC56C 800D116C C7A6020C */  lwc1       $f6, 0x20c($sp)
/* AC570 800D1170 46043281 */  sub.s      $f10, $f6, $f4
/* AC574 800D1174 46005221 */  cvt.d.s    $f8, $f10
/* AC578 800D1178 46304182 */  mul.d      $f6, $f8, $f16
/* AC57C 800D117C 46203120 */  cvt.s.d    $f4, $f6
/* AC580 800D1180 E62400A8 */  swc1       $f4, 0xa8($s1)
/* AC584 800D1184 C7A80240 */  lwc1       $f8, 0x240($sp)
/* AC588 800D1188 C7AA0210 */  lwc1       $f10, 0x210($sp)
/* AC58C 800D118C 46085181 */  sub.s      $f6, $f10, $f8
/* AC590 800D1190 46003121 */  cvt.d.s    $f4, $f6
/* AC594 800D1194 46302282 */  mul.d      $f10, $f4, $f16
/* AC598 800D1198 46205220 */  cvt.s.d    $f8, $f10
/* AC59C 800D119C E62800AC */  swc1       $f8, 0xac($s1)
/* AC5A0 800D11A0 C7A40244 */  lwc1       $f4, 0x244($sp)
/* AC5A4 800D11A4 C7A60214 */  lwc1       $f6, 0x214($sp)
/* AC5A8 800D11A8 E6200024 */  swc1       $f0, 0x24($s1)
/* AC5AC 800D11AC E6200028 */  swc1       $f0, 0x28($s1)
/* AC5B0 800D11B0 46043281 */  sub.s      $f10, $f6, $f4
/* AC5B4 800D11B4 E620002C */  swc1       $f0, 0x2c($s1)
/* AC5B8 800D11B8 46005221 */  cvt.d.s    $f8, $f10
/* AC5BC 800D11BC 46304182 */  mul.d      $f6, $f8, $f16
/* AC5C0 800D11C0 46203120 */  cvt.s.d    $f4, $f6
/* AC5C4 800D11C4 0C03406A */  jal        func_800D01A8
/* AC5C8 800D11C8 E62400B0 */   swc1      $f4, 0xb0($s1)
/* AC5CC 800D11CC 100008BA */  b          .L800D34B8
/* AC5D0 800D11D0 8FBF003C */   lw        $ra, 0x3c($sp)
/* AC5D4 800D11D4 24010008 */  addiu      $at, $zero, 8
.L800D11D8:
/* AC5D8 800D11D8 10410003 */  beq        $v0, $at, .L800D11E8
/* AC5DC 800D11DC 24010009 */   addiu     $at, $zero, 9
/* AC5E0 800D11E0 14410258 */  bne        $v0, $at, .L800D1B44
/* AC5E4 800D11E4 8FAE01C0 */   lw        $t6, 0x1c0($sp)
.L800D11E8:
/* AC5E8 800D11E8 44801000 */  mtc1       $zero, $f2
/* AC5EC 800D11EC 00000000 */  nop
/* AC5F0 800D11F0 E7A201F8 */  swc1       $f2, 0x1f8($sp)
/* AC5F4 800D11F4 E7A201F4 */  swc1       $f2, 0x1f4($sp)
/* AC5F8 800D11F8 E7A201F0 */  swc1       $f2, 0x1f0($sp)
/* AC5FC 800D11FC 8E0E0008 */  lw         $t6, 8($s0)
/* AC600 800D1200 C6200008 */  lwc1       $f0, 8($s1)
/* AC604 800D1204 C6240128 */  lwc1       $f4, 0x128($s1)
/* AC608 800D1208 000E7880 */  sll        $t7, $t6, 2
/* AC60C 800D120C 020F1021 */  addu       $v0, $s0, $t7
/* AC610 800D1210 C4480098 */  lwc1       $f8, 0x98($v0)
/* AC614 800D1214 C44E0014 */  lwc1       $f14, 0x14($v0)
/* AC618 800D1218 C62A0004 */  lwc1       $f10, 4($s1)
/* AC61C 800D121C 46004180 */  add.s      $f6, $f8, $f0
/* AC620 800D1220 C628000C */  lwc1       $f8, 0xc($s1)
/* AC624 800D1224 460A7480 */  add.s      $f18, $f14, $f10
/* AC628 800D1228 C44A011C */  lwc1       $f10, 0x11c($v0)
/* AC62C 800D122C 46043400 */  add.s      $f16, $f6, $f4
/* AC630 800D1230 46085500 */  add.s      $f20, $f10, $f8
/* AC634 800D1234 4610003C */  c.lt.s     $f0, $f16
/* AC638 800D1238 00000000 */  nop
/* AC63C 800D123C 450200A5 */  bc1fl      .L800D14D4
/* AC640 800D1240 8E23007C */   lw        $v1, 0x7c($s1)
/* AC644 800D1244 8E2D007C */  lw         $t5, 0x7c($s1)
/* AC648 800D1248 27AC023C */  addiu      $t4, $sp, 0x23c
/* AC64C 800D124C 05A20005 */  bltzl      $t5, .L800D1264
/* AC650 800D1250 8D810000 */   lw        $at, ($t4)
/* AC654 800D1254 8E39008C */  lw         $t9, 0x8c($s1)
/* AC658 800D1258 5320002F */  beql       $t9, $zero, .L800D1318
/* AC65C 800D125C C7A801F0 */   lwc1      $f8, 0x1f0($sp)
/* AC660 800D1260 8D810000 */  lw         $at, ($t4)
.L800D1264:
/* AC664 800D1264 44802000 */  mtc1       $zero, $f4
/* AC668 800D1268 AFA10000 */  sw         $at, ($sp)
/* AC66C 800D126C 8D850004 */  lw         $a1, 4($t4)
/* AC670 800D1270 8FA40000 */  lw         $a0, ($sp)
/* AC674 800D1274 AFA50004 */  sw         $a1, 4($sp)
/* AC678 800D1278 8D810008 */  lw         $at, 8($t4)
/* AC67C 800D127C AFA10008 */  sw         $at, 8($sp)
/* AC680 800D1280 C626004C */  lwc1       $f6, 0x4c($s1)
/* AC684 800D1284 3C014008 */  lui        $at, 0x4008
/* AC688 800D1288 44812800 */  mtc1       $at, $f5
/* AC68C 800D128C 46003021 */  cvt.d.s    $f0, $f6
/* AC690 800D1290 3C01C000 */  lui        $at, 0xc000
/* AC694 800D1294 46240282 */  mul.d      $f10, $f0, $f4
/* AC698 800D1298 44813800 */  mtc1       $at, $f7
/* AC69C 800D129C 44803000 */  mtc1       $zero, $f6
/* AC6A0 800D12A0 8FA60008 */  lw         $a2, 8($sp)
/* AC6A4 800D12A4 46260102 */  mul.d      $f4, $f0, $f6
/* AC6A8 800D12A8 46205220 */  cvt.s.d    $f8, $f10
/* AC6AC 800D12AC 462022A0 */  cvt.s.d    $f10, $f4
/* AC6B0 800D12B0 44074000 */  mfc1       $a3, $f8
/* AC6B4 800D12B4 0C032BE2 */  jal        func_800CAF88
/* AC6B8 800D12B8 E7AA0010 */   swc1      $f10, 0x10($sp)
/* AC6BC 800D12BC 14400011 */  bnez       $v0, .L800D1304
/* AC6C0 800D12C0 00408025 */   or        $s0, $v0, $zero
/* AC6C4 800D12C4 02202025 */  or         $a0, $s1, $zero
/* AC6C8 800D12C8 8FA50274 */  lw         $a1, 0x274($sp)
/* AC6CC 800D12CC 0C00C76C */  jal        func_80031DB0
/* AC6D0 800D12D0 00003025 */   or        $a2, $zero, $zero
/* AC6D4 800D12D4 0C033F6E */  jal        func_800CFDB8
/* AC6D8 800D12D8 02202025 */   or        $a0, $s1, $zero
/* AC6DC 800D12DC 02202025 */  or         $a0, $s1, $zero
/* AC6E0 800D12E0 8FA50274 */  lw         $a1, 0x274($sp)
/* AC6E4 800D12E4 0C033F85 */  jal        func_800CFE14
/* AC6E8 800D12E8 24060001 */   addiu     $a2, $zero, 1
/* AC6EC 800D12EC 0C033FD9 */  jal        func_800CFF64
/* AC6F0 800D12F0 02202025 */   or        $a0, $s1, $zero
/* AC6F4 800D12F4 0C03406A */  jal        func_800D01A8
/* AC6F8 800D12F8 02202025 */   or        $a0, $s1, $zero
/* AC6FC 800D12FC 1000086E */  b          .L800D34B8
/* AC700 800D1300 8FBF003C */   lw        $ra, 0x3c($sp)
.L800D1304:
/* AC704 800D1304 02202025 */  or         $a0, $s1, $zero
/* AC708 800D1308 02002825 */  or         $a1, $s0, $zero
/* AC70C 800D130C 0C033EDB */  jal        func_800CFB6C
/* AC710 800D1310 00003025 */   or        $a2, $zero, $zero
/* AC714 800D1314 C7A801F0 */  lwc1       $f8, 0x1f0($sp)
.L800D1318:
/* AC718 800D1318 C626009C */  lwc1       $f6, 0x9c($s1)
/* AC71C 800D131C C7AA01F4 */  lwc1       $f10, 0x1f4($sp)
/* AC720 800D1320 27A40264 */  addiu      $a0, $sp, 0x264
/* AC724 800D1324 46064100 */  add.s      $f4, $f8, $f6
/* AC728 800D1328 24090033 */  addiu      $t1, $zero, 0x33
/* AC72C 800D132C E7A401F0 */  swc1       $f4, 0x1f0($sp)
/* AC730 800D1330 C62800A0 */  lwc1       $f8, 0xa0($s1)
/* AC734 800D1334 46085180 */  add.s      $f6, $f10, $f8
/* AC738 800D1338 C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* AC73C 800D133C E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AC740 800D1340 C62800A4 */  lwc1       $f8, 0xa4($s1)
/* AC744 800D1344 46085280 */  add.s      $f10, $f10, $f8
/* AC748 800D1348 C7A80218 */  lwc1       $f8, 0x218($sp)
/* AC74C 800D134C 46044200 */  add.s      $f8, $f8, $f4
/* AC750 800D1350 C7A4021C */  lwc1       $f4, 0x21c($sp)
/* AC754 800D1354 E7AA01F8 */  swc1       $f10, 0x1f8($sp)
/* AC758 800D1358 E7A80264 */  swc1       $f8, 0x264($sp)
/* AC75C 800D135C 46062200 */  add.s      $f8, $f4, $f6
/* AC760 800D1360 C7A40220 */  lwc1       $f4, 0x220($sp)
/* AC764 800D1364 460A2180 */  add.s      $f6, $f4, $f10
/* AC768 800D1368 E7A80268 */  swc1       $f8, 0x268($sp)
/* AC76C 800D136C E7A6026C */  swc1       $f6, 0x26c($sp)
/* AC770 800D1370 8C810000 */  lw         $at, ($a0)
/* AC774 800D1374 AFA10004 */  sw         $at, 4($sp)
/* AC778 800D1378 8C860004 */  lw         $a2, 4($a0)
/* AC77C 800D137C 8FA50004 */  lw         $a1, 4($sp)
/* AC780 800D1380 AFA60008 */  sw         $a2, 8($sp)
/* AC784 800D1384 8C870008 */  lw         $a3, 8($a0)
/* AC788 800D1388 AFA7000C */  sw         $a3, 0xc($sp)
/* AC78C 800D138C C628004C */  lwc1       $f8, 0x4c($s1)
/* AC790 800D1390 AFA90014 */  sw         $t1, 0x14($sp)
/* AC794 800D1394 0C0329CD */  jal        func_800CA734
/* AC798 800D1398 E7A80010 */   swc1      $f8, 0x10($sp)
/* AC79C 800D139C C6240050 */  lwc1       $f4, 0x50($s1)
/* AC7A0 800D13A0 C62A004C */  lwc1       $f10, 0x4c($s1)
/* AC7A4 800D13A4 C7A80268 */  lwc1       $f8, 0x268($sp)
/* AC7A8 800D13A8 27AE0264 */  addiu      $t6, $sp, 0x264
/* AC7AC 800D13AC 460A2181 */  sub.s      $f6, $f4, $f10
/* AC7B0 800D13B0 46064101 */  sub.s      $f4, $f8, $f6
/* AC7B4 800D13B4 44804000 */  mtc1       $zero, $f8
/* AC7B8 800D13B8 E7A40268 */  swc1       $f4, 0x268($sp)
/* AC7BC 800D13BC 8DC10000 */  lw         $at, ($t6)
/* AC7C0 800D13C0 AFA10000 */  sw         $at, ($sp)
/* AC7C4 800D13C4 8DC50004 */  lw         $a1, 4($t6)
/* AC7C8 800D13C8 8FA40000 */  lw         $a0, ($sp)
/* AC7CC 800D13CC AFA50004 */  sw         $a1, 4($sp)
/* AC7D0 800D13D0 8DC10008 */  lw         $at, 8($t6)
/* AC7D4 800D13D4 AFA10008 */  sw         $at, 8($sp)
/* AC7D8 800D13D8 C62A004C */  lwc1       $f10, 0x4c($s1)
/* AC7DC 800D13DC 3C014008 */  lui        $at, 0x4008
/* AC7E0 800D13E0 44814800 */  mtc1       $at, $f9
/* AC7E4 800D13E4 46005021 */  cvt.d.s    $f0, $f10
/* AC7E8 800D13E8 3C01C000 */  lui        $at, 0xc000
/* AC7EC 800D13EC 46280182 */  mul.d      $f6, $f0, $f8
/* AC7F0 800D13F0 44815800 */  mtc1       $at, $f11
/* AC7F4 800D13F4 44805000 */  mtc1       $zero, $f10
/* AC7F8 800D13F8 8FA60008 */  lw         $a2, 8($sp)
/* AC7FC 800D13FC 462A0202 */  mul.d      $f8, $f0, $f10
/* AC800 800D1400 46203120 */  cvt.s.d    $f4, $f6
/* AC804 800D1404 462041A0 */  cvt.s.d    $f6, $f8
/* AC808 800D1408 44072000 */  mfc1       $a3, $f4
/* AC80C 800D140C 0C032BE2 */  jal        func_800CAF88
/* AC810 800D1410 E7A60010 */   swc1      $f6, 0x10($sp)
/* AC814 800D1414 1040000F */  beqz       $v0, .L800D1454
/* AC818 800D1418 02202025 */   or        $a0, $s1, $zero
/* AC81C 800D141C 8C410094 */  lw         $at, 0x94($v0)
/* AC820 800D1420 27B9020C */  addiu      $t9, $sp, 0x20c
/* AC824 800D1424 02202025 */  or         $a0, $s1, $zero
/* AC828 800D1428 AF210000 */  sw         $at, ($t9)
/* AC82C 800D142C 8C4C0098 */  lw         $t4, 0x98($v0)
/* AC830 800D1430 00402825 */  or         $a1, $v0, $zero
/* AC834 800D1434 00003025 */  or         $a2, $zero, $zero
/* AC838 800D1438 AF2C0004 */  sw         $t4, 4($t9)
/* AC83C 800D143C 8C41009C */  lw         $at, 0x9c($v0)
/* AC840 800D1440 AF210008 */  sw         $at, 8($t9)
/* AC844 800D1444 0C033EDB */  jal        func_800CFB6C
/* AC848 800D1448 AFA001C0 */   sw        $zero, 0x1c0($sp)
/* AC84C 800D144C 10000011 */  b          .L800D1494
/* AC850 800D1450 02202025 */   or        $a0, $s1, $zero
.L800D1454:
/* AC854 800D1454 240B0001 */  addiu      $t3, $zero, 1
/* AC858 800D1458 AFAB01C0 */  sw         $t3, 0x1c0($sp)
/* AC85C 800D145C 8FA50274 */  lw         $a1, 0x274($sp)
/* AC860 800D1460 0C00C76C */  jal        func_80031DB0
/* AC864 800D1464 00003025 */   or        $a2, $zero, $zero
/* AC868 800D1468 27AA0264 */  addiu      $t2, $sp, 0x264
/* AC86C 800D146C 8D410000 */  lw         $at, ($t2)
/* AC870 800D1470 27A8020C */  addiu      $t0, $sp, 0x20c
/* AC874 800D1474 02202025 */  or         $a0, $s1, $zero
/* AC878 800D1478 AD010000 */  sw         $at, ($t0)
/* AC87C 800D147C 8D4E0004 */  lw         $t6, 4($t2)
/* AC880 800D1480 AD0E0004 */  sw         $t6, 4($t0)
/* AC884 800D1484 8D410008 */  lw         $at, 8($t2)
/* AC888 800D1488 0C033F6E */  jal        func_800CFDB8
/* AC88C 800D148C AD010008 */   sw        $at, 8($t0)
/* AC890 800D1490 02202025 */  or         $a0, $s1, $zero
.L800D1494:
/* AC894 800D1494 8FA50274 */  lw         $a1, 0x274($sp)
/* AC898 800D1498 0C033F85 */  jal        func_800CFE14
/* AC89C 800D149C 8FA601C0 */   lw        $a2, 0x1c0($sp)
/* AC8A0 800D14A0 0C033FDF */  jal        func_800CFF7C
/* AC8A4 800D14A4 27A4020C */   addiu     $a0, $sp, 0x20c
/* AC8A8 800D14A8 C7A4020C */  lwc1       $f4, 0x20c($sp)
/* AC8AC 800D14AC 02202025 */  or         $a0, $s1, $zero
/* AC8B0 800D14B0 E6240004 */  swc1       $f4, 4($s1)
/* AC8B4 800D14B4 C7AA0210 */  lwc1       $f10, 0x210($sp)
/* AC8B8 800D14B8 E62A0008 */  swc1       $f10, 8($s1)
/* AC8BC 800D14BC C7A80214 */  lwc1       $f8, 0x214($sp)
/* AC8C0 800D14C0 0C03406A */  jal        func_800D01A8
/* AC8C4 800D14C4 E628000C */   swc1      $f8, 0xc($s1)
/* AC8C8 800D14C8 100007FB */  b          .L800D34B8
/* AC8CC 800D14CC 8FBF003C */   lw        $ra, 0x3c($sp)
/* AC8D0 800D14D0 8E23007C */  lw         $v1, 0x7c($s1)
.L800D14D4:
/* AC8D4 800D14D4 04620005 */  bltzl      $v1, .L800D14EC
/* AC8D8 800D14D8 C4460010 */   lwc1      $f6, 0x10($v0)
/* AC8DC 800D14DC 8E2D008C */  lw         $t5, 0x8c($s1)
/* AC8E0 800D14E0 55A0004E */  bnel       $t5, $zero, .L800D161C
/* AC8E4 800D14E4 00035880 */   sll       $t3, $v1, 2
/* AC8E8 800D14E8 C4460010 */  lwc1       $f6, 0x10($v0)
.L800D14EC:
/* AC8EC 800D14EC 27AF012C */  addiu      $t7, $sp, 0x12c
/* AC8F0 800D14F0 27AA0138 */  addiu      $t2, $sp, 0x138
/* AC8F4 800D14F4 46067101 */  sub.s      $f4, $f14, $f6
/* AC8F8 800D14F8 E7A401D4 */  swc1       $f4, 0x1d4($sp)
/* AC8FC 800D14FC 8E180008 */  lw         $t8, 8($s0)
/* AC900 800D1500 0018C880 */  sll        $t9, $t8, 2
/* AC904 800D1504 02191021 */  addu       $v0, $s0, $t9
/* AC908 800D1508 C44A0098 */  lwc1       $f10, 0x98($v0)
/* AC90C 800D150C C4480094 */  lwc1       $f8, 0x94($v0)
/* AC910 800D1510 24190001 */  addiu      $t9, $zero, 1
/* AC914 800D1514 24180077 */  addiu      $t8, $zero, 0x77
/* AC918 800D1518 46085181 */  sub.s      $f6, $f10, $f8
/* AC91C 800D151C E7A601D8 */  swc1       $f6, 0x1d8($sp)
/* AC920 800D1520 8E0C0008 */  lw         $t4, 8($s0)
/* AC924 800D1524 C7A601D4 */  lwc1       $f6, 0x1d4($sp)
/* AC928 800D1528 000C5880 */  sll        $t3, $t4, 2
/* AC92C 800D152C 020B1021 */  addu       $v0, $s0, $t3
/* AC930 800D1530 C444011C */  lwc1       $f4, 0x11c($v0)
/* AC934 800D1534 C44A0118 */  lwc1       $f10, 0x118($v0)
/* AC938 800D1538 46003021 */  cvt.d.s    $f0, $f6
/* AC93C 800D153C 240C0001 */  addiu      $t4, $zero, 1
/* AC940 800D1540 460A2201 */  sub.s      $f8, $f4, $f10
/* AC944 800D1544 46200100 */  add.d      $f4, $f0, $f0
/* AC948 800D1548 E7A801DC */  swc1       $f8, 0x1dc($sp)
/* AC94C 800D154C C7A801D8 */  lwc1       $f8, 0x1d8($sp)
/* AC950 800D1550 462022A0 */  cvt.s.d    $f10, $f4
/* AC954 800D1554 460040A1 */  cvt.d.s    $f2, $f8
/* AC958 800D1558 C7A801DC */  lwc1       $f8, 0x1dc($sp)
/* AC95C 800D155C 46221180 */  add.d      $f6, $f2, $f2
/* AC960 800D1560 E7AA01D4 */  swc1       $f10, 0x1d4($sp)
/* AC964 800D1564 46004321 */  cvt.d.s    $f12, $f8
/* AC968 800D1568 46203120 */  cvt.s.d    $f4, $f6
/* AC96C 800D156C 462C6180 */  add.d      $f6, $f12, $f12
/* AC970 800D1570 E7A401D8 */  swc1       $f4, 0x1d8($sp)
/* AC974 800D1574 46203220 */  cvt.s.d    $f8, $f6
/* AC978 800D1578 460A9181 */  sub.s      $f6, $f18, $f10
/* AC97C 800D157C E7A801DC */  swc1       $f8, 0x1dc($sp)
/* AC980 800D1580 E7A6012C */  swc1       $f6, 0x12c($sp)
/* AC984 800D1584 46048181 */  sub.s      $f6, $f16, $f4
/* AC988 800D1588 E7A60130 */  swc1       $f6, 0x130($sp)
/* AC98C 800D158C 4608A181 */  sub.s      $f6, $f20, $f8
/* AC990 800D1590 4608A200 */  add.s      $f8, $f20, $f8
/* AC994 800D1594 E7A60134 */  swc1       $f6, 0x134($sp)
/* AC998 800D1598 460A9180 */  add.s      $f6, $f18, $f10
/* AC99C 800D159C E7A80140 */  swc1       $f8, 0x140($sp)
/* AC9A0 800D15A0 46048280 */  add.s      $f10, $f16, $f4
/* AC9A4 800D15A4 E7A60138 */  swc1       $f6, 0x138($sp)
/* AC9A8 800D15A8 E7AA013C */  swc1       $f10, 0x13c($sp)
/* AC9AC 800D15AC 8DE10000 */  lw         $at, ($t7)
/* AC9B0 800D15B0 AFA10000 */  sw         $at, ($sp)
/* AC9B4 800D15B4 8DE50004 */  lw         $a1, 4($t7)
/* AC9B8 800D15B8 8FA40000 */  lw         $a0, ($sp)
/* AC9BC 800D15BC AFA50004 */  sw         $a1, 4($sp)
/* AC9C0 800D15C0 8DE10008 */  lw         $at, 8($t7)
/* AC9C4 800D15C4 AFA10008 */  sw         $at, 8($sp)
/* AC9C8 800D15C8 8D410000 */  lw         $at, ($t2)
/* AC9CC 800D15CC 8FA60008 */  lw         $a2, 8($sp)
/* AC9D0 800D15D0 AFA1000C */  sw         $at, 0xc($sp)
/* AC9D4 800D15D4 8D4D0004 */  lw         $t5, 4($t2)
/* AC9D8 800D15D8 8FA7000C */  lw         $a3, 0xc($sp)
/* AC9DC 800D15DC AFAD0010 */  sw         $t5, 0x10($sp)
/* AC9E0 800D15E0 8D410008 */  lw         $at, 8($t2)
/* AC9E4 800D15E4 AFAC0020 */  sw         $t4, 0x20($sp)
/* AC9E8 800D15E8 AFB9001C */  sw         $t9, 0x1c($sp)
/* AC9EC 800D15EC AFB80018 */  sw         $t8, 0x18($sp)
/* AC9F0 800D15F0 0C032A3E */  jal        func_800CA8F8
/* AC9F4 800D15F4 AFA10014 */   sw        $at, 0x14($sp)
/* AC9F8 800D15F8 10400006 */  beqz       $v0, .L800D1614
/* AC9FC 800D15FC 02202025 */   or        $a0, $s1, $zero
/* ACA00 800D1600 00402825 */  or         $a1, $v0, $zero
/* ACA04 800D1604 0C033EDB */  jal        func_800CFB6C
/* ACA08 800D1608 24060001 */   addiu     $a2, $zero, 1
/* ACA0C 800D160C 10000002 */  b          .L800D1618
/* ACA10 800D1610 8E23007C */   lw        $v1, 0x7c($s1)
.L800D1614:
/* ACA14 800D1614 8E23007C */  lw         $v1, 0x7c($s1)
.L800D1618:
/* ACA18 800D1618 00035880 */  sll        $t3, $v1, 2
.L800D161C:
/* ACA1C 800D161C 01635821 */  addu       $t3, $t3, $v1
/* ACA20 800D1620 000B5880 */  sll        $t3, $t3, 2
/* ACA24 800D1624 01635823 */  subu       $t3, $t3, $v1
/* ACA28 800D1628 3C098023 */  lui        $t1, %hi(D_80236980)
/* ACA2C 800D162C 25296980 */  addiu      $t1, $t1, %lo(D_80236980)
/* ACA30 800D1630 000B5900 */  sll        $t3, $t3, 4
/* ACA34 800D1634 01692021 */  addu       $a0, $t3, $t1
/* ACA38 800D1638 AFA401FC */  sw         $a0, 0x1fc($sp)
/* ACA3C 800D163C 0C02CFFF */  jal        func_800B3FFC
/* ACA40 800D1640 24050001 */   addiu     $a1, $zero, 1
/* ACA44 800D1644 24010002 */  addiu      $at, $zero, 2
/* ACA48 800D1648 14410020 */  bne        $v0, $at, .L800D16CC
/* ACA4C 800D164C 8FA301FC */   lw        $v1, 0x1fc($sp)
/* ACA50 800D1650 C6260090 */  lwc1       $f6, 0x90($s1)
/* ACA54 800D1654 27A40120 */  addiu      $a0, $sp, 0x120
/* ACA58 800D1658 E7A60120 */  swc1       $f6, 0x120($sp)
/* ACA5C 800D165C C6240094 */  lwc1       $f4, 0x94($s1)
/* ACA60 800D1660 E7A40124 */  swc1       $f4, 0x124($sp)
/* ACA64 800D1664 C62A0098 */  lwc1       $f10, 0x98($s1)
/* ACA68 800D1668 E7AA0128 */  swc1       $f10, 0x128($sp)
/* ACA6C 800D166C 8C810000 */  lw         $at, ($a0)
/* ACA70 800D1670 AFA10004 */  sw         $at, 4($sp)
/* ACA74 800D1674 8C860004 */  lw         $a2, 4($a0)
/* ACA78 800D1678 8FA50004 */  lw         $a1, 4($sp)
/* ACA7C 800D167C AFA60008 */  sw         $a2, 8($sp)
/* ACA80 800D1680 8C870008 */  lw         $a3, 8($a0)
/* ACA84 800D1684 AFA7000C */  sw         $a3, 0xc($sp)
/* ACA88 800D1688 C4680060 */  lwc1       $f8, 0x60($v1)
/* ACA8C 800D168C E7A80010 */  swc1       $f8, 0x10($sp)
/* ACA90 800D1690 8C6E005C */  lw         $t6, 0x5c($v1)
/* ACA94 800D1694 AFA301FC */  sw         $v1, 0x1fc($sp)
/* ACA98 800D1698 0C035FB8 */  jal        func_800D7EE0
/* ACA9C 800D169C AFAE0014 */   sw        $t6, 0x14($sp)
/* ACAA0 800D16A0 8FA301FC */  lw         $v1, 0x1fc($sp)
/* ACAA4 800D16A4 C7A40120 */  lwc1       $f4, 0x120($sp)
/* ACAA8 800D16A8 C7A80124 */  lwc1       $f8, 0x124($sp)
/* ACAAC 800D16AC C4660018 */  lwc1       $f6, 0x18($v1)
/* ACAB0 800D16B0 C46A001C */  lwc1       $f10, 0x1c($v1)
/* ACAB4 800D16B4 46043000 */  add.s      $f0, $f6, $f4
/* ACAB8 800D16B8 C7A40128 */  lwc1       $f4, 0x128($sp)
/* ACABC 800D16BC C4660020 */  lwc1       $f6, 0x20($v1)
/* ACAC0 800D16C0 46085080 */  add.s      $f2, $f10, $f8
/* ACAC4 800D16C4 1000000A */  b          .L800D16F0
/* ACAC8 800D16C8 46043300 */   add.s     $f12, $f6, $f4
.L800D16CC:
/* ACACC 800D16CC C46A0018 */  lwc1       $f10, 0x18($v1)
/* ACAD0 800D16D0 C6280090 */  lwc1       $f8, 0x90($s1)
/* ACAD4 800D16D4 C466001C */  lwc1       $f6, 0x1c($v1)
/* ACAD8 800D16D8 C6240094 */  lwc1       $f4, 0x94($s1)
/* ACADC 800D16DC 46085000 */  add.s      $f0, $f10, $f8
/* ACAE0 800D16E0 C6280098 */  lwc1       $f8, 0x98($s1)
/* ACAE4 800D16E4 C46A0020 */  lwc1       $f10, 0x20($v1)
/* ACAE8 800D16E8 46043080 */  add.s      $f2, $f6, $f4
/* ACAEC 800D16EC 46085300 */  add.s      $f12, $f10, $f8
.L800D16F0:
/* ACAF0 800D16F0 8FAA0274 */  lw         $t2, 0x274($sp)
/* ACAF4 800D16F4 C62A0128 */  lwc1       $f10, 0x128($s1)
/* ACAF8 800D16F8 00008025 */  or         $s0, $zero, $zero
/* ACAFC 800D16FC 8D4D0008 */  lw         $t5, 8($t2)
/* ACB00 800D1700 000DC080 */  sll        $t8, $t5, 2
/* ACB04 800D1704 01581021 */  addu       $v0, $t2, $t8
/* ACB08 800D1708 C4440098 */  lwc1       $f4, 0x98($v0)
/* ACB0C 800D170C C4460014 */  lwc1       $f6, 0x14($v0)
/* ACB10 800D1710 460A2200 */  add.s      $f8, $f4, $f10
/* ACB14 800D1714 C7A4023C */  lwc1       $f4, 0x23c($sp)
/* ACB18 800D1718 46060001 */  sub.s      $f0, $f0, $f6
/* ACB1C 800D171C C446011C */  lwc1       $f6, 0x11c($v0)
/* ACB20 800D1720 46081081 */  sub.s      $f2, $f2, $f8
/* ACB24 800D1724 C7A80240 */  lwc1       $f8, 0x240($sp)
/* ACB28 800D1728 46040281 */  sub.s      $f10, $f0, $f4
/* ACB2C 800D172C C7A40244 */  lwc1       $f4, 0x244($sp)
/* ACB30 800D1730 46066301 */  sub.s      $f12, $f12, $f6
/* ACB34 800D1734 E7AA01F0 */  swc1       $f10, 0x1f0($sp)
/* ACB38 800D1738 46081181 */  sub.s      $f6, $f2, $f8
/* ACB3C 800D173C C7A80218 */  lwc1       $f8, 0x218($sp)
/* ACB40 800D1740 46046281 */  sub.s      $f10, $f12, $f4
/* ACB44 800D1744 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* ACB48 800D1748 E7AA01F8 */  swc1       $f10, 0x1f8($sp)
/* ACB4C 800D174C C6260030 */  lwc1       $f6, 0x30($s1)
/* ACB50 800D1750 C7AA021C */  lwc1       $f10, 0x21c($sp)
/* ACB54 800D1754 46064101 */  sub.s      $f4, $f8, $f6
/* ACB58 800D1758 E7A40218 */  swc1       $f4, 0x218($sp)
/* ACB5C 800D175C C6280034 */  lwc1       $f8, 0x34($s1)
/* ACB60 800D1760 46085181 */  sub.s      $f6, $f10, $f8
/* ACB64 800D1764 C7AA0220 */  lwc1       $f10, 0x220($sp)
/* ACB68 800D1768 E7A6021C */  swc1       $f6, 0x21c($sp)
/* ACB6C 800D176C C6280038 */  lwc1       $f8, 0x38($s1)
/* ACB70 800D1770 E7A40040 */  swc1       $f4, 0x40($sp)
/* ACB74 800D1774 46085281 */  sub.s      $f10, $f10, $f8
/* ACB78 800D1778 C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* ACB7C 800D177C E7AA0220 */  swc1       $f10, 0x220($sp)
/* ACB80 800D1780 C6240030 */  lwc1       $f4, 0x30($s1)
/* ACB84 800D1784 E7A60044 */  swc1       $f6, 0x44($sp)
/* ACB88 800D1788 46044200 */  add.s      $f8, $f8, $f4
/* ACB8C 800D178C C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* ACB90 800D1790 E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* ACB94 800D1794 C6260034 */  lwc1       $f6, 0x34($s1)
/* ACB98 800D1798 E7AA0048 */  swc1       $f10, 0x48($sp)
/* ACB9C 800D179C 46062100 */  add.s      $f4, $f4, $f6
/* ACBA0 800D17A0 C7A601F8 */  lwc1       $f6, 0x1f8($sp)
/* ACBA4 800D17A4 E7A401F4 */  swc1       $f4, 0x1f4($sp)
/* ACBA8 800D17A8 C62A0038 */  lwc1       $f10, 0x38($s1)
/* ACBAC 800D17AC 460A3180 */  add.s      $f6, $f6, $f10
/* ACBB0 800D17B0 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* ACBB4 800D17B4 46085280 */  add.s      $f10, $f10, $f8
/* ACBB8 800D17B8 E7A601F8 */  swc1       $f6, 0x1f8($sp)
/* ACBBC 800D17BC E7AA0264 */  swc1       $f10, 0x264($sp)
/* ACBC0 800D17C0 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* ACBC4 800D17C4 46045280 */  add.s      $f10, $f10, $f4
/* ACBC8 800D17C8 E7AA0268 */  swc1       $f10, 0x268($sp)
/* ACBCC 800D17CC C7AA0048 */  lwc1       $f10, 0x48($sp)
/* ACBD0 800D17D0 46065280 */  add.s      $f10, $f10, $f6
/* ACBD4 800D17D4 E7AA026C */  swc1       $f10, 0x26c($sp)
/* ACBD8 800D17D8 46084282 */  mul.s      $f10, $f8, $f8
/* ACBDC 800D17DC 00000000 */  nop
/* ACBE0 800D17E0 46042202 */  mul.s      $f8, $f4, $f4
/* ACBE4 800D17E4 46085100 */  add.s      $f4, $f10, $f8
/* ACBE8 800D17E8 46063282 */  mul.s      $f10, $f6, $f6
/* ACBEC 800D17EC 0C036C2C */  jal        func_800DB0B0
/* ACBF0 800D17F0 460A2300 */   add.s     $f12, $f4, $f10
/* ACBF4 800D17F4 C630004C */  lwc1       $f16, 0x4c($s1)
/* ACBF8 800D17F8 46000486 */  mov.s      $f18, $f0
/* ACBFC 800D17FC 8FB90188 */  lw         $t9, 0x188($sp)
/* ACC00 800D1800 4600803E */  c.le.s     $f16, $f0
/* ACC04 800D1804 00000000 */  nop
/* ACC08 800D1808 4503000B */  bc1tl      .L800D1838
/* ACC0C 800D180C 46128003 */   div.s     $f0, $f16, $f18
/* ACC10 800D1810 5320004A */  beql       $t9, $zero, .L800D193C
/* ACC14 800D1814 27A40264 */   addiu     $a0, $sp, 0x264
/* ACC18 800D1818 4480A800 */  mtc1       $zero, $f21
/* ACC1C 800D181C 4480A000 */  mtc1       $zero, $f20
/* ACC20 800D1820 46000221 */  cvt.d.s    $f8, $f0
/* ACC24 800D1824 4628A03C */  c.lt.d     $f20, $f8
/* ACC28 800D1828 00000000 */  nop
/* ACC2C 800D182C 45020043 */  bc1fl      .L800D193C
/* ACC30 800D1830 27A40264 */   addiu     $a0, $sp, 0x264
/* ACC34 800D1834 46128003 */  div.s      $f0, $f16, $f18
.L800D1838:
/* ACC38 800D1838 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* ACC3C 800D183C C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* ACC40 800D1840 C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* ACC44 800D1844 C7A80264 */  lwc1       $f8, 0x264($sp)
/* ACC48 800D1848 27AC0218 */  addiu      $t4, $sp, 0x218
/* ACC4C 800D184C 27AF0200 */  addiu      $t7, $sp, 0x200
/* ACC50 800D1850 240D0077 */  addiu      $t5, $zero, 0x77
/* ACC54 800D1854 240A0001 */  addiu      $t2, $zero, 1
/* ACC58 800D1858 24180001 */  addiu      $t8, $zero, 1
/* ACC5C 800D185C 46003082 */  mul.s      $f2, $f6, $f0
/* ACC60 800D1860 00000000 */  nop
/* ACC64 800D1864 46002302 */  mul.s      $f12, $f4, $f0
/* ACC68 800D1868 C7A40268 */  lwc1       $f4, 0x268($sp)
/* ACC6C 800D186C 46005382 */  mul.s      $f14, $f10, $f0
/* ACC70 800D1870 E7A201E4 */  swc1       $f2, 0x1e4($sp)
/* ACC74 800D1874 46024180 */  add.s      $f6, $f8, $f2
/* ACC78 800D1878 C7A8026C */  lwc1       $f8, 0x26c($sp)
/* ACC7C 800D187C E7AC01E8 */  swc1       $f12, 0x1e8($sp)
/* ACC80 800D1880 460C2280 */  add.s      $f10, $f4, $f12
/* ACC84 800D1884 E7A60200 */  swc1       $f6, 0x200($sp)
/* ACC88 800D1888 E7AE01EC */  swc1       $f14, 0x1ec($sp)
/* ACC8C 800D188C 460E4180 */  add.s      $f6, $f8, $f14
/* ACC90 800D1890 E7AA0204 */  swc1       $f10, 0x204($sp)
/* ACC94 800D1894 E7A60208 */  swc1       $f6, 0x208($sp)
/* ACC98 800D1898 8D810000 */  lw         $at, ($t4)
/* ACC9C 800D189C AFA10000 */  sw         $at, ($sp)
/* ACCA0 800D18A0 8D850004 */  lw         $a1, 4($t4)
/* ACCA4 800D18A4 8FA40000 */  lw         $a0, ($sp)
/* ACCA8 800D18A8 AFA50004 */  sw         $a1, 4($sp)
/* ACCAC 800D18AC 8D810008 */  lw         $at, 8($t4)
/* ACCB0 800D18B0 AFA10008 */  sw         $at, 8($sp)
/* ACCB4 800D18B4 8DE10000 */  lw         $at, ($t7)
/* ACCB8 800D18B8 8FA60008 */  lw         $a2, 8($sp)
/* ACCBC 800D18BC AFA1000C */  sw         $at, 0xc($sp)
/* ACCC0 800D18C0 8DEE0004 */  lw         $t6, 4($t7)
/* ACCC4 800D18C4 8FA7000C */  lw         $a3, 0xc($sp)
/* ACCC8 800D18C8 AFAE0010 */  sw         $t6, 0x10($sp)
/* ACCCC 800D18CC 8DE10008 */  lw         $at, 8($t7)
/* ACCD0 800D18D0 AFB80020 */  sw         $t8, 0x20($sp)
/* ACCD4 800D18D4 AFAA001C */  sw         $t2, 0x1c($sp)
/* ACCD8 800D18D8 AFAD0018 */  sw         $t5, 0x18($sp)
/* ACCDC 800D18DC 0C032A3E */  jal        func_800CA8F8
/* ACCE0 800D18E0 AFA10014 */   sw        $at, 0x14($sp)
/* ACCE4 800D18E4 10400014 */  beqz       $v0, .L800D1938
/* ACCE8 800D18E8 C7AA01E4 */   lwc1      $f10, 0x1e4($sp)
/* ACCEC 800D18EC C4440094 */  lwc1       $f4, 0x94($v0)
/* ACCF0 800D18F0 27B901D4 */  addiu      $t9, $sp, 0x1d4
/* ACCF4 800D18F4 24100001 */  addiu      $s0, $zero, 1
/* ACCF8 800D18F8 460A2201 */  sub.s      $f8, $f4, $f10
/* ACCFC 800D18FC C7A401E8 */  lwc1       $f4, 0x1e8($sp)
/* ACD00 800D1900 E7A80264 */  swc1       $f8, 0x264($sp)
/* ACD04 800D1904 C4460098 */  lwc1       $f6, 0x98($v0)
/* ACD08 800D1908 46043281 */  sub.s      $f10, $f6, $f4
/* ACD0C 800D190C C7A601EC */  lwc1       $f6, 0x1ec($sp)
/* ACD10 800D1910 E7AA0268 */  swc1       $f10, 0x268($sp)
/* ACD14 800D1914 C448009C */  lwc1       $f8, 0x9c($v0)
/* ACD18 800D1918 46064101 */  sub.s      $f4, $f8, $f6
/* ACD1C 800D191C E7A4026C */  swc1       $f4, 0x26c($sp)
/* ACD20 800D1920 8C41005C */  lw         $at, 0x5c($v0)
/* ACD24 800D1924 AF210000 */  sw         $at, ($t9)
/* ACD28 800D1928 8C490060 */  lw         $t1, 0x60($v0)
/* ACD2C 800D192C AF290004 */  sw         $t1, 4($t9)
/* ACD30 800D1930 8C410064 */  lw         $at, 0x64($v0)
/* ACD34 800D1934 AF210008 */  sw         $at, 8($t9)
.L800D1938:
/* ACD38 800D1938 27A40264 */  addiu      $a0, $sp, 0x264
.L800D193C:
/* ACD3C 800D193C 8C810000 */  lw         $at, ($a0)
/* ACD40 800D1940 4480A800 */  mtc1       $zero, $f21
/* ACD44 800D1944 4480A000 */  mtc1       $zero, $f20
/* ACD48 800D1948 AFA10004 */  sw         $at, 4($sp)
/* ACD4C 800D194C 8C860004 */  lw         $a2, 4($a0)
/* ACD50 800D1950 240E0077 */  addiu      $t6, $zero, 0x77
/* ACD54 800D1954 8FA50004 */  lw         $a1, 4($sp)
/* ACD58 800D1958 AFA60008 */  sw         $a2, 8($sp)
/* ACD5C 800D195C 8C870008 */  lw         $a3, 8($a0)
/* ACD60 800D1960 AFA7000C */  sw         $a3, 0xc($sp)
/* ACD64 800D1964 C62A004C */  lwc1       $f10, 0x4c($s1)
/* ACD68 800D1968 AFAE0014 */  sw         $t6, 0x14($sp)
/* ACD6C 800D196C 0C0329CD */  jal        func_800CA734
/* ACD70 800D1970 E7AA0010 */   swc1      $f10, 0x10($sp)
/* ACD74 800D1974 3C038025 */  lui        $v1, %hi(D_802488B0)
/* ACD78 800D1978 246388B0 */  addiu      $v1, $v1, %lo(D_802488B0)
/* ACD7C 800D197C C4680000 */  lwc1       $f8, ($v1)
/* ACD80 800D1980 460041A1 */  cvt.d.s    $f6, $f8
/* ACD84 800D1984 4626A032 */  c.eq.d     $f20, $f6
/* ACD88 800D1988 00000000 */  nop
/* ACD8C 800D198C 4502000E */  bc1fl      .L800D19C8
/* ACD90 800D1990 8C610000 */   lw        $at, ($v1)
/* ACD94 800D1994 C4640004 */  lwc1       $f4, 4($v1)
/* ACD98 800D1998 460022A1 */  cvt.d.s    $f10, $f4
/* ACD9C 800D199C 462AA032 */  c.eq.d     $f20, $f10
/* ACDA0 800D19A0 00000000 */  nop
/* ACDA4 800D19A4 45020008 */  bc1fl      .L800D19C8
/* ACDA8 800D19A8 8C610000 */   lw        $at, ($v1)
/* ACDAC 800D19AC C4680008 */  lwc1       $f8, 8($v1)
/* ACDB0 800D19B0 460041A1 */  cvt.d.s    $f6, $f8
/* ACDB4 800D19B4 4626A032 */  c.eq.d     $f20, $f6
/* ACDB8 800D19B8 00000000 */  nop
/* ACDBC 800D19BC 4503000A */  bc1tl      .L800D19E8
/* ACDC0 800D19C0 C7A40264 */   lwc1      $f4, 0x264($sp)
/* ACDC4 800D19C4 8C610000 */  lw         $at, ($v1)
.L800D19C8:
/* ACDC8 800D19C8 27AD01D4 */  addiu      $t5, $sp, 0x1d4
/* ACDCC 800D19CC 24100001 */  addiu      $s0, $zero, 1
/* ACDD0 800D19D0 ADA10000 */  sw         $at, ($t5)
/* ACDD4 800D19D4 8C780004 */  lw         $t8, 4($v1)
/* ACDD8 800D19D8 ADB80004 */  sw         $t8, 4($t5)
/* ACDDC 800D19DC 8C610008 */  lw         $at, 8($v1)
/* ACDE0 800D19E0 ADA10008 */  sw         $at, 8($t5)
/* ACDE4 800D19E4 C7A40264 */  lwc1       $f4, 0x264($sp)
.L800D19E8:
/* ACDE8 800D19E8 C7AA0218 */  lwc1       $f10, 0x218($sp)
/* ACDEC 800D19EC C7A60268 */  lwc1       $f6, 0x268($sp)
/* ACDF0 800D19F0 C7A001D4 */  lwc1       $f0, 0x1d4($sp)
/* ACDF4 800D19F4 460A2201 */  sub.s      $f8, $f4, $f10
/* ACDF8 800D19F8 C7A4021C */  lwc1       $f4, 0x21c($sp)
/* ACDFC 800D19FC 46043281 */  sub.s      $f10, $f6, $f4
/* ACE00 800D1A00 C7A4026C */  lwc1       $f4, 0x26c($sp)
/* ACE04 800D1A04 E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* ACE08 800D1A08 E7AA01F4 */  swc1       $f10, 0x1f4($sp)
/* ACE0C 800D1A0C C7AA0220 */  lwc1       $f10, 0x220($sp)
/* ACE10 800D1A10 460A2101 */  sub.s      $f4, $f4, $f10
/* ACE14 800D1A14 E7A401F8 */  swc1       $f4, 0x1f8($sp)
/* ACE18 800D1A18 C62A0050 */  lwc1       $f10, 0x50($s1)
/* ACE1C 800D1A1C E7A80048 */  swc1       $f8, 0x48($sp)
/* ACE20 800D1A20 C628004C */  lwc1       $f8, 0x4c($s1)
/* ACE24 800D1A24 46085281 */  sub.s      $f10, $f10, $f8
/* ACE28 800D1A28 460A3201 */  sub.s      $f8, $f6, $f10
/* ACE2C 800D1A2C C7A60048 */  lwc1       $f6, 0x48($sp)
/* ACE30 800D1A30 1200001C */  beqz       $s0, .L800D1AA4
/* ACE34 800D1A34 E7A80268 */   swc1      $f8, 0x268($sp)
/* ACE38 800D1A38 46060282 */  mul.s      $f10, $f0, $f6
/* ACE3C 800D1A3C C7A201DC */  lwc1       $f2, 0x1dc($sp)
/* ACE40 800D1A40 02202025 */  or         $a0, $s1, $zero
/* ACE44 800D1A44 8FA50274 */  lw         $a1, 0x274($sp)
/* ACE48 800D1A48 46041202 */  mul.s      $f8, $f2, $f4
/* ACE4C 800D1A4C 00003025 */  or         $a2, $zero, $zero
/* ACE50 800D1A50 240C0001 */  addiu      $t4, $zero, 1
/* ACE54 800D1A54 46085180 */  add.s      $f6, $f10, $f8
/* ACE58 800D1A58 46003121 */  cvt.d.s    $f4, $f6
/* ACE5C 800D1A5C 4634203E */  c.le.d     $f4, $f20
/* ACE60 800D1A60 00000000 */  nop
/* ACE64 800D1A64 45020010 */  bc1fl      .L800D1AA8
/* ACE68 800D1A68 C7AA023C */   lwc1      $f10, 0x23c($sp)
/* ACE6C 800D1A6C 0C00C76C */  jal        func_80031DB0
/* ACE70 800D1A70 AFAC01C0 */   sw        $t4, 0x1c0($sp)
/* ACE74 800D1A74 27B90264 */  addiu      $t9, $sp, 0x264
/* ACE78 800D1A78 8F210000 */  lw         $at, ($t9)
/* ACE7C 800D1A7C 27AB020C */  addiu      $t3, $sp, 0x20c
/* ACE80 800D1A80 02202025 */  or         $a0, $s1, $zero
/* ACE84 800D1A84 AD610000 */  sw         $at, ($t3)
/* ACE88 800D1A88 8F2F0004 */  lw         $t7, 4($t9)
/* ACE8C 800D1A8C AD6F0004 */  sw         $t7, 4($t3)
/* ACE90 800D1A90 8F210008 */  lw         $at, 8($t9)
/* ACE94 800D1A94 0C033F6E */  jal        func_800CFDB8
/* ACE98 800D1A98 AD610008 */   sw        $at, 8($t3)
/* ACE9C 800D1A9C 10000018 */  b          .L800D1B00
/* ACEA0 800D1AA0 02202025 */   or        $a0, $s1, $zero
.L800D1AA4:
/* ACEA4 800D1AA4 C7AA023C */  lwc1       $f10, 0x23c($sp)
.L800D1AA8:
/* ACEA8 800D1AA8 C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* ACEAC 800D1AAC C7A40240 */  lwc1       $f4, 0x240($sp)
/* ACEB0 800D1AB0 46085180 */  add.s      $f6, $f10, $f8
/* ACEB4 800D1AB4 C7AA01F4 */  lwc1       $f10, 0x1f4($sp)
/* ACEB8 800D1AB8 460A2200 */  add.s      $f8, $f4, $f10
/* ACEBC 800D1ABC C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* ACEC0 800D1AC0 C7A40244 */  lwc1       $f4, 0x244($sp)
/* ACEC4 800D1AC4 E7A6020C */  swc1       $f6, 0x20c($sp)
/* ACEC8 800D1AC8 E7A80210 */  swc1       $f8, 0x210($sp)
/* ACECC 800D1ACC 460A2100 */  add.s      $f4, $f4, $f10
/* ACED0 800D1AD0 E7A40214 */  swc1       $f4, 0x214($sp)
/* ACED4 800D1AD4 C62A0030 */  lwc1       $f10, 0x30($s1)
/* ACED8 800D1AD8 460A3181 */  sub.s      $f6, $f6, $f10
/* ACEDC 800D1ADC E7A6020C */  swc1       $f6, 0x20c($sp)
/* ACEE0 800D1AE0 C62A0034 */  lwc1       $f10, 0x34($s1)
/* ACEE4 800D1AE4 460A4181 */  sub.s      $f6, $f8, $f10
/* ACEE8 800D1AE8 E7A60210 */  swc1       $f6, 0x210($sp)
/* ACEEC 800D1AEC C6280038 */  lwc1       $f8, 0x38($s1)
/* ACEF0 800D1AF0 AFA001C0 */  sw         $zero, 0x1c0($sp)
/* ACEF4 800D1AF4 46082281 */  sub.s      $f10, $f4, $f8
/* ACEF8 800D1AF8 E7AA0214 */  swc1       $f10, 0x214($sp)
/* ACEFC 800D1AFC 02202025 */  or         $a0, $s1, $zero
.L800D1B00:
/* ACF00 800D1B00 8FA50274 */  lw         $a1, 0x274($sp)
/* ACF04 800D1B04 0C033F85 */  jal        func_800CFE14
/* ACF08 800D1B08 8FA601C0 */   lw        $a2, 0x1c0($sp)
/* ACF0C 800D1B0C 0C033FD9 */  jal        func_800CFF64
/* ACF10 800D1B10 02202025 */   or        $a0, $s1, $zero
/* ACF14 800D1B14 0C033FDF */  jal        func_800CFF7C
/* ACF18 800D1B18 27A4020C */   addiu     $a0, $sp, 0x20c
/* ACF1C 800D1B1C C7A6020C */  lwc1       $f6, 0x20c($sp)
/* ACF20 800D1B20 02202025 */  or         $a0, $s1, $zero
/* ACF24 800D1B24 E6260004 */  swc1       $f6, 4($s1)
/* ACF28 800D1B28 C7A40210 */  lwc1       $f4, 0x210($sp)
/* ACF2C 800D1B2C E6240008 */  swc1       $f4, 8($s1)
/* ACF30 800D1B30 C7A80214 */  lwc1       $f8, 0x214($sp)
/* ACF34 800D1B34 0C03406A */  jal        func_800D01A8
/* ACF38 800D1B38 E628000C */   swc1      $f8, 0xc($s1)
/* ACF3C 800D1B3C 1000065E */  b          .L800D34B8
/* ACF40 800D1B40 8FBF003C */   lw        $ra, 0x3c($sp)
.L800D1B44:
/* ACF44 800D1B44 11C00007 */  beqz       $t6, .L800D1B64
/* ACF48 800D1B48 24010001 */   addiu     $at, $zero, 1
/* ACF4C 800D1B4C 11C10445 */  beq        $t6, $at, .L800D2C64
/* ACF50 800D1B50 24010002 */   addiu     $at, $zero, 2
/* ACF54 800D1B54 51C10444 */  beql       $t6, $at, .L800D2C68
/* ACF58 800D1B58 C6240024 */   lwc1      $f4, 0x24($s1)
/* ACF5C 800D1B5C 1000061E */  b          .L800D33D8
/* ACF60 800D1B60 02202025 */   or        $a0, $s1, $zero
.L800D1B64:
/* ACF64 800D1B64 8E2A007C */  lw         $t2, 0x7c($s1)
/* ACF68 800D1B68 27AD023C */  addiu      $t5, $sp, 0x23c
/* ACF6C 800D1B6C 05430023 */  bgezl      $t2, .L800D1BFC
/* ACF70 800D1B70 C6280024 */   lwc1      $f8, 0x24($s1)
/* ACF74 800D1B74 8DA10000 */  lw         $at, ($t5)
/* ACF78 800D1B78 44803000 */  mtc1       $zero, $f6
/* ACF7C 800D1B7C AFA10000 */  sw         $at, ($sp)
/* ACF80 800D1B80 8DA50004 */  lw         $a1, 4($t5)
/* ACF84 800D1B84 8FA40000 */  lw         $a0, ($sp)
/* ACF88 800D1B88 AFA50004 */  sw         $a1, 4($sp)
/* ACF8C 800D1B8C 8DA10008 */  lw         $at, 8($t5)
/* ACF90 800D1B90 AFA10008 */  sw         $at, 8($sp)
/* ACF94 800D1B94 C62A004C */  lwc1       $f10, 0x4c($s1)
/* ACF98 800D1B98 3C014008 */  lui        $at, 0x4008
/* ACF9C 800D1B9C 44813800 */  mtc1       $at, $f7
/* ACFA0 800D1BA0 46005021 */  cvt.d.s    $f0, $f10
/* ACFA4 800D1BA4 3C01C000 */  lui        $at, 0xc000
/* ACFA8 800D1BA8 46260102 */  mul.d      $f4, $f0, $f6
/* ACFAC 800D1BAC 44815800 */  mtc1       $at, $f11
/* ACFB0 800D1BB0 44805000 */  mtc1       $zero, $f10
/* ACFB4 800D1BB4 8FA60008 */  lw         $a2, 8($sp)
/* ACFB8 800D1BB8 462A0182 */  mul.d      $f6, $f0, $f10
/* ACFBC 800D1BBC 46202220 */  cvt.s.d    $f8, $f4
/* ACFC0 800D1BC0 46203120 */  cvt.s.d    $f4, $f6
/* ACFC4 800D1BC4 44074000 */  mfc1       $a3, $f8
/* ACFC8 800D1BC8 0C032BE2 */  jal        func_800CAF88
/* ACFCC 800D1BCC E7A40010 */   swc1      $f4, 0x10($sp)
/* ACFD0 800D1BD0 14400005 */  bnez       $v0, .L800D1BE8
/* ACFD4 800D1BD4 00408025 */   or        $s0, $v0, $zero
/* ACFD8 800D1BD8 0C033F6E */  jal        func_800CFDB8
/* ACFDC 800D1BDC 02202025 */   or        $a0, $s1, $zero
/* ACFE0 800D1BE0 100005FC */  b          .L800D33D4
/* ACFE4 800D1BE4 8FB00274 */   lw        $s0, 0x274($sp)
.L800D1BE8:
/* ACFE8 800D1BE8 02202025 */  or         $a0, $s1, $zero
/* ACFEC 800D1BEC 02002825 */  or         $a1, $s0, $zero
/* ACFF0 800D1BF0 0C033EDB */  jal        func_800CFB6C
/* ACFF4 800D1BF4 00003025 */   or        $a2, $zero, $zero
/* ACFF8 800D1BF8 C6280024 */  lwc1       $f8, 0x24($s1)
.L800D1BFC:
/* ACFFC 800D1BFC C62A0048 */  lwc1       $f10, 0x48($s1)
/* AD000 800D1C00 24010001 */  addiu      $at, $zero, 1
/* AD004 800D1C04 27A401D4 */  addiu      $a0, $sp, 0x1d4
/* AD008 800D1C08 460A4182 */  mul.s      $f6, $f8, $f10
/* AD00C 800D1C0C E7A601F0 */  swc1       $f6, 0x1f0($sp)
/* AD010 800D1C10 C6280048 */  lwc1       $f8, 0x48($s1)
/* AD014 800D1C14 C6240028 */  lwc1       $f4, 0x28($s1)
/* AD018 800D1C18 46082282 */  mul.s      $f10, $f4, $f8
/* AD01C 800D1C1C E7AA01F4 */  swc1       $f10, 0x1f4($sp)
/* AD020 800D1C20 C6240048 */  lwc1       $f4, 0x48($s1)
/* AD024 800D1C24 C626002C */  lwc1       $f6, 0x2c($s1)
/* AD028 800D1C28 46043202 */  mul.s      $f8, $f6, $f4
/* AD02C 800D1C2C E7A801F8 */  swc1       $f8, 0x1f8($sp)
/* AD030 800D1C30 8E2200CC */  lw         $v0, 0xcc($s1)
/* AD034 800D1C34 10410006 */  beq        $v0, $at, .L800D1C50
/* AD038 800D1C38 24010002 */   addiu     $at, $zero, 2
/* AD03C 800D1C3C 50410005 */  beql       $v0, $at, .L800D1C54
/* AD040 800D1C40 44800000 */   mtc1      $zero, $f0
/* AD044 800D1C44 8E28006C */  lw         $t0, 0x6c($s1)
/* AD048 800D1C48 11000006 */  beqz       $t0, .L800D1C64
/* AD04C 800D1C4C 00000000 */   nop
.L800D1C50:
/* AD050 800D1C50 44800000 */  mtc1       $zero, $f0
.L800D1C54:
/* AD054 800D1C54 00000000 */  nop
/* AD058 800D1C58 E7A001F8 */  swc1       $f0, 0x1f8($sp)
/* AD05C 800D1C5C E7A001F4 */  swc1       $f0, 0x1f4($sp)
/* AD060 800D1C60 E7A001F0 */  swc1       $f0, 0x1f0($sp)
.L800D1C64:
/* AD064 800D1C64 0C034037 */  jal        func_800D00DC
/* AD068 800D1C68 02202825 */   or        $a1, $s1, $zero
/* AD06C 800D1C6C C7AA01F0 */  lwc1       $f10, 0x1f0($sp)
/* AD070 800D1C70 C7A601D4 */  lwc1       $f6, 0x1d4($sp)
/* AD074 800D1C74 C7A801F4 */  lwc1       $f8, 0x1f4($sp)
/* AD078 800D1C78 3C038023 */  lui        $v1, 0x8023
/* AD07C 800D1C7C 46065100 */  add.s      $f4, $f10, $f6
/* AD080 800D1C80 C7AA01D8 */  lwc1       $f10, 0x1d8($sp)
/* AD084 800D1C84 460A4180 */  add.s      $f6, $f8, $f10
/* AD088 800D1C88 E7A401F0 */  swc1       $f4, 0x1f0($sp)
/* AD08C 800D1C8C C7A401F8 */  lwc1       $f4, 0x1f8($sp)
/* AD090 800D1C90 C7A801DC */  lwc1       $f8, 0x1dc($sp)
/* AD094 800D1C94 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AD098 800D1C98 46082280 */  add.s      $f10, $f4, $f8
/* AD09C 800D1C9C E7AA01F8 */  swc1       $f10, 0x1f8($sp)
/* AD0A0 800D1CA0 8E29007C */  lw         $t1, 0x7c($s1)
/* AD0A4 800D1CA4 00095880 */  sll        $t3, $t1, 2
/* AD0A8 800D1CA8 01695821 */  addu       $t3, $t3, $t1
/* AD0AC 800D1CAC 000B5880 */  sll        $t3, $t3, 2
/* AD0B0 800D1CB0 01695823 */  subu       $t3, $t3, $t1
/* AD0B4 800D1CB4 000B5900 */  sll        $t3, $t3, 4
/* AD0B8 800D1CB8 006B1821 */  addu       $v1, $v1, $t3
/* AD0BC 800D1CBC 8C636A64 */  lw         $v1, 0x6a64($v1)
/* AD0C0 800D1CC0 54600006 */  bnel       $v1, $zero, .L800D1CDC
/* AD0C4 800D1CC4 8E390088 */   lw        $t9, 0x88($s1)
/* AD0C8 800D1CC8 0C033F6E */  jal        func_800CFDB8
/* AD0CC 800D1CCC 02202025 */   or        $a0, $s1, $zero
/* AD0D0 800D1CD0 100005C0 */  b          .L800D33D4
/* AD0D4 800D1CD4 8FB00274 */   lw        $s0, 0x274($sp)
/* AD0D8 800D1CD8 8E390088 */  lw         $t9, 0x88($s1)
.L800D1CDC:
/* AD0DC 800D1CDC 24050002 */  addiu      $a1, $zero, 2
/* AD0E0 800D1CE0 00197880 */  sll        $t7, $t9, 2
/* AD0E4 800D1CE4 01F97821 */  addu       $t7, $t7, $t9
/* AD0E8 800D1CE8 000F7940 */  sll        $t7, $t7, 5
/* AD0EC 800D1CEC 006F8021 */  addu       $s0, $v1, $t7
/* AD0F0 800D1CF0 0C035E79 */  jal        func_800D79E4
/* AD0F4 800D1CF4 02002025 */   or        $a0, $s0, $zero
/* AD0F8 800D1CF8 2602005C */  addiu      $v0, $s0, 0x5c
/* AD0FC 800D1CFC 8C410000 */  lw         $at, ($v0)
/* AD100 800D1D00 27AE01A4 */  addiu      $t6, $sp, 0x1a4
/* AD104 800D1D04 ADC10000 */  sw         $at, ($t6)
/* AD108 800D1D08 8C580004 */  lw         $t8, 4($v0)
/* AD10C 800D1D0C ADD80004 */  sw         $t8, 4($t6)
/* AD110 800D1D10 8C410008 */  lw         $at, 8($v0)
/* AD114 800D1D14 ADC10008 */  sw         $at, 8($t6)
/* AD118 800D1D18 C7A601F8 */  lwc1       $f6, 0x1f8($sp)
/* AD11C 800D1D1C C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* AD120 800D1D20 AFA20074 */  sw         $v0, 0x74($sp)
/* AD124 800D1D24 46063102 */  mul.s      $f4, $f6, $f6
/* AD128 800D1D28 00000000 */  nop
/* AD12C 800D1D2C 46084282 */  mul.s      $f10, $f8, $f8
/* AD130 800D1D30 0C036C2C */  jal        func_800DB0B0
/* AD134 800D1D34 460A2300 */   add.s     $f12, $f4, $f10
/* AD138 800D1D38 44803000 */  mtc1       $zero, $f6
/* AD13C 800D1D3C 46000486 */  mov.s      $f18, $f0
/* AD140 800D1D40 C7A401F8 */  lwc1       $f4, 0x1f8($sp)
/* AD144 800D1D44 4600303C */  c.lt.s     $f6, $f0
/* AD148 800D1D48 00000000 */  nop
/* AD14C 800D1D4C 4502001F */  bc1fl      .L800D1DCC
/* AD150 800D1D50 44804000 */   mtc1      $zero, $f8
/* AD154 800D1D54 C6080064 */  lwc1       $f8, 0x64($s0)
/* AD158 800D1D58 C606005C */  lwc1       $f6, 0x5c($s0)
/* AD15C 800D1D5C 46044282 */  mul.s      $f10, $f8, $f4
/* AD160 800D1D60 C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* AD164 800D1D64 46083182 */  mul.s      $f6, $f6, $f8
/* AD168 800D1D68 46065280 */  add.s      $f10, $f10, $f6
/* AD16C 800D1D6C 46005187 */  neg.s      $f6, $f10
/* AD170 800D1D70 C60A0060 */  lwc1       $f10, 0x60($s0)
/* AD174 800D1D74 E7B201E0 */  swc1       $f18, 0x1e0($sp)
/* AD178 800D1D78 460A3183 */  div.s      $f6, $f6, $f10
/* AD17C 800D1D7C 46063282 */  mul.s      $f10, $f6, $f6
/* AD180 800D1D80 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AD184 800D1D84 46084182 */  mul.s      $f6, $f8, $f8
/* AD188 800D1D88 460A3200 */  add.s      $f8, $f6, $f10
/* AD18C 800D1D8C 46042182 */  mul.s      $f6, $f4, $f4
/* AD190 800D1D90 0C036C2C */  jal        func_800DB0B0
/* AD194 800D1D94 46064300 */   add.s     $f12, $f8, $f6
/* AD198 800D1D98 C7B201E0 */  lwc1       $f18, 0x1e0($sp)
/* AD19C 800D1D9C C7AA01F0 */  lwc1       $f10, 0x1f0($sp)
/* AD1A0 800D1DA0 C7A801F4 */  lwc1       $f8, 0x1f4($sp)
/* AD1A4 800D1DA4 46009083 */  div.s      $f2, $f18, $f0
/* AD1A8 800D1DA8 46025102 */  mul.s      $f4, $f10, $f2
/* AD1AC 800D1DAC C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* AD1B0 800D1DB0 46024182 */  mul.s      $f6, $f8, $f2
/* AD1B4 800D1DB4 E7A401F0 */  swc1       $f4, 0x1f0($sp)
/* AD1B8 800D1DB8 46025102 */  mul.s      $f4, $f10, $f2
/* AD1BC 800D1DBC E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AD1C0 800D1DC0 10000004 */  b          .L800D1DD4
/* AD1C4 800D1DC4 E7A401F8 */   swc1      $f4, 0x1f8($sp)
/* AD1C8 800D1DC8 44804000 */  mtc1       $zero, $f8
.L800D1DCC:
/* AD1CC 800D1DCC 00000000 */  nop
/* AD1D0 800D1DD0 E7A801F4 */  swc1       $f8, 0x1f4($sp)
.L800D1DD4:
/* AD1D4 800D1DD4 8FAC0074 */  lw         $t4, 0x74($sp)
/* AD1D8 800D1DD8 27AD01D4 */  addiu      $t5, $sp, 0x1d4
/* AD1DC 800D1DDC 4480A800 */  mtc1       $zero, $f21
/* AD1E0 800D1DE0 8D810000 */  lw         $at, ($t4)
/* AD1E4 800D1DE4 4480A000 */  mtc1       $zero, $f20
/* AD1E8 800D1DE8 ADA10000 */  sw         $at, ($t5)
/* AD1EC 800D1DEC 8D8B0004 */  lw         $t3, 4($t4)
/* AD1F0 800D1DF0 ADAB0004 */  sw         $t3, 4($t5)
/* AD1F4 800D1DF4 8D810008 */  lw         $at, 8($t4)
/* AD1F8 800D1DF8 ADA10008 */  sw         $at, 8($t5)
/* AD1FC 800D1DFC C7A001D4 */  lwc1       $f0, 0x1d4($sp)
/* AD200 800D1E00 C7A201DC */  lwc1       $f2, 0x1dc($sp)
/* AD204 800D1E04 46000182 */  mul.s      $f6, $f0, $f0
/* AD208 800D1E08 E7A00114 */  swc1       $f0, 0x114($sp)
/* AD20C 800D1E0C E7A2011C */  swc1       $f2, 0x11c($sp)
/* AD210 800D1E10 46021282 */  mul.s      $f10, $f2, $f2
/* AD214 800D1E14 460A3100 */  add.s      $f4, $f6, $f10
/* AD218 800D1E18 C7A601D8 */  lwc1       $f6, 0x1d8($sp)
/* AD21C 800D1E1C 46002207 */  neg.s      $f8, $f4
/* AD220 800D1E20 46000121 */  cvt.d.s    $f4, $f0
/* AD224 800D1E24 46064283 */  div.s      $f10, $f8, $f6
/* AD228 800D1E28 4624A032 */  c.eq.d     $f20, $f4
/* AD22C 800D1E2C 00000000 */  nop
/* AD230 800D1E30 4500000B */  bc1f       .L800D1E60
/* AD234 800D1E34 E7AA0118 */   swc1      $f10, 0x118($sp)
/* AD238 800D1E38 46005221 */  cvt.d.s    $f8, $f10
/* AD23C 800D1E3C 4628A032 */  c.eq.d     $f20, $f8
/* AD240 800D1E40 00000000 */  nop
/* AD244 800D1E44 45000006 */  bc1f       .L800D1E60
/* AD248 800D1E48 00000000 */   nop
/* AD24C 800D1E4C 460011A1 */  cvt.d.s    $f6, $f2
/* AD250 800D1E50 4626A032 */  c.eq.d     $f20, $f6
/* AD254 800D1E54 00000000 */  nop
/* AD258 800D1E58 45030004 */  bc1tl      .L800D1E6C
/* AD25C 800D1E5C 27B901D4 */   addiu     $t9, $sp, 0x1d4
.L800D1E60:
/* AD260 800D1E60 0C03606C */  jal        func_800D81B0
/* AD264 800D1E64 27A40114 */   addiu     $a0, $sp, 0x114
/* AD268 800D1E68 27B901D4 */  addiu      $t9, $sp, 0x1d4
.L800D1E6C:
/* AD26C 800D1E6C 8F210000 */  lw         $at, ($t9)
/* AD270 800D1E70 27AE010C */  addiu      $t6, $sp, 0x10c
/* AD274 800D1E74 27B80108 */  addiu      $t8, $sp, 0x108
/* AD278 800D1E78 AFA10000 */  sw         $at, ($sp)
/* AD27C 800D1E7C 8F250004 */  lw         $a1, 4($t9)
/* AD280 800D1E80 8FA40000 */  lw         $a0, ($sp)
/* AD284 800D1E84 27A70110 */  addiu      $a3, $sp, 0x110
/* AD288 800D1E88 AFA50004 */  sw         $a1, 4($sp)
/* AD28C 800D1E8C 8F260008 */  lw         $a2, 8($t9)
/* AD290 800D1E90 AFB80014 */  sw         $t8, 0x14($sp)
/* AD294 800D1E94 AFAE0010 */  sw         $t6, 0x10($sp)
/* AD298 800D1E98 0C0360CE */  jal        func_800D8338
/* AD29C 800D1E9C AFA60008 */   sw        $a2, 8($sp)
/* AD2A0 800D1EA0 8E29007C */  lw         $t1, 0x7c($s1)
/* AD2A4 800D1EA4 3C0D8023 */  lui        $t5, %hi(D_80236980)
/* AD2A8 800D1EA8 25AD6980 */  addiu      $t5, $t5, %lo(D_80236980)
/* AD2AC 800D1EAC 00094080 */  sll        $t0, $t1, 2
/* AD2B0 800D1EB0 01094021 */  addu       $t0, $t0, $t1
/* AD2B4 800D1EB4 00084080 */  sll        $t0, $t0, 2
/* AD2B8 800D1EB8 01094023 */  subu       $t0, $t0, $t1
/* AD2BC 800D1EBC 00084100 */  sll        $t0, $t0, 4
/* AD2C0 800D1EC0 010D1021 */  addu       $v0, $t0, $t5
/* AD2C4 800D1EC4 8C4C0010 */  lw         $t4, 0x10($v0)
/* AD2C8 800D1EC8 24010020 */  addiu      $at, $zero, 0x20
/* AD2CC 800D1ECC 00401825 */  or         $v1, $v0, $zero
/* AD2D0 800D1ED0 15810023 */  bne        $t4, $at, .L800D1F60
/* AD2D4 800D1ED4 240F0001 */   addiu     $t7, $zero, 1
/* AD2D8 800D1ED8 3C013F80 */  lui        $at, 0x3f80
/* AD2DC 800D1EDC 44812000 */  mtc1       $at, $f4
/* AD2E0 800D1EE0 8C4B00AC */  lw         $t3, 0xac($v0)
/* AD2E4 800D1EE4 3C018011 */  lui        $at, %hi(D_80110530)
/* AD2E8 800D1EE8 44805000 */  mtc1       $zero, $f10
/* AD2EC 800D1EEC C4280530 */  lwc1       $f8, %lo(D_80110530)($at)
/* AD2F0 800D1EF0 E7A40194 */  swc1       $f4, 0x194($sp)
/* AD2F4 800D1EF4 E7AA0190 */  swc1       $f10, 0x190($sp)
/* AD2F8 800D1EF8 15600011 */  bnez       $t3, .L800D1F40
/* AD2FC 800D1EFC E7A8018C */   swc1      $f8, 0x18c($sp)
/* AD300 800D1F00 C7A60114 */  lwc1       $f6, 0x114($sp)
/* AD304 800D1F04 C7A80118 */  lwc1       $f8, 0x118($sp)
/* AD308 800D1F08 46003321 */  cvt.d.s    $f12, $f6
/* AD30C 800D1F0C 46004021 */  cvt.d.s    $f0, $f8
/* AD310 800D1F10 462C6100 */  add.d      $f4, $f12, $f12
/* AD314 800D1F14 46200180 */  add.d      $f6, $f0, $f0
/* AD318 800D1F18 462022A0 */  cvt.s.d    $f10, $f4
/* AD31C 800D1F1C 46203120 */  cvt.s.d    $f4, $f6
/* AD320 800D1F20 E7AA01A0 */  swc1       $f10, 0x1a0($sp)
/* AD324 800D1F24 C7AA011C */  lwc1       $f10, 0x11c($sp)
/* AD328 800D1F28 E7A4019C */  swc1       $f4, 0x19c($sp)
/* AD32C 800D1F2C 460050A1 */  cvt.d.s    $f2, $f10
/* AD330 800D1F30 46221200 */  add.d      $f8, $f2, $f2
/* AD334 800D1F34 462041A0 */  cvt.s.d    $f6, $f8
/* AD338 800D1F38 10000007 */  b          .L800D1F58
/* AD33C 800D1F3C E7A60198 */   swc1      $f6, 0x198($sp)
.L800D1F40:
/* AD340 800D1F40 C464008C */  lwc1       $f4, 0x8c($v1)
/* AD344 800D1F44 E7A401A0 */  swc1       $f4, 0x1a0($sp)
/* AD348 800D1F48 C46A0090 */  lwc1       $f10, 0x90($v1)
/* AD34C 800D1F4C E7AA019C */  swc1       $f10, 0x19c($sp)
/* AD350 800D1F50 C4680094 */  lwc1       $f8, 0x94($v1)
/* AD354 800D1F54 E7A80198 */  swc1       $f8, 0x198($sp)
.L800D1F58:
/* AD358 800D1F58 10000117 */  b          .L800D23B8
/* AD35C 800D1F5C AE2F0084 */   sw        $t7, 0x84($s1)
.L800D1F60:
/* AD360 800D1F60 8C43012C */  lw         $v1, 0x12c($v0)
/* AD364 800D1F64 C7A4010C */  lwc1       $f4, 0x10c($sp)
/* AD368 800D1F68 5860009B */  blezl      $v1, .L800D21D8
/* AD36C 800D1F6C 3C014034 */   lui       $at, 0x4034
/* AD370 800D1F70 8E39011C */  lw         $t9, 0x11c($s1)
/* AD374 800D1F74 24010001 */  addiu      $at, $zero, 1
/* AD378 800D1F78 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AD37C 800D1F7C 13210095 */  beq        $t9, $at, .L800D21D4
/* AD380 800D1F80 C7AA01F4 */   lwc1      $f10, 0x1f4($sp)
/* AD384 800D1F84 46063102 */  mul.s      $f4, $f6, $f6
/* AD388 800D1F88 00035080 */  sll        $t2, $v1, 2
/* AD38C 800D1F8C 3C018011 */  lui        $at, %hi(D_80108F90)
/* AD390 800D1F90 460A5202 */  mul.s      $f8, $f10, $f10
/* AD394 800D1F94 C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* AD398 800D1F98 002A0821 */  addu       $at, $at, $t2
/* AD39C 800D1F9C C42E8F90 */  lwc1       $f14, %lo(D_80108F90)($at)
/* AD3A0 800D1FA0 E7AE00FC */  swc1       $f14, 0xfc($sp)
/* AD3A4 800D1FA4 46082180 */  add.s      $f6, $f4, $f8
/* AD3A8 800D1FA8 460A5102 */  mul.s      $f4, $f10, $f10
/* AD3AC 800D1FAC 0C036C2C */  jal        func_800DB0B0
/* AD3B0 800D1FB0 46043300 */   add.s     $f12, $f6, $f4
/* AD3B4 800D1FB4 3C013FE0 */  lui        $at, 0x3fe0
/* AD3B8 800D1FB8 44818800 */  mtc1       $at, $f17
/* AD3BC 800D1FBC 44808000 */  mtc1       $zero, $f16
/* AD3C0 800D1FC0 460002A1 */  cvt.d.s    $f10, $f0
/* AD3C4 800D1FC4 C7AE00FC */  lwc1       $f14, 0xfc($sp)
/* AD3C8 800D1FC8 46305182 */  mul.d      $f6, $f10, $f16
/* AD3CC 800D1FCC 3C013FF0 */  lui        $at, 0x3ff0
/* AD3D0 800D1FD0 460070A1 */  cvt.d.s    $f2, $f14
/* AD3D4 800D1FD4 44819800 */  mtc1       $at, $f19
/* AD3D8 800D1FD8 44809000 */  mtc1       $zero, $f18
/* AD3DC 800D1FDC E7AE0194 */  swc1       $f14, 0x194($sp)
/* AD3E0 800D1FE0 E7AE018C */  swc1       $f14, 0x18c($sp)
/* AD3E4 800D1FE4 46229201 */  sub.d      $f8, $f18, $f2
/* AD3E8 800D1FE8 46223102 */  mul.d      $f4, $f6, $f2
/* AD3EC 800D1FEC 46322280 */  add.d      $f10, $f4, $f18
/* AD3F0 800D1FF0 462051A0 */  cvt.s.d    $f6, $f10
/* AD3F4 800D1FF4 46003121 */  cvt.d.s    $f4, $f6
/* AD3F8 800D1FF8 46244282 */  mul.d      $f10, $f8, $f4
/* AD3FC 800D1FFC 44804000 */  mtc1       $zero, $f8
/* AD400 800D2000 44802000 */  mtc1       $zero, $f4
/* AD404 800D2004 E7A801A0 */  swc1       $f8, 0x1a0($sp)
/* AD408 800D2008 E7A4019C */  swc1       $f4, 0x19c($sp)
/* AD40C 800D200C 462051A0 */  cvt.s.d    $f6, $f10
/* AD410 800D2010 44805000 */  mtc1       $zero, $f10
/* AD414 800D2014 E7A60190 */  swc1       $f6, 0x190($sp)
/* AD418 800D2018 E7AA0198 */  swc1       $f10, 0x198($sp)
/* AD41C 800D201C AE200084 */  sw         $zero, 0x84($s1)
/* AD420 800D2020 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AD424 800D2024 C7A401F8 */  lwc1       $f4, 0x1f8($sp)
/* AD428 800D2028 46063202 */  mul.s      $f8, $f6, $f6
/* AD42C 800D202C 00000000 */  nop
/* AD430 800D2030 46042282 */  mul.s      $f10, $f4, $f4
/* AD434 800D2034 0C036C2C */  jal        func_800DB0B0
/* AD438 800D2038 460A4300 */   add.s     $f12, $f8, $f10
/* AD43C 800D203C E7A000F4 */  swc1       $f0, 0xf4($sp)
/* AD440 800D2040 C63000A8 */  lwc1       $f16, 0xa8($s1)
/* AD444 800D2044 C63200B0 */  lwc1       $f18, 0xb0($s1)
/* AD448 800D2048 46108182 */  mul.s      $f6, $f16, $f16
/* AD44C 800D204C E7B000E8 */  swc1       $f16, 0xe8($sp)
/* AD450 800D2050 E7B200F0 */  swc1       $f18, 0xf0($sp)
/* AD454 800D2054 46129102 */  mul.s      $f4, $f18, $f18
/* AD458 800D2058 0C036C2C */  jal        func_800DB0B0
/* AD45C 800D205C 46043300 */   add.s     $f12, $f6, $f4
/* AD460 800D2060 C7AA00F4 */  lwc1       $f10, 0xf4($sp)
/* AD464 800D2064 3C014024 */  lui        $at, 0x4024
/* AD468 800D2068 44814800 */  mtc1       $at, $f9
/* AD46C 800D206C 44804000 */  mtc1       $zero, $f8
/* AD470 800D2070 460051A1 */  cvt.d.s    $f6, $f10
/* AD474 800D2074 C7B000E8 */  lwc1       $f16, 0xe8($sp)
/* AD478 800D2078 4626403C */  c.lt.d     $f8, $f6
/* AD47C 800D207C C7B200F0 */  lwc1       $f18, 0xf0($sp)
/* AD480 800D2080 3C013FF0 */  lui        $at, 0x3ff0
/* AD484 800D2084 450200CD */  bc1fl      .L800D23BC
/* AD488 800D2088 C62800A8 */   lwc1      $f8, 0xa8($s1)
/* AD48C 800D208C 44812800 */  mtc1       $at, $f5
/* AD490 800D2090 44802000 */  mtc1       $zero, $f4
/* AD494 800D2094 46000221 */  cvt.d.s    $f8, $f0
/* AD498 800D2098 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AD49C 800D209C 4628203C */  c.lt.d     $f4, $f8
/* AD4A0 800D20A0 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AD4A4 800D20A4 450200C5 */  bc1fl      .L800D23BC
/* AD4A8 800D20A8 C62800A8 */   lwc1      $f8, 0xa8($s1)
/* AD4AC 800D20AC 46068102 */  mul.s      $f4, $f16, $f6
/* AD4B0 800D20B0 3C01BFF0 */  lui        $at, 0xbff0
/* AD4B4 800D20B4 46089182 */  mul.s      $f6, $f18, $f8
/* AD4B8 800D20B8 44813800 */  mtc1       $at, $f7
/* AD4BC 800D20BC 3C018011 */  lui        $at, 0x8011
/* AD4C0 800D20C0 46062200 */  add.s      $f8, $f4, $f6
/* AD4C4 800D20C4 46005102 */  mul.s      $f4, $f10, $f0
/* AD4C8 800D20C8 44803000 */  mtc1       $zero, $f6
/* AD4CC 800D20CC 46044303 */  div.s      $f12, $f8, $f4
/* AD4D0 800D20D0 460060A1 */  cvt.d.s    $f2, $f12
/* AD4D4 800D20D4 4622303E */  c.le.d     $f6, $f2
/* AD4D8 800D20D8 00000000 */  nop
/* AD4DC 800D20DC 450200B7 */  bc1fl      .L800D23BC
/* AD4E0 800D20E0 C62800A8 */   lwc1      $f8, 0xa8($s1)
/* AD4E4 800D20E4 D4300538 */  ldc1       $f16, 0x538($at)
/* AD4E8 800D20E8 3C014020 */  lui        $at, 0x4020
/* AD4EC 800D20EC 3C188017 */  lui        $t8, 0x8017
/* AD4F0 800D20F0 4630103C */  c.lt.d     $f2, $f16
/* AD4F4 800D20F4 00000000 */  nop
/* AD4F8 800D20F8 450200B0 */  bc1fl      .L800D23BC
/* AD4FC 800D20FC C62800A8 */   lwc1      $f8, 0xa8($s1)
/* AD500 800D2100 46228281 */  sub.d      $f10, $f16, $f2
/* AD504 800D2104 44814800 */  mtc1       $at, $f9
/* AD508 800D2108 44804000 */  mtc1       $zero, $f8
/* AD50C 800D210C 3C013FF0 */  lui        $at, 0x3ff0
/* AD510 800D2110 44813800 */  mtc1       $at, $f7
/* AD514 800D2114 46285102 */  mul.d      $f4, $f10, $f8
/* AD518 800D2118 44803000 */  mtc1       $zero, $f6
/* AD51C 800D211C 24040014 */  addiu      $a0, $zero, 0x14
/* AD520 800D2120 26250004 */  addiu      $a1, $s1, 4
/* AD524 800D2124 26260008 */  addiu      $a2, $s1, 8
/* AD528 800D2128 2627000C */  addiu      $a3, $s1, 0xc
/* AD52C 800D212C 24080010 */  addiu      $t0, $zero, 0x10
/* AD530 800D2130 46262280 */  add.d      $f10, $f4, $f6
/* AD534 800D2134 44802000 */  mtc1       $zero, $f4
/* AD538 800D2138 44812800 */  mtc1       $at, $f5
/* AD53C 800D213C 3C013F80 */  lui        $at, 0x3f80
/* AD540 800D2140 462053A0 */  cvt.s.d    $f14, $f10
/* AD544 800D2144 46007221 */  cvt.d.s    $f8, $f14
/* AD548 800D2148 4624403C */  c.lt.d     $f8, $f4
/* AD54C 800D214C 00000000 */  nop
/* AD550 800D2150 45020004 */  bc1fl      .L800D2164
/* AD554 800D2154 3C014200 */   lui       $at, 0x4200
/* AD558 800D2158 44817000 */  mtc1       $at, $f14
/* AD55C 800D215C 00000000 */  nop
/* AD560 800D2160 3C014200 */  lui        $at, 0x4200
.L800D2164:
/* AD564 800D2164 44813000 */  mtc1       $at, $f6
/* AD568 800D2168 00000000 */  nop
/* AD56C 800D216C 460E3283 */  div.s      $f10, $f6, $f14
/* AD570 800D2170 4600520D */  trunc.w.s  $f8, $f10
/* AD574 800D2174 44024000 */  mfc1       $v0, $f8
/* AD578 800D2178 00000000 */  nop
/* AD57C 800D217C 1C400002 */  bgtz       $v0, .L800D2188
/* AD580 800D2180 00401825 */   or        $v1, $v0, $zero
/* AD584 800D2184 24030001 */  addiu      $v1, $zero, 1
.L800D2188:
/* AD588 800D2188 8F18499C */  lw         $t8, 0x499c($t8)
/* AD58C 800D218C 0303001A */  div        $zero, $t8, $v1
/* AD590 800D2190 00004810 */  mfhi       $t1
/* AD594 800D2194 14600002 */  bnez       $v1, .L800D21A0
/* AD598 800D2198 00000000 */   nop
/* AD59C 800D219C 0007000D */  break      7
.L800D21A0:
/* AD5A0 800D21A0 2401FFFF */   addiu     $at, $zero, -1
/* AD5A4 800D21A4 14610004 */  bne        $v1, $at, .L800D21B8
/* AD5A8 800D21A8 3C018000 */   lui       $at, 0x8000
/* AD5AC 800D21AC 17010002 */  bne        $t8, $at, .L800D21B8
/* AD5B0 800D21B0 00000000 */   nop
/* AD5B4 800D21B4 0006000D */  break      6
.L800D21B8:
/* AD5B8 800D21B8 55200080 */   bnel      $t1, $zero, .L800D23BC
/* AD5BC 800D21BC C62800A8 */   lwc1      $f8, 0xa8($s1)
/* AD5C0 800D21C0 AFA80010 */  sw         $t0, 0x10($sp)
/* AD5C4 800D21C4 0C021FB4 */  jal        func_80087ED0
/* AD5C8 800D21C8 AFA00014 */   sw        $zero, 0x14($sp)
/* AD5CC 800D21CC 1000007B */  b          .L800D23BC
/* AD5D0 800D21D0 C62800A8 */   lwc1      $f8, 0xa8($s1)
.L800D21D4:
/* AD5D4 800D21D4 3C014034 */  lui        $at, 0x4034
.L800D21D8:
/* AD5D8 800D21D8 44819800 */  mtc1       $at, $f19
/* AD5DC 800D21DC 44809000 */  mtc1       $zero, $f18
/* AD5E0 800D21E0 46002321 */  cvt.d.s    $f12, $f4
/* AD5E4 800D21E4 3C018011 */  lui        $at, 0x8011
/* AD5E8 800D21E8 4632603C */  c.lt.d     $f12, $f18
/* AD5EC 800D21EC 00000000 */  nop
/* AD5F0 800D21F0 45000012 */  bc1f       .L800D223C
/* AD5F4 800D21F4 00000000 */   nop
/* AD5F8 800D21F8 3C018011 */  lui        $at, %hi(D_80110540)
/* AD5FC 800D21FC C4260540 */  lwc1       $f6, %lo(D_80110540)($at)
/* AD600 800D2200 3C013F80 */  lui        $at, 0x3f80
/* AD604 800D2204 44815000 */  mtc1       $at, $f10
/* AD608 800D2208 3C018011 */  lui        $at, %hi(D_80110544)
/* AD60C 800D220C E7A60194 */  swc1       $f6, 0x194($sp)
/* AD610 800D2210 E7AA0190 */  swc1       $f10, 0x190($sp)
/* AD614 800D2214 C4280544 */  lwc1       $f8, %lo(D_80110544)($at)
/* AD618 800D2218 44802000 */  mtc1       $zero, $f4
/* AD61C 800D221C 44803000 */  mtc1       $zero, $f6
/* AD620 800D2220 44805000 */  mtc1       $zero, $f10
/* AD624 800D2224 E7A8018C */  swc1       $f8, 0x18c($sp)
/* AD628 800D2228 E7A401A0 */  swc1       $f4, 0x1a0($sp)
/* AD62C 800D222C E7A6019C */  swc1       $f6, 0x19c($sp)
/* AD630 800D2230 E7AA0198 */  swc1       $f10, 0x198($sp)
/* AD634 800D2234 10000060 */  b          .L800D23B8
/* AD638 800D2238 AE200084 */   sw        $zero, 0x84($s1)
.L800D223C:
/* AD63C 800D223C D4280548 */  ldc1       $f8, 0x548($at)
/* AD640 800D2240 3C013F80 */  lui        $at, 0x3f80
/* AD644 800D2244 4628603C */  c.lt.d     $f12, $f8
/* AD648 800D2248 00000000 */  nop
/* AD64C 800D224C 4502003C */  bc1fl      .L800D2340
/* AD650 800D2250 44813000 */   mtc1      $at, $f6
/* AD654 800D2254 3C018011 */  lui        $at, %hi(D_80110550)
/* AD658 800D2258 D42E0550 */  ldc1       $f14, %lo(D_80110550)($at)
/* AD65C 800D225C 3C018011 */  lui        $at, %hi(D_80110558)
/* AD660 800D2260 D4300558 */  ldc1       $f16, %lo(D_80110558)($at)
/* AD664 800D2264 46326101 */  sub.d      $f4, $f12, $f18
/* AD668 800D2268 3C01402E */  lui        $at, 0x402e
/* AD66C 800D226C 44813800 */  mtc1       $at, $f7
/* AD670 800D2270 44803000 */  mtc1       $zero, $f6
/* AD674 800D2274 3C018011 */  lui        $at, %hi(D_80110560)
/* AD678 800D2278 46262283 */  div.d      $f10, $f4, $f6
/* AD67C 800D227C D4240560 */  ldc1       $f4, %lo(D_80110560)($at)
/* AD680 800D2280 3C018011 */  lui        $at, 0x8011
/* AD684 800D2284 462050A0 */  cvt.s.d    $f2, $f10
/* AD688 800D2288 46001021 */  cvt.d.s    $f0, $f2
/* AD68C 800D228C 46300202 */  mul.d      $f8, $f0, $f16
/* AD690 800D2290 46244180 */  add.d      $f6, $f8, $f4
/* AD694 800D2294 462E0202 */  mul.d      $f8, $f0, $f14
/* AD698 800D2298 462032A0 */  cvt.s.d    $f10, $f6
/* AD69C 800D229C 46287101 */  sub.d      $f4, $f14, $f8
/* AD6A0 800D22A0 E7AA0194 */  swc1       $f10, 0x194($sp)
/* AD6A4 800D22A4 D42A0568 */  ldc1       $f10, 0x568($at)
/* AD6A8 800D22A8 3C018011 */  lui        $at, %hi(D_80110570)
/* AD6AC 800D22AC 462021A0 */  cvt.s.d    $f6, $f4
/* AD6B0 800D22B0 462A0202 */  mul.d      $f8, $f0, $f10
/* AD6B4 800D22B4 D4240570 */  ldc1       $f4, %lo(D_80110570)($at)
/* AD6B8 800D22B8 3C014008 */  lui        $at, 0x4008
/* AD6BC 800D22BC E7A60190 */  swc1       $f6, 0x190($sp)
/* AD6C0 800D22C0 46244180 */  add.d      $f6, $f8, $f4
/* AD6C4 800D22C4 C7A80114 */  lwc1       $f8, 0x114($sp)
/* AD6C8 800D22C8 46024102 */  mul.s      $f4, $f8, $f2
/* AD6CC 800D22CC 462032A0 */  cvt.s.d    $f10, $f6
/* AD6D0 800D22D0 44815800 */  mtc1       $at, $f11
/* AD6D4 800D22D4 E7AA018C */  swc1       $f10, 0x18c($sp)
/* AD6D8 800D22D8 44805000 */  mtc1       $zero, $f10
/* AD6DC 800D22DC 460021A1 */  cvt.d.s    $f6, $f4
/* AD6E0 800D22E0 462A3202 */  mul.d      $f8, $f6, $f10
/* AD6E4 800D22E4 C7A60118 */  lwc1       $f6, 0x118($sp)
/* AD6E8 800D22E8 46023282 */  mul.s      $f10, $f6, $f2
/* AD6EC 800D22EC 46204120 */  cvt.s.d    $f4, $f8
/* AD6F0 800D22F0 44812800 */  mtc1       $at, $f5
/* AD6F4 800D22F4 46005221 */  cvt.d.s    $f8, $f10
/* AD6F8 800D22F8 E7A401A0 */  swc1       $f4, 0x1a0($sp)
/* AD6FC 800D22FC 44802000 */  mtc1       $zero, $f4
/* AD700 800D2300 00000000 */  nop
/* AD704 800D2304 46244182 */  mul.d      $f6, $f8, $f4
/* AD708 800D2308 C7A8011C */  lwc1       $f8, 0x11c($sp)
/* AD70C 800D230C 46024102 */  mul.s      $f4, $f8, $f2
/* AD710 800D2310 462032A0 */  cvt.s.d    $f10, $f6
/* AD714 800D2314 44815800 */  mtc1       $at, $f11
/* AD718 800D2318 460021A1 */  cvt.d.s    $f6, $f4
/* AD71C 800D231C E7AA019C */  swc1       $f10, 0x19c($sp)
/* AD720 800D2320 44805000 */  mtc1       $zero, $f10
/* AD724 800D2324 00000000 */  nop
/* AD728 800D2328 462A3202 */  mul.d      $f8, $f6, $f10
/* AD72C 800D232C 46204120 */  cvt.s.d    $f4, $f8
/* AD730 800D2330 E7A40198 */  swc1       $f4, 0x198($sp)
/* AD734 800D2334 10000020 */  b          .L800D23B8
/* AD738 800D2338 AE200084 */   sw        $zero, 0x84($s1)
/* AD73C 800D233C 44813000 */  mtc1       $at, $f6
.L800D2340:
/* AD740 800D2340 44805000 */  mtc1       $zero, $f10
/* AD744 800D2344 3C018011 */  lui        $at, %hi(D_80110578)
/* AD748 800D2348 C4280578 */  lwc1       $f8, %lo(D_80110578)($at)
/* AD74C 800D234C C7A40114 */  lwc1       $f4, 0x114($sp)
/* AD750 800D2350 3C014008 */  lui        $at, 0x4008
/* AD754 800D2354 E7AA0190 */  swc1       $f10, 0x190($sp)
/* AD758 800D2358 44805000 */  mtc1       $zero, $f10
/* AD75C 800D235C 44815800 */  mtc1       $at, $f11
/* AD760 800D2360 E7A60194 */  swc1       $f6, 0x194($sp)
/* AD764 800D2364 460021A1 */  cvt.d.s    $f6, $f4
/* AD768 800D2368 E7A8018C */  swc1       $f8, 0x18c($sp)
/* AD76C 800D236C 462A3202 */  mul.d      $f8, $f6, $f10
/* AD770 800D2370 C7A60118 */  lwc1       $f6, 0x118($sp)
/* AD774 800D2374 240D0001 */  addiu      $t5, $zero, 1
/* AD778 800D2378 460032A1 */  cvt.d.s    $f10, $f6
/* AD77C 800D237C 46204120 */  cvt.s.d    $f4, $f8
/* AD780 800D2380 44804000 */  mtc1       $zero, $f8
/* AD784 800D2384 44814800 */  mtc1       $at, $f9
/* AD788 800D2388 E7A401A0 */  swc1       $f4, 0x1a0($sp)
/* AD78C 800D238C 46285102 */  mul.d      $f4, $f10, $f8
/* AD790 800D2390 C7AA011C */  lwc1       $f10, 0x11c($sp)
/* AD794 800D2394 46005221 */  cvt.d.s    $f8, $f10
/* AD798 800D2398 462021A0 */  cvt.s.d    $f6, $f4
/* AD79C 800D239C 44802000 */  mtc1       $zero, $f4
/* AD7A0 800D23A0 44812800 */  mtc1       $at, $f5
/* AD7A4 800D23A4 E7A6019C */  swc1       $f6, 0x19c($sp)
/* AD7A8 800D23A8 46244182 */  mul.d      $f6, $f8, $f4
/* AD7AC 800D23AC 462032A0 */  cvt.s.d    $f10, $f6
/* AD7B0 800D23B0 E7AA0198 */  swc1       $f10, 0x198($sp)
/* AD7B4 800D23B4 AE2D0084 */  sw         $t5, 0x84($s1)
.L800D23B8:
/* AD7B8 800D23B8 C62800A8 */  lwc1       $f8, 0xa8($s1)
.L800D23BC:
/* AD7BC 800D23BC E7A800D0 */  swc1       $f8, 0xd0($sp)
/* AD7C0 800D23C0 C62400AC */  lwc1       $f4, 0xac($s1)
/* AD7C4 800D23C4 C7AA00D0 */  lwc1       $f10, 0xd0($sp)
/* AD7C8 800D23C8 E7A400D4 */  swc1       $f4, 0xd4($sp)
/* AD7CC 800D23CC C62600B0 */  lwc1       $f6, 0xb0($s1)
/* AD7D0 800D23D0 460A5202 */  mul.s      $f8, $f10, $f10
/* AD7D4 800D23D4 C7A400D4 */  lwc1       $f4, 0xd4($sp)
/* AD7D8 800D23D8 E7A600D8 */  swc1       $f6, 0xd8($sp)
/* AD7DC 800D23DC 46042182 */  mul.s      $f6, $f4, $f4
/* AD7E0 800D23E0 C7A400D8 */  lwc1       $f4, 0xd8($sp)
/* AD7E4 800D23E4 46064280 */  add.s      $f10, $f8, $f6
/* AD7E8 800D23E8 46042202 */  mul.s      $f8, $f4, $f4
/* AD7EC 800D23EC 0C036C2C */  jal        func_800DB0B0
/* AD7F0 800D23F0 46085300 */   add.s     $f12, $f10, $f8
/* AD7F4 800D23F4 27A400D0 */  addiu      $a0, $sp, 0xd0
/* AD7F8 800D23F8 8C810000 */  lw         $at, ($a0)
/* AD7FC 800D23FC AFA10004 */  sw         $at, 4($sp)
/* AD800 800D2400 8C860004 */  lw         $a2, 4($a0)
/* AD804 800D2404 8FA50004 */  lw         $a1, 4($sp)
/* AD808 800D2408 AFA60008 */  sw         $a2, 8($sp)
/* AD80C 800D240C 8C870008 */  lw         $a3, 8($a0)
/* AD810 800D2410 AFB00010 */  sw         $s0, 0x10($sp)
/* AD814 800D2414 0C035E93 */  jal        func_800D7A4C
/* AD818 800D2418 AFA7000C */   sw        $a3, 0xc($sp)
/* AD81C 800D241C C7A000D0 */  lwc1       $f0, 0xd0($sp)
/* AD820 800D2420 C7A200D4 */  lwc1       $f2, 0xd4($sp)
/* AD824 800D2424 C7AE00D8 */  lwc1       $f14, 0xd8($sp)
/* AD828 800D2428 46000182 */  mul.s      $f6, $f0, $f0
/* AD82C 800D242C 00000000 */  nop
/* AD830 800D2430 46021102 */  mul.s      $f4, $f2, $f2
/* AD834 800D2434 46043280 */  add.s      $f10, $f6, $f4
/* AD838 800D2438 460E7202 */  mul.s      $f8, $f14, $f14
/* AD83C 800D243C 0C036C2C */  jal        func_800DB0B0
/* AD840 800D2440 46085300 */   add.s     $f12, $f10, $f8
/* AD844 800D2444 C7A600D0 */  lwc1       $f6, 0xd0($sp)
/* AD848 800D2448 E62600A8 */  swc1       $f6, 0xa8($s1)
/* AD84C 800D244C C7A400D4 */  lwc1       $f4, 0xd4($sp)
/* AD850 800D2450 C62800A8 */  lwc1       $f8, 0xa8($s1)
/* AD854 800D2454 E62400AC */  swc1       $f4, 0xac($s1)
/* AD858 800D2458 C7AA00D8 */  lwc1       $f10, 0xd8($sp)
/* AD85C 800D245C E62A00B0 */  swc1       $f10, 0xb0($s1)
/* AD860 800D2460 C7A601A0 */  lwc1       $f6, 0x1a0($sp)
/* AD864 800D2464 C62A00AC */  lwc1       $f10, 0xac($s1)
/* AD868 800D2468 46064100 */  add.s      $f4, $f8, $f6
/* AD86C 800D246C E62400A8 */  swc1       $f4, 0xa8($s1)
/* AD870 800D2470 C7A8019C */  lwc1       $f8, 0x19c($sp)
/* AD874 800D2474 C62400B0 */  lwc1       $f4, 0xb0($s1)
/* AD878 800D2478 46085180 */  add.s      $f6, $f10, $f8
/* AD87C 800D247C E62600AC */  swc1       $f6, 0xac($s1)
/* AD880 800D2480 C7AA0198 */  lwc1       $f10, 0x198($sp)
/* AD884 800D2484 C62600A8 */  lwc1       $f6, 0xa8($s1)
/* AD888 800D2488 460A2200 */  add.s      $f8, $f4, $f10
/* AD88C 800D248C E62800B0 */  swc1       $f8, 0xb0($s1)
/* AD890 800D2490 C7A4018C */  lwc1       $f4, 0x18c($sp)
/* AD894 800D2494 C62800AC */  lwc1       $f8, 0xac($s1)
/* AD898 800D2498 46043282 */  mul.s      $f10, $f6, $f4
/* AD89C 800D249C E62A00A8 */  swc1       $f10, 0xa8($s1)
/* AD8A0 800D24A0 C7A6018C */  lwc1       $f6, 0x18c($sp)
/* AD8A4 800D24A4 C62A00B0 */  lwc1       $f10, 0xb0($s1)
/* AD8A8 800D24A8 46064102 */  mul.s      $f4, $f8, $f6
/* AD8AC 800D24AC E62400AC */  swc1       $f4, 0xac($s1)
/* AD8B0 800D24B0 C7A8018C */  lwc1       $f8, 0x18c($sp)
/* AD8B4 800D24B4 46085182 */  mul.s      $f6, $f10, $f8
/* AD8B8 800D24B8 E62600B0 */  swc1       $f6, 0xb0($s1)
/* AD8BC 800D24BC C7AA01F0 */  lwc1       $f10, 0x1f0($sp)
/* AD8C0 800D24C0 C7A40190 */  lwc1       $f4, 0x190($sp)
/* AD8C4 800D24C4 C7A60194 */  lwc1       $f6, 0x194($sp)
/* AD8C8 800D24C8 460A2202 */  mul.s      $f8, $f4, $f10
/* AD8CC 800D24CC C62A00A8 */  lwc1       $f10, 0xa8($s1)
/* AD8D0 800D24D0 460A3282 */  mul.s      $f10, $f6, $f10
/* AD8D4 800D24D4 460A4200 */  add.s      $f8, $f8, $f10
/* AD8D8 800D24D8 C7AA01F4 */  lwc1       $f10, 0x1f4($sp)
/* AD8DC 800D24DC E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* AD8E0 800D24E0 E7A80048 */  swc1       $f8, 0x48($sp)
/* AD8E4 800D24E4 460A2282 */  mul.s      $f10, $f4, $f10
/* AD8E8 800D24E8 C62800AC */  lwc1       $f8, 0xac($s1)
/* AD8EC 800D24EC 46083202 */  mul.s      $f8, $f6, $f8
/* AD8F0 800D24F0 46085280 */  add.s      $f10, $f10, $f8
/* AD8F4 800D24F4 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AD8F8 800D24F8 46082102 */  mul.s      $f4, $f4, $f8
/* AD8FC 800D24FC E7AA01F4 */  swc1       $f10, 0x1f4($sp)
/* AD900 800D2500 C62800B0 */  lwc1       $f8, 0xb0($s1)
/* AD904 800D2504 46083182 */  mul.s      $f6, $f6, $f8
/* AD908 800D2508 46062200 */  add.s      $f8, $f4, $f6
/* AD90C 800D250C C7A40048 */  lwc1       $f4, 0x48($sp)
/* AD910 800D2510 E7A801F8 */  swc1       $f8, 0x1f8($sp)
/* AD914 800D2514 C626009C */  lwc1       $f6, 0x9c($s1)
/* AD918 800D2518 46062100 */  add.s      $f4, $f4, $f6
/* AD91C 800D251C E7A401F0 */  swc1       $f4, 0x1f0($sp)
/* AD920 800D2520 C62600A0 */  lwc1       $f6, 0xa0($s1)
/* AD924 800D2524 46065100 */  add.s      $f4, $f10, $f6
/* AD928 800D2528 E7A401F4 */  swc1       $f4, 0x1f4($sp)
/* AD92C 800D252C C62A00A4 */  lwc1       $f10, 0xa4($s1)
/* AD930 800D2530 AFA00184 */  sw         $zero, 0x184($sp)
/* AD934 800D2534 AFA001B0 */  sw         $zero, 0x1b0($sp)
/* AD938 800D2538 460A4180 */  add.s      $f6, $f8, $f10
/* AD93C 800D253C E7A601F8 */  swc1       $f6, 0x1f8($sp)
/* AD940 800D2540 C7A40218 */  lwc1       $f4, 0x218($sp)
.L800D2544:
/* AD944 800D2544 C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* AD948 800D2548 C7A6021C */  lwc1       $f6, 0x21c($sp)
/* AD94C 800D254C 46082280 */  add.s      $f10, $f4, $f8
/* AD950 800D2550 C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* AD954 800D2554 E7AA0264 */  swc1       $f10, 0x264($sp)
/* AD958 800D2558 46043280 */  add.s      $f10, $f6, $f4
/* AD95C 800D255C C7A60220 */  lwc1       $f6, 0x220($sp)
/* AD960 800D2560 E7AA0268 */  swc1       $f10, 0x268($sp)
/* AD964 800D2564 C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* AD968 800D2568 460A3180 */  add.s      $f6, $f6, $f10
/* AD96C 800D256C E7A6026C */  swc1       $f6, 0x26c($sp)
/* AD970 800D2570 46084182 */  mul.s      $f6, $f8, $f8
/* AD974 800D2574 00000000 */  nop
/* AD978 800D2578 46042202 */  mul.s      $f8, $f4, $f4
/* AD97C 800D257C 46083100 */  add.s      $f4, $f6, $f8
/* AD980 800D2580 460A5182 */  mul.s      $f6, $f10, $f10
/* AD984 800D2584 0C036C2C */  jal        func_800DB0B0
/* AD988 800D2588 46062300 */   add.s     $f12, $f4, $f6
/* AD98C 800D258C C630004C */  lwc1       $f16, 0x4c($s1)
/* AD990 800D2590 46000486 */  mov.s      $f18, $f0
/* AD994 800D2594 8FAF0188 */  lw         $t7, 0x188($sp)
/* AD998 800D2598 4600803E */  c.le.s     $f16, $f0
/* AD99C 800D259C 00000000 */  nop
/* AD9A0 800D25A0 45030009 */  bc1tl      .L800D25C8
/* AD9A4 800D25A4 46128003 */   div.s     $f0, $f16, $f18
/* AD9A8 800D25A8 51E0008A */  beql       $t7, $zero, .L800D27D4
/* AD9AC 800D25AC 8E2D006C */   lw        $t5, 0x6c($s1)
/* AD9B0 800D25B0 46000221 */  cvt.d.s    $f8, $f0
/* AD9B4 800D25B4 4628A03C */  c.lt.d     $f20, $f8
/* AD9B8 800D25B8 00000000 */  nop
/* AD9BC 800D25BC 45020085 */  bc1fl      .L800D27D4
/* AD9C0 800D25C0 8E2D006C */   lw        $t5, 0x6c($s1)
/* AD9C4 800D25C4 46128003 */  div.s      $f0, $f16, $f18
.L800D25C8:
/* AD9C8 800D25C8 C7AA01F0 */  lwc1       $f10, 0x1f0($sp)
/* AD9CC 800D25CC C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* AD9D0 800D25D0 C7A601F8 */  lwc1       $f6, 0x1f8($sp)
/* AD9D4 800D25D4 C7A80264 */  lwc1       $f8, 0x264($sp)
/* AD9D8 800D25D8 27B90218 */  addiu      $t9, $sp, 0x218
/* AD9DC 800D25DC 27B80200 */  addiu      $t8, $sp, 0x200
/* AD9E0 800D25E0 240D0077 */  addiu      $t5, $zero, 0x77
/* AD9E4 800D25E4 240C0001 */  addiu      $t4, $zero, 1
/* AD9E8 800D25E8 240B0001 */  addiu      $t3, $zero, 1
/* AD9EC 800D25EC 46005082 */  mul.s      $f2, $f10, $f0
/* AD9F0 800D25F0 00000000 */  nop
/* AD9F4 800D25F4 46002302 */  mul.s      $f12, $f4, $f0
/* AD9F8 800D25F8 C7A40268 */  lwc1       $f4, 0x268($sp)
/* AD9FC 800D25FC 46003382 */  mul.s      $f14, $f6, $f0
/* ADA00 800D2600 E7A201E4 */  swc1       $f2, 0x1e4($sp)
/* ADA04 800D2604 46024280 */  add.s      $f10, $f8, $f2
/* ADA08 800D2608 C7A8026C */  lwc1       $f8, 0x26c($sp)
/* ADA0C 800D260C E7AC01E8 */  swc1       $f12, 0x1e8($sp)
/* ADA10 800D2610 460C2180 */  add.s      $f6, $f4, $f12
/* ADA14 800D2614 E7AA0200 */  swc1       $f10, 0x200($sp)
/* ADA18 800D2618 E7AE01EC */  swc1       $f14, 0x1ec($sp)
/* ADA1C 800D261C 460E4280 */  add.s      $f10, $f8, $f14
/* ADA20 800D2620 E7A60204 */  swc1       $f6, 0x204($sp)
/* ADA24 800D2624 E7AA0208 */  swc1       $f10, 0x208($sp)
/* ADA28 800D2628 8F210000 */  lw         $at, ($t9)
/* ADA2C 800D262C AFA10000 */  sw         $at, ($sp)
/* ADA30 800D2630 8F250004 */  lw         $a1, 4($t9)
/* ADA34 800D2634 8FA40000 */  lw         $a0, ($sp)
/* ADA38 800D2638 AFA50004 */  sw         $a1, 4($sp)
/* ADA3C 800D263C 8F210008 */  lw         $at, 8($t9)
/* ADA40 800D2640 AFA10008 */  sw         $at, 8($sp)
/* ADA44 800D2644 8F010000 */  lw         $at, ($t8)
/* ADA48 800D2648 8FA60008 */  lw         $a2, 8($sp)
/* ADA4C 800D264C AFA1000C */  sw         $at, 0xc($sp)
/* ADA50 800D2650 8F080004 */  lw         $t0, 4($t8)
/* ADA54 800D2654 8FA7000C */  lw         $a3, 0xc($sp)
/* ADA58 800D2658 AFA80010 */  sw         $t0, 0x10($sp)
/* ADA5C 800D265C 8F010008 */  lw         $at, 8($t8)
/* ADA60 800D2660 AFAB0020 */  sw         $t3, 0x20($sp)
/* ADA64 800D2664 AFAC001C */  sw         $t4, 0x1c($sp)
/* ADA68 800D2668 AFAD0018 */  sw         $t5, 0x18($sp)
/* ADA6C 800D266C 0C032A3E */  jal        func_800CA8F8
/* ADA70 800D2670 AFA10014 */   sw        $at, 0x14($sp)
/* ADA74 800D2674 10400056 */  beqz       $v0, .L800D27D0
/* ADA78 800D2678 00408025 */   or        $s0, $v0, $zero
/* ADA7C 800D267C C4440094 */  lwc1       $f4, 0x94($v0)
/* ADA80 800D2680 C7A601E4 */  lwc1       $f6, 0x1e4($sp)
/* ADA84 800D2684 3C198023 */  lui        $t9, %hi(D_80236980)
/* ADA88 800D2688 27396980 */  addiu      $t9, $t9, %lo(D_80236980)
/* ADA8C 800D268C 46062201 */  sub.s      $f8, $f4, $f6
/* ADA90 800D2690 C7A401E8 */  lwc1       $f4, 0x1e8($sp)
/* ADA94 800D2694 24050001 */  addiu      $a1, $zero, 1
/* ADA98 800D2698 E7A80264 */  swc1       $f8, 0x264($sp)
/* ADA9C 800D269C C44A0098 */  lwc1       $f10, 0x98($v0)
/* ADAA0 800D26A0 46045181 */  sub.s      $f6, $f10, $f4
/* ADAA4 800D26A4 C7AA01EC */  lwc1       $f10, 0x1ec($sp)
/* ADAA8 800D26A8 E7A60268 */  swc1       $f6, 0x268($sp)
/* ADAAC 800D26AC C448009C */  lwc1       $f8, 0x9c($v0)
/* ADAB0 800D26B0 460A4101 */  sub.s      $f4, $f8, $f10
/* ADAB4 800D26B4 E7A4026C */  swc1       $f4, 0x26c($sp)
/* ADAB8 800D26B8 8C4F0004 */  lw         $t7, 4($v0)
/* ADABC 800D26BC 000F5080 */  sll        $t2, $t7, 2
/* ADAC0 800D26C0 014F5021 */  addu       $t2, $t2, $t7
/* ADAC4 800D26C4 000A5080 */  sll        $t2, $t2, 2
/* ADAC8 800D26C8 014F5023 */  subu       $t2, $t2, $t7
/* ADACC 800D26CC 000A5100 */  sll        $t2, $t2, 4
/* ADAD0 800D26D0 0C02CFFF */  jal        func_800B3FFC
/* ADAD4 800D26D4 01592021 */   addu      $a0, $t2, $t9
/* ADAD8 800D26D8 24010002 */  addiu      $at, $zero, 2
/* ADADC 800D26DC 5441003D */  bnel       $v0, $at, .L800D27D4
/* ADAE0 800D26E0 8E2D006C */   lw        $t5, 0x6c($s1)
/* ADAE4 800D26E4 8E010094 */  lw         $at, 0x94($s0)
/* ADAE8 800D26E8 27A401D4 */  addiu      $a0, $sp, 0x1d4
/* ADAEC 800D26EC AFA10004 */  sw         $at, 4($sp)
/* ADAF0 800D26F0 8E060098 */  lw         $a2, 0x98($s0)
/* ADAF4 800D26F4 8FA50004 */  lw         $a1, 4($sp)
/* ADAF8 800D26F8 AFA60008 */  sw         $a2, 8($sp)
/* ADAFC 800D26FC 8E07009C */  lw         $a3, 0x9c($s0)
/* ADB00 800D2700 AFB00010 */  sw         $s0, 0x10($sp)
/* ADB04 800D2704 0C02CAAD */  jal        func_800B2AB4
/* ADB08 800D2708 AFA7000C */   sw        $a3, 0xc($sp)
/* ADB0C 800D270C 0C03606C */  jal        func_800D81B0
/* ADB10 800D2710 27A401D4 */   addiu     $a0, $sp, 0x1d4
/* ADB14 800D2714 27A801D4 */  addiu      $t0, $sp, 0x1d4
/* ADB18 800D2718 8D010000 */  lw         $at, ($t0)
/* ADB1C 800D271C 27B800BC */  addiu      $t8, $sp, 0xbc
/* ADB20 800D2720 44803000 */  mtc1       $zero, $f6
/* ADB24 800D2724 AF010000 */  sw         $at, ($t8)
/* ADB28 800D2728 8D0B0004 */  lw         $t3, 4($t0)
/* ADB2C 800D272C 27AA01F0 */  addiu      $t2, $sp, 0x1f0
/* ADB30 800D2730 27AF00B0 */  addiu      $t7, $sp, 0xb0
/* ADB34 800D2734 AF0B0004 */  sw         $t3, 4($t8)
/* ADB38 800D2738 8D010008 */  lw         $at, 8($t0)
/* ADB3C 800D273C 44804000 */  mtc1       $zero, $f8
/* ADB40 800D2740 AF010008 */  sw         $at, 8($t8)
/* ADB44 800D2744 E7A600C0 */  swc1       $f6, 0xc0($sp)
/* ADB48 800D2748 8D410000 */  lw         $at, ($t2)
/* ADB4C 800D274C ADE10000 */  sw         $at, ($t7)
/* ADB50 800D2750 8D490004 */  lw         $t1, 4($t2)
/* ADB54 800D2754 ADE90004 */  sw         $t1, 4($t7)
/* ADB58 800D2758 8D410008 */  lw         $at, 8($t2)
/* ADB5C 800D275C ADE10008 */  sw         $at, 8($t7)
/* ADB60 800D2760 C7AA01D8 */  lwc1       $f10, 0x1d8($sp)
/* ADB64 800D2764 3C018011 */  lui        $at, %hi(D_80110580)
/* ADB68 800D2768 D4240580 */  ldc1       $f4, %lo(D_80110580)($at)
/* ADB6C 800D276C 460050A1 */  cvt.d.s    $f2, $f10
/* ADB70 800D2770 E7A800B4 */  swc1       $f8, 0xb4($sp)
/* ADB74 800D2774 4622203C */  c.lt.d     $f4, $f2
/* ADB78 800D2778 00000000 */  nop
/* ADB7C 800D277C 45020015 */  bc1fl      .L800D27D4
/* ADB80 800D2780 8E2D006C */   lw        $t5, 0x6c($s1)
/* ADB84 800D2784 4634103C */  c.lt.d     $f2, $f20
/* ADB88 800D2788 C7A600BC */  lwc1       $f6, 0xbc($sp)
/* ADB8C 800D278C C7A800B0 */  lwc1       $f8, 0xb0($sp)
/* ADB90 800D2790 45020010 */  bc1fl      .L800D27D4
/* ADB94 800D2794 8E2D006C */   lw        $t5, 0x6c($s1)
/* ADB98 800D2798 46083282 */  mul.s      $f10, $f6, $f8
/* ADB9C 800D279C 44802000 */  mtc1       $zero, $f4
/* ADBA0 800D27A0 C7A800C4 */  lwc1       $f8, 0xc4($sp)
/* ADBA4 800D27A4 240C0001 */  addiu      $t4, $zero, 1
/* ADBA8 800D27A8 46045180 */  add.s      $f6, $f10, $f4
/* ADBAC 800D27AC C7AA00B8 */  lwc1       $f10, 0xb8($sp)
/* ADBB0 800D27B0 460A4102 */  mul.s      $f4, $f8, $f10
/* ADBB4 800D27B4 46043200 */  add.s      $f8, $f6, $f4
/* ADBB8 800D27B8 460042A1 */  cvt.d.s    $f10, $f8
/* ADBBC 800D27BC 462AA03C */  c.lt.d     $f20, $f10
/* ADBC0 800D27C0 00000000 */  nop
/* ADBC4 800D27C4 45020003 */  bc1fl      .L800D27D4
/* ADBC8 800D27C8 8E2D006C */   lw        $t5, 0x6c($s1)
/* ADBCC 800D27CC AFAC0184 */  sw         $t4, 0x184($sp)
.L800D27D0:
/* ADBD0 800D27D0 8E2D006C */  lw         $t5, 0x6c($s1)
.L800D27D4:
/* ADBD4 800D27D4 C630004C */  lwc1       $f16, 0x4c($s1)
/* ADBD8 800D27D8 27A40264 */  addiu      $a0, $sp, 0x264
/* ADBDC 800D27DC 55A0000E */  bnel       $t5, $zero, .L800D2818
/* ADBE0 800D27E0 C6240050 */   lwc1      $f4, 0x50($s1)
/* ADBE4 800D27E4 8C810000 */  lw         $at, ($a0)
/* ADBE8 800D27E8 240B0033 */  addiu      $t3, $zero, 0x33
/* ADBEC 800D27EC AFA10004 */  sw         $at, 4($sp)
/* ADBF0 800D27F0 8C860004 */  lw         $a2, 4($a0)
/* ADBF4 800D27F4 8FA50004 */  lw         $a1, 4($sp)
/* ADBF8 800D27F8 AFA60008 */  sw         $a2, 8($sp)
/* ADBFC 800D27FC 8C870008 */  lw         $a3, 8($a0)
/* ADC00 800D2800 AFAB0014 */  sw         $t3, 0x14($sp)
/* ADC04 800D2804 E7B00010 */  swc1       $f16, 0x10($sp)
/* ADC08 800D2808 0C0329CD */  jal        func_800CA734
/* ADC0C 800D280C AFA7000C */   sw        $a3, 0xc($sp)
/* ADC10 800D2810 C630004C */  lwc1       $f16, 0x4c($s1)
/* ADC14 800D2814 C6240050 */  lwc1       $f4, 0x50($s1)
.L800D2818:
/* ADC18 800D2818 C7A60268 */  lwc1       $f6, 0x268($sp)
/* ADC1C 800D281C 27B90264 */  addiu      $t9, $sp, 0x264
/* ADC20 800D2820 46102201 */  sub.s      $f8, $f4, $f16
/* ADC24 800D2824 27A90264 */  addiu      $t1, $sp, 0x264
/* ADC28 800D2828 46083281 */  sub.s      $f10, $f6, $f8
/* ADC2C 800D282C E7AA0268 */  swc1       $f10, 0x268($sp)
/* ADC30 800D2830 8E2E006C */  lw         $t6, 0x6c($s1)
/* ADC34 800D2834 55C0001B */  bnel       $t6, $zero, .L800D28A4
/* ADC38 800D2838 8D210000 */   lw        $at, ($t1)
/* ADC3C 800D283C 8F210000 */  lw         $at, ($t9)
/* ADC40 800D2840 44803000 */  mtc1       $zero, $f6
/* ADC44 800D2844 AFA10000 */  sw         $at, ($sp)
/* ADC48 800D2848 8F250004 */  lw         $a1, 4($t9)
/* ADC4C 800D284C 8FA40000 */  lw         $a0, ($sp)
/* ADC50 800D2850 AFA50004 */  sw         $a1, 4($sp)
/* ADC54 800D2854 8F210008 */  lw         $at, 8($t9)
/* ADC58 800D2858 AFA10008 */  sw         $at, 8($sp)
/* ADC5C 800D285C C624004C */  lwc1       $f4, 0x4c($s1)
/* ADC60 800D2860 3C014008 */  lui        $at, 0x4008
/* ADC64 800D2864 44813800 */  mtc1       $at, $f7
/* ADC68 800D2868 46002021 */  cvt.d.s    $f0, $f4
/* ADC6C 800D286C 3C01C000 */  lui        $at, 0xc000
/* ADC70 800D2870 46260202 */  mul.d      $f8, $f0, $f6
/* ADC74 800D2874 44812800 */  mtc1       $at, $f5
/* ADC78 800D2878 44802000 */  mtc1       $zero, $f4
/* ADC7C 800D287C 8FA60008 */  lw         $a2, 8($sp)
/* ADC80 800D2880 46240182 */  mul.d      $f6, $f0, $f4
/* ADC84 800D2884 462042A0 */  cvt.s.d    $f10, $f8
/* ADC88 800D2888 46203220 */  cvt.s.d    $f8, $f6
/* ADC8C 800D288C 44075000 */  mfc1       $a3, $f10
/* ADC90 800D2890 0C032BE2 */  jal        func_800CAF88
/* ADC94 800D2894 E7A80010 */   swc1      $f8, 0x10($sp)
/* ADC98 800D2898 10000014 */  b          .L800D28EC
/* ADC9C 800D289C 00408025 */   or        $s0, $v0, $zero
/* ADCA0 800D28A0 8D210000 */  lw         $at, ($t1)
.L800D28A4:
/* ADCA4 800D28A4 44803000 */  mtc1       $zero, $f6
/* ADCA8 800D28A8 3C0740A0 */  lui        $a3, 0x40a0
/* ADCAC 800D28AC AFA10000 */  sw         $at, ($sp)
/* ADCB0 800D28B0 8D250004 */  lw         $a1, 4($t1)
/* ADCB4 800D28B4 8FA40000 */  lw         $a0, ($sp)
/* ADCB8 800D28B8 AFA50004 */  sw         $a1, 4($sp)
/* ADCBC 800D28BC 8D210008 */  lw         $at, 8($t1)
/* ADCC0 800D28C0 AFA10008 */  sw         $at, 8($sp)
/* ADCC4 800D28C4 C62A004C */  lwc1       $f10, 0x4c($s1)
/* ADCC8 800D28C8 3C01C000 */  lui        $at, 0xc000
/* ADCCC 800D28CC 44813800 */  mtc1       $at, $f7
/* ADCD0 800D28D0 46005121 */  cvt.d.s    $f4, $f10
/* ADCD4 800D28D4 8FA60008 */  lw         $a2, 8($sp)
/* ADCD8 800D28D8 46262202 */  mul.d      $f8, $f4, $f6
/* ADCDC 800D28DC 462042A0 */  cvt.s.d    $f10, $f8
/* ADCE0 800D28E0 0C032BE2 */  jal        func_800CAF88
/* ADCE4 800D28E4 E7AA0010 */   swc1      $f10, 0x10($sp)
/* ADCE8 800D28E8 00408025 */  or         $s0, $v0, $zero
.L800D28EC:
/* ADCEC 800D28EC 5040005E */  beql       $v0, $zero, .L800D2A68
/* ADCF0 800D28F0 24020001 */   addiu     $v0, $zero, 1
/* ADCF4 800D28F4 8E01005C */  lw         $at, 0x5c($s0)
/* ADCF8 800D28F8 27A701BC */  addiu      $a3, $sp, 0x1bc
/* ADCFC 800D28FC 27AB01B8 */  addiu      $t3, $sp, 0x1b8
/* ADD00 800D2900 AFA10000 */  sw         $at, ($sp)
/* ADD04 800D2904 8E050060 */  lw         $a1, 0x60($s0)
/* ADD08 800D2908 8FA40000 */  lw         $a0, ($sp)
/* ADD0C 800D290C AFA50004 */  sw         $a1, 4($sp)
/* ADD10 800D2910 8E060064 */  lw         $a2, 0x64($s0)
/* ADD14 800D2914 AFA70014 */  sw         $a3, 0x14($sp)
/* ADD18 800D2918 AFAB0010 */  sw         $t3, 0x10($sp)
/* ADD1C 800D291C 0C0360CE */  jal        func_800D8338
/* ADD20 800D2920 AFA60008 */   sw        $a2, 8($sp)
/* ADD24 800D2924 C7A601B8 */  lwc1       $f6, 0x1b8($sp)
/* ADD28 800D2928 3C018011 */  lui        $at, %hi(D_80110588)
/* ADD2C 800D292C D4240588 */  ldc1       $f4, %lo(D_80110588)($at)
/* ADD30 800D2930 46003221 */  cvt.d.s    $f8, $f6
/* ADD34 800D2934 C7AA0240 */  lwc1       $f10, 0x240($sp)
/* ADD38 800D2938 4628203C */  c.lt.d     $f4, $f8
/* ADD3C 800D293C 00000000 */  nop
/* ADD40 800D2940 45000046 */  bc1f       .L800D2A5C
/* ADD44 800D2944 00000000 */   nop
/* ADD48 800D2948 C6060098 */  lwc1       $f6, 0x98($s0)
/* ADD4C 800D294C C7A401AC */  lwc1       $f4, 0x1ac($sp)
/* ADD50 800D2950 4606503C */  c.lt.s     $f10, $f6
/* ADD54 800D2954 00000000 */  nop
/* ADD58 800D2958 45000040 */  bc1f       .L800D2A5C
/* ADD5C 800D295C 00000000 */   nop
/* ADD60 800D2960 C60C0060 */  lwc1       $f12, 0x60($s0)
/* ADD64 800D2964 C6000064 */  lwc1       $f0, 0x64($s0)
/* ADD68 800D2968 C7AA01A8 */  lwc1       $f10, 0x1a8($sp)
/* ADD6C 800D296C 46046202 */  mul.s      $f8, $f12, $f4
/* ADD70 800D2970 C602005C */  lwc1       $f2, 0x5c($s0)
/* ADD74 800D2974 00001025 */  or         $v0, $zero, $zero
/* ADD78 800D2978 460A0182 */  mul.s      $f6, $f0, $f10
/* ADD7C 800D297C 46064381 */  sub.s      $f14, $f8, $f6
/* ADD80 800D2980 C7A801A4 */  lwc1       $f8, 0x1a4($sp)
/* ADD84 800D2984 46080182 */  mul.s      $f6, $f0, $f8
/* ADD88 800D2988 00000000 */  nop
/* ADD8C 800D298C 46041102 */  mul.s      $f4, $f2, $f4
/* ADD90 800D2990 46043401 */  sub.s      $f16, $f6, $f4
/* ADD94 800D2994 460A1182 */  mul.s      $f6, $f2, $f10
/* ADD98 800D2998 460072A1 */  cvt.d.s    $f10, $f14
/* ADD9C 800D299C 46086102 */  mul.s      $f4, $f12, $f8
/* ADDA0 800D29A0 462AA032 */  c.eq.d     $f20, $f10
/* ADDA4 800D29A4 00000000 */  nop
/* ADDA8 800D29A8 45000010 */  bc1f       .L800D29EC
/* ADDAC 800D29AC 46043481 */   sub.s     $f18, $f6, $f4
/* ADDB0 800D29B0 46008221 */  cvt.d.s    $f8, $f16
/* ADDB4 800D29B4 4628A032 */  c.eq.d     $f20, $f8
/* ADDB8 800D29B8 00000000 */  nop
/* ADDBC 800D29BC 4502000C */  bc1fl      .L800D29F0
/* ADDC0 800D29C0 C7A401F0 */   lwc1      $f4, 0x1f0($sp)
/* ADDC4 800D29C4 460091A1 */  cvt.d.s    $f6, $f18
/* ADDC8 800D29C8 27A401F0 */  addiu      $a0, $sp, 0x1f0
/* ADDCC 800D29CC 4626A032 */  c.eq.d     $f20, $f6
/* ADDD0 800D29D0 00000000 */  nop
/* ADDD4 800D29D4 45020006 */  bc1fl      .L800D29F0
/* ADDD8 800D29D8 C7A401F0 */   lwc1      $f4, 0x1f0($sp)
/* ADDDC 800D29DC 0C036066 */  jal        func_800D8198
/* ADDE0 800D29E0 AFA001B4 */   sw        $zero, 0x1b4($sp)
/* ADDE4 800D29E4 10000019 */  b          .L800D2A4C
/* ADDE8 800D29E8 8FA201B4 */   lw        $v0, 0x1b4($sp)
.L800D29EC:
/* ADDEC 800D29EC C7A401F0 */  lwc1       $f4, 0x1f0($sp)
.L800D29F0:
/* ADDF0 800D29F0 C7A801F4 */  lwc1       $f8, 0x1f4($sp)
/* ADDF4 800D29F4 46047282 */  mul.s      $f10, $f14, $f4
/* ADDF8 800D29F8 00000000 */  nop
/* ADDFC 800D29FC 46088182 */  mul.s      $f6, $f16, $f8
/* ADE00 800D2A00 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* ADE04 800D2A04 46065100 */  add.s      $f4, $f10, $f6
/* ADE08 800D2A08 46089282 */  mul.s      $f10, $f18, $f8
/* ADE0C 800D2A0C 460A2180 */  add.s      $f6, $f4, $f10
/* ADE10 800D2A10 460E7202 */  mul.s      $f8, $f14, $f14
/* ADE14 800D2A14 00000000 */  nop
/* ADE18 800D2A18 46108102 */  mul.s      $f4, $f16, $f16
/* ADE1C 800D2A1C 46044280 */  add.s      $f10, $f8, $f4
/* ADE20 800D2A20 46129202 */  mul.s      $f8, $f18, $f18
/* ADE24 800D2A24 46085100 */  add.s      $f4, $f10, $f8
/* ADE28 800D2A28 46043083 */  div.s      $f2, $f6, $f4
/* ADE2C 800D2A2C 460E1282 */  mul.s      $f10, $f2, $f14
/* ADE30 800D2A30 00000000 */  nop
/* ADE34 800D2A34 46101202 */  mul.s      $f8, $f2, $f16
/* ADE38 800D2A38 00000000 */  nop
/* ADE3C 800D2A3C 46121182 */  mul.s      $f6, $f2, $f18
/* ADE40 800D2A40 E7AA01F0 */  swc1       $f10, 0x1f0($sp)
/* ADE44 800D2A44 E7A801F4 */  swc1       $f8, 0x1f4($sp)
/* ADE48 800D2A48 E7A601F8 */  swc1       $f6, 0x1f8($sp)
.L800D2A4C:
/* ADE4C 800D2A4C 8FAE01B0 */  lw         $t6, 0x1b0($sp)
/* ADE50 800D2A50 25CF0001 */  addiu      $t7, $t6, 1
/* ADE54 800D2A54 10000004 */  b          .L800D2A68
/* ADE58 800D2A58 AFAF01B0 */   sw        $t7, 0x1b0($sp)
.L800D2A5C:
/* ADE5C 800D2A5C 10000002 */  b          .L800D2A68
/* ADE60 800D2A60 24020001 */   addiu     $v0, $zero, 1
/* ADE64 800D2A64 24020001 */  addiu      $v0, $zero, 1
.L800D2A68:
/* ADE68 800D2A68 14400004 */  bnez       $v0, .L800D2A7C
/* ADE6C 800D2A6C 8FB901B0 */   lw        $t9, 0x1b0($sp)
/* ADE70 800D2A70 2B210003 */  slti       $at, $t9, 3
/* ADE74 800D2A74 5420FEB3 */  bnel       $at, $zero, .L800D2544
/* ADE78 800D2A78 C7A40218 */   lwc1      $f4, 0x218($sp)
.L800D2A7C:
/* ADE7C 800D2A7C 1200006C */  beqz       $s0, .L800D2C30
/* ADE80 800D2A80 27AF0264 */   addiu     $t7, $sp, 0x264
/* ADE84 800D2A84 8E010094 */  lw         $at, 0x94($s0)
/* ADE88 800D2A88 27AA020C */  addiu      $t2, $sp, 0x20c
/* ADE8C 800D2A8C 02202025 */  or         $a0, $s1, $zero
/* ADE90 800D2A90 AD410000 */  sw         $at, ($t2)
/* ADE94 800D2A94 8E090098 */  lw         $t1, 0x98($s0)
/* ADE98 800D2A98 02002825 */  or         $a1, $s0, $zero
/* ADE9C 800D2A9C 00003025 */  or         $a2, $zero, $zero
/* ADEA0 800D2AA0 AD490004 */  sw         $t1, 4($t2)
/* ADEA4 800D2AA4 8E01009C */  lw         $at, 0x9c($s0)
/* ADEA8 800D2AA8 AD410008 */  sw         $at, 8($t2)
/* ADEAC 800D2AAC 0C033EDB */  jal        func_800CFB6C
/* ADEB0 800D2AB0 AFA001C0 */   sw        $zero, 0x1c0($sp)
/* ADEB4 800D2AB4 8E0D0004 */  lw         $t5, 4($s0)
/* ADEB8 800D2AB8 3C018023 */  lui        $at, 0x8023
/* ADEBC 800D2ABC 27A8020C */  addiu      $t0, $sp, 0x20c
/* ADEC0 800D2AC0 000DC080 */  sll        $t8, $t5, 2
/* ADEC4 800D2AC4 030DC021 */  addu       $t8, $t8, $t5
/* ADEC8 800D2AC8 0018C080 */  sll        $t8, $t8, 2
/* ADECC 800D2ACC 030DC023 */  subu       $t8, $t8, $t5
/* ADED0 800D2AD0 0018C100 */  sll        $t8, $t8, 4
/* ADED4 800D2AD4 00380821 */  addu       $at, $at, $t8
/* ADED8 800D2AD8 C42469A8 */  lwc1       $f4, 0x69a8($at)
/* ADEDC 800D2ADC 27A20094 */  addiu      $v0, $sp, 0x94
/* ADEE0 800D2AE0 27B9020C */  addiu      $t9, $sp, 0x20c
/* ADEE4 800D2AE4 E7A40084 */  swc1       $f4, 0x84($sp)
/* ADEE8 800D2AE8 8D010000 */  lw         $at, ($t0)
/* ADEEC 800D2AEC 27A30088 */  addiu      $v1, $sp, 0x88
/* ADEF0 800D2AF0 240A0001 */  addiu      $t2, $zero, 1
/* ADEF4 800D2AF4 AC410000 */  sw         $at, ($v0)
/* ADEF8 800D2AF8 8D0F0004 */  lw         $t7, 4($t0)
/* ADEFC 800D2AFC AC4F0004 */  sw         $t7, 4($v0)
/* ADF00 800D2B00 8D010008 */  lw         $at, 8($t0)
/* ADF04 800D2B04 24080077 */  addiu      $t0, $zero, 0x77
/* ADF08 800D2B08 240F0001 */  addiu      $t7, $zero, 1
/* ADF0C 800D2B0C AC410008 */  sw         $at, 8($v0)
/* ADF10 800D2B10 8F210000 */  lw         $at, ($t9)
/* ADF14 800D2B14 AC610000 */  sw         $at, ($v1)
/* ADF18 800D2B18 8F290004 */  lw         $t1, 4($t9)
/* ADF1C 800D2B1C AC690004 */  sw         $t1, 4($v1)
/* ADF20 800D2B20 8F210008 */  lw         $at, 8($t9)
/* ADF24 800D2B24 AC610008 */  sw         $at, 8($v1)
/* ADF28 800D2B28 C62A0050 */  lwc1       $f10, 0x50($s1)
/* ADF2C 800D2B2C 3C018011 */  lui        $at, %hi(D_80110590)
/* ADF30 800D2B30 D4260590 */  ldc1       $f6, %lo(D_80110590)($at)
/* ADF34 800D2B34 46005221 */  cvt.d.s    $f8, $f10
/* ADF38 800D2B38 C7AA008C */  lwc1       $f10, 0x8c($sp)
/* ADF3C 800D2B3C 46264102 */  mul.d      $f4, $f8, $f6
/* ADF40 800D2B40 46005221 */  cvt.d.s    $f8, $f10
/* ADF44 800D2B44 46244180 */  add.d      $f6, $f8, $f4
/* ADF48 800D2B48 462032A0 */  cvt.s.d    $f10, $f6
/* ADF4C 800D2B4C E7AA008C */  swc1       $f10, 0x8c($sp)
/* ADF50 800D2B50 8C410000 */  lw         $at, ($v0)
/* ADF54 800D2B54 AFA10000 */  sw         $at, ($sp)
/* ADF58 800D2B58 8C450004 */  lw         $a1, 4($v0)
/* ADF5C 800D2B5C 8FA40000 */  lw         $a0, ($sp)
/* ADF60 800D2B60 AFA50004 */  sw         $a1, 4($sp)
/* ADF64 800D2B64 8C410008 */  lw         $at, 8($v0)
/* ADF68 800D2B68 AFA10008 */  sw         $at, 8($sp)
/* ADF6C 800D2B6C 8C610000 */  lw         $at, ($v1)
/* ADF70 800D2B70 8FA60008 */  lw         $a2, 8($sp)
/* ADF74 800D2B74 AFA1000C */  sw         $at, 0xc($sp)
/* ADF78 800D2B78 8C6B0004 */  lw         $t3, 4($v1)
/* ADF7C 800D2B7C 8FA7000C */  lw         $a3, 0xc($sp)
/* ADF80 800D2B80 AFAB0010 */  sw         $t3, 0x10($sp)
/* ADF84 800D2B84 8C610008 */  lw         $at, 8($v1)
/* ADF88 800D2B88 AFAA0020 */  sw         $t2, 0x20($sp)
/* ADF8C 800D2B8C AFAF001C */  sw         $t7, 0x1c($sp)
/* ADF90 800D2B90 AFA80018 */  sw         $t0, 0x18($sp)
/* ADF94 800D2B94 0C032A3E */  jal        func_800CA8F8
/* ADF98 800D2B98 AFA10014 */   sw        $at, 0x14($sp)
/* ADF9C 800D2B9C 5040001F */  beql       $v0, $zero, .L800D2C1C
/* ADFA0 800D2BA0 8FAE0184 */   lw        $t6, 0x184($sp)
/* ADFA4 800D2BA4 8E2C006C */  lw         $t4, 0x6c($s1)
/* ADFA8 800D2BA8 5580001C */  bnel       $t4, $zero, .L800D2C1C
/* ADFAC 800D2BAC 8FAE0184 */   lw        $t6, 0x184($sp)
/* ADFB0 800D2BB0 8C590004 */  lw         $t9, 4($v0)
/* ADFB4 800D2BB4 3C0D8023 */  lui        $t5, %hi(D_80236980)
/* ADFB8 800D2BB8 25AD6980 */  addiu      $t5, $t5, %lo(D_80236980)
/* ADFBC 800D2BBC 00194880 */  sll        $t1, $t9, 2
/* ADFC0 800D2BC0 01394821 */  addu       $t1, $t1, $t9
/* ADFC4 800D2BC4 00094880 */  sll        $t1, $t1, 2
/* ADFC8 800D2BC8 01394823 */  subu       $t1, $t1, $t9
/* ADFCC 800D2BCC 00094900 */  sll        $t1, $t1, 4
/* ADFD0 800D2BD0 012D2021 */  addu       $a0, $t1, $t5
/* ADFD4 800D2BD4 C4880028 */  lwc1       $f8, 0x28($a0)
/* ADFD8 800D2BD8 24050001 */  addiu      $a1, $zero, 1
/* ADFDC 800D2BDC 0C02CFFF */  jal        func_800B3FFC
/* ADFE0 800D2BE0 E7A80080 */   swc1      $f8, 0x80($sp)
/* ADFE4 800D2BE4 C7A40080 */  lwc1       $f4, 0x80($sp)
/* ADFE8 800D2BE8 C7A60084 */  lwc1       $f6, 0x84($sp)
/* ADFEC 800D2BEC 24010002 */  addiu      $at, $zero, 2
/* ADFF0 800D2BF0 24180001 */  addiu      $t8, $zero, 1
/* ADFF4 800D2BF4 46062281 */  sub.s      $f10, $f4, $f6
/* ADFF8 800D2BF8 46005221 */  cvt.d.s    $f8, $f10
/* ADFFC 800D2BFC 4634403C */  c.lt.d     $f8, $f20
/* AE000 800D2C00 00000000 */  nop
/* AE004 800D2C04 45030004 */  bc1tl      .L800D2C18
/* AE008 800D2C08 AE38006C */   sw        $t8, 0x6c($s1)
/* AE00C 800D2C0C 54410003 */  bnel       $v0, $at, .L800D2C1C
/* AE010 800D2C10 8FAE0184 */   lw        $t6, 0x184($sp)
/* AE014 800D2C14 AE38006C */  sw         $t8, 0x6c($s1)
.L800D2C18:
/* AE018 800D2C18 8FAE0184 */  lw         $t6, 0x184($sp)
.L800D2C1C:
/* AE01C 800D2C1C 240B0001 */  addiu      $t3, $zero, 1
/* AE020 800D2C20 11C0000E */  beqz       $t6, .L800D2C5C
/* AE024 800D2C24 00000000 */   nop
/* AE028 800D2C28 1000000C */  b          .L800D2C5C
/* AE02C 800D2C2C AE2B006C */   sw        $t3, 0x6c($s1)
.L800D2C30:
/* AE030 800D2C30 8DE10000 */  lw         $at, ($t7)
/* AE034 800D2C34 27A8020C */  addiu      $t0, $sp, 0x20c
/* AE038 800D2C38 24190001 */  addiu      $t9, $zero, 1
/* AE03C 800D2C3C AD010000 */  sw         $at, ($t0)
/* AE040 800D2C40 8DEC0004 */  lw         $t4, 4($t7)
/* AE044 800D2C44 02202025 */  or         $a0, $s1, $zero
/* AE048 800D2C48 AD0C0004 */  sw         $t4, 4($t0)
/* AE04C 800D2C4C 8DE10008 */  lw         $at, 8($t7)
/* AE050 800D2C50 AD010008 */  sw         $at, 8($t0)
/* AE054 800D2C54 0C033F6E */  jal        func_800CFDB8
/* AE058 800D2C58 AFB901C0 */   sw        $t9, 0x1c0($sp)
.L800D2C5C:
/* AE05C 800D2C5C 100001DD */  b          .L800D33D4
/* AE060 800D2C60 8FB00274 */   lw        $s0, 0x274($sp)
.L800D2C64:
/* AE064 800D2C64 C6240024 */  lwc1       $f4, 0x24($s1)
.L800D2C68:
/* AE068 800D2C68 C6260048 */  lwc1       $f6, 0x48($s1)
/* AE06C 800D2C6C 27A401D4 */  addiu      $a0, $sp, 0x1d4
/* AE070 800D2C70 02202825 */  or         $a1, $s1, $zero
/* AE074 800D2C74 46062282 */  mul.s      $f10, $f4, $f6
/* AE078 800D2C78 E7AA01F0 */  swc1       $f10, 0x1f0($sp)
/* AE07C 800D2C7C C6240048 */  lwc1       $f4, 0x48($s1)
/* AE080 800D2C80 C6280028 */  lwc1       $f8, 0x28($s1)
/* AE084 800D2C84 46044182 */  mul.s      $f6, $f8, $f4
/* AE088 800D2C88 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AE08C 800D2C8C C6280048 */  lwc1       $f8, 0x48($s1)
/* AE090 800D2C90 C62A002C */  lwc1       $f10, 0x2c($s1)
/* AE094 800D2C94 46085102 */  mul.s      $f4, $f10, $f8
/* AE098 800D2C98 0C034037 */  jal        func_800D00DC
/* AE09C 800D2C9C E7A401F8 */   swc1      $f4, 0x1f8($sp)
/* AE0A0 800D2CA0 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AE0A4 800D2CA4 C7AA01D4 */  lwc1       $f10, 0x1d4($sp)
/* AE0A8 800D2CA8 C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* AE0AC 800D2CAC 460A3200 */  add.s      $f8, $f6, $f10
/* AE0B0 800D2CB0 C7A601D8 */  lwc1       $f6, 0x1d8($sp)
/* AE0B4 800D2CB4 46062280 */  add.s      $f10, $f4, $f6
/* AE0B8 800D2CB8 C7A601DC */  lwc1       $f6, 0x1dc($sp)
/* AE0BC 800D2CBC C7A401F8 */  lwc1       $f4, 0x1f8($sp)
/* AE0C0 800D2CC0 E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* AE0C4 800D2CC4 E7AA01F4 */  swc1       $f10, 0x1f4($sp)
/* AE0C8 800D2CC8 46062100 */  add.s      $f4, $f4, $f6
/* AE0CC 800D2CCC E7A401F8 */  swc1       $f4, 0x1f8($sp)
/* AE0D0 800D2CD0 8E23007C */  lw         $v1, 0x7c($s1)
/* AE0D4 800D2CD4 04600011 */  bltz       $v1, .L800D2D1C
/* AE0D8 800D2CD8 00000000 */   nop
/* AE0DC 800D2CDC 8E29008C */  lw         $t1, 0x8c($s1)
/* AE0E0 800D2CE0 1520000E */  bnez       $t1, .L800D2D1C
/* AE0E4 800D2CE4 00000000 */   nop
/* AE0E8 800D2CE8 8E2D0060 */  lw         $t5, 0x60($s1)
/* AE0EC 800D2CEC 15A0000B */  bnez       $t5, .L800D2D1C
/* AE0F0 800D2CF0 00000000 */   nop
/* AE0F4 800D2CF4 C626009C */  lwc1       $f6, 0x9c($s1)
/* AE0F8 800D2CF8 46064200 */  add.s      $f8, $f8, $f6
/* AE0FC 800D2CFC E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* AE100 800D2D00 C62600A0 */  lwc1       $f6, 0xa0($s1)
/* AE104 800D2D04 46065200 */  add.s      $f8, $f10, $f6
/* AE108 800D2D08 E7A801F4 */  swc1       $f8, 0x1f4($sp)
/* AE10C 800D2D0C C62A00A4 */  lwc1       $f10, 0xa4($s1)
/* AE110 800D2D10 460A2180 */  add.s      $f6, $f4, $f10
/* AE114 800D2D14 E7A601F8 */  swc1       $f6, 0x1f8($sp)
/* AE118 800D2D18 8E23007C */  lw         $v1, 0x7c($s1)
.L800D2D1C:
/* AE11C 800D2D1C 04600011 */  bltz       $v1, .L800D2D64
/* AE120 800D2D20 0003C080 */   sll       $t8, $v1, 2
/* AE124 800D2D24 0303C021 */  addu       $t8, $t8, $v1
/* AE128 800D2D28 0018C080 */  sll        $t8, $t8, 2
/* AE12C 800D2D2C 0303C023 */  subu       $t8, $t8, $v1
/* AE130 800D2D30 0018C100 */  sll        $t8, $t8, 4
/* AE134 800D2D34 3C0E8023 */  lui        $t6, %hi(D_80236AAC)
/* AE138 800D2D38 01D87021 */  addu       $t6, $t6, $t8
/* AE13C 800D2D3C 8DCE6AAC */  lw         $t6, %lo(D_80236AAC)($t6)
/* AE140 800D2D40 19C00008 */  blez       $t6, .L800D2D64
/* AE144 800D2D44 00000000 */   nop
/* AE148 800D2D48 8E2B0060 */  lw         $t3, 0x60($s1)
/* AE14C 800D2D4C 15600005 */  bnez       $t3, .L800D2D64
/* AE150 800D2D50 00000000 */   nop
/* AE154 800D2D54 C62800A8 */  lwc1       $f8, 0xa8($s1)
/* AE158 800D2D58 E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* AE15C 800D2D5C C62400B0 */  lwc1       $f4, 0xb0($s1)
/* AE160 800D2D60 E7A401F8 */  swc1       $f4, 0x1f8($sp)
.L800D2D64:
/* AE164 800D2D64 0C036066 */  jal        func_800D8198
/* AE168 800D2D68 27A401D4 */   addiu     $a0, $sp, 0x1d4
/* AE16C 800D2D6C C7AA01F0 */  lwc1       $f10, 0x1f0($sp)
/* AE170 800D2D70 C7A801F4 */  lwc1       $f8, 0x1f4($sp)
/* AE174 800D2D74 460A5182 */  mul.s      $f6, $f10, $f10
/* AE178 800D2D78 00000000 */  nop
/* AE17C 800D2D7C 46084102 */  mul.s      $f4, $f8, $f8
/* AE180 800D2D80 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AE184 800D2D84 46043280 */  add.s      $f10, $f6, $f4
/* AE188 800D2D88 46084182 */  mul.s      $f6, $f8, $f8
/* AE18C 800D2D8C 0C036C2C */  jal        func_800DB0B0
/* AE190 800D2D90 46065300 */   add.s     $f12, $f10, $f6
/* AE194 800D2D94 44802000 */  mtc1       $zero, $f4
/* AE198 800D2D98 C7A801F4 */  lwc1       $f8, 0x1f4($sp)
/* AE19C 800D2D9C 46000486 */  mov.s      $f18, $f0
/* AE1A0 800D2DA0 4608203C */  c.lt.s     $f4, $f8
/* AE1A4 800D2DA4 00000000 */  nop
/* AE1A8 800D2DA8 45020064 */  bc1fl      .L800D2F3C
/* AE1AC 800D2DAC C630004C */   lwc1      $f16, 0x4c($s1)
/* AE1B0 800D2DB0 C630004C */  lwc1       $f16, 0x4c($s1)
/* AE1B4 800D2DB4 8FAA0188 */  lw         $t2, 0x188($sp)
/* AE1B8 800D2DB8 4600803E */  c.le.s     $f16, $f0
/* AE1BC 800D2DBC 00000000 */  nop
/* AE1C0 800D2DC0 4503000B */  bc1tl      .L800D2DF0
/* AE1C4 800D2DC4 46128003 */   div.s     $f0, $f16, $f18
/* AE1C8 800D2DC8 11400059 */  beqz       $t2, .L800D2F30
/* AE1CC 800D2DCC 00000000 */   nop
/* AE1D0 800D2DD0 4480A800 */  mtc1       $zero, $f21
/* AE1D4 800D2DD4 4480A000 */  mtc1       $zero, $f20
/* AE1D8 800D2DD8 460002A1 */  cvt.d.s    $f10, $f0
/* AE1DC 800D2DDC 462AA03C */  c.lt.d     $f20, $f10
/* AE1E0 800D2DE0 00000000 */  nop
/* AE1E4 800D2DE4 45000052 */  bc1f       .L800D2F30
/* AE1E8 800D2DE8 00000000 */   nop
/* AE1EC 800D2DEC 46128003 */  div.s      $f0, $f16, $f18
.L800D2DF0:
/* AE1F0 800D2DF0 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AE1F4 800D2DF4 C7AA0218 */  lwc1       $f10, 0x218($sp)
/* AE1F8 800D2DF8 C7A401F4 */  lwc1       $f4, 0x1f4($sp)
/* AE1FC 800D2DFC C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AE200 800D2E00 46065280 */  add.s      $f10, $f10, $f6
/* AE204 800D2E04 27A80218 */  addiu      $t0, $sp, 0x218
/* AE208 800D2E08 27B90200 */  addiu      $t9, $sp, 0x200
/* AE20C 800D2E0C 24180077 */  addiu      $t8, $zero, 0x77
/* AE210 800D2E10 E7AA0264 */  swc1       $f10, 0x264($sp)
/* AE214 800D2E14 240E0001 */  addiu      $t6, $zero, 1
/* AE218 800D2E18 240B0001 */  addiu      $t3, $zero, 1
/* AE21C 800D2E1C 46003082 */  mul.s      $f2, $f6, $f0
/* AE220 800D2E20 C7A6021C */  lwc1       $f6, 0x21c($sp)
/* AE224 800D2E24 46002302 */  mul.s      $f12, $f4, $f0
/* AE228 800D2E28 46043180 */  add.s      $f6, $f6, $f4
/* AE22C 800D2E2C C7A40220 */  lwc1       $f4, 0x220($sp)
/* AE230 800D2E30 46004382 */  mul.s      $f14, $f8, $f0
/* AE234 800D2E34 E7A201E4 */  swc1       $f2, 0x1e4($sp)
/* AE238 800D2E38 46082100 */  add.s      $f4, $f4, $f8
/* AE23C 800D2E3C E7AC01E8 */  swc1       $f12, 0x1e8($sp)
/* AE240 800D2E40 E7A60268 */  swc1       $f6, 0x268($sp)
/* AE244 800D2E44 46025200 */  add.s      $f8, $f10, $f2
/* AE248 800D2E48 E7A4026C */  swc1       $f4, 0x26c($sp)
/* AE24C 800D2E4C E7AE01EC */  swc1       $f14, 0x1ec($sp)
/* AE250 800D2E50 460C3280 */  add.s      $f10, $f6, $f12
/* AE254 800D2E54 E7A80200 */  swc1       $f8, 0x200($sp)
/* AE258 800D2E58 460E2200 */  add.s      $f8, $f4, $f14
/* AE25C 800D2E5C E7AA0204 */  swc1       $f10, 0x204($sp)
/* AE260 800D2E60 E7A80208 */  swc1       $f8, 0x208($sp)
/* AE264 800D2E64 8D010000 */  lw         $at, ($t0)
/* AE268 800D2E68 AFA10000 */  sw         $at, ($sp)
/* AE26C 800D2E6C 8D050004 */  lw         $a1, 4($t0)
/* AE270 800D2E70 8FA40000 */  lw         $a0, ($sp)
/* AE274 800D2E74 AFA50004 */  sw         $a1, 4($sp)
/* AE278 800D2E78 8D010008 */  lw         $at, 8($t0)
/* AE27C 800D2E7C AFA10008 */  sw         $at, 8($sp)
/* AE280 800D2E80 8F210000 */  lw         $at, ($t9)
/* AE284 800D2E84 8FA60008 */  lw         $a2, 8($sp)
/* AE288 800D2E88 AFA1000C */  sw         $at, 0xc($sp)
/* AE28C 800D2E8C 8F2D0004 */  lw         $t5, 4($t9)
/* AE290 800D2E90 8FA7000C */  lw         $a3, 0xc($sp)
/* AE294 800D2E94 AFAD0010 */  sw         $t5, 0x10($sp)
/* AE298 800D2E98 8F210008 */  lw         $at, 8($t9)
/* AE29C 800D2E9C AFAB0020 */  sw         $t3, 0x20($sp)
/* AE2A0 800D2EA0 AFAE001C */  sw         $t6, 0x1c($sp)
/* AE2A4 800D2EA4 AFB80018 */  sw         $t8, 0x18($sp)
/* AE2A8 800D2EA8 0C032A3E */  jal        func_800CA8F8
/* AE2AC 800D2EAC AFA10014 */   sw        $at, 0x14($sp)
/* AE2B0 800D2EB0 1040001F */  beqz       $v0, .L800D2F30
/* AE2B4 800D2EB4 C7AA01E4 */   lwc1      $f10, 0x1e4($sp)
/* AE2B8 800D2EB8 C4460094 */  lwc1       $f6, 0x94($v0)
/* AE2BC 800D2EBC 27AA01D4 */  addiu      $t2, $sp, 0x1d4
/* AE2C0 800D2EC0 460A3101 */  sub.s      $f4, $f6, $f10
/* AE2C4 800D2EC4 C7A601E8 */  lwc1       $f6, 0x1e8($sp)
/* AE2C8 800D2EC8 E7A40264 */  swc1       $f4, 0x264($sp)
/* AE2CC 800D2ECC C4480098 */  lwc1       $f8, 0x98($v0)
/* AE2D0 800D2ED0 46064281 */  sub.s      $f10, $f8, $f6
/* AE2D4 800D2ED4 C7A801EC */  lwc1       $f8, 0x1ec($sp)
/* AE2D8 800D2ED8 E7AA0268 */  swc1       $f10, 0x268($sp)
/* AE2DC 800D2EDC C444009C */  lwc1       $f4, 0x9c($v0)
/* AE2E0 800D2EE0 C7AA0264 */  lwc1       $f10, 0x264($sp)
/* AE2E4 800D2EE4 46082181 */  sub.s      $f6, $f4, $f8
/* AE2E8 800D2EE8 C7A40218 */  lwc1       $f4, 0x218($sp)
/* AE2EC 800D2EEC 46045201 */  sub.s      $f8, $f10, $f4
/* AE2F0 800D2EF0 E7A6026C */  swc1       $f6, 0x26c($sp)
/* AE2F4 800D2EF4 C7A60268 */  lwc1       $f6, 0x268($sp)
/* AE2F8 800D2EF8 C7AA021C */  lwc1       $f10, 0x21c($sp)
/* AE2FC 800D2EFC E7A801F0 */  swc1       $f8, 0x1f0($sp)
/* AE300 800D2F00 C7A8026C */  lwc1       $f8, 0x26c($sp)
/* AE304 800D2F04 460A3101 */  sub.s      $f4, $f6, $f10
/* AE308 800D2F08 C7A60220 */  lwc1       $f6, 0x220($sp)
/* AE30C 800D2F0C 46064281 */  sub.s      $f10, $f8, $f6
/* AE310 800D2F10 E7A401F4 */  swc1       $f4, 0x1f4($sp)
/* AE314 800D2F14 E7AA01F8 */  swc1       $f10, 0x1f8($sp)
/* AE318 800D2F18 8C41005C */  lw         $at, 0x5c($v0)
/* AE31C 800D2F1C AD410000 */  sw         $at, ($t2)
/* AE320 800D2F20 8C4C0060 */  lw         $t4, 0x60($v0)
/* AE324 800D2F24 AD4C0004 */  sw         $t4, 4($t2)
/* AE328 800D2F28 8C410064 */  lw         $at, 0x64($v0)
/* AE32C 800D2F2C AD410008 */  sw         $at, 8($t2)
.L800D2F30:
/* AE330 800D2F30 1000005A */  b          .L800D309C
/* AE334 800D2F34 C7A60218 */   lwc1      $f6, 0x218($sp)
/* AE338 800D2F38 C630004C */  lwc1       $f16, 0x4c($s1)
.L800D2F3C:
/* AE33C 800D2F3C 8FA90188 */  lw         $t1, 0x188($sp)
/* AE340 800D2F40 4600803E */  c.le.s     $f16, $f0
/* AE344 800D2F44 00000000 */  nop
/* AE348 800D2F48 4503000A */  bc1tl      .L800D2F74
/* AE34C 800D2F4C 46128003 */   div.s     $f0, $f16, $f18
/* AE350 800D2F50 51200052 */  beql       $t1, $zero, .L800D309C
/* AE354 800D2F54 C7A60218 */   lwc1      $f6, 0x218($sp)
/* AE358 800D2F58 44802000 */  mtc1       $zero, $f4
/* AE35C 800D2F5C 00000000 */  nop
/* AE360 800D2F60 4600203C */  c.lt.s     $f4, $f0
/* AE364 800D2F64 00000000 */  nop
/* AE368 800D2F68 4502004C */  bc1fl      .L800D309C
/* AE36C 800D2F6C C7A60218 */   lwc1      $f6, 0x218($sp)
/* AE370 800D2F70 46128003 */  div.s      $f0, $f16, $f18
.L800D2F74:
/* AE374 800D2F74 C7A801F0 */  lwc1       $f8, 0x1f0($sp)
/* AE378 800D2F78 C7A40224 */  lwc1       $f4, 0x224($sp)
/* AE37C 800D2F7C C7A601F4 */  lwc1       $f6, 0x1f4($sp)
/* AE380 800D2F80 C7AA01F8 */  lwc1       $f10, 0x1f8($sp)
/* AE384 800D2F84 46082100 */  add.s      $f4, $f4, $f8
/* AE388 800D2F88 27B90224 */  addiu      $t9, $sp, 0x224
/* AE38C 800D2F8C 27AE0200 */  addiu      $t6, $sp, 0x200
/* AE390 800D2F90 240F0077 */  addiu      $t7, $zero, 0x77
/* AE394 800D2F94 E7A40264 */  swc1       $f4, 0x264($sp)
/* AE398 800D2F98 240A0001 */  addiu      $t2, $zero, 1
/* AE39C 800D2F9C 240C0001 */  addiu      $t4, $zero, 1
/* AE3A0 800D2FA0 46004082 */  mul.s      $f2, $f8, $f0
/* AE3A4 800D2FA4 C7A80228 */  lwc1       $f8, 0x228($sp)
/* AE3A8 800D2FA8 46003302 */  mul.s      $f12, $f6, $f0
/* AE3AC 800D2FAC 46064200 */  add.s      $f8, $f8, $f6
/* AE3B0 800D2FB0 C7A6022C */  lwc1       $f6, 0x22c($sp)
/* AE3B4 800D2FB4 46005382 */  mul.s      $f14, $f10, $f0
/* AE3B8 800D2FB8 E7A201E4 */  swc1       $f2, 0x1e4($sp)
/* AE3BC 800D2FBC 460A3180 */  add.s      $f6, $f6, $f10
/* AE3C0 800D2FC0 E7AC01E8 */  swc1       $f12, 0x1e8($sp)
/* AE3C4 800D2FC4 E7A80268 */  swc1       $f8, 0x268($sp)
/* AE3C8 800D2FC8 46022280 */  add.s      $f10, $f4, $f2
/* AE3CC 800D2FCC E7A6026C */  swc1       $f6, 0x26c($sp)
/* AE3D0 800D2FD0 E7AE01EC */  swc1       $f14, 0x1ec($sp)
/* AE3D4 800D2FD4 460C4100 */  add.s      $f4, $f8, $f12
/* AE3D8 800D2FD8 E7AA0200 */  swc1       $f10, 0x200($sp)
/* AE3DC 800D2FDC 460E3280 */  add.s      $f10, $f6, $f14
/* AE3E0 800D2FE0 E7A40204 */  swc1       $f4, 0x204($sp)
/* AE3E4 800D2FE4 E7AA0208 */  swc1       $f10, 0x208($sp)
/* AE3E8 800D2FE8 8F210000 */  lw         $at, ($t9)
/* AE3EC 800D2FEC AFA10000 */  sw         $at, ($sp)
/* AE3F0 800D2FF0 8F250004 */  lw         $a1, 4($t9)
/* AE3F4 800D2FF4 8FA40000 */  lw         $a0, ($sp)
/* AE3F8 800D2FF8 AFA50004 */  sw         $a1, 4($sp)
/* AE3FC 800D2FFC 8F210008 */  lw         $at, 8($t9)
/* AE400 800D3000 AFA10008 */  sw         $at, 8($sp)
/* AE404 800D3004 8DC10000 */  lw         $at, ($t6)
/* AE408 800D3008 8FA60008 */  lw         $a2, 8($sp)
/* AE40C 800D300C AFA1000C */  sw         $at, 0xc($sp)
/* AE410 800D3010 8DC80004 */  lw         $t0, 4($t6)
/* AE414 800D3014 8FA7000C */  lw         $a3, 0xc($sp)
/* AE418 800D3018 AFA80010 */  sw         $t0, 0x10($sp)
/* AE41C 800D301C 8DC10008 */  lw         $at, 8($t6)
/* AE420 800D3020 AFAC0020 */  sw         $t4, 0x20($sp)
/* AE424 800D3024 AFAA001C */  sw         $t2, 0x1c($sp)
/* AE428 800D3028 AFAF0018 */  sw         $t7, 0x18($sp)
/* AE42C 800D302C 0C032A3E */  jal        func_800CA8F8
/* AE430 800D3030 AFA10014 */   sw        $at, 0x14($sp)
/* AE434 800D3034 10400018 */  beqz       $v0, .L800D3098
/* AE438 800D3038 C7A401E4 */   lwc1      $f4, 0x1e4($sp)
/* AE43C 800D303C C4480094 */  lwc1       $f8, 0x94($v0)
/* AE440 800D3040 46044181 */  sub.s      $f6, $f8, $f4
/* AE444 800D3044 C7A801E8 */  lwc1       $f8, 0x1e8($sp)
/* AE448 800D3048 E7A60264 */  swc1       $f6, 0x264($sp)
/* AE44C 800D304C C44A0098 */  lwc1       $f10, 0x98($v0)
/* AE450 800D3050 46085101 */  sub.s      $f4, $f10, $f8
/* AE454 800D3054 C7AA01EC */  lwc1       $f10, 0x1ec($sp)
/* AE458 800D3058 E7A40268 */  swc1       $f4, 0x268($sp)
/* AE45C 800D305C C446009C */  lwc1       $f6, 0x9c($v0)
/* AE460 800D3060 C7A40264 */  lwc1       $f4, 0x264($sp)
/* AE464 800D3064 460A3201 */  sub.s      $f8, $f6, $f10
/* AE468 800D3068 C7A60224 */  lwc1       $f6, 0x224($sp)
/* AE46C 800D306C 46062281 */  sub.s      $f10, $f4, $f6
/* AE470 800D3070 E7A8026C */  swc1       $f8, 0x26c($sp)
/* AE474 800D3074 C7A80268 */  lwc1       $f8, 0x268($sp)
/* AE478 800D3078 C7A40228 */  lwc1       $f4, 0x228($sp)
/* AE47C 800D307C E7AA01F0 */  swc1       $f10, 0x1f0($sp)
/* AE480 800D3080 C7AA026C */  lwc1       $f10, 0x26c($sp)
/* AE484 800D3084 46044181 */  sub.s      $f6, $f8, $f4
/* AE488 800D3088 C7A8022C */  lwc1       $f8, 0x22c($sp)
/* AE48C 800D308C 46085101 */  sub.s      $f4, $f10, $f8
/* AE490 800D3090 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AE494 800D3094 E7A401F8 */  swc1       $f4, 0x1f8($sp)
.L800D3098:
/* AE498 800D3098 C7A60218 */  lwc1       $f6, 0x218($sp)
.L800D309C:
/* AE49C 800D309C C7AA01F0 */  lwc1       $f10, 0x1f0($sp)
/* AE4A0 800D30A0 C7A4021C */  lwc1       $f4, 0x21c($sp)
/* AE4A4 800D30A4 27A90218 */  addiu      $t1, $sp, 0x218
/* AE4A8 800D30A8 460A3200 */  add.s      $f8, $f6, $f10
/* AE4AC 800D30AC C7A601F4 */  lwc1       $f6, 0x1f4($sp)
/* AE4B0 800D30B0 4480A800 */  mtc1       $zero, $f21
/* AE4B4 800D30B4 4480A000 */  mtc1       $zero, $f20
/* AE4B8 800D30B8 E7A80218 */  swc1       $f8, 0x218($sp)
/* AE4BC 800D30BC 46062200 */  add.s      $f8, $f4, $f6
/* AE4C0 800D30C0 C7A40220 */  lwc1       $f4, 0x220($sp)
/* AE4C4 800D30C4 24180077 */  addiu      $t8, $zero, 0x77
/* AE4C8 800D30C8 27A40264 */  addiu      $a0, $sp, 0x264
/* AE4CC 800D30CC E7A8021C */  swc1       $f8, 0x21c($sp)
/* AE4D0 800D30D0 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AE4D4 800D30D4 46082100 */  add.s      $f4, $f4, $f8
/* AE4D8 800D30D8 E7A40220 */  swc1       $f4, 0x220($sp)
/* AE4DC 800D30DC C7A40224 */  lwc1       $f4, 0x224($sp)
/* AE4E0 800D30E0 460A2100 */  add.s      $f4, $f4, $f10
/* AE4E4 800D30E4 C7AA0228 */  lwc1       $f10, 0x228($sp)
/* AE4E8 800D30E8 E7A40224 */  swc1       $f4, 0x224($sp)
/* AE4EC 800D30EC 46065100 */  add.s      $f4, $f10, $f6
/* AE4F0 800D30F0 C7AA022C */  lwc1       $f10, 0x22c($sp)
/* AE4F4 800D30F4 46085180 */  add.s      $f6, $f10, $f8
/* AE4F8 800D30F8 E7A40228 */  swc1       $f4, 0x228($sp)
/* AE4FC 800D30FC E7A6022C */  swc1       $f6, 0x22c($sp)
/* AE500 800D3100 8D210000 */  lw         $at, ($t1)
/* AE504 800D3104 AFA10004 */  sw         $at, 4($sp)
/* AE508 800D3108 8D260004 */  lw         $a2, 4($t1)
/* AE50C 800D310C 8FA50004 */  lw         $a1, 4($sp)
/* AE510 800D3110 AFA60008 */  sw         $a2, 8($sp)
/* AE514 800D3114 8D270008 */  lw         $a3, 8($t1)
/* AE518 800D3118 AFA7000C */  sw         $a3, 0xc($sp)
/* AE51C 800D311C C624004C */  lwc1       $f4, 0x4c($s1)
/* AE520 800D3120 AFB80014 */  sw         $t8, 0x14($sp)
/* AE524 800D3124 0C0329CD */  jal        func_800CA734
/* AE528 800D3128 E7A40010 */   swc1      $f4, 0x10($sp)
/* AE52C 800D312C 3C038025 */  lui        $v1, %hi(D_802488B0)
/* AE530 800D3130 246388B0 */  addiu      $v1, $v1, %lo(D_802488B0)
/* AE534 800D3134 C4600000 */  lwc1       $f0, ($v1)
/* AE538 800D3138 27AA0224 */  addiu      $t2, $sp, 0x224
/* AE53C 800D313C 460002A1 */  cvt.d.s    $f10, $f0
/* AE540 800D3140 462AA032 */  c.eq.d     $f20, $f10
/* AE544 800D3144 00000000 */  nop
/* AE548 800D3148 4502000E */  bc1fl      .L800D3184
/* AE54C 800D314C C7A80224 */   lwc1      $f8, 0x224($sp)
/* AE550 800D3150 C4680004 */  lwc1       $f8, 4($v1)
/* AE554 800D3154 460041A1 */  cvt.d.s    $f6, $f8
/* AE558 800D3158 4626A032 */  c.eq.d     $f20, $f6
/* AE55C 800D315C 00000000 */  nop
/* AE560 800D3160 45020008 */  bc1fl      .L800D3184
/* AE564 800D3164 C7A80224 */   lwc1      $f8, 0x224($sp)
/* AE568 800D3168 C4640008 */  lwc1       $f4, 8($v1)
/* AE56C 800D316C 460022A1 */  cvt.d.s    $f10, $f4
/* AE570 800D3170 462AA032 */  c.eq.d     $f20, $f10
/* AE574 800D3174 00000000 */  nop
/* AE578 800D3178 45030014 */  bc1tl      .L800D31CC
/* AE57C 800D317C 8D410000 */   lw        $at, ($t2)
/* AE580 800D3180 C7A80224 */  lwc1       $f8, 0x224($sp)
.L800D3184:
/* AE584 800D3184 C7A40228 */  lwc1       $f4, 0x228($sp)
/* AE588 800D3188 C46A0004 */  lwc1       $f10, 4($v1)
/* AE58C 800D318C 46004180 */  add.s      $f6, $f8, $f0
/* AE590 800D3190 8C610000 */  lw         $at, ($v1)
/* AE594 800D3194 27AB01D4 */  addiu      $t3, $sp, 0x1d4
/* AE598 800D3198 460A2200 */  add.s      $f8, $f4, $f10
/* AE59C 800D319C E7A60224 */  swc1       $f6, 0x224($sp)
/* AE5A0 800D31A0 C7A6022C */  lwc1       $f6, 0x22c($sp)
/* AE5A4 800D31A4 C4640008 */  lwc1       $f4, 8($v1)
/* AE5A8 800D31A8 E7A80228 */  swc1       $f8, 0x228($sp)
/* AE5AC 800D31AC 46043280 */  add.s      $f10, $f6, $f4
/* AE5B0 800D31B0 E7AA022C */  swc1       $f10, 0x22c($sp)
/* AE5B4 800D31B4 AD610000 */  sw         $at, ($t3)
/* AE5B8 800D31B8 8C6F0004 */  lw         $t7, 4($v1)
/* AE5BC 800D31BC AD6F0004 */  sw         $t7, 4($t3)
/* AE5C0 800D31C0 8C610008 */  lw         $at, 8($v1)
/* AE5C4 800D31C4 AD610008 */  sw         $at, 8($t3)
/* AE5C8 800D31C8 8D410000 */  lw         $at, ($t2)
.L800D31CC:
/* AE5CC 800D31CC 24090077 */  addiu      $t1, $zero, 0x77
/* AE5D0 800D31D0 27A40264 */  addiu      $a0, $sp, 0x264
/* AE5D4 800D31D4 AFA10004 */  sw         $at, 4($sp)
/* AE5D8 800D31D8 8D460004 */  lw         $a2, 4($t2)
/* AE5DC 800D31DC 8FA50004 */  lw         $a1, 4($sp)
/* AE5E0 800D31E0 AFA60008 */  sw         $a2, 8($sp)
/* AE5E4 800D31E4 8D470008 */  lw         $a3, 8($t2)
/* AE5E8 800D31E8 AFA7000C */  sw         $a3, 0xc($sp)
/* AE5EC 800D31EC C628004C */  lwc1       $f8, 0x4c($s1)
/* AE5F0 800D31F0 AFA90014 */  sw         $t1, 0x14($sp)
/* AE5F4 800D31F4 0C0329CD */  jal        func_800CA734
/* AE5F8 800D31F8 E7A80010 */   swc1      $f8, 0x10($sp)
/* AE5FC 800D31FC C7A60268 */  lwc1       $f6, 0x268($sp)
/* AE600 800D3200 C624004C */  lwc1       $f4, 0x4c($s1)
/* AE604 800D3204 C7A801D8 */  lwc1       $f8, 0x1d8($sp)
/* AE608 800D3208 3C018011 */  lui        $at, %hi(D_80110598)
/* AE60C 800D320C 46043281 */  sub.s      $f10, $f6, $f4
/* AE610 800D3210 D4240598 */  ldc1       $f4, %lo(D_80110598)($at)
/* AE614 800D3214 460041A1 */  cvt.d.s    $f6, $f8
/* AE618 800D3218 E7AA0268 */  swc1       $f10, 0x268($sp)
/* AE61C 800D321C 4624303C */  c.lt.d     $f6, $f4
/* AE620 800D3220 C7AA01F4 */  lwc1       $f10, 0x1f4($sp)
/* AE624 800D3224 45020012 */  bc1fl      .L800D3270
/* AE628 800D3228 27B90264 */   addiu     $t9, $sp, 0x264
/* AE62C 800D322C 46005221 */  cvt.d.s    $f8, $f10
/* AE630 800D3230 24040071 */  addiu      $a0, $zero, 0x71
/* AE634 800D3234 4628A03C */  c.lt.d     $f20, $f8
/* AE638 800D3238 26250004 */  addiu      $a1, $s1, 4
/* AE63C 800D323C 4502000C */  bc1fl      .L800D3270
/* AE640 800D3240 27B90264 */   addiu     $t9, $sp, 0x264
/* AE644 800D3244 44800000 */  mtc1       $zero, $f0
/* AE648 800D3248 26260008 */  addiu      $a2, $s1, 8
/* AE64C 800D324C 2627000C */  addiu      $a3, $s1, 0xc
/* AE650 800D3250 E7A001F4 */  swc1       $f0, 0x1f4($sp)
/* AE654 800D3254 E6200028 */  swc1       $f0, 0x28($s1)
/* AE658 800D3258 AFA00014 */  sw         $zero, 0x14($sp)
/* AE65C 800D325C 0C021FB4 */  jal        func_80087ED0
/* AE660 800D3260 AFA00010 */   sw        $zero, 0x10($sp)
/* AE664 800D3264 0C0221A6 */  jal        func_80088698
/* AE668 800D3268 00402025 */   or        $a0, $v0, $zero
/* AE66C 800D326C 27B90264 */  addiu      $t9, $sp, 0x264
.L800D3270:
/* AE670 800D3270 8F210000 */  lw         $at, ($t9)
/* AE674 800D3274 44802000 */  mtc1       $zero, $f4
/* AE678 800D3278 AFA10000 */  sw         $at, ($sp)
/* AE67C 800D327C 8F250004 */  lw         $a1, 4($t9)
/* AE680 800D3280 8FA40000 */  lw         $a0, ($sp)
/* AE684 800D3284 AFA50004 */  sw         $a1, 4($sp)
/* AE688 800D3288 8F210008 */  lw         $at, 8($t9)
/* AE68C 800D328C AFA10008 */  sw         $at, 8($sp)
/* AE690 800D3290 C626004C */  lwc1       $f6, 0x4c($s1)
/* AE694 800D3294 3C014008 */  lui        $at, 0x4008
/* AE698 800D3298 44812800 */  mtc1       $at, $f5
/* AE69C 800D329C 46003021 */  cvt.d.s    $f0, $f6
/* AE6A0 800D32A0 3C01C000 */  lui        $at, 0xc000
/* AE6A4 800D32A4 46240282 */  mul.d      $f10, $f0, $f4
/* AE6A8 800D32A8 44813800 */  mtc1       $at, $f7
/* AE6AC 800D32AC 44803000 */  mtc1       $zero, $f6
/* AE6B0 800D32B0 8FA60008 */  lw         $a2, 8($sp)
/* AE6B4 800D32B4 46260102 */  mul.d      $f4, $f0, $f6
/* AE6B8 800D32B8 46205220 */  cvt.s.d    $f8, $f10
/* AE6BC 800D32BC 462022A0 */  cvt.s.d    $f10, $f4
/* AE6C0 800D32C0 44074000 */  mfc1       $a3, $f8
/* AE6C4 800D32C4 0C032BE2 */  jal        func_800CAF88
/* AE6C8 800D32C8 E7AA0010 */   swc1      $f10, 0x10($sp)
/* AE6CC 800D32CC 1040000D */  beqz       $v0, .L800D3304
/* AE6D0 800D32D0 00408025 */   or        $s0, $v0, $zero
/* AE6D4 800D32D4 8C41005C */  lw         $at, 0x5c($v0)
/* AE6D8 800D32D8 27A701BC */  addiu      $a3, $sp, 0x1bc
/* AE6DC 800D32DC 27AF01B8 */  addiu      $t7, $sp, 0x1b8
/* AE6E0 800D32E0 AFA10000 */  sw         $at, ($sp)
/* AE6E4 800D32E4 8C450060 */  lw         $a1, 0x60($v0)
/* AE6E8 800D32E8 8FA40000 */  lw         $a0, ($sp)
/* AE6EC 800D32EC AFA50004 */  sw         $a1, 4($sp)
/* AE6F0 800D32F0 8C460064 */  lw         $a2, 0x64($v0)
/* AE6F4 800D32F4 AFA70014 */  sw         $a3, 0x14($sp)
/* AE6F8 800D32F8 AFAF0010 */  sw         $t7, 0x10($sp)
/* AE6FC 800D32FC 0C0360CE */  jal        func_800D8338
/* AE700 800D3300 AFA60008 */   sw        $a2, 8($sp)
.L800D3304:
/* AE704 800D3304 12000027 */  beqz       $s0, .L800D33A4
/* AE708 800D3308 27B90264 */   addiu     $t9, $sp, 0x264
/* AE70C 800D330C C6280028 */  lwc1       $f8, 0x28($s1)
/* AE710 800D3310 C7A401B8 */  lwc1       $f4, 0x1b8($sp)
/* AE714 800D3314 3C018011 */  lui        $at, 0x8011
/* AE718 800D3318 460041A1 */  cvt.d.s    $f6, $f8
/* AE71C 800D331C 4634303E */  c.le.d     $f6, $f20
/* AE720 800D3320 00000000 */  nop
/* AE724 800D3324 45020020 */  bc1fl      .L800D33A8
/* AE728 800D3328 8F210000 */   lw        $at, ($t9)
/* AE72C 800D332C D42805A0 */  ldc1       $f8, 0x5a0($at)
/* AE730 800D3330 460022A1 */  cvt.d.s    $f10, $f4
/* AE734 800D3334 4628503C */  c.lt.d     $f10, $f8
/* AE738 800D3338 00000000 */  nop
/* AE73C 800D333C 4502001A */  bc1fl      .L800D33A8
/* AE740 800D3340 8F210000 */   lw        $at, ($t9)
/* AE744 800D3344 8E010094 */  lw         $at, 0x94($s0)
/* AE748 800D3348 27AC020C */  addiu      $t4, $sp, 0x20c
/* AE74C 800D334C 02202025 */  or         $a0, $s1, $zero
/* AE750 800D3350 AD810000 */  sw         $at, ($t4)
/* AE754 800D3354 8E0D0098 */  lw         $t5, 0x98($s0)
/* AE758 800D3358 02002825 */  or         $a1, $s0, $zero
/* AE75C 800D335C 00003025 */  or         $a2, $zero, $zero
/* AE760 800D3360 AD8D0004 */  sw         $t5, 4($t4)
/* AE764 800D3364 8E01009C */  lw         $at, 0x9c($s0)
/* AE768 800D3368 AD810008 */  sw         $at, 8($t4)
/* AE76C 800D336C 0C033EDB */  jal        func_800CFB6C
/* AE770 800D3370 AFA001C0 */   sw        $zero, 0x1c0($sp)
/* AE774 800D3374 24090010 */  addiu      $t1, $zero, 0x10
/* AE778 800D3378 AFA90014 */  sw         $t1, 0x14($sp)
/* AE77C 800D337C 24040006 */  addiu      $a0, $zero, 6
/* AE780 800D3380 27A5020C */  addiu      $a1, $sp, 0x20c
/* AE784 800D3384 27A60210 */  addiu      $a2, $sp, 0x210
/* AE788 800D3388 27A70214 */  addiu      $a3, $sp, 0x214
/* AE78C 800D338C 0C021FB4 */  jal        func_80087ED0
/* AE790 800D3390 AFA00010 */   sw        $zero, 0x10($sp)
/* AE794 800D3394 0C0221A6 */  jal        func_80088698
/* AE798 800D3398 00402025 */   or        $a0, $v0, $zero
/* AE79C 800D339C 1000000D */  b          .L800D33D4
/* AE7A0 800D33A0 8FB00274 */   lw        $s0, 0x274($sp)
.L800D33A4:
/* AE7A4 800D33A4 8F210000 */  lw         $at, ($t9)
.L800D33A8:
/* AE7A8 800D33A8 27B8020C */  addiu      $t8, $sp, 0x20c
/* AE7AC 800D33AC 240F0001 */  addiu      $t7, $zero, 1
/* AE7B0 800D33B0 AF010000 */  sw         $at, ($t8)
/* AE7B4 800D33B4 8F2B0004 */  lw         $t3, 4($t9)
/* AE7B8 800D33B8 02202025 */  or         $a0, $s1, $zero
/* AE7BC 800D33BC AF0B0004 */  sw         $t3, 4($t8)
/* AE7C0 800D33C0 8F210008 */  lw         $at, 8($t9)
/* AE7C4 800D33C4 AF010008 */  sw         $at, 8($t8)
/* AE7C8 800D33C8 0C033F6E */  jal        func_800CFDB8
/* AE7CC 800D33CC AFAF01C0 */   sw        $t7, 0x1c0($sp)
/* AE7D0 800D33D0 8FB00274 */  lw         $s0, 0x274($sp)
.L800D33D4:
/* AE7D4 800D33D4 02202025 */  or         $a0, $s1, $zero
.L800D33D8:
/* AE7D8 800D33D8 02002825 */  or         $a1, $s0, $zero
/* AE7DC 800D33DC 0C033F85 */  jal        func_800CFE14
/* AE7E0 800D33E0 8FA601C0 */   lw        $a2, 0x1c0($sp)
/* AE7E4 800D33E4 8FAA01C0 */  lw         $t2, 0x1c0($sp)
/* AE7E8 800D33E8 11400003 */  beqz       $t2, .L800D33F8
/* AE7EC 800D33EC 00000000 */   nop
/* AE7F0 800D33F0 0C033FD9 */  jal        func_800CFF64
/* AE7F4 800D33F4 02202025 */   or        $a0, $s1, $zero
.L800D33F8:
/* AE7F8 800D33F8 0C033FDF */  jal        func_800CFF7C
/* AE7FC 800D33FC 27A4020C */   addiu     $a0, $sp, 0x20c
/* AE800 800D3400 C7A6020C */  lwc1       $f6, 0x20c($sp)
/* AE804 800D3404 27AC01F0 */  addiu      $t4, $sp, 0x1f0
/* AE808 800D3408 02202025 */  or         $a0, $s1, $zero
/* AE80C 800D340C E6260004 */  swc1       $f6, 4($s1)
/* AE810 800D3410 C7A40210 */  lwc1       $f4, 0x210($sp)
/* AE814 800D3414 E6240008 */  swc1       $f4, 8($s1)
/* AE818 800D3418 C7AA0214 */  lwc1       $f10, 0x214($sp)
/* AE81C 800D341C E62A000C */  swc1       $f10, 0xc($s1)
/* AE820 800D3420 C7A6023C */  lwc1       $f6, 0x23c($sp)
/* AE824 800D3424 C7A8020C */  lwc1       $f8, 0x20c($sp)
/* AE828 800D3428 C7AA0210 */  lwc1       $f10, 0x210($sp)
/* AE82C 800D342C 46064101 */  sub.s      $f4, $f8, $f6
/* AE830 800D3430 C7A80240 */  lwc1       $f8, 0x240($sp)
/* AE834 800D3434 46085181 */  sub.s      $f6, $f10, $f8
/* AE838 800D3438 E7A401F0 */  swc1       $f4, 0x1f0($sp)
/* AE83C 800D343C C7A40214 */  lwc1       $f4, 0x214($sp)
/* AE840 800D3440 C7AA0244 */  lwc1       $f10, 0x244($sp)
/* AE844 800D3444 E7A601F4 */  swc1       $f6, 0x1f4($sp)
/* AE848 800D3448 460A2201 */  sub.s      $f8, $f4, $f10
/* AE84C 800D344C E7A801F8 */  swc1       $f8, 0x1f8($sp)
/* AE850 800D3450 8D810000 */  lw         $at, ($t4)
/* AE854 800D3454 AFA10004 */  sw         $at, 4($sp)
/* AE858 800D3458 8D860004 */  lw         $a2, 4($t4)
/* AE85C 800D345C 8FA50004 */  lw         $a1, 4($sp)
/* AE860 800D3460 AFA60008 */  sw         $a2, 8($sp)
/* AE864 800D3464 8D870008 */  lw         $a3, 8($t4)
/* AE868 800D3468 0C0341A5 */  jal        func_800D0694
/* AE86C 800D346C AFA7000C */   sw        $a3, 0xc($sp)
/* AE870 800D3470 C7A601F0 */  lwc1       $f6, 0x1f0($sp)
/* AE874 800D3474 C7A401C8 */  lwc1       $f4, 0x1c8($sp)
/* AE878 800D3478 C7A801F4 */  lwc1       $f8, 0x1f4($sp)
/* AE87C 800D347C 02202025 */  or         $a0, $s1, $zero
/* AE880 800D3480 46043281 */  sub.s      $f10, $f6, $f4
/* AE884 800D3484 C7A601CC */  lwc1       $f6, 0x1cc($sp)
/* AE888 800D3488 46064101 */  sub.s      $f4, $f8, $f6
/* AE88C 800D348C C7A601D0 */  lwc1       $f6, 0x1d0($sp)
/* AE890 800D3490 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AE894 800D3494 E7AA01F0 */  swc1       $f10, 0x1f0($sp)
/* AE898 800D3498 E7A401F4 */  swc1       $f4, 0x1f4($sp)
/* AE89C 800D349C 46064101 */  sub.s      $f4, $f8, $f6
/* AE8A0 800D34A0 E7A401F8 */  swc1       $f4, 0x1f8($sp)
/* AE8A4 800D34A4 E62A0024 */  swc1       $f10, 0x24($s1)
/* AE8A8 800D34A8 C7A801F8 */  lwc1       $f8, 0x1f8($sp)
/* AE8AC 800D34AC 0C03406A */  jal        func_800D01A8
/* AE8B0 800D34B0 E628002C */   swc1      $f8, 0x2c($s1)
/* AE8B4 800D34B4 8FBF003C */  lw         $ra, 0x3c($sp)
.L800D34B8:
/* AE8B8 800D34B8 D7B40028 */  ldc1       $f20, 0x28($sp)
/* AE8BC 800D34BC 8FB00034 */  lw         $s0, 0x34($sp)
/* AE8C0 800D34C0 8FB10038 */  lw         $s1, 0x38($sp)
/* AE8C4 800D34C4 03E00008 */  jr         $ra
/* AE8C8 800D34C8 27BD0270 */   addiu     $sp, $sp, 0x270

glabel func_800D34CC
/* AE8CC 800D34CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AE8D0 800D34D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* AE8D4 800D34D4 3C048011 */  lui        $a0, %hi(D_80108F9C)
/* AE8D8 800D34D8 AFB10018 */  sw         $s1, 0x18($sp)
/* AE8DC 800D34DC AFB00014 */  sw         $s0, 0x14($sp)
/* AE8E0 800D34E0 0C036066 */  jal        func_800D8198
/* AE8E4 800D34E4 24848F9C */   addiu     $a0, $a0, %lo(D_80108F9C)
/* AE8E8 800D34E8 3C048011 */  lui        $a0, %hi(D_80108FA8)
/* AE8EC 800D34EC 0C036066 */  jal        func_800D8198
/* AE8F0 800D34F0 24848FA8 */   addiu     $a0, $a0, %lo(D_80108FA8)
/* AE8F4 800D34F4 3C048011 */  lui        $a0, %hi(D_80108FB4)
/* AE8F8 800D34F8 0C036066 */  jal        func_800D8198
/* AE8FC 800D34FC 24848FB4 */   addiu     $a0, $a0, %lo(D_80108FB4)
/* AE900 800D3500 3C048011 */  lui        $a0, %hi(D_80108FC0)
/* AE904 800D3504 0C036066 */  jal        func_800D8198
/* AE908 800D3508 24848FC0 */   addiu     $a0, $a0, %lo(D_80108FC0)
/* AE90C 800D350C 44800000 */  mtc1       $zero, $f0
/* AE910 800D3510 3C018011 */  lui        $at, %hi(D_80108FCC)
/* AE914 800D3514 3C108025 */  lui        $s0, 0x8025
/* AE918 800D3518 E4208FCC */  swc1       $f0, %lo(D_80108FCC)($at)
/* AE91C 800D351C 3C018011 */  lui        $at, %hi(D_80108FD0)
/* AE920 800D3520 AC208FD0 */  sw         $zero, %lo(D_80108FD0)($at)
/* AE924 800D3524 3C018011 */  lui        $at, %hi(D_80108FD4)
/* AE928 800D3528 AC208FD4 */  sw         $zero, %lo(D_80108FD4)($at)
/* AE92C 800D352C 3C018011 */  lui        $at, %hi(D_80108FD8)
/* AE930 800D3530 E4208FD8 */  swc1       $f0, %lo(D_80108FD8)($at)
/* AE934 800D3534 3C018011 */  lui        $at, %hi(D_80108FDC)
/* AE938 800D3538 E4208FDC */  swc1       $f0, %lo(D_80108FDC)($at)
/* AE93C 800D353C 3C018011 */  lui        $at, %hi(D_80108FE0)
/* AE940 800D3540 AC208FE0 */  sw         $zero, %lo(D_80108FE0)($at)
/* AE944 800D3544 3C018011 */  lui        $at, %hi(D_80108FE4)
/* AE948 800D3548 E4208FE4 */  swc1       $f0, %lo(D_80108FE4)($at)
/* AE94C 800D354C 3C018011 */  lui        $at, %hi(D_80108FE8)
/* AE950 800D3550 AC208FE8 */  sw         $zero, %lo(D_80108FE8)($at)
/* AE954 800D3554 3C018011 */  lui        $at, %hi(D_80108FEC)
/* AE958 800D3558 3C118025 */  lui        $s1, %hi(D_80248A28)
/* AE95C 800D355C AC208FEC */  sw         $zero, %lo(D_80108FEC)($at)
/* AE960 800D3560 26318A28 */  addiu      $s1, $s1, %lo(D_80248A28)
/* AE964 800D3564 261089C8 */  addiu      $s0, $s0, -0x7638
.L800D3568:
/* AE968 800D3568 0C036066 */  jal        func_800D8198
/* AE96C 800D356C 02002025 */   or        $a0, $s0, $zero
/* AE970 800D3570 2610000C */  addiu      $s0, $s0, 0xc
/* AE974 800D3574 1611FFFC */  bne        $s0, $s1, .L800D3568
/* AE978 800D3578 00000000 */   nop
/* AE97C 800D357C 8FBF001C */  lw         $ra, 0x1c($sp)
/* AE980 800D3580 8FB00014 */  lw         $s0, 0x14($sp)
/* AE984 800D3584 8FB10018 */  lw         $s1, 0x18($sp)
/* AE988 800D3588 03E00008 */  jr         $ra
/* AE98C 800D358C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800D3590
/* AE990 800D3590 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* AE994 800D3594 AFBF0024 */  sw         $ra, 0x24($sp)
/* AE998 800D3598 AFA40028 */  sw         $a0, 0x28($sp)
/* AE99C 800D359C AFA5002C */  sw         $a1, 0x2c($sp)
/* AE9A0 800D35A0 AFA60030 */  sw         $a2, 0x30($sp)
/* AE9A4 800D35A4 AFA70034 */  sw         $a3, 0x34($sp)
/* AE9A8 800D35A8 27AE0028 */  addiu      $t6, $sp, 0x28
/* AE9AC 800D35AC 8DC10000 */  lw         $at, ($t6)
/* AE9B0 800D35B0 27B90034 */  addiu      $t9, $sp, 0x34
/* AE9B4 800D35B4 8FAA004C */  lw         $t2, 0x4c($sp)
/* AE9B8 800D35B8 AFA10000 */  sw         $at, ($sp)
/* AE9BC 800D35BC 8DC50004 */  lw         $a1, 4($t6)
/* AE9C0 800D35C0 8FA40000 */  lw         $a0, ($sp)
/* AE9C4 800D35C4 AFA50004 */  sw         $a1, 4($sp)
/* AE9C8 800D35C8 8DC10008 */  lw         $at, 8($t6)
/* AE9CC 800D35CC AFA10008 */  sw         $at, 8($sp)
/* AE9D0 800D35D0 8F210000 */  lw         $at, ($t9)
/* AE9D4 800D35D4 8FA60008 */  lw         $a2, 8($sp)
/* AE9D8 800D35D8 AFA1000C */  sw         $at, 0xc($sp)
/* AE9DC 800D35DC 8F290004 */  lw         $t1, 4($t9)
/* AE9E0 800D35E0 8FA7000C */  lw         $a3, 0xc($sp)
/* AE9E4 800D35E4 AFA90010 */  sw         $t1, 0x10($sp)
/* AE9E8 800D35E8 8F210008 */  lw         $at, 8($t9)
/* AE9EC 800D35EC AFAA0018 */  sw         $t2, 0x18($sp)
/* AE9F0 800D35F0 0C02BAAA */  jal        func_800AEAA8
/* AE9F4 800D35F4 AFA10014 */   sw        $at, 0x14($sp)
/* AE9F8 800D35F8 27AB0040 */  addiu      $t3, $sp, 0x40
/* AE9FC 800D35FC 8D610000 */  lw         $at, ($t3)
/* AEA00 800D3600 8FA4004C */  lw         $a0, 0x4c($sp)
/* AEA04 800D3604 AFA10004 */  sw         $at, 4($sp)
/* AEA08 800D3608 8D660004 */  lw         $a2, 4($t3)
/* AEA0C 800D360C 8FA50004 */  lw         $a1, 4($sp)
/* AEA10 800D3610 AFA60008 */  sw         $a2, 8($sp)
/* AEA14 800D3614 8D670008 */  lw         $a3, 8($t3)
/* AEA18 800D3618 0C02B9DC */  jal        func_800AE770
/* AEA1C 800D361C AFA7000C */   sw        $a3, 0xc($sp)
/* AEA20 800D3620 8FA4004C */  lw         $a0, 0x4c($sp)
/* AEA24 800D3624 0C02BA0B */  jal        func_800AE82C
/* AEA28 800D3628 3C05447A */   lui       $a1, 0x447a
/* AEA2C 800D362C 8FBF0024 */  lw         $ra, 0x24($sp)
/* AEA30 800D3630 27BD0028 */  addiu      $sp, $sp, 0x28
/* AEA34 800D3634 03E00008 */  jr         $ra
/* AEA38 800D3638 00000000 */   nop

glabel func_800D363C
/* AEA3C 800D363C C4A400D0 */  lwc1       $f4, 0xd0($a1)
/* AEA40 800D3640 C4C60044 */  lwc1       $f6, 0x44($a2)
/* AEA44 800D3644 C4C2000C */  lwc1       $f2, 0xc($a2)
/* AEA48 800D3648 C4CA0010 */  lwc1       $f10, 0x10($a2)
/* AEA4C 800D364C 46062202 */  mul.s      $f8, $f4, $f6
/* AEA50 800D3650 C4C40014 */  lwc1       $f4, 0x14($a2)
/* AEA54 800D3654 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* AEA58 800D3658 3C018011 */  lui        $at, 0x8011
/* AEA5C 800D365C E7A40054 */  swc1       $f4, 0x54($sp)
/* AEA60 800D3660 C4A60098 */  lwc1       $f6, 0x98($a1)
/* AEA64 800D3664 46085480 */  add.s      $f18, $f10, $f8
/* AEA68 800D3668 E7A60040 */  swc1       $f6, 0x40($sp)
/* AEA6C 800D366C C4C80044 */  lwc1       $f8, 0x44($a2)
/* AEA70 800D3670 C4AA00D0 */  lwc1       $f10, 0xd0($a1)
/* AEA74 800D3674 C4A6009C */  lwc1       $f6, 0x9c($a1)
/* AEA78 800D3678 46085102 */  mul.s      $f4, $f10, $f8
/* AEA7C 800D367C 46043280 */  add.s      $f10, $f6, $f4
/* AEA80 800D3680 E7AA0044 */  swc1       $f10, 0x44($sp)
/* AEA84 800D3684 C4A800A0 */  lwc1       $f8, 0xa0($a1)
/* AEA88 800D3688 E7A80048 */  swc1       $f8, 0x48($sp)
/* AEA8C 800D368C C4C40044 */  lwc1       $f4, 0x44($a2)
/* AEA90 800D3690 C4A600D0 */  lwc1       $f6, 0xd0($a1)
/* AEA94 800D3694 C4A800A8 */  lwc1       $f8, 0xa8($a1)
/* AEA98 800D3698 C4A000A4 */  lwc1       $f0, 0xa4($a1)
/* AEA9C 800D369C 46043282 */  mul.s      $f10, $f6, $f4
/* AEAA0 800D36A0 460A4180 */  add.s      $f6, $f8, $f10
/* AEAA4 800D36A4 C7A80040 */  lwc1       $f8, 0x40($sp)
/* AEAA8 800D36A8 E7A60038 */  swc1       $f6, 0x38($sp)
/* AEAAC 800D36AC C4A400AC */  lwc1       $f4, 0xac($a1)
/* AEAB0 800D36B0 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* AEAB4 800D36B4 C7A60044 */  lwc1       $f6, 0x44($sp)
/* AEAB8 800D36B8 E7A4003C */  swc1       $f4, 0x3c($sp)
/* AEABC 800D36BC C7A4003C */  lwc1       $f4, 0x3c($sp)
/* AEAC0 800D36C0 46065381 */  sub.s      $f14, $f10, $f6
/* AEAC4 800D36C4 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* AEAC8 800D36C8 46080301 */  sub.s      $f12, $f0, $f8
/* AEACC 800D36CC 460A2401 */  sub.s      $f16, $f4, $f10
/* AEAD0 800D36D0 46081101 */  sub.s      $f4, $f2, $f8
/* AEAD4 800D36D4 46046202 */  mul.s      $f8, $f12, $f4
/* AEAD8 800D36D8 46069101 */  sub.s      $f4, $f18, $f6
/* AEADC 800D36DC 46047182 */  mul.s      $f6, $f14, $f4
/* AEAE0 800D36E0 46064100 */  add.s      $f4, $f8, $f6
/* AEAE4 800D36E4 C7A80054 */  lwc1       $f8, 0x54($sp)
/* AEAE8 800D36E8 460A4181 */  sub.s      $f6, $f8, $f10
/* AEAEC 800D36EC 46068202 */  mul.s      $f8, $f16, $f6
/* AEAF0 800D36F0 46082280 */  add.s      $f10, $f4, $f8
/* AEAF4 800D36F4 460C6182 */  mul.s      $f6, $f12, $f12
/* AEAF8 800D36F8 00000000 */  nop
/* AEAFC 800D36FC 460E7102 */  mul.s      $f4, $f14, $f14
/* AEB00 800D3700 46043200 */  add.s      $f8, $f6, $f4
/* AEB04 800D3704 46108182 */  mul.s      $f6, $f16, $f16
/* AEB08 800D3708 46064100 */  add.s      $f4, $f8, $f6
/* AEB0C 800D370C 46045003 */  div.s      $f0, $f10, $f4
/* AEB10 800D3710 D42A05A8 */  ldc1       $f10, 0x5a8($at)
/* AEB14 800D3714 3C018011 */  lui        $at, 0x8011
/* AEB18 800D3718 460001A1 */  cvt.d.s    $f6, $f0
/* AEB1C 800D371C E7A00004 */  swc1       $f0, 4($sp)
/* AEB20 800D3720 462A303C */  c.lt.d     $f6, $f10
/* AEB24 800D3724 00000000 */  nop
/* AEB28 800D3728 45000004 */  bc1f       .L800D373C
/* AEB2C 800D372C 00000000 */   nop
/* AEB30 800D3730 44800000 */  mtc1       $zero, $f0
/* AEB34 800D3734 10000031 */  b          .L800D37FC
/* AEB38 800D3738 00000000 */   nop
.L800D373C:
/* AEB3C 800D373C D42205B0 */  ldc1       $f2, 0x5b0($at)
/* AEB40 800D3740 460004A1 */  cvt.d.s    $f18, $f0
/* AEB44 800D3744 3C018011 */  lui        $at, 0x8011
/* AEB48 800D3748 4622903C */  c.lt.d     $f18, $f2
/* AEB4C 800D374C 00000000 */  nop
/* AEB50 800D3750 4500000B */  bc1f       .L800D3780
/* AEB54 800D3754 00000000 */   nop
/* AEB58 800D3758 46229100 */  add.d      $f4, $f18, $f2
/* AEB5C 800D375C 3C018011 */  lui        $at, %hi(D_801105B8)
/* AEB60 800D3760 46202220 */  cvt.s.d    $f8, $f4
/* AEB64 800D3764 D42405B8 */  ldc1       $f4, %lo(D_801105B8)($at)
/* AEB68 800D3768 46084182 */  mul.s      $f6, $f8, $f8
/* AEB6C 800D376C E7A80004 */  swc1       $f8, 4($sp)
/* AEB70 800D3770 460032A1 */  cvt.d.s    $f10, $f6
/* AEB74 800D3774 46245203 */  div.d      $f8, $f10, $f4
/* AEB78 800D3778 10000020 */  b          .L800D37FC
/* AEB7C 800D377C 46204020 */   cvt.s.d   $f0, $f8
.L800D3780:
/* AEB80 800D3780 D42605C0 */  ldc1       $f6, 0x5c0($at)
/* AEB84 800D3784 3C018011 */  lui        $at, 0x8011
/* AEB88 800D3788 4632303C */  c.lt.d     $f6, $f18
/* AEB8C 800D378C 00000000 */  nop
/* AEB90 800D3790 45000005 */  bc1f       .L800D37A8
/* AEB94 800D3794 00000000 */   nop
/* AEB98 800D3798 3C013F80 */  lui        $at, 0x3f80
/* AEB9C 800D379C 44810000 */  mtc1       $at, $f0
/* AEBA0 800D37A0 10000016 */  b          .L800D37FC
/* AEBA4 800D37A4 00000000 */   nop
.L800D37A8:
/* AEBA8 800D37A8 D42A05C8 */  ldc1       $f10, 0x5c8($at)
/* AEBAC 800D37AC 3C013F80 */  lui        $at, 0x3f80
/* AEBB0 800D37B0 4632503C */  c.lt.d     $f10, $f18
/* AEBB4 800D37B4 00000000 */  nop
/* AEBB8 800D37B8 45000010 */  bc1f       .L800D37FC
/* AEBBC 800D37BC 00000000 */   nop
/* AEBC0 800D37C0 44812000 */  mtc1       $at, $f4
/* AEBC4 800D37C4 3C018011 */  lui        $at, %hi(D_801105D0)
/* AEBC8 800D37C8 46040201 */  sub.s      $f8, $f0, $f4
/* AEBCC 800D37CC 460041A1 */  cvt.d.s    $f6, $f8
/* AEBD0 800D37D0 46223281 */  sub.d      $f10, $f6, $f2
/* AEBD4 800D37D4 D42605D0 */  ldc1       $f6, %lo(D_801105D0)($at)
/* AEBD8 800D37D8 3C013FF0 */  lui        $at, 0x3ff0
/* AEBDC 800D37DC 462054A0 */  cvt.s.d    $f18, $f10
/* AEBE0 800D37E0 46129102 */  mul.s      $f4, $f18, $f18
/* AEBE4 800D37E4 44812800 */  mtc1       $at, $f5
/* AEBE8 800D37E8 46002221 */  cvt.d.s    $f8, $f4
/* AEBEC 800D37EC 44802000 */  mtc1       $zero, $f4
/* AEBF0 800D37F0 46264283 */  div.d      $f10, $f8, $f6
/* AEBF4 800D37F4 462A2201 */  sub.d      $f8, $f4, $f10
/* AEBF8 800D37F8 46204020 */  cvt.s.d    $f0, $f8
.L800D37FC:
/* AEBFC 800D37FC 46006302 */  mul.s      $f12, $f12, $f0
/* AEC00 800D3800 C7A60040 */  lwc1       $f6, 0x40($sp)
/* AEC04 800D3804 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* AEC08 800D3808 46007382 */  mul.s      $f14, $f14, $f0
/* AEC0C 800D380C 27AE0040 */  addiu      $t6, $sp, 0x40
/* AEC10 800D3810 00801025 */  or         $v0, $a0, $zero
/* AEC14 800D3814 46008402 */  mul.s      $f16, $f16, $f0
/* AEC18 800D3818 460C3100 */  add.s      $f4, $f6, $f12
/* AEC1C 800D381C C7A60048 */  lwc1       $f6, 0x48($sp)
/* AEC20 800D3820 460E5200 */  add.s      $f8, $f10, $f14
/* AEC24 800D3824 E7A40040 */  swc1       $f4, 0x40($sp)
/* AEC28 800D3828 46103100 */  add.s      $f4, $f6, $f16
/* AEC2C 800D382C E7A80044 */  swc1       $f8, 0x44($sp)
/* AEC30 800D3830 E7A40048 */  swc1       $f4, 0x48($sp)
/* AEC34 800D3834 8DC10000 */  lw         $at, ($t6)
/* AEC38 800D3838 AC810000 */  sw         $at, ($a0)
/* AEC3C 800D383C 8DD90004 */  lw         $t9, 4($t6)
/* AEC40 800D3840 AC990004 */  sw         $t9, 4($a0)
/* AEC44 800D3844 8DC10008 */  lw         $at, 8($t6)
/* AEC48 800D3848 27BD0058 */  addiu      $sp, $sp, 0x58
/* AEC4C 800D384C 03E00008 */  jr         $ra
/* AEC50 800D3850 AC810008 */   sw        $at, 8($a0)

glabel func_800D3854
/* AEC54 800D3854 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* AEC58 800D3858 AFBF001C */  sw         $ra, 0x1c($sp)
/* AEC5C 800D385C AFA400D0 */  sw         $a0, 0xd0($sp)
/* AEC60 800D3860 AFA500D4 */  sw         $a1, 0xd4($sp)
/* AEC64 800D3864 AFA700DC */  sw         $a3, 0xdc($sp)
/* AEC68 800D3868 C4C4001C */  lwc1       $f4, 0x1c($a2)
/* AEC6C 800D386C 3C048017 */  lui        $a0, %hi(D_80175680)
/* AEC70 800D3870 24845680 */  addiu      $a0, $a0, %lo(D_80175680)
/* AEC74 800D3874 E7A400C4 */  swc1       $f4, 0xc4($sp)
/* AEC78 800D3878 C4C60020 */  lwc1       $f6, 0x20($a2)
/* AEC7C 800D387C 94820000 */  lhu        $v0, ($a0)
/* AEC80 800D3880 E7A600C8 */  swc1       $f6, 0xc8($sp)
/* AEC84 800D3884 C4C80024 */  lwc1       $f8, 0x24($a2)
/* AEC88 800D3888 30430020 */  andi       $v1, $v0, 0x20
/* AEC8C 800D388C 94820002 */  lhu        $v0, 2($a0)
/* AEC90 800D3890 E7A800CC */  swc1       $f8, 0xcc($sp)
/* AEC94 800D3894 C4CA000C */  lwc1       $f10, 0xc($a2)
/* AEC98 800D3898 304E0002 */  andi       $t6, $v0, 2
/* AEC9C 800D389C E7AA00B8 */  swc1       $f10, 0xb8($sp)
/* AECA0 800D38A0 C4C40010 */  lwc1       $f4, 0x10($a2)
/* AECA4 800D38A4 E7A400BC */  swc1       $f4, 0xbc($sp)
/* AECA8 800D38A8 C4C60014 */  lwc1       $f6, 0x14($a2)
/* AECAC 800D38AC E7A600C0 */  swc1       $f6, 0xc0($sp)
/* AECB0 800D38B0 C4C80028 */  lwc1       $f8, 0x28($a2)
/* AECB4 800D38B4 E7A800AC */  swc1       $f8, 0xac($sp)
/* AECB8 800D38B8 C4CA002C */  lwc1       $f10, 0x2c($a2)
/* AECBC 800D38BC E7AA00B0 */  swc1       $f10, 0xb0($sp)
/* AECC0 800D38C0 C4C40030 */  lwc1       $f4, 0x30($a2)
/* AECC4 800D38C4 1460002B */  bnez       $v1, .L800D3974
/* AECC8 800D38C8 E7A400B4 */   swc1      $f4, 0xb4($sp)
/* AECCC 800D38CC 11C00015 */  beqz       $t6, .L800D3924
/* AECD0 800D38D0 00401825 */   or        $v1, $v0, $zero
/* AECD4 800D38D4 3C028011 */  lui        $v0, %hi(D_80108FE0)
/* AECD8 800D38D8 24428FE0 */  addiu      $v0, $v0, %lo(D_80108FE0)
/* AECDC 800D38DC 8C4F0000 */  lw         $t7, ($v0)
/* AECE0 800D38E0 2404002D */  addiu      $a0, $zero, 0x2d
/* AECE4 800D38E4 00002825 */  or         $a1, $zero, $zero
/* AECE8 800D38E8 25F8FFFF */  addiu      $t8, $t7, -1
/* AECEC 800D38EC 2B01FFFE */  slti       $at, $t8, -2
/* AECF0 800D38F0 10200004 */  beqz       $at, .L800D3904
/* AECF4 800D38F4 AC580000 */   sw        $t8, ($v0)
/* AECF8 800D38F8 2408FFFE */  addiu      $t0, $zero, -2
/* AECFC 800D38FC 1000001D */  b          .L800D3974
/* AED00 800D3900 AC480000 */   sw        $t0, ($v0)
.L800D3904:
/* AED04 800D3904 24090010 */  addiu      $t1, $zero, 0x10
/* AED08 800D3908 AFA90014 */  sw         $t1, 0x14($sp)
/* AED0C 800D390C 00003025 */  or         $a2, $zero, $zero
/* AED10 800D3910 00003825 */  or         $a3, $zero, $zero
/* AED14 800D3914 0C021FB4 */  jal        func_80087ED0
/* AED18 800D3918 AFA00010 */   sw        $zero, 0x10($sp)
/* AED1C 800D391C 10000016 */  b          .L800D3978
/* AED20 800D3920 C7A600C4 */   lwc1      $f6, 0xc4($sp)
.L800D3924:
/* AED24 800D3924 306A0001 */  andi       $t2, $v1, 1
/* AED28 800D3928 11400012 */  beqz       $t2, .L800D3974
/* AED2C 800D392C 3C028011 */   lui       $v0, %hi(D_80108FE0)
/* AED30 800D3930 24428FE0 */  addiu      $v0, $v0, %lo(D_80108FE0)
/* AED34 800D3934 8C4B0000 */  lw         $t3, ($v0)
/* AED38 800D3938 2404002D */  addiu      $a0, $zero, 0x2d
/* AED3C 800D393C 00002825 */  or         $a1, $zero, $zero
/* AED40 800D3940 256C0001 */  addiu      $t4, $t3, 1
/* AED44 800D3944 29810003 */  slti       $at, $t4, 3
/* AED48 800D3948 14200004 */  bnez       $at, .L800D395C
/* AED4C 800D394C AC4C0000 */   sw        $t4, ($v0)
/* AED50 800D3950 240E0002 */  addiu      $t6, $zero, 2
/* AED54 800D3954 10000007 */  b          .L800D3974
/* AED58 800D3958 AC4E0000 */   sw        $t6, ($v0)
.L800D395C:
/* AED5C 800D395C 240F0010 */  addiu      $t7, $zero, 0x10
/* AED60 800D3960 AFAF0014 */  sw         $t7, 0x14($sp)
/* AED64 800D3964 00003025 */  or         $a2, $zero, $zero
/* AED68 800D3968 00003825 */  or         $a3, $zero, $zero
/* AED6C 800D396C 0C021FB4 */  jal        func_80087ED0
/* AED70 800D3970 AFA00010 */   sw        $zero, 0x10($sp)
.L800D3974:
/* AED74 800D3974 C7A600C4 */  lwc1       $f6, 0xc4($sp)
.L800D3978:
/* AED78 800D3978 C7A800B8 */  lwc1       $f8, 0xb8($sp)
/* AED7C 800D397C C7AA00C8 */  lwc1       $f10, 0xc8($sp)
/* AED80 800D3980 C7A400BC */  lwc1       $f4, 0xbc($sp)
/* AED84 800D3984 46083001 */  sub.s      $f0, $f6, $f8
/* AED88 800D3988 C7A800C0 */  lwc1       $f8, 0xc0($sp)
/* AED8C 800D398C C7A600CC */  lwc1       $f6, 0xcc($sp)
/* AED90 800D3990 46045081 */  sub.s      $f2, $f10, $f4
/* AED94 800D3994 46000282 */  mul.s      $f10, $f0, $f0
/* AED98 800D3998 E7A00094 */  swc1       $f0, 0x94($sp)
/* AED9C 800D399C 46083381 */  sub.s      $f14, $f6, $f8
/* AEDA0 800D39A0 46021102 */  mul.s      $f4, $f2, $f2
/* AEDA4 800D39A4 E7A20098 */  swc1       $f2, 0x98($sp)
/* AEDA8 800D39A8 E7A2003C */  swc1       $f2, 0x3c($sp)
/* AEDAC 800D39AC 460E7202 */  mul.s      $f8, $f14, $f14
/* AEDB0 800D39B0 E7AE009C */  swc1       $f14, 0x9c($sp)
/* AEDB4 800D39B4 E7AE0038 */  swc1       $f14, 0x38($sp)
/* AEDB8 800D39B8 46045180 */  add.s      $f6, $f10, $f4
/* AEDBC 800D39BC 0C036C2C */  jal        func_800DB0B0
/* AEDC0 800D39C0 46083300 */   add.s     $f12, $f6, $f8
/* AEDC4 800D39C4 3C018011 */  lui        $at, %hi(D_801105D8)
/* AEDC8 800D39C8 D42405D8 */  ldc1       $f4, %lo(D_801105D8)($at)
/* AEDCC 800D39CC 460002A1 */  cvt.d.s    $f10, $f0
/* AEDD0 800D39D0 3C014000 */  lui        $at, 0x4000
/* AEDD4 800D39D4 46245182 */  mul.d      $f6, $f10, $f4
/* AEDD8 800D39D8 44814800 */  mtc1       $at, $f9
/* AEDDC 800D39DC 44804000 */  mtc1       $zero, $f8
/* AEDE0 800D39E0 3C028011 */  lui        $v0, %hi(D_80108FE0)
/* AEDE4 800D39E4 24428FE0 */  addiu      $v0, $v0, %lo(D_80108FE0)
/* AEDE8 800D39E8 8C580000 */  lw         $t8, ($v0)
/* AEDEC 800D39EC 3C038011 */  lui        $v1, %hi(D_80108FDC)
/* AEDF0 800D39F0 24638FDC */  addiu      $v1, $v1, %lo(D_80108FDC)
/* AEDF4 800D39F4 46283283 */  div.d      $f10, $f6, $f8
/* AEDF8 800D39F8 44982000 */  mtc1       $t8, $f4
/* AEDFC 800D39FC C46E0000 */  lwc1       $f14, ($v1)
/* AEE00 800D3A00 3C013FE0 */  lui        $at, 0x3fe0
/* AEE04 800D3A04 468021A0 */  cvt.s.w    $f6, $f4
/* AEE08 800D3A08 44813800 */  mtc1       $at, $f7
/* AEE0C 800D3A0C 3C018011 */  lui        $at, 0x8011
/* AEE10 800D3A10 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* AEE14 800D3A14 462050A0 */  cvt.s.d    $f2, $f10
/* AEE18 800D3A18 46023202 */  mul.s      $f8, $f6, $f2
/* AEE1C 800D3A1C 44803000 */  mtc1       $zero, $f6
/* AEE20 800D3A20 460E4281 */  sub.s      $f10, $f8, $f14
/* AEE24 800D3A24 46005121 */  cvt.d.s    $f4, $f10
/* AEE28 800D3A28 460012A1 */  cvt.d.s    $f10, $f2
/* AEE2C 800D3A2C 46262202 */  mul.d      $f8, $f4, $f6
/* AEE30 800D3A30 D42405E0 */  ldc1       $f4, 0x5e0($at)
/* AEE34 800D3A34 46245182 */  mul.d      $f6, $f10, $f4
/* AEE38 800D3A38 46204320 */  cvt.s.d    $f12, $f8
/* AEE3C 800D3A3C 46203420 */  cvt.s.d    $f16, $f6
/* AEE40 800D3A40 460C803C */  c.lt.s     $f16, $f12
/* AEE44 800D3A44 00000000 */  nop
/* AEE48 800D3A48 45020004 */  bc1fl      .L800D3A5C
/* AEE4C 800D3A4C 46008007 */   neg.s     $f0, $f16
/* AEE50 800D3A50 10000007 */  b          .L800D3A70
/* AEE54 800D3A54 46008306 */   mov.s     $f12, $f16
/* AEE58 800D3A58 46008007 */  neg.s      $f0, $f16
.L800D3A5C:
/* AEE5C 800D3A5C 4600603C */  c.lt.s     $f12, $f0
/* AEE60 800D3A60 00000000 */  nop
/* AEE64 800D3A64 45020003 */  bc1fl      .L800D3A74
/* AEE68 800D3A68 460C7200 */   add.s     $f8, $f14, $f12
/* AEE6C 800D3A6C 46000306 */  mov.s      $f12, $f0
.L800D3A70:
/* AEE70 800D3A70 460C7200 */  add.s      $f8, $f14, $f12
.L800D3A74:
/* AEE74 800D3A74 C7A000B8 */  lwc1       $f0, 0xb8($sp)
/* AEE78 800D3A78 C7AA00C4 */  lwc1       $f10, 0xc4($sp)
/* AEE7C 800D3A7C E7B20098 */  swc1       $f18, 0x98($sp)
/* AEE80 800D3A80 E4680000 */  swc1       $f8, ($v1)
/* AEE84 800D3A84 C46E0000 */  lwc1       $f14, ($v1)
/* AEE88 800D3A88 C7A80038 */  lwc1       $f8, 0x38($sp)
/* AEE8C 800D3A8C 27B90094 */  addiu      $t9, $sp, 0x94
/* AEE90 800D3A90 460E5100 */  add.s      $f4, $f10, $f14
/* AEE94 800D3A94 C7AA00AC */  lwc1       $f10, 0xac($sp)
/* AEE98 800D3A98 E7A8009C */  swc1       $f8, 0x9c($sp)
/* AEE9C 800D3A9C 460E0000 */  add.s      $f0, $f0, $f14
/* AEEA0 800D3AA0 E7A400C4 */  swc1       $f4, 0xc4($sp)
/* AEEA4 800D3AA4 C7A800BC */  lwc1       $f8, 0xbc($sp)
/* AEEA8 800D3AA8 27AA0080 */  addiu      $t2, $sp, 0x80
/* AEEAC 800D3AAC 46002181 */  sub.s      $f6, $f4, $f0
/* AEEB0 800D3AB0 27AB007C */  addiu      $t3, $sp, 0x7c
/* AEEB4 800D3AB4 27A70084 */  addiu      $a3, $sp, 0x84
/* AEEB8 800D3AB8 46005101 */  sub.s      $f4, $f10, $f0
/* AEEBC 800D3ABC E7A60094 */  swc1       $f6, 0x94($sp)
/* AEEC0 800D3AC0 C7A600B0 */  lwc1       $f6, 0xb0($sp)
/* AEEC4 800D3AC4 E7A40088 */  swc1       $f4, 0x88($sp)
/* AEEC8 800D3AC8 46083281 */  sub.s      $f10, $f6, $f8
/* AEECC 800D3ACC C7A600C0 */  lwc1       $f6, 0xc0($sp)
/* AEED0 800D3AD0 C7A400B4 */  lwc1       $f4, 0xb4($sp)
/* AEED4 800D3AD4 E7AA008C */  swc1       $f10, 0x8c($sp)
/* AEED8 800D3AD8 46062201 */  sub.s      $f8, $f4, $f6
/* AEEDC 800D3ADC E7A80090 */  swc1       $f8, 0x90($sp)
/* AEEE0 800D3AE0 8F210000 */  lw         $at, ($t9)
/* AEEE4 800D3AE4 AFA10000 */  sw         $at, ($sp)
/* AEEE8 800D3AE8 8F250004 */  lw         $a1, 4($t9)
/* AEEEC 800D3AEC 8FA40000 */  lw         $a0, ($sp)
/* AEEF0 800D3AF0 AFA50004 */  sw         $a1, 4($sp)
/* AEEF4 800D3AF4 8F260008 */  lw         $a2, 8($t9)
/* AEEF8 800D3AF8 E7A000B8 */  swc1       $f0, 0xb8($sp)
/* AEEFC 800D3AFC AFAB0014 */  sw         $t3, 0x14($sp)
/* AEF00 800D3B00 AFAA0010 */  sw         $t2, 0x10($sp)
/* AEF04 800D3B04 0C0360CE */  jal        func_800D8338
/* AEF08 800D3B08 AFA60008 */   sw        $a2, 8($sp)
/* AEF0C 800D3B0C 27AC0088 */  addiu      $t4, $sp, 0x88
/* AEF10 800D3B10 8D810000 */  lw         $at, ($t4)
/* AEF14 800D3B14 27AF0074 */  addiu      $t7, $sp, 0x74
/* AEF18 800D3B18 27B80070 */  addiu      $t8, $sp, 0x70
/* AEF1C 800D3B1C AFA10000 */  sw         $at, ($sp)
/* AEF20 800D3B20 8D850004 */  lw         $a1, 4($t4)
/* AEF24 800D3B24 8FA40000 */  lw         $a0, ($sp)
/* AEF28 800D3B28 27A70078 */  addiu      $a3, $sp, 0x78
/* AEF2C 800D3B2C AFA50004 */  sw         $a1, 4($sp)
/* AEF30 800D3B30 8D860008 */  lw         $a2, 8($t4)
/* AEF34 800D3B34 AFB80014 */  sw         $t8, 0x14($sp)
/* AEF38 800D3B38 AFAF0010 */  sw         $t7, 0x10($sp)
/* AEF3C 800D3B3C 0C0360CE */  jal        func_800D8338
/* AEF40 800D3B40 AFA60008 */   sw        $a2, 8($sp)
/* AEF44 800D3B44 8FA200E4 */  lw         $v0, 0xe4($sp)
/* AEF48 800D3B48 3C088024 */  lui        $t0, 0x8024
/* AEF4C 800D3B4C 3C098011 */  lui        $t1, 0x8011
/* AEF50 800D3B50 10400004 */  beqz       $v0, .L800D3B64
/* AEF54 800D3B54 27A40094 */   addiu     $a0, $sp, 0x94
/* AEF58 800D3B58 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* AEF5C 800D3B5C 1000000E */  b          .L800D3B98
/* AEF60 800D3B60 E7AA006C */   swc1      $f10, 0x6c($sp)
.L800D3B64:
/* AEF64 800D3B64 C7A40078 */  lwc1       $f4, 0x78($sp)
/* AEF68 800D3B68 3C018011 */  lui        $at, %hi(D_801105E8)
/* AEF6C 800D3B6C D42805E8 */  ldc1       $f8, %lo(D_801105E8)($at)
/* AEF70 800D3B70 460021A1 */  cvt.d.s    $f6, $f4
/* AEF74 800D3B74 C7A40084 */  lwc1       $f4, 0x84($sp)
/* AEF78 800D3B78 46283282 */  mul.d      $f10, $f6, $f8
/* AEF7C 800D3B7C 3C018011 */  lui        $at, %hi(D_801105F0)
/* AEF80 800D3B80 D42805F0 */  ldc1       $f8, %lo(D_801105F0)($at)
/* AEF84 800D3B84 460021A1 */  cvt.d.s    $f6, $f4
/* AEF88 800D3B88 46283102 */  mul.d      $f4, $f6, $f8
/* AEF8C 800D3B8C 46245180 */  add.d      $f6, $f10, $f4
/* AEF90 800D3B90 46203220 */  cvt.s.d    $f8, $f6
/* AEF94 800D3B94 E7A8006C */  swc1       $f8, 0x6c($sp)
.L800D3B98:
/* AEF98 800D3B98 8D080CD8 */  lw         $t0, 0xcd8($t0)
/* AEF9C 800D3B9C 3C018011 */  lui        $at, %hi(D_80108FF4)
/* AEFA0 800D3BA0 C4328FF4 */  lwc1       $f18, %lo(D_80108FF4)($at)
/* AEFA4 800D3BA4 0008C8C0 */  sll        $t9, $t0, 3
/* AEFA8 800D3BA8 0328C823 */  subu       $t9, $t9, $t0
/* AEFAC 800D3BAC 3C018011 */  lui        $at, %hi(D_80108FF8)
/* AEFB0 800D3BB0 0019C880 */  sll        $t9, $t9, 2
/* AEFB4 800D3BB4 C42A8FF8 */  lwc1       $f10, %lo(D_80108FF8)($at)
/* AEFB8 800D3BB8 0328C823 */  subu       $t9, $t9, $t0
/* AEFBC 800D3BBC 0019C8C0 */  sll        $t9, $t9, 3
/* AEFC0 800D3BC0 3C018024 */  lui        $at, %hi(D_80240D70)
/* AEFC4 800D3BC4 00390821 */  addu       $at, $at, $t9
/* AEFC8 800D3BC8 C4200D70 */  lwc1       $f0, %lo(D_80240D70)($at)
/* AEFCC 800D3BCC E7AA0064 */  swc1       $f10, 0x64($sp)
/* AEFD0 800D3BD0 46009032 */  c.eq.s     $f18, $f0
/* AEFD4 800D3BD4 00000000 */  nop
/* AEFD8 800D3BD8 45010003 */  bc1t       .L800D3BE8
/* AEFDC 800D3BDC 3C018011 */   lui       $at, %hi(D_80108FF0)
/* AEFE0 800D3BE0 AC208FF0 */  sw         $zero, %lo(D_80108FF0)($at)
/* AEFE4 800D3BE4 46000486 */  mov.s      $f18, $f0
.L800D3BE8:
/* AEFE8 800D3BE8 8D298FF0 */  lw         $t1, -0x7010($t1)
/* AEFEC 800D3BEC 15200046 */  bnez       $t1, .L800D3D08
/* AEFF0 800D3BF0 00000000 */   nop
/* AEFF4 800D3BF4 14400044 */  bnez       $v0, .L800D3D08
/* AEFF8 800D3BF8 3C018011 */   lui       $at, %hi(D_80108FFC)
/* AEFFC 800D3BFC C4248FFC */  lwc1       $f4, %lo(D_80108FFC)($at)
/* AF000 800D3C00 3C018011 */  lui        $at, 0x8011
/* AF004 800D3C04 240A0001 */  addiu      $t2, $zero, 1
/* AF008 800D3C08 4612203C */  c.lt.s     $f4, $f18
/* AF00C 800D3C0C 00000000 */  nop
/* AF010 800D3C10 45000005 */  bc1f       .L800D3C28
/* AF014 800D3C14 00000000 */   nop
/* AF018 800D3C18 3C013F80 */  lui        $at, 0x3f80
/* AF01C 800D3C1C 44818000 */  mtc1       $at, $f16
/* AF020 800D3C20 1000000E */  b          .L800D3C5C
/* AF024 800D3C24 46049001 */   sub.s     $f0, $f18, $f4
.L800D3C28:
/* AF028 800D3C28 C4268FFC */  lwc1       $f6, -0x7004($at)
/* AF02C 800D3C2C 44804000 */  mtc1       $zero, $f8
/* AF030 800D3C30 00001025 */  or         $v0, $zero, $zero
/* AF034 800D3C34 46069001 */  sub.s      $f0, $f18, $f6
/* AF038 800D3C38 4608003C */  c.lt.s     $f0, $f8
/* AF03C 800D3C3C 00000000 */  nop
/* AF040 800D3C40 45000003 */  bc1f       .L800D3C50
/* AF044 800D3C44 00000000 */   nop
/* AF048 800D3C48 10000001 */  b          .L800D3C50
/* AF04C 800D3C4C 2402FFFF */   addiu     $v0, $zero, -1
.L800D3C50:
/* AF050 800D3C50 44825000 */  mtc1       $v0, $f10
/* AF054 800D3C54 00000000 */  nop
/* AF058 800D3C58 46805420 */  cvt.s.w    $f16, $f10
.L800D3C5C:
/* AF05C 800D3C5C 44802000 */  mtc1       $zero, $f4
/* AF060 800D3C60 3C018011 */  lui        $at, 0x8011
/* AF064 800D3C64 4604003C */  c.lt.s     $f0, $f4
/* AF068 800D3C68 00000000 */  nop
/* AF06C 800D3C6C 45020004 */  bc1fl      .L800D3C80
/* AF070 800D3C70 46000386 */   mov.s     $f14, $f0
/* AF074 800D3C74 10000002 */  b          .L800D3C80
/* AF078 800D3C78 46000387 */   neg.s     $f14, $f0
/* AF07C 800D3C7C 46000386 */  mov.s      $f14, $f0
.L800D3C80:
/* AF080 800D3C80 D42805F8 */  ldc1       $f8, 0x5f8($at)
/* AF084 800D3C84 460071A1 */  cvt.d.s    $f6, $f14
/* AF088 800D3C88 3C018011 */  lui        $at, %hi(D_80110600)
/* AF08C 800D3C8C 46283282 */  mul.d      $f10, $f6, $f8
/* AF090 800D3C90 D4240600 */  ldc1       $f4, %lo(D_80110600)($at)
/* AF094 800D3C94 3C018011 */  lui        $at, 0x8011
/* AF098 800D3C98 46205320 */  cvt.s.d    $f12, $f10
/* AF09C 800D3C9C 460060A1 */  cvt.d.s    $f2, $f12
/* AF0A0 800D3CA0 4624103C */  c.lt.d     $f2, $f4
/* AF0A4 800D3CA4 00000000 */  nop
/* AF0A8 800D3CA8 45000007 */  bc1f       .L800D3CC8
/* AF0AC 800D3CAC 00000000 */   nop
/* AF0B0 800D3CB0 3C018011 */  lui        $at, %hi(D_80108FF0)
/* AF0B4 800D3CB4 AC2A8FF0 */  sw         $t2, %lo(D_80108FF0)($at)
/* AF0B8 800D3CB8 3C018011 */  lui        $at, %hi(D_80108FF4)
/* AF0BC 800D3CBC 46009006 */  mov.s      $f0, $f18
/* AF0C0 800D3CC0 10000014 */  b          .L800D3D14
/* AF0C4 800D3CC4 E4328FF4 */   swc1      $f18, %lo(D_80108FF4)($at)
.L800D3CC8:
/* AF0C8 800D3CC8 E4328FF4 */  swc1       $f18, -0x700c($at)
/* AF0CC 800D3CCC 3C013FF0 */  lui        $at, 0x3ff0
/* AF0D0 800D3CD0 44813800 */  mtc1       $at, $f7
/* AF0D4 800D3CD4 44803000 */  mtc1       $zero, $f6
/* AF0D8 800D3CD8 3C013F80 */  lui        $at, 0x3f80
/* AF0DC 800D3CDC 4622303C */  c.lt.d     $f6, $f2
/* AF0E0 800D3CE0 00000000 */  nop
/* AF0E4 800D3CE4 45000003 */  bc1f       .L800D3CF4
/* AF0E8 800D3CE8 00000000 */   nop
/* AF0EC 800D3CEC 44816000 */  mtc1       $at, $f12
/* AF0F0 800D3CF0 00000000 */  nop
.L800D3CF4:
/* AF0F4 800D3CF4 460C8202 */  mul.s      $f8, $f16, $f12
/* AF0F8 800D3CF8 3C018011 */  lui        $at, %hi(D_80108FFC)
/* AF0FC 800D3CFC C42A8FFC */  lwc1       $f10, %lo(D_80108FFC)($at)
/* AF100 800D3D00 10000004 */  b          .L800D3D14
/* AF104 800D3D04 460A4000 */   add.s     $f0, $f8, $f10
.L800D3D08:
/* AF108 800D3D08 3C018011 */  lui        $at, %hi(D_80108FF4)
/* AF10C 800D3D0C E4328FF4 */  swc1       $f18, %lo(D_80108FF4)($at)
/* AF110 800D3D10 46009006 */  mov.s      $f0, $f18
.L800D3D14:
/* AF114 800D3D14 3C018011 */  lui        $at, %hi(D_80108FFC)
/* AF118 800D3D18 44060000 */  mfc1       $a2, $f0
/* AF11C 800D3D1C E4208FFC */  swc1       $f0, %lo(D_80108FFC)($at)
/* AF120 800D3D20 8FA5006C */  lw         $a1, 0x6c($sp)
/* AF124 800D3D24 0C03611A */  jal        func_800D8468
/* AF128 800D3D28 8FA70064 */   lw        $a3, 0x64($sp)
/* AF12C 800D3D2C C7A400B8 */  lwc1       $f4, 0xb8($sp)
/* AF130 800D3D30 C7A60094 */  lwc1       $f6, 0x94($sp)
/* AF134 800D3D34 C7A800BC */  lwc1       $f8, 0xbc($sp)
/* AF138 800D3D38 C7AA0098 */  lwc1       $f10, 0x98($sp)
/* AF13C 800D3D3C 46062000 */  add.s      $f0, $f4, $f6
/* AF140 800D3D40 8FA200E0 */  lw         $v0, 0xe0($sp)
/* AF144 800D3D44 8FAB00DC */  lw         $t3, 0xdc($sp)
/* AF148 800D3D48 460A4080 */  add.s      $f2, $f8, $f10
/* AF14C 800D3D4C C7AA009C */  lwc1       $f10, 0x9c($sp)
/* AF150 800D3D50 C7A600C0 */  lwc1       $f6, 0xc0($sp)
/* AF154 800D3D54 E5640000 */  swc1       $f4, ($t3)
/* AF158 800D3D58 E5680004 */  swc1       $f8, 4($t3)
/* AF15C 800D3D5C 460A3300 */  add.s      $f12, $f6, $f10
/* AF160 800D3D60 E5660008 */  swc1       $f6, 8($t3)
/* AF164 800D3D64 E4400000 */  swc1       $f0, ($v0)
/* AF168 800D3D68 E4420004 */  swc1       $f2, 4($v0)
/* AF16C 800D3D6C E44C0008 */  swc1       $f12, 8($v0)
/* AF170 800D3D70 8FBF001C */  lw         $ra, 0x1c($sp)
/* AF174 800D3D74 27BD00D0 */  addiu      $sp, $sp, 0xd0
/* AF178 800D3D78 03E00008 */  jr         $ra
/* AF17C 800D3D7C 00000000 */   nop

glabel func_800D3D80
/* AF180 800D3D80 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* AF184 800D3D84 AFBF001C */  sw         $ra, 0x1c($sp)
/* AF188 800D3D88 AFA40060 */  sw         $a0, 0x60($sp)
/* AF18C 800D3D8C AFA50064 */  sw         $a1, 0x64($sp)
/* AF190 800D3D90 AFA60068 */  sw         $a2, 0x68($sp)
/* AF194 800D3D94 AFA7006C */  sw         $a3, 0x6c($sp)
/* AF198 800D3D98 27AE0064 */  addiu      $t6, $sp, 0x64
/* AF19C 800D3D9C 8DC10000 */  lw         $at, ($t6)
/* AF1A0 800D3DA0 27B90058 */  addiu      $t9, $sp, 0x58
/* AF1A4 800D3DA4 27A80054 */  addiu      $t0, $sp, 0x54
/* AF1A8 800D3DA8 AFA10000 */  sw         $at, ($sp)
/* AF1AC 800D3DAC 8DC50004 */  lw         $a1, 4($t6)
/* AF1B0 800D3DB0 8FA40000 */  lw         $a0, ($sp)
/* AF1B4 800D3DB4 27A7005C */  addiu      $a3, $sp, 0x5c
/* AF1B8 800D3DB8 AFA50004 */  sw         $a1, 4($sp)
/* AF1BC 800D3DBC 8DC60008 */  lw         $a2, 8($t6)
/* AF1C0 800D3DC0 AFA80014 */  sw         $t0, 0x14($sp)
/* AF1C4 800D3DC4 AFB90010 */  sw         $t9, 0x10($sp)
/* AF1C8 800D3DC8 0C0360CE */  jal        func_800D8338
/* AF1CC 800D3DCC AFA60008 */   sw        $a2, 8($sp)
/* AF1D0 800D3DD0 C7A40058 */  lwc1       $f4, 0x58($sp)
/* AF1D4 800D3DD4 3C018011 */  lui        $at, %hi(D_80110608)
/* AF1D8 800D3DD8 D4280608 */  ldc1       $f8, %lo(D_80110608)($at)
/* AF1DC 800D3DDC 460021A1 */  cvt.d.s    $f6, $f4
/* AF1E0 800D3DE0 3C018011 */  lui        $at, %hi(D_80110610)
/* AF1E4 800D3DE4 46283282 */  mul.d      $f10, $f6, $f8
/* AF1E8 800D3DE8 D4320610 */  ldc1       $f18, %lo(D_80110610)($at)
/* AF1EC 800D3DEC 46325103 */  div.d      $f4, $f10, $f18
/* AF1F0 800D3DF0 0C036B60 */  jal        func_800DAD80
/* AF1F4 800D3DF4 46202320 */   cvt.s.d   $f12, $f4
/* AF1F8 800D3DF8 C7A6005C */  lwc1       $f6, 0x5c($sp)
/* AF1FC 800D3DFC 27A90070 */  addiu      $t1, $sp, 0x70
/* AF200 800D3E00 27AC0048 */  addiu      $t4, $sp, 0x48
/* AF204 800D3E04 46060202 */  mul.s      $f8, $f0, $f6
/* AF208 800D3E08 27AD0044 */  addiu      $t5, $sp, 0x44
/* AF20C 800D3E0C 27A7004C */  addiu      $a3, $sp, 0x4c
/* AF210 800D3E10 E7A80050 */  swc1       $f8, 0x50($sp)
/* AF214 800D3E14 8D210000 */  lw         $at, ($t1)
/* AF218 800D3E18 AFA10000 */  sw         $at, ($sp)
/* AF21C 800D3E1C 8D250004 */  lw         $a1, 4($t1)
/* AF220 800D3E20 8FA40000 */  lw         $a0, ($sp)
/* AF224 800D3E24 AFA50004 */  sw         $a1, 4($sp)
/* AF228 800D3E28 8D260008 */  lw         $a2, 8($t1)
/* AF22C 800D3E2C AFAD0014 */  sw         $t5, 0x14($sp)
/* AF230 800D3E30 AFAC0010 */  sw         $t4, 0x10($sp)
/* AF234 800D3E34 0C0360CE */  jal        func_800D8338
/* AF238 800D3E38 AFA60008 */   sw        $a2, 8($sp)
/* AF23C 800D3E3C C7AE0048 */  lwc1       $f14, 0x48($sp)
/* AF240 800D3E40 3C018011 */  lui        $at, %hi(D_80110618)
/* AF244 800D3E44 D4320618 */  ldc1       $f18, %lo(D_80110618)($at)
/* AF248 800D3E48 460072A1 */  cvt.d.s    $f10, $f14
/* AF24C 800D3E4C 3C018011 */  lui        $at, %hi(D_80110620)
/* AF250 800D3E50 46325102 */  mul.d      $f4, $f10, $f18
/* AF254 800D3E54 D4260620 */  ldc1       $f6, %lo(D_80110620)($at)
/* AF258 800D3E58 46262203 */  div.d      $f8, $f4, $f6
/* AF25C 800D3E5C 0C036B60 */  jal        func_800DAD80
/* AF260 800D3E60 46204320 */   cvt.s.d   $f12, $f8
/* AF264 800D3E64 C7B0004C */  lwc1       $f16, 0x4c($sp)
/* AF268 800D3E68 C7AE0048 */  lwc1       $f14, 0x48($sp)
/* AF26C 800D3E6C C7AA0058 */  lwc1       $f10, 0x58($sp)
/* AF270 800D3E70 46100082 */  mul.s      $f2, $f0, $f16
/* AF274 800D3E74 C7A00074 */  lwc1       $f0, 0x74($sp)
/* AF278 800D3E78 460E503C */  c.lt.s     $f10, $f14
/* AF27C 800D3E7C C7B20068 */  lwc1       $f18, 0x68($sp)
/* AF280 800D3E80 C7AA0050 */  lwc1       $f10, 0x50($sp)
/* AF284 800D3E84 4500001E */  bc1f       .L800D3F00
/* AF288 800D3E88 46001306 */   mov.s     $f12, $f2
/* AF28C 800D3E8C 4600903C */  c.lt.s     $f18, $f0
/* AF290 800D3E90 27AE0064 */  addiu      $t6, $sp, 0x64
/* AF294 800D3E94 C7A40050 */  lwc1       $f4, 0x50($sp)
/* AF298 800D3E98 4502000A */  bc1fl      .L800D3EC4
/* AF29C 800D3E9C 4602203C */   c.lt.s    $f4, $f2
/* AF2A0 800D3EA0 8DC10000 */  lw         $at, ($t6)
/* AF2A4 800D3EA4 27AF0028 */  addiu      $t7, $sp, 0x28
/* AF2A8 800D3EA8 ADE10000 */  sw         $at, ($t7)
/* AF2AC 800D3EAC 8DD90004 */  lw         $t9, 4($t6)
/* AF2B0 800D3EB0 ADF90004 */  sw         $t9, 4($t7)
/* AF2B4 800D3EB4 8DC10008 */  lw         $at, 8($t6)
/* AF2B8 800D3EB8 1000002E */  b          .L800D3F74
/* AF2BC 800D3EBC ADE10008 */   sw        $at, 8($t7)
/* AF2C0 800D3EC0 4602203C */  c.lt.s     $f4, $f2
.L800D3EC4:
/* AF2C4 800D3EC4 C7A60064 */  lwc1       $f6, 0x64($sp)
/* AF2C8 800D3EC8 27A40028 */  addiu      $a0, $sp, 0x28
/* AF2CC 800D3ECC 45020007 */  bc1fl      .L800D3EEC
/* AF2D0 800D3ED0 44058000 */   mfc1      $a1, $f16
/* AF2D4 800D3ED4 C7A8006C */  lwc1       $f8, 0x6c($sp)
/* AF2D8 800D3ED8 E7A60028 */  swc1       $f6, 0x28($sp)
/* AF2DC 800D3EDC E7A0002C */  swc1       $f0, 0x2c($sp)
/* AF2E0 800D3EE0 10000024 */  b          .L800D3F74
/* AF2E4 800D3EE4 E7A80030 */   swc1      $f8, 0x30($sp)
/* AF2E8 800D3EE8 44058000 */  mfc1       $a1, $f16
.L800D3EEC:
/* AF2EC 800D3EEC 44067000 */  mfc1       $a2, $f14
/* AF2F0 800D3EF0 0C03611A */  jal        func_800D8468
/* AF2F4 800D3EF4 8FA70054 */   lw        $a3, 0x54($sp)
/* AF2F8 800D3EF8 1000001F */  b          .L800D3F78
/* AF2FC 800D3EFC C7A0007C */   lwc1      $f0, 0x7c($sp)
.L800D3F00:
/* AF300 800D3F00 4602503C */  c.lt.s     $f10, $f2
/* AF304 800D3F04 8FA70054 */  lw         $a3, 0x54($sp)
/* AF308 800D3F08 27A40028 */  addiu      $a0, $sp, 0x28
/* AF30C 800D3F0C 45020016 */  bc1fl      .L800D3F68
/* AF310 800D3F10 44058000 */   mfc1      $a1, $f16
/* AF314 800D3F14 44058000 */  mfc1       $a1, $f16
/* AF318 800D3F18 44067000 */  mfc1       $a2, $f14
/* AF31C 800D3F1C 27A40028 */  addiu      $a0, $sp, 0x28
/* AF320 800D3F20 0C03611A */  jal        func_800D8468
/* AF324 800D3F24 E7AC0040 */   swc1      $f12, 0x40($sp)
/* AF328 800D3F28 C7AC0040 */  lwc1       $f12, 0x40($sp)
/* AF32C 800D3F2C C7B20050 */  lwc1       $f18, 0x50($sp)
/* AF330 800D3F30 C7A40028 */  lwc1       $f4, 0x28($sp)
/* AF334 800D3F34 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* AF338 800D3F38 460C9003 */  div.s      $f0, $f18, $f12
/* AF33C 800D3F3C C7B20030 */  lwc1       $f18, 0x30($sp)
/* AF340 800D3F40 46002182 */  mul.s      $f6, $f4, $f0
/* AF344 800D3F44 00000000 */  nop
/* AF348 800D3F48 46004282 */  mul.s      $f10, $f8, $f0
/* AF34C 800D3F4C 00000000 */  nop
/* AF350 800D3F50 46009102 */  mul.s      $f4, $f18, $f0
/* AF354 800D3F54 E7A60028 */  swc1       $f6, 0x28($sp)
/* AF358 800D3F58 E7AA002C */  swc1       $f10, 0x2c($sp)
/* AF35C 800D3F5C 10000005 */  b          .L800D3F74
/* AF360 800D3F60 E7A40030 */   swc1      $f4, 0x30($sp)
/* AF364 800D3F64 44058000 */  mfc1       $a1, $f16
.L800D3F68:
/* AF368 800D3F68 44067000 */  mfc1       $a2, $f14
/* AF36C 800D3F6C 0C03611A */  jal        func_800D8468
/* AF370 800D3F70 8FA70054 */   lw        $a3, 0x54($sp)
.L800D3F74:
/* AF374 800D3F74 C7A0007C */  lwc1       $f0, 0x7c($sp)
.L800D3F78:
/* AF378 800D3F78 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* AF37C 800D3F7C 27A80028 */  addiu      $t0, $sp, 0x28
/* AF380 800D3F80 4606003C */  c.lt.s     $f0, $f6
/* AF384 800D3F84 00000000 */  nop
/* AF388 800D3F88 45020003 */  bc1fl      .L800D3F98
/* AF38C 800D3F8C 8FA20060 */   lw        $v0, 0x60($sp)
/* AF390 800D3F90 E7A0002C */  swc1       $f0, 0x2c($sp)
/* AF394 800D3F94 8FA20060 */  lw         $v0, 0x60($sp)
.L800D3F98:
/* AF398 800D3F98 8D010000 */  lw         $at, ($t0)
/* AF39C 800D3F9C AC410000 */  sw         $at, ($v0)
/* AF3A0 800D3FA0 8D0B0004 */  lw         $t3, 4($t0)
/* AF3A4 800D3FA4 AC4B0004 */  sw         $t3, 4($v0)
/* AF3A8 800D3FA8 8D010008 */  lw         $at, 8($t0)
/* AF3AC 800D3FAC AC410008 */  sw         $at, 8($v0)
/* AF3B0 800D3FB0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AF3B4 800D3FB4 27BD0060 */  addiu      $sp, $sp, 0x60
/* AF3B8 800D3FB8 03E00008 */  jr         $ra
/* AF3BC 800D3FBC 00000000 */   nop

glabel func_800D3FC0
/* AF3C0 800D3FC0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* AF3C4 800D3FC4 AFBF002C */  sw         $ra, 0x2c($sp)
/* AF3C8 800D3FC8 AFA40060 */  sw         $a0, 0x60($sp)
/* AF3CC 800D3FCC AFA50064 */  sw         $a1, 0x64($sp)
/* AF3D0 800D3FD0 AFA60068 */  sw         $a2, 0x68($sp)
/* AF3D4 800D3FD4 AFA7006C */  sw         $a3, 0x6c($sp)
/* AF3D8 800D3FD8 27AE0064 */  addiu      $t6, $sp, 0x64
/* AF3DC 800D3FDC 8DC10000 */  lw         $at, ($t6)
/* AF3E0 800D3FE0 27B90070 */  addiu      $t9, $sp, 0x70
/* AF3E4 800D3FE4 27AA0048 */  addiu      $t2, $sp, 0x48
/* AF3E8 800D3FE8 AFA10000 */  sw         $at, ($sp)
/* AF3EC 800D3FEC 8DC50004 */  lw         $a1, 4($t6)
/* AF3F0 800D3FF0 8FA40000 */  lw         $a0, ($sp)
/* AF3F4 800D3FF4 AFA50004 */  sw         $a1, 4($sp)
/* AF3F8 800D3FF8 8DC10008 */  lw         $at, 8($t6)
/* AF3FC 800D3FFC AFA10008 */  sw         $at, 8($sp)
/* AF400 800D4000 8F210000 */  lw         $at, ($t9)
/* AF404 800D4004 8FA60008 */  lw         $a2, 8($sp)
/* AF408 800D4008 AFA1000C */  sw         $at, 0xc($sp)
/* AF40C 800D400C 8F290004 */  lw         $t1, 4($t9)
/* AF410 800D4010 8FA7000C */  lw         $a3, 0xc($sp)
/* AF414 800D4014 AFA90010 */  sw         $t1, 0x10($sp)
/* AF418 800D4018 8F210008 */  lw         $at, 8($t9)
/* AF41C 800D401C AFAA0018 */  sw         $t2, 0x18($sp)
/* AF420 800D4020 0C02BAAA */  jal        func_800AEAA8
/* AF424 800D4024 AFA10014 */   sw        $at, 0x14($sp)
/* AF428 800D4028 27A40048 */  addiu      $a0, $sp, 0x48
/* AF42C 800D402C 0C02BA0B */  jal        func_800AE82C
/* AF430 800D4030 3C054248 */   lui       $a1, 0x4248
/* AF434 800D4034 27A40048 */  addiu      $a0, $sp, 0x48
/* AF438 800D4038 24050077 */  addiu      $a1, $zero, 0x77
/* AF43C 800D403C 0C032689 */  jal        func_800C9A24
/* AF440 800D4040 24060070 */   addiu     $a2, $zero, 0x70
/* AF444 800D4044 C7A40070 */  lwc1       $f4, 0x70($sp)
/* AF448 800D4048 C7A60064 */  lwc1       $f6, 0x64($sp)
/* AF44C 800D404C C7A80074 */  lwc1       $f8, 0x74($sp)
/* AF450 800D4050 C7AA0068 */  lwc1       $f10, 0x68($sp)
/* AF454 800D4054 46062001 */  sub.s      $f0, $f4, $f6
/* AF458 800D4058 C7A6006C */  lwc1       $f6, 0x6c($sp)
/* AF45C 800D405C C7A40078 */  lwc1       $f4, 0x78($sp)
/* AF460 800D4060 460A4481 */  sub.s      $f18, $f8, $f10
/* AF464 800D4064 46000202 */  mul.s      $f8, $f0, $f0
/* AF468 800D4068 E7A0003C */  swc1       $f0, 0x3c($sp)
/* AF46C 800D406C 46062381 */  sub.s      $f14, $f4, $f6
/* AF470 800D4070 46129282 */  mul.s      $f10, $f18, $f18
/* AF474 800D4074 E7B20040 */  swc1       $f18, 0x40($sp)
/* AF478 800D4078 460E7182 */  mul.s      $f6, $f14, $f14
/* AF47C 800D407C E7AE0044 */  swc1       $f14, 0x44($sp)
/* AF480 800D4080 460A4100 */  add.s      $f4, $f8, $f10
/* AF484 800D4084 0C036C2C */  jal        func_800DB0B0
/* AF488 800D4088 46062300 */   add.s     $f12, $f4, $f6
/* AF48C 800D408C 3C014049 */  lui        $at, 0x4049
/* AF490 800D4090 44816800 */  mtc1       $at, $f13
/* AF494 800D4094 44806000 */  mtc1       $zero, $f12
/* AF498 800D4098 46000221 */  cvt.d.s    $f8, $f0
/* AF49C 800D409C C7AE0044 */  lwc1       $f14, 0x44($sp)
/* AF4A0 800D40A0 4628603E */  c.le.d     $f12, $f8
/* AF4A4 800D40A4 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* AF4A8 800D40A8 C7B20040 */  lwc1       $f18, 0x40($sp)
/* AF4AC 800D40AC 46000086 */  mov.s      $f2, $f0
/* AF4B0 800D40B0 45000038 */  bc1f       .L800D4194
/* AF4B4 800D40B4 27AB0064 */   addiu     $t3, $sp, 0x64
/* AF4B8 800D40B8 8D610000 */  lw         $at, ($t3)
/* AF4BC 800D40BC 27AF0070 */  addiu      $t7, $sp, 0x70
/* AF4C0 800D40C0 24080077 */  addiu      $t0, $zero, 0x77
/* AF4C4 800D40C4 AFA10000 */  sw         $at, ($sp)
/* AF4C8 800D40C8 8D650004 */  lw         $a1, 4($t3)
/* AF4CC 800D40CC 24190001 */  addiu      $t9, $zero, 1
/* AF4D0 800D40D0 24090001 */  addiu      $t1, $zero, 1
/* AF4D4 800D40D4 AFA50004 */  sw         $a1, 4($sp)
/* AF4D8 800D40D8 8D610008 */  lw         $at, 8($t3)
/* AF4DC 800D40DC 8FA40000 */  lw         $a0, ($sp)
/* AF4E0 800D40E0 AFA10008 */  sw         $at, 8($sp)
/* AF4E4 800D40E4 8DE10000 */  lw         $at, ($t7)
/* AF4E8 800D40E8 8FA60008 */  lw         $a2, 8($sp)
/* AF4EC 800D40EC AFA1000C */  sw         $at, 0xc($sp)
/* AF4F0 800D40F0 8DF80004 */  lw         $t8, 4($t7)
/* AF4F4 800D40F4 8FA7000C */  lw         $a3, 0xc($sp)
/* AF4F8 800D40F8 AFB80010 */  sw         $t8, 0x10($sp)
/* AF4FC 800D40FC 8DE10008 */  lw         $at, 8($t7)
/* AF500 800D4100 E7B20040 */  swc1       $f18, 0x40($sp)
/* AF504 800D4104 E7B0003C */  swc1       $f16, 0x3c($sp)
/* AF508 800D4108 E7AE0044 */  swc1       $f14, 0x44($sp)
/* AF50C 800D410C E7A20038 */  swc1       $f2, 0x38($sp)
/* AF510 800D4110 AFA90020 */  sw         $t1, 0x20($sp)
/* AF514 800D4114 AFB9001C */  sw         $t9, 0x1c($sp)
/* AF518 800D4118 AFA80018 */  sw         $t0, 0x18($sp)
/* AF51C 800D411C 0C032A3E */  jal        func_800CA8F8
/* AF520 800D4120 AFA10014 */   sw        $at, 0x14($sp)
/* AF524 800D4124 3C014049 */  lui        $at, 0x4049
/* AF528 800D4128 44816800 */  mtc1       $at, $f13
/* AF52C 800D412C 44806000 */  mtc1       $zero, $f12
/* AF530 800D4130 C7A20038 */  lwc1       $f2, 0x38($sp)
/* AF534 800D4134 C7AE0044 */  lwc1       $f14, 0x44($sp)
/* AF538 800D4138 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* AF53C 800D413C 10400015 */  beqz       $v0, .L800D4194
/* AF540 800D4140 C7B20040 */   lwc1      $f18, 0x40($sp)
/* AF544 800D4144 460012A1 */  cvt.d.s    $f10, $f2
/* AF548 800D4148 46008121 */  cvt.d.s    $f4, $f16
/* AF54C 800D414C 462A6003 */  div.d      $f0, $f12, $f10
/* AF550 800D4150 46009221 */  cvt.d.s    $f8, $f18
/* AF554 800D4154 46202182 */  mul.d      $f6, $f4, $f0
/* AF558 800D4158 46007121 */  cvt.d.s    $f4, $f14
/* AF55C 800D415C 46204282 */  mul.d      $f10, $f8, $f0
/* AF560 800D4160 C4480094 */  lwc1       $f8, 0x94($v0)
/* AF564 800D4164 46203420 */  cvt.s.d    $f16, $f6
/* AF568 800D4168 46202182 */  mul.d      $f6, $f4, $f0
/* AF56C 800D416C 462054A0 */  cvt.s.d    $f18, $f10
/* AF570 800D4170 46104281 */  sub.s      $f10, $f8, $f16
/* AF574 800D4174 462033A0 */  cvt.s.d    $f14, $f6
/* AF578 800D4178 E7AA0070 */  swc1       $f10, 0x70($sp)
/* AF57C 800D417C C4440098 */  lwc1       $f4, 0x98($v0)
/* AF580 800D4180 46122181 */  sub.s      $f6, $f4, $f18
/* AF584 800D4184 E7A60074 */  swc1       $f6, 0x74($sp)
/* AF588 800D4188 C448009C */  lwc1       $f8, 0x9c($v0)
/* AF58C 800D418C 460E4281 */  sub.s      $f10, $f8, $f14
/* AF590 800D4190 E7AA0078 */  swc1       $f10, 0x78($sp)
.L800D4194:
/* AF594 800D4194 27A40070 */  addiu      $a0, $sp, 0x70
/* AF598 800D4198 8C810000 */  lw         $at, ($a0)
/* AF59C 800D419C 240B0077 */  addiu      $t3, $zero, 0x77
/* AF5A0 800D41A0 AFA10004 */  sw         $at, 4($sp)
/* AF5A4 800D41A4 8C860004 */  lw         $a2, 4($a0)
/* AF5A8 800D41A8 8FA50004 */  lw         $a1, 4($sp)
/* AF5AC 800D41AC AFA60008 */  sw         $a2, 8($sp)
/* AF5B0 800D41B0 8C810008 */  lw         $at, 8($a0)
/* AF5B4 800D41B4 AFAB0014 */  sw         $t3, 0x14($sp)
/* AF5B8 800D41B8 AFA1000C */  sw         $at, 0xc($sp)
/* AF5BC 800D41BC 3C014248 */  lui        $at, 0x4248
/* AF5C0 800D41C0 44812000 */  mtc1       $at, $f4
/* AF5C4 800D41C4 8FA7000C */  lw         $a3, 0xc($sp)
/* AF5C8 800D41C8 0C0329CD */  jal        func_800CA734
/* AF5CC 800D41CC E7A40010 */   swc1      $f4, 0x10($sp)
/* AF5D0 800D41D0 27AD0070 */  addiu      $t5, $sp, 0x70
/* AF5D4 800D41D4 8FA20060 */  lw         $v0, 0x60($sp)
/* AF5D8 800D41D8 8DA10000 */  lw         $at, ($t5)
/* AF5DC 800D41DC AC410000 */  sw         $at, ($v0)
/* AF5E0 800D41E0 8DB80004 */  lw         $t8, 4($t5)
/* AF5E4 800D41E4 AC580004 */  sw         $t8, 4($v0)
/* AF5E8 800D41E8 8DA10008 */  lw         $at, 8($t5)
/* AF5EC 800D41EC AC410008 */  sw         $at, 8($v0)
/* AF5F0 800D41F0 8FBF002C */  lw         $ra, 0x2c($sp)
/* AF5F4 800D41F4 27BD0060 */  addiu      $sp, $sp, 0x60
/* AF5F8 800D41F8 03E00008 */  jr         $ra
/* AF5FC 800D41FC 00000000 */   nop

glabel func_800D4200
/* AF600 800D4200 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* AF604 800D4204 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* AF608 800D4208 27BDFF68 */  addiu      $sp, $sp, -0x98
/* AF60C 800D420C AFA5009C */  sw         $a1, 0x9c($sp)
/* AF610 800D4210 000E78C0 */  sll        $t7, $t6, 3
/* AF614 800D4214 01EE7823 */  subu       $t7, $t7, $t6
/* AF618 800D4218 000F7880 */  sll        $t7, $t7, 2
/* AF61C 800D421C 3C188024 */  lui        $t8, 0x8024
/* AF620 800D4220 01EE7823 */  subu       $t7, $t7, $t6
/* AF624 800D4224 AFBF0024 */  sw         $ra, 0x24($sp)
/* AF628 800D4228 AFA40098 */  sw         $a0, 0x98($sp)
/* AF62C 800D422C AFA700A4 */  sw         $a3, 0xa4($sp)
/* AF630 800D4230 000F78C0 */  sll        $t7, $t7, 3
/* AF634 800D4234 27180CE0 */  addiu      $t8, $t8, 0xce0
/* AF638 800D4238 01F82821 */  addu       $a1, $t7, $t8
/* AF63C 800D423C C4A400D0 */  lwc1       $f4, 0xd0($a1)
/* AF640 800D4240 C4C60044 */  lwc1       $f6, 0x44($a2)
/* AF644 800D4244 C4C80020 */  lwc1       $f8, 0x20($a2)
/* AF648 800D4248 C4D2001C */  lwc1       $f18, 0x1c($a2)
/* AF64C 800D424C 46062002 */  mul.s      $f0, $f4, $f6
/* AF650 800D4250 8FB900AC */  lw         $t9, 0xac($sp)
/* AF654 800D4254 27A4005C */  addiu      $a0, $sp, 0x5c
/* AF658 800D4258 33280002 */  andi       $t0, $t9, 2
/* AF65C 800D425C 46004280 */  add.s      $f10, $f8, $f0
/* AF660 800D4260 E7AA0090 */  swc1       $f10, 0x90($sp)
/* AF664 800D4264 C4C40024 */  lwc1       $f4, 0x24($a2)
/* AF668 800D4268 E7A40094 */  swc1       $f4, 0x94($sp)
/* AF66C 800D426C C4C80028 */  lwc1       $f8, 0x28($a2)
/* AF670 800D4270 C4C60010 */  lwc1       $f6, 0x10($a2)
/* AF674 800D4274 C4CC000C */  lwc1       $f12, 0xc($a2)
/* AF678 800D4278 C4CE0014 */  lwc1       $f14, 0x14($a2)
/* AF67C 800D427C E7A80068 */  swc1       $f8, 0x68($sp)
/* AF680 800D4280 C4CA002C */  lwc1       $f10, 0x2c($a2)
/* AF684 800D4284 46003080 */  add.s      $f2, $f6, $f0
/* AF688 800D4288 E7AA006C */  swc1       $f10, 0x6c($sp)
/* AF68C 800D428C C4C40030 */  lwc1       $f4, 0x30($a2)
/* AF690 800D4290 1100000D */  beqz       $t0, .L800D42C8
/* AF694 800D4294 E7A40070 */   swc1      $f4, 0x70($sp)
/* AF698 800D4298 AFA5002C */  sw         $a1, 0x2c($sp)
/* AF69C 800D429C E7A20084 */  swc1       $f2, 0x84($sp)
/* AF6A0 800D42A0 E7AC0080 */  swc1       $f12, 0x80($sp)
/* AF6A4 800D42A4 E7AE0088 */  swc1       $f14, 0x88($sp)
/* AF6A8 800D42A8 0C034D8F */  jal        func_800D363C
/* AF6AC 800D42AC E7B2008C */   swc1      $f18, 0x8c($sp)
/* AF6B0 800D42B0 8FA5002C */  lw         $a1, 0x2c($sp)
/* AF6B4 800D42B4 C7A20084 */  lwc1       $f2, 0x84($sp)
/* AF6B8 800D42B8 C7AC0080 */  lwc1       $f12, 0x80($sp)
/* AF6BC 800D42BC C7AE0088 */  lwc1       $f14, 0x88($sp)
/* AF6C0 800D42C0 1000000B */  b          .L800D42F0
/* AF6C4 800D42C4 C7B2008C */   lwc1      $f18, 0x8c($sp)
.L800D42C8:
/* AF6C8 800D42C8 C4A60098 */  lwc1       $f6, 0x98($a1)
/* AF6CC 800D42CC E7A6005C */  swc1       $f6, 0x5c($sp)
/* AF6D0 800D42D0 C4CA0044 */  lwc1       $f10, 0x44($a2)
/* AF6D4 800D42D4 C4A800D0 */  lwc1       $f8, 0xd0($a1)
/* AF6D8 800D42D8 C4A6009C */  lwc1       $f6, 0x9c($a1)
/* AF6DC 800D42DC 460A4102 */  mul.s      $f4, $f8, $f10
/* AF6E0 800D42E0 46043200 */  add.s      $f8, $f6, $f4
/* AF6E4 800D42E4 E7A80060 */  swc1       $f8, 0x60($sp)
/* AF6E8 800D42E8 C4AA00A0 */  lwc1       $f10, 0xa0($a1)
/* AF6EC 800D42EC E7AA0064 */  swc1       $f10, 0x64($sp)
.L800D42F0:
/* AF6F0 800D42F0 8FA900AC */  lw         $t1, 0xac($sp)
/* AF6F4 800D42F4 C7A8005C */  lwc1       $f8, 0x5c($sp)
/* AF6F8 800D42F8 3C013F80 */  lui        $at, 0x3f80
/* AF6FC 800D42FC 312A0001 */  andi       $t2, $t1, 1
/* AF700 800D4300 1140000D */  beqz       $t2, .L800D4338
/* AF704 800D4304 460C4281 */   sub.s     $f10, $f8, $f12
/* AF708 800D4308 C4A000B0 */  lwc1       $f0, 0xb0($a1)
/* AF70C 800D430C 44803800 */  mtc1       $zero, $f7
/* AF710 800D4310 44803000 */  mtc1       $zero, $f6
/* AF714 800D4314 46000121 */  cvt.d.s    $f4, $f0
/* AF718 800D4318 3C013F80 */  lui        $at, 0x3f80
/* AF71C 800D431C 4626203E */  c.le.d     $f4, $f6
/* AF720 800D4320 00000000 */  nop
/* AF724 800D4324 45020007 */  bc1fl      .L800D4344
/* AF728 800D4328 C7A60060 */   lwc1      $f6, 0x60($sp)
/* AF72C 800D432C 44810000 */  mtc1       $at, $f0
/* AF730 800D4330 10000004 */  b          .L800D4344
/* AF734 800D4334 C7A60060 */   lwc1      $f6, 0x60($sp)
.L800D4338:
/* AF738 800D4338 44810000 */  mtc1       $at, $f0
/* AF73C 800D433C 00000000 */  nop
/* AF740 800D4340 C7A60060 */  lwc1       $f6, 0x60($sp)
.L800D4344:
/* AF744 800D4344 C7A80064 */  lwc1       $f8, 0x64($sp)
/* AF748 800D4348 E7AA0050 */  swc1       $f10, 0x50($sp)
/* AF74C 800D434C 46023101 */  sub.s      $f4, $f6, $f2
/* AF750 800D4350 27AB0050 */  addiu      $t3, $sp, 0x50
/* AF754 800D4354 27AE0044 */  addiu      $t6, $sp, 0x44
/* AF758 800D4358 460E4281 */  sub.s      $f10, $f8, $f14
/* AF75C 800D435C E7A40054 */  swc1       $f4, 0x54($sp)
/* AF760 800D4360 C7A40090 */  lwc1       $f4, 0x90($sp)
/* AF764 800D4364 460C9181 */  sub.s      $f6, $f18, $f12
/* AF768 800D4368 E7AA0058 */  swc1       $f10, 0x58($sp)
/* AF76C 800D436C C7AA0094 */  lwc1       $f10, 0x94($sp)
/* AF770 800D4370 46022201 */  sub.s      $f8, $f4, $f2
/* AF774 800D4374 E7A60044 */  swc1       $f6, 0x44($sp)
/* AF778 800D4378 C7A40044 */  lwc1       $f4, 0x44($sp)
/* AF77C 800D437C 460E5181 */  sub.s      $f6, $f10, $f14
/* AF780 800D4380 E7A80048 */  swc1       $f8, 0x48($sp)
/* AF784 800D4384 46002282 */  mul.s      $f10, $f4, $f0
/* AF788 800D4388 27A40038 */  addiu      $a0, $sp, 0x38
/* AF78C 800D438C E7A6004C */  swc1       $f6, 0x4c($sp)
/* AF790 800D4390 46004102 */  mul.s      $f4, $f8, $f0
/* AF794 800D4394 E7AA0044 */  swc1       $f10, 0x44($sp)
/* AF798 800D4398 46003282 */  mul.s      $f10, $f6, $f0
/* AF79C 800D439C E7A40048 */  swc1       $f4, 0x48($sp)
/* AF7A0 800D43A0 E7AA004C */  swc1       $f10, 0x4c($sp)
/* AF7A4 800D43A4 8D610000 */  lw         $at, ($t3)
/* AF7A8 800D43A8 C4A80040 */  lwc1       $f8, 0x40($a1)
/* AF7AC 800D43AC AFA10004 */  sw         $at, 4($sp)
/* AF7B0 800D43B0 8D660004 */  lw         $a2, 4($t3)
/* AF7B4 800D43B4 46024401 */  sub.s      $f16, $f8, $f2
/* AF7B8 800D43B8 8FA50004 */  lw         $a1, 4($sp)
/* AF7BC 800D43BC AFA60008 */  sw         $a2, 8($sp)
/* AF7C0 800D43C0 8D610008 */  lw         $at, 8($t3)
/* AF7C4 800D43C4 AFA1000C */  sw         $at, 0xc($sp)
/* AF7C8 800D43C8 8DC10000 */  lw         $at, ($t6)
/* AF7CC 800D43CC 8FA7000C */  lw         $a3, 0xc($sp)
/* AF7D0 800D43D0 AFA10010 */  sw         $at, 0x10($sp)
/* AF7D4 800D43D4 8DD80004 */  lw         $t8, 4($t6)
/* AF7D8 800D43D8 AFB80014 */  sw         $t8, 0x14($sp)
/* AF7DC 800D43DC 8DC10008 */  lw         $at, 8($t6)
/* AF7E0 800D43E0 E7AE0088 */  swc1       $f14, 0x88($sp)
/* AF7E4 800D43E4 E7AC0080 */  swc1       $f12, 0x80($sp)
/* AF7E8 800D43E8 E7A20084 */  swc1       $f2, 0x84($sp)
/* AF7EC 800D43EC E7B0001C */  swc1       $f16, 0x1c($sp)
/* AF7F0 800D43F0 0C034F60 */  jal        func_800D3D80
/* AF7F4 800D43F4 AFA10018 */   sw        $at, 0x18($sp)
/* AF7F8 800D43F8 C7AC0080 */  lwc1       $f12, 0x80($sp)
/* AF7FC 800D43FC C7A40038 */  lwc1       $f4, 0x38($sp)
/* AF800 800D4400 C7A20084 */  lwc1       $f2, 0x84($sp)
/* AF804 800D4404 C7AE0088 */  lwc1       $f14, 0x88($sp)
/* AF808 800D4408 46046180 */  add.s      $f6, $f12, $f4
/* AF80C 800D440C C7A40040 */  lwc1       $f4, 0x40($sp)
/* AF810 800D4410 C7AA003C */  lwc1       $f10, 0x3c($sp)
/* AF814 800D4414 8FB900B0 */  lw         $t9, 0xb0($sp)
/* AF818 800D4418 E7A60074 */  swc1       $f6, 0x74($sp)
/* AF81C 800D441C 46047180 */  add.s      $f6, $f14, $f4
/* AF820 800D4420 27A80068 */  addiu      $t0, $sp, 0x68
/* AF824 800D4424 460A1200 */  add.s      $f8, $f2, $f10
/* AF828 800D4428 E7A6007C */  swc1       $f6, 0x7c($sp)
/* AF82C 800D442C 17200017 */  bnez       $t9, .L800D448C
/* AF830 800D4430 E7A80078 */   swc1      $f8, 0x78($sp)
/* AF834 800D4434 8D010000 */  lw         $at, ($t0)
/* AF838 800D4438 27A40074 */  addiu      $a0, $sp, 0x74
/* AF83C 800D443C AFA10004 */  sw         $at, 4($sp)
/* AF840 800D4440 8D060004 */  lw         $a2, 4($t0)
/* AF844 800D4444 8FA50004 */  lw         $a1, 4($sp)
/* AF848 800D4448 AFA60008 */  sw         $a2, 8($sp)
/* AF84C 800D444C 8D010008 */  lw         $at, 8($t0)
/* AF850 800D4450 AFA1000C */  sw         $at, 0xc($sp)
/* AF854 800D4454 8C810000 */  lw         $at, ($a0)
/* AF858 800D4458 8FA7000C */  lw         $a3, 0xc($sp)
/* AF85C 800D445C AFA10010 */  sw         $at, 0x10($sp)
/* AF860 800D4460 8C8B0004 */  lw         $t3, 4($a0)
/* AF864 800D4464 AFAB0014 */  sw         $t3, 0x14($sp)
/* AF868 800D4468 8C810008 */  lw         $at, 8($a0)
/* AF86C 800D446C E7AE0088 */  swc1       $f14, 0x88($sp)
/* AF870 800D4470 E7AC0080 */  swc1       $f12, 0x80($sp)
/* AF874 800D4474 E7A20084 */  swc1       $f2, 0x84($sp)
/* AF878 800D4478 0C034FF0 */  jal        func_800D3FC0
/* AF87C 800D447C AFA10018 */   sw        $at, 0x18($sp)
/* AF880 800D4480 C7A20084 */  lwc1       $f2, 0x84($sp)
/* AF884 800D4484 C7AC0080 */  lwc1       $f12, 0x80($sp)
/* AF888 800D4488 C7AE0088 */  lwc1       $f14, 0x88($sp)
.L800D448C:
/* AF88C 800D448C 8FA300A4 */  lw         $v1, 0xa4($sp)
/* AF890 800D4490 8FA200A8 */  lw         $v0, 0xa8($sp)
/* AF894 800D4494 E46C0000 */  swc1       $f12, ($v1)
/* AF898 800D4498 E4620004 */  swc1       $f2, 4($v1)
/* AF89C 800D449C E46E0008 */  swc1       $f14, 8($v1)
/* AF8A0 800D44A0 C7AA0074 */  lwc1       $f10, 0x74($sp)
/* AF8A4 800D44A4 E44A0000 */  swc1       $f10, ($v0)
/* AF8A8 800D44A8 C7A80078 */  lwc1       $f8, 0x78($sp)
/* AF8AC 800D44AC E4480004 */  swc1       $f8, 4($v0)
/* AF8B0 800D44B0 C7A4007C */  lwc1       $f4, 0x7c($sp)
/* AF8B4 800D44B4 E4440008 */  swc1       $f4, 8($v0)
/* AF8B8 800D44B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* AF8BC 800D44BC 27BD0098 */  addiu      $sp, $sp, 0x98
/* AF8C0 800D44C0 03E00008 */  jr         $ra
/* AF8C4 800D44C4 00000000 */   nop

glabel func_800D44C8
/* AF8C8 800D44C8 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* AF8CC 800D44CC 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* AF8D0 800D44D0 AFA40000 */  sw         $a0, ($sp)
/* AF8D4 800D44D4 AFA50004 */  sw         $a1, 4($sp)
/* AF8D8 800D44D8 000E78C0 */  sll        $t7, $t6, 3
/* AF8DC 800D44DC C4C4000C */  lwc1       $f4, 0xc($a2)
/* AF8E0 800D44E0 01EE7823 */  subu       $t7, $t7, $t6
/* AF8E4 800D44E4 000F7880 */  sll        $t7, $t7, 2
/* AF8E8 800D44E8 8FA40010 */  lw         $a0, 0x10($sp)
/* AF8EC 800D44EC 3C188024 */  lui        $t8, %hi(D_80240CE0)
/* AF8F0 800D44F0 01EE7823 */  subu       $t7, $t7, $t6
/* AF8F4 800D44F4 000F78C0 */  sll        $t7, $t7, 3
/* AF8F8 800D44F8 27180CE0 */  addiu      $t8, $t8, %lo(D_80240CE0)
/* AF8FC 800D44FC E4E40000 */  swc1       $f4, ($a3)
/* AF900 800D4500 01F81021 */  addu       $v0, $t7, $t8
/* AF904 800D4504 C44600D0 */  lwc1       $f6, 0xd0($v0)
/* AF908 800D4508 C4C80044 */  lwc1       $f8, 0x44($a2)
/* AF90C 800D450C C4D00010 */  lwc1       $f16, 0x10($a2)
/* AF910 800D4510 46083282 */  mul.s      $f10, $f6, $f8
/* AF914 800D4514 460A8480 */  add.s      $f18, $f16, $f10
/* AF918 800D4518 E4F20004 */  swc1       $f18, 4($a3)
/* AF91C 800D451C C4C40014 */  lwc1       $f4, 0x14($a2)
/* AF920 800D4520 E4E40008 */  swc1       $f4, 8($a3)
/* AF924 800D4524 C4460098 */  lwc1       $f6, 0x98($v0)
/* AF928 800D4528 E4860000 */  swc1       $f6, ($a0)
/* AF92C 800D452C C4D00044 */  lwc1       $f16, 0x44($a2)
/* AF930 800D4530 C44800D0 */  lwc1       $f8, 0xd0($v0)
/* AF934 800D4534 C452009C */  lwc1       $f18, 0x9c($v0)
/* AF938 800D4538 46104282 */  mul.s      $f10, $f8, $f16
/* AF93C 800D453C 460A9100 */  add.s      $f4, $f18, $f10
/* AF940 800D4540 E4840004 */  swc1       $f4, 4($a0)
/* AF944 800D4544 C44600A0 */  lwc1       $f6, 0xa0($v0)
/* AF948 800D4548 03E00008 */  jr         $ra
/* AF94C 800D454C E4860008 */   swc1      $f6, 8($a0)

glabel func_800D4550
/* AF950 800D4550 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* AF954 800D4554 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* AF958 800D4558 3C188024 */  lui        $t8, %hi(D_80240CE0)
/* AF95C 800D455C 27180CE0 */  addiu      $t8, $t8, %lo(D_80240CE0)
/* AF960 800D4560 000E78C0 */  sll        $t7, $t6, 3
/* AF964 800D4564 01EE7823 */  subu       $t7, $t7, $t6
/* AF968 800D4568 000F7880 */  sll        $t7, $t7, 2
/* AF96C 800D456C 01EE7823 */  subu       $t7, $t7, $t6
/* AF970 800D4570 000F78C0 */  sll        $t7, $t7, 3
/* AF974 800D4574 AFA40000 */  sw         $a0, ($sp)
/* AF978 800D4578 AFA50004 */  sw         $a1, 4($sp)
/* AF97C 800D457C 01F81021 */  addu       $v0, $t7, $t8
/* AF980 800D4580 C44400A4 */  lwc1       $f4, 0xa4($v0)
/* AF984 800D4584 8FA40010 */  lw         $a0, 0x10($sp)
/* AF988 800D4588 E4E40000 */  swc1       $f4, ($a3)
/* AF98C 800D458C C4C80044 */  lwc1       $f8, 0x44($a2)
/* AF990 800D4590 C44600D0 */  lwc1       $f6, 0xd0($v0)
/* AF994 800D4594 C45000A8 */  lwc1       $f16, 0xa8($v0)
/* AF998 800D4598 46083282 */  mul.s      $f10, $f6, $f8
/* AF99C 800D459C 460A8480 */  add.s      $f18, $f16, $f10
/* AF9A0 800D45A0 E4F20004 */  swc1       $f18, 4($a3)
/* AF9A4 800D45A4 C44400AC */  lwc1       $f4, 0xac($v0)
/* AF9A8 800D45A8 E4E40008 */  swc1       $f4, 8($a3)
/* AF9AC 800D45AC C4460098 */  lwc1       $f6, 0x98($v0)
/* AF9B0 800D45B0 E4860000 */  swc1       $f6, ($a0)
/* AF9B4 800D45B4 C4D00044 */  lwc1       $f16, 0x44($a2)
/* AF9B8 800D45B8 C44800D0 */  lwc1       $f8, 0xd0($v0)
/* AF9BC 800D45BC C452009C */  lwc1       $f18, 0x9c($v0)
/* AF9C0 800D45C0 46104282 */  mul.s      $f10, $f8, $f16
/* AF9C4 800D45C4 460A9100 */  add.s      $f4, $f18, $f10
/* AF9C8 800D45C8 E4840004 */  swc1       $f4, 4($a0)
/* AF9CC 800D45CC C44600A0 */  lwc1       $f6, 0xa0($v0)
/* AF9D0 800D45D0 03E00008 */  jr         $ra
/* AF9D4 800D45D4 E4860008 */   swc1      $f6, 8($a0)

glabel func_800D45D8
/* AF9D8 800D45D8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* AF9DC 800D45DC 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* AF9E0 800D45E0 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* AF9E4 800D45E4 AFBF002C */  sw         $ra, 0x2c($sp)
/* AF9E8 800D45E8 AFB00028 */  sw         $s0, 0x28($sp)
/* AF9EC 800D45EC AFA40058 */  sw         $a0, 0x58($sp)
/* AF9F0 800D45F0 AFA5005C */  sw         $a1, 0x5c($sp)
/* AF9F4 800D45F4 AFA70064 */  sw         $a3, 0x64($sp)
/* AF9F8 800D45F8 000E78C0 */  sll        $t7, $t6, 3
/* AF9FC 800D45FC C4C4000C */  lwc1       $f4, 0xc($a2)
/* AFA00 800D4600 01EE7823 */  subu       $t7, $t7, $t6
/* AFA04 800D4604 000F7880 */  sll        $t7, $t7, 2
/* AFA08 800D4608 3C188024 */  lui        $t8, %hi(D_80240CE0)
/* AFA0C 800D460C 01EE7823 */  subu       $t7, $t7, $t6
/* AFA10 800D4610 000F78C0 */  sll        $t7, $t7, 3
/* AFA14 800D4614 27180CE0 */  addiu      $t8, $t8, %lo(D_80240CE0)
/* AFA18 800D4618 E7A40048 */  swc1       $f4, 0x48($sp)
/* AFA1C 800D461C 01F81021 */  addu       $v0, $t7, $t8
/* AFA20 800D4620 C44600D0 */  lwc1       $f6, 0xd0($v0)
/* AFA24 800D4624 C4C80044 */  lwc1       $f8, 0x44($a2)
/* AFA28 800D4628 C4D00010 */  lwc1       $f16, 0x10($a2)
/* AFA2C 800D462C 27B90030 */  addiu      $t9, $sp, 0x30
/* AFA30 800D4630 46083282 */  mul.s      $f10, $f6, $f8
/* AFA34 800D4634 00C08025 */  or         $s0, $a2, $zero
/* AFA38 800D4638 27AA0048 */  addiu      $t2, $sp, 0x48
/* AFA3C 800D463C 27A4003C */  addiu      $a0, $sp, 0x3c
/* AFA40 800D4640 460A8480 */  add.s      $f18, $f16, $f10
/* AFA44 800D4644 E7B2004C */  swc1       $f18, 0x4c($sp)
/* AFA48 800D4648 C4C40014 */  lwc1       $f4, 0x14($a2)
/* AFA4C 800D464C E7A40050 */  swc1       $f4, 0x50($sp)
/* AFA50 800D4650 C44600A4 */  lwc1       $f6, 0xa4($v0)
/* AFA54 800D4654 E7A60030 */  swc1       $f6, 0x30($sp)
/* AFA58 800D4658 C4D00044 */  lwc1       $f16, 0x44($a2)
/* AFA5C 800D465C C44800D0 */  lwc1       $f8, 0xd0($v0)
/* AFA60 800D4660 C45200A8 */  lwc1       $f18, 0xa8($v0)
/* AFA64 800D4664 46104282 */  mul.s      $f10, $f8, $f16
/* AFA68 800D4668 460A9100 */  add.s      $f4, $f18, $f10
/* AFA6C 800D466C E7A40034 */  swc1       $f4, 0x34($sp)
/* AFA70 800D4670 C44600AC */  lwc1       $f6, 0xac($v0)
/* AFA74 800D4674 E7A60038 */  swc1       $f6, 0x38($sp)
/* AFA78 800D4678 8F210000 */  lw         $at, ($t9)
/* AFA7C 800D467C AFA10004 */  sw         $at, 4($sp)
/* AFA80 800D4680 8F260004 */  lw         $a2, 4($t9)
/* AFA84 800D4684 8FA50004 */  lw         $a1, 4($sp)
/* AFA88 800D4688 AFA60008 */  sw         $a2, 8($sp)
/* AFA8C 800D468C 8F210008 */  lw         $at, 8($t9)
/* AFA90 800D4690 AFA1000C */  sw         $at, 0xc($sp)
/* AFA94 800D4694 8D410000 */  lw         $at, ($t2)
/* AFA98 800D4698 8FA7000C */  lw         $a3, 0xc($sp)
/* AFA9C 800D469C AFA10010 */  sw         $at, 0x10($sp)
/* AFAA0 800D46A0 8D4C0004 */  lw         $t4, 4($t2)
/* AFAA4 800D46A4 AFAC0014 */  sw         $t4, 0x14($sp)
/* AFAA8 800D46A8 8D410008 */  lw         $at, 8($t2)
/* AFAAC 800D46AC AFA10018 */  sw         $at, 0x18($sp)
/* AFAB0 800D46B0 C44800B0 */  lwc1       $f8, 0xb0($v0)
/* AFAB4 800D46B4 AFA20054 */  sw         $v0, 0x54($sp)
/* AFAB8 800D46B8 0C036091 */  jal        func_800D8244
/* AFABC 800D46BC E7A8001C */   swc1      $f8, 0x1c($sp)
/* AFAC0 800D46C0 8FA40064 */  lw         $a0, 0x64($sp)
/* AFAC4 800D46C4 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* AFAC8 800D46C8 8FA20054 */  lw         $v0, 0x54($sp)
/* AFACC 800D46CC 8FA30068 */  lw         $v1, 0x68($sp)
/* AFAD0 800D46D0 E4900000 */  swc1       $f16, ($a0)
/* AFAD4 800D46D4 C7B20040 */  lwc1       $f18, 0x40($sp)
/* AFAD8 800D46D8 E4920004 */  swc1       $f18, 4($a0)
/* AFADC 800D46DC C7AA0044 */  lwc1       $f10, 0x44($sp)
/* AFAE0 800D46E0 E48A0008 */  swc1       $f10, 8($a0)
/* AFAE4 800D46E4 C4440098 */  lwc1       $f4, 0x98($v0)
/* AFAE8 800D46E8 E4640000 */  swc1       $f4, ($v1)
/* AFAEC 800D46EC C6080044 */  lwc1       $f8, 0x44($s0)
/* AFAF0 800D46F0 C44600D0 */  lwc1       $f6, 0xd0($v0)
/* AFAF4 800D46F4 C452009C */  lwc1       $f18, 0x9c($v0)
/* AFAF8 800D46F8 46083402 */  mul.s      $f16, $f6, $f8
/* AFAFC 800D46FC 46109280 */  add.s      $f10, $f18, $f16
/* AFB00 800D4700 E46A0004 */  swc1       $f10, 4($v1)
/* AFB04 800D4704 C44400A0 */  lwc1       $f4, 0xa0($v0)
/* AFB08 800D4708 E4640008 */  swc1       $f4, 8($v1)
/* AFB0C 800D470C 8FBF002C */  lw         $ra, 0x2c($sp)
/* AFB10 800D4710 8FB00028 */  lw         $s0, 0x28($sp)
/* AFB14 800D4714 27BD0058 */  addiu      $sp, $sp, 0x58
/* AFB18 800D4718 03E00008 */  jr         $ra
/* AFB1C 800D471C 00000000 */   nop

glabel func_800D4720
/* AFB20 800D4720 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* AFB24 800D4724 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* AFB28 800D4728 27BDFF00 */  addiu      $sp, $sp, -0x100
/* AFB2C 800D472C 3C188024 */  lui        $t8, 0x8024
/* AFB30 800D4730 000E78C0 */  sll        $t7, $t6, 3
/* AFB34 800D4734 01EE7823 */  subu       $t7, $t7, $t6
/* AFB38 800D4738 000F7880 */  sll        $t7, $t7, 2
/* AFB3C 800D473C 01EE7823 */  subu       $t7, $t7, $t6
/* AFB40 800D4740 000F78C0 */  sll        $t7, $t7, 3
/* AFB44 800D4744 27180CE0 */  addiu      $t8, $t8, 0xce0
/* AFB48 800D4748 AFBF001C */  sw         $ra, 0x1c($sp)
/* AFB4C 800D474C AFA50104 */  sw         $a1, 0x104($sp)
/* AFB50 800D4750 AFA7010C */  sw         $a3, 0x10c($sp)
/* AFB54 800D4754 01F81821 */  addu       $v1, $t7, $t8
/* AFB58 800D4758 C46400AC */  lwc1       $f4, 0xac($v1)
/* AFB5C 800D475C C46200B0 */  lwc1       $f2, 0xb0($v1)
/* AFB60 800D4760 3C018011 */  lui        $at, 0x8011
/* AFB64 800D4764 E7A40044 */  swc1       $f4, 0x44($sp)
/* AFB68 800D4768 C4C6001C */  lwc1       $f6, 0x1c($a2)
/* AFB6C 800D476C E7A600F4 */  swc1       $f6, 0xf4($sp)
/* AFB70 800D4770 C4CA0044 */  lwc1       $f10, 0x44($a2)
/* AFB74 800D4774 C46800D0 */  lwc1       $f8, 0xd0($v1)
/* AFB78 800D4778 C4C40020 */  lwc1       $f4, 0x20($a2)
/* AFB7C 800D477C 460A4002 */  mul.s      $f0, $f8, $f10
/* AFB80 800D4780 46002180 */  add.s      $f6, $f4, $f0
/* AFB84 800D4784 E7A600F8 */  swc1       $f6, 0xf8($sp)
/* AFB88 800D4788 C4C80024 */  lwc1       $f8, 0x24($a2)
/* AFB8C 800D478C E7A800FC */  swc1       $f8, 0xfc($sp)
/* AFB90 800D4790 C48A0004 */  lwc1       $f10, 4($a0)
/* AFB94 800D4794 D4280628 */  ldc1       $f8, 0x628($at)
/* AFB98 800D4798 E7AA00E8 */  swc1       $f10, 0xe8($sp)
/* AFB9C 800D479C C4840050 */  lwc1       $f4, 0x50($a0)
/* AFBA0 800D47A0 460021A1 */  cvt.d.s    $f6, $f4
/* AFBA4 800D47A4 C4840008 */  lwc1       $f4, 8($a0)
/* AFBA8 800D47A8 46283282 */  mul.d      $f10, $f6, $f8
/* AFBAC 800D47AC 460021A1 */  cvt.d.s    $f6, $f4
/* AFBB0 800D47B0 46000121 */  cvt.d.s    $f4, $f0
/* AFBB4 800D47B4 462A3200 */  add.d      $f8, $f6, $f10
/* AFBB8 800D47B8 46244180 */  add.d      $f6, $f8, $f4
/* AFBBC 800D47BC 462032A0 */  cvt.s.d    $f10, $f6
/* AFBC0 800D47C0 E7AA00EC */  swc1       $f10, 0xec($sp)
/* AFBC4 800D47C4 C488000C */  lwc1       $f8, 0xc($a0)
/* AFBC8 800D47C8 E7A800F0 */  swc1       $f8, 0xf0($sp)
/* AFBCC 800D47CC C4C4000C */  lwc1       $f4, 0xc($a2)
/* AFBD0 800D47D0 E7A400C4 */  swc1       $f4, 0xc4($sp)
/* AFBD4 800D47D4 C4C60010 */  lwc1       $f6, 0x10($a2)
/* AFBD8 800D47D8 46003280 */  add.s      $f10, $f6, $f0
/* AFBDC 800D47DC E7AA00C8 */  swc1       $f10, 0xc8($sp)
/* AFBE0 800D47E0 C4C80014 */  lwc1       $f8, 0x14($a2)
/* AFBE4 800D47E4 E7A800CC */  swc1       $f8, 0xcc($sp)
/* AFBE8 800D47E8 C4C40028 */  lwc1       $f4, 0x28($a2)
/* AFBEC 800D47EC E7A400DC */  swc1       $f4, 0xdc($sp)
/* AFBF0 800D47F0 C4C6002C */  lwc1       $f6, 0x2c($a2)
/* AFBF4 800D47F4 E7A600E0 */  swc1       $f6, 0xe0($sp)
/* AFBF8 800D47F8 C4CA0030 */  lwc1       $f10, 0x30($a2)
/* AFBFC 800D47FC AFA60108 */  sw         $a2, 0x108($sp)
/* AFC00 800D4800 AFA3003C */  sw         $v1, 0x3c($sp)
/* AFC04 800D4804 E7A20048 */  swc1       $f2, 0x48($sp)
/* AFC08 800D4808 0C02CB16 */  jal        func_800B2C58
/* AFC0C 800D480C E7AA00E4 */   swc1      $f10, 0xe4($sp)
/* AFC10 800D4810 8FA3003C */  lw         $v1, 0x3c($sp)
/* AFC14 800D4814 8FA60108 */  lw         $a2, 0x108($sp)
/* AFC18 800D4818 1040001A */  beqz       $v0, .L800D4884
/* AFC1C 800D481C C7A20048 */   lwc1      $f2, 0x48($sp)
/* AFC20 800D4820 3C048024 */  lui        $a0, %hi(D_802478F8)
/* AFC24 800D4824 248478F8 */  addiu      $a0, $a0, %lo(D_802478F8)
/* AFC28 800D4828 AFA3003C */  sw         $v1, 0x3c($sp)
/* AFC2C 800D482C AFA60108 */  sw         $a2, 0x108($sp)
/* AFC30 800D4830 0C02CAEF */  jal        func_800B2BBC
/* AFC34 800D4834 E7A20048 */   swc1      $f2, 0x48($sp)
/* AFC38 800D4838 3C088024 */  lui        $t0, %hi(D_802478F8)
/* AFC3C 800D483C 250878F8 */  addiu      $t0, $t0, %lo(D_802478F8)
/* AFC40 800D4840 8D010000 */  lw         $at, ($t0)
/* AFC44 800D4844 8FA3003C */  lw         $v1, 0x3c($sp)
/* AFC48 800D4848 8FA60108 */  lw         $a2, 0x108($sp)
/* AFC4C 800D484C C7A20048 */  lwc1       $f2, 0x48($sp)
/* AFC50 800D4850 27B900B8 */  addiu      $t9, $sp, 0xb8
/* AFC54 800D4854 AF210000 */  sw         $at, ($t9)
/* AFC58 800D4858 8D010008 */  lw         $at, 8($t0)
/* AFC5C 800D485C 8D0B0004 */  lw         $t3, 4($t0)
/* AFC60 800D4860 AF210008 */  sw         $at, 8($t9)
/* AFC64 800D4864 AF2B0004 */  sw         $t3, 4($t9)
/* AFC68 800D4868 C46800D0 */  lwc1       $f8, 0xd0($v1)
/* AFC6C 800D486C C4C40044 */  lwc1       $f4, 0x44($a2)
/* AFC70 800D4870 C7AA00BC */  lwc1       $f10, 0xbc($sp)
/* AFC74 800D4874 46044182 */  mul.s      $f6, $f8, $f4
/* AFC78 800D4878 46065200 */  add.s      $f8, $f10, $f6
/* AFC7C 800D487C 10000010 */  b          .L800D48C0
/* AFC80 800D4880 E7A800BC */   swc1      $f8, 0xbc($sp)
.L800D4884:
/* AFC84 800D4884 3C0D8024 */  lui        $t5, %hi(D_802478F8)
/* AFC88 800D4888 25AD78F8 */  addiu      $t5, $t5, %lo(D_802478F8)
/* AFC8C 800D488C 8DA10000 */  lw         $at, ($t5)
/* AFC90 800D4890 27AC00B8 */  addiu      $t4, $sp, 0xb8
/* AFC94 800D4894 8DB80004 */  lw         $t8, 4($t5)
/* AFC98 800D4898 AD810000 */  sw         $at, ($t4)
/* AFC9C 800D489C 8DA10008 */  lw         $at, 8($t5)
/* AFCA0 800D48A0 AD980004 */  sw         $t8, 4($t4)
/* AFCA4 800D48A4 AD810008 */  sw         $at, 8($t4)
/* AFCA8 800D48A8 C4CA0044 */  lwc1       $f10, 0x44($a2)
/* AFCAC 800D48AC C46400D0 */  lwc1       $f4, 0xd0($v1)
/* AFCB0 800D48B0 C7A800BC */  lwc1       $f8, 0xbc($sp)
/* AFCB4 800D48B4 460A2182 */  mul.s      $f6, $f4, $f10
/* AFCB8 800D48B8 46064100 */  add.s      $f4, $f8, $f6
/* AFCBC 800D48BC E7A400BC */  swc1       $f4, 0xbc($sp)
.L800D48C0:
/* AFCC0 800D48C0 8FAA0118 */  lw         $t2, 0x118($sp)
/* AFCC4 800D48C4 24010001 */  addiu      $at, $zero, 1
/* AFCC8 800D48C8 5541002E */  bnel       $t2, $at, .L800D4984
/* AFCCC 800D48CC C7A400F4 */   lwc1      $f4, 0xf4($sp)
/* AFCD0 800D48D0 C7B200B8 */  lwc1       $f18, 0xb8($sp)
/* AFCD4 800D48D4 C7B000C4 */  lwc1       $f16, 0xc4($sp)
/* AFCD8 800D48D8 C7AE00BC */  lwc1       $f14, 0xbc($sp)
/* AFCDC 800D48DC C7AC00C8 */  lwc1       $f12, 0xc8($sp)
/* AFCE0 800D48E0 46109401 */  sub.s      $f16, $f18, $f16
/* AFCE4 800D48E4 C7B200C0 */  lwc1       $f18, 0xc0($sp)
/* AFCE8 800D48E8 C7AA00CC */  lwc1       $f10, 0xcc($sp)
/* AFCEC 800D48EC 460C7301 */  sub.s      $f12, $f14, $f12
/* AFCF0 800D48F0 E7B00094 */  swc1       $f16, 0x94($sp)
/* AFCF4 800D48F4 27A40094 */  addiu      $a0, $sp, 0x94
/* AFCF8 800D48F8 460A9281 */  sub.s      $f10, $f18, $f10
/* AFCFC 800D48FC E7AC0098 */  swc1       $f12, 0x98($sp)
/* AFD00 800D4900 AFA60108 */  sw         $a2, 0x108($sp)
/* AFD04 800D4904 E7A20048 */  swc1       $f2, 0x48($sp)
/* AFD08 800D4908 0C03606C */  jal        func_800D81B0
/* AFD0C 800D490C E7AA009C */   swc1      $f10, 0x9c($sp)
/* AFD10 800D4910 8FA60108 */  lw         $a2, 0x108($sp)
/* AFD14 800D4914 C7A20048 */  lwc1       $f2, 0x48($sp)
/* AFD18 800D4918 C7A80094 */  lwc1       $f8, 0x94($sp)
/* AFD1C 800D491C C4C60044 */  lwc1       $f6, 0x44($a2)
/* AFD20 800D4920 46061102 */  mul.s      $f4, $f2, $f6
/* AFD24 800D4924 C7A60098 */  lwc1       $f6, 0x98($sp)
/* AFD28 800D4928 46044282 */  mul.s      $f10, $f8, $f4
/* AFD2C 800D492C E7AA0094 */  swc1       $f10, 0x94($sp)
/* AFD30 800D4930 C4C80044 */  lwc1       $f8, 0x44($a2)
/* AFD34 800D4934 46081102 */  mul.s      $f4, $f2, $f8
/* AFD38 800D4938 00000000 */  nop
/* AFD3C 800D493C 46043202 */  mul.s      $f8, $f6, $f4
/* AFD40 800D4940 C7A6009C */  lwc1       $f6, 0x9c($sp)
/* AFD44 800D4944 E7A80098 */  swc1       $f8, 0x98($sp)
/* AFD48 800D4948 C4C40044 */  lwc1       $f4, 0x44($a2)
/* AFD4C 800D494C 46041102 */  mul.s      $f4, $f2, $f4
/* AFD50 800D4950 00000000 */  nop
/* AFD54 800D4954 46043182 */  mul.s      $f6, $f6, $f4
/* AFD58 800D4958 C7A400C4 */  lwc1       $f4, 0xc4($sp)
/* AFD5C 800D495C 460A2100 */  add.s      $f4, $f4, $f10
/* AFD60 800D4960 C7AA00C8 */  lwc1       $f10, 0xc8($sp)
/* AFD64 800D4964 E7A6009C */  swc1       $f6, 0x9c($sp)
/* AFD68 800D4968 E7A400C4 */  swc1       $f4, 0xc4($sp)
/* AFD6C 800D496C 46085100 */  add.s      $f4, $f10, $f8
/* AFD70 800D4970 C7AA00CC */  lwc1       $f10, 0xcc($sp)
/* AFD74 800D4974 46065200 */  add.s      $f8, $f10, $f6
/* AFD78 800D4978 E7A400C8 */  swc1       $f4, 0xc8($sp)
/* AFD7C 800D497C E7A800CC */  swc1       $f8, 0xcc($sp)
/* AFD80 800D4980 C7A400F4 */  lwc1       $f4, 0xf4($sp)
.L800D4984:
/* AFD84 800D4984 C7AA00C4 */  lwc1       $f10, 0xc4($sp)
/* AFD88 800D4988 C7A800F8 */  lwc1       $f8, 0xf8($sp)
/* AFD8C 800D498C 27A90094 */  addiu      $t1, $sp, 0x94
/* AFD90 800D4990 460A2181 */  sub.s      $f6, $f4, $f10
/* AFD94 800D4994 C7A400C8 */  lwc1       $f4, 0xc8($sp)
/* AFD98 800D4998 27AB008C */  addiu      $t3, $sp, 0x8c
/* AFD9C 800D499C 27AF0088 */  addiu      $t7, $sp, 0x88
/* AFDA0 800D49A0 46044281 */  sub.s      $f10, $f8, $f4
/* AFDA4 800D49A4 E7A60094 */  swc1       $f6, 0x94($sp)
/* AFDA8 800D49A8 C7A600FC */  lwc1       $f6, 0xfc($sp)
/* AFDAC 800D49AC C7A800CC */  lwc1       $f8, 0xcc($sp)
/* AFDB0 800D49B0 E7AA0098 */  swc1       $f10, 0x98($sp)
/* AFDB4 800D49B4 27A70090 */  addiu      $a3, $sp, 0x90
/* AFDB8 800D49B8 46083101 */  sub.s      $f4, $f6, $f8
/* AFDBC 800D49BC E7A4009C */  swc1       $f4, 0x9c($sp)
/* AFDC0 800D49C0 8D210000 */  lw         $at, ($t1)
/* AFDC4 800D49C4 AFA10000 */  sw         $at, ($sp)
/* AFDC8 800D49C8 8D250004 */  lw         $a1, 4($t1)
/* AFDCC 800D49CC 8FA40000 */  lw         $a0, ($sp)
/* AFDD0 800D49D0 AFA50004 */  sw         $a1, 4($sp)
/* AFDD4 800D49D4 8D260008 */  lw         $a2, 8($t1)
/* AFDD8 800D49D8 AFAF0014 */  sw         $t7, 0x14($sp)
/* AFDDC 800D49DC AFAB0010 */  sw         $t3, 0x10($sp)
/* AFDE0 800D49E0 0C0360CE */  jal        func_800D8338
/* AFDE4 800D49E4 AFA60008 */   sw        $a2, 8($sp)
/* AFDE8 800D49E8 C7AA00E8 */  lwc1       $f10, 0xe8($sp)
/* AFDEC 800D49EC C7A600B8 */  lwc1       $f6, 0xb8($sp)
/* AFDF0 800D49F0 C7A400EC */  lwc1       $f4, 0xec($sp)
/* AFDF4 800D49F4 27AE00AC */  addiu      $t6, $sp, 0xac
/* AFDF8 800D49F8 46065201 */  sub.s      $f8, $f10, $f6
/* AFDFC 800D49FC C7AA00BC */  lwc1       $f10, 0xbc($sp)
/* AFE00 800D4A00 27B800A4 */  addiu      $t8, $sp, 0xa4
/* AFE04 800D4A04 27AA00A0 */  addiu      $t2, $sp, 0xa0
/* AFE08 800D4A08 460A2181 */  sub.s      $f6, $f4, $f10
/* AFE0C 800D4A0C E7A800AC */  swc1       $f8, 0xac($sp)
/* AFE10 800D4A10 C7A800F0 */  lwc1       $f8, 0xf0($sp)
/* AFE14 800D4A14 C7A400C0 */  lwc1       $f4, 0xc0($sp)
/* AFE18 800D4A18 E7A600B0 */  swc1       $f6, 0xb0($sp)
/* AFE1C 800D4A1C 27A700A8 */  addiu      $a3, $sp, 0xa8
/* AFE20 800D4A20 46044281 */  sub.s      $f10, $f8, $f4
/* AFE24 800D4A24 E7AA00B4 */  swc1       $f10, 0xb4($sp)
/* AFE28 800D4A28 8DC10000 */  lw         $at, ($t6)
/* AFE2C 800D4A2C AFA10000 */  sw         $at, ($sp)
/* AFE30 800D4A30 8DC50004 */  lw         $a1, 4($t6)
/* AFE34 800D4A34 8FA40000 */  lw         $a0, ($sp)
/* AFE38 800D4A38 AFA50004 */  sw         $a1, 4($sp)
/* AFE3C 800D4A3C 8DC60008 */  lw         $a2, 8($t6)
/* AFE40 800D4A40 AFAA0014 */  sw         $t2, 0x14($sp)
/* AFE44 800D4A44 AFB80010 */  sw         $t8, 0x10($sp)
/* AFE48 800D4A48 0C0360CE */  jal        func_800D8338
/* AFE4C 800D4A4C AFA60008 */   sw        $a2, 8($sp)
/* AFE50 800D4A50 0C035D1F */  jal        func_800D747C
/* AFE54 800D4A54 27A400A0 */   addiu     $a0, $sp, 0xa0
/* AFE58 800D4A58 C7A600DC */  lwc1       $f6, 0xdc($sp)
/* AFE5C 800D4A5C C7A800C4 */  lwc1       $f8, 0xc4($sp)
/* AFE60 800D4A60 C7AA00E0 */  lwc1       $f10, 0xe0($sp)
/* AFE64 800D4A64 27B90064 */  addiu      $t9, $sp, 0x64
/* AFE68 800D4A68 46083101 */  sub.s      $f4, $f6, $f8
/* AFE6C 800D4A6C C7A600C8 */  lwc1       $f6, 0xc8($sp)
/* AFE70 800D4A70 27AB005C */  addiu      $t3, $sp, 0x5c
/* AFE74 800D4A74 27AF0058 */  addiu      $t7, $sp, 0x58
/* AFE78 800D4A78 46065201 */  sub.s      $f8, $f10, $f6
/* AFE7C 800D4A7C E7A40064 */  swc1       $f4, 0x64($sp)
/* AFE80 800D4A80 C7A400E4 */  lwc1       $f4, 0xe4($sp)
/* AFE84 800D4A84 C7AA00CC */  lwc1       $f10, 0xcc($sp)
/* AFE88 800D4A88 E7A80068 */  swc1       $f8, 0x68($sp)
/* AFE8C 800D4A8C 27A70060 */  addiu      $a3, $sp, 0x60
/* AFE90 800D4A90 460A2181 */  sub.s      $f6, $f4, $f10
/* AFE94 800D4A94 E7A6006C */  swc1       $f6, 0x6c($sp)
/* AFE98 800D4A98 8F210000 */  lw         $at, ($t9)
/* AFE9C 800D4A9C AFA10000 */  sw         $at, ($sp)
/* AFEA0 800D4AA0 8F250004 */  lw         $a1, 4($t9)
/* AFEA4 800D4AA4 8FA40000 */  lw         $a0, ($sp)
/* AFEA8 800D4AA8 AFA50004 */  sw         $a1, 4($sp)
/* AFEAC 800D4AAC 8F260008 */  lw         $a2, 8($t9)
/* AFEB0 800D4AB0 AFAF0014 */  sw         $t7, 0x14($sp)
/* AFEB4 800D4AB4 AFAB0010 */  sw         $t3, 0x10($sp)
/* AFEB8 800D4AB8 0C0360CE */  jal        func_800D8338
/* AFEBC 800D4ABC AFA60008 */   sw        $a2, 8($sp)
/* AFEC0 800D4AC0 0C035D1F */  jal        func_800D747C
/* AFEC4 800D4AC4 27A40058 */   addiu     $a0, $sp, 0x58
/* AFEC8 800D4AC8 C7A000A0 */  lwc1       $f0, 0xa0($sp)
/* AFECC 800D4ACC C7A20058 */  lwc1       $f2, 0x58($sp)
/* AFED0 800D4AD0 27A40054 */  addiu      $a0, $sp, 0x54
/* AFED4 800D4AD4 46020201 */  sub.s      $f8, $f0, $f2
/* AFED8 800D4AD8 0C035D1F */  jal        func_800D747C
/* AFEDC 800D4ADC E7A80054 */   swc1      $f8, 0x54($sp)
/* AFEE0 800D4AE0 C7A000A0 */  lwc1       $f0, 0xa0($sp)
/* AFEE4 800D4AE4 C7A20058 */  lwc1       $f2, 0x58($sp)
/* AFEE8 800D4AE8 3C018011 */  lui        $at, 0x8011
/* AFEEC 800D4AEC 4602003C */  c.lt.s     $f0, $f2
/* AFEF0 800D4AF0 00000000 */  nop
/* AFEF4 800D4AF4 45020005 */  bc1fl      .L800D4B0C
/* AFEF8 800D4AF8 46020301 */   sub.s     $f12, $f0, $f2
/* AFEFC 800D4AFC 46020301 */  sub.s      $f12, $f0, $f2
/* AFF00 800D4B00 10000002 */  b          .L800D4B0C
/* AFF04 800D4B04 46006307 */   neg.s     $f12, $f12
/* AFF08 800D4B08 46020301 */  sub.s      $f12, $f0, $f2
.L800D4B0C:
/* AFF0C 800D4B0C D42A0630 */  ldc1       $f10, 0x630($at)
/* AFF10 800D4B10 46006121 */  cvt.d.s    $f4, $f12
/* AFF14 800D4B14 3C014000 */  lui        $at, 0x4000
/* AFF18 800D4B18 462A2182 */  mul.d      $f6, $f4, $f10
/* AFF1C 800D4B1C 44814800 */  mtc1       $at, $f9
/* AFF20 800D4B20 44804000 */  mtc1       $zero, $f8
/* AFF24 800D4B24 3C014024 */  lui        $at, 0x4024
/* AFF28 800D4B28 C7A000AC */  lwc1       $f0, 0xac($sp)
/* AFF2C 800D4B2C 462033A0 */  cvt.s.d    $f14, $f6
/* AFF30 800D4B30 460070A1 */  cvt.d.s    $f2, $f14
/* AFF34 800D4B34 4628103C */  c.lt.d     $f2, $f8
/* AFF38 800D4B38 00000000 */  nop
/* AFF3C 800D4B3C 45020006 */  bc1fl      .L800D4B58
/* AFF40 800D4B40 44812800 */   mtc1      $at, $f5
/* AFF44 800D4B44 3C014000 */  lui        $at, 0x4000
/* AFF48 800D4B48 44817000 */  mtc1       $at, $f14
/* AFF4C 800D4B4C 1000000A */  b          .L800D4B78
/* AFF50 800D4B50 00000000 */   nop
/* AFF54 800D4B54 44812800 */  mtc1       $at, $f5
.L800D4B58:
/* AFF58 800D4B58 44802000 */  mtc1       $zero, $f4
/* AFF5C 800D4B5C 3C014120 */  lui        $at, 0x4120
/* AFF60 800D4B60 4622203C */  c.lt.d     $f4, $f2
/* AFF64 800D4B64 00000000 */  nop
/* AFF68 800D4B68 45000003 */  bc1f       .L800D4B78
/* AFF6C 800D4B6C 00000000 */   nop
/* AFF70 800D4B70 44817000 */  mtc1       $at, $f14
/* AFF74 800D4B74 00000000 */  nop
.L800D4B78:
/* AFF78 800D4B78 46000282 */  mul.s      $f10, $f0, $f0
/* AFF7C 800D4B7C C7A200B4 */  lwc1       $f2, 0xb4($sp)
/* AFF80 800D4B80 E7AE004C */  swc1       $f14, 0x4c($sp)
/* AFF84 800D4B84 46021182 */  mul.s      $f6, $f2, $f2
/* AFF88 800D4B88 0C036C2C */  jal        func_800DB0B0
/* AFF8C 800D4B8C 46065300 */   add.s     $f12, $f10, $f6
/* AFF90 800D4B90 3C018011 */  lui        $at, %hi(D_80110638)
/* AFF94 800D4B94 D42C0638 */  ldc1       $f12, %lo(D_80110638)($at)
/* AFF98 800D4B98 460000A1 */  cvt.d.s    $f2, $f0
/* AFF9C 800D4B9C C7AE004C */  lwc1       $f14, 0x4c($sp)
/* AFFA0 800D4BA0 462C103C */  c.lt.d     $f2, $f12
/* AFFA4 800D4BA4 3C014034 */  lui        $at, 0x4034
/* AFFA8 800D4BA8 C7A60054 */  lwc1       $f6, 0x54($sp)
/* AFFAC 800D4BAC 8FAC0118 */  lw         $t4, 0x118($sp)
/* AFFB0 800D4BB0 45000005 */  bc1f       .L800D4BC8
/* AFFB4 800D4BB4 27A40070 */   addiu     $a0, $sp, 0x70
/* AFFB8 800D4BB8 462C1103 */  div.d      $f4, $f2, $f12
/* AFFBC 800D4BBC 46007221 */  cvt.d.s    $f8, $f14
/* AFFC0 800D4BC0 46244282 */  mul.d      $f10, $f8, $f4
/* AFFC4 800D4BC4 462053A0 */  cvt.s.d    $f14, $f10
.L800D4BC8:
/* AFFC8 800D4BC8 44816800 */  mtc1       $at, $f13
/* AFFCC 800D4BCC 44806000 */  mtc1       $zero, $f12
/* AFFD0 800D4BD0 46003021 */  cvt.d.s    $f0, $f6
/* AFFD4 800D4BD4 3C018011 */  lui        $at, %hi(D_80110640)
/* AFFD8 800D4BD8 4620603C */  c.lt.d     $f12, $f0
/* AFFDC 800D4BDC 00000000 */  nop
/* AFFE0 800D4BE0 45000013 */  bc1f       .L800D4C30
/* AFFE4 800D4BE4 00000000 */   nop
/* AFFE8 800D4BE8 D4280640 */  ldc1       $f8, %lo(D_80110640)($at)
/* AFFEC 800D4BEC 3C013FE0 */  lui        $at, 0x3fe0
/* AFFF0 800D4BF0 4628003C */  c.lt.d     $f0, $f8
/* AFFF4 800D4BF4 00000000 */  nop
/* AFFF8 800D4BF8 4500000D */  bc1f       .L800D4C30
/* AFFFC 800D4BFC 00000000 */   nop
/* B0000 800D4C00 462C0101 */  sub.d      $f4, $f0, $f12
/* B0004 800D4C04 44815800 */  mtc1       $at, $f11
/* B0008 800D4C08 44805000 */  mtc1       $zero, $f10
/* B000C 800D4C0C 00000000 */  nop
/* B0010 800D4C10 462A2182 */  mul.d      $f6, $f4, $f10
/* B0014 800D4C14 46203420 */  cvt.s.d    $f16, $f6
/* B0018 800D4C18 4610703C */  c.lt.s     $f14, $f16
/* B001C 800D4C1C 00000000 */  nop
/* B0020 800D4C20 4500001E */  bc1f       .L800D4C9C
/* B0024 800D4C24 00000000 */   nop
/* B0028 800D4C28 1000001C */  b          .L800D4C9C
/* B002C 800D4C2C 46007406 */   mov.s     $f16, $f14
.L800D4C30:
/* B0030 800D4C30 3C018011 */  lui        $at, %hi(D_80110648)
/* B0034 800D4C34 D4280648 */  ldc1       $f8, %lo(D_80110648)($at)
/* B0038 800D4C38 3C018011 */  lui        $at, %hi(D_80110650)
/* B003C 800D4C3C 4620403E */  c.le.d     $f8, $f0
/* B0040 800D4C40 00000000 */  nop
/* B0044 800D4C44 45020014 */  bc1fl      .L800D4C98
/* B0048 800D4C48 44808000 */   mtc1      $zero, $f16
/* B004C 800D4C4C D4320650 */  ldc1       $f18, %lo(D_80110650)($at)
/* B0050 800D4C50 3C013FE0 */  lui        $at, 0x3fe0
/* B0054 800D4C54 4632003C */  c.lt.d     $f0, $f18
/* B0058 800D4C58 00000000 */  nop
/* B005C 800D4C5C 4502000E */  bc1fl      .L800D4C98
/* B0060 800D4C60 44808000 */   mtc1      $zero, $f16
/* B0064 800D4C64 46320101 */  sub.d      $f4, $f0, $f18
/* B0068 800D4C68 44815800 */  mtc1       $at, $f11
/* B006C 800D4C6C 44805000 */  mtc1       $zero, $f10
/* B0070 800D4C70 46007307 */  neg.s      $f12, $f14
/* B0074 800D4C74 462A2182 */  mul.d      $f6, $f4, $f10
/* B0078 800D4C78 46203420 */  cvt.s.d    $f16, $f6
/* B007C 800D4C7C 460C803C */  c.lt.s     $f16, $f12
/* B0080 800D4C80 00000000 */  nop
/* B0084 800D4C84 45000005 */  bc1f       .L800D4C9C
/* B0088 800D4C88 00000000 */   nop
/* B008C 800D4C8C 10000003 */  b          .L800D4C9C
/* B0090 800D4C90 46006406 */   mov.s     $f16, $f12
/* B0094 800D4C94 44808000 */  mtc1       $zero, $f16
.L800D4C98:
/* B0098 800D4C98 00000000 */  nop
.L800D4C9C:
/* B009C 800D4C9C 11800006 */  beqz       $t4, .L800D4CB8
/* B00A0 800D4CA0 C7AC0090 */   lwc1      $f12, 0x90($sp)
/* B00A4 800D4CA4 24010001 */  addiu      $at, $zero, 1
/* B00A8 800D4CA8 11810006 */  beq        $t4, $at, .L800D4CC4
/* B00AC 800D4CAC C7A40044 */   lwc1      $f4, 0x44($sp)
/* B00B0 800D4CB0 10000006 */  b          .L800D4CCC
/* B00B4 800D4CB4 8FAE0114 */   lw        $t6, 0x114($sp)
.L800D4CB8:
/* B00B8 800D4CB8 C7A8008C */  lwc1       $f8, 0x8c($sp)
/* B00BC 800D4CBC 10000002 */  b          .L800D4CC8
/* B00C0 800D4CC0 E7A80074 */   swc1      $f8, 0x74($sp)
.L800D4CC4:
/* B00C4 800D4CC4 E7A40074 */  swc1       $f4, 0x74($sp)
.L800D4CC8:
/* B00C8 800D4CC8 8FAE0114 */  lw         $t6, 0x114($sp)
.L800D4CCC:
/* B00CC 800D4CCC C7A000A0 */  lwc1       $f0, 0xa0($sp)
/* B00D0 800D4CD0 C7A20058 */  lwc1       $f2, 0x58($sp)
/* B00D4 800D4CD4 51C00004 */  beql       $t6, $zero, .L800D4CE8
/* B00D8 800D4CD8 46101280 */   add.s     $f10, $f2, $f16
/* B00DC 800D4CDC 10000003 */  b          .L800D4CEC
/* B00E0 800D4CE0 E7A00070 */   swc1      $f0, 0x70($sp)
/* B00E4 800D4CE4 46101280 */  add.s      $f10, $f2, $f16
.L800D4CE8:
/* B00E8 800D4CE8 E7AA0070 */  swc1       $f10, 0x70($sp)
.L800D4CEC:
/* B00EC 800D4CEC 0C035D1F */  jal        func_800D747C
/* B00F0 800D4CF0 E7AC0078 */   swc1      $f12, 0x78($sp)
/* B00F4 800D4CF4 C7AC0078 */  lwc1       $f12, 0x78($sp)
/* B00F8 800D4CF8 27A4007C */  addiu      $a0, $sp, 0x7c
/* B00FC 800D4CFC 8FA60074 */  lw         $a2, 0x74($sp)
/* B0100 800D4D00 44056000 */  mfc1       $a1, $f12
/* B0104 800D4D04 0C03611A */  jal        func_800D8468
/* B0108 800D4D08 8FA70070 */   lw        $a3, 0x70($sp)
/* B010C 800D4D0C C7A400C8 */  lwc1       $f4, 0xc8($sp)
/* B0110 800D4D10 C7AA0080 */  lwc1       $f10, 0x80($sp)
/* B0114 800D4D14 C7A600C4 */  lwc1       $f6, 0xc4($sp)
/* B0118 800D4D18 C7A8007C */  lwc1       $f8, 0x7c($sp)
/* B011C 800D4D1C 460A2080 */  add.s      $f2, $f4, $f10
/* B0120 800D4D20 3C014059 */  lui        $at, 0x4059
/* B0124 800D4D24 44815800 */  mtc1       $at, $f11
/* B0128 800D4D28 44805000 */  mtc1       $zero, $f10
/* B012C 800D4D2C 46001121 */  cvt.d.s    $f4, $f2
/* B0130 800D4D30 46083300 */  add.s      $f12, $f6, $f8
/* B0134 800D4D34 C7A80084 */  lwc1       $f8, 0x84($sp)
/* B0138 800D4D38 C7A600CC */  lwc1       $f6, 0xcc($sp)
/* B013C 800D4D3C 462A203C */  c.lt.d     $f4, $f10
/* B0140 800D4D40 3C0142C8 */  lui        $at, 0x42c8
/* B0144 800D4D44 46083380 */  add.s      $f14, $f6, $f8
/* B0148 800D4D48 8FA3010C */  lw         $v1, 0x10c($sp)
/* B014C 800D4D4C 45000003 */  bc1f       .L800D4D5C
/* B0150 800D4D50 C7A600C4 */   lwc1      $f6, 0xc4($sp)
/* B0154 800D4D54 44811000 */  mtc1       $at, $f2
/* B0158 800D4D58 00000000 */  nop
.L800D4D5C:
/* B015C 800D4D5C 8FA20110 */  lw         $v0, 0x110($sp)
/* B0160 800D4D60 E4660000 */  swc1       $f6, ($v1)
/* B0164 800D4D64 C7A800C8 */  lwc1       $f8, 0xc8($sp)
/* B0168 800D4D68 E4680004 */  swc1       $f8, 4($v1)
/* B016C 800D4D6C C7A400CC */  lwc1       $f4, 0xcc($sp)
/* B0170 800D4D70 E4640008 */  swc1       $f4, 8($v1)
/* B0174 800D4D74 E44C0000 */  swc1       $f12, ($v0)
/* B0178 800D4D78 E4420004 */  swc1       $f2, 4($v0)
/* B017C 800D4D7C E44E0008 */  swc1       $f14, 8($v0)
/* B0180 800D4D80 8FBF001C */  lw         $ra, 0x1c($sp)
/* B0184 800D4D84 27BD0100 */  addiu      $sp, $sp, 0x100
/* B0188 800D4D88 03E00008 */  jr         $ra
/* B018C 800D4D8C 00000000 */   nop

glabel func_800D4D90
/* B0190 800D4D90 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* B0194 800D4D94 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* B0198 800D4D98 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B019C 800D4D9C 3C188024 */  lui        $t8, 0x8024
/* B01A0 800D4DA0 000E78C0 */  sll        $t7, $t6, 3
/* B01A4 800D4DA4 01EE7823 */  subu       $t7, $t7, $t6
/* B01A8 800D4DA8 000F7880 */  sll        $t7, $t7, 2
/* B01AC 800D4DAC 01EE7823 */  subu       $t7, $t7, $t6
/* B01B0 800D4DB0 000F78C0 */  sll        $t7, $t7, 3
/* B01B4 800D4DB4 27180CE0 */  addiu      $t8, $t8, 0xce0
/* B01B8 800D4DB8 AFBF002C */  sw         $ra, 0x2c($sp)
/* B01BC 800D4DBC AFB00028 */  sw         $s0, 0x28($sp)
/* B01C0 800D4DC0 AFA40050 */  sw         $a0, 0x50($sp)
/* B01C4 800D4DC4 AFA50054 */  sw         $a1, 0x54($sp)
/* B01C8 800D4DC8 AFA7005C */  sw         $a3, 0x5c($sp)
/* B01CC 800D4DCC 01F81821 */  addu       $v1, $t7, $t8
/* B01D0 800D4DD0 C46400B0 */  lwc1       $f4, 0xb0($v1)
/* B01D4 800D4DD4 00C08025 */  or         $s0, $a2, $zero
/* B01D8 800D4DD8 E7A40030 */  swc1       $f4, 0x30($sp)
/* B01DC 800D4DDC C4C6000C */  lwc1       $f6, 0xc($a2)
/* B01E0 800D4DE0 E7A60044 */  swc1       $f6, 0x44($sp)
/* B01E4 800D4DE4 C4CA0044 */  lwc1       $f10, 0x44($a2)
/* B01E8 800D4DE8 C46800D0 */  lwc1       $f8, 0xd0($v1)
/* B01EC 800D4DEC C4D20010 */  lwc1       $f18, 0x10($a2)
/* B01F0 800D4DF0 460A4402 */  mul.s      $f16, $f8, $f10
/* B01F4 800D4DF4 46109100 */  add.s      $f4, $f18, $f16
/* B01F8 800D4DF8 E7A40048 */  swc1       $f4, 0x48($sp)
/* B01FC 800D4DFC C4C60014 */  lwc1       $f6, 0x14($a2)
/* B0200 800D4E00 AFA30034 */  sw         $v1, 0x34($sp)
/* B0204 800D4E04 0C02CB16 */  jal        func_800B2C58
/* B0208 800D4E08 E7A6004C */   swc1      $f6, 0x4c($sp)
/* B020C 800D4E0C 10400016 */  beqz       $v0, .L800D4E68
/* B0210 800D4E10 8FA30034 */   lw        $v1, 0x34($sp)
/* B0214 800D4E14 3C048025 */  lui        $a0, %hi(D_80248518)
/* B0218 800D4E18 24848518 */  addiu      $a0, $a0, %lo(D_80248518)
/* B021C 800D4E1C 0C02CAEF */  jal        func_800B2BBC
/* B0220 800D4E20 AFA30034 */   sw        $v1, 0x34($sp)
/* B0224 800D4E24 3C198025 */  lui        $t9, %hi(D_80248518)
/* B0228 800D4E28 27398518 */  addiu      $t9, $t9, %lo(D_80248518)
/* B022C 800D4E2C 8F210000 */  lw         $at, ($t9)
/* B0230 800D4E30 8FA30034 */  lw         $v1, 0x34($sp)
/* B0234 800D4E34 27A80038 */  addiu      $t0, $sp, 0x38
/* B0238 800D4E38 AD010000 */  sw         $at, ($t0)
/* B023C 800D4E3C 8F2B0004 */  lw         $t3, 4($t9)
/* B0240 800D4E40 AD0B0004 */  sw         $t3, 4($t0)
/* B0244 800D4E44 8F210008 */  lw         $at, 8($t9)
/* B0248 800D4E48 AD010008 */  sw         $at, 8($t0)
/* B024C 800D4E4C C60A0044 */  lwc1       $f10, 0x44($s0)
/* B0250 800D4E50 C46800D0 */  lwc1       $f8, 0xd0($v1)
/* B0254 800D4E54 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* B0258 800D4E58 460A4482 */  mul.s      $f18, $f8, $f10
/* B025C 800D4E5C 46128100 */  add.s      $f4, $f16, $f18
/* B0260 800D4E60 10000010 */  b          .L800D4EA4
/* B0264 800D4E64 E7A4003C */   swc1      $f4, 0x3c($sp)
.L800D4E68:
/* B0268 800D4E68 3C0C8025 */  lui        $t4, %hi(D_80248518)
/* B026C 800D4E6C 258C8518 */  addiu      $t4, $t4, %lo(D_80248518)
/* B0270 800D4E70 8D810000 */  lw         $at, ($t4)
/* B0274 800D4E74 27A80038 */  addiu      $t0, $sp, 0x38
/* B0278 800D4E78 AD010000 */  sw         $at, ($t0)
/* B027C 800D4E7C 8D8F0004 */  lw         $t7, 4($t4)
/* B0280 800D4E80 AD0F0004 */  sw         $t7, 4($t0)
/* B0284 800D4E84 8D810008 */  lw         $at, 8($t4)
/* B0288 800D4E88 AD010008 */  sw         $at, 8($t0)
/* B028C 800D4E8C C6080044 */  lwc1       $f8, 0x44($s0)
/* B0290 800D4E90 C46600D0 */  lwc1       $f6, 0xd0($v1)
/* B0294 800D4E94 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* B0298 800D4E98 46083282 */  mul.s      $f10, $f6, $f8
/* B029C 800D4E9C 460A8480 */  add.s      $f18, $f16, $f10
/* B02A0 800D4EA0 E7B2003C */  swc1       $f18, 0x3c($sp)
.L800D4EA4:
/* B02A4 800D4EA4 27A40044 */  addiu      $a0, $sp, 0x44
/* B02A8 800D4EA8 8C810000 */  lw         $at, ($a0)
/* B02AC 800D4EAC C7A40030 */  lwc1       $f4, 0x30($sp)
/* B02B0 800D4EB0 AFA10004 */  sw         $at, 4($sp)
/* B02B4 800D4EB4 8C860004 */  lw         $a2, 4($a0)
/* B02B8 800D4EB8 8FA50004 */  lw         $a1, 4($sp)
/* B02BC 800D4EBC AFA60008 */  sw         $a2, 8($sp)
/* B02C0 800D4EC0 8C810008 */  lw         $at, 8($a0)
/* B02C4 800D4EC4 AFA1000C */  sw         $at, 0xc($sp)
/* B02C8 800D4EC8 8D010000 */  lw         $at, ($t0)
/* B02CC 800D4ECC 8FA7000C */  lw         $a3, 0xc($sp)
/* B02D0 800D4ED0 AFA10010 */  sw         $at, 0x10($sp)
/* B02D4 800D4ED4 8D190004 */  lw         $t9, 4($t0)
/* B02D8 800D4ED8 AFB90014 */  sw         $t9, 0x14($sp)
/* B02DC 800D4EDC 8D010008 */  lw         $at, 8($t0)
/* B02E0 800D4EE0 AFA30034 */  sw         $v1, 0x34($sp)
/* B02E4 800D4EE4 E7A4001C */  swc1       $f4, 0x1c($sp)
/* B02E8 800D4EE8 0C036091 */  jal        func_800D8244
/* B02EC 800D4EEC AFA10018 */   sw        $at, 0x18($sp)
/* B02F0 800D4EF0 8FA5005C */  lw         $a1, 0x5c($sp)
/* B02F4 800D4EF4 C7A60044 */  lwc1       $f6, 0x44($sp)
/* B02F8 800D4EF8 8FA30034 */  lw         $v1, 0x34($sp)
/* B02FC 800D4EFC 8FA40060 */  lw         $a0, 0x60($sp)
/* B0300 800D4F00 E4A60000 */  swc1       $f6, ($a1)
/* B0304 800D4F04 C7A80048 */  lwc1       $f8, 0x48($sp)
/* B0308 800D4F08 E4A80004 */  swc1       $f8, 4($a1)
/* B030C 800D4F0C C7B0004C */  lwc1       $f16, 0x4c($sp)
/* B0310 800D4F10 E4B00008 */  swc1       $f16, 8($a1)
/* B0314 800D4F14 C46A0098 */  lwc1       $f10, 0x98($v1)
/* B0318 800D4F18 E48A0000 */  swc1       $f10, ($a0)
/* B031C 800D4F1C C6040044 */  lwc1       $f4, 0x44($s0)
/* B0320 800D4F20 C47200D0 */  lwc1       $f18, 0xd0($v1)
/* B0324 800D4F24 C468009C */  lwc1       $f8, 0x9c($v1)
/* B0328 800D4F28 46049182 */  mul.s      $f6, $f18, $f4
/* B032C 800D4F2C 46064400 */  add.s      $f16, $f8, $f6
/* B0330 800D4F30 E4900004 */  swc1       $f16, 4($a0)
/* B0334 800D4F34 C46A00A0 */  lwc1       $f10, 0xa0($v1)
/* B0338 800D4F38 E48A0008 */  swc1       $f10, 8($a0)
/* B033C 800D4F3C 8FBF002C */  lw         $ra, 0x2c($sp)
/* B0340 800D4F40 8FB00028 */  lw         $s0, 0x28($sp)
/* B0344 800D4F44 27BD0050 */  addiu      $sp, $sp, 0x50
/* B0348 800D4F48 03E00008 */  jr         $ra
/* B034C 800D4F4C 00000000 */   nop

glabel func_800D4F50
/* B0350 800D4F50 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* B0354 800D4F54 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* B0358 800D4F58 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* B035C 800D4F5C 3C188024 */  lui        $t8, %hi(D_80240CE0)
/* B0360 800D4F60 27180CE0 */  addiu      $t8, $t8, %lo(D_80240CE0)
/* B0364 800D4F64 000E78C0 */  sll        $t7, $t6, 3
/* B0368 800D4F68 01EE7823 */  subu       $t7, $t7, $t6
/* B036C 800D4F6C 000F7880 */  sll        $t7, $t7, 2
/* B0370 800D4F70 01EE7823 */  subu       $t7, $t7, $t6
/* B0374 800D4F74 000F78C0 */  sll        $t7, $t7, 3
/* B0378 800D4F78 AFBF005C */  sw         $ra, 0x5c($sp)
/* B037C 800D4F7C AFB70058 */  sw         $s7, 0x58($sp)
/* B0380 800D4F80 AFB60054 */  sw         $s6, 0x54($sp)
/* B0384 800D4F84 AFB50050 */  sw         $s5, 0x50($sp)
/* B0388 800D4F88 AFB4004C */  sw         $s4, 0x4c($sp)
/* B038C 800D4F8C AFB30048 */  sw         $s3, 0x48($sp)
/* B0390 800D4F90 AFB20044 */  sw         $s2, 0x44($sp)
/* B0394 800D4F94 AFB10040 */  sw         $s1, 0x40($sp)
/* B0398 800D4F98 AFB0003C */  sw         $s0, 0x3c($sp)
/* B039C 800D4F9C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* B03A0 800D4FA0 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* B03A4 800D4FA4 F7B80020 */  sdc1       $f24, 0x20($sp)
/* B03A8 800D4FA8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* B03AC 800D4FAC F7B40010 */  sdc1       $f20, 0x10($sp)
/* B03B0 800D4FB0 AFA40150 */  sw         $a0, 0x150($sp)
/* B03B4 800D4FB4 AFA50154 */  sw         $a1, 0x154($sp)
/* B03B8 800D4FB8 AFA60158 */  sw         $a2, 0x158($sp)
/* B03BC 800D4FBC AFA7015C */  sw         $a3, 0x15c($sp)
/* B03C0 800D4FC0 01F81021 */  addu       $v0, $t7, $t8
/* B03C4 800D4FC4 C4440098 */  lwc1       $f4, 0x98($v0)
/* B03C8 800D4FC8 3C0142C8 */  lui        $at, 0x42c8
/* B03CC 800D4FCC 4481E000 */  mtc1       $at, $f28
/* B03D0 800D4FD0 E7A40110 */  swc1       $f4, 0x110($sp)
/* B03D4 800D4FD4 C446009C */  lwc1       $f6, 0x9c($v0)
/* B03D8 800D4FD8 3C014396 */  lui        $at, 0x4396
/* B03DC 800D4FDC 4481D000 */  mtc1       $at, $f26
/* B03E0 800D4FE0 E7A6010C */  swc1       $f6, 0x10c($sp)
/* B03E4 800D4FE4 C44800A0 */  lwc1       $f8, 0xa0($v0)
/* B03E8 800D4FE8 3C014059 */  lui        $at, 0x4059
/* B03EC 800D4FEC 4481C800 */  mtc1       $at, $f25
/* B03F0 800D4FF0 E7A80108 */  swc1       $f8, 0x108($sp)
/* B03F4 800D4FF4 C44A00A4 */  lwc1       $f10, 0xa4($v0)
/* B03F8 800D4FF8 3C018011 */  lui        $at, %hi(D_80110658)
/* B03FC 800D4FFC D4360658 */  ldc1       $f22, %lo(D_80110658)($at)
/* B0400 800D5000 3C018011 */  lui        $at, 0x8011
/* B0404 800D5004 3C108017 */  lui        $s0, %hi(D_80168DA8)
/* B0408 800D5008 3C138017 */  lui        $s3, %hi(D_80169268)
/* B040C 800D500C 4480C000 */  mtc1       $zero, $f24
/* B0410 800D5010 26739268 */  addiu      $s3, $s3, %lo(D_80169268)
/* B0414 800D5014 26108DA8 */  addiu      $s0, $s0, %lo(D_80168DA8)
/* B0418 800D5018 D4340660 */  ldc1       $f20, 0x660($at)
/* B041C 800D501C 00009025 */  or         $s2, $zero, $zero
/* B0420 800D5020 27B40084 */  addiu      $s4, $sp, 0x84
/* B0424 800D5024 24150018 */  addiu      $s5, $zero, 0x18
/* B0428 800D5028 2416060C */  addiu      $s6, $zero, 0x60c
/* B042C 800D502C 27B70078 */  addiu      $s7, $sp, 0x78
/* B0430 800D5030 E7AA0104 */  swc1       $f10, 0x104($sp)
.L800D5034:
/* B0434 800D5034 8E190114 */  lw         $t9, 0x114($s0)
/* B0438 800D5038 53200032 */  beql       $t9, $zero, .L800D5104
/* B043C 800D503C 26520001 */   addiu     $s2, $s2, 1
/* B0440 800D5040 8E080118 */  lw         $t0, 0x118($s0)
/* B0444 800D5044 5100002F */  beql       $t0, $zero, .L800D5104
/* B0448 800D5048 26520001 */   addiu     $s2, $s2, 1
/* B044C 800D504C 02560019 */  multu      $s2, $s6
/* B0450 800D5050 C6100004 */  lwc1       $f16, 4($s0)
/* B0454 800D5054 C6120008 */  lwc1       $f18, 8($s0)
/* B0458 800D5058 C604000C */  lwc1       $f4, 0xc($s0)
/* B045C 800D505C 02002025 */  or         $a0, $s0, $zero
/* B0460 800D5060 24070001 */  addiu      $a3, $zero, 1
/* B0464 800D5064 E7B00078 */  swc1       $f16, 0x78($sp)
/* B0468 800D5068 E7B2007C */  swc1       $f18, 0x7c($sp)
/* B046C 800D506C E7A40080 */  swc1       $f4, 0x80($sp)
/* B0470 800D5070 00004812 */  mflo       $t1
/* B0474 800D5074 02692821 */  addu       $a1, $s3, $t1
/* B0478 800D5078 00000000 */  nop
/* B047C 800D507C 02550019 */  multu      $s2, $s5
/* B0480 800D5080 00005012 */  mflo       $t2
/* B0484 800D5084 028A8821 */  addu       $s1, $s4, $t2
/* B0488 800D5088 0C033CEC */  jal        func_800CF3B0
/* B048C 800D508C 02203025 */   or        $a2, $s1, $zero
/* B0490 800D5090 8EE10000 */  lw         $at, ($s7)
/* B0494 800D5094 02202025 */  or         $a0, $s1, $zero
/* B0498 800D5098 AFA10004 */  sw         $at, 4($sp)
/* B049C 800D509C 8EE60004 */  lw         $a2, 4($s7)
/* B04A0 800D50A0 8FA50004 */  lw         $a1, 4($sp)
/* B04A4 800D50A4 AFA60008 */  sw         $a2, 8($sp)
/* B04A8 800D50A8 8EE70008 */  lw         $a3, 8($s7)
/* B04AC 800D50AC 0C02B9DC */  jal        func_800AE770
/* B04B0 800D50B0 AFA7000C */   sw        $a3, 0xc($sp)
/* B04B4 800D50B4 C6260014 */  lwc1       $f6, 0x14($s1)
/* B04B8 800D50B8 46003221 */  cvt.d.s    $f8, $f6
/* B04BC 800D50BC 46344282 */  mul.d      $f10, $f8, $f20
/* B04C0 800D50C0 462050A0 */  cvt.s.d    $f2, $f10
/* B04C4 800D50C4 46001021 */  cvt.d.s    $f0, $f2
/* B04C8 800D50C8 4620B03C */  c.lt.d     $f22, $f0
/* B04CC 800D50CC 00000000 */  nop
/* B04D0 800D50D0 45020004 */  bc1fl      .L800D50E4
/* B04D4 800D50D4 4638003C */   c.lt.d    $f0, $f24
/* B04D8 800D50D8 10000006 */  b          .L800D50F4
/* B04DC 800D50DC 4600D086 */   mov.s     $f2, $f26
/* B04E0 800D50E0 4638003C */  c.lt.d     $f0, $f24
.L800D50E4:
/* B04E4 800D50E4 00000000 */  nop
/* B04E8 800D50E8 45020003 */  bc1fl      .L800D50F8
/* B04EC 800D50EC 44051000 */   mfc1      $a1, $f2
/* B04F0 800D50F0 4600E086 */  mov.s      $f2, $f28
.L800D50F4:
/* B04F4 800D50F4 44051000 */  mfc1       $a1, $f2
.L800D50F8:
/* B04F8 800D50F8 0C02BA0B */  jal        func_800AE82C
/* B04FC 800D50FC 02202025 */   or        $a0, $s1, $zero
/* B0500 800D5100 26520001 */  addiu      $s2, $s2, 1
.L800D5104:
/* B0504 800D5104 2A410004 */  slti       $at, $s2, 4
/* B0508 800D5108 1420FFCA */  bnez       $at, .L800D5034
/* B050C 800D510C 26100130 */   addiu     $s0, $s0, 0x130
/* B0510 800D5110 4480A000 */  mtc1       $zero, $f20
/* B0514 800D5114 3C108017 */  lui        $s0, %hi(D_80168DA8)
/* B0518 800D5118 26108DA8 */  addiu      $s0, $s0, %lo(D_80168DA8)
/* B051C 800D511C 00009025 */  or         $s2, $zero, $zero
/* B0520 800D5120 24130004 */  addiu      $s3, $zero, 4
/* B0524 800D5124 27B100E4 */  addiu      $s1, $sp, 0xe4
/* B0528 800D5128 E7B400F8 */  swc1       $f20, 0xf8($sp)
/* B052C 800D512C E7B400EC */  swc1       $f20, 0xec($sp)
/* B0530 800D5130 E7B400F4 */  swc1       $f20, 0xf4($sp)
/* B0534 800D5134 E7B400E8 */  swc1       $f20, 0xe8($sp)
/* B0538 800D5138 E7B400F0 */  swc1       $f20, 0xf0($sp)
/* B053C 800D513C E7B400E4 */  swc1       $f20, 0xe4($sp)
.L800D5140:
/* B0540 800D5140 8E0D0114 */  lw         $t5, 0x114($s0)
/* B0544 800D5144 51A0000C */  beql       $t5, $zero, .L800D5178
/* B0548 800D5148 26520001 */   addiu     $s2, $s2, 1
/* B054C 800D514C 8E0E0118 */  lw         $t6, 0x118($s0)
/* B0550 800D5150 51C00009 */  beql       $t6, $zero, .L800D5178
/* B0554 800D5154 26520001 */   addiu     $s2, $s2, 1
/* B0558 800D5158 02550019 */  multu      $s2, $s5
/* B055C 800D515C 02202025 */  or         $a0, $s1, $zero
/* B0560 800D5160 02203025 */  or         $a2, $s1, $zero
/* B0564 800D5164 00007812 */  mflo       $t7
/* B0568 800D5168 028F2821 */  addu       $a1, $s4, $t7
/* B056C 800D516C 0C02B9A4 */  jal        func_800AE690
/* B0570 800D5170 00000000 */   nop
/* B0574 800D5174 26520001 */  addiu      $s2, $s2, 1
.L800D5178:
/* B0578 800D5178 1653FFF1 */  bne        $s2, $s3, .L800D5140
/* B057C 800D517C 26100130 */   addiu     $s0, $s0, 0x130
/* B0580 800D5180 C7B000E4 */  lwc1       $f16, 0xe4($sp)
/* B0584 800D5184 C7B200F0 */  lwc1       $f18, 0xf0($sp)
/* B0588 800D5188 C7AA00E8 */  lwc1       $f10, 0xe8($sp)
/* B058C 800D518C 3C013FE0 */  lui        $at, 0x3fe0
/* B0590 800D5190 46128100 */  add.s      $f4, $f16, $f18
/* B0594 800D5194 C7B000F4 */  lwc1       $f16, 0xf4($sp)
/* B0598 800D5198 44811800 */  mtc1       $at, $f3
/* B059C 800D519C 44801000 */  mtc1       $zero, $f2
/* B05A0 800D51A0 46105480 */  add.s      $f18, $f10, $f16
/* B05A4 800D51A4 44805000 */  mtc1       $zero, $f10
/* B05A8 800D51A8 44805800 */  mtc1       $zero, $f11
/* B05AC 800D51AC 460021A1 */  cvt.d.s    $f6, $f4
/* B05B0 800D51B0 46009121 */  cvt.d.s    $f4, $f18
/* B05B4 800D51B4 46223202 */  mul.d      $f8, $f6, $f2
/* B05B8 800D51B8 C7B200EC */  lwc1       $f18, 0xec($sp)
/* B05BC 800D51BC C7B000F8 */  lwc1       $f16, 0xf8($sp)
/* B05C0 800D51C0 4407A000 */  mfc1       $a3, $f20
/* B05C4 800D51C4 46222182 */  mul.d      $f6, $f4, $f2
/* B05C8 800D51C8 27A40118 */  addiu      $a0, $sp, 0x118
/* B05CC 800D51CC 46009121 */  cvt.d.s    $f4, $f18
/* B05D0 800D51D0 46008021 */  cvt.d.s    $f0, $f16
/* B05D4 800D51D4 46204620 */  cvt.s.d    $f24, $f8
/* B05D8 800D51D8 462035A0 */  cvt.s.d    $f22, $f6
/* B05DC 800D51DC 4600B221 */  cvt.d.s    $f8, $f22
/* B05E0 800D51E0 462A403C */  c.lt.d     $f8, $f10
/* B05E4 800D51E4 00000000 */  nop
/* B05E8 800D51E8 45020003 */  bc1fl      .L800D51F8
/* B05EC 800D51EC 46200180 */   add.d     $f6, $f0, $f0
/* B05F0 800D51F0 4600A586 */  mov.s      $f22, $f20
/* B05F4 800D51F4 46200180 */  add.d      $f6, $f0, $f0
.L800D51F8:
/* B05F8 800D51F8 3C014008 */  lui        $at, 0x4008
/* B05FC 800D51FC 44815800 */  mtc1       $at, $f11
/* B0600 800D5200 44805000 */  mtc1       $zero, $f10
/* B0604 800D5204 46262200 */  add.d      $f8, $f4, $f6
/* B0608 800D5208 C7A600F0 */  lwc1       $f6, 0xf0($sp)
/* B060C 800D520C 462A4103 */  div.d      $f4, $f8, $f10
/* B0610 800D5210 C7A800E4 */  lwc1       $f8, 0xe4($sp)
/* B0614 800D5214 46083281 */  sub.s      $f10, $f6, $f8
/* B0618 800D5218 C7A8010C */  lwc1       $f8, 0x10c($sp)
/* B061C 800D521C 46128181 */  sub.s      $f6, $f16, $f18
/* B0620 800D5220 462026A0 */  cvt.s.d    $f26, $f4
/* B0624 800D5224 C7A40110 */  lwc1       $f4, 0x110($sp)
/* B0628 800D5228 46045082 */  mul.s      $f2, $f10, $f4
/* B062C 800D522C C7AA0108 */  lwc1       $f10, 0x108($sp)
/* B0630 800D5230 46083302 */  mul.s      $f12, $f6, $f8
/* B0634 800D5234 460C103C */  c.lt.s     $f2, $f12
/* B0638 800D5238 00000000 */  nop
/* B063C 800D523C 45020004 */  bc1fl      .L800D5250
/* B0640 800D5240 46001006 */   mov.s     $f0, $f2
/* B0644 800D5244 10000002 */  b          .L800D5250
/* B0648 800D5248 46006006 */   mov.s     $f0, $f12
/* B064C 800D524C 46001006 */  mov.s      $f0, $f2
.L800D5250:
/* B0650 800D5250 460A003C */  c.lt.s     $f0, $f10
/* B0654 800D5254 00000000 */  nop
/* B0658 800D5258 45020003 */  bc1fl      .L800D5268
/* B065C 800D525C 44050000 */   mfc1      $a1, $f0
/* B0660 800D5260 46005006 */  mov.s      $f0, $f10
/* B0664 800D5264 44050000 */  mfc1       $a1, $f0
.L800D5268:
/* B0668 800D5268 0C03611A */  jal        func_800D8468
/* B066C 800D526C 8FA60104 */   lw        $a2, 0x104($sp)
/* B0670 800D5270 8FA20160 */  lw         $v0, 0x160($sp)
/* B0674 800D5274 8FB8015C */  lw         $t8, 0x15c($sp)
/* B0678 800D5278 C7A40118 */  lwc1       $f4, 0x118($sp)
/* B067C 800D527C C7B0011C */  lwc1       $f16, 0x11c($sp)
/* B0680 800D5280 C7B20120 */  lwc1       $f18, 0x120($sp)
/* B0684 800D5284 4604C000 */  add.s      $f0, $f24, $f4
/* B0688 800D5288 E7180000 */  swc1       $f24, ($t8)
/* B068C 800D528C E7160004 */  swc1       $f22, 4($t8)
/* B0690 800D5290 4610B080 */  add.s      $f2, $f22, $f16
/* B0694 800D5294 E71A0008 */  swc1       $f26, 8($t8)
/* B0698 800D5298 E4400000 */  swc1       $f0, ($v0)
/* B069C 800D529C 4612D300 */  add.s      $f12, $f26, $f18
/* B06A0 800D52A0 E4420004 */  swc1       $f2, 4($v0)
/* B06A4 800D52A4 E44C0008 */  swc1       $f12, 8($v0)
/* B06A8 800D52A8 8FBF005C */  lw         $ra, 0x5c($sp)
/* B06AC 800D52AC 8FB70058 */  lw         $s7, 0x58($sp)
/* B06B0 800D52B0 8FB60054 */  lw         $s6, 0x54($sp)
/* B06B4 800D52B4 8FB50050 */  lw         $s5, 0x50($sp)
/* B06B8 800D52B8 8FB4004C */  lw         $s4, 0x4c($sp)
/* B06BC 800D52BC 8FB30048 */  lw         $s3, 0x48($sp)
/* B06C0 800D52C0 8FB20044 */  lw         $s2, 0x44($sp)
/* B06C4 800D52C4 8FB10040 */  lw         $s1, 0x40($sp)
/* B06C8 800D52C8 8FB0003C */  lw         $s0, 0x3c($sp)
/* B06CC 800D52CC D7BC0030 */  ldc1       $f28, 0x30($sp)
/* B06D0 800D52D0 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* B06D4 800D52D4 D7B80020 */  ldc1       $f24, 0x20($sp)
/* B06D8 800D52D8 D7B60018 */  ldc1       $f22, 0x18($sp)
/* B06DC 800D52DC D7B40010 */  ldc1       $f20, 0x10($sp)
/* B06E0 800D52E0 03E00008 */  jr         $ra
/* B06E4 800D52E4 27BD0150 */   addiu     $sp, $sp, 0x150

glabel func_800D52E8
/* B06E8 800D52E8 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* B06EC 800D52EC 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* B06F0 800D52F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B06F4 800D52F4 3C188024 */  lui        $t8, 0x8024
/* B06F8 800D52F8 000E78C0 */  sll        $t7, $t6, 3
/* B06FC 800D52FC 01EE7823 */  subu       $t7, $t7, $t6
/* B0700 800D5300 000F7880 */  sll        $t7, $t7, 2
/* B0704 800D5304 01EE7823 */  subu       $t7, $t7, $t6
/* B0708 800D5308 AFA5002C */  sw         $a1, 0x2c($sp)
/* B070C 800D530C 000F78C0 */  sll        $t7, $t7, 3
/* B0710 800D5310 27180CE0 */  addiu      $t8, $t8, 0xce0
/* B0714 800D5314 AFBF0014 */  sw         $ra, 0x14($sp)
/* B0718 800D5318 AFA40028 */  sw         $a0, 0x28($sp)
/* B071C 800D531C 01F82821 */  addu       $a1, $t7, $t8
/* B0720 800D5320 AFA50018 */  sw         $a1, 0x18($sp)
/* B0724 800D5324 27A4001C */  addiu      $a0, $sp, 0x1c
/* B0728 800D5328 AFA60030 */  sw         $a2, 0x30($sp)
/* B072C 800D532C 0C034D8F */  jal        func_800D363C
/* B0730 800D5330 AFA70034 */   sw        $a3, 0x34($sp)
/* B0734 800D5334 8FA60030 */  lw         $a2, 0x30($sp)
/* B0738 800D5338 8FA70034 */  lw         $a3, 0x34($sp)
/* B073C 800D533C 8FA50018 */  lw         $a1, 0x18($sp)
/* B0740 800D5340 C4C4000C */  lwc1       $f4, 0xc($a2)
/* B0744 800D5344 8FA20038 */  lw         $v0, 0x38($sp)
/* B0748 800D5348 E4E40000 */  swc1       $f4, ($a3)
/* B074C 800D534C C4C80044 */  lwc1       $f8, 0x44($a2)
/* B0750 800D5350 C4A600D0 */  lwc1       $f6, 0xd0($a1)
/* B0754 800D5354 C4D00010 */  lwc1       $f16, 0x10($a2)
/* B0758 800D5358 46083282 */  mul.s      $f10, $f6, $f8
/* B075C 800D535C 460A8480 */  add.s      $f18, $f16, $f10
/* B0760 800D5360 E4F20004 */  swc1       $f18, 4($a3)
/* B0764 800D5364 C4C40014 */  lwc1       $f4, 0x14($a2)
/* B0768 800D5368 E4E40008 */  swc1       $f4, 8($a3)
/* B076C 800D536C C7A6001C */  lwc1       $f6, 0x1c($sp)
/* B0770 800D5370 E4460000 */  swc1       $f6, ($v0)
/* B0774 800D5374 C7A80020 */  lwc1       $f8, 0x20($sp)
/* B0778 800D5378 E4480004 */  swc1       $f8, 4($v0)
/* B077C 800D537C C7B00024 */  lwc1       $f16, 0x24($sp)
/* B0780 800D5380 E4500008 */  swc1       $f16, 8($v0)
/* B0784 800D5384 8FBF0014 */  lw         $ra, 0x14($sp)
/* B0788 800D5388 27BD0028 */  addiu      $sp, $sp, 0x28
/* B078C 800D538C 03E00008 */  jr         $ra
/* B0790 800D5390 00000000 */   nop

glabel func_800D5394
/* B0794 800D5394 27BDFE60 */  addiu      $sp, $sp, -0x1a0
/* B0798 800D5398 8FAE01B4 */  lw         $t6, 0x1b4($sp)
/* B079C 800D539C AFBF002C */  sw         $ra, 0x2c($sp)
/* B07A0 800D53A0 AFA501A4 */  sw         $a1, 0x1a4($sp)
/* B07A4 800D53A4 AFA701AC */  sw         $a3, 0x1ac($sp)
/* B07A8 800D53A8 AFA401A0 */  sw         $a0, 0x1a0($sp)
/* B07AC 800D53AC 11C00004 */  beqz       $t6, .L800D53C0
/* B07B0 800D53B0 AFA601A8 */   sw        $a2, 0x1a8($sp)
/* B07B4 800D53B4 AFA401A0 */  sw         $a0, 0x1a0($sp)
/* B07B8 800D53B8 0C034D33 */  jal        func_800D34CC
/* B07BC 800D53BC AFA601A8 */   sw        $a2, 0x1a8($sp)
.L800D53C0:
/* B07C0 800D53C0 8FA601A8 */  lw         $a2, 0x1a8($sp)
/* B07C4 800D53C4 AFA00114 */  sw         $zero, 0x114($sp)
/* B07C8 800D53C8 AFA00110 */  sw         $zero, 0x110($sp)
/* B07CC 800D53CC C4C40044 */  lwc1       $f4, 0x44($a2)
/* B07D0 800D53D0 3C014059 */  lui        $at, 0x4059
/* B07D4 800D53D4 44814800 */  mtc1       $at, $f9
/* B07D8 800D53D8 44804000 */  mtc1       $zero, $f8
/* B07DC 800D53DC 460021A1 */  cvt.d.s    $f6, $f4
/* B07E0 800D53E0 8FA401A0 */  lw         $a0, 0x1a0($sp)
/* B07E4 800D53E4 46283282 */  mul.d      $f10, $f6, $f8
/* B07E8 800D53E8 3C018011 */  lui        $at, 0x8011
/* B07EC 800D53EC 46205120 */  cvt.s.d    $f4, $f10
/* B07F0 800D53F0 E7A40160 */  swc1       $f4, 0x160($sp)
/* B07F4 800D53F4 C4C6001C */  lwc1       $f6, 0x1c($a2)
/* B07F8 800D53F8 E7A60194 */  swc1       $f6, 0x194($sp)
/* B07FC 800D53FC C4C80020 */  lwc1       $f8, 0x20($a2)
/* B0800 800D5400 E7A80198 */  swc1       $f8, 0x198($sp)
/* B0804 800D5404 C4CA0024 */  lwc1       $f10, 0x24($a2)
/* B0808 800D5408 E7AA019C */  swc1       $f10, 0x19c($sp)
/* B080C 800D540C C4840004 */  lwc1       $f4, 4($a0)
/* B0810 800D5410 D42A0668 */  ldc1       $f10, 0x668($at)
/* B0814 800D5414 E7A40188 */  swc1       $f4, 0x188($sp)
/* B0818 800D5418 C4860050 */  lwc1       $f6, 0x50($a0)
/* B081C 800D541C 46003221 */  cvt.d.s    $f8, $f6
/* B0820 800D5420 C4860008 */  lwc1       $f6, 8($a0)
/* B0824 800D5424 462A4102 */  mul.d      $f4, $f8, $f10
/* B0828 800D5428 46003221 */  cvt.d.s    $f8, $f6
/* B082C 800D542C 46244280 */  add.d      $f10, $f8, $f4
/* B0830 800D5430 462051A0 */  cvt.s.d    $f6, $f10
/* B0834 800D5434 E7A6018C */  swc1       $f6, 0x18c($sp)
/* B0838 800D5438 C488000C */  lwc1       $f8, 0xc($a0)
/* B083C 800D543C E7A80190 */  swc1       $f8, 0x190($sp)
/* B0840 800D5440 C4C4000C */  lwc1       $f4, 0xc($a2)
/* B0844 800D5444 E7A40164 */  swc1       $f4, 0x164($sp)
/* B0848 800D5448 C4CA0010 */  lwc1       $f10, 0x10($a2)
/* B084C 800D544C E7AA0168 */  swc1       $f10, 0x168($sp)
/* B0850 800D5450 C4C60014 */  lwc1       $f6, 0x14($a2)
/* B0854 800D5454 E7A6016C */  swc1       $f6, 0x16c($sp)
/* B0858 800D5458 C4C80028 */  lwc1       $f8, 0x28($a2)
/* B085C 800D545C E7A8017C */  swc1       $f8, 0x17c($sp)
/* B0860 800D5460 C4C4002C */  lwc1       $f4, 0x2c($a2)
/* B0864 800D5464 E7A40180 */  swc1       $f4, 0x180($sp)
/* B0868 800D5468 C4CA0030 */  lwc1       $f10, 0x30($a2)
/* B086C 800D546C AFA0011C */  sw         $zero, 0x11c($sp)
/* B0870 800D5470 E7AA0184 */  swc1       $f10, 0x184($sp)
/* B0874 800D5474 C4800024 */  lwc1       $f0, 0x24($a0)
/* B0878 800D5478 C4820028 */  lwc1       $f2, 0x28($a0)
/* B087C 800D547C C48E002C */  lwc1       $f14, 0x2c($a0)
/* B0880 800D5480 46000182 */  mul.s      $f6, $f0, $f0
/* B0884 800D5484 00000000 */  nop
/* B0888 800D5488 46021202 */  mul.s      $f8, $f2, $f2
/* B088C 800D548C 46083100 */  add.s      $f4, $f6, $f8
/* B0890 800D5490 460E7282 */  mul.s      $f10, $f14, $f14
/* B0894 800D5494 0C036C2C */  jal        func_800DB0B0
/* B0898 800D5498 460A2300 */   add.s     $f12, $f4, $f10
/* B089C 800D549C 3C01403E */  lui        $at, 0x403e
/* B08A0 800D54A0 44813800 */  mtc1       $at, $f7
/* B08A4 800D54A4 44803000 */  mtc1       $zero, $f6
/* B08A8 800D54A8 46000221 */  cvt.d.s    $f8, $f0
/* B08AC 800D54AC 27B90194 */  addiu      $t9, $sp, 0x194
/* B08B0 800D54B0 4628303C */  c.lt.d     $f6, $f8
/* B08B4 800D54B4 00000000 */  nop
/* B08B8 800D54B8 4503000C */  bc1tl      .L800D54EC
/* B08BC 800D54BC 24180001 */   addiu     $t8, $zero, 1
/* B08C0 800D54C0 8FAF01A4 */  lw         $t7, 0x1a4($sp)
/* B08C4 800D54C4 24010005 */  addiu      $at, $zero, 5
/* B08C8 800D54C8 8DE20004 */  lw         $v0, 4($t7)
/* B08CC 800D54CC 10410006 */  beq        $v0, $at, .L800D54E8
/* B08D0 800D54D0 24010008 */   addiu     $at, $zero, 8
/* B08D4 800D54D4 10410004 */  beq        $v0, $at, .L800D54E8
/* B08D8 800D54D8 2401000A */   addiu     $at, $zero, 0xa
/* B08DC 800D54DC 10410002 */  beq        $v0, $at, .L800D54E8
/* B08E0 800D54E0 2401000B */   addiu     $at, $zero, 0xb
/* B08E4 800D54E4 14410003 */  bne        $v0, $at, .L800D54F4
.L800D54E8:
/* B08E8 800D54E8 24180001 */   addiu     $t8, $zero, 1
.L800D54EC:
/* B08EC 800D54EC 10000002 */  b          .L800D54F8
/* B08F0 800D54F0 AFB80118 */   sw        $t8, 0x118($sp)
.L800D54F4:
/* B08F4 800D54F4 AFA00118 */  sw         $zero, 0x118($sp)
.L800D54F8:
/* B08F8 800D54F8 8F210000 */  lw         $at, ($t9)
/* B08FC 800D54FC 27AC0188 */  addiu      $t4, $sp, 0x188
/* B0900 800D5500 27AF017C */  addiu      $t7, $sp, 0x17c
/* B0904 800D5504 AFA10000 */  sw         $at, ($sp)
/* B0908 800D5508 8F250004 */  lw         $a1, 4($t9)
/* B090C 800D550C 8FA40000 */  lw         $a0, ($sp)
/* B0910 800D5510 AFA50004 */  sw         $a1, 4($sp)
/* B0914 800D5514 8F210008 */  lw         $at, 8($t9)
/* B0918 800D5518 27B9012C */  addiu      $t9, $sp, 0x12c
/* B091C 800D551C AFA10008 */  sw         $at, 8($sp)
/* B0920 800D5520 8D810000 */  lw         $at, ($t4)
/* B0924 800D5524 8FA60008 */  lw         $a2, 8($sp)
/* B0928 800D5528 AFA1000C */  sw         $at, 0xc($sp)
/* B092C 800D552C 8D8E0004 */  lw         $t6, 4($t4)
/* B0930 800D5530 8FA7000C */  lw         $a3, 0xc($sp)
/* B0934 800D5534 AFAE0010 */  sw         $t6, 0x10($sp)
/* B0938 800D5538 8D810008 */  lw         $at, 8($t4)
/* B093C 800D553C AFA10014 */  sw         $at, 0x14($sp)
/* B0940 800D5540 8DE10000 */  lw         $at, ($t7)
/* B0944 800D5544 AFA10018 */  sw         $at, 0x18($sp)
/* B0948 800D5548 8DEA0004 */  lw         $t2, 4($t7)
/* B094C 800D554C AFAA001C */  sw         $t2, 0x1c($sp)
/* B0950 800D5550 8DE10008 */  lw         $at, 8($t7)
/* B0954 800D5554 AFB90024 */  sw         $t9, 0x24($sp)
/* B0958 800D5558 0C034D64 */  jal        func_800D3590
/* B095C 800D555C AFA10020 */   sw        $at, 0x20($sp)
/* B0960 800D5560 27A4012C */  addiu      $a0, $sp, 0x12c
/* B0964 800D5564 24050007 */  addiu      $a1, $zero, 7
/* B0968 800D5568 0C032689 */  jal        func_800C9A24
/* B096C 800D556C 24060070 */   addiu     $a2, $zero, 0x70
/* B0970 800D5570 27AB017C */  addiu      $t3, $sp, 0x17c
/* B0974 800D5574 8D610000 */  lw         $at, ($t3)
/* B0978 800D5578 27AE0194 */  addiu      $t6, $sp, 0x194
/* B097C 800D557C 240A0007 */  addiu      $t2, $zero, 7
/* B0980 800D5580 AFA10000 */  sw         $at, ($sp)
/* B0984 800D5584 8D650004 */  lw         $a1, 4($t3)
/* B0988 800D5588 24190001 */  addiu      $t9, $zero, 1
/* B098C 800D558C 240D0001 */  addiu      $t5, $zero, 1
/* B0990 800D5590 AFA50004 */  sw         $a1, 4($sp)
/* B0994 800D5594 8D610008 */  lw         $at, 8($t3)
/* B0998 800D5598 8FA40000 */  lw         $a0, ($sp)
/* B099C 800D559C AFA10008 */  sw         $at, 8($sp)
/* B09A0 800D55A0 8DC10000 */  lw         $at, ($t6)
/* B09A4 800D55A4 8FA60008 */  lw         $a2, 8($sp)
/* B09A8 800D55A8 AFA1000C */  sw         $at, 0xc($sp)
/* B09AC 800D55AC 8DCF0004 */  lw         $t7, 4($t6)
/* B09B0 800D55B0 8FA7000C */  lw         $a3, 0xc($sp)
/* B09B4 800D55B4 AFAF0010 */  sw         $t7, 0x10($sp)
/* B09B8 800D55B8 8DC10008 */  lw         $at, 8($t6)
/* B09BC 800D55BC AFAD0020 */  sw         $t5, 0x20($sp)
/* B09C0 800D55C0 AFB9001C */  sw         $t9, 0x1c($sp)
/* B09C4 800D55C4 AFAA0018 */  sw         $t2, 0x18($sp)
/* B09C8 800D55C8 0C032A3E */  jal        func_800CA8F8
/* B09CC 800D55CC AFA10014 */   sw        $at, 0x14($sp)
/* B09D0 800D55D0 AFA20120 */  sw         $v0, 0x120($sp)
/* B09D4 800D55D4 27AB0188 */  addiu      $t3, $sp, 0x188
/* B09D8 800D55D8 8D610000 */  lw         $at, ($t3)
/* B09DC 800D55DC 27AE0194 */  addiu      $t6, $sp, 0x194
/* B09E0 800D55E0 24190007 */  addiu      $t9, $zero, 7
/* B09E4 800D55E4 AFA10000 */  sw         $at, ($sp)
/* B09E8 800D55E8 8D650004 */  lw         $a1, 4($t3)
/* B09EC 800D55EC 240D0001 */  addiu      $t5, $zero, 1
/* B09F0 800D55F0 240C0001 */  addiu      $t4, $zero, 1
/* B09F4 800D55F4 AFA50004 */  sw         $a1, 4($sp)
/* B09F8 800D55F8 8D610008 */  lw         $at, 8($t3)
/* B09FC 800D55FC 8FA40000 */  lw         $a0, ($sp)
/* B0A00 800D5600 AFA10008 */  sw         $at, 8($sp)
/* B0A04 800D5604 8DC10000 */  lw         $at, ($t6)
/* B0A08 800D5608 8FA60008 */  lw         $a2, 8($sp)
/* B0A0C 800D560C AFA1000C */  sw         $at, 0xc($sp)
/* B0A10 800D5610 8DCA0004 */  lw         $t2, 4($t6)
/* B0A14 800D5614 8FA7000C */  lw         $a3, 0xc($sp)
/* B0A18 800D5618 AFAA0010 */  sw         $t2, 0x10($sp)
/* B0A1C 800D561C 8DC10008 */  lw         $at, 8($t6)
/* B0A20 800D5620 AFAC0020 */  sw         $t4, 0x20($sp)
/* B0A24 800D5624 AFAD001C */  sw         $t5, 0x1c($sp)
/* B0A28 800D5628 AFB90018 */  sw         $t9, 0x18($sp)
/* B0A2C 800D562C 0C032A3E */  jal        func_800CA8F8
/* B0A30 800D5630 AFA10014 */   sw        $at, 0x14($sp)
/* B0A34 800D5634 27AB017C */  addiu      $t3, $sp, 0x17c
/* B0A38 800D5638 8D610000 */  lw         $at, ($t3)
/* B0A3C 800D563C 27AE0188 */  addiu      $t6, $sp, 0x188
/* B0A40 800D5640 240D0007 */  addiu      $t5, $zero, 7
/* B0A44 800D5644 AFA10000 */  sw         $at, ($sp)
/* B0A48 800D5648 8D650004 */  lw         $a1, 4($t3)
/* B0A4C 800D564C 240C0001 */  addiu      $t4, $zero, 1
/* B0A50 800D5650 24180001 */  addiu      $t8, $zero, 1
/* B0A54 800D5654 AFA50004 */  sw         $a1, 4($sp)
/* B0A58 800D5658 8D610008 */  lw         $at, 8($t3)
/* B0A5C 800D565C 8FA40000 */  lw         $a0, ($sp)
/* B0A60 800D5660 AFA10008 */  sw         $at, 8($sp)
/* B0A64 800D5664 8DC10000 */  lw         $at, ($t6)
/* B0A68 800D5668 8FA60008 */  lw         $a2, 8($sp)
/* B0A6C 800D566C AFA1000C */  sw         $at, 0xc($sp)
/* B0A70 800D5670 8DD90004 */  lw         $t9, 4($t6)
/* B0A74 800D5674 8FA7000C */  lw         $a3, 0xc($sp)
/* B0A78 800D5678 AFB90010 */  sw         $t9, 0x10($sp)
/* B0A7C 800D567C 8DC10008 */  lw         $at, 8($t6)
/* B0A80 800D5680 AFA20128 */  sw         $v0, 0x128($sp)
/* B0A84 800D5684 AFB80020 */  sw         $t8, 0x20($sp)
/* B0A88 800D5688 AFAC001C */  sw         $t4, 0x1c($sp)
/* B0A8C 800D568C AFAD0018 */  sw         $t5, 0x18($sp)
/* B0A90 800D5690 0C032A3E */  jal        func_800CA8F8
/* B0A94 800D5694 AFA10014 */   sw        $at, 0x14($sp)
/* B0A98 800D5698 14400005 */  bnez       $v0, .L800D56B0
/* B0A9C 800D569C 8FA30128 */   lw        $v1, 0x128($sp)
/* B0AA0 800D56A0 3C048011 */  lui        $a0, %hi(D_80108FD4)
/* B0AA4 800D56A4 24848FD4 */  addiu      $a0, $a0, %lo(D_80108FD4)
/* B0AA8 800D56A8 10000006 */  b          .L800D56C4
/* B0AAC 800D56AC AC800000 */   sw        $zero, ($a0)
.L800D56B0:
/* B0AB0 800D56B0 3C048011 */  lui        $a0, %hi(D_80108FD4)
/* B0AB4 800D56B4 24848FD4 */  addiu      $a0, $a0, %lo(D_80108FD4)
/* B0AB8 800D56B8 8C8B0000 */  lw         $t3, ($a0)
/* B0ABC 800D56BC 256F0001 */  addiu      $t7, $t3, 1
/* B0AC0 800D56C0 AC8F0000 */  sw         $t7, ($a0)
.L800D56C4:
/* B0AC4 800D56C4 14600012 */  bnez       $v1, .L800D5710
/* B0AC8 800D56C8 27A90194 */   addiu     $t1, $sp, 0x194
/* B0ACC 800D56CC 8D210000 */  lw         $at, ($t1)
/* B0AD0 800D56D0 3C0A8011 */  lui        $t2, %hi(D_80108F9C)
/* B0AD4 800D56D4 254A8F9C */  addiu      $t2, $t2, %lo(D_80108F9C)
/* B0AD8 800D56D8 AD410000 */  sw         $at, ($t2)
/* B0ADC 800D56DC 8D390004 */  lw         $t9, 4($t1)
/* B0AE0 800D56E0 27A80188 */  addiu      $t0, $sp, 0x188
/* B0AE4 800D56E4 3C0D8011 */  lui        $t5, %hi(D_80108FA8)
/* B0AE8 800D56E8 AD590004 */  sw         $t9, 4($t2)
/* B0AEC 800D56EC 8D210008 */  lw         $at, 8($t1)
/* B0AF0 800D56F0 25AD8FA8 */  addiu      $t5, $t5, %lo(D_80108FA8)
/* B0AF4 800D56F4 AD410008 */  sw         $at, 8($t2)
/* B0AF8 800D56F8 8D010000 */  lw         $at, ($t0)
/* B0AFC 800D56FC ADA10000 */  sw         $at, ($t5)
/* B0B00 800D5700 8D180004 */  lw         $t8, 4($t0)
/* B0B04 800D5704 ADB80004 */  sw         $t8, 4($t5)
/* B0B08 800D5708 8D010008 */  lw         $at, 8($t0)
/* B0B0C 800D570C ADA10008 */  sw         $at, 8($t5)
.L800D5710:
/* B0B10 800D5710 14400012 */  bnez       $v0, .L800D575C
/* B0B14 800D5714 27A80188 */   addiu     $t0, $sp, 0x188
/* B0B18 800D5718 27AF017C */  addiu      $t7, $sp, 0x17c
/* B0B1C 800D571C 8DE10000 */  lw         $at, ($t7)
/* B0B20 800D5720 3C0B8011 */  lui        $t3, %hi(D_80108FB4)
/* B0B24 800D5724 256B8FB4 */  addiu      $t3, $t3, %lo(D_80108FB4)
/* B0B28 800D5728 AD610000 */  sw         $at, ($t3)
/* B0B2C 800D572C 8DE10008 */  lw         $at, 8($t7)
/* B0B30 800D5730 8DEA0004 */  lw         $t2, 4($t7)
/* B0B34 800D5734 3C058011 */  lui        $a1, %hi(D_80108FC0)
/* B0B38 800D5738 AD610008 */  sw         $at, 8($t3)
/* B0B3C 800D573C AD6A0004 */  sw         $t2, 4($t3)
/* B0B40 800D5740 8D010000 */  lw         $at, ($t0)
/* B0B44 800D5744 24A58FC0 */  addiu      $a1, $a1, %lo(D_80108FC0)
/* B0B48 800D5748 8D0C0004 */  lw         $t4, 4($t0)
/* B0B4C 800D574C ACA10000 */  sw         $at, ($a1)
/* B0B50 800D5750 8D010008 */  lw         $at, 8($t0)
/* B0B54 800D5754 ACAC0004 */  sw         $t4, 4($a1)
/* B0B58 800D5758 ACA10008 */  sw         $at, 8($a1)
.L800D575C:
/* B0B5C 800D575C 8C8D0000 */  lw         $t5, ($a0)
/* B0B60 800D5760 3C058011 */  lui        $a1, %hi(D_80108FC0)
/* B0B64 800D5764 24A58FC0 */  addiu      $a1, $a1, %lo(D_80108FC0)
/* B0B68 800D5768 29A1003D */  slti       $at, $t5, 0x3d
/* B0B6C 800D576C 14200059 */  bnez       $at, .L800D58D4
/* B0B70 800D5770 00000000 */   nop
/* B0B74 800D5774 10600045 */  beqz       $v1, .L800D588C
/* B0B78 800D5778 C7A40194 */   lwc1      $f4, 0x194($sp)
/* B0B7C 800D577C C7AA0188 */  lwc1       $f10, 0x188($sp)
/* B0B80 800D5780 C7A60198 */  lwc1       $f6, 0x198($sp)
/* B0B84 800D5784 C7A8018C */  lwc1       $f8, 0x18c($sp)
/* B0B88 800D5788 460A2401 */  sub.s      $f16, $f4, $f10
/* B0B8C 800D578C C7AA019C */  lwc1       $f10, 0x19c($sp)
/* B0B90 800D5790 00001825 */  or         $v1, $zero, $zero
/* B0B94 800D5794 46083101 */  sub.s      $f4, $f6, $f8
/* B0B98 800D5798 C7A60190 */  lwc1       $f6, 0x190($sp)
/* B0B9C 800D579C E7B00150 */  swc1       $f16, 0x150($sp)
/* B0BA0 800D57A0 46065481 */  sub.s      $f18, $f10, $f6
/* B0BA4 800D57A4 E7A40154 */  swc1       $f4, 0x154($sp)
/* B0BA8 800D57A8 E7B20158 */  swc1       $f18, 0x158($sp)
/* B0BAC 800D57AC 27AE0150 */  addiu      $t6, $sp, 0x150
.L800D57B0:
/* B0BB0 800D57B0 8DC10000 */  lw         $at, ($t6)
/* B0BB4 800D57B4 27B80100 */  addiu      $t8, $sp, 0x100
/* B0BB8 800D57B8 27A80188 */  addiu      $t0, $sp, 0x188
/* B0BBC 800D57BC AF010000 */  sw         $at, ($t8)
/* B0BC0 800D57C0 8DCA0004 */  lw         $t2, 4($t6)
/* B0BC4 800D57C4 27A90194 */  addiu      $t1, $sp, 0x194
/* B0BC8 800D57C8 240B0007 */  addiu      $t3, $zero, 7
/* B0BCC 800D57CC AF0A0004 */  sw         $t2, 4($t8)
/* B0BD0 800D57D0 8DC10008 */  lw         $at, 8($t6)
/* B0BD4 800D57D4 240E0001 */  addiu      $t6, $zero, 1
/* B0BD8 800D57D8 AF010008 */  sw         $at, 8($t8)
/* B0BDC 800D57DC C7A80100 */  lwc1       $f8, 0x100($sp)
/* B0BE0 800D57E0 C7AA0108 */  lwc1       $f10, 0x108($sp)
/* B0BE4 800D57E4 C7A60188 */  lwc1       $f6, 0x188($sp)
/* B0BE8 800D57E8 46004107 */  neg.s      $f4, $f8
/* B0BEC 800D57EC E7AA0150 */  swc1       $f10, 0x150($sp)
/* B0BF0 800D57F0 E7A40158 */  swc1       $f4, 0x158($sp)
/* B0BF4 800D57F4 460A3100 */  add.s      $f4, $f6, $f10
/* B0BF8 800D57F8 C7AA0154 */  lwc1       $f10, 0x154($sp)
/* B0BFC 800D57FC C7A6018C */  lwc1       $f6, 0x18c($sp)
/* B0C00 800D5800 24180001 */  addiu      $t8, $zero, 1
/* B0C04 800D5804 E7A40194 */  swc1       $f4, 0x194($sp)
/* B0C08 800D5808 460A3100 */  add.s      $f4, $f6, $f10
/* B0C0C 800D580C C7A60190 */  lwc1       $f6, 0x190($sp)
/* B0C10 800D5810 46083281 */  sub.s      $f10, $f6, $f8
/* B0C14 800D5814 E7A40198 */  swc1       $f4, 0x198($sp)
/* B0C18 800D5818 E7AA019C */  swc1       $f10, 0x19c($sp)
/* B0C1C 800D581C 8D010000 */  lw         $at, ($t0)
/* B0C20 800D5820 AFA10000 */  sw         $at, ($sp)
/* B0C24 800D5824 8D050004 */  lw         $a1, 4($t0)
/* B0C28 800D5828 8FA40000 */  lw         $a0, ($sp)
/* B0C2C 800D582C AFA50004 */  sw         $a1, 4($sp)
/* B0C30 800D5830 8D010008 */  lw         $at, 8($t0)
/* B0C34 800D5834 AFA10008 */  sw         $at, 8($sp)
/* B0C38 800D5838 8D210000 */  lw         $at, ($t1)
/* B0C3C 800D583C 8FA60008 */  lw         $a2, 8($sp)
/* B0C40 800D5840 AFA1000C */  sw         $at, 0xc($sp)
/* B0C44 800D5844 8D2F0004 */  lw         $t7, 4($t1)
/* B0C48 800D5848 8FA7000C */  lw         $a3, 0xc($sp)
/* B0C4C 800D584C AFAF0010 */  sw         $t7, 0x10($sp)
/* B0C50 800D5850 8D210008 */  lw         $at, 8($t1)
/* B0C54 800D5854 AFA3010C */  sw         $v1, 0x10c($sp)
/* B0C58 800D5858 AFAE0020 */  sw         $t6, 0x20($sp)
/* B0C5C 800D585C AFB8001C */  sw         $t8, 0x1c($sp)
/* B0C60 800D5860 AFAB0018 */  sw         $t3, 0x18($sp)
/* B0C64 800D5864 0C032A3E */  jal        func_800CA8F8
/* B0C68 800D5868 AFA10014 */   sw        $at, 0x14($sp)
/* B0C6C 800D586C 14400003 */  bnez       $v0, .L800D587C
/* B0C70 800D5870 8FA3010C */   lw        $v1, 0x10c($sp)
/* B0C74 800D5874 10000006 */  b          .L800D5890
/* B0C78 800D5878 C7A40194 */   lwc1      $f4, 0x194($sp)
.L800D587C:
/* B0C7C 800D587C 24630001 */  addiu      $v1, $v1, 1
/* B0C80 800D5880 24010003 */  addiu      $at, $zero, 3
/* B0C84 800D5884 5461FFCA */  bnel       $v1, $at, .L800D57B0
/* B0C88 800D5888 27AE0150 */   addiu     $t6, $sp, 0x150
.L800D588C:
/* B0C8C 800D588C C7A40194 */  lwc1       $f4, 0x194($sp)
.L800D5890:
/* B0C90 800D5890 C7A6017C */  lwc1       $f6, 0x17c($sp)
/* B0C94 800D5894 C7A80198 */  lwc1       $f8, 0x198($sp)
/* B0C98 800D5898 C7AA0180 */  lwc1       $f10, 0x180($sp)
/* B0C9C 800D589C 46062401 */  sub.s      $f16, $f4, $f6
/* B0CA0 800D58A0 C7A6019C */  lwc1       $f6, 0x19c($sp)
/* B0CA4 800D58A4 27A40150 */  addiu      $a0, $sp, 0x150
/* B0CA8 800D58A8 460A4101 */  sub.s      $f4, $f8, $f10
/* B0CAC 800D58AC C7A80184 */  lwc1       $f8, 0x184($sp)
/* B0CB0 800D58B0 E7B00150 */  swc1       $f16, 0x150($sp)
/* B0CB4 800D58B4 46083481 */  sub.s      $f18, $f6, $f8
/* B0CB8 800D58B8 E7A40154 */  swc1       $f4, 0x154($sp)
/* B0CBC 800D58BC 0C03606C */  jal        func_800D81B0
/* B0CC0 800D58C0 E7B20158 */   swc1      $f18, 0x158($sp)
/* B0CC4 800D58C4 240A0001 */  addiu      $t2, $zero, 1
/* B0CC8 800D58C8 46000386 */  mov.s      $f14, $f0
/* B0CCC 800D58CC 1000014A */  b          .L800D5DF8
/* B0CD0 800D58D0 AFAA011C */   sw        $t2, 0x11c($sp)
.L800D58D4:
/* B0CD4 800D58D4 14600024 */  bnez       $v1, .L800D5968
/* B0CD8 800D58D8 8FB90120 */   lw        $t9, 0x120($sp)
/* B0CDC 800D58DC 17200022 */  bnez       $t9, .L800D5968
/* B0CE0 800D58E0 8FAC0118 */   lw        $t4, 0x118($sp)
/* B0CE4 800D58E4 11800011 */  beqz       $t4, .L800D592C
/* B0CE8 800D58E8 C7A80194 */   lwc1      $f8, 0x194($sp)
/* B0CEC 800D58EC C7AA0194 */  lwc1       $f10, 0x194($sp)
/* B0CF0 800D58F0 C7A4017C */  lwc1       $f4, 0x17c($sp)
/* B0CF4 800D58F4 C7A60198 */  lwc1       $f6, 0x198($sp)
/* B0CF8 800D58F8 C7A80180 */  lwc1       $f8, 0x180($sp)
/* B0CFC 800D58FC 46045401 */  sub.s      $f16, $f10, $f4
/* B0D00 800D5900 C7A4019C */  lwc1       $f4, 0x19c($sp)
/* B0D04 800D5904 27A40150 */  addiu      $a0, $sp, 0x150
/* B0D08 800D5908 46083281 */  sub.s      $f10, $f6, $f8
/* B0D0C 800D590C C7A60184 */  lwc1       $f6, 0x184($sp)
/* B0D10 800D5910 E7B00150 */  swc1       $f16, 0x150($sp)
/* B0D14 800D5914 46062481 */  sub.s      $f18, $f4, $f6
/* B0D18 800D5918 E7AA0154 */  swc1       $f10, 0x154($sp)
/* B0D1C 800D591C 0C03606C */  jal        func_800D81B0
/* B0D20 800D5920 E7B20158 */   swc1      $f18, 0x158($sp)
/* B0D24 800D5924 10000134 */  b          .L800D5DF8
/* B0D28 800D5928 46000386 */   mov.s     $f14, $f0
.L800D592C:
/* B0D2C 800D592C C7AA017C */  lwc1       $f10, 0x17c($sp)
/* B0D30 800D5930 C7A40198 */  lwc1       $f4, 0x198($sp)
/* B0D34 800D5934 C7A60180 */  lwc1       $f6, 0x180($sp)
/* B0D38 800D5938 460A4401 */  sub.s      $f16, $f8, $f10
/* B0D3C 800D593C C7AA019C */  lwc1       $f10, 0x19c($sp)
/* B0D40 800D5940 27A40150 */  addiu      $a0, $sp, 0x150
/* B0D44 800D5944 46062201 */  sub.s      $f8, $f4, $f6
/* B0D48 800D5948 C7A40184 */  lwc1       $f4, 0x184($sp)
/* B0D4C 800D594C E7B00150 */  swc1       $f16, 0x150($sp)
/* B0D50 800D5950 46045481 */  sub.s      $f18, $f10, $f4
/* B0D54 800D5954 E7A80154 */  swc1       $f8, 0x154($sp)
/* B0D58 800D5958 0C03606C */  jal        func_800D81B0
/* B0D5C 800D595C E7B20158 */   swc1      $f18, 0x158($sp)
/* B0D60 800D5960 10000125 */  b          .L800D5DF8
/* B0D64 800D5964 46000386 */   mov.s     $f14, $f0
.L800D5968:
/* B0D68 800D5968 14400037 */  bnez       $v0, .L800D5A48
/* B0D6C 800D596C C7A60188 */   lwc1      $f6, 0x188($sp)
/* B0D70 800D5970 C7A60198 */  lwc1       $f6, 0x198($sp)
/* B0D74 800D5974 C7A8018C */  lwc1       $f8, 0x18c($sp)
/* B0D78 800D5978 C7AE0188 */  lwc1       $f14, 0x188($sp)
/* B0D7C 800D597C C7A4017C */  lwc1       $f4, 0x17c($sp)
/* B0D80 800D5980 46083281 */  sub.s      $f10, $f6, $f8
/* B0D84 800D5984 C7A60180 */  lwc1       $f6, 0x180($sp)
/* B0D88 800D5988 460E2401 */  sub.s      $f16, $f4, $f14
/* B0D8C 800D598C E7AA00F4 */  swc1       $f10, 0xf4($sp)
/* B0D90 800D5990 C7A40184 */  lwc1       $f4, 0x184($sp)
/* B0D94 800D5994 46083281 */  sub.s      $f10, $f6, $f8
/* B0D98 800D5998 C7A80194 */  lwc1       $f8, 0x194($sp)
/* B0D9C 800D599C C7A60190 */  lwc1       $f6, 0x190($sp)
/* B0DA0 800D59A0 E7B00150 */  swc1       $f16, 0x150($sp)
/* B0DA4 800D59A4 E7AA0154 */  swc1       $f10, 0x154($sp)
/* B0DA8 800D59A8 460E4001 */  sub.s      $f0, $f8, $f14
/* B0DAC 800D59AC C7AA019C */  lwc1       $f10, 0x19c($sp)
/* B0DB0 800D59B0 46062481 */  sub.s      $f18, $f4, $f6
/* B0DB4 800D59B4 46000102 */  mul.s      $f4, $f0, $f0
/* B0DB8 800D59B8 46065081 */  sub.s      $f2, $f10, $f6
/* B0DBC 800D59BC E7B20158 */  swc1       $f18, 0x158($sp)
/* B0DC0 800D59C0 46021202 */  mul.s      $f8, $f2, $f2
/* B0DC4 800D59C4 46082280 */  add.s      $f10, $f4, $f8
/* B0DC8 800D59C8 46108182 */  mul.s      $f6, $f16, $f16
/* B0DCC 800D59CC 00000000 */  nop
/* B0DD0 800D59D0 46129102 */  mul.s      $f4, $f18, $f18
/* B0DD4 800D59D4 46043200 */  add.s      $f8, $f6, $f4
/* B0DD8 800D59D8 0C036C2C */  jal        func_800DB0B0
/* B0DDC 800D59DC 46085303 */   div.s     $f12, $f10, $f8
/* B0DE0 800D59E0 C7B00150 */  lwc1       $f16, 0x150($sp)
/* B0DE4 800D59E4 C7A60188 */  lwc1       $f6, 0x188($sp)
/* B0DE8 800D59E8 C7B20158 */  lwc1       $f18, 0x158($sp)
/* B0DEC 800D59EC 46008402 */  mul.s      $f16, $f16, $f0
/* B0DF0 800D59F0 C7AA017C */  lwc1       $f10, 0x17c($sp)
/* B0DF4 800D59F4 C7A8018C */  lwc1       $f8, 0x18c($sp)
/* B0DF8 800D59F8 46009482 */  mul.s      $f18, $f18, $f0
/* B0DFC 800D59FC 27A40150 */  addiu      $a0, $sp, 0x150
/* B0E00 800D5A00 46103100 */  add.s      $f4, $f6, $f16
/* B0E04 800D5A04 C7A600F4 */  lwc1       $f6, 0xf4($sp)
/* B0E08 800D5A08 460A2401 */  sub.s      $f16, $f4, $f10
/* B0E0C 800D5A0C C7AA0180 */  lwc1       $f10, 0x180($sp)
/* B0E10 800D5A10 46064100 */  add.s      $f4, $f8, $f6
/* B0E14 800D5A14 C7A60190 */  lwc1       $f6, 0x190($sp)
/* B0E18 800D5A18 E7B00150 */  swc1       $f16, 0x150($sp)
/* B0E1C 800D5A1C 460A2201 */  sub.s      $f8, $f4, $f10
/* B0E20 800D5A20 C7AA0184 */  lwc1       $f10, 0x184($sp)
/* B0E24 800D5A24 46123100 */  add.s      $f4, $f6, $f18
/* B0E28 800D5A28 E7A80154 */  swc1       $f8, 0x154($sp)
/* B0E2C 800D5A2C 460A2481 */  sub.s      $f18, $f4, $f10
/* B0E30 800D5A30 0C03606C */  jal        func_800D81B0
/* B0E34 800D5A34 E7B20158 */   swc1      $f18, 0x158($sp)
/* B0E38 800D5A38 240D0001 */  addiu      $t5, $zero, 1
/* B0E3C 800D5A3C 46000386 */  mov.s      $f14, $f0
/* B0E40 800D5A40 100000ED */  b          .L800D5DF8
/* B0E44 800D5A44 AFAD0114 */   sw        $t5, 0x114($sp)
.L800D5A48:
/* B0E48 800D5A48 C4A80000 */  lwc1       $f8, ($a1)
/* B0E4C 800D5A4C C4A40004 */  lwc1       $f4, 4($a1)
/* B0E50 800D5A50 C7AA018C */  lwc1       $f10, 0x18c($sp)
/* B0E54 800D5A54 46064401 */  sub.s      $f16, $f8, $f6
/* B0E58 800D5A58 C4A60008 */  lwc1       $f6, 8($a1)
/* B0E5C 800D5A5C 27A40150 */  addiu      $a0, $sp, 0x150
/* B0E60 800D5A60 460A2201 */  sub.s      $f8, $f4, $f10
/* B0E64 800D5A64 C7A40190 */  lwc1       $f4, 0x190($sp)
/* B0E68 800D5A68 E7B00150 */  swc1       $f16, 0x150($sp)
/* B0E6C 800D5A6C 46043481 */  sub.s      $f18, $f6, $f4
/* B0E70 800D5A70 E7A80154 */  swc1       $f8, 0x154($sp)
/* B0E74 800D5A74 0C03606C */  jal        func_800D81B0
/* B0E78 800D5A78 E7B20158 */   swc1      $f18, 0x158($sp)
/* B0E7C 800D5A7C 27AF0150 */  addiu      $t7, $sp, 0x150
/* B0E80 800D5A80 8DE10000 */  lw         $at, ($t7)
/* B0E84 800D5A84 27AE00C0 */  addiu      $t6, $sp, 0xc0
/* B0E88 800D5A88 27AA00BC */  addiu      $t2, $sp, 0xbc
/* B0E8C 800D5A8C AFA10000 */  sw         $at, ($sp)
/* B0E90 800D5A90 8DE50004 */  lw         $a1, 4($t7)
/* B0E94 800D5A94 8FA40000 */  lw         $a0, ($sp)
/* B0E98 800D5A98 27A700C4 */  addiu      $a3, $sp, 0xc4
/* B0E9C 800D5A9C AFA50004 */  sw         $a1, 4($sp)
/* B0EA0 800D5AA0 8DE60008 */  lw         $a2, 8($t7)
/* B0EA4 800D5AA4 E7A0015C */  swc1       $f0, 0x15c($sp)
/* B0EA8 800D5AA8 AFAA0014 */  sw         $t2, 0x14($sp)
/* B0EAC 800D5AAC AFAE0010 */  sw         $t6, 0x10($sp)
/* B0EB0 800D5AB0 0C0360CE */  jal        func_800D8338
/* B0EB4 800D5AB4 AFA60008 */   sw        $a2, 8($sp)
/* B0EB8 800D5AB8 C7A200C0 */  lwc1       $f2, 0xc0($sp)
/* B0EBC 800D5ABC 3C014049 */  lui        $at, 0x4049
/* B0EC0 800D5AC0 44815800 */  mtc1       $at, $f11
/* B0EC4 800D5AC4 44805000 */  mtc1       $zero, $f10
/* B0EC8 800D5AC8 46001021 */  cvt.d.s    $f0, $f2
/* B0ECC 800D5ACC C7AE015C */  lwc1       $f14, 0x15c($sp)
/* B0ED0 800D5AD0 462A003C */  c.lt.d     $f0, $f10
/* B0ED4 800D5AD4 3C018011 */  lui        $at, %hi(D_80110670)
/* B0ED8 800D5AD8 C7A6017C */  lwc1       $f6, 0x17c($sp)
/* B0EDC 800D5ADC C7A40164 */  lwc1       $f4, 0x164($sp)
/* B0EE0 800D5AE0 45030009 */  bc1tl      .L800D5B08
/* B0EE4 800D5AE4 46043281 */   sub.s     $f10, $f6, $f4
/* B0EE8 800D5AE8 D4280670 */  ldc1       $f8, %lo(D_80110670)($at)
/* B0EEC 800D5AEC C7AA0188 */  lwc1       $f10, 0x188($sp)
/* B0EF0 800D5AF0 27A400CC */  addiu      $a0, $sp, 0xcc
/* B0EF4 800D5AF4 4620403C */  c.lt.d     $f8, $f0
/* B0EF8 800D5AF8 00000000 */  nop
/* B0EFC 800D5AFC 4502005E */  bc1fl      .L800D5C78
/* B0F00 800D5B00 C7A4017C */   lwc1      $f4, 0x17c($sp)
/* B0F04 800D5B04 46043281 */  sub.s      $f10, $f6, $f4
.L800D5B08:
/* B0F08 800D5B08 C7A60168 */  lwc1       $f6, 0x168($sp)
/* B0F0C 800D5B0C C7A80180 */  lwc1       $f8, 0x180($sp)
/* B0F10 800D5B10 27B90150 */  addiu      $t9, $sp, 0x150
/* B0F14 800D5B14 E7AA0150 */  swc1       $f10, 0x150($sp)
/* B0F18 800D5B18 46064101 */  sub.s      $f4, $f8, $f6
/* B0F1C 800D5B1C C7A8016C */  lwc1       $f8, 0x16c($sp)
/* B0F20 800D5B20 C7AA0184 */  lwc1       $f10, 0x184($sp)
/* B0F24 800D5B24 27AB00C0 */  addiu      $t3, $sp, 0xc0
/* B0F28 800D5B28 E7A40154 */  swc1       $f4, 0x154($sp)
/* B0F2C 800D5B2C 46085181 */  sub.s      $f6, $f10, $f8
/* B0F30 800D5B30 27AF00BC */  addiu      $t7, $sp, 0xbc
/* B0F34 800D5B34 27A700C4 */  addiu      $a3, $sp, 0xc4
/* B0F38 800D5B38 E7A60158 */  swc1       $f6, 0x158($sp)
/* B0F3C 800D5B3C 8F210000 */  lw         $at, ($t9)
/* B0F40 800D5B40 AFA10000 */  sw         $at, ($sp)
/* B0F44 800D5B44 8F250004 */  lw         $a1, 4($t9)
/* B0F48 800D5B48 8FA40000 */  lw         $a0, ($sp)
/* B0F4C 800D5B4C AFA50004 */  sw         $a1, 4($sp)
/* B0F50 800D5B50 8F260008 */  lw         $a2, 8($t9)
/* B0F54 800D5B54 AFAF0014 */  sw         $t7, 0x14($sp)
/* B0F58 800D5B58 AFAB0010 */  sw         $t3, 0x10($sp)
/* B0F5C 800D5B5C 0C0360CE */  jal        func_800D8338
/* B0F60 800D5B60 AFA60008 */   sw        $a2, 8($sp)
/* B0F64 800D5B64 C7A200C0 */  lwc1       $f2, 0xc0($sp)
/* B0F68 800D5B68 3C018011 */  lui        $at, %hi(D_80110678)
/* B0F6C 800D5B6C D4240678 */  ldc1       $f4, %lo(D_80110678)($at)
/* B0F70 800D5B70 46001021 */  cvt.d.s    $f0, $f2
/* B0F74 800D5B74 3C013FF0 */  lui        $at, 0x3ff0
/* B0F78 800D5B78 4624003C */  c.lt.d     $f0, $f4
/* B0F7C 800D5B7C 27A40150 */  addiu      $a0, $sp, 0x150
/* B0F80 800D5B80 8FA500C4 */  lw         $a1, 0xc4($sp)
/* B0F84 800D5B84 8FA700BC */  lw         $a3, 0xbc($sp)
/* B0F88 800D5B88 45020013 */  bc1fl      .L800D5BD8
/* B0F8C 800D5B8C 44815800 */   mtc1      $at, $f11
/* B0F90 800D5B90 3C013FF0 */  lui        $at, 0x3ff0
/* B0F94 800D5B94 44815800 */  mtc1       $at, $f11
/* B0F98 800D5B98 44805000 */  mtc1       $zero, $f10
/* B0F9C 800D5B9C 3C014034 */  lui        $at, 0x4034
/* B0FA0 800D5BA0 44812800 */  mtc1       $at, $f5
/* B0FA4 800D5BA4 462A0201 */  sub.d      $f8, $f0, $f10
/* B0FA8 800D5BA8 44802000 */  mtc1       $zero, $f4
/* B0FAC 800D5BAC 3C0141A0 */  lui        $at, 0x41a0
/* B0FB0 800D5BB0 462040A0 */  cvt.s.d    $f2, $f8
/* B0FB4 800D5BB4 460011A1 */  cvt.d.s    $f6, $f2
/* B0FB8 800D5BB8 4624303C */  c.lt.d     $f6, $f4
/* B0FBC 800D5BBC 00000000 */  nop
/* B0FC0 800D5BC0 45020014 */  bc1fl      .L800D5C14
/* B0FC4 800D5BC4 44061000 */   mfc1      $a2, $f2
/* B0FC8 800D5BC8 44811000 */  mtc1       $at, $f2
/* B0FCC 800D5BCC 10000011 */  b          .L800D5C14
/* B0FD0 800D5BD0 44061000 */   mfc1      $a2, $f2
/* B0FD4 800D5BD4 44815800 */  mtc1       $at, $f11
.L800D5BD8:
/* B0FD8 800D5BD8 44805000 */  mtc1       $zero, $f10
/* B0FDC 800D5BDC 3C014064 */  lui        $at, 0x4064
/* B0FE0 800D5BE0 44813800 */  mtc1       $at, $f7
/* B0FE4 800D5BE4 462A0200 */  add.d      $f8, $f0, $f10
/* B0FE8 800D5BE8 44803000 */  mtc1       $zero, $f6
/* B0FEC 800D5BEC 3C014320 */  lui        $at, 0x4320
/* B0FF0 800D5BF0 462040A0 */  cvt.s.d    $f2, $f8
/* B0FF4 800D5BF4 46001121 */  cvt.d.s    $f4, $f2
/* B0FF8 800D5BF8 4624303C */  c.lt.d     $f6, $f4
/* B0FFC 800D5BFC 00000000 */  nop
/* B1000 800D5C00 45020004 */  bc1fl      .L800D5C14
/* B1004 800D5C04 44061000 */   mfc1      $a2, $f2
/* B1008 800D5C08 44811000 */  mtc1       $at, $f2
/* B100C 800D5C0C 00000000 */  nop
/* B1010 800D5C10 44061000 */  mfc1       $a2, $f2
.L800D5C14:
/* B1014 800D5C14 0C03611A */  jal        func_800D8468
/* B1018 800D5C18 E7A200C0 */   swc1      $f2, 0xc0($sp)
/* B101C 800D5C1C C7B00150 */  lwc1       $f16, 0x150($sp)
/* B1020 800D5C20 C7AA0164 */  lwc1       $f10, 0x164($sp)
/* B1024 800D5C24 C7A6017C */  lwc1       $f6, 0x17c($sp)
/* B1028 800D5C28 C7A40168 */  lwc1       $f4, 0x168($sp)
/* B102C 800D5C2C 46105200 */  add.s      $f8, $f10, $f16
/* B1030 800D5C30 C7AA0154 */  lwc1       $f10, 0x154($sp)
/* B1034 800D5C34 C7B20158 */  lwc1       $f18, 0x158($sp)
/* B1038 800D5C38 27A40150 */  addiu      $a0, $sp, 0x150
/* B103C 800D5C3C 46064401 */  sub.s      $f16, $f8, $f6
/* B1040 800D5C40 C7A60180 */  lwc1       $f6, 0x180($sp)
/* B1044 800D5C44 460A2200 */  add.s      $f8, $f4, $f10
/* B1048 800D5C48 C7AA016C */  lwc1       $f10, 0x16c($sp)
/* B104C 800D5C4C E7B00150 */  swc1       $f16, 0x150($sp)
/* B1050 800D5C50 46064101 */  sub.s      $f4, $f8, $f6
/* B1054 800D5C54 C7A60184 */  lwc1       $f6, 0x184($sp)
/* B1058 800D5C58 46125200 */  add.s      $f8, $f10, $f18
/* B105C 800D5C5C E7A40154 */  swc1       $f4, 0x154($sp)
/* B1060 800D5C60 46064481 */  sub.s      $f18, $f8, $f6
/* B1064 800D5C64 0C03606C */  jal        func_800D81B0
/* B1068 800D5C68 E7B20158 */   swc1      $f18, 0x158($sp)
/* B106C 800D5C6C 10000062 */  b          .L800D5DF8
/* B1070 800D5C70 46000386 */   mov.s     $f14, $f0
/* B1074 800D5C74 C7A4017C */  lwc1       $f4, 0x17c($sp)
.L800D5C78:
/* B1078 800D5C78 C7A80184 */  lwc1       $f8, 0x184($sp)
/* B107C 800D5C7C C7A60190 */  lwc1       $f6, 0x190($sp)
/* B1080 800D5C80 460A2001 */  sub.s      $f0, $f4, $f10
/* B1084 800D5C84 44802000 */  mtc1       $zero, $f4
/* B1088 800D5C88 E7AE015C */  swc1       $f14, 0x15c($sp)
/* B108C 800D5C8C 46064301 */  sub.s      $f12, $f8, $f6
/* B1090 800D5C90 E7A000D8 */  swc1       $f0, 0xd8($sp)
/* B1094 800D5C94 E7A400D0 */  swc1       $f4, 0xd0($sp)
/* B1098 800D5C98 46000287 */  neg.s      $f10, $f0
/* B109C 800D5C9C E7AC00E0 */  swc1       $f12, 0xe0($sp)
/* B10A0 800D5CA0 E7AA00D4 */  swc1       $f10, 0xd4($sp)
/* B10A4 800D5CA4 0C03606C */  jal        func_800D81B0
/* B10A8 800D5CA8 E7AC00CC */   swc1      $f12, 0xcc($sp)
/* B10AC 800D5CAC C7A800D0 */  lwc1       $f8, 0xd0($sp)
/* B10B0 800D5CB0 C7A60154 */  lwc1       $f6, 0x154($sp)
/* B10B4 800D5CB4 C7AC00CC */  lwc1       $f12, 0xcc($sp)
/* B10B8 800D5CB8 C7B00150 */  lwc1       $f16, 0x150($sp)
/* B10BC 800D5CBC 46064102 */  mul.s      $f4, $f8, $f6
/* B10C0 800D5CC0 C7B20158 */  lwc1       $f18, 0x158($sp)
/* B10C4 800D5CC4 C7A600D4 */  lwc1       $f6, 0xd4($sp)
/* B10C8 800D5CC8 46106282 */  mul.s      $f10, $f12, $f16
/* B10CC 800D5CCC C7AE015C */  lwc1       $f14, 0x15c($sp)
/* B10D0 800D5CD0 46045200 */  add.s      $f8, $f10, $f4
/* B10D4 800D5CD4 46123282 */  mul.s      $f10, $f6, $f18
/* B10D8 800D5CD8 44802000 */  mtc1       $zero, $f4
/* B10DC 800D5CDC 460A4080 */  add.s      $f2, $f8, $f10
/* B10E0 800D5CE0 4602203C */  c.lt.s     $f4, $f2
/* B10E4 800D5CE4 00000000 */  nop
/* B10E8 800D5CE8 45020004 */  bc1fl      .L800D5CFC
/* B10EC 800D5CEC 44803000 */   mtc1      $zero, $f6
/* B10F0 800D5CF0 1000000A */  b          .L800D5D1C
/* B10F4 800D5CF4 24020001 */   addiu     $v0, $zero, 1
/* B10F8 800D5CF8 44803000 */  mtc1       $zero, $f6
.L800D5CFC:
/* B10FC 800D5CFC 00001825 */  or         $v1, $zero, $zero
/* B1100 800D5D00 4606103C */  c.lt.s     $f2, $f6
/* B1104 800D5D04 00000000 */  nop
/* B1108 800D5D08 45000003 */  bc1f       .L800D5D18
/* B110C 800D5D0C 00000000 */   nop
/* B1110 800D5D10 10000001 */  b          .L800D5D18
/* B1114 800D5D14 2403FFFF */   addiu     $v1, $zero, -1
.L800D5D18:
/* B1118 800D5D18 00601025 */  or         $v0, $v1, $zero
.L800D5D1C:
/* B111C 800D5D1C 44824000 */  mtc1       $v0, $f8
/* B1120 800D5D20 3C018011 */  lui        $at, %hi(D_80110680)
/* B1124 800D5D24 D4240680 */  ldc1       $f4, %lo(D_80110680)($at)
/* B1128 800D5D28 468042A1 */  cvt.d.w    $f10, $f8
/* B112C 800D5D2C 3C013FB0 */  lui        $at, 0x3fb0
/* B1130 800D5D30 44814800 */  mtc1       $at, $f9
/* B1134 800D5D34 44804000 */  mtc1       $zero, $f8
/* B1138 800D5D38 3C014069 */  lui        $at, 0x4069
/* B113C 800D5D3C 46245182 */  mul.d      $f6, $f10, $f4
/* B1140 800D5D40 46007121 */  cvt.d.s    $f4, $f14
/* B1144 800D5D44 46283282 */  mul.d      $f10, $f6, $f8
/* B1148 800D5D48 44803000 */  mtc1       $zero, $f6
/* B114C 800D5D4C 44813800 */  mtc1       $at, $f7
/* B1150 800D5D50 00000000 */  nop
/* B1154 800D5D54 46262203 */  div.d      $f8, $f4, $f6
/* B1158 800D5D58 46285102 */  mul.d      $f4, $f10, $f8
/* B115C 800D5D5C 46202320 */  cvt.s.d    $f12, $f4
/* B1160 800D5D60 0C036C30 */  jal        func_800DB0C0
/* B1164 800D5D64 E7AC0044 */   swc1      $f12, 0x44($sp)
/* B1168 800D5D68 E7A00048 */  swc1       $f0, 0x48($sp)
/* B116C 800D5D6C 0C036B60 */  jal        func_800DAD80
/* B1170 800D5D70 C7AC0044 */   lwc1      $f12, 0x44($sp)
/* B1174 800D5D74 C7A60048 */  lwc1       $f6, 0x48($sp)
/* B1178 800D5D78 C7AA00E0 */  lwc1       $f10, 0xe0($sp)
/* B117C 800D5D7C C7A400D8 */  lwc1       $f4, 0xd8($sp)
/* B1180 800D5D80 C7AC0044 */  lwc1       $f12, 0x44($sp)
/* B1184 800D5D84 460A3202 */  mul.s      $f8, $f6, $f10
/* B1188 800D5D88 00000000 */  nop
/* B118C 800D5D8C 46040182 */  mul.s      $f6, $f0, $f4
/* B1190 800D5D90 46064281 */  sub.s      $f10, $f8, $f6
/* B1194 800D5D94 0C036B60 */  jal        func_800DAD80
/* B1198 800D5D98 E7AA00D4 */   swc1      $f10, 0xd4($sp)
/* B119C 800D5D9C E7A00048 */  swc1       $f0, 0x48($sp)
/* B11A0 800D5DA0 0C036C30 */  jal        func_800DB0C0
/* B11A4 800D5DA4 C7AC0044 */   lwc1      $f12, 0x44($sp)
/* B11A8 800D5DA8 C7A40048 */  lwc1       $f4, 0x48($sp)
/* B11AC 800D5DAC C7A800E0 */  lwc1       $f8, 0xe0($sp)
/* B11B0 800D5DB0 C7AA00D8 */  lwc1       $f10, 0xd8($sp)
/* B11B4 800D5DB4 27A40150 */  addiu      $a0, $sp, 0x150
/* B11B8 800D5DB8 46082182 */  mul.s      $f6, $f4, $f8
/* B11BC 800D5DBC 00000000 */  nop
/* B11C0 800D5DC0 460A0102 */  mul.s      $f4, $f0, $f10
/* B11C4 800D5DC4 46062300 */  add.s      $f12, $f4, $f6
/* B11C8 800D5DC8 44802000 */  mtc1       $zero, $f4
/* B11CC 800D5DCC C7A600D4 */  lwc1       $f6, 0xd4($sp)
/* B11D0 800D5DD0 460A6401 */  sub.s      $f16, $f12, $f10
/* B11D4 800D5DD4 E7A400D0 */  swc1       $f4, 0xd0($sp)
/* B11D8 800D5DD8 44802000 */  mtc1       $zero, $f4
/* B11DC 800D5DDC 46083481 */  sub.s      $f18, $f6, $f8
/* B11E0 800D5DE0 E7B00150 */  swc1       $f16, 0x150($sp)
/* B11E4 800D5DE4 E7AC00CC */  swc1       $f12, 0xcc($sp)
/* B11E8 800D5DE8 E7A40154 */  swc1       $f4, 0x154($sp)
/* B11EC 800D5DEC 0C03606C */  jal        func_800D81B0
/* B11F0 800D5DF0 E7B20158 */   swc1      $f18, 0x158($sp)
/* B11F4 800D5DF4 46000386 */  mov.s      $f14, $f0
.L800D5DF8:
/* B11F8 800D5DF8 3C018011 */  lui        $at, %hi(D_80108FD8)
/* B11FC 800D5DFC C42A8FD8 */  lwc1       $f10, %lo(D_80108FD8)($at)
/* B1200 800D5E00 3C014024 */  lui        $at, 0x4024
/* B1204 800D5E04 44814800 */  mtc1       $at, $f9
/* B1208 800D5E08 44804000 */  mtc1       $zero, $f8
/* B120C 800D5E0C 460051A1 */  cvt.d.s    $f6, $f10
/* B1210 800D5E10 46000121 */  cvt.d.s    $f4, $f0
/* B1214 800D5E14 46283080 */  add.d      $f2, $f6, $f8
/* B1218 800D5E18 3C014069 */  lui        $at, 0x4069
/* B121C 800D5E1C 44815800 */  mtc1       $at, $f11
/* B1220 800D5E20 44805000 */  mtc1       $zero, $f10
/* B1224 800D5E24 4624103C */  c.lt.d     $f2, $f4
/* B1228 800D5E28 C7A80150 */  lwc1       $f8, 0x150($sp)
/* B122C 800D5E2C 45020003 */  bc1fl      .L800D5E3C
/* B1230 800D5E30 460071A1 */   cvt.d.s   $f6, $f14
/* B1234 800D5E34 462013A0 */  cvt.s.d    $f14, $f2
/* B1238 800D5E38 460071A1 */  cvt.d.s    $f6, $f14
.L800D5E3C:
/* B123C 800D5E3C 4626503C */  c.lt.d     $f10, $f6
/* B1240 800D5E40 00000000 */  nop
/* B1244 800D5E44 45000003 */  bc1f       .L800D5E54
/* B1248 800D5E48 3C014348 */   lui       $at, 0x4348
/* B124C 800D5E4C 44817000 */  mtc1       $at, $f14
/* B1250 800D5E50 00000000 */  nop
.L800D5E54:
/* B1254 800D5E54 460E4102 */  mul.s      $f4, $f8, $f14
/* B1258 800D5E58 C7AA0154 */  lwc1       $f10, 0x154($sp)
/* B125C 800D5E5C C7A80158 */  lwc1       $f8, 0x158($sp)
/* B1260 800D5E60 27B80150 */  addiu      $t8, $sp, 0x150
/* B1264 800D5E64 460E5182 */  mul.s      $f6, $f10, $f14
/* B1268 800D5E68 3C0C8011 */  lui        $t4, %hi(D_80108FD0)
/* B126C 800D5E6C 8D8C8FD0 */  lw         $t4, %lo(D_80108FD0)($t4)
/* B1270 800D5E70 E7A40150 */  swc1       $f4, 0x150($sp)
/* B1274 800D5E74 460E4102 */  mul.s      $f4, $f8, $f14
/* B1278 800D5E78 000CC880 */  sll        $t9, $t4, 2
/* B127C 800D5E7C 3C0D8025 */  lui        $t5, %hi(D_802489C8)
/* B1280 800D5E80 E7A60154 */  swc1       $f6, 0x154($sp)
/* B1284 800D5E84 032CC823 */  subu       $t9, $t9, $t4
/* B1288 800D5E88 0019C880 */  sll        $t9, $t9, 2
/* B128C 800D5E8C 25AD89C8 */  addiu      $t5, $t5, %lo(D_802489C8)
/* B1290 800D5E90 E7A40158 */  swc1       $f4, 0x158($sp)
/* B1294 800D5E94 8F010000 */  lw         $at, ($t8)
/* B1298 800D5E98 032D5821 */  addu       $t3, $t9, $t5
/* B129C 800D5E9C 27A40144 */  addiu      $a0, $sp, 0x144
/* B12A0 800D5EA0 AFA10004 */  sw         $at, 4($sp)
/* B12A4 800D5EA4 8F060004 */  lw         $a2, 4($t8)
/* B12A8 800D5EA8 8FA50004 */  lw         $a1, 4($sp)
/* B12AC 800D5EAC AFA60008 */  sw         $a2, 8($sp)
/* B12B0 800D5EB0 8F010008 */  lw         $at, 8($t8)
/* B12B4 800D5EB4 AFA1000C */  sw         $at, 0xc($sp)
/* B12B8 800D5EB8 8D610000 */  lw         $at, ($t3)
/* B12BC 800D5EBC 8FA7000C */  lw         $a3, 0xc($sp)
/* B12C0 800D5EC0 AFA10010 */  sw         $at, 0x10($sp)
/* B12C4 800D5EC4 8D6E0004 */  lw         $t6, 4($t3)
/* B12C8 800D5EC8 AFAE0014 */  sw         $t6, 0x14($sp)
/* B12CC 800D5ECC 8D610008 */  lw         $at, 8($t3)
/* B12D0 800D5ED0 AFA10018 */  sw         $at, 0x18($sp)
/* B12D4 800D5ED4 3C013F00 */  lui        $at, 0x3f00
/* B12D8 800D5ED8 44815000 */  mtc1       $at, $f10
/* B12DC 800D5EDC 0C036091 */  jal        func_800D8244
/* B12E0 800D5EE0 E7AA001C */   swc1      $f10, 0x1c($sp)
/* B12E4 800D5EE4 C7A6017C */  lwc1       $f6, 0x17c($sp)
/* B12E8 800D5EE8 C7A80144 */  lwc1       $f8, 0x144($sp)
/* B12EC 800D5EEC C7AA0180 */  lwc1       $f10, 0x180($sp)
/* B12F0 800D5EF0 8FB8011C */  lw         $t8, 0x11c($sp)
/* B12F4 800D5EF4 46083100 */  add.s      $f4, $f6, $f8
/* B12F8 800D5EF8 C7A60148 */  lwc1       $f6, 0x148($sp)
/* B12FC 800D5EFC 27AA017C */  addiu      $t2, $sp, 0x17c
/* B1300 800D5F00 46065200 */  add.s      $f8, $f10, $f6
/* B1304 800D5F04 E7A40170 */  swc1       $f4, 0x170($sp)
/* B1308 800D5F08 C7A40184 */  lwc1       $f4, 0x184($sp)
/* B130C 800D5F0C C7AA014C */  lwc1       $f10, 0x14c($sp)
/* B1310 800D5F10 E7A80174 */  swc1       $f8, 0x174($sp)
/* B1314 800D5F14 460A2180 */  add.s      $f6, $f4, $f10
/* B1318 800D5F18 17000033 */  bnez       $t8, .L800D5FE8
/* B131C 800D5F1C E7A60178 */   swc1      $f6, 0x178($sp)
/* B1320 800D5F20 8D410000 */  lw         $at, ($t2)
/* B1324 800D5F24 27AD0170 */  addiu      $t5, $sp, 0x170
/* B1328 800D5F28 240E0077 */  addiu      $t6, $zero, 0x77
/* B132C 800D5F2C AFA10000 */  sw         $at, ($sp)
/* B1330 800D5F30 8D450004 */  lw         $a1, 4($t2)
/* B1334 800D5F34 24180001 */  addiu      $t8, $zero, 1
/* B1338 800D5F38 240C0001 */  addiu      $t4, $zero, 1
/* B133C 800D5F3C AFA50004 */  sw         $a1, 4($sp)
/* B1340 800D5F40 8D410008 */  lw         $at, 8($t2)
/* B1344 800D5F44 8FA40000 */  lw         $a0, ($sp)
/* B1348 800D5F48 AFA10008 */  sw         $at, 8($sp)
/* B134C 800D5F4C 8DA10000 */  lw         $at, ($t5)
/* B1350 800D5F50 8FA60008 */  lw         $a2, 8($sp)
/* B1354 800D5F54 AFA1000C */  sw         $at, 0xc($sp)
/* B1358 800D5F58 8DAB0004 */  lw         $t3, 4($t5)
/* B135C 800D5F5C 8FA7000C */  lw         $a3, 0xc($sp)
/* B1360 800D5F60 AFAB0010 */  sw         $t3, 0x10($sp)
/* B1364 800D5F64 8DA10008 */  lw         $at, 8($t5)
/* B1368 800D5F68 AFAC0020 */  sw         $t4, 0x20($sp)
/* B136C 800D5F6C AFB8001C */  sw         $t8, 0x1c($sp)
/* B1370 800D5F70 AFAE0018 */  sw         $t6, 0x18($sp)
/* B1374 800D5F74 0C032A3E */  jal        func_800CA8F8
/* B1378 800D5F78 AFA10014 */   sw        $at, 0x14($sp)
/* B137C 800D5F7C 1040001A */  beqz       $v0, .L800D5FE8
/* B1380 800D5F80 27A40144 */   addiu     $a0, $sp, 0x144
/* B1384 800D5F84 0C03606C */  jal        func_800D81B0
/* B1388 800D5F88 AFA200AC */   sw        $v0, 0xac($sp)
/* B138C 800D5F8C C7A20160 */  lwc1       $f2, 0x160($sp)
/* B1390 800D5F90 C7A80144 */  lwc1       $f8, 0x144($sp)
/* B1394 800D5F94 C7AA0148 */  lwc1       $f10, 0x148($sp)
/* B1398 800D5F98 8FA300AC */  lw         $v1, 0xac($sp)
/* B139C 800D5F9C 46024102 */  mul.s      $f4, $f8, $f2
/* B13A0 800D5FA0 C7A8014C */  lwc1       $f8, 0x14c($sp)
/* B13A4 800D5FA4 240A0001 */  addiu      $t2, $zero, 1
/* B13A8 800D5FA8 46025182 */  mul.s      $f6, $f10, $f2
/* B13AC 800D5FAC 00000000 */  nop
/* B13B0 800D5FB0 46024282 */  mul.s      $f10, $f8, $f2
/* B13B4 800D5FB4 E7A40144 */  swc1       $f4, 0x144($sp)
/* B13B8 800D5FB8 E7A60148 */  swc1       $f6, 0x148($sp)
/* B13BC 800D5FBC E7AA014C */  swc1       $f10, 0x14c($sp)
/* B13C0 800D5FC0 C4680094 */  lwc1       $f8, 0x94($v1)
/* B13C4 800D5FC4 46044201 */  sub.s      $f8, $f8, $f4
/* B13C8 800D5FC8 E7A80170 */  swc1       $f8, 0x170($sp)
/* B13CC 800D5FCC C4640098 */  lwc1       $f4, 0x98($v1)
/* B13D0 800D5FD0 46062201 */  sub.s      $f8, $f4, $f6
/* B13D4 800D5FD4 E7A80174 */  swc1       $f8, 0x174($sp)
/* B13D8 800D5FD8 C464009C */  lwc1       $f4, 0x9c($v1)
/* B13DC 800D5FDC AFAA0110 */  sw         $t2, 0x110($sp)
/* B13E0 800D5FE0 460A2181 */  sub.s      $f6, $f4, $f10
/* B13E4 800D5FE4 E7A60178 */  swc1       $f6, 0x178($sp)
.L800D5FE8:
/* B13E8 800D5FE8 C7A80170 */  lwc1       $f8, 0x170($sp)
/* B13EC 800D5FEC C7A40164 */  lwc1       $f4, 0x164($sp)
/* B13F0 800D5FF0 C7A60174 */  lwc1       $f6, 0x174($sp)
/* B13F4 800D5FF4 27B90144 */  addiu      $t9, $sp, 0x144
/* B13F8 800D5FF8 46044281 */  sub.s      $f10, $f8, $f4
/* B13FC 800D5FFC C7A80168 */  lwc1       $f8, 0x168($sp)
/* B1400 800D6000 27AB00A4 */  addiu      $t3, $sp, 0xa4
/* B1404 800D6004 27AE00A0 */  addiu      $t6, $sp, 0xa0
/* B1408 800D6008 46083101 */  sub.s      $f4, $f6, $f8
/* B140C 800D600C E7AA0144 */  swc1       $f10, 0x144($sp)
/* B1410 800D6010 C7AA0178 */  lwc1       $f10, 0x178($sp)
/* B1414 800D6014 C7A6016C */  lwc1       $f6, 0x16c($sp)
/* B1418 800D6018 E7A40148 */  swc1       $f4, 0x148($sp)
/* B141C 800D601C 27A700A8 */  addiu      $a3, $sp, 0xa8
/* B1420 800D6020 46065201 */  sub.s      $f8, $f10, $f6
/* B1424 800D6024 E7A8014C */  swc1       $f8, 0x14c($sp)
/* B1428 800D6028 8F210000 */  lw         $at, ($t9)
/* B142C 800D602C AFA10000 */  sw         $at, ($sp)
/* B1430 800D6030 8F250004 */  lw         $a1, 4($t9)
/* B1434 800D6034 8FA40000 */  lw         $a0, ($sp)
/* B1438 800D6038 AFA50004 */  sw         $a1, 4($sp)
/* B143C 800D603C 8F260008 */  lw         $a2, 8($t9)
/* B1440 800D6040 AFAE0014 */  sw         $t6, 0x14($sp)
/* B1444 800D6044 AFAB0010 */  sw         $t3, 0x10($sp)
/* B1448 800D6048 0C0360CE */  jal        func_800D8338
/* B144C 800D604C AFA60008 */   sw        $a2, 8($sp)
/* B1450 800D6050 C7A40194 */  lwc1       $f4, 0x194($sp)
/* B1454 800D6054 C7AA0164 */  lwc1       $f10, 0x164($sp)
/* B1458 800D6058 C7A80198 */  lwc1       $f8, 0x198($sp)
/* B145C 800D605C 27B80144 */  addiu      $t8, $sp, 0x144
/* B1460 800D6060 460A2181 */  sub.s      $f6, $f4, $f10
/* B1464 800D6064 C7A40168 */  lwc1       $f4, 0x168($sp)
/* B1468 800D6068 27AF0098 */  addiu      $t7, $sp, 0x98
/* B146C 800D606C 27B90094 */  addiu      $t9, $sp, 0x94
/* B1470 800D6070 46044281 */  sub.s      $f10, $f8, $f4
/* B1474 800D6074 E7A60144 */  swc1       $f6, 0x144($sp)
/* B1478 800D6078 C7A6019C */  lwc1       $f6, 0x19c($sp)
/* B147C 800D607C C7A8016C */  lwc1       $f8, 0x16c($sp)
/* B1480 800D6080 E7AA0148 */  swc1       $f10, 0x148($sp)
/* B1484 800D6084 27A7009C */  addiu      $a3, $sp, 0x9c
/* B1488 800D6088 46083101 */  sub.s      $f4, $f6, $f8
/* B148C 800D608C E7A4014C */  swc1       $f4, 0x14c($sp)
/* B1490 800D6090 8F010000 */  lw         $at, ($t8)
/* B1494 800D6094 AFA10000 */  sw         $at, ($sp)
/* B1498 800D6098 8F050004 */  lw         $a1, 4($t8)
/* B149C 800D609C 8FA40000 */  lw         $a0, ($sp)
/* B14A0 800D60A0 AFA50004 */  sw         $a1, 4($sp)
/* B14A4 800D60A4 8F060008 */  lw         $a2, 8($t8)
/* B14A8 800D60A8 AFB90014 */  sw         $t9, 0x14($sp)
/* B14AC 800D60AC AFAF0010 */  sw         $t7, 0x10($sp)
/* B14B0 800D60B0 0C0360CE */  jal        func_800D8338
/* B14B4 800D60B4 AFA60008 */   sw        $a2, 8($sp)
/* B14B8 800D60B8 C7AE00A4 */  lwc1       $f14, 0xa4($sp)
/* B14BC 800D60BC 3C018011 */  lui        $at, %hi(D_80110688)
/* B14C0 800D60C0 D42A0688 */  ldc1       $f10, %lo(D_80110688)($at)
/* B14C4 800D60C4 460071A1 */  cvt.d.s    $f6, $f14
/* B14C8 800D60C8 3C028011 */  lui        $v0, 0x8011
/* B14CC 800D60CC 4626503C */  c.lt.d     $f10, $f6
/* B14D0 800D60D0 00000000 */  nop
/* B14D4 800D60D4 45000009 */  bc1f       .L800D60FC
/* B14D8 800D60D8 00000000 */   nop
/* B14DC 800D60DC 44800000 */  mtc1       $zero, $f0
/* B14E0 800D60E0 3C018011 */  lui        $at, %hi(D_80109004)
/* B14E4 800D60E4 E4209004 */  swc1       $f0, %lo(D_80109004)($at)
/* B14E8 800D60E8 3C018011 */  lui        $at, %hi(D_80109008)
/* B14EC 800D60EC E4209008 */  swc1       $f0, %lo(D_80109008)($at)
/* B14F0 800D60F0 3C018011 */  lui        $at, %hi(D_80109000)
/* B14F4 800D60F4 100000F1 */  b          .L800D64BC
/* B14F8 800D60F8 AC209000 */   sw        $zero, %lo(D_80109000)($at)
.L800D60FC:
/* B14FC 800D60FC 8C429000 */  lw         $v0, -0x7000($v0)
/* B1500 800D6100 AFA0008C */  sw         $zero, 0x8c($sp)
/* B1504 800D6104 AFA00114 */  sw         $zero, 0x114($sp)
/* B1508 800D6108 1440006F */  bnez       $v0, .L800D62C8
/* B150C 800D610C C7B20144 */   lwc1      $f18, 0x144($sp)
/* B1510 800D6110 C7B0014C */  lwc1       $f16, 0x14c($sp)
/* B1514 800D6114 44804000 */  mtc1       $zero, $f8
/* B1518 800D6118 46009487 */  neg.s      $f18, $f18
/* B151C 800D611C 27A40150 */  addiu      $a0, $sp, 0x150
/* B1520 800D6120 E7B20158 */  swc1       $f18, 0x158($sp)
/* B1524 800D6124 E7B00150 */  swc1       $f16, 0x150($sp)
/* B1528 800D6128 0C03606C */  jal        func_800D81B0
/* B152C 800D612C E7A80154 */   swc1      $f8, 0x154($sp)
/* B1530 800D6130 3C0143FA */  lui        $at, 0x43fa
/* B1534 800D6134 44811000 */  mtc1       $at, $f2
/* B1538 800D6138 C7B00150 */  lwc1       $f16, 0x150($sp)
/* B153C 800D613C C7AC0154 */  lwc1       $f12, 0x154($sp)
/* B1540 800D6140 C7A40170 */  lwc1       $f4, 0x170($sp)
/* B1544 800D6144 46028402 */  mul.s      $f16, $f16, $f2
/* B1548 800D6148 C7B20158 */  lwc1       $f18, 0x158($sp)
/* B154C 800D614C C7A60174 */  lwc1       $f6, 0x174($sp)
/* B1550 800D6150 46026302 */  mul.s      $f12, $f12, $f2
/* B1554 800D6154 27AD0170 */  addiu      $t5, $sp, 0x170
/* B1558 800D6158 27AC0078 */  addiu      $t4, $sp, 0x78
/* B155C 800D615C 46029482 */  mul.s      $f18, $f18, $f2
/* B1560 800D6160 240F0077 */  addiu      $t7, $zero, 0x77
/* B1564 800D6164 46102280 */  add.s      $f10, $f4, $f16
/* B1568 800D6168 24190001 */  addiu      $t9, $zero, 1
/* B156C 800D616C 240B0001 */  addiu      $t3, $zero, 1
/* B1570 800D6170 460C3200 */  add.s      $f8, $f6, $f12
/* B1574 800D6174 E7AA0078 */  swc1       $f10, 0x78($sp)
/* B1578 800D6178 C7AA0178 */  lwc1       $f10, 0x178($sp)
/* B157C 800D617C E7A8007C */  swc1       $f8, 0x7c($sp)
/* B1580 800D6180 46125200 */  add.s      $f8, $f10, $f18
/* B1584 800D6184 E7A80080 */  swc1       $f8, 0x80($sp)
/* B1588 800D6188 46102201 */  sub.s      $f8, $f4, $f16
/* B158C 800D618C 460C3101 */  sub.s      $f4, $f6, $f12
/* B1590 800D6190 E7A8006C */  swc1       $f8, 0x6c($sp)
/* B1594 800D6194 46125201 */  sub.s      $f8, $f10, $f18
/* B1598 800D6198 E7A40070 */  swc1       $f4, 0x70($sp)
/* B159C 800D619C E7A80074 */  swc1       $f8, 0x74($sp)
/* B15A0 800D61A0 8DA10000 */  lw         $at, ($t5)
/* B15A4 800D61A4 AFA10000 */  sw         $at, ($sp)
/* B15A8 800D61A8 8DA50004 */  lw         $a1, 4($t5)
/* B15AC 800D61AC 8FA40000 */  lw         $a0, ($sp)
/* B15B0 800D61B0 AFA50004 */  sw         $a1, 4($sp)
/* B15B4 800D61B4 8DA10008 */  lw         $at, 8($t5)
/* B15B8 800D61B8 AFA10008 */  sw         $at, 8($sp)
/* B15BC 800D61BC 8D810000 */  lw         $at, ($t4)
/* B15C0 800D61C0 8FA60008 */  lw         $a2, 8($sp)
/* B15C4 800D61C4 AFA1000C */  sw         $at, 0xc($sp)
/* B15C8 800D61C8 8D8A0004 */  lw         $t2, 4($t4)
/* B15CC 800D61CC 8FA7000C */  lw         $a3, 0xc($sp)
/* B15D0 800D61D0 AFAA0010 */  sw         $t2, 0x10($sp)
/* B15D4 800D61D4 8D810008 */  lw         $at, 8($t4)
/* B15D8 800D61D8 E7B20158 */  swc1       $f18, 0x158($sp)
/* B15DC 800D61DC E7B00150 */  swc1       $f16, 0x150($sp)
/* B15E0 800D61E0 E7AC0154 */  swc1       $f12, 0x154($sp)
/* B15E4 800D61E4 AFAB0020 */  sw         $t3, 0x20($sp)
/* B15E8 800D61E8 AFB9001C */  sw         $t9, 0x1c($sp)
/* B15EC 800D61EC AFAF0018 */  sw         $t7, 0x18($sp)
/* B15F0 800D61F0 0C032A3E */  jal        func_800CA8F8
/* B15F4 800D61F4 AFA10014 */   sw        $at, 0x14($sp)
/* B15F8 800D61F8 27AD0170 */  addiu      $t5, $sp, 0x170
/* B15FC 800D61FC 8DA10000 */  lw         $at, ($t5)
/* B1600 800D6200 27AC006C */  addiu      $t4, $sp, 0x6c
/* B1604 800D6204 24190077 */  addiu      $t9, $zero, 0x77
/* B1608 800D6208 AFA10000 */  sw         $at, ($sp)
/* B160C 800D620C 8DA50004 */  lw         $a1, 4($t5)
/* B1610 800D6210 240B0001 */  addiu      $t3, $zero, 1
/* B1614 800D6214 240E0001 */  addiu      $t6, $zero, 1
/* B1618 800D6218 AFA50004 */  sw         $a1, 4($sp)
/* B161C 800D621C 8DA10008 */  lw         $at, 8($t5)
/* B1620 800D6220 8FA40000 */  lw         $a0, ($sp)
/* B1624 800D6224 AFA10008 */  sw         $at, 8($sp)
/* B1628 800D6228 8D810000 */  lw         $at, ($t4)
/* B162C 800D622C 8FA60008 */  lw         $a2, 8($sp)
/* B1630 800D6230 AFA1000C */  sw         $at, 0xc($sp)
/* B1634 800D6234 8D8F0004 */  lw         $t7, 4($t4)
/* B1638 800D6238 8FA7000C */  lw         $a3, 0xc($sp)
/* B163C 800D623C AFAF0010 */  sw         $t7, 0x10($sp)
/* B1640 800D6240 8D810008 */  lw         $at, 8($t4)
/* B1644 800D6244 AFA20088 */  sw         $v0, 0x88($sp)
/* B1648 800D6248 AFAE0020 */  sw         $t6, 0x20($sp)
/* B164C 800D624C AFAB001C */  sw         $t3, 0x1c($sp)
/* B1650 800D6250 AFB90018 */  sw         $t9, 0x18($sp)
/* B1654 800D6254 0C032A3E */  jal        func_800CA8F8
/* B1658 800D6258 AFA10014 */   sw        $at, 0x14($sp)
/* B165C 800D625C 8FA30088 */  lw         $v1, 0x88($sp)
/* B1660 800D6260 44802000 */  mtc1       $zero, $f4
/* B1664 800D6264 10600006 */  beqz       $v1, .L800D6280
/* B1668 800D6268 00000000 */   nop
/* B166C 800D626C 10400004 */  beqz       $v0, .L800D6280
/* B1670 800D6270 240D0001 */   addiu     $t5, $zero, 1
/* B1674 800D6274 44800000 */  mtc1       $zero, $f0
/* B1678 800D6278 10000009 */  b          .L800D62A0
/* B167C 800D627C AFAD008C */   sw        $t5, 0x8c($sp)
.L800D6280:
/* B1680 800D6280 10600005 */  beqz       $v1, .L800D6298
/* B1684 800D6284 3C013F80 */   lui       $at, 0x3f80
/* B1688 800D6288 3C01BF80 */  lui        $at, 0xbf80
/* B168C 800D628C 44810000 */  mtc1       $at, $f0
/* B1690 800D6290 10000004 */  b          .L800D62A4
/* B1694 800D6294 3C013FE0 */   lui       $at, 0x3fe0
.L800D6298:
/* B1698 800D6298 44810000 */  mtc1       $at, $f0
/* B169C 800D629C 00000000 */  nop
.L800D62A0:
/* B16A0 800D62A0 3C013FE0 */  lui        $at, 0x3fe0
.L800D62A4:
/* B16A4 800D62A4 44812800 */  mtc1       $at, $f5
/* B16A8 800D62A8 460001A1 */  cvt.d.s    $f6, $f0
/* B16AC 800D62AC 3C018011 */  lui        $at, 0x8011
/* B16B0 800D62B0 46243282 */  mul.d      $f10, $f6, $f4
/* B16B4 800D62B4 3C028011 */  lui        $v0, %hi(D_80109000)
/* B16B8 800D62B8 8C429000 */  lw         $v0, %lo(D_80109000)($v0)
/* B16BC 800D62BC C7AE00A4 */  lwc1       $f14, 0xa4($sp)
/* B16C0 800D62C0 46205220 */  cvt.s.d    $f8, $f10
/* B16C4 800D62C4 E4289008 */  swc1       $f8, -0x6ff8($at)
.L800D62C8:
/* B16C8 800D62C8 2841000A */  slti       $at, $v0, 0xa
/* B16CC 800D62CC 1020000B */  beqz       $at, .L800D62FC
/* B16D0 800D62D0 27A40144 */   addiu     $a0, $sp, 0x144
/* B16D4 800D62D4 3C018011 */  lui        $at, %hi(D_80109004)
/* B16D8 800D62D8 C4269004 */  lwc1       $f6, %lo(D_80109004)($at)
/* B16DC 800D62DC 3C018011 */  lui        $at, %hi(D_80109008)
/* B16E0 800D62E0 C4249008 */  lwc1       $f4, %lo(D_80109008)($at)
/* B16E4 800D62E4 3C018011 */  lui        $at, %hi(D_80109004)
/* B16E8 800D62E8 24420001 */  addiu      $v0, $v0, 1
/* B16EC 800D62EC 46043280 */  add.s      $f10, $f6, $f4
/* B16F0 800D62F0 E42A9004 */  swc1       $f10, %lo(D_80109004)($at)
/* B16F4 800D62F4 3C018011 */  lui        $at, %hi(D_80109000)
/* B16F8 800D62F8 AC229000 */  sw         $v0, %lo(D_80109000)($at)
.L800D62FC:
/* B16FC 800D62FC 8FB8008C */  lw         $t8, 0x8c($sp)
/* B1700 800D6300 C7B00098 */  lwc1       $f16, 0x98($sp)
/* B1704 800D6304 3C018011 */  lui        $at, 0x8011
/* B1708 800D6308 13000045 */  beqz       $t8, .L800D6420
/* B170C 800D630C C7A000A8 */   lwc1      $f0, 0xa8($sp)
/* B1710 800D6310 C7AC00A0 */  lwc1       $f12, 0xa0($sp)
/* B1714 800D6314 3C018011 */  lui        $at, %hi(D_80110690)
/* B1718 800D6318 D4260690 */  ldc1       $f6, %lo(D_80110690)($at)
/* B171C 800D631C 46006221 */  cvt.d.s    $f8, $f12
/* B1720 800D6320 C7AA009C */  lwc1       $f10, 0x9c($sp)
/* B1724 800D6324 46264100 */  add.d      $f4, $f8, $f6
/* B1728 800D6328 3C013FE0 */  lui        $at, 0x3fe0
/* B172C 800D632C 44813800 */  mtc1       $at, $f7
/* B1730 800D6330 44803000 */  mtc1       $zero, $f6
/* B1734 800D6334 46005221 */  cvt.d.s    $f8, $f10
/* B1738 800D6338 46202320 */  cvt.s.d    $f12, $f4
/* B173C 800D633C 46264102 */  mul.d      $f4, $f8, $f6
/* B1740 800D6340 C7AE0098 */  lwc1       $f14, 0x98($sp)
/* B1744 800D6344 27A40144 */  addiu      $a0, $sp, 0x144
/* B1748 800D6348 44076000 */  mfc1       $a3, $f12
/* B174C 800D634C 44067000 */  mfc1       $a2, $f14
/* B1750 800D6350 E7AC00A0 */  swc1       $f12, 0xa0($sp)
/* B1754 800D6354 E7AE00A4 */  swc1       $f14, 0xa4($sp)
/* B1758 800D6358 46202020 */  cvt.s.d    $f0, $f4
/* B175C 800D635C 44050000 */  mfc1       $a1, $f0
/* B1760 800D6360 0C03611A */  jal        func_800D8468
/* B1764 800D6364 E7A000A8 */   swc1      $f0, 0xa8($sp)
/* B1768 800D6368 C7AA0164 */  lwc1       $f10, 0x164($sp)
/* B176C 800D636C C7A80144 */  lwc1       $f8, 0x144($sp)
/* B1770 800D6370 C7A40168 */  lwc1       $f4, 0x168($sp)
/* B1774 800D6374 27AA0164 */  addiu      $t2, $sp, 0x164
/* B1778 800D6378 46085180 */  add.s      $f6, $f10, $f8
/* B177C 800D637C C7AA0148 */  lwc1       $f10, 0x148($sp)
/* B1780 800D6380 27B90170 */  addiu      $t9, $sp, 0x170
/* B1784 800D6384 240D0077 */  addiu      $t5, $zero, 0x77
/* B1788 800D6388 460A2200 */  add.s      $f8, $f4, $f10
/* B178C 800D638C E7A60170 */  swc1       $f6, 0x170($sp)
/* B1790 800D6390 C7A6016C */  lwc1       $f6, 0x16c($sp)
/* B1794 800D6394 C7A4014C */  lwc1       $f4, 0x14c($sp)
/* B1798 800D6398 E7A80174 */  swc1       $f8, 0x174($sp)
/* B179C 800D639C 24180001 */  addiu      $t8, $zero, 1
/* B17A0 800D63A0 46043280 */  add.s      $f10, $f6, $f4
/* B17A4 800D63A4 240C0001 */  addiu      $t4, $zero, 1
/* B17A8 800D63A8 E7AA0178 */  swc1       $f10, 0x178($sp)
/* B17AC 800D63AC 8D410000 */  lw         $at, ($t2)
/* B17B0 800D63B0 AFA10000 */  sw         $at, ($sp)
/* B17B4 800D63B4 8D450004 */  lw         $a1, 4($t2)
/* B17B8 800D63B8 8FA40000 */  lw         $a0, ($sp)
/* B17BC 800D63BC AFA50004 */  sw         $a1, 4($sp)
/* B17C0 800D63C0 8D410008 */  lw         $at, 8($t2)
/* B17C4 800D63C4 AFA10008 */  sw         $at, 8($sp)
/* B17C8 800D63C8 8F210000 */  lw         $at, ($t9)
/* B17CC 800D63CC 8FA60008 */  lw         $a2, 8($sp)
/* B17D0 800D63D0 AFA1000C */  sw         $at, 0xc($sp)
/* B17D4 800D63D4 8F2E0004 */  lw         $t6, 4($t9)
/* B17D8 800D63D8 8FA7000C */  lw         $a3, 0xc($sp)
/* B17DC 800D63DC AFAE0010 */  sw         $t6, 0x10($sp)
/* B17E0 800D63E0 8F210008 */  lw         $at, 8($t9)
/* B17E4 800D63E4 AFAC0020 */  sw         $t4, 0x20($sp)
/* B17E8 800D63E8 AFB8001C */  sw         $t8, 0x1c($sp)
/* B17EC 800D63EC AFAD0018 */  sw         $t5, 0x18($sp)
/* B17F0 800D63F0 0C032A3E */  jal        func_800CA8F8
/* B17F4 800D63F4 AFA10014 */   sw        $at, 0x14($sp)
/* B17F8 800D63F8 50400031 */  beql       $v0, $zero, .L800D64C0
/* B17FC 800D63FC 8FB9011C */   lw        $t9, 0x11c($sp)
/* B1800 800D6400 8C410094 */  lw         $at, 0x94($v0)
/* B1804 800D6404 27AA0170 */  addiu      $t2, $sp, 0x170
/* B1808 800D6408 AD410000 */  sw         $at, ($t2)
/* B180C 800D640C 8C4B0098 */  lw         $t3, 0x98($v0)
/* B1810 800D6410 AD4B0004 */  sw         $t3, 4($t2)
/* B1814 800D6414 8C41009C */  lw         $at, 0x9c($v0)
/* B1818 800D6418 10000028 */  b          .L800D64BC
/* B181C 800D641C AD410008 */   sw        $at, 8($t2)
.L800D6420:
/* B1820 800D6420 460E8181 */  sub.s      $f6, $f16, $f14
/* B1824 800D6424 C4289004 */  lwc1       $f8, -0x6ffc($at)
/* B1828 800D6428 C7AC00A0 */  lwc1       $f12, 0xa0($sp)
/* B182C 800D642C 3C018011 */  lui        $at, %hi(D_80110698)
/* B1830 800D6430 D42A0698 */  ldc1       $f10, %lo(D_80110698)($at)
/* B1834 800D6434 46003121 */  cvt.d.s    $f4, $f6
/* B1838 800D6438 46086300 */  add.s      $f12, $f12, $f8
/* B183C 800D643C 462A2202 */  mul.d      $f8, $f4, $f10
/* B1840 800D6440 3C014014 */  lui        $at, 0x4014
/* B1844 800D6444 44813800 */  mtc1       $at, $f7
/* B1848 800D6448 44803000 */  mtc1       $zero, $f6
/* B184C 800D644C 3C0140A0 */  lui        $at, 0x40a0
/* B1850 800D6450 462040A0 */  cvt.s.d    $f2, $f8
/* B1854 800D6454 46001121 */  cvt.d.s    $f4, $f2
/* B1858 800D6458 4624303C */  c.lt.d     $f6, $f4
/* B185C 800D645C 00000000 */  nop
/* B1860 800D6460 45020004 */  bc1fl      .L800D6474
/* B1864 800D6464 46027380 */   add.s     $f14, $f14, $f2
/* B1868 800D6468 44811000 */  mtc1       $at, $f2
/* B186C 800D646C 00000000 */  nop
/* B1870 800D6470 46027380 */  add.s      $f14, $f14, $f2
.L800D6474:
/* B1874 800D6474 44050000 */  mfc1       $a1, $f0
/* B1878 800D6478 44076000 */  mfc1       $a3, $f12
/* B187C 800D647C E7AC00A0 */  swc1       $f12, 0xa0($sp)
/* B1880 800D6480 44067000 */  mfc1       $a2, $f14
/* B1884 800D6484 0C03611A */  jal        func_800D8468
/* B1888 800D6488 E7AE00A4 */   swc1      $f14, 0xa4($sp)
/* B188C 800D648C C7AA0164 */  lwc1       $f10, 0x164($sp)
/* B1890 800D6490 C7A80144 */  lwc1       $f8, 0x144($sp)
/* B1894 800D6494 C7A40168 */  lwc1       $f4, 0x168($sp)
/* B1898 800D6498 46085180 */  add.s      $f6, $f10, $f8
/* B189C 800D649C C7AA0148 */  lwc1       $f10, 0x148($sp)
/* B18A0 800D64A0 460A2200 */  add.s      $f8, $f4, $f10
/* B18A4 800D64A4 E7A60170 */  swc1       $f6, 0x170($sp)
/* B18A8 800D64A8 C7A6016C */  lwc1       $f6, 0x16c($sp)
/* B18AC 800D64AC C7A4014C */  lwc1       $f4, 0x14c($sp)
/* B18B0 800D64B0 E7A80174 */  swc1       $f8, 0x174($sp)
/* B18B4 800D64B4 46043280 */  add.s      $f10, $f6, $f4
/* B18B8 800D64B8 E7AA0178 */  swc1       $f10, 0x178($sp)
.L800D64BC:
/* B18BC 800D64BC 8FB9011C */  lw         $t9, 0x11c($sp)
.L800D64C0:
/* B18C0 800D64C0 C7A80170 */  lwc1       $f8, 0x170($sp)
/* B18C4 800D64C4 C7A6017C */  lwc1       $f6, 0x17c($sp)
/* B18C8 800D64C8 17200066 */  bnez       $t9, .L800D6664
/* B18CC 800D64CC C7A40174 */   lwc1      $f4, 0x174($sp)
/* B18D0 800D64D0 C7AA0180 */  lwc1       $f10, 0x180($sp)
/* B18D4 800D64D4 46064401 */  sub.s      $f16, $f8, $f6
/* B18D8 800D64D8 C7A60178 */  lwc1       $f6, 0x178($sp)
/* B18DC 800D64DC 27A40150 */  addiu      $a0, $sp, 0x150
/* B18E0 800D64E0 460A2201 */  sub.s      $f8, $f4, $f10
/* B18E4 800D64E4 C7A40184 */  lwc1       $f4, 0x184($sp)
/* B18E8 800D64E8 E7B00150 */  swc1       $f16, 0x150($sp)
/* B18EC 800D64EC 46043481 */  sub.s      $f18, $f6, $f4
/* B18F0 800D64F0 E7A80154 */  swc1       $f8, 0x154($sp)
/* B18F4 800D64F4 0C03606C */  jal        func_800D81B0
/* B18F8 800D64F8 E7B20158 */   swc1      $f18, 0x158($sp)
/* B18FC 800D64FC 27AE017C */  addiu      $t6, $sp, 0x17c
/* B1900 800D6500 8DC10000 */  lw         $at, ($t6)
/* B1904 800D6504 27AC0170 */  addiu      $t4, $sp, 0x170
/* B1908 800D6508 240B0077 */  addiu      $t3, $zero, 0x77
/* B190C 800D650C AFA10000 */  sw         $at, ($sp)
/* B1910 800D6510 8DC50004 */  lw         $a1, 4($t6)
/* B1914 800D6514 24190001 */  addiu      $t9, $zero, 1
/* B1918 800D6518 240D0001 */  addiu      $t5, $zero, 1
/* B191C 800D651C AFA50004 */  sw         $a1, 4($sp)
/* B1920 800D6520 8DC10008 */  lw         $at, 8($t6)
/* B1924 800D6524 8FA40000 */  lw         $a0, ($sp)
/* B1928 800D6528 AFA10008 */  sw         $at, 8($sp)
/* B192C 800D652C 8D810000 */  lw         $at, ($t4)
/* B1930 800D6530 8FA60008 */  lw         $a2, 8($sp)
/* B1934 800D6534 AFA1000C */  sw         $at, 0xc($sp)
/* B1938 800D6538 8D8A0004 */  lw         $t2, 4($t4)
/* B193C 800D653C 8FA7000C */  lw         $a3, 0xc($sp)
/* B1940 800D6540 AFAA0010 */  sw         $t2, 0x10($sp)
/* B1944 800D6544 8D810008 */  lw         $at, 8($t4)
/* B1948 800D6548 AFAD0020 */  sw         $t5, 0x20($sp)
/* B194C 800D654C AFB9001C */  sw         $t9, 0x1c($sp)
/* B1950 800D6550 AFAB0018 */  sw         $t3, 0x18($sp)
/* B1954 800D6554 0C032A3E */  jal        func_800CA8F8
/* B1958 800D6558 AFA10014 */   sw        $at, 0x14($sp)
/* B195C 800D655C 10400017 */  beqz       $v0, .L800D65BC
/* B1960 800D6560 27B80170 */   addiu     $t8, $sp, 0x170
/* B1964 800D6564 C7A00160 */  lwc1       $f0, 0x160($sp)
/* B1968 800D6568 C7AA0150 */  lwc1       $f10, 0x150($sp)
/* B196C 800D656C C7A60154 */  lwc1       $f6, 0x154($sp)
/* B1970 800D6570 240E0001 */  addiu      $t6, $zero, 1
/* B1974 800D6574 46005202 */  mul.s      $f8, $f10, $f0
/* B1978 800D6578 C7AA0158 */  lwc1       $f10, 0x158($sp)
/* B197C 800D657C 46003102 */  mul.s      $f4, $f6, $f0
/* B1980 800D6580 00000000 */  nop
/* B1984 800D6584 46005182 */  mul.s      $f6, $f10, $f0
/* B1988 800D6588 E7A80150 */  swc1       $f8, 0x150($sp)
/* B198C 800D658C E7A40154 */  swc1       $f4, 0x154($sp)
/* B1990 800D6590 E7A60158 */  swc1       $f6, 0x158($sp)
/* B1994 800D6594 C44A0094 */  lwc1       $f10, 0x94($v0)
/* B1998 800D6598 46085281 */  sub.s      $f10, $f10, $f8
/* B199C 800D659C E7AA0170 */  swc1       $f10, 0x170($sp)
/* B19A0 800D65A0 C4480098 */  lwc1       $f8, 0x98($v0)
/* B19A4 800D65A4 46044281 */  sub.s      $f10, $f8, $f4
/* B19A8 800D65A8 E7AA0174 */  swc1       $f10, 0x174($sp)
/* B19AC 800D65AC C448009C */  lwc1       $f8, 0x9c($v0)
/* B19B0 800D65B0 AFAE0110 */  sw         $t6, 0x110($sp)
/* B19B4 800D65B4 46064101 */  sub.s      $f4, $f8, $f6
/* B19B8 800D65B8 E7A40178 */  swc1       $f4, 0x178($sp)
.L800D65BC:
/* B19BC 800D65BC 8F010000 */  lw         $at, ($t8)
/* B19C0 800D65C0 C7A00160 */  lwc1       $f0, 0x160($sp)
/* B19C4 800D65C4 240A0077 */  addiu      $t2, $zero, 0x77
/* B19C8 800D65C8 AFA10004 */  sw         $at, 4($sp)
/* B19CC 800D65CC 8F060004 */  lw         $a2, 4($t8)
/* B19D0 800D65D0 8FA50004 */  lw         $a1, 4($sp)
/* B19D4 800D65D4 27A40054 */  addiu      $a0, $sp, 0x54
/* B19D8 800D65D8 AFA60008 */  sw         $a2, 8($sp)
/* B19DC 800D65DC 8F070008 */  lw         $a3, 8($t8)
/* B19E0 800D65E0 AFAA0014 */  sw         $t2, 0x14($sp)
/* B19E4 800D65E4 E7A00010 */  swc1       $f0, 0x10($sp)
/* B19E8 800D65E8 0C0329CD */  jal        func_800CA734
/* B19EC 800D65EC AFA7000C */   sw        $a3, 0xc($sp)
/* B19F0 800D65F0 27AB0170 */  addiu      $t3, $sp, 0x170
/* B19F4 800D65F4 8D610000 */  lw         $at, ($t3)
/* B19F8 800D65F8 27AE0054 */  addiu      $t6, $sp, 0x54
/* B19FC 800D65FC AFA10000 */  sw         $at, ($sp)
/* B1A00 800D6600 8D650004 */  lw         $a1, 4($t3)
/* B1A04 800D6604 8FA40000 */  lw         $a0, ($sp)
/* B1A08 800D6608 AFA50004 */  sw         $a1, 4($sp)
/* B1A0C 800D660C 8D610008 */  lw         $at, 8($t3)
/* B1A10 800D6610 AFA10008 */  sw         $at, 8($sp)
/* B1A14 800D6614 8DC10000 */  lw         $at, ($t6)
/* B1A18 800D6618 8FA60008 */  lw         $a2, 8($sp)
/* B1A1C 800D661C AFA1000C */  sw         $at, 0xc($sp)
/* B1A20 800D6620 8DD80004 */  lw         $t8, 4($t6)
/* B1A24 800D6624 8FA7000C */  lw         $a3, 0xc($sp)
/* B1A28 800D6628 AFB80010 */  sw         $t8, 0x10($sp)
/* B1A2C 800D662C 8DC10008 */  lw         $at, 8($t6)
/* B1A30 800D6630 0C03602C */  jal        func_800D80B0
/* B1A34 800D6634 AFA10014 */   sw        $at, 0x14($sp)
/* B1A38 800D6638 14400003 */  bnez       $v0, .L800D6648
/* B1A3C 800D663C 27B90054 */   addiu     $t9, $sp, 0x54
/* B1A40 800D6640 240C0001 */  addiu      $t4, $zero, 1
/* B1A44 800D6644 AFAC0110 */  sw         $t4, 0x110($sp)
.L800D6648:
/* B1A48 800D6648 8F210000 */  lw         $at, ($t9)
/* B1A4C 800D664C 27AA0170 */  addiu      $t2, $sp, 0x170
/* B1A50 800D6650 AD410000 */  sw         $at, ($t2)
/* B1A54 800D6654 8F2F0004 */  lw         $t7, 4($t9)
/* B1A58 800D6658 AD4F0004 */  sw         $t7, 4($t2)
/* B1A5C 800D665C 8F210008 */  lw         $at, 8($t9)
/* B1A60 800D6660 AD410008 */  sw         $at, 8($t2)
.L800D6664:
/* B1A64 800D6664 C7AA0170 */  lwc1       $f10, 0x170($sp)
/* B1A68 800D6668 C7A8017C */  lwc1       $f8, 0x17c($sp)
/* B1A6C 800D666C C7A60174 */  lwc1       $f6, 0x174($sp)
/* B1A70 800D6670 C7A40180 */  lwc1       $f4, 0x180($sp)
/* B1A74 800D6674 46085401 */  sub.s      $f16, $f10, $f8
/* B1A78 800D6678 C7A80184 */  lwc1       $f8, 0x184($sp)
/* B1A7C 800D667C C7AA0178 */  lwc1       $f10, 0x178($sp)
/* B1A80 800D6680 46043001 */  sub.s      $f0, $f6, $f4
/* B1A84 800D6684 46108182 */  mul.s      $f6, $f16, $f16
/* B1A88 800D6688 E7B00150 */  swc1       $f16, 0x150($sp)
/* B1A8C 800D668C 46085481 */  sub.s      $f18, $f10, $f8
/* B1A90 800D6690 46000102 */  mul.s      $f4, $f0, $f0
/* B1A94 800D6694 E7A00154 */  swc1       $f0, 0x154($sp)
/* B1A98 800D6698 46129202 */  mul.s      $f8, $f18, $f18
/* B1A9C 800D669C E7B20158 */  swc1       $f18, 0x158($sp)
/* B1AA0 800D66A0 46043280 */  add.s      $f10, $f6, $f4
/* B1AA4 800D66A4 0C036C2C */  jal        func_800DB0B0
/* B1AA8 800D66A8 46085300 */   add.s     $f12, $f10, $f8
/* B1AAC 800D66AC 8FAE01A0 */  lw         $t6, 0x1a0($sp)
/* B1AB0 800D66B0 3C018011 */  lui        $at, %hi(D_80108FD8)
/* B1AB4 800D66B4 E4208FD8 */  swc1       $f0, %lo(D_80108FD8)($at)
/* B1AB8 800D66B8 3C018017 */  lui        $at, %hi(D_80174994)
/* B1ABC 800D66BC C4244994 */  lwc1       $f4, %lo(D_80174994)($at)
/* B1AC0 800D66C0 C5C60008 */  lwc1       $f6, 8($t6)
/* B1AC4 800D66C4 8FA201A8 */  lw         $v0, 0x1a8($sp)
/* B1AC8 800D66C8 4604303C */  c.lt.s     $f6, $f4
/* B1ACC 800D66CC 00000000 */  nop
/* B1AD0 800D66D0 4502001D */  bc1fl      .L800D6748
/* B1AD4 800D66D4 8FAF0114 */   lw        $t7, 0x114($sp)
/* B1AD8 800D66D8 C44A0028 */  lwc1       $f10, 0x28($v0)
/* B1ADC 800D66DC 27B8017C */  addiu      $t8, $sp, 0x17c
/* B1AE0 800D66E0 27AB0194 */  addiu      $t3, $sp, 0x194
/* B1AE4 800D66E4 E7AA017C */  swc1       $f10, 0x17c($sp)
/* B1AE8 800D66E8 C448002C */  lwc1       $f8, 0x2c($v0)
/* B1AEC 800D66EC 27A40170 */  addiu      $a0, $sp, 0x170
/* B1AF0 800D66F0 E7A80180 */  swc1       $f8, 0x180($sp)
/* B1AF4 800D66F4 C4460030 */  lwc1       $f6, 0x30($v0)
/* B1AF8 800D66F8 E7A60184 */  swc1       $f6, 0x184($sp)
/* B1AFC 800D66FC 8F010000 */  lw         $at, ($t8)
/* B1B00 800D6700 AFA10004 */  sw         $at, 4($sp)
/* B1B04 800D6704 8F060004 */  lw         $a2, 4($t8)
/* B1B08 800D6708 8FA50004 */  lw         $a1, 4($sp)
/* B1B0C 800D670C AFA60008 */  sw         $a2, 8($sp)
/* B1B10 800D6710 8F010008 */  lw         $at, 8($t8)
/* B1B14 800D6714 AFA1000C */  sw         $at, 0xc($sp)
/* B1B18 800D6718 8D610000 */  lw         $at, ($t3)
/* B1B1C 800D671C 8FA7000C */  lw         $a3, 0xc($sp)
/* B1B20 800D6720 AFA10010 */  sw         $at, 0x10($sp)
/* B1B24 800D6724 8D790004 */  lw         $t9, 4($t3)
/* B1B28 800D6728 AFB90014 */  sw         $t9, 0x14($sp)
/* B1B2C 800D672C 8D610008 */  lw         $at, 8($t3)
/* B1B30 800D6730 AFA10018 */  sw         $at, 0x18($sp)
/* B1B34 800D6734 3C013F00 */  lui        $at, 0x3f00
/* B1B38 800D6738 44812000 */  mtc1       $at, $f4
/* B1B3C 800D673C 0C036091 */  jal        func_800D8244
/* B1B40 800D6740 E7A4001C */   swc1      $f4, 0x1c($sp)
/* B1B44 800D6744 8FAF0114 */  lw         $t7, 0x114($sp)
.L800D6748:
/* B1B48 800D6748 3C038011 */  lui        $v1, %hi(D_80108FD0)
/* B1B4C 800D674C 3C188024 */  lui        $t8, 0x8024
/* B1B50 800D6750 11E0000B */  beqz       $t7, .L800D6780
/* B1B54 800D6754 24638FD0 */   addiu     $v1, $v1, %lo(D_80108FD0)
/* B1B58 800D6758 8FAE0110 */  lw         $t6, 0x110($sp)
/* B1B5C 800D675C 8FAC01A8 */  lw         $t4, 0x1a8($sp)
/* B1B60 800D6760 11C00007 */  beqz       $t6, .L800D6780
/* B1B64 800D6764 00000000 */   nop
/* B1B68 800D6768 C58A0028 */  lwc1       $f10, 0x28($t4)
/* B1B6C 800D676C E7AA0170 */  swc1       $f10, 0x170($sp)
/* B1B70 800D6770 C588002C */  lwc1       $f8, 0x2c($t4)
/* B1B74 800D6774 E7A80174 */  swc1       $f8, 0x174($sp)
/* B1B78 800D6778 C5860030 */  lwc1       $f6, 0x30($t4)
/* B1B7C 800D677C E7A60178 */  swc1       $f6, 0x178($sp)
.L800D6780:
/* B1B80 800D6780 8F180CD8 */  lw         $t8, 0xcd8($t8)
/* B1B84 800D6784 3C018024 */  lui        $at, 0x8024
/* B1B88 800D6788 C7AA0160 */  lwc1       $f10, 0x160($sp)
/* B1B8C 800D678C 001868C0 */  sll        $t5, $t8, 3
/* B1B90 800D6790 01B86823 */  subu       $t5, $t5, $t8
/* B1B94 800D6794 000D6880 */  sll        $t5, $t5, 2
/* B1B98 800D6798 01B86823 */  subu       $t5, $t5, $t8
/* B1B9C 800D679C 000D68C0 */  sll        $t5, $t5, 3
/* B1BA0 800D67A0 002D0821 */  addu       $at, $at, $t5
/* B1BA4 800D67A4 C4240D20 */  lwc1       $f4, 0xd20($at)
/* B1BA8 800D67A8 C7A80174 */  lwc1       $f8, 0x174($sp)
/* B1BAC 800D67AC 3C0C8025 */  lui        $t4, %hi(D_802489C8)
/* B1BB0 800D67B0 460A2001 */  sub.s      $f0, $f4, $f10
/* B1BB4 800D67B4 258C89C8 */  addiu      $t4, $t4, %lo(D_802489C8)
/* B1BB8 800D67B8 27AD0150 */  addiu      $t5, $sp, 0x150
/* B1BBC 800D67BC 4608003C */  c.lt.s     $f0, $f8
/* B1BC0 800D67C0 00000000 */  nop
/* B1BC4 800D67C4 45020003 */  bc1fl      .L800D67D4
/* B1BC8 800D67C8 8C6A0000 */   lw        $t2, ($v1)
/* B1BCC 800D67CC E7A00174 */  swc1       $f0, 0x174($sp)
/* B1BD0 800D67D0 8C6A0000 */  lw         $t2, ($v1)
.L800D67D4:
/* B1BD4 800D67D4 8FA201B0 */  lw         $v0, 0x1b0($sp)
/* B1BD8 800D67D8 8FA401A8 */  lw         $a0, 0x1a8($sp)
/* B1BDC 800D67DC 254B0001 */  addiu      $t3, $t2, 1
/* B1BE0 800D67E0 8FA501AC */  lw         $a1, 0x1ac($sp)
/* B1BE4 800D67E4 05610004 */  bgez       $t3, .L800D67F8
/* B1BE8 800D67E8 31790007 */   andi      $t9, $t3, 7
/* B1BEC 800D67EC 13200002 */  beqz       $t9, .L800D67F8
/* B1BF0 800D67F0 00000000 */   nop
/* B1BF4 800D67F4 2739FFF8 */  addiu      $t9, $t9, -8
.L800D67F8:
/* B1BF8 800D67F8 AC790000 */  sw         $t9, ($v1)
/* B1BFC 800D67FC 00197080 */  sll        $t6, $t9, 2
/* B1C00 800D6800 8DA10000 */  lw         $at, ($t5)
/* B1C04 800D6804 01D97023 */  subu       $t6, $t6, $t9
/* B1C08 800D6808 000E7080 */  sll        $t6, $t6, 2
/* B1C0C 800D680C 01CCC021 */  addu       $t8, $t6, $t4
/* B1C10 800D6810 AF010000 */  sw         $at, ($t8)
/* B1C14 800D6814 8DAB0004 */  lw         $t3, 4($t5)
/* B1C18 800D6818 AF0B0004 */  sw         $t3, 4($t8)
/* B1C1C 800D681C 8DA10008 */  lw         $at, 8($t5)
/* B1C20 800D6820 AF010008 */  sw         $at, 8($t8)
/* B1C24 800D6824 C486000C */  lwc1       $f6, 0xc($a0)
/* B1C28 800D6828 E4A60000 */  swc1       $f6, ($a1)
/* B1C2C 800D682C C4840010 */  lwc1       $f4, 0x10($a0)
/* B1C30 800D6830 E4A40004 */  swc1       $f4, 4($a1)
/* B1C34 800D6834 C48A0014 */  lwc1       $f10, 0x14($a0)
/* B1C38 800D6838 E4AA0008 */  swc1       $f10, 8($a1)
/* B1C3C 800D683C C7A80170 */  lwc1       $f8, 0x170($sp)
/* B1C40 800D6840 E4480000 */  swc1       $f8, ($v0)
/* B1C44 800D6844 C7A60174 */  lwc1       $f6, 0x174($sp)
/* B1C48 800D6848 E4460004 */  swc1       $f6, 4($v0)
/* B1C4C 800D684C C7A40178 */  lwc1       $f4, 0x178($sp)
/* B1C50 800D6850 E4440008 */  swc1       $f4, 8($v0)
/* B1C54 800D6854 8FBF002C */  lw         $ra, 0x2c($sp)
/* B1C58 800D6858 27BD01A0 */  addiu      $sp, $sp, 0x1a0
/* B1C5C 800D685C 03E00008 */  jr         $ra
/* B1C60 800D6860 00000000 */   nop

glabel func_800D6864
/* B1C64 800D6864 3C0E8024 */  lui        $t6, %hi(D_80240CD8)
/* B1C68 800D6868 8DCE0CD8 */  lw         $t6, %lo(D_80240CD8)($t6)
/* B1C6C 800D686C AFA40000 */  sw         $a0, ($sp)
/* B1C70 800D6870 AFA50004 */  sw         $a1, 4($sp)
/* B1C74 800D6874 000E78C0 */  sll        $t7, $t6, 3
/* B1C78 800D6878 C4C4000C */  lwc1       $f4, 0xc($a2)
/* B1C7C 800D687C 01EE7823 */  subu       $t7, $t7, $t6
/* B1C80 800D6880 000F7880 */  sll        $t7, $t7, 2
/* B1C84 800D6884 8FA40010 */  lw         $a0, 0x10($sp)
/* B1C88 800D6888 3C188024 */  lui        $t8, %hi(D_80240CE0)
/* B1C8C 800D688C 01EE7823 */  subu       $t7, $t7, $t6
/* B1C90 800D6890 000F78C0 */  sll        $t7, $t7, 3
/* B1C94 800D6894 27180CE0 */  addiu      $t8, $t8, %lo(D_80240CE0)
/* B1C98 800D6898 E4E40000 */  swc1       $f4, ($a3)
/* B1C9C 800D689C 01F81021 */  addu       $v0, $t7, $t8
/* B1CA0 800D68A0 C44600D0 */  lwc1       $f6, 0xd0($v0)
/* B1CA4 800D68A4 C4C80044 */  lwc1       $f8, 0x44($a2)
/* B1CA8 800D68A8 C4D00010 */  lwc1       $f16, 0x10($a2)
/* B1CAC 800D68AC 46083282 */  mul.s      $f10, $f6, $f8
/* B1CB0 800D68B0 460A8480 */  add.s      $f18, $f16, $f10
/* B1CB4 800D68B4 E4F20004 */  swc1       $f18, 4($a3)
/* B1CB8 800D68B8 C4C40014 */  lwc1       $f4, 0x14($a2)
/* B1CBC 800D68BC E4E40008 */  swc1       $f4, 8($a3)
/* B1CC0 800D68C0 C4C6001C */  lwc1       $f6, 0x1c($a2)
/* B1CC4 800D68C4 E4860000 */  swc1       $f6, ($a0)
/* B1CC8 800D68C8 C4D00044 */  lwc1       $f16, 0x44($a2)
/* B1CCC 800D68CC C44800D0 */  lwc1       $f8, 0xd0($v0)
/* B1CD0 800D68D0 C4D20020 */  lwc1       $f18, 0x20($a2)
/* B1CD4 800D68D4 46104282 */  mul.s      $f10, $f8, $f16
/* B1CD8 800D68D8 460A9100 */  add.s      $f4, $f18, $f10
/* B1CDC 800D68DC E4840004 */  swc1       $f4, 4($a0)
/* B1CE0 800D68E0 C4C60024 */  lwc1       $f6, 0x24($a2)
/* B1CE4 800D68E4 03E00008 */  jr         $ra
/* B1CE8 800D68E8 E4860008 */   swc1      $f6, 8($a0)

glabel func_800D68EC
/* B1CEC 800D68EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B1CF0 800D68F0 AFB0001C */  sw         $s0, 0x1c($sp)
/* B1CF4 800D68F4 AFBF0024 */  sw         $ra, 0x24($sp)
/* B1CF8 800D68F8 AFB10020 */  sw         $s1, 0x20($sp)
/* B1CFC 800D68FC 00808025 */  or         $s0, $a0, $zero
/* B1D00 800D6900 C6040000 */  lwc1       $f4, ($s0)
/* B1D04 800D6904 C4A60000 */  lwc1       $f6, ($a1)
/* B1D08 800D6908 27A4002C */  addiu      $a0, $sp, 0x2c
/* B1D0C 800D690C 44866000 */  mtc1       $a2, $f12
/* B1D10 800D6910 46062201 */  sub.s      $f8, $f4, $f6
/* B1D14 800D6914 00A08825 */  or         $s1, $a1, $zero
/* B1D18 800D6918 24180002 */  addiu      $t8, $zero, 2
/* B1D1C 800D691C E7A8002C */  swc1       $f8, 0x2c($sp)
/* B1D20 800D6920 C4B00004 */  lwc1       $f16, 4($a1)
/* B1D24 800D6924 C60A0004 */  lwc1       $f10, 4($s0)
/* B1D28 800D6928 46105481 */  sub.s      $f18, $f10, $f16
/* B1D2C 800D692C 460062A1 */  cvt.d.s    $f10, $f12
/* B1D30 800D6930 E7B20030 */  swc1       $f18, 0x30($sp)
/* B1D34 800D6934 C4A60008 */  lwc1       $f6, 8($a1)
/* B1D38 800D6938 C6040008 */  lwc1       $f4, 8($s0)
/* B1D3C 800D693C 46062201 */  sub.s      $f8, $f4, $f6
/* B1D40 800D6940 E7A80034 */  swc1       $f8, 0x34($sp)
/* B1D44 800D6944 8C810000 */  lw         $at, ($a0)
/* B1D48 800D6948 AFA10004 */  sw         $at, 4($sp)
/* B1D4C 800D694C 8C860004 */  lw         $a2, 4($a0)
/* B1D50 800D6950 8FA50004 */  lw         $a1, 4($sp)
/* B1D54 800D6954 AFA60008 */  sw         $a2, 8($sp)
/* B1D58 800D6958 8C810008 */  lw         $at, 8($a0)
/* B1D5C 800D695C AFB80014 */  sw         $t8, 0x14($sp)
/* B1D60 800D6960 AFA1000C */  sw         $at, 0xc($sp)
/* B1D64 800D6964 3C018011 */  lui        $at, %hi(D_801106A0)
/* B1D68 800D6968 D43006A0 */  ldc1       $f16, %lo(D_801106A0)($at)
/* B1D6C 800D696C 3C018011 */  lui        $at, %hi(D_801106A8)
/* B1D70 800D6970 D42406A8 */  ldc1       $f4, %lo(D_801106A8)($at)
/* B1D74 800D6974 46305482 */  mul.d      $f18, $f10, $f16
/* B1D78 800D6978 8FA7000C */  lw         $a3, 0xc($sp)
/* B1D7C 800D697C 46249183 */  div.d      $f6, $f18, $f4
/* B1D80 800D6980 46203220 */  cvt.s.d    $f8, $f6
/* B1D84 800D6984 0C035FB8 */  jal        func_800D7EE0
/* B1D88 800D6988 E7A80010 */   swc1      $f8, 0x10($sp)
/* B1D8C 800D698C C62A0000 */  lwc1       $f10, ($s1)
/* B1D90 800D6990 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* B1D94 800D6994 46105480 */  add.s      $f18, $f10, $f16
/* B1D98 800D6998 E6120000 */  swc1       $f18, ($s0)
/* B1D9C 800D699C C7A60030 */  lwc1       $f6, 0x30($sp)
/* B1DA0 800D69A0 C6240004 */  lwc1       $f4, 4($s1)
/* B1DA4 800D69A4 46062200 */  add.s      $f8, $f4, $f6
/* B1DA8 800D69A8 E6080004 */  swc1       $f8, 4($s0)
/* B1DAC 800D69AC C7B00034 */  lwc1       $f16, 0x34($sp)
/* B1DB0 800D69B0 C62A0008 */  lwc1       $f10, 8($s1)
/* B1DB4 800D69B4 46105480 */  add.s      $f18, $f10, $f16
/* B1DB8 800D69B8 E6120008 */  swc1       $f18, 8($s0)
/* B1DBC 800D69BC 8FBF0024 */  lw         $ra, 0x24($sp)
/* B1DC0 800D69C0 8FB10020 */  lw         $s1, 0x20($sp)
/* B1DC4 800D69C4 8FB0001C */  lw         $s0, 0x1c($sp)
/* B1DC8 800D69C8 03E00008 */  jr         $ra
/* B1DCC 800D69CC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800D69D0
/* B1DD0 800D69D0 3C038017 */  lui        $v1, %hi(D_80175682)
/* B1DD4 800D69D4 94625682 */  lhu        $v0, %lo(D_80175682)($v1)
/* B1DD8 800D69D8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B1DDC 800D69DC AFBF0024 */  sw         $ra, 0x24($sp)
/* B1DE0 800D69E0 304E0002 */  andi       $t6, $v0, 2
/* B1DE4 800D69E4 AFA40028 */  sw         $a0, 0x28($sp)
/* B1DE8 800D69E8 AFA5002C */  sw         $a1, 0x2c($sp)
/* B1DEC 800D69EC AFA60030 */  sw         $a2, 0x30($sp)
/* B1DF0 800D69F0 11C00011 */  beqz       $t6, .L800D6A38
/* B1DF4 800D69F4 AFA70034 */   sw        $a3, 0x34($sp)
/* B1DF8 800D69F8 240F000B */  addiu      $t7, $zero, 0xb
/* B1DFC 800D69FC 3C018011 */  lui        $at, %hi(D_80108FE8)
/* B1E00 800D6A00 AC2F8FE8 */  sw         $t7, %lo(D_80108FE8)($at)
/* B1E04 800D6A04 3C018011 */  lui        $at, %hi(D_80108FEC)
/* B1E08 800D6A08 24180001 */  addiu      $t8, $zero, 1
/* B1E0C 800D6A0C 24190010 */  addiu      $t9, $zero, 0x10
/* B1E10 800D6A10 AC388FEC */  sw         $t8, %lo(D_80108FEC)($at)
/* B1E14 800D6A14 AFB90014 */  sw         $t9, 0x14($sp)
/* B1E18 800D6A18 2404002D */  addiu      $a0, $zero, 0x2d
/* B1E1C 800D6A1C 00002825 */  or         $a1, $zero, $zero
/* B1E20 800D6A20 00003025 */  or         $a2, $zero, $zero
/* B1E24 800D6A24 00003825 */  or         $a3, $zero, $zero
/* B1E28 800D6A28 0C021FB4 */  jal        func_80087ED0
/* B1E2C 800D6A2C AFA00010 */   sw        $zero, 0x10($sp)
/* B1E30 800D6A30 10000011 */  b          .L800D6A78
/* B1E34 800D6A34 00000000 */   nop
.L800D6A38:
/* B1E38 800D6A38 30480001 */  andi       $t0, $v0, 1
/* B1E3C 800D6A3C 1100000E */  beqz       $t0, .L800D6A78
/* B1E40 800D6A40 2409000B */   addiu     $t1, $zero, 0xb
/* B1E44 800D6A44 3C018011 */  lui        $at, %hi(D_80108FE8)
/* B1E48 800D6A48 AC298FE8 */  sw         $t1, %lo(D_80108FE8)($at)
/* B1E4C 800D6A4C 3C018011 */  lui        $at, %hi(D_80108FEC)
/* B1E50 800D6A50 240AFFFF */  addiu      $t2, $zero, -1
/* B1E54 800D6A54 240B0010 */  addiu      $t3, $zero, 0x10
/* B1E58 800D6A58 AC2A8FEC */  sw         $t2, %lo(D_80108FEC)($at)
/* B1E5C 800D6A5C AFAB0014 */  sw         $t3, 0x14($sp)
/* B1E60 800D6A60 2404002D */  addiu      $a0, $zero, 0x2d
/* B1E64 800D6A64 00002825 */  or         $a1, $zero, $zero
/* B1E68 800D6A68 00003025 */  or         $a2, $zero, $zero
/* B1E6C 800D6A6C 00003825 */  or         $a3, $zero, $zero
/* B1E70 800D6A70 0C021FB4 */  jal        func_80087ED0
/* B1E74 800D6A74 AFA00010 */   sw        $zero, 0x10($sp)
.L800D6A78:
/* B1E78 800D6A78 3C058011 */  lui        $a1, %hi(D_80108FE8)
/* B1E7C 800D6A7C 24A58FE8 */  addiu      $a1, $a1, %lo(D_80108FE8)
/* B1E80 800D6A80 8CA40000 */  lw         $a0, ($a1)
/* B1E84 800D6A84 3C038017 */  lui        $v1, %hi(D_80175680)
/* B1E88 800D6A88 94635680 */  lhu        $v1, %lo(D_80175680)($v1)
/* B1E8C 800D6A8C 10800018 */  beqz       $a0, .L800D6AF0
/* B1E90 800D6A90 248CFFFF */   addiu     $t4, $a0, -1
/* B1E94 800D6A94 ACAC0000 */  sw         $t4, ($a1)
/* B1E98 800D6A98 3C038011 */  lui        $v1, %hi(D_80108FEC)
/* B1E9C 800D6A9C 8C638FEC */  lw         $v1, %lo(D_80108FEC)($v1)
/* B1EA0 800D6AA0 3C014010 */  lui        $at, 0x4010
/* B1EA4 800D6AA4 44814800 */  mtc1       $at, $f9
/* B1EA8 800D6AA8 44832000 */  mtc1       $v1, $f4
/* B1EAC 800D6AAC 44804000 */  mtc1       $zero, $f8
/* B1EB0 800D6AB0 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B1EB4 800D6AB4 468021A1 */  cvt.d.w    $f6, $f4
/* B1EB8 800D6AB8 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B1EBC 800D6ABC C4500000 */  lwc1       $f16, ($v0)
/* B1EC0 800D6AC0 46283282 */  mul.d      $f10, $f6, $f8
/* B1EC4 800D6AC4 460084A1 */  cvt.d.s    $f18, $f16
/* B1EC8 800D6AC8 462A9100 */  add.d      $f4, $f18, $f10
/* B1ECC 800D6ACC 462021A0 */  cvt.s.d    $f6, $f4
/* B1ED0 800D6AD0 1580004D */  bnez       $t4, .L800D6C08
/* B1ED4 800D6AD4 E4460000 */   swc1      $f6, ($v0)
/* B1ED8 800D6AD8 1060004B */  beqz       $v1, .L800D6C08
/* B1EDC 800D6ADC 240E000F */   addiu     $t6, $zero, 0xf
/* B1EE0 800D6AE0 ACAE0000 */  sw         $t6, ($a1)
/* B1EE4 800D6AE4 3C018011 */  lui        $at, %hi(D_80108FEC)
/* B1EE8 800D6AE8 10000047 */  b          .L800D6C08
/* B1EEC 800D6AEC AC208FEC */   sw        $zero, %lo(D_80108FEC)($at)
.L800D6AF0:
/* B1EF0 800D6AF0 306F0002 */  andi       $t7, $v1, 2
/* B1EF4 800D6AF4 15E00044 */  bnez       $t7, .L800D6C08
/* B1EF8 800D6AF8 30780001 */   andi      $t8, $v1, 1
/* B1EFC 800D6AFC 17000042 */  bnez       $t8, .L800D6C08
/* B1F00 800D6B00 30790010 */   andi      $t9, $v1, 0x10
/* B1F04 800D6B04 17200040 */  bnez       $t9, .L800D6C08
/* B1F08 800D6B08 3C028011 */   lui       $v0, %hi(D_80108FE4)
/* B1F0C 800D6B0C 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B1F10 800D6B10 44807000 */  mtc1       $zero, $f14
/* B1F14 800D6B14 C4400000 */  lwc1       $f0, ($v0)
/* B1F18 800D6B18 3C013F80 */  lui        $at, 0x3f80
/* B1F1C 800D6B1C 4600703C */  c.lt.s     $f14, $f0
/* B1F20 800D6B20 00000000 */  nop
/* B1F24 800D6B24 45020005 */  bc1fl      .L800D6B3C
/* B1F28 800D6B28 460E003C */   c.lt.s    $f0, $f14
/* B1F2C 800D6B2C 44816000 */  mtc1       $at, $f12
/* B1F30 800D6B30 1000000B */  b          .L800D6B60
/* B1F34 800D6B34 460E003C */   c.lt.s    $f0, $f14
/* B1F38 800D6B38 460E003C */  c.lt.s     $f0, $f14
.L800D6B3C:
/* B1F3C 800D6B3C 00001825 */  or         $v1, $zero, $zero
/* B1F40 800D6B40 45000003 */  bc1f       .L800D6B50
/* B1F44 800D6B44 00000000 */   nop
/* B1F48 800D6B48 10000001 */  b          .L800D6B50
/* B1F4C 800D6B4C 2403FFFF */   addiu     $v1, $zero, -1
.L800D6B50:
/* B1F50 800D6B50 44834000 */  mtc1       $v1, $f8
/* B1F54 800D6B54 00000000 */  nop
/* B1F58 800D6B58 46804320 */  cvt.s.w    $f12, $f8
/* B1F5C 800D6B5C 460E003C */  c.lt.s     $f0, $f14
.L800D6B60:
/* B1F60 800D6B60 3C018011 */  lui        $at, 0x8011
/* B1F64 800D6B64 45020005 */  bc1fl      .L800D6B7C
/* B1F68 800D6B68 E4400000 */   swc1      $f0, ($v0)
/* B1F6C 800D6B6C 46000407 */  neg.s      $f16, $f0
/* B1F70 800D6B70 10000002 */  b          .L800D6B7C
/* B1F74 800D6B74 E4500000 */   swc1      $f16, ($v0)
/* B1F78 800D6B78 E4400000 */  swc1       $f0, ($v0)
.L800D6B7C:
/* B1F7C 800D6B7C C4400000 */  lwc1       $f0, ($v0)
/* B1F80 800D6B80 C43206B0 */  lwc1       $f18, 0x6b0($at)
/* B1F84 800D6B84 3C013FF0 */  lui        $at, 0x3ff0
/* B1F88 800D6B88 44814800 */  mtc1       $at, $f9
/* B1F8C 800D6B8C 46009282 */  mul.s      $f10, $f18, $f0
/* B1F90 800D6B90 44804000 */  mtc1       $zero, $f8
/* B1F94 800D6B94 3C014010 */  lui        $at, 0x4010
/* B1F98 800D6B98 44819800 */  mtc1       $at, $f19
/* B1F9C 800D6B9C 44809000 */  mtc1       $zero, $f18
/* B1FA0 800D6BA0 3C014080 */  lui        $at, 0x4080
/* B1FA4 800D6BA4 46005102 */  mul.s      $f4, $f10, $f0
/* B1FA8 800D6BA8 460021A1 */  cvt.d.s    $f6, $f4
/* B1FAC 800D6BAC 46283400 */  add.d      $f16, $f6, $f8
/* B1FB0 800D6BB0 462080A0 */  cvt.s.d    $f2, $f16
/* B1FB4 800D6BB4 460012A1 */  cvt.d.s    $f10, $f2
/* B1FB8 800D6BB8 462A903C */  c.lt.d     $f18, $f10
/* B1FBC 800D6BBC 00000000 */  nop
/* B1FC0 800D6BC0 45020004 */  bc1fl      .L800D6BD4
/* B1FC4 800D6BC4 46020101 */   sub.s     $f4, $f0, $f2
/* B1FC8 800D6BC8 44811000 */  mtc1       $at, $f2
/* B1FCC 800D6BCC 00000000 */  nop
/* B1FD0 800D6BD0 46020101 */  sub.s      $f4, $f0, $f2
.L800D6BD4:
/* B1FD4 800D6BD4 44804800 */  mtc1       $zero, $f9
/* B1FD8 800D6BD8 44804000 */  mtc1       $zero, $f8
/* B1FDC 800D6BDC E4440000 */  swc1       $f4, ($v0)
/* B1FE0 800D6BE0 C4400000 */  lwc1       $f0, ($v0)
/* B1FE4 800D6BE4 460001A1 */  cvt.d.s    $f6, $f0
/* B1FE8 800D6BE8 4628303C */  c.lt.d     $f6, $f8
/* B1FEC 800D6BEC 00000000 */  nop
/* B1FF0 800D6BF0 45000003 */  bc1f       .L800D6C00
/* B1FF4 800D6BF4 00000000 */   nop
/* B1FF8 800D6BF8 E44E0000 */  swc1       $f14, ($v0)
/* B1FFC 800D6BFC C4400000 */  lwc1       $f0, ($v0)
.L800D6C00:
/* B2000 800D6C00 46006402 */  mul.s      $f16, $f12, $f0
/* B2004 800D6C04 E4500000 */  swc1       $f16, ($v0)
.L800D6C08:
/* B2008 800D6C08 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B200C 800D6C0C 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B2010 800D6C10 C4520000 */  lwc1       $f18, ($v0)
/* B2014 800D6C14 3C018011 */  lui        $at, %hi(D_801106B8)
/* B2018 800D6C18 D42A06B8 */  ldc1       $f10, %lo(D_801106B8)($at)
/* B201C 800D6C1C 46009021 */  cvt.d.s    $f0, $f18
/* B2020 800D6C20 4620503C */  c.lt.d     $f10, $f0
/* B2024 800D6C24 00000000 */  nop
/* B2028 800D6C28 45000006 */  bc1f       .L800D6C44
/* B202C 800D6C2C 3C018011 */   lui       $at, %hi(D_801106C0)
/* B2030 800D6C30 D42406C0 */  ldc1       $f4, %lo(D_801106C0)($at)
/* B2034 800D6C34 46240181 */  sub.d      $f6, $f0, $f4
/* B2038 800D6C38 46203220 */  cvt.s.d    $f8, $f6
/* B203C 800D6C3C 1000000C */  b          .L800D6C70
/* B2040 800D6C40 E4480000 */   swc1      $f8, ($v0)
.L800D6C44:
/* B2044 800D6C44 3C018011 */  lui        $at, %hi(D_801106C8)
/* B2048 800D6C48 D43006C8 */  ldc1       $f16, %lo(D_801106C8)($at)
/* B204C 800D6C4C 3C018011 */  lui        $at, %hi(D_801106D0)
/* B2050 800D6C50 4630003C */  c.lt.d     $f0, $f16
/* B2054 800D6C54 00000000 */  nop
/* B2058 800D6C58 45020006 */  bc1fl      .L800D6C74
/* B205C 800D6C5C 8FA80028 */   lw        $t0, 0x28($sp)
/* B2060 800D6C60 D43206D0 */  ldc1       $f18, %lo(D_801106D0)($at)
/* B2064 800D6C64 46320280 */  add.d      $f10, $f0, $f18
/* B2068 800D6C68 46205120 */  cvt.s.d    $f4, $f10
/* B206C 800D6C6C E4440000 */  swc1       $f4, ($v0)
.L800D6C70:
/* B2070 800D6C70 8FA80028 */  lw         $t0, 0x28($sp)
.L800D6C74:
/* B2074 800D6C74 2D010011 */  sltiu      $at, $t0, 0x11
/* B2078 800D6C78 102000CC */  beqz       $at, .L800D6FAC
/* B207C 800D6C7C 00084080 */   sll       $t0, $t0, 2
/* B2080 800D6C80 3C018011 */  lui        $at, %hi(D_801106D8)
/* B2084 800D6C84 00280821 */  addu       $at, $at, $t0
/* B2088 800D6C88 8C2806D8 */  lw         $t0, %lo(D_801106D8)($at)
/* B208C 800D6C8C 01000008 */  jr         $t0
/* B2090 800D6C90 00000000 */   nop
/* B2094 800D6C94 8FA9003C */  lw         $t1, 0x3c($sp)
/* B2098 800D6C98 8FAA0040 */  lw         $t2, 0x40($sp)
/* B209C 800D6C9C 8FA4002C */  lw         $a0, 0x2c($sp)
/* B20A0 800D6CA0 8FA50030 */  lw         $a1, 0x30($sp)
/* B20A4 800D6CA4 8FA60034 */  lw         $a2, 0x34($sp)
/* B20A8 800D6CA8 8FA70038 */  lw         $a3, 0x38($sp)
/* B20AC 800D6CAC AFA90010 */  sw         $t1, 0x10($sp)
/* B20B0 800D6CB0 0C0354E5 */  jal        func_800D5394
/* B20B4 800D6CB4 AFAA0014 */   sw        $t2, 0x14($sp)
/* B20B8 800D6CB8 100000C5 */  b          .L800D6FD0
/* B20BC 800D6CBC 00000000 */   nop
/* B20C0 800D6CC0 8FAB003C */  lw         $t3, 0x3c($sp)
/* B20C4 800D6CC4 8FAC0040 */  lw         $t4, 0x40($sp)
/* B20C8 800D6CC8 8FA4002C */  lw         $a0, 0x2c($sp)
/* B20CC 800D6CCC 8FA50030 */  lw         $a1, 0x30($sp)
/* B20D0 800D6CD0 8FA60034 */  lw         $a2, 0x34($sp)
/* B20D4 800D6CD4 8FA70038 */  lw         $a3, 0x38($sp)
/* B20D8 800D6CD8 AFA00014 */  sw         $zero, 0x14($sp)
/* B20DC 800D6CDC AFAB0010 */  sw         $t3, 0x10($sp)
/* B20E0 800D6CE0 0C035080 */  jal        func_800D4200
/* B20E4 800D6CE4 AFAC0018 */   sw        $t4, 0x18($sp)
/* B20E8 800D6CE8 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B20EC 800D6CEC 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B20F0 800D6CF0 8C460000 */  lw         $a2, ($v0)
/* B20F4 800D6CF4 8FA40038 */  lw         $a0, 0x38($sp)
/* B20F8 800D6CF8 0C035A3B */  jal        func_800D68EC
/* B20FC 800D6CFC 8FA5003C */   lw        $a1, 0x3c($sp)
/* B2100 800D6D00 100000B3 */  b          .L800D6FD0
/* B2104 800D6D04 00000000 */   nop
/* B2108 800D6D08 8FAD003C */  lw         $t5, 0x3c($sp)
/* B210C 800D6D0C 8FA4002C */  lw         $a0, 0x2c($sp)
/* B2110 800D6D10 8FA50030 */  lw         $a1, 0x30($sp)
/* B2114 800D6D14 8FA60034 */  lw         $a2, 0x34($sp)
/* B2118 800D6D18 8FA70038 */  lw         $a3, 0x38($sp)
/* B211C 800D6D1C 0C035132 */  jal        func_800D44C8
/* B2120 800D6D20 AFAD0010 */   sw        $t5, 0x10($sp)
/* B2124 800D6D24 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B2128 800D6D28 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B212C 800D6D2C 8C460000 */  lw         $a2, ($v0)
/* B2130 800D6D30 8FA40038 */  lw         $a0, 0x38($sp)
/* B2134 800D6D34 0C035A3B */  jal        func_800D68EC
/* B2138 800D6D38 8FA5003C */   lw        $a1, 0x3c($sp)
/* B213C 800D6D3C 100000A4 */  b          .L800D6FD0
/* B2140 800D6D40 00000000 */   nop
/* B2144 800D6D44 8FAE003C */  lw         $t6, 0x3c($sp)
/* B2148 800D6D48 8FA4002C */  lw         $a0, 0x2c($sp)
/* B214C 800D6D4C 8FA50030 */  lw         $a1, 0x30($sp)
/* B2150 800D6D50 8FA60034 */  lw         $a2, 0x34($sp)
/* B2154 800D6D54 8FA70038 */  lw         $a3, 0x38($sp)
/* B2158 800D6D58 0C035154 */  jal        func_800D4550
/* B215C 800D6D5C AFAE0010 */   sw        $t6, 0x10($sp)
/* B2160 800D6D60 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B2164 800D6D64 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B2168 800D6D68 8C460000 */  lw         $a2, ($v0)
/* B216C 800D6D6C 8FA40038 */  lw         $a0, 0x38($sp)
/* B2170 800D6D70 0C035A3B */  jal        func_800D68EC
/* B2174 800D6D74 8FA5003C */   lw        $a1, 0x3c($sp)
/* B2178 800D6D78 10000095 */  b          .L800D6FD0
/* B217C 800D6D7C 00000000 */   nop
/* B2180 800D6D80 8FAF003C */  lw         $t7, 0x3c($sp)
/* B2184 800D6D84 8FA4002C */  lw         $a0, 0x2c($sp)
/* B2188 800D6D88 8FA50030 */  lw         $a1, 0x30($sp)
/* B218C 800D6D8C 8FA60034 */  lw         $a2, 0x34($sp)
/* B2190 800D6D90 8FA70038 */  lw         $a3, 0x38($sp)
/* B2194 800D6D94 0C035176 */  jal        func_800D45D8
/* B2198 800D6D98 AFAF0010 */   sw        $t7, 0x10($sp)
/* B219C 800D6D9C 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B21A0 800D6DA0 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B21A4 800D6DA4 8C460000 */  lw         $a2, ($v0)
/* B21A8 800D6DA8 8FA40038 */  lw         $a0, 0x38($sp)
/* B21AC 800D6DAC 0C035A3B */  jal        func_800D68EC
/* B21B0 800D6DB0 8FA5003C */   lw        $a1, 0x3c($sp)
/* B21B4 800D6DB4 10000086 */  b          .L800D6FD0
/* B21B8 800D6DB8 00000000 */   nop
/* B21BC 800D6DBC 8FB8003C */  lw         $t8, 0x3c($sp)
/* B21C0 800D6DC0 8FB90040 */  lw         $t9, 0x40($sp)
/* B21C4 800D6DC4 8FA4002C */  lw         $a0, 0x2c($sp)
/* B21C8 800D6DC8 8FA50030 */  lw         $a1, 0x30($sp)
/* B21CC 800D6DCC 8FA60034 */  lw         $a2, 0x34($sp)
/* B21D0 800D6DD0 8FA70038 */  lw         $a3, 0x38($sp)
/* B21D4 800D6DD4 AFA00018 */  sw         $zero, 0x18($sp)
/* B21D8 800D6DD8 AFB80010 */  sw         $t8, 0x10($sp)
/* B21DC 800D6DDC 0C0351C8 */  jal        func_800D4720
/* B21E0 800D6DE0 AFB90014 */   sw        $t9, 0x14($sp)
/* B21E4 800D6DE4 1000007A */  b          .L800D6FD0
/* B21E8 800D6DE8 00000000 */   nop
/* B21EC 800D6DEC 8FA8003C */  lw         $t0, 0x3c($sp)
/* B21F0 800D6DF0 8FA90040 */  lw         $t1, 0x40($sp)
/* B21F4 800D6DF4 240A0001 */  addiu      $t2, $zero, 1
/* B21F8 800D6DF8 AFAA0018 */  sw         $t2, 0x18($sp)
/* B21FC 800D6DFC 8FA4002C */  lw         $a0, 0x2c($sp)
/* B2200 800D6E00 8FA50030 */  lw         $a1, 0x30($sp)
/* B2204 800D6E04 8FA60034 */  lw         $a2, 0x34($sp)
/* B2208 800D6E08 8FA70038 */  lw         $a3, 0x38($sp)
/* B220C 800D6E0C AFA80010 */  sw         $t0, 0x10($sp)
/* B2210 800D6E10 0C0351C8 */  jal        func_800D4720
/* B2214 800D6E14 AFA90014 */   sw        $t1, 0x14($sp)
/* B2218 800D6E18 1000006D */  b          .L800D6FD0
/* B221C 800D6E1C 00000000 */   nop
/* B2220 800D6E20 8FAB003C */  lw         $t3, 0x3c($sp)
/* B2224 800D6E24 8FA4002C */  lw         $a0, 0x2c($sp)
/* B2228 800D6E28 8FA50030 */  lw         $a1, 0x30($sp)
/* B222C 800D6E2C 8FA60034 */  lw         $a2, 0x34($sp)
/* B2230 800D6E30 8FA70038 */  lw         $a3, 0x38($sp)
/* B2234 800D6E34 0C035364 */  jal        func_800D4D90
/* B2238 800D6E38 AFAB0010 */   sw        $t3, 0x10($sp)
/* B223C 800D6E3C 10000064 */  b          .L800D6FD0
/* B2240 800D6E40 00000000 */   nop
/* B2244 800D6E44 8FAC003C */  lw         $t4, 0x3c($sp)
/* B2248 800D6E48 8FA4002C */  lw         $a0, 0x2c($sp)
/* B224C 800D6E4C 8FA50030 */  lw         $a1, 0x30($sp)
/* B2250 800D6E50 8FA60034 */  lw         $a2, 0x34($sp)
/* B2254 800D6E54 8FA70038 */  lw         $a3, 0x38($sp)
/* B2258 800D6E58 0C0353D4 */  jal        func_800D4F50
/* B225C 800D6E5C AFAC0010 */   sw        $t4, 0x10($sp)
/* B2260 800D6E60 1000005B */  b          .L800D6FD0
/* B2264 800D6E64 00000000 */   nop
/* B2268 800D6E68 8FAD003C */  lw         $t5, 0x3c($sp)
/* B226C 800D6E6C 8FAF0040 */  lw         $t7, 0x40($sp)
/* B2270 800D6E70 240E0001 */  addiu      $t6, $zero, 1
/* B2274 800D6E74 AFAE0014 */  sw         $t6, 0x14($sp)
/* B2278 800D6E78 8FA4002C */  lw         $a0, 0x2c($sp)
/* B227C 800D6E7C 8FA50030 */  lw         $a1, 0x30($sp)
/* B2280 800D6E80 8FA60034 */  lw         $a2, 0x34($sp)
/* B2284 800D6E84 8FA70038 */  lw         $a3, 0x38($sp)
/* B2288 800D6E88 AFAD0010 */  sw         $t5, 0x10($sp)
/* B228C 800D6E8C 0C035080 */  jal        func_800D4200
/* B2290 800D6E90 AFAF0018 */   sw        $t7, 0x18($sp)
/* B2294 800D6E94 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B2298 800D6E98 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B229C 800D6E9C 8C460000 */  lw         $a2, ($v0)
/* B22A0 800D6EA0 8FA40038 */  lw         $a0, 0x38($sp)
/* B22A4 800D6EA4 0C035A3B */  jal        func_800D68EC
/* B22A8 800D6EA8 8FA5003C */   lw        $a1, 0x3c($sp)
/* B22AC 800D6EAC 10000048 */  b          .L800D6FD0
/* B22B0 800D6EB0 00000000 */   nop
/* B22B4 800D6EB4 8FB8003C */  lw         $t8, 0x3c($sp)
/* B22B8 800D6EB8 8FA4002C */  lw         $a0, 0x2c($sp)
/* B22BC 800D6EBC 8FA50030 */  lw         $a1, 0x30($sp)
/* B22C0 800D6EC0 8FA60034 */  lw         $a2, 0x34($sp)
/* B22C4 800D6EC4 8FA70038 */  lw         $a3, 0x38($sp)
/* B22C8 800D6EC8 0C0354BA */  jal        func_800D52E8
/* B22CC 800D6ECC AFB80010 */   sw        $t8, 0x10($sp)
/* B22D0 800D6ED0 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B22D4 800D6ED4 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B22D8 800D6ED8 8C460000 */  lw         $a2, ($v0)
/* B22DC 800D6EDC 8FA40038 */  lw         $a0, 0x38($sp)
/* B22E0 800D6EE0 0C035A3B */  jal        func_800D68EC
/* B22E4 800D6EE4 8FA5003C */   lw        $a1, 0x3c($sp)
/* B22E8 800D6EE8 10000039 */  b          .L800D6FD0
/* B22EC 800D6EEC 00000000 */   nop
/* B22F0 800D6EF0 8FB9003C */  lw         $t9, 0x3c($sp)
/* B22F4 800D6EF4 8FA90040 */  lw         $t1, 0x40($sp)
/* B22F8 800D6EF8 24080002 */  addiu      $t0, $zero, 2
/* B22FC 800D6EFC AFA80014 */  sw         $t0, 0x14($sp)
/* B2300 800D6F00 8FA4002C */  lw         $a0, 0x2c($sp)
/* B2304 800D6F04 8FA50030 */  lw         $a1, 0x30($sp)
/* B2308 800D6F08 8FA60034 */  lw         $a2, 0x34($sp)
/* B230C 800D6F0C 8FA70038 */  lw         $a3, 0x38($sp)
/* B2310 800D6F10 AFB90010 */  sw         $t9, 0x10($sp)
/* B2314 800D6F14 0C035080 */  jal        func_800D4200
/* B2318 800D6F18 AFA90018 */   sw        $t1, 0x18($sp)
/* B231C 800D6F1C 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B2320 800D6F20 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B2324 800D6F24 8C460000 */  lw         $a2, ($v0)
/* B2328 800D6F28 8FA40038 */  lw         $a0, 0x38($sp)
/* B232C 800D6F2C 0C035A3B */  jal        func_800D68EC
/* B2330 800D6F30 8FA5003C */   lw        $a1, 0x3c($sp)
/* B2334 800D6F34 10000026 */  b          .L800D6FD0
/* B2338 800D6F38 00000000 */   nop
/* B233C 800D6F3C 8FAA003C */  lw         $t2, 0x3c($sp)
/* B2340 800D6F40 8FAC0040 */  lw         $t4, 0x40($sp)
/* B2344 800D6F44 240B0003 */  addiu      $t3, $zero, 3
/* B2348 800D6F48 AFAB0014 */  sw         $t3, 0x14($sp)
/* B234C 800D6F4C 8FA4002C */  lw         $a0, 0x2c($sp)
/* B2350 800D6F50 8FA50030 */  lw         $a1, 0x30($sp)
/* B2354 800D6F54 8FA60034 */  lw         $a2, 0x34($sp)
/* B2358 800D6F58 8FA70038 */  lw         $a3, 0x38($sp)
/* B235C 800D6F5C AFAA0010 */  sw         $t2, 0x10($sp)
/* B2360 800D6F60 0C035080 */  jal        func_800D4200
/* B2364 800D6F64 AFAC0018 */   sw        $t4, 0x18($sp)
/* B2368 800D6F68 3C028011 */  lui        $v0, %hi(D_80108FE4)
/* B236C 800D6F6C 24428FE4 */  addiu      $v0, $v0, %lo(D_80108FE4)
/* B2370 800D6F70 8C460000 */  lw         $a2, ($v0)
/* B2374 800D6F74 8FA40038 */  lw         $a0, 0x38($sp)
/* B2378 800D6F78 0C035A3B */  jal        func_800D68EC
/* B237C 800D6F7C 8FA5003C */   lw        $a1, 0x3c($sp)
/* B2380 800D6F80 10000013 */  b          .L800D6FD0
/* B2384 800D6F84 00000000 */   nop
/* B2388 800D6F88 8FAD003C */  lw         $t5, 0x3c($sp)
/* B238C 800D6F8C 8FA4002C */  lw         $a0, 0x2c($sp)
/* B2390 800D6F90 8FA50030 */  lw         $a1, 0x30($sp)
/* B2394 800D6F94 8FA60034 */  lw         $a2, 0x34($sp)
/* B2398 800D6F98 8FA70038 */  lw         $a3, 0x38($sp)
/* B239C 800D6F9C 0C035A19 */  jal        func_800D6864
/* B23A0 800D6FA0 AFAD0010 */   sw        $t5, 0x10($sp)
/* B23A4 800D6FA4 1000000A */  b          .L800D6FD0
/* B23A8 800D6FA8 00000000 */   nop
.L800D6FAC:
/* B23AC 800D6FAC 8FAE003C */  lw         $t6, 0x3c($sp)
/* B23B0 800D6FB0 8FAF0040 */  lw         $t7, 0x40($sp)
/* B23B4 800D6FB4 8FA4002C */  lw         $a0, 0x2c($sp)
/* B23B8 800D6FB8 8FA50030 */  lw         $a1, 0x30($sp)
/* B23BC 800D6FBC 8FA60034 */  lw         $a2, 0x34($sp)
/* B23C0 800D6FC0 8FA70038 */  lw         $a3, 0x38($sp)
/* B23C4 800D6FC4 AFAE0010 */  sw         $t6, 0x10($sp)
/* B23C8 800D6FC8 0C0354E5 */  jal        func_800D5394
/* B23CC 800D6FCC AFAF0014 */   sw        $t7, 0x14($sp)
.L800D6FD0:
/* B23D0 800D6FD0 3C188017 */  lui        $t8, %hi(D_80174874)
/* B23D4 800D6FD4 8F184874 */  lw         $t8, %lo(D_80174874)($t8)
/* B23D8 800D6FD8 24010009 */  addiu      $at, $zero, 9
/* B23DC 800D6FDC 8FA2003C */  lw         $v0, 0x3c($sp)
/* B23E0 800D6FE0 5701000E */  bnel       $t8, $at, .L800D701C
/* B23E4 800D6FE4 8FBF0024 */   lw        $ra, 0x24($sp)
/* B23E8 800D6FE8 C4460004 */  lwc1       $f6, 4($v0)
/* B23EC 800D6FEC 3C014059 */  lui        $at, 0x4059
/* B23F0 800D6FF0 44818800 */  mtc1       $at, $f17
/* B23F4 800D6FF4 44808000 */  mtc1       $zero, $f16
/* B23F8 800D6FF8 46003221 */  cvt.d.s    $f8, $f6
/* B23FC 800D6FFC 4630403C */  c.lt.d     $f8, $f16
/* B2400 800D7000 00000000 */  nop
/* B2404 800D7004 45000004 */  bc1f       .L800D7018
/* B2408 800D7008 3C0142C8 */   lui       $at, 0x42c8
/* B240C 800D700C 44819000 */  mtc1       $at, $f18
/* B2410 800D7010 00000000 */  nop
/* B2414 800D7014 E4520004 */  swc1       $f18, 4($v0)
.L800D7018:
/* B2418 800D7018 8FBF0024 */  lw         $ra, 0x24($sp)
.L800D701C:
/* B241C 800D701C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B2420 800D7020 03E00008 */  jr         $ra
/* B2424 800D7024 00000000 */   nop

glabel func_800D7028
/* B2428 800D7028 3C028024 */  lui        $v0, %hi(D_80240CD8)
/* B242C 800D702C 8C420CD8 */  lw         $v0, %lo(D_80240CD8)($v0)
/* B2430 800D7030 3C088017 */  lui        $t0, %hi(D_80174874)
/* B2434 800D7034 25084874 */  addiu      $t0, $t0, %lo(D_80174874)
/* B2438 800D7038 000270C0 */  sll        $t6, $v0, 3
/* B243C 800D703C 01C27023 */  subu       $t6, $t6, $v0
/* B2440 800D7040 8D180000 */  lw         $t8, ($t0)
/* B2444 800D7044 000E7080 */  sll        $t6, $t6, 2
/* B2448 800D7048 3C0F8024 */  lui        $t7, %hi(D_80240CE0)
/* B244C 800D704C 01C27023 */  subu       $t6, $t6, $v0
/* B2450 800D7050 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* B2454 800D7054 000E70C0 */  sll        $t6, $t6, 3
/* B2458 800D7058 25EF0CE0 */  addiu      $t7, $t7, %lo(D_80240CE0)
/* B245C 800D705C 24010005 */  addiu      $at, $zero, 5
/* B2460 800D7060 AFBF0024 */  sw         $ra, 0x24($sp)
/* B2464 800D7064 17010010 */  bne        $t8, $at, .L800D70A8
/* B2468 800D7068 01CF1821 */   addu      $v1, $t6, $t7
/* B246C 800D706C 2401000E */  addiu      $at, $zero, 0xe
/* B2470 800D7070 1441000D */  bne        $v0, $at, .L800D70A8
/* B2474 800D7074 3C048017 */   lui       $a0, 0x8017
/* B2478 800D7078 3C058017 */  lui        $a1, %hi(D_80169268)
/* B247C 800D707C 3C068017 */  lui        $a2, %hi(D_8016AA98)
/* B2480 800D7080 27B90030 */  addiu      $t9, $sp, 0x30
/* B2484 800D7084 AFB90010 */  sw         $t9, 0x10($sp)
/* B2488 800D7088 24C6AA98 */  addiu      $a2, $a2, %lo(D_8016AA98)
/* B248C 800D708C 24A59268 */  addiu      $a1, $a1, %lo(D_80169268)
/* B2490 800D7090 24848DA8 */  addiu      $a0, $a0, -0x7258
/* B2494 800D7094 0C035A19 */  jal        func_800D6864
/* B2498 800D7098 27A7003C */   addiu     $a3, $sp, 0x3c
/* B249C 800D709C 3C088017 */  lui        $t0, %hi(D_80174874)
/* B24A0 800D70A0 10000036 */  b          .L800D717C
/* B24A4 800D70A4 25084874 */   addiu     $t0, $t0, %lo(D_80174874)
.L800D70A8:
/* B24A8 800D70A8 3C098023 */  lui        $t1, %hi(D_80236974)
/* B24AC 800D70AC 8D296974 */  lw         $t1, %lo(D_80236974)($t1)
/* B24B0 800D70B0 24020001 */  addiu      $v0, $zero, 1
/* B24B4 800D70B4 3C0A8021 */  lui        $t2, %hi(D_8020D8F4)
/* B24B8 800D70B8 14490011 */  bne        $v0, $t1, .L800D7100
/* B24BC 800D70BC 3C0C8017 */   lui       $t4, 0x8017
/* B24C0 800D70C0 8D4AD8F4 */  lw         $t2, %lo(D_8020D8F4)($t2)
/* B24C4 800D70C4 3C048017 */  lui        $a0, %hi(D_80168DA8)
/* B24C8 800D70C8 24848DA8 */  addiu      $a0, $a0, %lo(D_80168DA8)
/* B24CC 800D70CC 1540000C */  bnez       $t2, .L800D7100
/* B24D0 800D70D0 3C058017 */   lui       $a1, %hi(D_80169268)
/* B24D4 800D70D4 3C068017 */  lui        $a2, %hi(D_8016AA98)
/* B24D8 800D70D8 27AB0030 */  addiu      $t3, $sp, 0x30
/* B24DC 800D70DC AFAB0010 */  sw         $t3, 0x10($sp)
/* B24E0 800D70E0 24C6AA98 */  addiu      $a2, $a2, %lo(D_8016AA98)
/* B24E4 800D70E4 24A59268 */  addiu      $a1, $a1, %lo(D_80169268)
/* B24E8 800D70E8 27A7003C */  addiu      $a3, $sp, 0x3c
/* B24EC 800D70EC 0C034E15 */  jal        func_800D3854
/* B24F0 800D70F0 AFA00014 */   sw        $zero, 0x14($sp)
/* B24F4 800D70F4 3C088017 */  lui        $t0, %hi(D_80174874)
/* B24F8 800D70F8 10000020 */  b          .L800D717C
/* B24FC 800D70FC 25084874 */   addiu     $t0, $t0, %lo(D_80174874)
.L800D7100:
/* B2500 800D7100 8D8CAA98 */  lw         $t4, -0x5568($t4)
/* B2504 800D7104 3C048017 */  lui        $a0, %hi(D_80168DA8)
/* B2508 800D7108 24848DA8 */  addiu      $a0, $a0, %lo(D_80168DA8)
/* B250C 800D710C 144C0011 */  bne        $v0, $t4, .L800D7154
/* B2510 800D7110 3C058017 */   lui       $a1, 0x8017
/* B2514 800D7114 8C640094 */  lw         $a0, 0x94($v1)
/* B2518 800D7118 3C058017 */  lui        $a1, 0x8017
/* B251C 800D711C 3C068017 */  lui        $a2, 0x8017
/* B2520 800D7120 3C078017 */  lui        $a3, %hi(D_8016AA98)
/* B2524 800D7124 27AD003C */  addiu      $t5, $sp, 0x3c
/* B2528 800D7128 27AE0030 */  addiu      $t6, $sp, 0x30
/* B252C 800D712C AFAE0014 */  sw         $t6, 0x14($sp)
/* B2530 800D7130 AFAD0010 */  sw         $t5, 0x10($sp)
/* B2534 800D7134 24E7AA98 */  addiu      $a3, $a3, %lo(D_8016AA98)
/* B2538 800D7138 24C69268 */  addiu      $a2, $a2, -0x6d98
/* B253C 800D713C 24A58DA8 */  addiu      $a1, $a1, -0x7258
/* B2540 800D7140 0C035A74 */  jal        func_800D69D0
/* B2544 800D7144 AFA00018 */   sw        $zero, 0x18($sp)
/* B2548 800D7148 3C088017 */  lui        $t0, %hi(D_80174874)
/* B254C 800D714C 1000000B */  b          .L800D717C
/* B2550 800D7150 25084874 */   addiu     $t0, $t0, %lo(D_80174874)
.L800D7154:
/* B2554 800D7154 3C068017 */  lui        $a2, %hi(D_8016AA98)
/* B2558 800D7158 27AF0030 */  addiu      $t7, $sp, 0x30
/* B255C 800D715C AFAF0010 */  sw         $t7, 0x10($sp)
/* B2560 800D7160 24C6AA98 */  addiu      $a2, $a2, %lo(D_8016AA98)
/* B2564 800D7164 24A59268 */  addiu      $a1, $a1, -0x6d98
/* B2568 800D7168 27A7003C */  addiu      $a3, $sp, 0x3c
/* B256C 800D716C 0C0354E5 */  jal        func_800D5394
/* B2570 800D7170 AFA00014 */   sw        $zero, 0x14($sp)
/* B2574 800D7174 3C088017 */  lui        $t0, %hi(D_80174874)
/* B2578 800D7178 25084874 */  addiu      $t0, $t0, %lo(D_80174874)
.L800D717C:
/* B257C 800D717C 3C028017 */  lui        $v0, %hi(D_8016AA98)
/* B2580 800D7180 2442AA98 */  addiu      $v0, $v0, %lo(D_8016AA98)
/* B2584 800D7184 00001825 */  or         $v1, $zero, $zero
/* B2588 800D7188 24050004 */  addiu      $a1, $zero, 4
/* B258C 800D718C 24040007 */  addiu      $a0, $zero, 7
.L800D7190:
/* B2590 800D7190 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* B2594 800D7194 24630001 */  addiu      $v1, $v1, 1
/* B2598 800D7198 E4440034 */  swc1       $f4, 0x34($v0)
/* B259C 800D719C C7A60040 */  lwc1       $f6, 0x40($sp)
/* B25A0 800D71A0 E4460038 */  swc1       $f6, 0x38($v0)
/* B25A4 800D71A4 C7A80044 */  lwc1       $f8, 0x44($sp)
/* B25A8 800D71A8 E448003C */  swc1       $f8, 0x3c($v0)
/* B25AC 800D71AC C7AA0030 */  lwc1       $f10, 0x30($sp)
/* B25B0 800D71B0 E44A0028 */  swc1       $f10, 0x28($v0)
/* B25B4 800D71B4 C7B00034 */  lwc1       $f16, 0x34($sp)
/* B25B8 800D71B8 E450002C */  swc1       $f16, 0x2c($v0)
/* B25BC 800D71BC C7B20038 */  lwc1       $f18, 0x38($sp)
/* B25C0 800D71C0 E4520030 */  swc1       $f18, 0x30($v0)
/* B25C4 800D71C4 8D180000 */  lw         $t8, ($t0)
/* B25C8 800D71C8 54980004 */  bnel       $a0, $t8, .L800D71DC
/* B25CC 800D71CC 8FBF0024 */   lw        $ra, 0x24($sp)
/* B25D0 800D71D0 1465FFEF */  bne        $v1, $a1, .L800D7190
/* B25D4 800D71D4 24420074 */   addiu     $v0, $v0, 0x74
/* B25D8 800D71D8 8FBF0024 */  lw         $ra, 0x24($sp)
.L800D71DC:
/* B25DC 800D71DC 27BD0058 */  addiu      $sp, $sp, 0x58
/* B25E0 800D71E0 03E00008 */  jr         $ra
/* B25E4 800D71E4 00000000 */   nop

glabel func_800D71E8
/* B25E8 800D71E8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B25EC 800D71EC AFA60038 */  sw         $a2, 0x38($sp)
/* B25F0 800D71F0 AFA7003C */  sw         $a3, 0x3c($sp)
/* B25F4 800D71F4 C7A40038 */  lwc1       $f4, 0x38($sp)
/* B25F8 800D71F8 C7A60040 */  lwc1       $f6, 0x40($sp)
/* B25FC 800D71FC C7A8003C */  lwc1       $f8, 0x3c($sp)
/* B2600 800D7200 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* B2604 800D7204 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2608 800D7208 E7AC0018 */  swc1       $f12, 0x18($sp)
/* B260C 800D720C E7AE0024 */  swc1       $f14, 0x24($sp)
/* B2610 800D7210 27A40018 */  addiu      $a0, $sp, 0x18
/* B2614 800D7214 E7A4001C */  swc1       $f4, 0x1c($sp)
/* B2618 800D7218 E7A60020 */  swc1       $f6, 0x20($sp)
/* B261C 800D721C E7A80028 */  swc1       $f8, 0x28($sp)
/* B2620 800D7220 0C02BA1F */  jal        func_800AE87C
/* B2624 800D7224 E7AA002C */   swc1      $f10, 0x2c($sp)
/* B2628 800D7228 27A40018 */  addiu      $a0, $sp, 0x18
/* B262C 800D722C 24050077 */  addiu      $a1, $zero, 0x77
/* B2630 800D7230 0C0325D2 */  jal        func_800C9748
/* B2634 800D7234 24060002 */   addiu     $a2, $zero, 2
/* B2638 800D7238 8FBF0014 */  lw         $ra, 0x14($sp)
/* B263C 800D723C 27BD0030 */  addiu      $sp, $sp, 0x30
/* B2640 800D7240 03E00008 */  jr         $ra
/* B2644 800D7244 00000000 */   nop

glabel func_800D7248
/* B2648 800D7248 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B264C 800D724C AFA60040 */  sw         $a2, 0x40($sp)
/* B2650 800D7250 C7A40040 */  lwc1       $f4, 0x40($sp)
/* B2654 800D7254 AFBF001C */  sw         $ra, 0x1c($sp)
/* B2658 800D7258 AFA70044 */  sw         $a3, 0x44($sp)
/* B265C 800D725C E7AC002C */  swc1       $f12, 0x2c($sp)
/* B2660 800D7260 E7AE0030 */  swc1       $f14, 0x30($sp)
/* B2664 800D7264 27AE002C */  addiu      $t6, $sp, 0x2c
/* B2668 800D7268 E7A40034 */  swc1       $f4, 0x34($sp)
/* B266C 800D726C 8DC10000 */  lw         $at, ($t6)
/* B2670 800D7270 C7A60048 */  lwc1       $f6, 0x48($sp)
/* B2674 800D7274 AFA10000 */  sw         $at, ($sp)
/* B2678 800D7278 8DC50004 */  lw         $a1, 4($t6)
/* B267C 800D727C 8FA40000 */  lw         $a0, ($sp)
/* B2680 800D7280 AFA50004 */  sw         $a1, 4($sp)
/* B2684 800D7284 8DC60008 */  lw         $a2, 8($t6)
/* B2688 800D7288 E7A60010 */  swc1       $f6, 0x10($sp)
/* B268C 800D728C 0C032BE2 */  jal        func_800CAF88
/* B2690 800D7290 AFA60008 */   sw        $a2, 8($sp)
/* B2694 800D7294 1040000C */  beqz       $v0, .L800D72C8
/* B2698 800D7298 00001825 */   or        $v1, $zero, $zero
/* B269C 800D729C C4480094 */  lwc1       $f8, 0x94($v0)
/* B26A0 800D72A0 8FB9004C */  lw         $t9, 0x4c($sp)
/* B26A4 800D72A4 24030001 */  addiu      $v1, $zero, 1
/* B26A8 800D72A8 E7280000 */  swc1       $f8, ($t9)
/* B26AC 800D72AC 8FA80050 */  lw         $t0, 0x50($sp)
/* B26B0 800D72B0 C44A0098 */  lwc1       $f10, 0x98($v0)
/* B26B4 800D72B4 E50A0000 */  swc1       $f10, ($t0)
/* B26B8 800D72B8 8FA90054 */  lw         $t1, 0x54($sp)
/* B26BC 800D72BC C450009C */  lwc1       $f16, 0x9c($v0)
/* B26C0 800D72C0 10000001 */  b          .L800D72C8
/* B26C4 800D72C4 E5300000 */   swc1      $f16, ($t1)
.L800D72C8:
/* B26C8 800D72C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B26CC 800D72CC 27BD0038 */  addiu      $sp, $sp, 0x38
/* B26D0 800D72D0 00601025 */  or         $v0, $v1, $zero
/* B26D4 800D72D4 03E00008 */  jr         $ra
/* B26D8 800D72D8 00000000 */   nop

glabel func_800D72DC
/* B26DC 800D72DC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B26E0 800D72E0 AFA60058 */  sw         $a2, 0x58($sp)
/* B26E4 800D72E4 AFA7005C */  sw         $a3, 0x5c($sp)
/* B26E8 800D72E8 C7A40058 */  lwc1       $f4, 0x58($sp)
/* B26EC 800D72EC C7A6005C */  lwc1       $f6, 0x5c($sp)
/* B26F0 800D72F0 C7A80060 */  lwc1       $f8, 0x60($sp)
/* B26F4 800D72F4 C7AA0064 */  lwc1       $f10, 0x64($sp)
/* B26F8 800D72F8 AFBF002C */  sw         $ra, 0x2c($sp)
/* B26FC 800D72FC E7AC0044 */  swc1       $f12, 0x44($sp)
/* B2700 800D7300 E7AE0048 */  swc1       $f14, 0x48($sp)
/* B2704 800D7304 27AE0044 */  addiu      $t6, $sp, 0x44
/* B2708 800D7308 E7A4004C */  swc1       $f4, 0x4c($sp)
/* B270C 800D730C E7A60038 */  swc1       $f6, 0x38($sp)
/* B2710 800D7310 E7A8003C */  swc1       $f8, 0x3c($sp)
/* B2714 800D7314 E7AA0040 */  swc1       $f10, 0x40($sp)
/* B2718 800D7318 8DC10000 */  lw         $at, ($t6)
/* B271C 800D731C 27B90038 */  addiu      $t9, $sp, 0x38
/* B2720 800D7320 240A0077 */  addiu      $t2, $zero, 0x77
/* B2724 800D7324 AFA10000 */  sw         $at, ($sp)
/* B2728 800D7328 8DC50004 */  lw         $a1, 4($t6)
/* B272C 800D732C 240B0001 */  addiu      $t3, $zero, 1
/* B2730 800D7330 240C0001 */  addiu      $t4, $zero, 1
/* B2734 800D7334 AFA50004 */  sw         $a1, 4($sp)
/* B2738 800D7338 8DC10008 */  lw         $at, 8($t6)
/* B273C 800D733C 8FA40000 */  lw         $a0, ($sp)
/* B2740 800D7340 AFA10008 */  sw         $at, 8($sp)
/* B2744 800D7344 8F210000 */  lw         $at, ($t9)
/* B2748 800D7348 8FA60008 */  lw         $a2, 8($sp)
/* B274C 800D734C AFA1000C */  sw         $at, 0xc($sp)
/* B2750 800D7350 8F290004 */  lw         $t1, 4($t9)
/* B2754 800D7354 8FA7000C */  lw         $a3, 0xc($sp)
/* B2758 800D7358 AFA90010 */  sw         $t1, 0x10($sp)
/* B275C 800D735C 8F210008 */  lw         $at, 8($t9)
/* B2760 800D7360 AFAC0020 */  sw         $t4, 0x20($sp)
/* B2764 800D7364 AFAB001C */  sw         $t3, 0x1c($sp)
/* B2768 800D7368 AFAA0018 */  sw         $t2, 0x18($sp)
/* B276C 800D736C 0C032A3E */  jal        func_800CA8F8
/* B2770 800D7370 AFA10014 */   sw        $at, 0x14($sp)
/* B2774 800D7374 1040000C */  beqz       $v0, .L800D73A8
/* B2778 800D7378 00001825 */   or        $v1, $zero, $zero
/* B277C 800D737C C4500094 */  lwc1       $f16, 0x94($v0)
/* B2780 800D7380 8FAD0068 */  lw         $t5, 0x68($sp)
/* B2784 800D7384 24030001 */  addiu      $v1, $zero, 1
/* B2788 800D7388 E5B00000 */  swc1       $f16, ($t5)
/* B278C 800D738C 8FAF006C */  lw         $t7, 0x6c($sp)
/* B2790 800D7390 C4520098 */  lwc1       $f18, 0x98($v0)
/* B2794 800D7394 E5F20000 */  swc1       $f18, ($t7)
/* B2798 800D7398 8FAE0070 */  lw         $t6, 0x70($sp)
/* B279C 800D739C C444009C */  lwc1       $f4, 0x9c($v0)
/* B27A0 800D73A0 10000001 */  b          .L800D73A8
/* B27A4 800D73A4 E5C40000 */   swc1      $f4, ($t6)
.L800D73A8:
/* B27A8 800D73A8 8FBF002C */  lw         $ra, 0x2c($sp)
/* B27AC 800D73AC 27BD0050 */  addiu      $sp, $sp, 0x50
/* B27B0 800D73B0 00601025 */  or         $v0, $v1, $zero
/* B27B4 800D73B4 03E00008 */  jr         $ra
/* B27B8 800D73B8 00000000 */   nop

glabel func_800D73BC
/* B27BC 800D73BC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B27C0 800D73C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B27C4 800D73C4 AFA40038 */  sw         $a0, 0x38($sp)
/* B27C8 800D73C8 AFA5003C */  sw         $a1, 0x3c($sp)
/* B27CC 800D73CC AFA60040 */  sw         $a2, 0x40($sp)
/* B27D0 800D73D0 C4840000 */  lwc1       $f4, ($a0)
/* B27D4 800D73D4 27B90020 */  addiu      $t9, $sp, 0x20
/* B27D8 800D73D8 44876000 */  mtc1       $a3, $f12
/* B27DC 800D73DC E7A40020 */  swc1       $f4, 0x20($sp)
/* B27E0 800D73E0 C4A60000 */  lwc1       $f6, ($a1)
/* B27E4 800D73E4 240A0077 */  addiu      $t2, $zero, 0x77
/* B27E8 800D73E8 27A4002C */  addiu      $a0, $sp, 0x2c
/* B27EC 800D73EC E7A60024 */  swc1       $f6, 0x24($sp)
/* B27F0 800D73F0 C4C80000 */  lwc1       $f8, ($a2)
/* B27F4 800D73F4 E7A80028 */  swc1       $f8, 0x28($sp)
/* B27F8 800D73F8 8F210000 */  lw         $at, ($t9)
/* B27FC 800D73FC AFA10004 */  sw         $at, 4($sp)
/* B2800 800D7400 8F260004 */  lw         $a2, 4($t9)
/* B2804 800D7404 8FA50004 */  lw         $a1, 4($sp)
/* B2808 800D7408 AFA60008 */  sw         $a2, 8($sp)
/* B280C 800D740C 8F270008 */  lw         $a3, 8($t9)
/* B2810 800D7410 AFAA0014 */  sw         $t2, 0x14($sp)
/* B2814 800D7414 E7AC0010 */  swc1       $f12, 0x10($sp)
/* B2818 800D7418 0C0329CD */  jal        func_800CA734
/* B281C 800D741C AFA7000C */   sw        $a3, 0xc($sp)
/* B2820 800D7420 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* B2824 800D7424 8FAB0038 */  lw         $t3, 0x38($sp)
/* B2828 800D7428 E56A0000 */  swc1       $f10, ($t3)
/* B282C 800D742C 8FAC003C */  lw         $t4, 0x3c($sp)
/* B2830 800D7430 C7B00030 */  lwc1       $f16, 0x30($sp)
/* B2834 800D7434 E5900000 */  swc1       $f16, ($t4)
/* B2838 800D7438 8FAD0040 */  lw         $t5, 0x40($sp)
/* B283C 800D743C C7B20034 */  lwc1       $f18, 0x34($sp)
/* B2840 800D7440 E5B20000 */  swc1       $f18, ($t5)
/* B2844 800D7444 8FBF001C */  lw         $ra, 0x1c($sp)
/* B2848 800D7448 27BD0038 */  addiu      $sp, $sp, 0x38
/* B284C 800D744C 03E00008 */  jr         $ra
/* B2850 800D7450 00000000 */   nop
/* B2854 800D7454 00000000 */  nop
/* B2858 800D7458 00000000 */  nop
/* B285C 800D745C 00000000 */  nop
