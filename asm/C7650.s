.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EC250
/* C7650 800EC250 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C7654 800EC254 AFB20028 */  sw         $s2, 0x28($sp)
/* C7658 800EC258 00127400 */  sll        $t6, $s2, 0x10
/* C765C 800EC25C 000E9403 */  sra        $s2, $t6, 0x10
/* C7660 800EC260 AFB30024 */  sw         $s3, 0x24($sp)
/* C7664 800EC264 0013C400 */  sll        $t8, $s3, 0x10
/* C7668 800EC268 00189C03 */  sra        $s3, $t8, 0x10
/* C766C 800EC26C 328E00FF */  andi       $t6, $s4, 0xff
/* C7670 800EC270 AFB4001C */  sw         $s4, 0x1c($sp)
/* C7674 800EC274 01C0A025 */  or         $s4, $t6, $zero
/* C7678 800EC278 1E600004 */  bgtz       $s3, .L800EC28C
/* C767C 800EC27C AFBF0014 */   sw        $ra, 0x14($sp)
/* C7680 800EC280 3C118011 */  lui        $s1, %hi(D_80111180)
/* C7684 800EC284 26311180 */  addiu      $s1, $s1, %lo(D_80111180)
/* C7688 800EC288 24130001 */  addiu      $s3, $zero, 1
.L800EC28C:
/* C768C 800EC28C 24020066 */  addiu      $v0, $zero, 0x66
/* C7690 800EC290 1054000C */  beq        $v0, $s4, .L800EC2C4
/* C7694 800EC294 02801825 */   or        $v1, $s4, $zero
/* C7698 800EC298 24040067 */  addiu      $a0, $zero, 0x67
/* C769C 800EC29C 10830002 */  beq        $a0, $v1, .L800EC2A8
/* C76A0 800EC2A0 24010047 */   addiu     $at, $zero, 0x47
/* C76A4 800EC2A4 14610096 */  bne        $v1, $at, .L800EC500
.L800EC2A8:
/* C76A8 800EC2A8 2A41FFFC */   slti      $at, $s2, -4
/* C76AC 800EC2AC 14200094 */  bnez       $at, .L800EC500
/* C76B0 800EC2B0 00000000 */   nop
/* C76B4 800EC2B4 8E0F0024 */  lw         $t7, 0x24($s0)
/* C76B8 800EC2B8 024F082A */  slt        $at, $s2, $t7
/* C76BC 800EC2BC 10200090 */  beqz       $at, .L800EC500
/* C76C0 800EC2C0 00000000 */   nop
.L800EC2C4:
/* C76C4 800EC2C4 26520001 */  addiu      $s2, $s2, 1
/* C76C8 800EC2C8 0012C400 */  sll        $t8, $s2, 0x10
/* C76CC 800EC2CC 1043000E */  beq        $v0, $v1, .L800EC308
/* C76D0 800EC2D0 00189403 */   sra       $s2, $t8, 0x10
/* C76D4 800EC2D4 8E0E0030 */  lw         $t6, 0x30($s0)
/* C76D8 800EC2D8 8E020024 */  lw         $v0, 0x24($s0)
/* C76DC 800EC2DC 31CF0008 */  andi       $t7, $t6, 8
/* C76E0 800EC2E0 15E00005 */  bnez       $t7, .L800EC2F8
/* C76E4 800EC2E4 0262082A */   slt       $at, $s3, $v0
/* C76E8 800EC2E8 50200004 */  beql       $at, $zero, .L800EC2FC
/* C76EC 800EC2EC 0052C023 */   subu      $t8, $v0, $s2
/* C76F0 800EC2F0 AE130024 */  sw         $s3, 0x24($s0)
/* C76F4 800EC2F4 02601025 */  or         $v0, $s3, $zero
.L800EC2F8:
/* C76F8 800EC2F8 0052C023 */  subu       $t8, $v0, $s2
.L800EC2FC:
/* C76FC 800EC2FC 07010002 */  bgez       $t8, .L800EC308
/* C7700 800EC300 AE180024 */   sw        $t8, 0x24($s0)
/* C7704 800EC304 AE000024 */  sw         $zero, 0x24($s0)
.L800EC308:
/* C7708 800EC308 1E400033 */  bgtz       $s2, .L800EC3D8
/* C770C 800EC30C 0272082A */   slt       $at, $s3, $s2
/* C7710 800EC310 8E0F0008 */  lw         $t7, 8($s0)
/* C7714 800EC314 8E180014 */  lw         $t8, 0x14($s0)
/* C7718 800EC318 240E0030 */  addiu      $t6, $zero, 0x30
/* C771C 800EC31C 00121823 */  negu       $v1, $s2
/* C7720 800EC320 01F8C821 */  addu       $t9, $t7, $t8
/* C7724 800EC324 A32E0000 */  sb         $t6, ($t9)
/* C7728 800EC328 8E0F0014 */  lw         $t7, 0x14($s0)
/* C772C 800EC32C 8E020024 */  lw         $v0, 0x24($s0)
/* C7730 800EC330 02202825 */  or         $a1, $s1, $zero
/* C7734 800EC334 25F80001 */  addiu      $t8, $t7, 1
/* C7738 800EC338 1C400005 */  bgtz       $v0, .L800EC350
/* C773C 800EC33C AE180014 */   sw        $t8, 0x14($s0)
/* C7740 800EC340 8E0E0030 */  lw         $t6, 0x30($s0)
/* C7744 800EC344 31D90008 */  andi       $t9, $t6, 8
/* C7748 800EC348 5320000B */  beql       $t9, $zero, .L800EC378
/* C774C 800EC34C 0043082A */   slt       $at, $v0, $v1
.L800EC350:
/* C7750 800EC350 8E180008 */  lw         $t8, 8($s0)
/* C7754 800EC354 8E0E0014 */  lw         $t6, 0x14($s0)
/* C7758 800EC358 240F002E */  addiu      $t7, $zero, 0x2e
/* C775C 800EC35C 030EC821 */  addu       $t9, $t8, $t6
/* C7760 800EC360 A32F0000 */  sb         $t7, ($t9)
/* C7764 800EC364 8E180014 */  lw         $t8, 0x14($s0)
/* C7768 800EC368 8E020024 */  lw         $v0, 0x24($s0)
/* C776C 800EC36C 270E0001 */  addiu      $t6, $t8, 1
/* C7770 800EC370 AE0E0014 */  sw         $t6, 0x14($s0)
/* C7774 800EC374 0043082A */  slt        $at, $v0, $v1
.L800EC378:
/* C7778 800EC378 50200006 */  beql       $at, $zero, .L800EC394
/* C777C 800EC37C 0052C021 */   addu      $t8, $v0, $s2
/* C7780 800EC380 00029023 */  negu       $s2, $v0
/* C7784 800EC384 00127C00 */  sll        $t7, $s2, 0x10
/* C7788 800EC388 000F9403 */  sra        $s2, $t7, 0x10
/* C778C 800EC38C 00121823 */  negu       $v1, $s2
/* C7790 800EC390 0052C021 */  addu       $t8, $v0, $s2
.L800EC394:
/* C7794 800EC394 0313082A */  slt        $at, $t8, $s3
/* C7798 800EC398 AE030018 */  sw         $v1, 0x18($s0)
/* C779C 800EC39C 10200004 */  beqz       $at, .L800EC3B0
/* C77A0 800EC3A0 AE180024 */   sw        $t8, 0x24($s0)
/* C77A4 800EC3A4 00189C00 */  sll        $s3, $t8, 0x10
/* C77A8 800EC3A8 00137403 */  sra        $t6, $s3, 0x10
/* C77AC 800EC3AC 01C09825 */  or         $s3, $t6, $zero
.L800EC3B0:
/* C77B0 800EC3B0 8E0F0008 */  lw         $t7, 8($s0)
/* C77B4 800EC3B4 8E190014 */  lw         $t9, 0x14($s0)
/* C77B8 800EC3B8 AE13001C */  sw         $s3, 0x1c($s0)
/* C77BC 800EC3BC 02603025 */  or         $a2, $s3, $zero
/* C77C0 800EC3C0 0C03AFC4 */  jal        func_800EBF10
/* C77C4 800EC3C4 01F92021 */   addu      $a0, $t7, $t9
/* C77C8 800EC3C8 8E180024 */  lw         $t8, 0x24($s0)
/* C77CC 800EC3CC 03137023 */  subu       $t6, $t8, $s3
/* C77D0 800EC3D0 100000E2 */  b          .L800EC75C
/* C77D4 800EC3D4 AE0E0020 */   sw        $t6, 0x20($s0)
.L800EC3D8:
/* C77D8 800EC3D8 1020001D */  beqz       $at, .L800EC450
/* C77DC 800EC3DC 02202825 */   or        $a1, $s1, $zero
/* C77E0 800EC3E0 8E0F0008 */  lw         $t7, 8($s0)
/* C77E4 800EC3E4 8E190014 */  lw         $t9, 0x14($s0)
/* C77E8 800EC3E8 02202825 */  or         $a1, $s1, $zero
/* C77EC 800EC3EC 02603025 */  or         $a2, $s3, $zero
/* C77F0 800EC3F0 0C03AFC4 */  jal        func_800EBF10
/* C77F4 800EC3F4 01F92021 */   addu      $a0, $t7, $t9
/* C77F8 800EC3F8 8E180014 */  lw         $t8, 0x14($s0)
/* C77FC 800EC3FC 8E020024 */  lw         $v0, 0x24($s0)
/* C7800 800EC400 02537823 */  subu       $t7, $s2, $s3
/* C7804 800EC404 03137021 */  addu       $t6, $t8, $s3
/* C7808 800EC408 AE0E0014 */  sw         $t6, 0x14($s0)
/* C780C 800EC40C 1C400005 */  bgtz       $v0, .L800EC424
/* C7810 800EC410 AE0F0018 */   sw        $t7, 0x18($s0)
/* C7814 800EC414 8E190030 */  lw         $t9, 0x30($s0)
/* C7818 800EC418 33380008 */  andi       $t8, $t9, 8
/* C781C 800EC41C 1300000A */  beqz       $t8, .L800EC448
/* C7820 800EC420 00000000 */   nop
.L800EC424:
/* C7824 800EC424 8E0F0008 */  lw         $t7, 8($s0)
/* C7828 800EC428 8E190014 */  lw         $t9, 0x14($s0)
/* C782C 800EC42C 240E002E */  addiu      $t6, $zero, 0x2e
/* C7830 800EC430 01F9C021 */  addu       $t8, $t7, $t9
/* C7834 800EC434 A30E0000 */  sb         $t6, ($t8)
/* C7838 800EC438 8E0F001C */  lw         $t7, 0x1c($s0)
/* C783C 800EC43C 8E020024 */  lw         $v0, 0x24($s0)
/* C7840 800EC440 25F90001 */  addiu      $t9, $t7, 1
/* C7844 800EC444 AE19001C */  sw         $t9, 0x1c($s0)
.L800EC448:
/* C7848 800EC448 100000C4 */  b          .L800EC75C
/* C784C 800EC44C AE020020 */   sw        $v0, 0x20($s0)
.L800EC450:
/* C7850 800EC450 8E0E0008 */  lw         $t6, 8($s0)
/* C7854 800EC454 8E180014 */  lw         $t8, 0x14($s0)
/* C7858 800EC458 02403025 */  or         $a2, $s2, $zero
/* C785C 800EC45C 0C03AFC4 */  jal        func_800EBF10
/* C7860 800EC460 01D82021 */   addu      $a0, $t6, $t8
/* C7864 800EC464 8E0F0014 */  lw         $t7, 0x14($s0)
/* C7868 800EC468 8E020024 */  lw         $v0, 0x24($s0)
/* C786C 800EC46C 02729823 */  subu       $s3, $s3, $s2
/* C7870 800EC470 00137400 */  sll        $t6, $s3, 0x10
/* C7874 800EC474 01F2C821 */  addu       $t9, $t7, $s2
/* C7878 800EC478 AE190014 */  sw         $t9, 0x14($s0)
/* C787C 800EC47C 1C400005 */  bgtz       $v0, .L800EC494
/* C7880 800EC480 000E9C03 */   sra       $s3, $t6, 0x10
/* C7884 800EC484 8E0F0030 */  lw         $t7, 0x30($s0)
/* C7888 800EC488 31F90008 */  andi       $t9, $t7, 8
/* C788C 800EC48C 5320000B */  beql       $t9, $zero, .L800EC4BC
/* C7890 800EC490 0053082A */   slt       $at, $v0, $s3
.L800EC494:
/* C7894 800EC494 8E180008 */  lw         $t8, 8($s0)
/* C7898 800EC498 8E0F0014 */  lw         $t7, 0x14($s0)
/* C789C 800EC49C 240E002E */  addiu      $t6, $zero, 0x2e
/* C78A0 800EC4A0 030FC821 */  addu       $t9, $t8, $t7
/* C78A4 800EC4A4 A32E0000 */  sb         $t6, ($t9)
/* C78A8 800EC4A8 8E180014 */  lw         $t8, 0x14($s0)
/* C78AC 800EC4AC 8E020024 */  lw         $v0, 0x24($s0)
/* C78B0 800EC4B0 270F0001 */  addiu      $t7, $t8, 1
/* C78B4 800EC4B4 AE0F0014 */  sw         $t7, 0x14($s0)
/* C78B8 800EC4B8 0053082A */  slt        $at, $v0, $s3
.L800EC4BC:
/* C78BC 800EC4BC 10200004 */  beqz       $at, .L800EC4D0
/* C78C0 800EC4C0 02512821 */   addu      $a1, $s2, $s1
/* C78C4 800EC4C4 00029C00 */  sll        $s3, $v0, 0x10
/* C78C8 800EC4C8 00137403 */  sra        $t6, $s3, 0x10
/* C78CC 800EC4CC 01C09825 */  or         $s3, $t6, $zero
.L800EC4D0:
/* C78D0 800EC4D0 8E190008 */  lw         $t9, 8($s0)
/* C78D4 800EC4D4 8E180014 */  lw         $t8, 0x14($s0)
/* C78D8 800EC4D8 02603025 */  or         $a2, $s3, $zero
/* C78DC 800EC4DC 0C03AFC4 */  jal        func_800EBF10
/* C78E0 800EC4E0 03382021 */   addu      $a0, $t9, $t8
/* C78E4 800EC4E4 8E0F0014 */  lw         $t7, 0x14($s0)
/* C78E8 800EC4E8 8E190024 */  lw         $t9, 0x24($s0)
/* C78EC 800EC4EC 01F37021 */  addu       $t6, $t7, $s3
/* C78F0 800EC4F0 0333C023 */  subu       $t8, $t9, $s3
/* C78F4 800EC4F4 AE0E0014 */  sw         $t6, 0x14($s0)
/* C78F8 800EC4F8 10000098 */  b          .L800EC75C
/* C78FC 800EC4FC AE180018 */   sw        $t8, 0x18($s0)
.L800EC500:
/* C7900 800EC500 10830003 */  beq        $a0, $v1, .L800EC510
/* C7904 800EC504 24010047 */   addiu     $at, $zero, 0x47
/* C7908 800EC508 54610011 */  bnel       $v1, $at, .L800EC550
/* C790C 800EC50C 8E180008 */   lw        $t8, 8($s0)
.L800EC510:
/* C7910 800EC510 8E020024 */  lw         $v0, 0x24($s0)
/* C7914 800EC514 24140045 */  addiu      $s4, $zero, 0x45
/* C7918 800EC518 0262082A */  slt        $at, $s3, $v0
/* C791C 800EC51C 50200004 */  beql       $at, $zero, .L800EC530
/* C7920 800EC520 244FFFFF */   addiu     $t7, $v0, -1
/* C7924 800EC524 AE130024 */  sw         $s3, 0x24($s0)
/* C7928 800EC528 02601025 */  or         $v0, $s3, $zero
/* C792C 800EC52C 244FFFFF */  addiu      $t7, $v0, -1
.L800EC530:
/* C7930 800EC530 05E10002 */  bgez       $t7, .L800EC53C
/* C7934 800EC534 AE0F0024 */   sw        $t7, 0x24($s0)
/* C7938 800EC538 AE000024 */  sw         $zero, 0x24($s0)
.L800EC53C:
/* C793C 800EC53C 14830003 */  bne        $a0, $v1, .L800EC54C
/* C7940 800EC540 00000000 */   nop
/* C7944 800EC544 10000001 */  b          .L800EC54C
/* C7948 800EC548 24140065 */   addiu     $s4, $zero, 0x65
.L800EC54C:
/* C794C 800EC54C 8E180008 */  lw         $t8, 8($s0)
.L800EC550:
/* C7950 800EC550 8E0F0014 */  lw         $t7, 0x14($s0)
/* C7954 800EC554 92390000 */  lbu        $t9, ($s1)
/* C7958 800EC558 26310001 */  addiu      $s1, $s1, 1
/* C795C 800EC55C 030F7021 */  addu       $t6, $t8, $t7
/* C7960 800EC560 A1D90000 */  sb         $t9, ($t6)
/* C7964 800EC564 8E180014 */  lw         $t8, 0x14($s0)
/* C7968 800EC568 8E020024 */  lw         $v0, 0x24($s0)
/* C796C 800EC56C 270F0001 */  addiu      $t7, $t8, 1
/* C7970 800EC570 1C400005 */  bgtz       $v0, .L800EC588
/* C7974 800EC574 AE0F0014 */   sw        $t7, 0x14($s0)
/* C7978 800EC578 8E190030 */  lw         $t9, 0x30($s0)
/* C797C 800EC57C 332E0008 */  andi       $t6, $t9, 8
/* C7980 800EC580 11C0000A */  beqz       $t6, .L800EC5AC
/* C7984 800EC584 00000000 */   nop
.L800EC588:
/* C7988 800EC588 8E0F0008 */  lw         $t7, 8($s0)
/* C798C 800EC58C 8E190014 */  lw         $t9, 0x14($s0)
/* C7990 800EC590 2418002E */  addiu      $t8, $zero, 0x2e
/* C7994 800EC594 01F97021 */  addu       $t6, $t7, $t9
/* C7998 800EC598 A1D80000 */  sb         $t8, ($t6)
/* C799C 800EC59C 8E0F0014 */  lw         $t7, 0x14($s0)
/* C79A0 800EC5A0 8E020024 */  lw         $v0, 0x24($s0)
/* C79A4 800EC5A4 25F90001 */  addiu      $t9, $t7, 1
/* C79A8 800EC5A8 AE190014 */  sw         $t9, 0x14($s0)
.L800EC5AC:
/* C79AC 800EC5AC 58400016 */  blezl      $v0, .L800EC608
/* C79B0 800EC5B0 8E0E0008 */   lw        $t6, 8($s0)
/* C79B4 800EC5B4 2673FFFF */  addiu      $s3, $s3, -1
/* C79B8 800EC5B8 0013C400 */  sll        $t8, $s3, 0x10
/* C79BC 800EC5BC 00189C03 */  sra        $s3, $t8, 0x10
/* C79C0 800EC5C0 0053082A */  slt        $at, $v0, $s3
/* C79C4 800EC5C4 10200004 */  beqz       $at, .L800EC5D8
/* C79C8 800EC5C8 02202825 */   or        $a1, $s1, $zero
/* C79CC 800EC5CC 00029C00 */  sll        $s3, $v0, 0x10
/* C79D0 800EC5D0 00137C03 */  sra        $t7, $s3, 0x10
/* C79D4 800EC5D4 01E09825 */  or         $s3, $t7, $zero
.L800EC5D8:
/* C79D8 800EC5D8 8E190008 */  lw         $t9, 8($s0)
/* C79DC 800EC5DC 8E180014 */  lw         $t8, 0x14($s0)
/* C79E0 800EC5E0 02603025 */  or         $a2, $s3, $zero
/* C79E4 800EC5E4 0C03AFC4 */  jal        func_800EBF10
/* C79E8 800EC5E8 03382021 */   addu      $a0, $t9, $t8
/* C79EC 800EC5EC 8E0E0014 */  lw         $t6, 0x14($s0)
/* C79F0 800EC5F0 8E190024 */  lw         $t9, 0x24($s0)
/* C79F4 800EC5F4 01D37821 */  addu       $t7, $t6, $s3
/* C79F8 800EC5F8 0333C023 */  subu       $t8, $t9, $s3
/* C79FC 800EC5FC AE0F0014 */  sw         $t7, 0x14($s0)
/* C7A00 800EC600 AE180018 */  sw         $t8, 0x18($s0)
/* C7A04 800EC604 8E0E0008 */  lw         $t6, 8($s0)
.L800EC608:
/* C7A08 800EC608 8E0F0014 */  lw         $t7, 0x14($s0)
/* C7A0C 800EC60C 01CF8821 */  addu       $s1, $t6, $t7
/* C7A10 800EC610 26310001 */  addiu      $s1, $s1, 1
/* C7A14 800EC614 06400005 */  bltz       $s2, .L800EC62C
/* C7A18 800EC618 A234FFFF */   sb        $s4, -1($s1)
/* C7A1C 800EC61C 2419002B */  addiu      $t9, $zero, 0x2b
/* C7A20 800EC620 A2390000 */  sb         $t9, ($s1)
/* C7A24 800EC624 10000008 */  b          .L800EC648
/* C7A28 800EC628 26310001 */   addiu     $s1, $s1, 1
.L800EC62C:
/* C7A2C 800EC62C 00129023 */  negu       $s2, $s2
/* C7A30 800EC630 00127400 */  sll        $t6, $s2, 0x10
/* C7A34 800EC634 2418002D */  addiu      $t8, $zero, 0x2d
/* C7A38 800EC638 000E7C03 */  sra        $t7, $t6, 0x10
/* C7A3C 800EC63C A2380000 */  sb         $t8, ($s1)
/* C7A40 800EC640 26310001 */  addiu      $s1, $s1, 1
/* C7A44 800EC644 01E09025 */  or         $s2, $t7, $zero
.L800EC648:
/* C7A48 800EC648 2A410064 */  slti       $at, $s2, 0x64
/* C7A4C 800EC64C 5420002A */  bnel       $at, $zero, .L800EC6F8
/* C7A50 800EC650 2402000A */   addiu     $v0, $zero, 0xa
/* C7A54 800EC654 2A4103E8 */  slti       $at, $s2, 0x3e8
/* C7A58 800EC658 14200013 */  bnez       $at, .L800EC6A8
/* C7A5C 800EC65C 240203E8 */   addiu     $v0, $zero, 0x3e8
/* C7A60 800EC660 0242001A */  div        $zero, $s2, $v0
/* C7A64 800EC664 14400002 */  bnez       $v0, .L800EC670
/* C7A68 800EC668 00000000 */   nop
/* C7A6C 800EC66C 0007000D */  break      7
.L800EC670:
/* C7A70 800EC670 2401FFFF */   addiu     $at, $zero, -1
/* C7A74 800EC674 14410004 */  bne        $v0, $at, .L800EC688
/* C7A78 800EC678 3C018000 */   lui       $at, 0x8000
/* C7A7C 800EC67C 16410002 */  bne        $s2, $at, .L800EC688
/* C7A80 800EC680 00000000 */   nop
/* C7A84 800EC684 0006000D */  break      6
.L800EC688:
/* C7A88 800EC688 00009010 */   mfhi      $s2
/* C7A8C 800EC68C 00127400 */  sll        $t6, $s2, 0x10
/* C7A90 800EC690 0000C812 */  mflo       $t9
/* C7A94 800EC694 27380030 */  addiu      $t8, $t9, 0x30
/* C7A98 800EC698 000E7C03 */  sra        $t7, $t6, 0x10
/* C7A9C 800EC69C 01E09025 */  or         $s2, $t7, $zero
/* C7AA0 800EC6A0 A2380000 */  sb         $t8, ($s1)
/* C7AA4 800EC6A4 26310001 */  addiu      $s1, $s1, 1
.L800EC6A8:
/* C7AA8 800EC6A8 24020064 */  addiu      $v0, $zero, 0x64
/* C7AAC 800EC6AC 0242001A */  div        $zero, $s2, $v0
/* C7AB0 800EC6B0 14400002 */  bnez       $v0, .L800EC6BC
/* C7AB4 800EC6B4 00000000 */   nop
/* C7AB8 800EC6B8 0007000D */  break      7
.L800EC6BC:
/* C7ABC 800EC6BC 2401FFFF */   addiu     $at, $zero, -1
/* C7AC0 800EC6C0 14410004 */  bne        $v0, $at, .L800EC6D4
/* C7AC4 800EC6C4 3C018000 */   lui       $at, 0x8000
/* C7AC8 800EC6C8 16410002 */  bne        $s2, $at, .L800EC6D4
/* C7ACC 800EC6CC 00000000 */   nop
/* C7AD0 800EC6D0 0006000D */  break      6
.L800EC6D4:
/* C7AD4 800EC6D4 00009010 */   mfhi      $s2
/* C7AD8 800EC6D8 00127400 */  sll        $t6, $s2, 0x10
/* C7ADC 800EC6DC 0000C812 */  mflo       $t9
/* C7AE0 800EC6E0 27380030 */  addiu      $t8, $t9, 0x30
/* C7AE4 800EC6E4 000E7C03 */  sra        $t7, $t6, 0x10
/* C7AE8 800EC6E8 01E09025 */  or         $s2, $t7, $zero
/* C7AEC 800EC6EC A2380000 */  sb         $t8, ($s1)
/* C7AF0 800EC6F0 26310001 */  addiu      $s1, $s1, 1
/* C7AF4 800EC6F4 2402000A */  addiu      $v0, $zero, 0xa
.L800EC6F8:
/* C7AF8 800EC6F8 0242001A */  div        $zero, $s2, $v0
/* C7AFC 800EC6FC 14400002 */  bnez       $v0, .L800EC708
/* C7B00 800EC700 00000000 */   nop
/* C7B04 800EC704 0007000D */  break      7
.L800EC708:
/* C7B08 800EC708 2401FFFF */   addiu     $at, $zero, -1
/* C7B0C 800EC70C 14410004 */  bne        $v0, $at, .L800EC720
/* C7B10 800EC710 3C018000 */   lui       $at, 0x8000
/* C7B14 800EC714 16410002 */  bne        $s2, $at, .L800EC720
/* C7B18 800EC718 00000000 */   nop
/* C7B1C 800EC71C 0006000D */  break      6
.L800EC720:
/* C7B20 800EC720 00009010 */   mfhi      $s2
/* C7B24 800EC724 00127400 */  sll        $t6, $s2, 0x10
/* C7B28 800EC728 0000C812 */  mflo       $t9
/* C7B2C 800EC72C 27380030 */  addiu      $t8, $t9, 0x30
/* C7B30 800EC730 000E7C03 */  sra        $t7, $t6, 0x10
/* C7B34 800EC734 25F90030 */  addiu      $t9, $t7, 0x30
/* C7B38 800EC738 A2380000 */  sb         $t8, ($s1)
/* C7B3C 800EC73C A2390001 */  sb         $t9, 1($s1)
/* C7B40 800EC740 8E180008 */  lw         $t8, 8($s0)
/* C7B44 800EC744 01E09025 */  or         $s2, $t7, $zero
/* C7B48 800EC748 8E0F0014 */  lw         $t7, 0x14($s0)
/* C7B4C 800EC74C 26310002 */  addiu      $s1, $s1, 2
/* C7B50 800EC750 02387023 */  subu       $t6, $s1, $t8
/* C7B54 800EC754 01CFC823 */  subu       $t9, $t6, $t7
/* C7B58 800EC758 AE19001C */  sw         $t9, 0x1c($s0)
.L800EC75C:
/* C7B5C 800EC75C 8E180030 */  lw         $t8, 0x30($s0)
/* C7B60 800EC760 24010010 */  addiu      $at, $zero, 0x10
/* C7B64 800EC764 330E0014 */  andi       $t6, $t8, 0x14
/* C7B68 800EC768 55C10010 */  bnel       $t6, $at, .L800EC7AC
/* C7B6C 800EC76C 8FBF0014 */   lw        $ra, 0x14($sp)
/* C7B70 800EC770 8E0F000C */  lw         $t7, 0xc($s0)
/* C7B74 800EC774 8E190014 */  lw         $t9, 0x14($s0)
/* C7B78 800EC778 8E0E0018 */  lw         $t6, 0x18($s0)
/* C7B7C 800EC77C 8E030028 */  lw         $v1, 0x28($s0)
/* C7B80 800EC780 01F9C021 */  addu       $t8, $t7, $t9
/* C7B84 800EC784 8E19001C */  lw         $t9, 0x1c($s0)
/* C7B88 800EC788 030E7821 */  addu       $t7, $t8, $t6
/* C7B8C 800EC78C 8E0E0020 */  lw         $t6, 0x20($s0)
/* C7B90 800EC790 01F9C021 */  addu       $t8, $t7, $t9
/* C7B94 800EC794 030E1021 */  addu       $v0, $t8, $t6
/* C7B98 800EC798 0043082A */  slt        $at, $v0, $v1
/* C7B9C 800EC79C 10200002 */  beqz       $at, .L800EC7A8
/* C7BA0 800EC7A0 00627823 */   subu      $t7, $v1, $v0
/* C7BA4 800EC7A4 AE0F0010 */  sw         $t7, 0x10($s0)
.L800EC7A8:
/* C7BA8 800EC7A8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800EC7AC:
/* C7BAC 800EC7AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* C7BB0 800EC7B0 03E00008 */  jr         $ra
/* C7BB4 800EC7B4 00000000 */   nop

glabel func_800EC7B8
/* C7BB8 800EC7B8 03E00008 */  jr         $ra
/* C7BBC 800EC7BC 00000000 */   nop

glabel func_800EC7C0
/* C7BC0 800EC7C0 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* C7BC4 800EC7C4 AFBF003C */  sw         $ra, 0x3c($sp)
/* C7BC8 800EC7C8 AFB50038 */  sw         $s5, 0x38($sp)
/* C7BCC 800EC7CC AFB40034 */  sw         $s4, 0x34($sp)
/* C7BD0 800EC7D0 AFB30030 */  sw         $s3, 0x30($sp)
/* C7BD4 800EC7D4 AFB2002C */  sw         $s2, 0x2c($sp)
/* C7BD8 800EC7D8 AFB10028 */  sw         $s1, 0x28($sp)
/* C7BDC 800EC7DC AFB00024 */  sw         $s0, 0x24($sp)
/* C7BE0 800EC7E0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* C7BE4 800EC7E4 AFA400D0 */  sw         $a0, 0xd0($sp)
/* C7BE8 800EC7E8 AFA500D4 */  sw         $a1, 0xd4($sp)
/* C7BEC 800EC7EC 8C820024 */  lw         $v0, 0x24($a0)
/* C7BF0 800EC7F0 27B500B0 */  addiu      $s5, $sp, 0xb0
/* C7BF4 800EC7F4 D4940000 */  ldc1       $f20, ($a0)
/* C7BF8 800EC7F8 04410003 */  bgez       $v0, .L800EC808
/* C7BFC 800EC7FC 240F0006 */   addiu     $t7, $zero, 6
/* C7C00 800EC800 1000000C */  b          .L800EC834
/* C7C04 800EC804 AC8F0024 */   sw        $t7, 0x24($a0)
.L800EC808:
/* C7C08 800EC808 1440000A */  bnez       $v0, .L800EC834
/* C7C0C 800EC80C 93B800D7 */   lbu       $t8, 0xd7($sp)
/* C7C10 800EC810 24010067 */  addiu      $at, $zero, 0x67
/* C7C14 800EC814 13010004 */  beq        $t8, $at, .L800EC828
/* C7C18 800EC818 AFB80048 */   sw        $t8, 0x48($sp)
/* C7C1C 800EC81C 24010047 */  addiu      $at, $zero, 0x47
/* C7C20 800EC820 57010005 */  bnel       $t8, $at, .L800EC838
/* C7C24 800EC824 8FAE00D0 */   lw        $t6, 0xd0($sp)
.L800EC828:
/* C7C28 800EC828 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* C7C2C 800EC82C 24190001 */  addiu      $t9, $zero, 1
/* C7C30 800EC830 ADF90024 */  sw         $t9, 0x24($t7)
.L800EC834:
/* C7C34 800EC834 8FAE00D0 */  lw         $t6, 0xd0($sp)
.L800EC838:
/* C7C38 800EC838 240107FF */  addiu      $at, $zero, 0x7ff
/* C7C3C 800EC83C 95C40000 */  lhu        $a0, ($t6)
/* C7C40 800EC840 30837FF0 */  andi       $v1, $a0, 0x7ff0
/* C7C44 800EC844 0003C103 */  sra        $t8, $v1, 4
/* C7C48 800EC848 0018CC00 */  sll        $t9, $t8, 0x10
/* C7C4C 800EC84C 00191C03 */  sra        $v1, $t9, 0x10
/* C7C50 800EC850 14610018 */  bne        $v1, $at, .L800EC8B4
/* C7C54 800EC854 00000000 */   nop
/* C7C58 800EC858 A7A0009A */  sh         $zero, 0x9a($sp)
/* C7C5C 800EC85C 95D80000 */  lhu        $t8, ($t6)
/* C7C60 800EC860 24030002 */  addiu      $v1, $zero, 2
/* C7C64 800EC864 00031400 */  sll        $v0, $v1, 0x10
/* C7C68 800EC868 3319000F */  andi       $t9, $t8, 0xf
/* C7C6C 800EC86C 5720000A */  bnel       $t9, $zero, .L800EC898
/* C7C70 800EC870 00027C03 */   sra       $t7, $v0, 0x10
/* C7C74 800EC874 95CF0002 */  lhu        $t7, 2($t6)
/* C7C78 800EC878 55E00007 */  bnel       $t7, $zero, .L800EC898
/* C7C7C 800EC87C 00027C03 */   sra       $t7, $v0, 0x10
/* C7C80 800EC880 95D80004 */  lhu        $t8, 4($t6)
/* C7C84 800EC884 57000004 */  bnel       $t8, $zero, .L800EC898
/* C7C88 800EC888 00027C03 */   sra       $t7, $v0, 0x10
/* C7C8C 800EC88C 95D90006 */  lhu        $t9, 6($t6)
/* C7C90 800EC890 13200003 */  beqz       $t9, .L800EC8A0
/* C7C94 800EC894 00027C03 */   sra       $t7, $v0, 0x10
.L800EC898:
/* C7C98 800EC898 10000014 */  b          .L800EC8EC
/* C7C9C 800EC89C 01E01025 */   or        $v0, $t7, $zero
.L800EC8A0:
/* C7CA0 800EC8A0 24030001 */  addiu      $v1, $zero, 1
/* C7CA4 800EC8A4 00031400 */  sll        $v0, $v1, 0x10
/* C7CA8 800EC8A8 00027C03 */  sra        $t7, $v0, 0x10
/* C7CAC 800EC8AC 1000000F */  b          .L800EC8EC
/* C7CB0 800EC8B0 01E01025 */   or        $v0, $t7, $zero
.L800EC8B4:
/* C7CB4 800EC8B4 18600008 */  blez       $v1, .L800EC8D8
/* C7CB8 800EC8B8 3098800F */   andi      $t8, $a0, 0x800f
/* C7CBC 800EC8BC 8FB900D0 */  lw         $t9, 0xd0($sp)
/* C7CC0 800EC8C0 370E3FF0 */  ori        $t6, $t8, 0x3ff0
/* C7CC4 800EC8C4 246FFC02 */  addiu      $t7, $v1, -0x3fe
/* C7CC8 800EC8C8 A72E0000 */  sh         $t6, ($t9)
/* C7CCC 800EC8CC A7AF009A */  sh         $t7, 0x9a($sp)
/* C7CD0 800EC8D0 10000006 */  b          .L800EC8EC
/* C7CD4 800EC8D4 2402FFFF */   addiu     $v0, $zero, -1
.L800EC8D8:
/* C7CD8 800EC8D8 04610003 */  bgez       $v1, .L800EC8E8
/* C7CDC 800EC8DC 00001025 */   or        $v0, $zero, $zero
/* C7CE0 800EC8E0 10000002 */  b          .L800EC8EC
/* C7CE4 800EC8E4 24020002 */   addiu     $v0, $zero, 2
.L800EC8E8:
/* C7CE8 800EC8E8 A7A0009A */  sh         $zero, 0x9a($sp)
.L800EC8EC:
/* C7CEC 800EC8EC 18400012 */  blez       $v0, .L800EC938
/* C7CF0 800EC8F0 0002C400 */   sll       $t8, $v0, 0x10
/* C7CF4 800EC8F4 0002C400 */  sll        $t8, $v0, 0x10
/* C7CF8 800EC8F8 00187403 */  sra        $t6, $t8, 0x10
/* C7CFC 800EC8FC 24010002 */  addiu      $at, $zero, 2
/* C7D00 800EC900 15C10004 */  bne        $t6, $at, .L800EC914
/* C7D04 800EC904 8FB900D0 */   lw        $t9, 0xd0($sp)
/* C7D08 800EC908 3C058011 */  lui        $a1, %hi(D_80111178)
/* C7D0C 800EC90C 10000003 */  b          .L800EC91C
/* C7D10 800EC910 24A51178 */   addiu     $a1, $a1, %lo(D_80111178)
.L800EC914:
/* C7D14 800EC914 3C058011 */  lui        $a1, %hi(D_8011117C)
/* C7D18 800EC918 24A5117C */  addiu      $a1, $a1, %lo(D_8011117C)
.L800EC91C:
/* C7D1C 800EC91C 240F0003 */  addiu      $t7, $zero, 3
/* C7D20 800EC920 AF2F0014 */  sw         $t7, 0x14($t9)
/* C7D24 800EC924 8F240008 */  lw         $a0, 8($t9)
/* C7D28 800EC928 0C03AFC4 */  jal        func_800EBF10
/* C7D2C 800EC92C 24060003 */   addiu     $a2, $zero, 3
/* C7D30 800EC930 100000ED */  b          .L800ECCE8
/* C7D34 800EC934 8FBF003C */   lw        $ra, 0x3c($sp)
.L800EC938:
/* C7D38 800EC938 00187403 */  sra        $t6, $t8, 0x10
/* C7D3C 800EC93C 15C00003 */  bnez       $t6, .L800EC94C
/* C7D40 800EC940 00009825 */   or        $s3, $zero, $zero
/* C7D44 800EC944 100000E2 */  b          .L800ECCD0
/* C7D48 800EC948 A7A0009A */   sh        $zero, 0x9a($sp)
.L800EC94C:
/* C7D4C 800EC94C 44801800 */  mtc1       $zero, $f3
/* C7D50 800EC950 44801000 */  mtc1       $zero, $f2
/* C7D54 800EC954 93AF00D7 */  lbu        $t7, 0xd7($sp)
/* C7D58 800EC958 87B9009A */  lh         $t9, 0x9a($sp)
/* C7D5C 800EC95C 4622A03C */  c.lt.d     $f20, $f2
/* C7D60 800EC960 24017597 */  addiu      $at, $zero, 0x7597
/* C7D64 800EC964 00001825 */  or         $v1, $zero, $zero
/* C7D68 800EC968 27B500B1 */  addiu      $s5, $sp, 0xb1
/* C7D6C 800EC96C 45000002 */  bc1f       .L800EC978
/* C7D70 800EC970 AFAF0048 */   sw        $t7, 0x48($sp)
/* C7D74 800EC974 4620A507 */  neg.d      $f20, $f20
.L800EC978:
/* C7D78 800EC978 03210019 */  multu      $t9, $at
/* C7D7C 800EC97C 3C010001 */  lui        $at, 1
/* C7D80 800EC980 342186A0 */  ori        $at, $at, 0x86a0
/* C7D84 800EC984 24050006 */  addiu      $a1, $zero, 6
/* C7D88 800EC988 0000C012 */  mflo       $t8
/* C7D8C 800EC98C 00000000 */  nop
/* C7D90 800EC990 00000000 */  nop
/* C7D94 800EC994 0301001A */  div        $zero, $t8, $at
/* C7D98 800EC998 00007012 */  mflo       $t6
/* C7D9C 800EC99C 25CFFFFC */  addiu      $t7, $t6, -4
/* C7DA0 800EC9A0 000FCC00 */  sll        $t9, $t7, 0x10
/* C7DA4 800EC9A4 0019C403 */  sra        $t8, $t9, 0x10
/* C7DA8 800EC9A8 07010019 */  bgez       $t8, .L800ECA10
/* C7DAC 800EC9AC A7AF009A */   sh        $t7, 0x9a($sp)
/* C7DB0 800EC9B0 000FCC00 */  sll        $t9, $t7, 0x10
/* C7DB4 800EC9B4 0019C403 */  sra        $t8, $t9, 0x10
/* C7DB8 800EC9B8 240E0003 */  addiu      $t6, $zero, 3
/* C7DBC 800EC9BC 01D82023 */  subu       $a0, $t6, $t8
/* C7DC0 800EC9C0 2401FFFC */  addiu      $at, $zero, -4
/* C7DC4 800EC9C4 00811024 */  and        $v0, $a0, $at
/* C7DC8 800EC9C8 0002C823 */  negu       $t9, $v0
/* C7DCC 800EC9CC 1840002C */  blez       $v0, .L800ECA80
/* C7DD0 800EC9D0 A7B9009A */   sh        $t9, 0x9a($sp)
/* C7DD4 800EC9D4 3C048011 */  lui        $a0, %hi(D_80111130)
/* C7DD8 800EC9D8 24841130 */  addiu      $a0, $a0, %lo(D_80111130)
.L800EC9DC:
/* C7DDC 800EC9DC 304E0001 */  andi       $t6, $v0, 1
/* C7DE0 800EC9E0 11C00006 */  beqz       $t6, .L800EC9FC
/* C7DE4 800EC9E4 0002C843 */   sra       $t9, $v0, 1
/* C7DE8 800EC9E8 0003C0C0 */  sll        $t8, $v1, 3
/* C7DEC 800EC9EC 00987821 */  addu       $t7, $a0, $t8
/* C7DF0 800EC9F0 D5E40000 */  ldc1       $f4, ($t7)
/* C7DF4 800EC9F4 4624A502 */  mul.d      $f20, $f20, $f4
/* C7DF8 800EC9F8 00000000 */  nop
.L800EC9FC:
/* C7DFC 800EC9FC 03201025 */  or         $v0, $t9, $zero
/* C7E00 800ECA00 1F20FFF6 */  bgtz       $t9, .L800EC9DC
/* C7E04 800ECA04 24630001 */   addiu     $v1, $v1, 1
/* C7E08 800ECA08 1000001E */  b          .L800ECA84
/* C7E0C 800ECA0C 8FAF0048 */   lw        $t7, 0x48($sp)
.L800ECA10:
/* C7E10 800ECA10 87AE009A */  lh         $t6, 0x9a($sp)
/* C7E14 800ECA14 3C013FF0 */  lui        $at, 0x3ff0
/* C7E18 800ECA18 00001825 */  or         $v1, $zero, $zero
/* C7E1C 800ECA1C 19C00018 */  blez       $t6, .L800ECA80
/* C7E20 800ECA20 31D8FFFC */   andi      $t8, $t6, 0xfffc
/* C7E24 800ECA24 00181400 */  sll        $v0, $t8, 0x10
/* C7E28 800ECA28 0018CC00 */  sll        $t9, $t8, 0x10
/* C7E2C 800ECA2C 44810800 */  mtc1       $at, $f1
/* C7E30 800ECA30 44800000 */  mtc1       $zero, $f0
/* C7E34 800ECA34 00197403 */  sra        $t6, $t9, 0x10
/* C7E38 800ECA38 00027C03 */  sra        $t7, $v0, 0x10
/* C7E3C 800ECA3C A7B8009A */  sh         $t8, 0x9a($sp)
/* C7E40 800ECA40 19C0000E */  blez       $t6, .L800ECA7C
/* C7E44 800ECA44 01E01025 */   or        $v0, $t7, $zero
/* C7E48 800ECA48 3C048011 */  lui        $a0, %hi(D_80111130)
/* C7E4C 800ECA4C 24841130 */  addiu      $a0, $a0, %lo(D_80111130)
.L800ECA50:
/* C7E50 800ECA50 304F0001 */  andi       $t7, $v0, 1
/* C7E54 800ECA54 11E00006 */  beqz       $t7, .L800ECA70
/* C7E58 800ECA58 00027043 */   sra       $t6, $v0, 1
/* C7E5C 800ECA5C 0003C0C0 */  sll        $t8, $v1, 3
/* C7E60 800ECA60 0098C821 */  addu       $t9, $a0, $t8
/* C7E64 800ECA64 D7260000 */  ldc1       $f6, ($t9)
/* C7E68 800ECA68 46260002 */  mul.d      $f0, $f0, $f6
/* C7E6C 800ECA6C 00000000 */  nop
.L800ECA70:
/* C7E70 800ECA70 01C01025 */  or         $v0, $t6, $zero
/* C7E74 800ECA74 1DC0FFF6 */  bgtz       $t6, .L800ECA50
/* C7E78 800ECA78 24630001 */   addiu     $v1, $v1, 1
.L800ECA7C:
/* C7E7C 800ECA7C 4620A503 */  div.d      $f20, $f20, $f0
.L800ECA80:
/* C7E80 800ECA80 8FAF0048 */  lw         $t7, 0x48($sp)
.L800ECA84:
/* C7E84 800ECA84 24010066 */  addiu      $at, $zero, 0x66
/* C7E88 800ECA88 8FB800D0 */  lw         $t8, 0xd0($sp)
/* C7E8C 800ECA8C 15E10004 */  bne        $t7, $at, .L800ECAA0
/* C7E90 800ECA90 240E0030 */   addiu     $t6, $zero, 0x30
/* C7E94 800ECA94 87A5009A */  lh         $a1, 0x9a($sp)
/* C7E98 800ECA98 10000001 */  b          .L800ECAA0
/* C7E9C 800ECA9C 24A5000A */   addiu     $a1, $a1, 0xa
.L800ECAA0:
/* C7EA0 800ECAA0 8F190024 */  lw         $t9, 0x24($t8)
/* C7EA4 800ECAA4 00B9A021 */  addu       $s4, $a1, $t9
/* C7EA8 800ECAA8 2A810014 */  slti       $at, $s4, 0x14
/* C7EAC 800ECAAC 14200002 */  bnez       $at, .L800ECAB8
/* C7EB0 800ECAB0 00000000 */   nop
/* C7EB4 800ECAB4 24140013 */  addiu      $s4, $zero, 0x13
.L800ECAB8:
/* C7EB8 800ECAB8 1A800033 */  blez       $s4, .L800ECB88
/* C7EBC 800ECABC A3AE00B0 */   sb        $t6, 0xb0($sp)
/* C7EC0 800ECAC0 4634103C */  c.lt.d     $f2, $f20
/* C7EC4 800ECAC4 24130030 */  addiu      $s3, $zero, 0x30
/* C7EC8 800ECAC8 27B20074 */  addiu      $s2, $sp, 0x74
/* C7ECC 800ECACC 4502002F */  bc1fl      .L800ECB8C
/* C7ED0 800ECAD0 87B8009A */   lh        $t8, 0x9a($sp)
/* C7ED4 800ECAD4 4620A20D */  trunc.w.d  $f8, $f20
.L800ECAD8:
/* C7ED8 800ECAD8 2694FFF8 */  addiu      $s4, $s4, -8
/* C7EDC 800ECADC 26B50008 */  addiu      $s5, $s5, 8
/* C7EE0 800ECAE0 44114000 */  mfc1       $s1, $f8
/* C7EE4 800ECAE4 1A800008 */  blez       $s4, .L800ECB08
/* C7EE8 800ECAE8 00000000 */   nop
/* C7EEC 800ECAEC 44915000 */  mtc1       $s1, $f10
/* C7EF0 800ECAF0 3C018011 */  lui        $at, %hi(D_80111188)
/* C7EF4 800ECAF4 D4281188 */  ldc1       $f8, %lo(D_80111188)($at)
/* C7EF8 800ECAF8 46805121 */  cvt.d.w    $f4, $f10
/* C7EFC 800ECAFC 4624A181 */  sub.d      $f6, $f20, $f4
/* C7F00 800ECB00 46283502 */  mul.d      $f20, $f6, $f8
/* C7F04 800ECB04 00000000 */  nop
.L800ECB08:
/* C7F08 800ECB08 1A200011 */  blez       $s1, .L800ECB50
/* C7F0C 800ECB0C 24100008 */   addiu     $s0, $zero, 8
/* C7F10 800ECB10 24100007 */  addiu      $s0, $zero, 7
/* C7F14 800ECB14 0600000E */  bltz       $s0, .L800ECB50
/* C7F18 800ECB18 02402025 */   or        $a0, $s2, $zero
.L800ECB1C:
/* C7F1C 800ECB1C 02202825 */  or         $a1, $s1, $zero
/* C7F20 800ECB20 0C03B84C */  jal        func_800EE130
/* C7F24 800ECB24 2406000A */   addiu     $a2, $zero, 0xa
/* C7F28 800ECB28 8FB80078 */  lw         $t8, 0x78($sp)
/* C7F2C 800ECB2C 26B5FFFF */  addiu      $s5, $s5, -1
/* C7F30 800ECB30 27190030 */  addiu      $t9, $t8, 0x30
/* C7F34 800ECB34 A2B90000 */  sb         $t9, ($s5)
/* C7F38 800ECB38 8FB10074 */  lw         $s1, 0x74($sp)
/* C7F3C 800ECB3C 5A200005 */  blezl      $s1, .L800ECB54
/* C7F40 800ECB40 44801800 */   mtc1      $zero, $f3
/* C7F44 800ECB44 2610FFFF */  addiu      $s0, $s0, -1
/* C7F48 800ECB48 0603FFF4 */  bgezl      $s0, .L800ECB1C
/* C7F4C 800ECB4C 02402025 */   or        $a0, $s2, $zero
.L800ECB50:
/* C7F50 800ECB50 44801800 */  mtc1       $zero, $f3
.L800ECB54:
/* C7F54 800ECB54 44801000 */  mtc1       $zero, $f2
/* C7F58 800ECB58 2610FFFF */  addiu      $s0, $s0, -1
/* C7F5C 800ECB5C 06000004 */  bltz       $s0, .L800ECB70
.L800ECB60:
/* C7F60 800ECB60 2610FFFF */   addiu     $s0, $s0, -1
/* C7F64 800ECB64 26B5FFFF */  addiu      $s5, $s5, -1
/* C7F68 800ECB68 0601FFFD */  bgez       $s0, .L800ECB60
/* C7F6C 800ECB6C A2B30000 */   sb        $s3, ($s5)
.L800ECB70:
/* C7F70 800ECB70 1A800005 */  blez       $s4, .L800ECB88
/* C7F74 800ECB74 26B50008 */   addiu     $s5, $s5, 8
/* C7F78 800ECB78 4634103C */  c.lt.d     $f2, $f20
/* C7F7C 800ECB7C 00000000 */  nop
/* C7F80 800ECB80 4503FFD5 */  bc1tl      .L800ECAD8
/* C7F84 800ECB84 4620A20D */   trunc.w.d $f8, $f20
.L800ECB88:
/* C7F88 800ECB88 87B8009A */  lh         $t8, 0x9a($sp)
.L800ECB8C:
/* C7F8C 800ECB8C 93AE00B1 */  lbu        $t6, 0xb1($sp)
/* C7F90 800ECB90 27AF00B0 */  addiu      $t7, $sp, 0xb0
/* C7F94 800ECB94 24020030 */  addiu      $v0, $zero, 0x30
/* C7F98 800ECB98 02AFA023 */  subu       $s4, $s5, $t7
/* C7F9C 800ECB9C 27190007 */  addiu      $t9, $t8, 7
/* C7FA0 800ECBA0 2694FFFF */  addiu      $s4, $s4, -1
/* C7FA4 800ECBA4 A7B9009A */  sh         $t9, 0x9a($sp)
/* C7FA8 800ECBA8 144E0009 */  bne        $v0, $t6, .L800ECBD0
/* C7FAC 800ECBAC 27B500B1 */   addiu     $s5, $sp, 0xb1
/* C7FB0 800ECBB0 87AF009A */  lh         $t7, 0x9a($sp)
.L800ECBB4:
/* C7FB4 800ECBB4 26B50001 */  addiu      $s5, $s5, 1
/* C7FB8 800ECBB8 2694FFFF */  addiu      $s4, $s4, -1
/* C7FBC 800ECBBC 25F8FFFF */  addiu      $t8, $t7, -1
/* C7FC0 800ECBC0 A7B8009A */  sh         $t8, 0x9a($sp)
/* C7FC4 800ECBC4 92B90000 */  lbu        $t9, ($s5)
/* C7FC8 800ECBC8 5059FFFA */  beql       $v0, $t9, .L800ECBB4
/* C7FCC 800ECBCC 87AF009A */   lh        $t7, 0x9a($sp)
.L800ECBD0:
/* C7FD0 800ECBD0 8FAE0048 */  lw         $t6, 0x48($sp)
/* C7FD4 800ECBD4 24010066 */  addiu      $at, $zero, 0x66
/* C7FD8 800ECBD8 8FB800D0 */  lw         $t8, 0xd0($sp)
/* C7FDC 800ECBDC 15C10004 */  bne        $t6, $at, .L800ECBF0
/* C7FE0 800ECBE0 8FAF0048 */   lw        $t7, 0x48($sp)
/* C7FE4 800ECBE4 87A5009A */  lh         $a1, 0x9a($sp)
/* C7FE8 800ECBE8 10000009 */  b          .L800ECC10
/* C7FEC 800ECBEC 24A50001 */   addiu     $a1, $a1, 1
.L800ECBF0:
/* C7FF0 800ECBF0 24010065 */  addiu      $at, $zero, 0x65
/* C7FF4 800ECBF4 11E10003 */  beq        $t7, $at, .L800ECC04
/* C7FF8 800ECBF8 24010045 */   addiu     $at, $zero, 0x45
/* C7FFC 800ECBFC 15E10003 */  bne        $t7, $at, .L800ECC0C
/* C8000 800ECC00 00001025 */   or        $v0, $zero, $zero
.L800ECC04:
/* C8004 800ECC04 10000001 */  b          .L800ECC0C
/* C8008 800ECC08 24020001 */   addiu     $v0, $zero, 1
.L800ECC0C:
/* C800C 800ECC0C 00402825 */  or         $a1, $v0, $zero
.L800ECC10:
/* C8010 800ECC10 8F190024 */  lw         $t9, 0x24($t8)
/* C8014 800ECC14 00B99821 */  addu       $s3, $a1, $t9
/* C8018 800ECC18 00137400 */  sll        $t6, $s3, 0x10
/* C801C 800ECC1C 000E9C03 */  sra        $s3, $t6, 0x10
/* C8020 800ECC20 0293082A */  slt        $at, $s4, $s3
/* C8024 800ECC24 10200004 */  beqz       $at, .L800ECC38
/* C8028 800ECC28 00000000 */   nop
/* C802C 800ECC2C 00149C00 */  sll        $s3, $s4, 0x10
/* C8030 800ECC30 0013C403 */  sra        $t8, $s3, 0x10
/* C8034 800ECC34 03009825 */  or         $s3, $t8, $zero
.L800ECC38:
/* C8038 800ECC38 1A600025 */  blez       $s3, .L800ECCD0
/* C803C 800ECC3C 0274082A */   slt       $at, $s3, $s4
/* C8040 800ECC40 10200007 */  beqz       $at, .L800ECC60
/* C8044 800ECC44 02751021 */   addu      $v0, $s3, $s5
/* C8048 800ECC48 90590000 */  lbu        $t9, ($v0)
/* C804C 800ECC4C 2B210035 */  slti       $at, $t9, 0x35
/* C8050 800ECC50 54200004 */  bnel       $at, $zero, .L800ECC64
/* C8054 800ECC54 24050030 */   addiu     $a1, $zero, 0x30
/* C8058 800ECC58 10000003 */  b          .L800ECC68
/* C805C 800ECC5C 24050039 */   addiu     $a1, $zero, 0x39
.L800ECC60:
/* C8060 800ECC60 24050030 */  addiu      $a1, $zero, 0x30
.L800ECC64:
/* C8064 800ECC64 02751021 */  addu       $v0, $s3, $s5
.L800ECC68:
/* C8068 800ECC68 904EFFFF */  lbu        $t6, -1($v0)
/* C806C 800ECC6C 2663FFFF */  addiu      $v1, $s3, -1
/* C8070 800ECC70 00A02025 */  or         $a0, $a1, $zero
/* C8074 800ECC74 14AE0009 */  bne        $a1, $t6, .L800ECC9C
/* C8078 800ECC78 24010039 */   addiu     $at, $zero, 0x39
/* C807C 800ECC7C 00751021 */  addu       $v0, $v1, $s5
.L800ECC80:
/* C8080 800ECC80 9059FFFF */  lbu        $t9, -1($v0)
/* C8084 800ECC84 2673FFFF */  addiu      $s3, $s3, -1
/* C8088 800ECC88 00137C00 */  sll        $t7, $s3, 0x10
/* C808C 800ECC8C 2463FFFF */  addiu      $v1, $v1, -1
/* C8090 800ECC90 2442FFFF */  addiu      $v0, $v0, -1
/* C8094 800ECC94 1099FFFA */  beq        $a0, $t9, .L800ECC80
/* C8098 800ECC98 000F9C03 */   sra       $s3, $t7, 0x10
.L800ECC9C:
/* C809C 800ECC9C 14810004 */  bne        $a0, $at, .L800ECCB0
/* C80A0 800ECCA0 02A31021 */   addu      $v0, $s5, $v1
/* C80A4 800ECCA4 904E0000 */  lbu        $t6, ($v0)
/* C80A8 800ECCA8 25CF0001 */  addiu      $t7, $t6, 1
/* C80AC 800ECCAC A04F0000 */  sb         $t7, ($v0)
.L800ECCB0:
/* C80B0 800ECCB0 04610007 */  bgez       $v1, .L800ECCD0
/* C80B4 800ECCB4 87AE009A */   lh        $t6, 0x9a($sp)
/* C80B8 800ECCB8 26730001 */  addiu      $s3, $s3, 1
/* C80BC 800ECCBC 0013C400 */  sll        $t8, $s3, 0x10
/* C80C0 800ECCC0 25CF0001 */  addiu      $t7, $t6, 1
/* C80C4 800ECCC4 A7AF009A */  sh         $t7, 0x9a($sp)
/* C80C8 800ECCC8 00189C03 */  sra        $s3, $t8, 0x10
/* C80CC 800ECCCC 26B5FFFF */  addiu      $s5, $s5, -1
.L800ECCD0:
/* C80D0 800ECCD0 8FB000D0 */  lw         $s0, 0xd0($sp)
/* C80D4 800ECCD4 93B400D7 */  lbu        $s4, 0xd7($sp)
/* C80D8 800ECCD8 02A08825 */  or         $s1, $s5, $zero
/* C80DC 800ECCDC 0C03B094 */  jal        func_800EC250
/* C80E0 800ECCE0 87B2009A */   lh        $s2, 0x9a($sp)
/* C80E4 800ECCE4 8FBF003C */  lw         $ra, 0x3c($sp)
.L800ECCE8:
/* C80E8 800ECCE8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* C80EC 800ECCEC 8FB00024 */  lw         $s0, 0x24($sp)
/* C80F0 800ECCF0 8FB10028 */  lw         $s1, 0x28($sp)
/* C80F4 800ECCF4 8FB2002C */  lw         $s2, 0x2c($sp)
/* C80F8 800ECCF8 8FB30030 */  lw         $s3, 0x30($sp)
/* C80FC 800ECCFC 8FB40034 */  lw         $s4, 0x34($sp)
/* C8100 800ECD00 8FB50038 */  lw         $s5, 0x38($sp)
/* C8104 800ECD04 03E00008 */  jr         $ra
/* C8108 800ECD08 27BD00D0 */   addiu     $sp, $sp, 0xd0
/* C810C 800ECD0C 00000000 */  nop
