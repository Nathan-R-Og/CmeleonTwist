.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EA290
/* C5690 800EA290 24AEFFFF */  addiu      $t6, $a1, -1
/* C5694 800EA294 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C5698 800EA298 2DC10009 */  sltiu      $at, $t6, 9
/* C569C 800EA29C AFBF0014 */  sw         $ra, 0x14($sp)
/* C56A0 800EA2A0 1020002B */  beqz       $at, .L800EA350
/* C56A4 800EA2A4 00803825 */   or        $a3, $a0, $zero
/* C56A8 800EA2A8 000E7080 */  sll        $t6, $t6, 2
/* C56AC 800EA2AC 3C018011 */  lui        $at, %hi(D_80111090)
/* C56B0 800EA2B0 002E0821 */  addu       $at, $at, $t6
/* C56B4 800EA2B4 8C2E1090 */  lw         $t6, %lo(D_80111090)($at)
/* C56B8 800EA2B8 01C00008 */  jr         $t6
/* C56BC 800EA2BC 00000000 */   nop
/* C56C0 800EA2C0 10000029 */  b          .L800EA368
/* C56C4 800EA2C4 ACE60000 */   sw        $a2, ($a3)
/* C56C8 800EA2C8 8CE40000 */  lw         $a0, ($a3)
/* C56CC 800EA2CC 44802000 */  mtc1       $zero, $f4
/* C56D0 800EA2D0 240F0001 */  addiu      $t7, $zero, 1
/* C56D4 800EA2D4 ACEF0024 */  sw         $t7, 0x24($a3)
/* C56D8 800EA2D8 ACE00030 */  sw         $zero, 0x30($a3)
/* C56DC 800EA2DC ACE0001C */  sw         $zero, 0x1c($a3)
/* C56E0 800EA2E0 10800021 */  beqz       $a0, .L800EA368
/* C56E4 800EA2E4 E4E40020 */   swc1      $f4, 0x20($a3)
/* C56E8 800EA2E8 8C990008 */  lw         $t9, 8($a0)
/* C56EC 800EA2EC 24050004 */  addiu      $a1, $zero, 4
/* C56F0 800EA2F0 00003025 */  or         $a2, $zero, $zero
/* C56F4 800EA2F4 0320F809 */  jalr       $t9
/* C56F8 800EA2F8 00000000 */   nop
/* C56FC 800EA2FC 1000001B */  b          .L800EA36C
/* C5700 800EA300 8FBF0014 */   lw        $ra, 0x14($sp)
/* C5704 800EA304 8CE40000 */  lw         $a0, ($a3)
/* C5708 800EA308 24180001 */  addiu      $t8, $zero, 1
/* C570C 800EA30C ACF80030 */  sw         $t8, 0x30($a3)
/* C5710 800EA310 50800016 */  beql       $a0, $zero, .L800EA36C
/* C5714 800EA314 8FBF0014 */   lw        $ra, 0x14($sp)
/* C5718 800EA318 8C990008 */  lw         $t9, 8($a0)
/* C571C 800EA31C 24050009 */  addiu      $a1, $zero, 9
/* C5720 800EA320 00003025 */  or         $a2, $zero, $zero
/* C5724 800EA324 0320F809 */  jalr       $t9
/* C5728 800EA328 00000000 */   nop
/* C572C 800EA32C 1000000F */  b          .L800EA36C
/* C5730 800EA330 8FBF0014 */   lw        $ra, 0x14($sp)
/* C5734 800EA334 AFA6001C */  sw         $a2, 0x1c($sp)
/* C5738 800EA338 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* C573C 800EA33C 1000000A */  b          .L800EA368
/* C5740 800EA340 E4E60018 */   swc1      $f6, 0x18($a3)
/* C5744 800EA344 24080001 */  addiu      $t0, $zero, 1
/* C5748 800EA348 10000007 */  b          .L800EA368
/* C574C 800EA34C ACE8001C */   sw        $t0, 0x1c($a3)
.L800EA350:
/* C5750 800EA350 8CE40000 */  lw         $a0, ($a3)
/* C5754 800EA354 50800005 */  beql       $a0, $zero, .L800EA36C
/* C5758 800EA358 8FBF0014 */   lw        $ra, 0x14($sp)
/* C575C 800EA35C 8C990008 */  lw         $t9, 8($a0)
/* C5760 800EA360 0320F809 */  jalr       $t9
/* C5764 800EA364 00000000 */   nop
.L800EA368:
/* C5768 800EA368 8FBF0014 */  lw         $ra, 0x14($sp)
.L800EA36C:
/* C576C 800EA36C 27BD0028 */  addiu      $sp, $sp, 0x28
/* C5770 800EA370 00001025 */  or         $v0, $zero, $zero
/* C5774 800EA374 03E00008 */  jr         $ra
/* C5778 800EA378 00000000 */   nop

glabel func_800EA37C
/* C577C 800EA37C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* C5780 800EA380 AFBF001C */  sw         $ra, 0x1c($sp)
/* C5784 800EA384 AFA50054 */  sw         $a1, 0x54($sp)
/* C5788 800EA388 8C890000 */  lw         $t1, ($a0)
/* C578C 800EA38C 240E0140 */  addiu      $t6, $zero, 0x140
/* C5790 800EA390 00804025 */  or         $t0, $a0, $zero
/* C5794 800EA394 00C05025 */  or         $t2, $a2, $zero
/* C5798 800EA398 14C00003 */  bnez       $a2, .L800EA3A8
/* C579C 800EA39C A7AE0046 */   sh        $t6, 0x46($sp)
/* C57A0 800EA3A0 10000074 */  b          .L800EA574
/* C57A4 800EA3A4 8FA20060 */   lw        $v0, 0x60($sp)
.L800EA3A8:
/* C57A8 800EA3A8 8D0F001C */  lw         $t7, 0x1c($t0)
/* C57AC 800EA3AC 8FB80060 */  lw         $t8, 0x60($sp)
/* C57B0 800EA3B0 51E0001A */  beql       $t7, $zero, .L800EA41C
/* C57B4 800EA3B4 C5020018 */   lwc1      $f2, 0x18($t0)
/* C57B8 800EA3B8 AFB80010 */  sw         $t8, 0x10($sp)
/* C57BC 800EA3BC AFAA0058 */  sw         $t2, 0x58($sp)
/* C57C0 800EA3C0 8D390004 */  lw         $t9, 4($t1)
/* C57C4 800EA3C4 01202025 */  or         $a0, $t1, $zero
/* C57C8 800EA3C8 27A50046 */  addiu      $a1, $sp, 0x46
/* C57CC 800EA3CC 0320F809 */  jalr       $t9
/* C57D0 800EA3D0 01403025 */   or        $a2, $t2, $zero
/* C57D4 800EA3D4 87AB0046 */  lh         $t3, 0x46($sp)
/* C57D8 800EA3D8 3C0100FF */  lui        $at, 0xff
/* C57DC 800EA3DC 3421FFFF */  ori        $at, $at, 0xffff
/* C57E0 800EA3E0 01616024 */  and        $t4, $t3, $at
/* C57E4 800EA3E4 3C010A00 */  lui        $at, 0xa00
/* C57E8 800EA3E8 8FAA0058 */  lw         $t2, 0x58($sp)
/* C57EC 800EA3EC 01816825 */  or         $t5, $t4, $at
/* C57F0 800EA3F0 AC4D0000 */  sw         $t5, ($v0)
/* C57F4 800EA3F4 8FAE0054 */  lw         $t6, 0x54($sp)
/* C57F8 800EA3F8 000A5840 */  sll        $t3, $t2, 1
/* C57FC 800EA3FC 316CFFFF */  andi       $t4, $t3, 0xffff
/* C5800 800EA400 85D80000 */  lh         $t8, ($t6)
/* C5804 800EA404 24450008 */  addiu      $a1, $v0, 8
/* C5808 800EA408 0018CC00 */  sll        $t9, $t8, 0x10
/* C580C 800EA40C 032C6825 */  or         $t5, $t9, $t4
/* C5810 800EA410 10000057 */  b          .L800EA570
/* C5814 800EA414 AC4D0004 */   sw        $t5, 4($v0)
/* C5818 800EA418 C5020018 */  lwc1       $f2, 0x18($t0)
.L800EA41C:
/* C581C 800EA41C 3C018011 */  lui        $at, %hi(D_801110B8)
/* C5820 800EA420 D42410B8 */  ldc1       $f4, %lo(D_801110B8)($at)
/* C5824 800EA424 460011A1 */  cvt.d.s    $f6, $f2
/* C5828 800EA428 3C018011 */  lui        $at, 0x8011
/* C582C 800EA42C 4626203C */  c.lt.d     $f4, $f6
/* C5830 800EA430 00000000 */  nop
/* C5834 800EA434 45020005 */  bc1fl      .L800EA44C
/* C5838 800EA438 3C014700 */   lui       $at, 0x4700
/* C583C 800EA43C C42810C0 */  lwc1       $f8, 0x10c0($at)
/* C5840 800EA440 E5080018 */  swc1       $f8, 0x18($t0)
/* C5844 800EA444 C5020018 */  lwc1       $f2, 0x18($t0)
/* C5848 800EA448 3C014700 */  lui        $at, 0x4700
.L800EA44C:
/* C584C 800EA44C 44816000 */  mtc1       $at, $f12
/* C5850 800EA450 01202025 */  or         $a0, $t1, $zero
/* C5854 800EA454 27A50046 */  addiu      $a1, $sp, 0x46
/* C5858 800EA458 460C1282 */  mul.s      $f10, $f2, $f12
/* C585C 800EA45C 4600540D */  trunc.w.s  $f16, $f10
/* C5860 800EA460 440F8000 */  mfc1       $t7, $f16
/* C5864 800EA464 448A8000 */  mtc1       $t2, $f16
/* C5868 800EA468 448F9000 */  mtc1       $t7, $f18
/* C586C 800EA46C 00000000 */  nop
/* C5870 800EA470 46809120 */  cvt.s.w    $f4, $f18
/* C5874 800EA474 468084A0 */  cvt.s.w    $f18, $f16
/* C5878 800EA478 E5040018 */  swc1       $f4, 0x18($t0)
/* C587C 800EA47C C5060018 */  lwc1       $f6, 0x18($t0)
/* C5880 800EA480 460C3203 */  div.s      $f8, $f6, $f12
/* C5884 800EA484 C5060020 */  lwc1       $f6, 0x20($t0)
/* C5888 800EA488 E5080018 */  swc1       $f8, 0x18($t0)
/* C588C 800EA48C C50A0018 */  lwc1       $f10, 0x18($t0)
/* C5890 800EA490 46125102 */  mul.s      $f4, $f10, $f18
/* C5894 800EA494 46043000 */  add.s      $f0, $f6, $f4
/* C5898 800EA498 4600020D */  trunc.w.s  $f8, $f0
/* C589C 800EA49C 44064000 */  mfc1       $a2, $f8
/* C58A0 800EA4A0 00000000 */  nop
/* C58A4 800EA4A4 44868000 */  mtc1       $a2, $f16
/* C58A8 800EA4A8 00000000 */  nop
/* C58AC 800EA4AC 468082A0 */  cvt.s.w    $f10, $f16
/* C58B0 800EA4B0 460A0481 */  sub.s      $f18, $f0, $f10
/* C58B4 800EA4B4 E5120020 */  swc1       $f18, 0x20($t0)
/* C58B8 800EA4B8 8FAB0060 */  lw         $t3, 0x60($sp)
/* C58BC 800EA4BC AFAA0058 */  sw         $t2, 0x58($sp)
/* C58C0 800EA4C0 AFA80050 */  sw         $t0, 0x50($sp)
/* C58C4 800EA4C4 AFAB0010 */  sw         $t3, 0x10($sp)
/* C58C8 800EA4C8 8D390004 */  lw         $t9, 4($t1)
/* C58CC 800EA4CC 0320F809 */  jalr       $t9
/* C58D0 800EA4D0 00000000 */   nop
/* C58D4 800EA4D4 8FA80050 */  lw         $t0, 0x50($sp)
/* C58D8 800EA4D8 87AD0046 */  lh         $t5, 0x46($sp)
/* C58DC 800EA4DC 3C014700 */  lui        $at, 0x4700
/* C58E0 800EA4E0 44812000 */  mtc1       $at, $f4
/* C58E4 800EA4E4 C5060018 */  lwc1       $f6, 0x18($t0)
/* C58E8 800EA4E8 3C010800 */  lui        $at, 0x800
/* C58EC 800EA4EC 31AEFFFF */  andi       $t6, $t5, 0xffff
/* C58F0 800EA4F0 8FAA0058 */  lw         $t2, 0x58($sp)
/* C58F4 800EA4F4 01C17825 */  or         $t7, $t6, $at
/* C58F8 800EA4F8 AC4F0000 */  sw         $t7, ($v0)
/* C58FC 800EA4FC 8FB80054 */  lw         $t8, 0x54($sp)
/* C5900 800EA500 46043202 */  mul.s      $f8, $f6, $f4
/* C5904 800EA504 000A6840 */  sll        $t5, $t2, 1
/* C5908 800EA508 87190000 */  lh         $t9, ($t8)
/* C590C 800EA50C 31AEFFFF */  andi       $t6, $t5, 0xffff
/* C5910 800EA510 24580008 */  addiu      $t8, $v0, 8
/* C5914 800EA514 00196400 */  sll        $t4, $t9, 0x10
/* C5918 800EA518 018E7825 */  or         $t7, $t4, $t6
/* C591C 800EA51C 4600440D */  trunc.w.s  $f16, $f8
/* C5920 800EA520 AC4F0004 */  sw         $t7, 4($v0)
/* C5924 800EA524 AFB80028 */  sw         $t8, 0x28($sp)
/* C5928 800EA528 8D0B0024 */  lw         $t3, 0x24($t0)
/* C592C 800EA52C 44038000 */  mfc1       $v1, $f16
/* C5930 800EA530 3C010500 */  lui        $at, 0x500
/* C5934 800EA534 317900FF */  andi       $t9, $t3, 0xff
/* C5938 800EA538 00196C00 */  sll        $t5, $t9, 0x10
/* C593C 800EA53C 01A16025 */  or         $t4, $t5, $at
/* C5940 800EA540 306EFFFF */  andi       $t6, $v1, 0xffff
/* C5944 800EA544 018E7825 */  or         $t7, $t4, $t6
/* C5948 800EA548 AC4F0008 */  sw         $t7, 8($v0)
/* C594C 800EA54C 24450010 */  addiu      $a1, $v0, 0x10
/* C5950 800EA550 8D040014 */  lw         $a0, 0x14($t0)
/* C5954 800EA554 0C037228 */  jal        func_800DC8A0
/* C5958 800EA558 AFA50048 */   sw        $a1, 0x48($sp)
/* C595C 800EA55C 8FB80028 */  lw         $t8, 0x28($sp)
/* C5960 800EA560 8FA80050 */  lw         $t0, 0x50($sp)
/* C5964 800EA564 8FA50048 */  lw         $a1, 0x48($sp)
/* C5968 800EA568 AF020004 */  sw         $v0, 4($t8)
/* C596C 800EA56C AD000024 */  sw         $zero, 0x24($t0)
.L800EA570:
/* C5970 800EA570 00A01025 */  or         $v0, $a1, $zero
.L800EA574:
/* C5974 800EA574 8FBF001C */  lw         $ra, 0x1c($sp)
/* C5978 800EA578 27BD0050 */  addiu      $sp, $sp, 0x50
/* C597C 800EA57C 03E00008 */  jr         $ra
/* C5980 800EA580 00000000 */   nop
/* C5984 800EA584 00000000 */  nop
/* C5988 800EA588 00000000 */  nop
/* C598C 800EA58C 00000000 */  nop
