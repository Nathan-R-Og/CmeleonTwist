.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DE220
/* B9620 800DE220 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9624 800DE224 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9628 800DE228 0C03A320 */  jal        func_800E8C80
/* B962C 800DE22C 24040001 */   addiu     $a0, $zero, 1
/* B9630 800DE230 8E500008 */  lw         $s0, 8($s2)
/* B9634 800DE234 0040A025 */  or         $s4, $v0, $zero
/* B9638 800DE238 12000012 */  beqz       $s0, .L800DE284
/* B963C 800DE23C 00000000 */   nop
.L800DE240:
/* B9640 800DE240 8E0E0010 */  lw         $t6, 0x10($s0)
/* B9644 800DE244 8E110000 */  lw         $s1, ($s0)
/* B9648 800DE248 166E000C */  bne        $s3, $t6, .L800DE27C
/* B964C 800DE24C 00000000 */   nop
/* B9650 800DE250 12200005 */  beqz       $s1, .L800DE268
/* B9654 800DE254 00000000 */   nop
/* B9658 800DE258 8E2F0008 */  lw         $t7, 8($s1)
/* B965C 800DE25C 8E180008 */  lw         $t8, 8($s0)
/* B9660 800DE260 01F8C821 */  addu       $t9, $t7, $t8
/* B9664 800DE264 AE390008 */  sw         $t9, 8($s1)
.L800DE268:
/* B9668 800DE268 0C037248 */  jal        func_800DC920
/* B966C 800DE26C 02002025 */   or        $a0, $s0, $zero
/* B9670 800DE270 02002025 */  or         $a0, $s0, $zero
/* B9674 800DE274 0C037254 */  jal        func_800DC950
/* B9678 800DE278 02402825 */   or        $a1, $s2, $zero
.L800DE27C:
/* B967C 800DE27C 1620FFF0 */  bnez       $s1, .L800DE240
/* B9680 800DE280 02208025 */   or        $s0, $s1, $zero
.L800DE284:
/* B9684 800DE284 0C03A320 */  jal        func_800E8C80
/* B9688 800DE288 02802025 */   or        $a0, $s4, $zero
/* B968C 800DE28C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9690 800DE290 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9694 800DE294 03E00008 */  jr         $ra
/* B9698 800DE298 00000000 */   nop

glabel func_800DE29C
/* B969C 800DE29C 03E00008 */  jr         $ra
/* B96A0 800DE2A0 00000000 */   nop

glabel func_800DE2A4
/* B96A4 800DE2A4 03E00008 */  jr         $ra
/* B96A8 800DE2A8 00000000 */   nop

glabel func_800DE2AC
/* B96AC 800DE2AC 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* B96B0 800DE2B0 AFBE0040 */  sw         $fp, 0x40($sp)
/* B96B4 800DE2B4 AFB7003C */  sw         $s7, 0x3c($sp)
/* B96B8 800DE2B8 AFB60038 */  sw         $s6, 0x38($sp)
/* B96BC 800DE2BC AFB40030 */  sw         $s4, 0x30($sp)
/* B96C0 800DE2C0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B96C4 800DE2C4 3C018011 */  lui        $at, 0x8011
/* B96C8 800DE2C8 0080B025 */  or         $s6, $a0, $zero
/* B96CC 800DE2CC AFBF0044 */  sw         $ra, 0x44($sp)
/* B96D0 800DE2D0 AFB50034 */  sw         $s5, 0x34($sp)
/* B96D4 800DE2D4 AFB3002C */  sw         $s3, 0x2c($sp)
/* B96D8 800DE2D8 AFB20028 */  sw         $s2, 0x28($sp)
/* B96DC 800DE2DC AFB10024 */  sw         $s1, 0x24($sp)
/* B96E0 800DE2E0 AFB00020 */  sw         $s0, 0x20($sp)
/* B96E4 800DE2E4 D4340BD0 */  ldc1       $f20, 0xbd0($at)
/* B96E8 800DE2E8 24940028 */  addiu      $s4, $a0, 0x28
/* B96EC 800DE2EC 24970014 */  addiu      $s7, $a0, 0x14
/* B96F0 800DE2F0 241E0001 */  addiu      $fp, $zero, 1
.L800DE2F4:
/* B96F4 800DE2F4 86C20028 */  lh         $v0, 0x28($s6)
/* B96F8 800DE2F8 24010005 */  addiu      $at, $zero, 5
/* B96FC 800DE2FC 240E0005 */  addiu      $t6, $zero, 5
/* B9700 800DE300 14410007 */  bne        $v0, $at, .L800DE320
/* B9704 800DE304 02E02025 */   or        $a0, $s7, $zero
/* B9708 800DE308 A7AE00F4 */  sh         $t6, 0xf4($sp)
/* B970C 800DE30C 8EC60048 */  lw         $a2, 0x48($s6)
/* B9710 800DE310 0C03A0D7 */  jal        func_800E835C
/* B9714 800DE314 27A500F4 */   addiu     $a1, $sp, 0xf4
/* B9718 800DE318 10000122 */  b          .L800DE7A4
/* B971C 800DE31C 02E02025 */   or        $a0, $s7, $zero
.L800DE320:
/* B9720 800DE320 8ED5002C */  lw         $s5, 0x2c($s6)
/* B9724 800DE324 2C410009 */  sltiu      $at, $v0, 9
/* B9728 800DE328 1020011D */  beqz       $at, .L800DE7A0
/* B972C 800DE32C 8EB1001C */   lw        $s1, 0x1c($s5)
/* B9730 800DE330 00027880 */  sll        $t7, $v0, 2
/* B9734 800DE334 3C018011 */  lui        $at, %hi(D_80110BD8)
/* B9738 800DE338 002F0821 */  addu       $at, $at, $t7
/* B973C 800DE33C 8C2F0BD8 */  lw         $t7, %lo(D_80110BD8)($at)
/* B9740 800DE340 01E00008 */  jr         $t7
/* B9744 800DE344 00000000 */   nop
/* B9748 800DE348 8EB80028 */  lw         $t8, 0x28($s5)
/* B974C 800DE34C 57000115 */  bnel       $t8, $zero, .L800DE7A4
/* B9750 800DE350 02E02025 */   or        $a0, $s7, $zero
/* B9754 800DE354 12200112 */  beqz       $s1, .L800DE7A0
/* B9758 800DE358 02A02825 */   or        $a1, $s5, $zero
/* B975C 800DE35C A7A000E2 */  sh         $zero, 0xe2($sp)
/* B9760 800DE360 86B90020 */  lh         $t9, 0x20($s5)
/* B9764 800DE364 A3A000E4 */  sb         $zero, 0xe4($sp)
/* B9768 800DE368 27A600E0 */  addiu      $a2, $sp, 0xe0
/* B976C 800DE36C A7B900E0 */  sh         $t9, 0xe0($sp)
/* B9770 800DE370 0C03A246 */  jal        func_800E8918
/* B9774 800DE374 8EC40038 */   lw        $a0, 0x38($s6)
/* B9778 800DE378 8E270000 */  lw         $a3, ($s1)
/* B977C 800DE37C 86AF002C */  lh         $t7, 0x2c($s5)
/* B9780 800DE380 2401007F */  addiu      $at, $zero, 0x7f
/* B9784 800DE384 90EE000C */  lbu        $t6, 0xc($a3)
/* B9788 800DE388 2408007F */  addiu      $t0, $zero, 0x7f
/* B978C 800DE38C 01CF0019 */  multu      $t6, $t7
/* B9790 800DE390 0000C012 */  mflo       $t8
/* B9794 800DE394 00000000 */  nop
/* B9798 800DE398 00000000 */  nop
/* B979C 800DE39C 0301001A */  div        $zero, $t8, $at
/* B97A0 800DE3A0 0000C812 */  mflo       $t9
/* B97A4 800DE3A4 A7B900BA */  sh         $t9, 0xba($sp)
/* B97A8 800DE3A8 922F000C */  lbu        $t7, 0xc($s1)
/* B97AC 800DE3AC 92AE002E */  lbu        $t6, 0x2e($s5)
/* B97B0 800DE3B0 01CF1821 */  addu       $v1, $t6, $t7
/* B97B4 800DE3B4 2463FFC0 */  addiu      $v1, $v1, -0x40
/* B97B8 800DE3B8 0003C400 */  sll        $t8, $v1, 0x10
/* B97BC 800DE3BC 00181C03 */  sra        $v1, $t8, 0x10
/* B97C0 800DE3C0 5C600003 */  bgtzl      $v1, .L800DE3D0
/* B97C4 800DE3C4 2861007F */   slti      $at, $v1, 0x7f
/* B97C8 800DE3C8 00001825 */  or         $v1, $zero, $zero
/* B97CC 800DE3CC 2861007F */  slti       $at, $v1, 0x7f
.L800DE3D0:
/* B97D0 800DE3D0 10200003 */  beqz       $at, .L800DE3E0
/* B97D4 800DE3D4 00000000 */   nop
/* B97D8 800DE3D8 10000001 */  b          .L800DE3E0
/* B97DC 800DE3DC 306800FF */   andi      $t0, $v1, 0xff
.L800DE3E0:
/* B97E0 800DE3E0 C6A40024 */  lwc1       $f4, 0x24($s5)
/* B97E4 800DE3E4 02A02825 */  or         $a1, $s5, $zero
/* B97E8 800DE3E8 E7A400D0 */  swc1       $f4, 0xd0($sp)
/* B97EC 800DE3EC 8CF00000 */  lw         $s0, ($a3)
/* B97F0 800DE3F0 8E260008 */  lw         $a2, 8($s1)
/* B97F4 800DE3F4 8EC40038 */  lw         $a0, 0x38($s6)
/* B97F8 800DE3F8 0C03A348 */  jal        func_800E8D20
/* B97FC 800DE3FC A3A800D7 */   sb        $t0, 0xd7($sp)
/* B9800 800DE400 93A600D7 */  lbu        $a2, 0xd7($sp)
/* B9804 800DE404 AEBE0028 */  sw         $fp, 0x28($s5)
/* B9808 800DE408 8EC40038 */  lw         $a0, 0x38($s6)
/* B980C 800DE40C 0C03A2D4 */  jal        func_800E8B50
/* B9810 800DE410 02A02825 */   or        $a1, $s5, $zero
/* B9814 800DE414 8EC40038 */  lw         $a0, 0x38($s6)
/* B9818 800DE418 02A02825 */  or         $a1, $s5, $zero
/* B981C 800DE41C 87A600BA */  lh         $a2, 0xba($sp)
/* B9820 800DE420 0C03A1C0 */  jal        func_800E8700
/* B9824 800DE424 02003825 */   or        $a3, $s0, $zero
/* B9828 800DE428 8EC40038 */  lw         $a0, 0x38($s6)
/* B982C 800DE42C 02A02825 */  or         $a1, $s5, $zero
/* B9830 800DE430 0C03A1E8 */  jal        func_800E87A0
/* B9834 800DE434 8FA600D0 */   lw        $a2, 0xd0($sp)
/* B9838 800DE438 8EC40038 */  lw         $a0, 0x38($s6)
/* B983C 800DE43C 02A02825 */  or         $a1, $s5, $zero
/* B9840 800DE440 0C03A2F8 */  jal        func_800E8BE0
/* B9844 800DE444 92A6002F */   lbu       $a2, 0x2f($s5)
/* B9848 800DE448 240E0006 */  addiu      $t6, $zero, 6
/* B984C 800DE44C A7AE00C0 */  sh         $t6, 0xc0($sp)
/* B9850 800DE450 AFB500C4 */  sw         $s5, 0xc4($sp)
/* B9854 800DE454 8E2F0000 */  lw         $t7, ($s1)
/* B9858 800DE458 C6A20024 */  lwc1       $f2, 0x24($s5)
/* B985C 800DE45C 3C067FFF */  lui        $a2, 0x7fff
/* B9860 800DE460 8DE20000 */  lw         $v0, ($t7)
/* B9864 800DE464 02E02025 */  or         $a0, $s7, $zero
/* B9868 800DE468 44823000 */  mtc1       $v0, $f6
/* B986C 800DE46C 00000000 */  nop
/* B9870 800DE470 46803220 */  cvt.s.w    $f8, $f6
/* B9874 800DE474 46024283 */  div.s      $f10, $f8, $f2
/* B9878 800DE478 46005021 */  cvt.d.s    $f0, $f10
/* B987C 800DE47C 4620A03C */  c.lt.d     $f20, $f0
/* B9880 800DE480 00000000 */  nop
/* B9884 800DE484 45020004 */  bc1fl      .L800DE498
/* B9888 800DE488 4620010D */   trunc.w.d $f4, $f0
/* B988C 800DE48C 10000004 */  b          .L800DE4A0
/* B9890 800DE490 34C6FFFF */   ori       $a2, $a2, 0xffff
/* B9894 800DE494 4620010D */  trunc.w.d  $f4, $f0
.L800DE498:
/* B9898 800DE498 44062000 */  mfc1       $a2, $f4
/* B989C 800DE49C 00000000 */  nop
.L800DE4A0:
/* B98A0 800DE4A0 0C03A0D7 */  jal        func_800E835C
/* B98A4 800DE4A4 27A500C0 */   addiu     $a1, $sp, 0xc0
/* B98A8 800DE4A8 100000BE */  b          .L800DE7A4
/* B98AC 800DE4AC 02E02025 */   or        $a0, $s7, $zero
/* B98B0 800DE4B0 8EB90028 */  lw         $t9, 0x28($s5)
/* B98B4 800DE4B4 57D900BB */  bnel       $fp, $t9, .L800DE7A4
/* B98B8 800DE4B8 02E02025 */   or        $a0, $s7, $zero
/* B98BC 800DE4BC 122000B8 */  beqz       $s1, .L800DE7A0
/* B98C0 800DE4C0 02A02825 */   or        $a1, $s5, $zero
/* B98C4 800DE4C4 8E2E0000 */  lw         $t6, ($s1)
/* B98C8 800DE4C8 C6A20024 */  lwc1       $f2, 0x24($s5)
/* B98CC 800DE4CC 3C077FFF */  lui        $a3, 0x7fff
/* B98D0 800DE4D0 8DC20008 */  lw         $v0, 8($t6)
/* B98D4 800DE4D4 00003025 */  or         $a2, $zero, $zero
/* B98D8 800DE4D8 44823000 */  mtc1       $v0, $f6
/* B98DC 800DE4DC 00000000 */  nop
/* B98E0 800DE4E0 46803220 */  cvt.s.w    $f8, $f6
/* B98E4 800DE4E4 46024283 */  div.s      $f10, $f8, $f2
/* B98E8 800DE4E8 46005021 */  cvt.d.s    $f0, $f10
/* B98EC 800DE4EC 4620A03C */  c.lt.d     $f20, $f0
/* B98F0 800DE4F0 00000000 */  nop
/* B98F4 800DE4F4 45020004 */  bc1fl      .L800DE508
/* B98F8 800DE4F8 4620010D */   trunc.w.d $f4, $f0
/* B98FC 800DE4FC 10000004 */  b          .L800DE510
/* B9900 800DE500 34E7FFFF */   ori       $a3, $a3, 0xffff
/* B9904 800DE504 4620010D */  trunc.w.d  $f4, $f0
.L800DE508:
/* B9908 800DE508 44072000 */  mfc1       $a3, $f4
/* B990C 800DE50C 00000000 */  nop
.L800DE510:
/* B9910 800DE510 00E08025 */  or         $s0, $a3, $zero
/* B9914 800DE514 0C03A1C0 */  jal        func_800E8700
/* B9918 800DE518 8EC40038 */   lw        $a0, 0x38($s6)
/* B991C 800DE51C 1200000B */  beqz       $s0, .L800DE54C
/* B9920 800DE520 02A02825 */   or        $a1, $s5, $zero
/* B9924 800DE524 24180007 */  addiu      $t8, $zero, 7
/* B9928 800DE528 A7B800C0 */  sh         $t8, 0xc0($sp)
/* B992C 800DE52C AFB500C4 */  sw         $s5, 0xc4($sp)
/* B9930 800DE530 02E02025 */  or         $a0, $s7, $zero
/* B9934 800DE534 27A500C0 */  addiu      $a1, $sp, 0xc0
/* B9938 800DE538 0C03A0D7 */  jal        func_800E835C
/* B993C 800DE53C 02003025 */   or        $a2, $s0, $zero
/* B9940 800DE540 24190002 */  addiu      $t9, $zero, 2
/* B9944 800DE544 10000096 */  b          .L800DE7A0
/* B9948 800DE548 AEB90028 */   sw        $t9, 0x28($s5)
.L800DE54C:
/* B994C 800DE54C 0C03A174 */  jal        func_800E85D0
/* B9950 800DE550 8EC40038 */   lw        $a0, 0x38($s6)
/* B9954 800DE554 8EC40038 */  lw         $a0, 0x38($s6)
/* B9958 800DE558 0C03A194 */  jal        func_800E8650
/* B995C 800DE55C 02A02825 */   or        $a1, $s5, $zero
/* B9960 800DE560 02E09025 */  or         $s2, $s7, $zero
/* B9964 800DE564 02A09825 */  or         $s3, $s5, $zero
/* B9968 800DE568 0C037888 */  jal        func_800DE220
/* B996C 800DE56C AFB4004C */   sw        $s4, 0x4c($sp)
/* B9970 800DE570 8FB4004C */  lw         $s4, 0x4c($sp)
/* B9974 800DE574 1000008A */  b          .L800DE7A0
/* B9978 800DE578 AEA00028 */   sw        $zero, 0x28($s5)
/* B997C 800DE57C 8EAF0028 */  lw         $t7, 0x28($s5)
/* B9980 800DE580 928E0008 */  lbu        $t6, 8($s4)
/* B9984 800DE584 17CF0086 */  bne        $fp, $t7, .L800DE7A0
/* B9988 800DE588 A2AE002E */   sb        $t6, 0x2e($s5)
/* B998C 800DE58C 12200084 */  beqz       $s1, .L800DE7A0
/* B9990 800DE590 02A02825 */   or        $a1, $s5, $zero
/* B9994 800DE594 9239000C */  lbu        $t9, 0xc($s1)
/* B9998 800DE598 31D800FF */  andi       $t8, $t6, 0xff
/* B999C 800DE59C 2408007F */  addiu      $t0, $zero, 0x7f
/* B99A0 800DE5A0 03191821 */  addu       $v1, $t8, $t9
/* B99A4 800DE5A4 2463FFC0 */  addiu      $v1, $v1, -0x40
/* B99A8 800DE5A8 00037400 */  sll        $t6, $v1, 0x10
/* B99AC 800DE5AC 000E1C03 */  sra        $v1, $t6, 0x10
/* B99B0 800DE5B0 5C600003 */  bgtzl      $v1, .L800DE5C0
/* B99B4 800DE5B4 2861007F */   slti      $at, $v1, 0x7f
/* B99B8 800DE5B8 00001825 */  or         $v1, $zero, $zero
/* B99BC 800DE5BC 2861007F */  slti       $at, $v1, 0x7f
.L800DE5C0:
/* B99C0 800DE5C0 10200003 */  beqz       $at, .L800DE5D0
/* B99C4 800DE5C4 00000000 */   nop
/* B99C8 800DE5C8 10000001 */  b          .L800DE5D0
/* B99CC 800DE5CC 306800FF */   andi      $t0, $v1, 0xff
.L800DE5D0:
/* B99D0 800DE5D0 8EC40038 */  lw         $a0, 0x38($s6)
/* B99D4 800DE5D4 0C03A2D4 */  jal        func_800E8B50
/* B99D8 800DE5D8 310600FF */   andi      $a2, $t0, 0xff
/* B99DC 800DE5DC 10000071 */  b          .L800DE7A4
/* B99E0 800DE5E0 02E02025 */   or        $a0, $s7, $zero
/* B99E4 800DE5E4 C6800008 */  lwc1       $f0, 8($s4)
/* B99E8 800DE5E8 3C018011 */  lui        $at, %hi(D_80110C00)
/* B99EC 800DE5EC 02A02825 */  or         $a1, $s5, $zero
/* B99F0 800DE5F0 E6A00024 */  swc1       $f0, 0x24($s5)
/* B99F4 800DE5F4 D4280C00 */  ldc1       $f8, %lo(D_80110C00)($at)
/* B99F8 800DE5F8 460001A1 */  cvt.d.s    $f6, $f0
/* B99FC 800DE5FC 3C018011 */  lui        $at, %hi(D_80110C08)
/* B9A00 800DE600 4628303C */  c.lt.d     $f6, $f8
/* B9A04 800DE604 00000000 */  nop
/* B9A08 800DE608 45020004 */  bc1fl      .L800DE61C
/* B9A0C 800DE60C 8EB80028 */   lw        $t8, 0x28($s5)
/* B9A10 800DE610 C42A0C08 */  lwc1       $f10, %lo(D_80110C08)($at)
/* B9A14 800DE614 E6AA0024 */  swc1       $f10, 0x24($s5)
/* B9A18 800DE618 8EB80028 */  lw         $t8, 0x28($s5)
.L800DE61C:
/* B9A1C 800DE61C 57D80061 */  bnel       $fp, $t8, .L800DE7A4
/* B9A20 800DE620 02E02025 */   or        $a0, $s7, $zero
/* B9A24 800DE624 8EC40038 */  lw         $a0, 0x38($s6)
/* B9A28 800DE628 0C03A1E8 */  jal        func_800E87A0
/* B9A2C 800DE62C 8EA60024 */   lw        $a2, 0x24($s5)
/* B9A30 800DE630 1000005C */  b          .L800DE7A4
/* B9A34 800DE634 02E02025 */   or        $a0, $s7, $zero
/* B9A38 800DE638 8EAE0028 */  lw         $t6, 0x28($s5)
/* B9A3C 800DE63C 92990008 */  lbu        $t9, 8($s4)
/* B9A40 800DE640 02A02825 */  or         $a1, $s5, $zero
/* B9A44 800DE644 17CE0056 */  bne        $fp, $t6, .L800DE7A0
/* B9A48 800DE648 A2B9002F */   sb        $t9, 0x2f($s5)
/* B9A4C 800DE64C 8EC40038 */  lw         $a0, 0x38($s6)
/* B9A50 800DE650 0C03A2F8 */  jal        func_800E8BE0
/* B9A54 800DE654 332600FF */   andi      $a2, $t9, 0xff
/* B9A58 800DE658 10000052 */  b          .L800DE7A4
/* B9A5C 800DE65C 02E02025 */   or        $a0, $s7, $zero
/* B9A60 800DE660 8EB80028 */  lw         $t8, 0x28($s5)
/* B9A64 800DE664 868F0008 */  lh         $t7, 8($s4)
/* B9A68 800DE668 17D8004D */  bne        $fp, $t8, .L800DE7A0
/* B9A6C 800DE66C A6AF002C */   sh        $t7, 0x2c($s5)
/* B9A70 800DE670 5220004C */  beql       $s1, $zero, .L800DE7A4
/* B9A74 800DE674 02E02025 */   or        $a0, $s7, $zero
/* B9A78 800DE678 8E390000 */  lw         $t9, ($s1)
/* B9A7C 800DE67C 86AF002C */  lh         $t7, 0x2c($s5)
/* B9A80 800DE680 2401007F */  addiu      $at, $zero, 0x7f
/* B9A84 800DE684 932E000D */  lbu        $t6, 0xd($t9)
/* B9A88 800DE688 8EC40038 */  lw         $a0, 0x38($s6)
/* B9A8C 800DE68C 02A02825 */  or         $a1, $s5, $zero
/* B9A90 800DE690 01CF0019 */  multu      $t6, $t7
/* B9A94 800DE694 240703E8 */  addiu      $a3, $zero, 0x3e8
/* B9A98 800DE698 00004012 */  mflo       $t0
/* B9A9C 800DE69C 00000000 */  nop
/* B9AA0 800DE6A0 00000000 */  nop
/* B9AA4 800DE6A4 0101001A */  div        $zero, $t0, $at
/* B9AA8 800DE6A8 0000C012 */  mflo       $t8
/* B9AAC 800DE6AC 00183400 */  sll        $a2, $t8, 0x10
/* B9AB0 800DE6B0 0006CC03 */  sra        $t9, $a2, 0x10
/* B9AB4 800DE6B4 0C03A1C0 */  jal        func_800E8700
/* B9AB8 800DE6B8 03203025 */   or        $a2, $t9, $zero
/* B9ABC 800DE6BC 10000039 */  b          .L800DE7A4
/* B9AC0 800DE6C0 02E02025 */   or        $a0, $s7, $zero
/* B9AC4 800DE6C4 8E270000 */  lw         $a3, ($s1)
/* B9AC8 800DE6C8 2401FFFF */  addiu      $at, $zero, -1
/* B9ACC 800DE6CC 02A02825 */  or         $a1, $s5, $zero
/* B9AD0 800DE6D0 8CE30004 */  lw         $v1, 4($a3)
/* B9AD4 800DE6D4 50610033 */  beql       $v1, $at, .L800DE7A4
/* B9AD8 800DE6D8 02E02025 */   or        $a0, $s7, $zero
/* B9ADC 800DE6DC 90EE000D */  lbu        $t6, 0xd($a3)
/* B9AE0 800DE6E0 86AF002C */  lh         $t7, 0x2c($s5)
/* B9AE4 800DE6E4 2401007F */  addiu      $at, $zero, 0x7f
/* B9AE8 800DE6E8 44832000 */  mtc1       $v1, $f4
/* B9AEC 800DE6EC 01CF0019 */  multu      $t6, $t7
/* B9AF0 800DE6F0 C6A20024 */  lwc1       $f2, 0x24($s5)
/* B9AF4 800DE6F4 468021A0 */  cvt.s.w    $f6, $f4
/* B9AF8 800DE6F8 3C077FFF */  lui        $a3, 0x7fff
/* B9AFC 800DE6FC 46023203 */  div.s      $f8, $f6, $f2
/* B9B00 800DE700 00004012 */  mflo       $t0
/* B9B04 800DE704 00000000 */  nop
/* B9B08 800DE708 00000000 */  nop
/* B9B0C 800DE70C 0101001A */  div        $zero, $t0, $at
/* B9B10 800DE710 46004021 */  cvt.d.s    $f0, $f8
/* B9B14 800DE714 00004012 */  mflo       $t0
/* B9B18 800DE718 4620A03C */  c.lt.d     $f20, $f0
/* B9B1C 800DE71C 00083400 */  sll        $a2, $t0, 0x10
/* B9B20 800DE720 00067403 */  sra        $t6, $a2, 0x10
/* B9B24 800DE724 01C03025 */  or         $a2, $t6, $zero
/* B9B28 800DE728 45020004 */  bc1fl      .L800DE73C
/* B9B2C 800DE72C 4620028D */   trunc.w.d $f10, $f0
/* B9B30 800DE730 10000004 */  b          .L800DE744
/* B9B34 800DE734 34E7FFFF */   ori       $a3, $a3, 0xffff
/* B9B38 800DE738 4620028D */  trunc.w.d  $f10, $f0
.L800DE73C:
/* B9B3C 800DE73C 44075000 */  mfc1       $a3, $f10
/* B9B40 800DE740 00000000 */  nop
.L800DE744:
/* B9B44 800DE744 00E08025 */  or         $s0, $a3, $zero
/* B9B48 800DE748 0C03A1C0 */  jal        func_800E8700
/* B9B4C 800DE74C 8EC40038 */   lw        $a0, 0x38($s6)
/* B9B50 800DE750 A7BE00C0 */  sh         $fp, 0xc0($sp)
/* B9B54 800DE754 AFB500C4 */  sw         $s5, 0xc4($sp)
/* B9B58 800DE758 02E02025 */  or         $a0, $s7, $zero
/* B9B5C 800DE75C 27A500C0 */  addiu      $a1, $sp, 0xc0
/* B9B60 800DE760 0C03A0D7 */  jal        func_800E835C
/* B9B64 800DE764 02003025 */   or        $a2, $s0, $zero
/* B9B68 800DE768 1000000E */  b          .L800DE7A4
/* B9B6C 800DE76C 02E02025 */   or        $a0, $s7, $zero
/* B9B70 800DE770 8EC40038 */  lw         $a0, 0x38($s6)
/* B9B74 800DE774 0C03A174 */  jal        func_800E85D0
/* B9B78 800DE778 02A02825 */   or        $a1, $s5, $zero
/* B9B7C 800DE77C 8EC40038 */  lw         $a0, 0x38($s6)
/* B9B80 800DE780 0C03A194 */  jal        func_800E8650
/* B9B84 800DE784 02A02825 */   or        $a1, $s5, $zero
/* B9B88 800DE788 02E09025 */  or         $s2, $s7, $zero
/* B9B8C 800DE78C 02A09825 */  or         $s3, $s5, $zero
/* B9B90 800DE790 0C037888 */  jal        func_800DE220
/* B9B94 800DE794 AFB4004C */   sw        $s4, 0x4c($sp)
/* B9B98 800DE798 8FB4004C */  lw         $s4, 0x4c($sp)
/* B9B9C 800DE79C AEA00028 */  sw         $zero, 0x28($s5)
.L800DE7A0:
/* B9BA0 800DE7A0 02E02025 */  or         $a0, $s7, $zero
.L800DE7A4:
/* B9BA4 800DE7A4 0C03A120 */  jal        func_800E8480
/* B9BA8 800DE7A8 02802825 */   or        $a1, $s4, $zero
/* B9BAC 800DE7AC 1040FED1 */  beqz       $v0, .L800DE2F4
/* B9BB0 800DE7B0 AEC2004C */   sw        $v0, 0x4c($s6)
/* B9BB4 800DE7B4 8ECF0050 */  lw         $t7, 0x50($s6)
/* B9BB8 800DE7B8 01E2C021 */  addu       $t8, $t7, $v0
/* B9BBC 800DE7BC AED80050 */  sw         $t8, 0x50($s6)
/* B9BC0 800DE7C0 8FBF0044 */  lw         $ra, 0x44($sp)
/* B9BC4 800DE7C4 8FBE0040 */  lw         $fp, 0x40($sp)
/* B9BC8 800DE7C8 8FB7003C */  lw         $s7, 0x3c($sp)
/* B9BCC 800DE7CC 8FB60038 */  lw         $s6, 0x38($sp)
/* B9BD0 800DE7D0 8FB50034 */  lw         $s5, 0x34($sp)
/* B9BD4 800DE7D4 8FB40030 */  lw         $s4, 0x30($sp)
/* B9BD8 800DE7D8 8FB3002C */  lw         $s3, 0x2c($sp)
/* B9BDC 800DE7DC 8FB20028 */  lw         $s2, 0x28($sp)
/* B9BE0 800DE7E0 8FB10024 */  lw         $s1, 0x24($sp)
/* B9BE4 800DE7E4 8FB00020 */  lw         $s0, 0x20($sp)
/* B9BE8 800DE7E8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B9BEC 800DE7EC 03E00008 */  jr         $ra
/* B9BF0 800DE7F0 27BD0108 */   addiu     $sp, $sp, 0x108

glabel func_800DE7F4
/* B9BF4 800DE7F4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B9BF8 800DE7F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B9BFC 800DE7FC AFB00020 */  sw         $s0, 0x20($sp)
/* B9C00 800DE800 8CAE0000 */  lw         $t6, ($a1)
/* B9C04 800DE804 240FFFFF */  addiu      $t7, $zero, -1
/* B9C08 800DE808 24183E80 */  addiu      $t8, $zero, 0x3e80
/* B9C0C 800DE80C 00A04025 */  or         $t0, $a1, $zero
/* B9C10 800DE810 AC8F003C */  sw         $t7, 0x3c($a0)
/* B9C14 800DE814 AC980048 */  sw         $t8, 0x48($a0)
/* B9C18 800DE818 AC8E0044 */  sw         $t6, 0x44($a0)
/* B9C1C 800DE81C 8D190000 */  lw         $t9, ($t0)
/* B9C20 800DE820 00808025 */  or         $s0, $a0, $zero
/* B9C24 800DE824 8D060008 */  lw         $a2, 8($t0)
/* B9C28 800DE828 00194880 */  sll        $t1, $t9, 2
/* B9C2C 800DE82C 01394823 */  subu       $t1, $t1, $t9
/* B9C30 800DE830 00094900 */  sll        $t1, $t1, 4
/* B9C34 800DE834 AFA90010 */  sw         $t1, 0x10($sp)
/* B9C38 800DE838 AFA8004C */  sw         $t0, 0x4c($sp)
/* B9C3C 800DE83C 00002025 */  or         $a0, $zero, $zero
/* B9C40 800DE840 00002825 */  or         $a1, $zero, $zero
/* B9C44 800DE844 0C037278 */  jal        func_800DC9E0
/* B9C48 800DE848 24070001 */   addiu     $a3, $zero, 1
/* B9C4C 800DE84C 8FA8004C */  lw         $t0, 0x4c($sp)
/* B9C50 800DE850 AE020040 */  sw         $v0, 0x40($s0)
/* B9C54 800DE854 00001825 */  or         $v1, $zero, $zero
/* B9C58 800DE858 8D0A0000 */  lw         $t2, ($t0)
/* B9C5C 800DE85C 00402025 */  or         $a0, $v0, $zero
/* B9C60 800DE860 00002825 */  or         $a1, $zero, $zero
/* B9C64 800DE864 11400008 */  beqz       $t2, .L800DE888
/* B9C68 800DE868 24070001 */   addiu     $a3, $zero, 1
/* B9C6C 800DE86C AC80001C */  sw         $zero, 0x1c($a0)
.L800DE870:
/* B9C70 800DE870 8D0B0000 */  lw         $t3, ($t0)
/* B9C74 800DE874 24630001 */  addiu      $v1, $v1, 1
/* B9C78 800DE878 24840030 */  addiu      $a0, $a0, 0x30
/* B9C7C 800DE87C 006B082B */  sltu       $at, $v1, $t3
/* B9C80 800DE880 5420FFFB */  bnel       $at, $zero, .L800DE870
/* B9C84 800DE884 AC80001C */   sw        $zero, 0x1c($a0)
.L800DE888:
/* B9C88 800DE888 8D0C0004 */  lw         $t4, 4($t0)
/* B9C8C 800DE88C 8D060008 */  lw         $a2, 8($t0)
/* B9C90 800DE890 AFA8004C */  sw         $t0, 0x4c($sp)
/* B9C94 800DE894 000C68C0 */  sll        $t5, $t4, 3
/* B9C98 800DE898 01AC6823 */  subu       $t5, $t5, $t4
/* B9C9C 800DE89C 000D6880 */  sll        $t5, $t5, 2
/* B9CA0 800DE8A0 AFAD0010 */  sw         $t5, 0x10($sp)
/* B9CA4 800DE8A4 0C037278 */  jal        func_800DC9E0
/* B9CA8 800DE8A8 00002025 */   or        $a0, $zero, $zero
/* B9CAC 800DE8AC 8FA8004C */  lw         $t0, 0x4c($sp)
/* B9CB0 800DE8B0 26040014 */  addiu      $a0, $s0, 0x14
/* B9CB4 800DE8B4 00402825 */  or         $a1, $v0, $zero
/* B9CB8 800DE8B8 8D060004 */  lw         $a2, 4($t0)
/* B9CBC 800DE8BC 0C03A143 */  jal        func_800E850C
/* B9CC0 800DE8C0 AFA40028 */   sw        $a0, 0x28($sp)
/* B9CC4 800DE8C4 3C0E8011 */  lui        $t6, %hi(D_80109DA0)
/* B9CC8 800DE8C8 8DC49DA0 */  lw         $a0, %lo(D_80109DA0)($t6)
/* B9CCC 800DE8CC 3C0F800E */  lui        $t7, %hi(func_800DE2AC)
/* B9CD0 800DE8D0 25EFE2AC */  addiu      $t7, $t7, %lo(func_800DE2AC)
/* B9CD4 800DE8D4 AE000000 */  sw         $zero, ($s0)
/* B9CD8 800DE8D8 AE0F0008 */  sw         $t7, 8($s0)
/* B9CDC 800DE8DC AE100004 */  sw         $s0, 4($s0)
/* B9CE0 800DE8E0 02002825 */  or         $a1, $s0, $zero
/* B9CE4 800DE8E4 0C03A160 */  jal        func_800E8580
/* B9CE8 800DE8E8 AE040038 */   sw        $a0, 0x38($s0)
/* B9CEC 800DE8EC 24180005 */  addiu      $t8, $zero, 5
/* B9CF0 800DE8F0 A7B80034 */  sh         $t8, 0x34($sp)
/* B9CF4 800DE8F4 8E060048 */  lw         $a2, 0x48($s0)
/* B9CF8 800DE8F8 8FA40028 */  lw         $a0, 0x28($sp)
/* B9CFC 800DE8FC 0C03A0D7 */  jal        func_800E835C
/* B9D00 800DE900 27A50034 */   addiu     $a1, $sp, 0x34
/* B9D04 800DE904 8FA40028 */  lw         $a0, 0x28($sp)
/* B9D08 800DE908 0C03A120 */  jal        func_800E8480
/* B9D0C 800DE90C 26050028 */   addiu     $a1, $s0, 0x28
/* B9D10 800DE910 AE02004C */  sw         $v0, 0x4c($s0)
/* B9D14 800DE914 8FBF0024 */  lw         $ra, 0x24($sp)
/* B9D18 800DE918 8FB00020 */  lw         $s0, 0x20($sp)
/* B9D1C 800DE91C 27BD0048 */  addiu      $sp, $sp, 0x48
/* B9D20 800DE920 03E00008 */  jr         $ra
/* B9D24 800DE924 00000000 */   nop
/* B9D28 800DE928 00000000 */  nop
/* B9D2C 800DE92C 00000000 */  nop
