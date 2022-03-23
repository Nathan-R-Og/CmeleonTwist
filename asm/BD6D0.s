.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E22D0
/* BD6D0 800E22D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BD6D4 800E22D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* BD6D8 800E22D8 AFA40028 */  sw         $a0, 0x28($sp)
/* BD6DC 800E22DC AFA5002C */  sw         $a1, 0x2c($sp)
/* BD6E0 800E22E0 0C038AF8 */  jal        func_800E2BE0
/* BD6E4 800E22E4 AFB00018 */   sw        $s0, 0x18($sp)
/* BD6E8 800E22E8 8FAF0028 */  lw         $t7, 0x28($sp)
/* BD6EC 800E22EC 8FAE002C */  lw         $t6, 0x2c($sp)
/* BD6F0 800E22F0 3C018011 */  lui        $at, 0x8011
/* BD6F4 800E22F4 000FC080 */  sll        $t8, $t7, 2
/* BD6F8 800E22F8 00408025 */  or         $s0, $v0, $zero
/* BD6FC 800E22FC 00380821 */  addu       $at, $at, $t8
/* BD700 800E2300 02002025 */  or         $a0, $s0, $zero
/* BD704 800E2304 0C038B00 */  jal        func_800E2C00
/* BD708 800E2308 AC2E9DE0 */   sw        $t6, -0x6220($at)
/* BD70C 800E230C 8FBF001C */  lw         $ra, 0x1c($sp)
/* BD710 800E2310 8FB00018 */  lw         $s0, 0x18($sp)
/* BD714 800E2314 27BD0028 */  addiu      $sp, $sp, 0x28
/* BD718 800E2318 03E00008 */  jr         $ra
/* BD71C 800E231C 00000000 */   nop

glabel func_800E2320
/* BD720 800E2320 3C0E8011 */  lui        $t6, %hi(D_80109020)
/* BD724 800E2324 8DCE9020 */  lw         $t6, %lo(D_80109020)($t6)
/* BD728 800E2328 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BD72C 800E232C AFBF001C */  sw         $ra, 0x1c($sp)
/* BD730 800E2330 15C00003 */  bnez       $t6, .L800E2340
/* BD734 800E2334 00000000 */   nop
/* BD738 800E2338 100001AE */  b          .L800E29F4
/* BD73C 800E233C 00001025 */   or        $v0, $zero, $zero
.L800E2340:
/* BD740 800E2340 3C0F8025 */  lui        $t7, %hi(D_8024C504)
/* BD744 800E2344 8DEFC504 */  lw         $t7, %lo(D_8024C504)($t7)
/* BD748 800E2348 3C0BA460 */  lui        $t3, 0xa460
/* BD74C 800E234C 25F80014 */  addiu      $t8, $t7, 0x14
/* BD750 800E2350 AFB80030 */  sw         $t8, 0x30($sp)
/* BD754 800E2354 95F9001A */  lhu        $t9, 0x1a($t7)
/* BD758 800E2358 001940C0 */  sll        $t0, $t9, 3
/* BD75C 800E235C 01194021 */  addu       $t0, $t0, $t9
/* BD760 800E2360 00084080 */  sll        $t0, $t0, 2
/* BD764 800E2364 03084821 */  addu       $t1, $t8, $t0
/* BD768 800E2368 252A0018 */  addiu      $t2, $t1, 0x18
/* BD76C 800E236C AFAA002C */  sw         $t2, 0x2c($sp)
/* BD770 800E2370 8D6C0010 */  lw         $t4, 0x10($t3)
/* BD774 800E2374 AFAC0038 */  sw         $t4, 0x38($sp)
/* BD778 800E2378 8FAD0038 */  lw         $t5, 0x38($sp)
/* BD77C 800E237C 31AE0001 */  andi       $t6, $t5, 1
/* BD780 800E2380 11C00034 */  beqz       $t6, .L800E2454
/* BD784 800E2384 00000000 */   nop
/* BD788 800E2388 240F0003 */  addiu      $t7, $zero, 3
/* BD78C 800E238C 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* BD790 800E2390 AF2F0010 */  sw         $t7, %lo(D_A4600010)($t9)
/* BD794 800E2394 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* BD798 800E2398 8F080010 */  lw         $t0, %lo(D_A4600010)($t8)
/* BD79C 800E239C AFA80038 */  sw         $t0, 0x38($sp)
/* BD7A0 800E23A0 8FA90038 */  lw         $t1, 0x38($sp)
/* BD7A4 800E23A4 312A0002 */  andi       $t2, $t1, 2
/* BD7A8 800E23A8 11400008 */  beqz       $t2, .L800E23CC
/* BD7AC 800E23AC 00000000 */   nop
.L800E23B0:
/* BD7B0 800E23B0 3C0BA460 */  lui        $t3, %hi(D_A4600010)
/* BD7B4 800E23B4 8D6C0010 */  lw         $t4, %lo(D_A4600010)($t3)
/* BD7B8 800E23B8 AFAC0038 */  sw         $t4, 0x38($sp)
/* BD7BC 800E23BC 8FAD0038 */  lw         $t5, 0x38($sp)
/* BD7C0 800E23C0 31AE0002 */  andi       $t6, $t5, 2
/* BD7C4 800E23C4 15C0FFFA */  bnez       $t6, .L800E23B0
/* BD7C8 800E23C8 00000000 */   nop
.L800E23CC:
/* BD7CC 800E23CC 3C0FA500 */  lui        $t7, %hi(D_A5000508)
/* BD7D0 800E23D0 8DF90508 */  lw         $t9, %lo(D_A5000508)($t7)
/* BD7D4 800E23D4 3C010200 */  lui        $at, 0x200
/* BD7D8 800E23D8 AFB9003C */  sw         $t9, 0x3c($sp)
/* BD7DC 800E23DC 8FB8003C */  lw         $t8, 0x3c($sp)
/* BD7E0 800E23E0 03014024 */  and        $t0, $t8, $at
/* BD7E4 800E23E4 11000015 */  beqz       $t0, .L800E243C
/* BD7E8 800E23E8 00000000 */   nop
/* BD7EC 800E23EC 3C09A460 */  lui        $t1, %hi(D_A4600010)
/* BD7F0 800E23F0 8D2A0010 */  lw         $t2, %lo(D_A4600010)($t1)
/* BD7F4 800E23F4 AFAA0038 */  sw         $t2, 0x38($sp)
/* BD7F8 800E23F8 8FAB0038 */  lw         $t3, 0x38($sp)
/* BD7FC 800E23FC 316C0002 */  andi       $t4, $t3, 2
/* BD800 800E2400 11800008 */  beqz       $t4, .L800E2424
/* BD804 800E2404 00000000 */   nop
.L800E2408:
/* BD808 800E2408 3C0DA460 */  lui        $t5, %hi(D_A4600010)
/* BD80C 800E240C 8DAE0010 */  lw         $t6, %lo(D_A4600010)($t5)
/* BD810 800E2410 AFAE0038 */  sw         $t6, 0x38($sp)
/* BD814 800E2414 8FAF0038 */  lw         $t7, 0x38($sp)
/* BD818 800E2418 31F90002 */  andi       $t9, $t7, 2
/* BD81C 800E241C 1720FFFA */  bnez       $t9, .L800E2408
/* BD820 800E2420 00000000 */   nop
.L800E2424:
/* BD824 800E2424 8FB80030 */  lw         $t8, 0x30($sp)
/* BD828 800E2428 3C010100 */  lui        $at, 0x100
/* BD82C 800E242C 3C0AA500 */  lui        $t2, %hi(D_A5000510)
/* BD830 800E2430 8F080010 */  lw         $t0, 0x10($t8)
/* BD834 800E2434 01014825 */  or         $t1, $t0, $at
/* BD838 800E2438 AD490510 */  sw         $t1, %lo(D_A5000510)($t2)
.L800E243C:
/* BD83C 800E243C 8FAC002C */  lw         $t4, 0x2c($sp)
/* BD840 800E2440 240B004B */  addiu      $t3, $zero, 0x4b
/* BD844 800E2444 0C038A81 */  jal        func_800E2A04
/* BD848 800E2448 AD8B0000 */   sw        $t3, ($t4)
/* BD84C 800E244C 10000169 */  b          .L800E29F4
/* BD850 800E2450 24020001 */   addiu     $v0, $zero, 1
.L800E2454:
/* BD854 800E2454 3C0DA460 */  lui        $t5, %hi(D_A4600010)
/* BD858 800E2458 8DAE0010 */  lw         $t6, %lo(D_A4600010)($t5)
/* BD85C 800E245C AFAE0038 */  sw         $t6, 0x38($sp)
/* BD860 800E2460 8FAF0038 */  lw         $t7, 0x38($sp)
/* BD864 800E2464 31F90002 */  andi       $t9, $t7, 2
/* BD868 800E2468 13200008 */  beqz       $t9, .L800E248C
/* BD86C 800E246C 00000000 */   nop
.L800E2470:
/* BD870 800E2470 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* BD874 800E2474 8F080010 */  lw         $t0, %lo(D_A4600010)($t8)
/* BD878 800E2478 AFA80038 */  sw         $t0, 0x38($sp)
/* BD87C 800E247C 8FA90038 */  lw         $t1, 0x38($sp)
/* BD880 800E2480 312A0002 */  andi       $t2, $t1, 2
/* BD884 800E2484 1540FFFA */  bnez       $t2, .L800E2470
/* BD888 800E2488 00000000 */   nop
.L800E248C:
/* BD88C 800E248C 3C0BA500 */  lui        $t3, %hi(D_A5000508)
/* BD890 800E2490 8D6C0508 */  lw         $t4, %lo(D_A5000508)($t3)
/* BD894 800E2494 3C010200 */  lui        $at, 0x200
/* BD898 800E2498 AFAC003C */  sw         $t4, 0x3c($sp)
/* BD89C 800E249C 8FAD003C */  lw         $t5, 0x3c($sp)
/* BD8A0 800E24A0 01A17024 */  and        $t6, $t5, $at
/* BD8A4 800E24A4 11C00019 */  beqz       $t6, .L800E250C
/* BD8A8 800E24A8 00000000 */   nop
/* BD8AC 800E24AC 3C0FA460 */  lui        $t7, %hi(D_A4600010)
/* BD8B0 800E24B0 8DF90010 */  lw         $t9, %lo(D_A4600010)($t7)
/* BD8B4 800E24B4 AFB90038 */  sw         $t9, 0x38($sp)
/* BD8B8 800E24B8 8FB80038 */  lw         $t8, 0x38($sp)
/* BD8BC 800E24BC 33080002 */  andi       $t0, $t8, 2
/* BD8C0 800E24C0 11000008 */  beqz       $t0, .L800E24E4
/* BD8C4 800E24C4 00000000 */   nop
.L800E24C8:
/* BD8C8 800E24C8 3C09A460 */  lui        $t1, %hi(D_A4600010)
/* BD8CC 800E24CC 8D2A0010 */  lw         $t2, %lo(D_A4600010)($t1)
/* BD8D0 800E24D0 AFAA0038 */  sw         $t2, 0x38($sp)
/* BD8D4 800E24D4 8FAB0038 */  lw         $t3, 0x38($sp)
/* BD8D8 800E24D8 316C0002 */  andi       $t4, $t3, 2
/* BD8DC 800E24DC 1580FFFA */  bnez       $t4, .L800E24C8
/* BD8E0 800E24E0 00000000 */   nop
.L800E24E4:
/* BD8E4 800E24E4 8FAD0030 */  lw         $t5, 0x30($sp)
/* BD8E8 800E24E8 3C010100 */  lui        $at, 0x100
/* BD8EC 800E24EC 3C19A500 */  lui        $t9, %hi(D_A5000510)
/* BD8F0 800E24F0 8DAE0010 */  lw         $t6, 0x10($t5)
/* BD8F4 800E24F4 00001025 */  or         $v0, $zero, $zero
/* BD8F8 800E24F8 01C17825 */  or         $t7, $t6, $at
/* BD8FC 800E24FC AF2F0510 */  sw         $t7, %lo(D_A5000510)($t9)
/* BD900 800E2500 8FB8002C */  lw         $t8, 0x2c($sp)
/* BD904 800E2504 1000013B */  b          .L800E29F4
/* BD908 800E2508 AF000000 */   sw        $zero, ($t8)
.L800E250C:
/* BD90C 800E250C 8FA8003C */  lw         $t0, 0x3c($sp)
/* BD910 800E2510 3C010800 */  lui        $at, 0x800
/* BD914 800E2514 01014824 */  and        $t1, $t0, $at
/* BD918 800E2518 11200011 */  beqz       $t1, .L800E2560
/* BD91C 800E251C 00000000 */   nop
/* BD920 800E2520 8FAB002C */  lw         $t3, 0x2c($sp)
/* BD924 800E2524 240A0003 */  addiu      $t2, $zero, 3
/* BD928 800E2528 0C038ABB */  jal        func_800E2AEC
/* BD92C 800E252C AD6A0000 */   sw        $t2, ($t3)
/* BD930 800E2530 240C0002 */  addiu      $t4, $zero, 2
/* BD934 800E2534 3C0DA460 */  lui        $t5, %hi(D_A4600010)
/* BD938 800E2538 ADAC0010 */  sw         $t4, %lo(D_A4600010)($t5)
/* BD93C 800E253C 3C0E8011 */  lui        $t6, %hi(D_8010901C)
/* BD940 800E2540 8DCE901C */  lw         $t6, %lo(D_8010901C)($t6)
/* BD944 800E2544 3C010010 */  lui        $at, 0x10
/* BD948 800E2548 34210401 */  ori        $at, $at, 0x401
/* BD94C 800E254C 01C17825 */  or         $t7, $t6, $at
/* BD950 800E2550 3C018011 */  lui        $at, %hi(D_8010901C)
/* BD954 800E2554 AC2F901C */  sw         $t7, %lo(D_8010901C)($at)
/* BD958 800E2558 10000126 */  b          .L800E29F4
/* BD95C 800E255C 24020001 */   addiu     $v0, $zero, 1
.L800E2560:
/* BD960 800E2560 8FB90030 */  lw         $t9, 0x30($sp)
/* BD964 800E2564 24010001 */  addiu      $at, $zero, 1
/* BD968 800E2568 8F380000 */  lw         $t8, ($t9)
/* BD96C 800E256C 1701003B */  bne        $t8, $at, .L800E265C
/* BD970 800E2570 00000000 */   nop
/* BD974 800E2574 8FA8003C */  lw         $t0, 0x3c($sp)
/* BD978 800E2578 3C014000 */  lui        $at, 0x4000
/* BD97C 800E257C 01014824 */  and        $t1, $t0, $at
/* BD980 800E2580 15200021 */  bnez       $t1, .L800E2608
/* BD984 800E2584 00000000 */   nop
/* BD988 800E2588 972C0004 */  lhu        $t4, 4($t9)
/* BD98C 800E258C 8F2A0008 */  lw         $t2, 8($t9)
/* BD990 800E2590 000C6880 */  sll        $t5, $t4, 2
/* BD994 800E2594 01AC6821 */  addu       $t5, $t5, $t4
/* BD998 800E2598 000D6880 */  sll        $t5, $t5, 2
/* BD99C 800E259C 01AC6821 */  addu       $t5, $t5, $t4
/* BD9A0 800E25A0 000D6880 */  sll        $t5, $t5, 2
/* BD9A4 800E25A4 01AC6821 */  addu       $t5, $t5, $t4
/* BD9A8 800E25A8 254B0001 */  addiu      $t3, $t2, 1
/* BD9AC 800E25AC 116D0007 */  beq        $t3, $t5, .L800E25CC
/* BD9B0 800E25B0 00000000 */   nop
/* BD9B4 800E25B4 8FAF002C */  lw         $t7, 0x2c($sp)
/* BD9B8 800E25B8 240E0006 */  addiu      $t6, $zero, 6
/* BD9BC 800E25BC 0C038A81 */  jal        func_800E2A04
/* BD9C0 800E25C0 ADEE0000 */   sw        $t6, ($t7)
/* BD9C4 800E25C4 1000010B */  b          .L800E29F4
/* BD9C8 800E25C8 24020001 */   addiu     $v0, $zero, 1
.L800E25CC:
/* BD9CC 800E25CC 24180002 */  addiu      $t8, $zero, 2
/* BD9D0 800E25D0 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* BD9D4 800E25D4 AD180010 */  sw         $t8, %lo(D_A4600010)($t0)
/* BD9D8 800E25D8 3C098011 */  lui        $t1, %hi(D_8010901C)
/* BD9DC 800E25DC 8D29901C */  lw         $t1, %lo(D_8010901C)($t1)
/* BD9E0 800E25E0 3C010010 */  lui        $at, 0x10
/* BD9E4 800E25E4 34210401 */  ori        $at, $at, 0x401
/* BD9E8 800E25E8 01215025 */  or         $t2, $t1, $at
/* BD9EC 800E25EC 8FB9002C */  lw         $t9, 0x2c($sp)
/* BD9F0 800E25F0 3C018011 */  lui        $at, %hi(D_8010901C)
/* BD9F4 800E25F4 AC2A901C */  sw         $t2, %lo(D_8010901C)($at)
/* BD9F8 800E25F8 0C038ABB */  jal        func_800E2AEC
/* BD9FC 800E25FC AF200000 */   sw        $zero, ($t9)
/* BDA00 800E2600 100000FC */  b          .L800E29F4
/* BDA04 800E2604 24020001 */   addiu     $v0, $zero, 1
.L800E2608:
/* BDA08 800E2608 8FAC002C */  lw         $t4, 0x2c($sp)
/* BDA0C 800E260C 3C048025 */  lui        $a0, 0x8025
/* BDA10 800E2610 3C060500 */  lui        $a2, 0x500
/* BDA14 800E2614 8D8B0004 */  lw         $t3, 4($t4)
/* BDA18 800E2618 8D8D000C */  lw         $t5, 0xc($t4)
/* BDA1C 800E261C 34C60400 */  ori        $a2, $a2, 0x400
/* BDA20 800E2620 24050001 */  addiu      $a1, $zero, 1
/* BDA24 800E2624 016D7021 */  addu       $t6, $t3, $t5
/* BDA28 800E2628 AD8E0004 */  sw         $t6, 4($t4)
/* BDA2C 800E262C 8FAF0030 */  lw         $t7, 0x30($sp)
/* BDA30 800E2630 8DF80008 */  lw         $t8, 8($t7)
/* BDA34 800E2634 27080001 */  addiu      $t0, $t8, 1
/* BDA38 800E2638 ADE80008 */  sw         $t0, 8($t7)
/* BDA3C 800E263C 8FA9002C */  lw         $t1, 0x2c($sp)
/* BDA40 800E2640 8C84C504 */  lw         $a0, -0x3afc($a0)
/* BDA44 800E2644 8D2A000C */  lw         $t2, 0xc($t1)
/* BDA48 800E2648 8D270004 */  lw         $a3, 4($t1)
/* BDA4C 800E264C 0C038DB8 */  jal        func_800E36E0
/* BDA50 800E2650 AFAA0010 */   sw        $t2, 0x10($sp)
/* BDA54 800E2654 100000E7 */  b          .L800E29F4
/* BDA58 800E2658 24020001 */   addiu     $v0, $zero, 1
.L800E265C:
/* BDA5C 800E265C 8FB90030 */  lw         $t9, 0x30($sp)
/* BDA60 800E2660 8F2B0000 */  lw         $t3, ($t9)
/* BDA64 800E2664 156000DE */  bnez       $t3, .L800E29E0
/* BDA68 800E2668 00000000 */   nop
/* BDA6C 800E266C 972D0004 */  lhu        $t5, 4($t9)
/* BDA70 800E2670 24010003 */  addiu      $at, $zero, 3
/* BDA74 800E2674 15A10017 */  bne        $t5, $at, .L800E26D4
/* BDA78 800E2678 00000000 */   nop
/* BDA7C 800E267C 8FAC002C */  lw         $t4, 0x2c($sp)
/* BDA80 800E2680 8F2E0008 */  lw         $t6, 8($t9)
/* BDA84 800E2684 8D980010 */  lw         $t8, 0x10($t4)
/* BDA88 800E2688 27080011 */  addiu      $t0, $t8, 0x11
/* BDA8C 800E268C 010E082A */  slt        $at, $t0, $t6
/* BDA90 800E2690 10200005 */  beqz       $at, .L800E26A8
/* BDA94 800E2694 00000000 */   nop
/* BDA98 800E2698 0C038A81 */  jal        func_800E2A04
/* BDA9C 800E269C AD800000 */   sw        $zero, ($t4)
/* BDAA0 800E26A0 100000D4 */  b          .L800E29F4
/* BDAA4 800E26A4 24020001 */   addiu     $v0, $zero, 1
.L800E26A8:
/* BDAA8 800E26A8 8FAF003C */  lw         $t7, 0x3c($sp)
/* BDAAC 800E26AC 3C014000 */  lui        $at, 0x4000
/* BDAB0 800E26B0 01E14824 */  and        $t1, $t7, $at
/* BDAB4 800E26B4 1520000C */  bnez       $t1, .L800E26E8
/* BDAB8 800E26B8 00000000 */   nop
/* BDABC 800E26BC 8FAB002C */  lw         $t3, 0x2c($sp)
/* BDAC0 800E26C0 240A0011 */  addiu      $t2, $zero, 0x11
/* BDAC4 800E26C4 0C038A81 */  jal        func_800E2A04
/* BDAC8 800E26C8 AD6A0000 */   sw        $t2, ($t3)
/* BDACC 800E26CC 100000C9 */  b          .L800E29F4
/* BDAD0 800E26D0 24020001 */   addiu     $v0, $zero, 1
.L800E26D4:
/* BDAD4 800E26D4 8FAD002C */  lw         $t5, 0x2c($sp)
/* BDAD8 800E26D8 8DB90004 */  lw         $t9, 4($t5)
/* BDADC 800E26DC 8DB8000C */  lw         $t8, 0xc($t5)
/* BDAE0 800E26E0 03387021 */  addu       $t6, $t9, $t8
/* BDAE4 800E26E4 ADAE0004 */  sw         $t6, 4($t5)
.L800E26E8:
/* BDAE8 800E26E8 3C08A500 */  lui        $t0, %hi(D_A5000510)
/* BDAEC 800E26EC 8D0C0510 */  lw         $t4, %lo(D_A5000510)($t0)
/* BDAF0 800E26F0 3C010020 */  lui        $at, 0x20
/* BDAF4 800E26F4 AFAC0034 */  sw         $t4, 0x34($sp)
/* BDAF8 800E26F8 8FAF0034 */  lw         $t7, 0x34($sp)
/* BDAFC 800E26FC 01E14824 */  and        $t1, $t7, $at
/* BDB00 800E2700 11200004 */  beqz       $t1, .L800E2714
/* BDB04 800E2704 3C010040 */   lui       $at, 0x40
/* BDB08 800E2708 01E15024 */  and        $t2, $t7, $at
/* BDB0C 800E270C 15400006 */  bnez       $t2, .L800E2728
/* BDB10 800E2710 00000000 */   nop
.L800E2714:
/* BDB14 800E2714 8FAB0034 */  lw         $t3, 0x34($sp)
/* BDB18 800E2718 3C010200 */  lui        $at, 0x200
/* BDB1C 800E271C 0161C824 */  and        $t9, $t3, $at
/* BDB20 800E2720 13200022 */  beqz       $t9, .L800E27AC
/* BDB24 800E2724 00000000 */   nop
.L800E2728:
/* BDB28 800E2728 8FB8002C */  lw         $t8, 0x2c($sp)
/* BDB2C 800E272C 8F0E0010 */  lw         $t6, 0x10($t8)
/* BDB30 800E2730 2DC10004 */  sltiu      $at, $t6, 4
/* BDB34 800E2734 14200010 */  bnez       $at, .L800E2778
/* BDB38 800E2738 00000000 */   nop
/* BDB3C 800E273C 8FAD0030 */  lw         $t5, 0x30($sp)
/* BDB40 800E2740 24010003 */  addiu      $at, $zero, 3
/* BDB44 800E2744 95A80004 */  lhu        $t0, 4($t5)
/* BDB48 800E2748 15010005 */  bne        $t0, $at, .L800E2760
/* BDB4C 800E274C 00000000 */   nop
/* BDB50 800E2750 8DAC0008 */  lw         $t4, 8($t5)
/* BDB54 800E2754 29810053 */  slti       $at, $t4, 0x53
/* BDB58 800E2758 14200010 */  bnez       $at, .L800E279C
/* BDB5C 800E275C 00000000 */   nop
.L800E2760:
/* BDB60 800E2760 8FAF002C */  lw         $t7, 0x2c($sp)
/* BDB64 800E2764 24090011 */  addiu      $t1, $zero, 0x11
/* BDB68 800E2768 0C038A81 */  jal        func_800E2A04
/* BDB6C 800E276C ADE90000 */   sw        $t1, ($t7)
/* BDB70 800E2770 100000A0 */  b          .L800E29F4
/* BDB74 800E2774 24020001 */   addiu     $v0, $zero, 1
.L800E2778:
/* BDB78 800E2778 8FAA002C */  lw         $t2, 0x2c($sp)
/* BDB7C 800E277C 8FB90030 */  lw         $t9, 0x30($sp)
/* BDB80 800E2780 8D4B0010 */  lw         $t3, 0x10($t2)
/* BDB84 800E2784 AFAB0028 */  sw         $t3, 0x28($sp)
/* BDB88 800E2788 8F380008 */  lw         $t8, 8($t9)
/* BDB8C 800E278C 000B4080 */  sll        $t0, $t3, 2
/* BDB90 800E2790 01486821 */  addu       $t5, $t2, $t0
/* BDB94 800E2794 270E0001 */  addiu      $t6, $t8, 1
/* BDB98 800E2798 ADAE0014 */  sw         $t6, 0x14($t5)
.L800E279C:
/* BDB9C 800E279C 8FAC002C */  lw         $t4, 0x2c($sp)
/* BDBA0 800E27A0 8D890010 */  lw         $t1, 0x10($t4)
/* BDBA4 800E27A4 252F0001 */  addiu      $t7, $t1, 1
/* BDBA8 800E27A8 AD8F0010 */  sw         $t7, 0x10($t4)
.L800E27AC:
/* BDBAC 800E27AC 8FB9003C */  lw         $t9, 0x3c($sp)
/* BDBB0 800E27B0 3C011000 */  lui        $at, 0x1000
/* BDBB4 800E27B4 0321C024 */  and        $t8, $t9, $at
/* BDBB8 800E27B8 13000035 */  beqz       $t8, .L800E2890
/* BDBBC 800E27BC 00000000 */   nop
/* BDBC0 800E27C0 8FAB0030 */  lw         $t3, 0x30($sp)
/* BDBC4 800E27C4 24010057 */  addiu      $at, $zero, 0x57
/* BDBC8 800E27C8 8D6A0008 */  lw         $t2, 8($t3)
/* BDBCC 800E27CC 11410005 */  beq        $t2, $at, .L800E27E4
/* BDBD0 800E27D0 00000000 */   nop
/* BDBD4 800E27D4 8FAE002C */  lw         $t6, 0x2c($sp)
/* BDBD8 800E27D8 24080006 */  addiu      $t0, $zero, 6
/* BDBDC 800E27DC 0C038A81 */  jal        func_800E2A04
/* BDBE0 800E27E0 ADC80000 */   sw        $t0, ($t6)
.L800E27E4:
/* BDBE4 800E27E4 8FAD0030 */  lw         $t5, 0x30($sp)
/* BDBE8 800E27E8 24010002 */  addiu      $at, $zero, 2
/* BDBEC 800E27EC 95A90004 */  lhu        $t1, 4($t5)
/* BDBF0 800E27F0 1521000F */  bne        $t1, $at, .L800E2830
/* BDBF4 800E27F4 00000000 */   nop
/* BDBF8 800E27F8 95AF0006 */  lhu        $t7, 6($t5)
/* BDBFC 800E27FC 15E0000C */  bnez       $t7, .L800E2830
/* BDC00 800E2800 00000000 */   nop
/* BDC04 800E2804 240C0001 */  addiu      $t4, $zero, 1
/* BDC08 800E2808 A5AC0006 */  sh         $t4, 6($t5)
/* BDC0C 800E280C 8FB80030 */  lw         $t8, 0x30($sp)
/* BDC10 800E2810 2419FFFF */  addiu      $t9, $zero, -1
/* BDC14 800E2814 AF190008 */  sw         $t9, 8($t8)
/* BDC18 800E2818 8FAB0030 */  lw         $t3, 0x30($sp)
/* BDC1C 800E281C 8D6A0040 */  lw         $t2, 0x40($t3)
/* BDC20 800E2820 8D680048 */  lw         $t0, 0x48($t3)
/* BDC24 800E2824 01487023 */  subu       $t6, $t2, $t0
/* BDC28 800E2828 1000000B */  b          .L800E2858
/* BDC2C 800E282C AD6E0040 */   sw        $t6, 0x40($t3)
.L800E2830:
/* BDC30 800E2830 24090002 */  addiu      $t1, $zero, 2
/* BDC34 800E2834 3C0FA460 */  lui        $t7, %hi(D_A4600010)
/* BDC38 800E2838 ADE90010 */  sw         $t1, %lo(D_A4600010)($t7)
/* BDC3C 800E283C 3C0C8011 */  lui        $t4, %hi(D_8010901C)
/* BDC40 800E2840 8D8C901C */  lw         $t4, %lo(D_8010901C)($t4)
/* BDC44 800E2844 3C010010 */  lui        $at, 0x10
/* BDC48 800E2848 34210401 */  ori        $at, $at, 0x401
/* BDC4C 800E284C 01816825 */  or         $t5, $t4, $at
/* BDC50 800E2850 3C018011 */  lui        $at, %hi(D_8010901C)
/* BDC54 800E2854 AC2D901C */  sw         $t5, %lo(D_8010901C)($at)
.L800E2858:
/* BDC58 800E2858 8FB9002C */  lw         $t9, 0x2c($sp)
/* BDC5C 800E285C 3C048025 */  lui        $a0, %hi(D_8024C504)
/* BDC60 800E2860 8C84C504 */  lw         $a0, %lo(D_8024C504)($a0)
/* BDC64 800E2864 8F38000C */  lw         $t8, 0xc($t9)
/* BDC68 800E2868 8F270008 */  lw         $a3, 8($t9)
/* BDC6C 800E286C 00002825 */  or         $a1, $zero, $zero
/* BDC70 800E2870 00185080 */  sll        $t2, $t8, 2
/* BDC74 800E2874 AFAA0010 */  sw         $t2, 0x10($sp)
/* BDC78 800E2878 0C038DB8 */  jal        func_800E36E0
/* BDC7C 800E287C 3C060500 */   lui       $a2, 0x500
/* BDC80 800E2880 8FA8002C */  lw         $t0, 0x2c($sp)
/* BDC84 800E2884 24020001 */  addiu      $v0, $zero, 1
/* BDC88 800E2888 1000005A */  b          .L800E29F4
/* BDC8C 800E288C AD000000 */   sw        $zero, ($t0)
.L800E2890:
/* BDC90 800E2890 8FAE0030 */  lw         $t6, 0x30($sp)
/* BDC94 800E2894 2401FFFF */  addiu      $at, $zero, -1
/* BDC98 800E2898 8DCB0008 */  lw         $t3, 8($t6)
/* BDC9C 800E289C 15610021 */  bne        $t3, $at, .L800E2924
/* BDCA0 800E28A0 00000000 */   nop
/* BDCA4 800E28A4 95C90004 */  lhu        $t1, 4($t6)
/* BDCA8 800E28A8 24010002 */  addiu      $at, $zero, 2
/* BDCAC 800E28AC 1521001D */  bne        $t1, $at, .L800E2924
/* BDCB0 800E28B0 00000000 */   nop
/* BDCB4 800E28B4 95CF0006 */  lhu        $t7, 6($t6)
/* BDCB8 800E28B8 24010001 */  addiu      $at, $zero, 1
/* BDCBC 800E28BC 15E10019 */  bne        $t7, $at, .L800E2924
/* BDCC0 800E28C0 00000000 */   nop
/* BDCC4 800E28C4 25CC0018 */  addiu      $t4, $t6, 0x18
/* BDCC8 800E28C8 AFAC0024 */  sw         $t4, 0x24($sp)
/* BDCCC 800E28CC 8DCD0028 */  lw         $t5, 0x28($t6)
/* BDCD0 800E28D0 15A00011 */  bnez       $t5, .L800E2918
/* BDCD4 800E28D4 00000000 */   nop
/* BDCD8 800E28D8 8DD90020 */  lw         $t9, 0x20($t6)
/* BDCDC 800E28DC 8F380000 */  lw         $t8, ($t9)
/* BDCE0 800E28E0 8F2A0004 */  lw         $t2, 4($t9)
/* BDCE4 800E28E4 8F2B0008 */  lw         $t3, 8($t9)
/* BDCE8 800E28E8 8F2F000C */  lw         $t7, 0xc($t9)
/* BDCEC 800E28EC 030A4025 */  or         $t0, $t8, $t2
/* BDCF0 800E28F0 010B4825 */  or         $t1, $t0, $t3
/* BDCF4 800E28F4 01E96025 */  or         $t4, $t7, $t1
/* BDCF8 800E28F8 11800007 */  beqz       $t4, .L800E2918
/* BDCFC 800E28FC 00000000 */   nop
/* BDD00 800E2900 8FAE002C */  lw         $t6, 0x2c($sp)
/* BDD04 800E2904 240D0006 */  addiu      $t5, $zero, 6
/* BDD08 800E2908 0C038A81 */  jal        func_800E2A04
/* BDD0C 800E290C ADCD0000 */   sw        $t5, ($t6)
/* BDD10 800E2910 10000038 */  b          .L800E29F4
/* BDD14 800E2914 24020001 */   addiu     $v0, $zero, 1
.L800E2918:
/* BDD18 800E2918 8FB8002C */  lw         $t8, 0x2c($sp)
/* BDD1C 800E291C 0C038ABB */  jal        func_800E2AEC
/* BDD20 800E2920 AF000000 */   sw        $zero, ($t8)
.L800E2924:
/* BDD24 800E2924 8FAA0030 */  lw         $t2, 0x30($sp)
/* BDD28 800E2928 3C014000 */  lui        $at, 0x4000
/* BDD2C 800E292C 8D480008 */  lw         $t0, 8($t2)
/* BDD30 800E2930 250B0001 */  addiu      $t3, $t0, 1
/* BDD34 800E2934 AD4B0008 */  sw         $t3, 8($t2)
/* BDD38 800E2938 8FB9003C */  lw         $t9, 0x3c($sp)
/* BDD3C 800E293C 03217824 */  and        $t7, $t9, $at
/* BDD40 800E2940 11E0001A */  beqz       $t7, .L800E29AC
/* BDD44 800E2944 00000000 */   nop
/* BDD48 800E2948 8FA90030 */  lw         $t1, 0x30($sp)
/* BDD4C 800E294C 8D2C0008 */  lw         $t4, 8($t1)
/* BDD50 800E2950 29810055 */  slti       $at, $t4, 0x55
/* BDD54 800E2954 14200007 */  bnez       $at, .L800E2974
/* BDD58 800E2958 00000000 */   nop
/* BDD5C 800E295C 8FAE002C */  lw         $t6, 0x2c($sp)
/* BDD60 800E2960 240D0006 */  addiu      $t5, $zero, 6
/* BDD64 800E2964 0C038A81 */  jal        func_800E2A04
/* BDD68 800E2968 ADCD0000 */   sw        $t5, ($t6)
/* BDD6C 800E296C 10000021 */  b          .L800E29F4
/* BDD70 800E2970 24020001 */   addiu     $v0, $zero, 1
.L800E2974:
/* BDD74 800E2974 8FB8002C */  lw         $t8, 0x2c($sp)
/* BDD78 800E2978 3C048025 */  lui        $a0, %hi(D_8024C504)
/* BDD7C 800E297C 3C060500 */  lui        $a2, 0x500
/* BDD80 800E2980 8F08000C */  lw         $t0, 0xc($t8)
/* BDD84 800E2984 8F070004 */  lw         $a3, 4($t8)
/* BDD88 800E2988 34C60400 */  ori        $a2, $a2, 0x400
/* BDD8C 800E298C 8C84C504 */  lw         $a0, %lo(D_8024C504)($a0)
/* BDD90 800E2990 00002825 */  or         $a1, $zero, $zero
/* BDD94 800E2994 0C038DB8 */  jal        func_800E36E0
/* BDD98 800E2998 AFA80010 */   sw        $t0, 0x10($sp)
/* BDD9C 800E299C 8FAB002C */  lw         $t3, 0x2c($sp)
/* BDDA0 800E29A0 24020001 */  addiu      $v0, $zero, 1
/* BDDA4 800E29A4 10000013 */  b          .L800E29F4
/* BDDA8 800E29A8 AD600000 */   sw        $zero, ($t3)
.L800E29AC:
/* BDDAC 800E29AC 8FAA0030 */  lw         $t2, 0x30($sp)
/* BDDB0 800E29B0 8D590008 */  lw         $t9, 8($t2)
/* BDDB4 800E29B4 2B210055 */  slti       $at, $t9, 0x55
/* BDDB8 800E29B8 10200007 */  beqz       $at, .L800E29D8
/* BDDBC 800E29BC 00000000 */   nop
/* BDDC0 800E29C0 8FA9002C */  lw         $t1, 0x2c($sp)
/* BDDC4 800E29C4 240F0006 */  addiu      $t7, $zero, 6
/* BDDC8 800E29C8 0C038A81 */  jal        func_800E2A04
/* BDDCC 800E29CC AD2F0000 */   sw        $t7, ($t1)
/* BDDD0 800E29D0 10000008 */  b          .L800E29F4
/* BDDD4 800E29D4 24020001 */   addiu     $v0, $zero, 1
.L800E29D8:
/* BDDD8 800E29D8 10000006 */  b          .L800E29F4
/* BDDDC 800E29DC 24020001 */   addiu     $v0, $zero, 1
.L800E29E0:
/* BDDE0 800E29E0 8FAD002C */  lw         $t5, 0x2c($sp)
/* BDDE4 800E29E4 240C004B */  addiu      $t4, $zero, 0x4b
/* BDDE8 800E29E8 0C038A81 */  jal        func_800E2A04
/* BDDEC 800E29EC ADAC0000 */   sw        $t4, ($t5)
/* BDDF0 800E29F0 24020001 */  addiu      $v0, $zero, 1
.L800E29F4:
/* BDDF4 800E29F4 8FBF001C */  lw         $ra, 0x1c($sp)
/* BDDF8 800E29F8 27BD0040 */  addiu      $sp, $sp, 0x40
/* BDDFC 800E29FC 03E00008 */  jr         $ra
/* BDE00 800E2A00 00000000 */   nop

glabel func_800E2A04
/* BDE04 800E2A04 3C0E8025 */  lui        $t6, %hi(D_8024C504)
/* BDE08 800E2A08 8DCEC504 */  lw         $t6, %lo(D_8024C504)($t6)
/* BDE0C 800E2A0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BDE10 800E2A10 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDE14 800E2A14 25CF0014 */  addiu      $t7, $t6, 0x14
/* BDE18 800E2A18 AFAF001C */  sw         $t7, 0x1c($sp)
/* BDE1C 800E2A1C 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* BDE20 800E2A20 8F190010 */  lw         $t9, %lo(D_A4600010)($t8)
/* BDE24 800E2A24 AFB90018 */  sw         $t9, 0x18($sp)
/* BDE28 800E2A28 8FA80018 */  lw         $t0, 0x18($sp)
/* BDE2C 800E2A2C 31090002 */  andi       $t1, $t0, 2
/* BDE30 800E2A30 11200008 */  beqz       $t1, .L800E2A54
/* BDE34 800E2A34 00000000 */   nop
.L800E2A38:
/* BDE38 800E2A38 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* BDE3C 800E2A3C 8D4B0010 */  lw         $t3, %lo(D_A4600010)($t2)
/* BDE40 800E2A40 AFAB0018 */  sw         $t3, 0x18($sp)
/* BDE44 800E2A44 8FAC0018 */  lw         $t4, 0x18($sp)
/* BDE48 800E2A48 318D0002 */  andi       $t5, $t4, 2
/* BDE4C 800E2A4C 15A0FFFA */  bnez       $t5, .L800E2A38
/* BDE50 800E2A50 00000000 */   nop
.L800E2A54:
/* BDE54 800E2A54 8FAE001C */  lw         $t6, 0x1c($sp)
/* BDE58 800E2A58 3C011000 */  lui        $at, 0x1000
/* BDE5C 800E2A5C 3C19A500 */  lui        $t9, %hi(D_A5000510)
/* BDE60 800E2A60 8DCF0010 */  lw         $t7, 0x10($t6)
/* BDE64 800E2A64 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* BDE68 800E2A68 01E1C025 */  or         $t8, $t7, $at
/* BDE6C 800E2A6C AF380510 */  sw         $t8, %lo(D_A5000510)($t9)
/* BDE70 800E2A70 8D090010 */  lw         $t1, %lo(D_A4600010)($t0)
/* BDE74 800E2A74 AFA90018 */  sw         $t1, 0x18($sp)
/* BDE78 800E2A78 8FAA0018 */  lw         $t2, 0x18($sp)
/* BDE7C 800E2A7C 314B0002 */  andi       $t3, $t2, 2
/* BDE80 800E2A80 11600008 */  beqz       $t3, .L800E2AA4
/* BDE84 800E2A84 00000000 */   nop
.L800E2A88:
/* BDE88 800E2A88 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* BDE8C 800E2A8C 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* BDE90 800E2A90 AFAD0018 */  sw         $t5, 0x18($sp)
/* BDE94 800E2A94 8FAE0018 */  lw         $t6, 0x18($sp)
/* BDE98 800E2A98 31CF0002 */  andi       $t7, $t6, 2
/* BDE9C 800E2A9C 15E0FFFA */  bnez       $t7, .L800E2A88
/* BDEA0 800E2AA0 00000000 */   nop
.L800E2AA4:
/* BDEA4 800E2AA4 8FB8001C */  lw         $t8, 0x1c($sp)
/* BDEA8 800E2AA8 3C08A500 */  lui        $t0, %hi(D_A5000510)
/* BDEAC 800E2AAC 8F190010 */  lw         $t9, 0x10($t8)
/* BDEB0 800E2AB0 0C038ABB */  jal        func_800E2AEC
/* BDEB4 800E2AB4 AD190510 */   sw        $t9, %lo(D_A5000510)($t0)
/* BDEB8 800E2AB8 24090002 */  addiu      $t1, $zero, 2
/* BDEBC 800E2ABC 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* BDEC0 800E2AC0 AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* BDEC4 800E2AC4 3C0B8011 */  lui        $t3, %hi(D_8010901C)
/* BDEC8 800E2AC8 8D6B901C */  lw         $t3, %lo(D_8010901C)($t3)
/* BDECC 800E2ACC 3C010010 */  lui        $at, 0x10
/* BDED0 800E2AD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BDED4 800E2AD4 34210401 */  ori        $at, $at, 0x401
/* BDED8 800E2AD8 01616025 */  or         $t4, $t3, $at
/* BDEDC 800E2ADC 3C018011 */  lui        $at, %hi(D_8010901C)
/* BDEE0 800E2AE0 AC2C901C */  sw         $t4, %lo(D_8010901C)($at)
/* BDEE4 800E2AE4 03E00008 */  jr         $ra
/* BDEE8 800E2AE8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800E2AEC
/* BDEEC 800E2AEC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BDEF0 800E2AF0 3C0E8025 */  lui        $t6, %hi(D_8024B080)
/* BDEF4 800E2AF4 25CEB080 */  addiu      $t6, $t6, %lo(D_8024B080)
/* BDEF8 800E2AF8 25CF0040 */  addiu      $t7, $t6, 0x40
/* BDEFC 800E2AFC AFBF001C */  sw         $ra, 0x1c($sp)
/* BDF00 800E2B00 AFB00018 */  sw         $s0, 0x18($sp)
/* BDF04 800E2B04 AFAF002C */  sw         $t7, 0x2c($sp)
/* BDF08 800E2B08 8DD80040 */  lw         $t8, 0x40($t6)
/* BDF0C 800E2B0C 1300002D */  beqz       $t8, .L800E2BC4
/* BDF10 800E2B10 AFB80028 */   sw        $t8, 0x28($sp)
/* BDF14 800E2B14 8F190008 */  lw         $t9, 8($t8)
/* BDF18 800E2B18 8F080010 */  lw         $t0, 0x10($t8)
/* BDF1C 800E2B1C 0328082A */  slt        $at, $t9, $t0
/* BDF20 800E2B20 10200028 */  beqz       $at, .L800E2BC4
/* BDF24 800E2B24 00000000 */   nop
/* BDF28 800E2B28 8FA90028 */  lw         $t1, 0x28($sp)
/* BDF2C 800E2B2C 8FAE002C */  lw         $t6, 0x2c($sp)
/* BDF30 800E2B30 8D2A000C */  lw         $t2, 0xc($t1)
/* BDF34 800E2B34 8D2B0008 */  lw         $t3, 8($t1)
/* BDF38 800E2B38 8D2D0010 */  lw         $t5, 0x10($t1)
/* BDF3C 800E2B3C 014B6021 */  addu       $t4, $t2, $t3
/* BDF40 800E2B40 018D001A */  div        $zero, $t4, $t5
/* BDF44 800E2B44 00007810 */  mfhi       $t7
/* BDF48 800E2B48 AFAF0024 */  sw         $t7, 0x24($sp)
/* BDF4C 800E2B4C 8D280014 */  lw         $t0, 0x14($t1)
/* BDF50 800E2B50 8DD80004 */  lw         $t8, 4($t6)
/* BDF54 800E2B54 000FC880 */  sll        $t9, $t7, 2
/* BDF58 800E2B58 01195021 */  addu       $t2, $t0, $t9
/* BDF5C 800E2B5C AD580000 */  sw         $t8, ($t2)
/* BDF60 800E2B60 8FAB0028 */  lw         $t3, 0x28($sp)
/* BDF64 800E2B64 15A00002 */  bnez       $t5, .L800E2B70
/* BDF68 800E2B68 00000000 */   nop
/* BDF6C 800E2B6C 0007000D */  break      7
.L800E2B70:
/* BDF70 800E2B70 2401FFFF */   addiu     $at, $zero, -1
/* BDF74 800E2B74 15A10004 */  bne        $t5, $at, .L800E2B88
/* BDF78 800E2B78 3C018000 */   lui       $at, 0x8000
/* BDF7C 800E2B7C 15810002 */  bne        $t4, $at, .L800E2B88
/* BDF80 800E2B80 00000000 */   nop
/* BDF84 800E2B84 0006000D */  break      6
.L800E2B88:
/* BDF88 800E2B88 8D6C0008 */   lw        $t4, 8($t3)
/* BDF8C 800E2B8C 258D0001 */  addiu      $t5, $t4, 1
/* BDF90 800E2B90 AD6D0008 */  sw         $t5, 8($t3)
/* BDF94 800E2B94 8FAE0028 */  lw         $t6, 0x28($sp)
/* BDF98 800E2B98 8DCF0000 */  lw         $t7, ($t6)
/* BDF9C 800E2B9C 8DE90000 */  lw         $t1, ($t7)
/* BDFA0 800E2BA0 11200008 */  beqz       $t1, .L800E2BC4
/* BDFA4 800E2BA4 00000000 */   nop
/* BDFA8 800E2BA8 0C038825 */  jal        func_800E2094
/* BDFAC 800E2BAC 01C02025 */   or        $a0, $t6, $zero
/* BDFB0 800E2BB0 00408025 */  or         $s0, $v0, $zero
/* BDFB4 800E2BB4 3C048011 */  lui        $a0, %hi(D_80109E08)
/* BDFB8 800E2BB8 24849E08 */  addiu      $a0, $a0, %lo(D_80109E08)
/* BDFBC 800E2BBC 0C038813 */  jal        func_800E204C
/* BDFC0 800E2BC0 02002825 */   or        $a1, $s0, $zero
.L800E2BC4:
/* BDFC4 800E2BC4 8FBF001C */  lw         $ra, 0x1c($sp)
/* BDFC8 800E2BC8 8FB00018 */  lw         $s0, 0x18($sp)
/* BDFCC 800E2BCC 27BD0030 */  addiu      $sp, $sp, 0x30
/* BDFD0 800E2BD0 03E00008 */  jr         $ra
/* BDFD4 800E2BD4 00000000 */   nop
/* BDFD8 800E2BD8 00000000 */  nop
/* BDFDC 800E2BDC 00000000 */  nop
