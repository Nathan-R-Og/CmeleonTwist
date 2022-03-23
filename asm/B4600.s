.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D9200
/* B4600 800D9200 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B4604 800D9204 AFB30054 */  sw         $s3, 0x54($sp)
/* B4608 800D9208 326EFFFF */  andi       $t6, $s3, 0xffff
/* B460C 800D920C 01C09825 */  or         $s3, $t6, $zero
/* B4610 800D9210 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4614 800D9214 00A08025 */  or         $s0, $a1, $zero
/* B4618 800D9218 00001825 */  or         $v1, $zero, $zero
/* B461C 800D921C 00A01025 */  or         $v0, $a1, $zero
.L800D9220:
/* B4620 800D9220 24630001 */  addiu      $v1, $v1, 1
/* B4624 800D9224 2861000F */  slti       $at, $v1, 0xf
/* B4628 800D9228 24420004 */  addiu      $v0, $v0, 4
/* B462C 800D922C 1420FFFC */  bnez       $at, .L800D9220
/* B4630 800D9230 AC40FFFC */   sw        $zero, -4($v0)
/* B4634 800D9234 240F0001 */  addiu      $t7, $zero, 1
/* B4638 800D9238 ACAF003C */  sw         $t7, 0x3c($a1)
/* B463C 800D923C 241800FF */  addiu      $t8, $zero, 0xff
/* B4640 800D9240 24190023 */  addiu      $t9, $zero, 0x23
/* B4644 800D9244 240E0001 */  addiu      $t6, $zero, 1
/* B4648 800D9248 240F0003 */  addiu      $t7, $zero, 3
/* B464C 800D924C A3B80024 */  sb         $t8, 0x24($sp)
/* B4650 800D9250 A3B90025 */  sb         $t9, 0x25($sp)
/* B4654 800D9254 A3AE0026 */  sb         $t6, 0x26($sp)
/* B4658 800D9258 A3AF0027 */  sb         $t7, 0x27($sp)
/* B465C 800D925C 0C0383E0 */  jal        func_800E0F80
/* B4660 800D9260 3264FFFF */   andi      $a0, $s3, 0xffff
/* B4664 800D9264 0013C140 */  sll        $t8, $s3, 5
/* B4668 800D9268 0058C825 */  or         $t9, $v0, $t8
/* B466C 800D926C 240E00FF */  addiu      $t6, $zero, 0xff
/* B4670 800D9270 A7B90028 */  sh         $t9, 0x28($sp)
/* B4674 800D9274 A3AE004A */  sb         $t6, 0x4a($sp)
/* B4678 800D9278 27A20044 */  addiu      $v0, $sp, 0x44
/* B467C 800D927C 27A40024 */  addiu      $a0, $sp, 0x24
.L800D9280:
/* B4680 800D9280 922F0000 */  lbu        $t7, ($s1)
/* B4684 800D9284 24840001 */  addiu      $a0, $a0, 1
/* B4688 800D9288 0082082B */  sltu       $at, $a0, $v0
/* B468C 800D928C 26310001 */  addiu      $s1, $s1, 1
/* B4690 800D9290 1420FFFB */  bnez       $at, .L800D9280
/* B4694 800D9294 A08F0005 */   sb        $t7, 5($a0)
/* B4698 800D9298 12400012 */  beqz       $s2, .L800D92E4
/* B469C 800D929C 27B80024 */   addiu     $t8, $sp, 0x24
/* B46A0 800D92A0 1A400010 */  blez       $s2, .L800D92E4
/* B46A4 800D92A4 00001825 */   or        $v1, $zero, $zero
/* B46A8 800D92A8 32440003 */  andi       $a0, $s2, 3
/* B46AC 800D92AC 10800006 */  beqz       $a0, .L800D92C8
/* B46B0 800D92B0 00801025 */   or        $v0, $a0, $zero
.L800D92B4:
/* B46B4 800D92B4 24630001 */  addiu      $v1, $v1, 1
/* B46B8 800D92B8 A2000000 */  sb         $zero, ($s0)
/* B46BC 800D92BC 1443FFFD */  bne        $v0, $v1, .L800D92B4
/* B46C0 800D92C0 26100001 */   addiu     $s0, $s0, 1
/* B46C4 800D92C4 10720007 */  beq        $v1, $s2, .L800D92E4
.L800D92C8:
/* B46C8 800D92C8 24630004 */   addiu     $v1, $v1, 4
/* B46CC 800D92CC A2000001 */  sb         $zero, 1($s0)
/* B46D0 800D92D0 A2000002 */  sb         $zero, 2($s0)
/* B46D4 800D92D4 A2000003 */  sb         $zero, 3($s0)
/* B46D8 800D92D8 26100004 */  addiu      $s0, $s0, 4
/* B46DC 800D92DC 1472FFFA */  bne        $v1, $s2, .L800D92C8
/* B46E0 800D92E0 A200FFFC */   sb        $zero, -4($s0)
.L800D92E4:
/* B46E4 800D92E4 02007825 */  or         $t7, $s0, $zero
/* B46E8 800D92E8 270E0024 */  addiu      $t6, $t8, 0x24
.L800D92EC:
/* B46EC 800D92EC 8F010000 */  lw         $at, ($t8)
/* B46F0 800D92F0 2718000C */  addiu      $t8, $t8, 0xc
/* B46F4 800D92F4 A9E10000 */  swl        $at, ($t7)
/* B46F8 800D92F8 B9E10003 */  swr        $at, 3($t7)
/* B46FC 800D92FC 8F01FFF8 */  lw         $at, -8($t8)
/* B4700 800D9300 25EF000C */  addiu      $t7, $t7, 0xc
/* B4704 800D9304 A9E1FFF8 */  swl        $at, -8($t7)
/* B4708 800D9308 B9E1FFFB */  swr        $at, -5($t7)
/* B470C 800D930C 8F01FFFC */  lw         $at, -4($t8)
/* B4710 800D9310 00000000 */  nop
/* B4714 800D9314 A9E1FFFC */  swl        $at, -4($t7)
/* B4718 800D9318 170EFFF4 */  bne        $t8, $t6, .L800D92EC
/* B471C 800D931C B9E1FFFF */   swr       $at, -1($t7)
/* B4720 800D9320 8F010000 */  lw         $at, ($t8)
/* B4724 800D9324 241900FE */  addiu      $t9, $zero, 0xfe
/* B4728 800D9328 A9E10000 */  swl        $at, ($t7)
/* B472C 800D932C B9E10003 */  swr        $at, 3($t7)
/* B4730 800D9330 A2190028 */  sb         $t9, 0x28($s0)
/* B4734 800D9334 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4738 800D9338 26100028 */  addiu      $s0, $s0, 0x28
/* B473C 800D933C 03E00008 */  jr         $ra
/* B4740 800D9340 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800D9344
/* B4744 800D9344 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B4748 800D9348 AFB40030 */  sw         $s4, 0x30($sp)
/* B474C 800D934C AFBF0034 */  sw         $ra, 0x34($sp)
/* B4750 800D9350 AFB3002C */  sw         $s3, 0x2c($sp)
/* B4754 800D9354 AFB20028 */  sw         $s2, 0x28($sp)
/* B4758 800D9358 AFB10024 */  sw         $s1, 0x24($sp)
/* B475C 800D935C AFB00020 */  sw         $s0, 0x20($sp)
/* B4760 800D9360 24070080 */  addiu      $a3, $zero, 0x80
/* B4764 800D9364 00C0A025 */  or         $s4, $a2, $zero
/* B4768 800D9368 ACA40004 */  sw         $a0, 4($a1)
/* B476C 800D936C ACA60008 */  sw         $a2, 8($a1)
/* B4770 800D9370 ACA00000 */  sw         $zero, ($a1)
/* B4774 800D9374 A0A70065 */  sb         $a3, 0x65($a1)
/* B4778 800D9378 27A20040 */  addiu      $v0, $sp, 0x40
/* B477C 800D937C 27A30060 */  addiu      $v1, $sp, 0x60
.L800D9380:
/* B4780 800D9380 24420001 */  addiu      $v0, $v0, 1
/* B4784 800D9384 0043082B */  sltu       $at, $v0, $v1
/* B4788 800D9388 1420FFFD */  bnez       $at, .L800D9380
/* B478C 800D938C A047FFFF */   sb        $a3, -1($v0)
/* B4790 800D9390 02802825 */  or         $a1, $s4, $zero
/* B4794 800D9394 24060400 */  addiu      $a2, $zero, 0x400
/* B4798 800D9398 27A70040 */  addiu      $a3, $sp, 0x40
/* B479C 800D939C AFA00010 */  sw         $zero, 0x10($sp)
/* B47A0 800D93A0 0C038440 */  jal        func_800E1100
/* B47A4 800D93A4 AFA40068 */   sw        $a0, 0x68($sp)
/* B47A8 800D93A8 24010002 */  addiu      $at, $zero, 2
/* B47AC 800D93AC 14410008 */  bne        $v0, $at, .L800D93D0
/* B47B0 800D93B0 00401825 */   or        $v1, $v0, $zero
/* B47B4 800D93B4 8FA40068 */  lw         $a0, 0x68($sp)
/* B47B8 800D93B8 02802825 */  or         $a1, $s4, $zero
/* B47BC 800D93BC 24060400 */  addiu      $a2, $zero, 0x400
/* B47C0 800D93C0 27A70040 */  addiu      $a3, $sp, 0x40
/* B47C4 800D93C4 0C038440 */  jal        func_800E1100
/* B47C8 800D93C8 AFA00010 */   sw        $zero, 0x10($sp)
/* B47CC 800D93CC 00401825 */  or         $v1, $v0, $zero
.L800D93D0:
/* B47D0 800D93D0 10400003 */  beqz       $v0, .L800D93E0
/* B47D4 800D93D4 02802825 */   or        $a1, $s4, $zero
/* B47D8 800D93D8 10000038 */  b          .L800D94BC
/* B47DC 800D93DC 00601025 */   or        $v0, $v1, $zero
.L800D93E0:
/* B47E0 800D93E0 8FA40068 */  lw         $a0, 0x68($sp)
/* B47E4 800D93E4 24060400 */  addiu      $a2, $zero, 0x400
/* B47E8 800D93E8 0C03852C */  jal        func_800E14B0
/* B47EC 800D93EC 27A70040 */   addiu     $a3, $sp, 0x40
/* B47F0 800D93F0 24010002 */  addiu      $at, $zero, 2
/* B47F4 800D93F4 14410002 */  bne        $v0, $at, .L800D9400
/* B47F8 800D93F8 00401825 */   or        $v1, $v0, $zero
/* B47FC 800D93FC 24030004 */  addiu      $v1, $zero, 4
.L800D9400:
/* B4800 800D9400 10600004 */  beqz       $v1, .L800D9414
/* B4804 800D9404 93AE005F */   lbu       $t6, 0x5f($sp)
/* B4808 800D9408 1000002C */  b          .L800D94BC
/* B480C 800D940C 00601025 */   or        $v0, $v1, $zero
/* B4810 800D9410 93AE005F */  lbu        $t6, 0x5f($sp)
.L800D9414:
/* B4814 800D9414 24010080 */  addiu      $at, $zero, 0x80
/* B4818 800D9418 11C10003 */  beq        $t6, $at, .L800D9428
/* B481C 800D941C 3C048025 */   lui       $a0, 0x8025
/* B4820 800D9420 10000026 */  b          .L800D94BC
/* B4824 800D9424 2402000B */   addiu     $v0, $zero, 0xb
.L800D9428:
/* B4828 800D9428 3C038025 */  lui        $v1, %hi(D_80248C30)
/* B482C 800D942C 3C058025 */  lui        $a1, %hi(D_80248C50)
/* B4830 800D9430 24A58C50 */  addiu      $a1, $a1, %lo(D_80248C50)
/* B4834 800D9434 24638C30 */  addiu      $v1, $v1, %lo(D_80248C30)
/* B4838 800D9438 24848C50 */  addiu      $a0, $a0, -0x73b0
/* B483C 800D943C 24020001 */  addiu      $v0, $zero, 1
.L800D9440:
/* B4840 800D9440 24630004 */  addiu      $v1, $v1, 4
/* B4844 800D9444 A0820001 */  sb         $v0, 1($a0)
/* B4848 800D9448 A060FFFD */  sb         $zero, -3($v1)
/* B484C 800D944C A0820002 */  sb         $v0, 2($a0)
/* B4850 800D9450 A060FFFE */  sb         $zero, -2($v1)
/* B4854 800D9454 A0820003 */  sb         $v0, 3($a0)
/* B4858 800D9458 A060FFFF */  sb         $zero, -1($v1)
/* B485C 800D945C 24840004 */  addiu      $a0, $a0, 4
/* B4860 800D9460 A082FFFC */  sb         $v0, -4($a0)
/* B4864 800D9464 1465FFF6 */  bne        $v1, $a1, .L800D9440
/* B4868 800D9468 A060FFFC */   sb        $zero, -4($v1)
/* B486C 800D946C 3C0F8025 */  lui        $t7, %hi(D_80248B30)
/* B4870 800D9470 25EF8B30 */  addiu      $t7, $t7, %lo(D_80248B30)
/* B4874 800D9474 3C118025 */  lui        $s1, %hi(D_80248C50)
/* B4878 800D9478 00141180 */  sll        $v0, $s4, 6
/* B487C 800D947C 004F2821 */  addu       $a1, $v0, $t7
/* B4880 800D9480 AFA2003C */  sw         $v0, 0x3c($sp)
/* B4884 800D9484 26318C50 */  addiu      $s1, $s1, %lo(D_80248C50)
/* B4888 800D9488 02809025 */  or         $s2, $s4, $zero
/* B488C 800D948C 0C036480 */  jal        func_800D9200
/* B4890 800D9490 24130600 */   addiu     $s3, $zero, 0x600
/* B4894 800D9494 8FA2003C */  lw         $v0, 0x3c($sp)
/* B4898 800D9498 3C188025 */  lui        $t8, %hi(D_80248A30)
/* B489C 800D949C 27188A30 */  addiu      $t8, $t8, %lo(D_80248A30)
/* B48A0 800D94A0 3C118025 */  lui        $s1, %hi(D_80248C30)
/* B48A4 800D94A4 26318C30 */  addiu      $s1, $s1, %lo(D_80248C30)
/* B48A8 800D94A8 02809025 */  or         $s2, $s4, $zero
/* B48AC 800D94AC 24130600 */  addiu      $s3, $zero, 0x600
/* B48B0 800D94B0 0C036480 */  jal        func_800D9200
/* B48B4 800D94B4 00582821 */   addu      $a1, $v0, $t8
/* B48B8 800D94B8 00001025 */  or         $v0, $zero, $zero
.L800D94BC:
/* B48BC 800D94BC 8FBF0034 */  lw         $ra, 0x34($sp)
/* B48C0 800D94C0 8FB00020 */  lw         $s0, 0x20($sp)
/* B48C4 800D94C4 8FB10024 */  lw         $s1, 0x24($sp)
/* B48C8 800D94C8 8FB20028 */  lw         $s2, 0x28($sp)
/* B48CC 800D94CC 8FB3002C */  lw         $s3, 0x2c($sp)
/* B48D0 800D94D0 8FB40030 */  lw         $s4, 0x30($sp)
/* B48D4 800D94D4 03E00008 */  jr         $ra
/* B48D8 800D94D8 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_800D94DC
/* B48DC 800D94DC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B48E0 800D94E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B48E4 800D94E4 0C038398 */  jal        func_800E0E60
/* B48E8 800D94E8 AFA40050 */   sw        $a0, 0x50($sp)
/* B48EC 800D94EC 8FAF0050 */  lw         $t7, 0x50($sp)
/* B48F0 800D94F0 240E0003 */  addiu      $t6, $zero, 3
/* B48F4 800D94F4 3C018025 */  lui        $at, %hi(D_8024B140)
/* B48F8 800D94F8 A02EB140 */  sb         $t6, %lo(D_8024B140)($at)
/* B48FC 800D94FC 8DF80008 */  lw         $t8, 8($t7)
/* B4900 800D9500 3C088025 */  lui        $t0, %hi(D_80248B30)
/* B4904 800D9504 25088B30 */  addiu      $t0, $t0, %lo(D_80248B30)
/* B4908 800D9508 0018C980 */  sll        $t9, $t8, 6
/* B490C 800D950C 03282821 */  addu       $a1, $t9, $t0
/* B4910 800D9510 0C0383B4 */  jal        func_800E0ED0
/* B4914 800D9514 24040001 */   addiu     $a0, $zero, 1
/* B4918 800D9518 8FA90050 */  lw         $t1, 0x50($sp)
/* B491C 800D951C 00002825 */  or         $a1, $zero, $zero
/* B4920 800D9520 8D240004 */  lw         $a0, 4($t1)
/* B4924 800D9524 0C036988 */  jal        func_800DA620
/* B4928 800D9528 24060001 */   addiu     $a2, $zero, 1
/* B492C 800D952C 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* B4930 800D9530 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* B4934 800D9534 0C0383B4 */  jal        func_800E0ED0
/* B4938 800D9538 00002025 */   or        $a0, $zero, $zero
/* B493C 800D953C 8FAA0050 */  lw         $t2, 0x50($sp)
/* B4940 800D9540 00002825 */  or         $a1, $zero, $zero
/* B4944 800D9544 8D440004 */  lw         $a0, 4($t2)
/* B4948 800D9548 0C036988 */  jal        func_800DA620
/* B494C 800D954C 24060001 */   addiu     $a2, $zero, 1
/* B4950 800D9550 8FAB0050 */  lw         $t3, 0x50($sp)
/* B4954 800D9554 3C038025 */  lui        $v1, %hi(D_8024B1E0)
/* B4958 800D9558 8D640008 */  lw         $a0, 8($t3)
/* B495C 800D955C 2463B1E0 */  addiu      $v1, $v1, %lo(D_8024B1E0)
/* B4960 800D9560 10800007 */  beqz       $a0, .L800D9580
/* B4964 800D9564 27AC001C */   addiu     $t4, $sp, 0x1c
/* B4968 800D9568 18800005 */  blez       $a0, .L800D9580
/* B496C 800D956C 00001025 */   or        $v0, $zero, $zero
.L800D9570:
/* B4970 800D9570 24420001 */  addiu      $v0, $v0, 1
/* B4974 800D9574 0044082A */  slt        $at, $v0, $a0
/* B4978 800D9578 1420FFFD */  bnez       $at, .L800D9570
/* B497C 800D957C 24630001 */   addiu     $v1, $v1, 1
.L800D9580:
/* B4980 800D9580 00607825 */  or         $t7, $v1, $zero
/* B4984 800D9584 246E0024 */  addiu      $t6, $v1, 0x24
.L800D9588:
/* B4988 800D9588 89E10000 */  lwl        $at, ($t7)
/* B498C 800D958C 99E10003 */  lwr        $at, 3($t7)
/* B4990 800D9590 25EF000C */  addiu      $t7, $t7, 0xc
/* B4994 800D9594 AD810000 */  sw         $at, ($t4)
/* B4998 800D9598 89E1FFF8 */  lwl        $at, -8($t7)
/* B499C 800D959C 99E1FFFB */  lwr        $at, -5($t7)
/* B49A0 800D95A0 258C000C */  addiu      $t4, $t4, 0xc
/* B49A4 800D95A4 AD81FFF8 */  sw         $at, -8($t4)
/* B49A8 800D95A8 89E1FFFC */  lwl        $at, -4($t7)
/* B49AC 800D95AC 99E1FFFF */  lwr        $at, -1($t7)
/* B49B0 800D95B0 15EEFFF5 */  bne        $t7, $t6, .L800D9588
/* B49B4 800D95B4 AD81FFFC */   sw        $at, -4($t4)
/* B49B8 800D95B8 89E10000 */  lwl        $at, ($t7)
/* B49BC 800D95BC 99E10003 */  lwr        $at, 3($t7)
/* B49C0 800D95C0 00000000 */  nop
/* B49C4 800D95C4 AD810000 */  sw         $at, ($t4)
/* B49C8 800D95C8 93A2001E */  lbu        $v0, 0x1e($sp)
/* B49CC 800D95CC 93A80042 */  lbu        $t0, 0x42($sp)
/* B49D0 800D95D0 305800C0 */  andi       $t8, $v0, 0xc0
/* B49D4 800D95D4 00182103 */  sra        $a0, $t8, 4
/* B49D8 800D95D8 14800004 */  bnez       $a0, .L800D95EC
/* B49DC 800D95DC 240100EB */   addiu     $at, $zero, 0xeb
/* B49E0 800D95E0 11010002 */  beq        $t0, $at, .L800D95EC
/* B49E4 800D95E4 00000000 */   nop
/* B49E8 800D95E8 24040004 */  addiu      $a0, $zero, 4
.L800D95EC:
/* B49EC 800D95EC 0C0383A9 */  jal        func_800E0EA4
/* B49F0 800D95F0 AFA40048 */   sw        $a0, 0x48($sp)
/* B49F4 800D95F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B49F8 800D95F8 8FA20048 */  lw         $v0, 0x48($sp)
/* B49FC 800D95FC 03E00008 */  jr         $ra
/* B4A00 800D9600 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800D9604
/* B4A04 800D9604 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B4A08 800D9608 AFBF0014 */  sw         $ra, 0x14($sp)
/* B4A0C 800D960C 0C038398 */  jal        func_800E0E60
/* B4A10 800D9610 AFA40050 */   sw        $a0, 0x50($sp)
/* B4A14 800D9614 8FAF0050 */  lw         $t7, 0x50($sp)
/* B4A18 800D9618 240E0003 */  addiu      $t6, $zero, 3
/* B4A1C 800D961C 3C018025 */  lui        $at, %hi(D_8024B140)
/* B4A20 800D9620 A02EB140 */  sb         $t6, %lo(D_8024B140)($at)
/* B4A24 800D9624 8DF80008 */  lw         $t8, 8($t7)
/* B4A28 800D9628 3C088025 */  lui        $t0, %hi(D_80248A30)
/* B4A2C 800D962C 25088A30 */  addiu      $t0, $t0, %lo(D_80248A30)
/* B4A30 800D9630 0018C980 */  sll        $t9, $t8, 6
/* B4A34 800D9634 03282821 */  addu       $a1, $t9, $t0
/* B4A38 800D9638 0C0383B4 */  jal        func_800E0ED0
/* B4A3C 800D963C 24040001 */   addiu     $a0, $zero, 1
/* B4A40 800D9640 8FA90050 */  lw         $t1, 0x50($sp)
/* B4A44 800D9644 00002825 */  or         $a1, $zero, $zero
/* B4A48 800D9648 8D240004 */  lw         $a0, 4($t1)
/* B4A4C 800D964C 0C036988 */  jal        func_800DA620
/* B4A50 800D9650 24060001 */   addiu     $a2, $zero, 1
/* B4A54 800D9654 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* B4A58 800D9658 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* B4A5C 800D965C 0C0383B4 */  jal        func_800E0ED0
/* B4A60 800D9660 00002025 */   or        $a0, $zero, $zero
/* B4A64 800D9664 8FAA0050 */  lw         $t2, 0x50($sp)
/* B4A68 800D9668 00002825 */  or         $a1, $zero, $zero
/* B4A6C 800D966C 8D440004 */  lw         $a0, 4($t2)
/* B4A70 800D9670 0C036988 */  jal        func_800DA620
/* B4A74 800D9674 24060001 */   addiu     $a2, $zero, 1
/* B4A78 800D9678 8FAB0050 */  lw         $t3, 0x50($sp)
/* B4A7C 800D967C 3C038025 */  lui        $v1, %hi(D_8024B1E0)
/* B4A80 800D9680 8D640008 */  lw         $a0, 8($t3)
/* B4A84 800D9684 2463B1E0 */  addiu      $v1, $v1, %lo(D_8024B1E0)
/* B4A88 800D9688 10800007 */  beqz       $a0, .L800D96A8
/* B4A8C 800D968C 27AC001C */   addiu     $t4, $sp, 0x1c
/* B4A90 800D9690 18800005 */  blez       $a0, .L800D96A8
/* B4A94 800D9694 00001025 */   or        $v0, $zero, $zero
.L800D9698:
/* B4A98 800D9698 24420001 */  addiu      $v0, $v0, 1
/* B4A9C 800D969C 0044082A */  slt        $at, $v0, $a0
/* B4AA0 800D96A0 1420FFFD */  bnez       $at, .L800D9698
/* B4AA4 800D96A4 24630001 */   addiu     $v1, $v1, 1
.L800D96A8:
/* B4AA8 800D96A8 00607825 */  or         $t7, $v1, $zero
/* B4AAC 800D96AC 246E0024 */  addiu      $t6, $v1, 0x24
.L800D96B0:
/* B4AB0 800D96B0 89E10000 */  lwl        $at, ($t7)
/* B4AB4 800D96B4 99E10003 */  lwr        $at, 3($t7)
/* B4AB8 800D96B8 25EF000C */  addiu      $t7, $t7, 0xc
/* B4ABC 800D96BC AD810000 */  sw         $at, ($t4)
/* B4AC0 800D96C0 89E1FFF8 */  lwl        $at, -8($t7)
/* B4AC4 800D96C4 99E1FFFB */  lwr        $at, -5($t7)
/* B4AC8 800D96C8 258C000C */  addiu      $t4, $t4, 0xc
/* B4ACC 800D96CC AD81FFF8 */  sw         $at, -8($t4)
/* B4AD0 800D96D0 89E1FFFC */  lwl        $at, -4($t7)
/* B4AD4 800D96D4 99E1FFFF */  lwr        $at, -1($t7)
/* B4AD8 800D96D8 15EEFFF5 */  bne        $t7, $t6, .L800D96B0
/* B4ADC 800D96DC AD81FFFC */   sw        $at, -4($t4)
/* B4AE0 800D96E0 89E10000 */  lwl        $at, ($t7)
/* B4AE4 800D96E4 99E10003 */  lwr        $at, 3($t7)
/* B4AE8 800D96E8 00000000 */  nop
/* B4AEC 800D96EC AD810000 */  sw         $at, ($t4)
/* B4AF0 800D96F0 93A2001E */  lbu        $v0, 0x1e($sp)
/* B4AF4 800D96F4 93A80042 */  lbu        $t0, 0x42($sp)
/* B4AF8 800D96F8 305800C0 */  andi       $t8, $v0, 0xc0
/* B4AFC 800D96FC 00182103 */  sra        $a0, $t8, 4
/* B4B00 800D9700 14800004 */  bnez       $a0, .L800D9714
/* B4B04 800D9704 00000000 */   nop
/* B4B08 800D9708 11000002 */  beqz       $t0, .L800D9714
/* B4B0C 800D970C 00000000 */   nop
/* B4B10 800D9710 24040004 */  addiu      $a0, $zero, 4
.L800D9714:
/* B4B14 800D9714 0C0383A9 */  jal        func_800E0EA4
/* B4B18 800D9718 AFA40048 */   sw        $a0, 0x48($sp)
/* B4B1C 800D971C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B4B20 800D9720 8FA20048 */  lw         $v0, 0x48($sp)
/* B4B24 800D9724 03E00008 */  jr         $ra
/* B4B28 800D9728 27BD0050 */   addiu     $sp, $sp, 0x50
/* B4B2C 800D972C 00000000 */  nop
