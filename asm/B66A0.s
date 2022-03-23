.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DB2A0
/* B66A0 800DB2A0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* B66A4 800DB2A4 3C0E8011 */  lui        $t6, %hi(D_80109D90)
/* B66A8 800DB2A8 8DCE9D90 */  lw         $t6, %lo(D_80109D90)($t6)
/* B66AC 800DB2AC AFBF0024 */  sw         $ra, 0x24($sp)
/* B66B0 800DB2B0 AFA40080 */  sw         $a0, 0x80($sp)
/* B66B4 800DB2B4 AFA50084 */  sw         $a1, 0x84($sp)
/* B66B8 800DB2B8 AFA60088 */  sw         $a2, 0x88($sp)
/* B66BC 800DB2BC 11C00003 */  beqz       $t6, .L800DB2CC
/* B66C0 800DB2C0 AFA00078 */   sw        $zero, 0x78($sp)
/* B66C4 800DB2C4 10000070 */  b          .L800DB488
/* B66C8 800DB2C8 00001025 */   or        $v0, $zero, $zero
.L800DB2CC:
/* B66CC 800DB2CC 240F0001 */  addiu      $t7, $zero, 1
/* B66D0 800DB2D0 3C018011 */  lui        $at, %hi(D_80109D90)
/* B66D4 800DB2D4 0C038070 */  jal        func_800E01C0
/* B66D8 800DB2D8 AC2F9D90 */   sw        $t7, %lo(D_80109D90)($at)
/* B66DC 800DB2DC 3C050007 */  lui        $a1, 7
/* B66E0 800DB2E0 3C068011 */  lui        $a2, %hi(D_80109010)
/* B66E4 800DB2E4 3C078011 */  lui        $a3, %hi(D_80109014)
/* B66E8 800DB2E8 AFA20070 */  sw         $v0, 0x70($sp)
/* B66EC 800DB2EC AFA30074 */  sw         $v1, 0x74($sp)
/* B66F0 800DB2F0 8CE79014 */  lw         $a3, %lo(D_80109014)($a3)
/* B66F4 800DB2F4 8CC69010 */  lw         $a2, %lo(D_80109010)($a2)
/* B66F8 800DB2F8 34A5A120 */  ori        $a1, $a1, 0xa120
/* B66FC 800DB2FC 0C03818A */  jal        func_800E0628
/* B6700 800DB300 24040000 */   addiu     $a0, $zero, 0
/* B6704 800DB304 AFA20030 */  sw         $v0, 0x30($sp)
/* B6708 800DB308 AFA30034 */  sw         $v1, 0x34($sp)
/* B670C 800DB30C 3C07000F */  lui        $a3, 0xf
/* B6710 800DB310 34E74240 */  ori        $a3, $a3, 0x4240
/* B6714 800DB314 8FA50034 */  lw         $a1, 0x34($sp)
/* B6718 800DB318 8FA40030 */  lw         $a0, 0x30($sp)
/* B671C 800DB31C 0C03814A */  jal        func_800E0528
/* B6720 800DB320 24060000 */   addiu     $a2, $zero, 0
/* B6724 800DB324 8FB80070 */  lw         $t8, 0x70($sp)
/* B6728 800DB328 8FB90074 */  lw         $t9, 0x74($sp)
/* B672C 800DB32C 0058082B */  sltu       $at, $v0, $t8
/* B6730 800DB330 14200031 */  bnez       $at, .L800DB3F8
/* B6734 800DB334 0302082B */   sltu      $at, $t8, $v0
/* B6738 800DB338 14200003 */  bnez       $at, .L800DB348
/* B673C 800DB33C 0323082B */   sltu      $at, $t9, $v1
/* B6740 800DB340 1020002D */  beqz       $at, .L800DB3F8
/* B6744 800DB344 00000000 */   nop
.L800DB348:
/* B6748 800DB348 27A40038 */  addiu      $a0, $sp, 0x38
/* B674C 800DB34C 27A5007C */  addiu      $a1, $sp, 0x7c
/* B6750 800DB350 0C036938 */  jal        func_800DA4E0
/* B6754 800DB354 24060001 */   addiu     $a2, $zero, 1
/* B6758 800DB358 3C050007 */  lui        $a1, 7
/* B675C 800DB35C 3C068011 */  lui        $a2, %hi(D_80109010)
/* B6760 800DB360 3C078011 */  lui        $a3, %hi(D_80109014)
/* B6764 800DB364 8CE79014 */  lw         $a3, %lo(D_80109014)($a3)
/* B6768 800DB368 8CC69010 */  lw         $a2, %lo(D_80109010)($a2)
/* B676C 800DB36C 34A5A120 */  ori        $a1, $a1, 0xa120
/* B6770 800DB370 0C03818A */  jal        func_800E0628
/* B6774 800DB374 24040000 */   addiu     $a0, $zero, 0
/* B6778 800DB378 AFA20028 */  sw         $v0, 0x28($sp)
/* B677C 800DB37C AFA3002C */  sw         $v1, 0x2c($sp)
/* B6780 800DB380 3C07000F */  lui        $a3, 0xf
/* B6784 800DB384 34E74240 */  ori        $a3, $a3, 0x4240
/* B6788 800DB388 8FA5002C */  lw         $a1, 0x2c($sp)
/* B678C 800DB38C 8FA40028 */  lw         $a0, 0x28($sp)
/* B6790 800DB390 0C03814A */  jal        func_800E0528
/* B6794 800DB394 24060000 */   addiu     $a2, $zero, 0
/* B6798 800DB398 AFA20030 */  sw         $v0, 0x30($sp)
/* B679C 800DB39C AFA30034 */  sw         $v1, 0x34($sp)
/* B67A0 800DB3A0 8FA90034 */  lw         $t1, 0x34($sp)
/* B67A4 800DB3A4 8FA80030 */  lw         $t0, 0x30($sp)
/* B67A8 800DB3A8 8FAA0070 */  lw         $t2, 0x70($sp)
/* B67AC 800DB3AC 8FAB0074 */  lw         $t3, 0x74($sp)
/* B67B0 800DB3B0 240C0000 */  addiu      $t4, $zero, 0
/* B67B4 800DB3B4 240D0000 */  addiu      $t5, $zero, 0
/* B67B8 800DB3B8 27AE0038 */  addiu      $t6, $sp, 0x38
/* B67BC 800DB3BC 27AF007C */  addiu      $t7, $sp, 0x7c
/* B67C0 800DB3C0 010A3023 */  subu       $a2, $t0, $t2
/* B67C4 800DB3C4 012B082B */  sltu       $at, $t1, $t3
/* B67C8 800DB3C8 00C13023 */  subu       $a2, $a2, $at
/* B67CC 800DB3CC AFAF001C */  sw         $t7, 0x1c($sp)
/* B67D0 800DB3D0 AFAE0018 */  sw         $t6, 0x18($sp)
/* B67D4 800DB3D4 AFAD0014 */  sw         $t5, 0x14($sp)
/* B67D8 800DB3D8 AFAC0010 */  sw         $t4, 0x10($sp)
/* B67DC 800DB3DC 27A40050 */  addiu      $a0, $sp, 0x50
/* B67E0 800DB3E0 0C0370C8 */  jal        func_800DC320
/* B67E4 800DB3E4 012B3823 */   subu      $a3, $t1, $t3
/* B67E8 800DB3E8 27A40038 */  addiu      $a0, $sp, 0x38
/* B67EC 800DB3EC 27A5007C */  addiu      $a1, $sp, 0x7c
/* B67F0 800DB3F0 0C036988 */  jal        func_800DA620
/* B67F4 800DB3F4 24060001 */   addiu     $a2, $zero, 1
.L800DB3F8:
/* B67F8 800DB3F8 24180004 */  addiu      $t8, $zero, 4
/* B67FC 800DB3FC 3C018025 */  lui        $at, %hi(D_8024B141)
/* B6800 800DB400 A038B141 */  sb         $t8, %lo(D_8024B141)($at)
/* B6804 800DB404 0C036D5A */  jal        func_800DB568
/* B6808 800DB408 00002025 */   or        $a0, $zero, $zero
/* B680C 800DB40C 3C058025 */  lui        $a1, %hi(D_8024B100)
/* B6810 800DB410 24A5B100 */  addiu      $a1, $a1, %lo(D_8024B100)
/* B6814 800DB414 0C0383B4 */  jal        func_800E0ED0
/* B6818 800DB418 24040001 */   addiu     $a0, $zero, 1
/* B681C 800DB41C AFA20078 */  sw         $v0, 0x78($sp)
/* B6820 800DB420 8FA40080 */  lw         $a0, 0x80($sp)
/* B6824 800DB424 27A5007C */  addiu      $a1, $sp, 0x7c
/* B6828 800DB428 0C036988 */  jal        func_800DA620
/* B682C 800DB42C 24060001 */   addiu     $a2, $zero, 1
/* B6830 800DB430 3C058025 */  lui        $a1, %hi(D_8024B100)
/* B6834 800DB434 24A5B100 */  addiu      $a1, $a1, %lo(D_8024B100)
/* B6838 800DB438 0C0383B4 */  jal        func_800E0ED0
/* B683C 800DB43C 00002025 */   or        $a0, $zero, $zero
/* B6840 800DB440 AFA20078 */  sw         $v0, 0x78($sp)
/* B6844 800DB444 8FA40080 */  lw         $a0, 0x80($sp)
/* B6848 800DB448 27A5007C */  addiu      $a1, $sp, 0x7c
/* B684C 800DB44C 0C036988 */  jal        func_800DA620
/* B6850 800DB450 24060001 */   addiu     $a2, $zero, 1
/* B6854 800DB454 8FA40084 */  lw         $a0, 0x84($sp)
/* B6858 800DB458 0C036D26 */  jal        func_800DB498
/* B685C 800DB45C 8FA50088 */   lw        $a1, 0x88($sp)
/* B6860 800DB460 3C018025 */  lui        $at, %hi(D_8024B140)
/* B6864 800DB464 0C038384 */  jal        func_800E0E10
/* B6868 800DB468 A020B140 */   sb        $zero, %lo(D_8024B140)($at)
/* B686C 800DB46C 3C048025 */  lui        $a0, %hi(D_8024B168)
/* B6870 800DB470 3C058025 */  lui        $a1, %hi(D_8024B180)
/* B6874 800DB474 24A5B180 */  addiu      $a1, $a1, %lo(D_8024B180)
/* B6878 800DB478 2484B168 */  addiu      $a0, $a0, %lo(D_8024B168)
/* B687C 800DB47C 0C036938 */  jal        func_800DA4E0
/* B6880 800DB480 24060001 */   addiu     $a2, $zero, 1
/* B6884 800DB484 8FA20078 */  lw         $v0, 0x78($sp)
.L800DB488:
/* B6888 800DB488 8FBF0024 */  lw         $ra, 0x24($sp)
/* B688C 800DB48C 27BD0080 */  addiu      $sp, $sp, 0x80
/* B6890 800DB490 03E00008 */  jr         $ra
/* B6894 800DB494 00000000 */   nop

glabel func_800DB498
/* B6898 800DB498 3C0F8025 */  lui        $t7, %hi(D_8024B141)
/* B689C 800DB49C 91EFB141 */  lbu        $t7, %lo(D_8024B141)($t7)
/* B68A0 800DB4A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B68A4 800DB4A4 3C0E8025 */  lui        $t6, %hi(D_8024B100)
/* B68A8 800DB4A8 25CEB100 */  addiu      $t6, $t6, %lo(D_8024B100)
/* B68AC 800DB4AC A3A00007 */  sb         $zero, 7($sp)
/* B68B0 800DB4B0 AFAE0014 */  sw         $t6, 0x14($sp)
/* B68B4 800DB4B4 19E00028 */  blez       $t7, .L800DB558
/* B68B8 800DB4B8 AFA00008 */   sw        $zero, 8($sp)
.L800DB4BC:
/* B68BC 800DB4BC 8FB90014 */  lw         $t9, 0x14($sp)
/* B68C0 800DB4C0 27B8000C */  addiu      $t8, $sp, 0xc
/* B68C4 800DB4C4 8B210000 */  lwl        $at, ($t9)
/* B68C8 800DB4C8 9B210003 */  lwr        $at, 3($t9)
/* B68CC 800DB4CC AF010000 */  sw         $at, ($t8)
/* B68D0 800DB4D0 8B290004 */  lwl        $t1, 4($t9)
/* B68D4 800DB4D4 9B290007 */  lwr        $t1, 7($t9)
/* B68D8 800DB4D8 AF090004 */  sw         $t1, 4($t8)
/* B68DC 800DB4DC 93AA000E */  lbu        $t2, 0xe($sp)
/* B68E0 800DB4E0 314B00C0 */  andi       $t3, $t2, 0xc0
/* B68E4 800DB4E4 000B6103 */  sra        $t4, $t3, 4
/* B68E8 800DB4E8 A0AC0003 */  sb         $t4, 3($a1)
/* B68EC 800DB4EC 90AD0003 */  lbu        $t5, 3($a1)
/* B68F0 800DB4F0 15A0000E */  bnez       $t5, .L800DB52C
/* B68F4 800DB4F4 00000000 */   nop
/* B68F8 800DB4F8 93AE0011 */  lbu        $t6, 0x11($sp)
/* B68FC 800DB4FC 93A80010 */  lbu        $t0, 0x10($sp)
/* B6900 800DB500 240B0001 */  addiu      $t3, $zero, 1
/* B6904 800DB504 000E7A00 */  sll        $t7, $t6, 8
/* B6908 800DB508 01E8C025 */  or         $t8, $t7, $t0
/* B690C 800DB50C A4B80000 */  sh         $t8, ($a1)
/* B6910 800DB510 93B90012 */  lbu        $t9, 0x12($sp)
/* B6914 800DB514 A0B90002 */  sb         $t9, 2($a1)
/* B6918 800DB518 8FAA0008 */  lw         $t2, 8($sp)
/* B691C 800DB51C 93A90007 */  lbu        $t1, 7($sp)
/* B6920 800DB520 014B6004 */  sllv       $t4, $t3, $t2
/* B6924 800DB524 012C6825 */  or         $t5, $t1, $t4
/* B6928 800DB528 A3AD0007 */  sb         $t5, 7($sp)
.L800DB52C:
/* B692C 800DB52C 8FAE0008 */  lw         $t6, 8($sp)
/* B6930 800DB530 3C198025 */  lui        $t9, %hi(D_8024B141)
/* B6934 800DB534 9339B141 */  lbu        $t9, %lo(D_8024B141)($t9)
/* B6938 800DB538 8FA80014 */  lw         $t0, 0x14($sp)
/* B693C 800DB53C 25CF0001 */  addiu      $t7, $t6, 1
/* B6940 800DB540 01F9082A */  slt        $at, $t7, $t9
/* B6944 800DB544 25180008 */  addiu      $t8, $t0, 8
/* B6948 800DB548 AFB80014 */  sw         $t8, 0x14($sp)
/* B694C 800DB54C AFAF0008 */  sw         $t7, 8($sp)
/* B6950 800DB550 1420FFDA */  bnez       $at, .L800DB4BC
/* B6954 800DB554 24A50004 */   addiu     $a1, $a1, 4
.L800DB558:
/* B6958 800DB558 93AB0007 */  lbu        $t3, 7($sp)
/* B695C 800DB55C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B6960 800DB560 03E00008 */  jr         $ra
/* B6964 800DB564 A08B0000 */   sb        $t3, ($a0)

glabel func_800DB568
/* B6968 800DB568 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B696C 800DB56C 308400FF */  andi       $a0, $a0, 0xff
/* B6970 800DB570 AFA00000 */  sw         $zero, ($sp)
.L800DB574:
/* B6974 800DB574 8FAE0000 */  lw         $t6, ($sp)
/* B6978 800DB578 8FB80000 */  lw         $t8, ($sp)
/* B697C 800DB57C 3C018025 */  lui        $at, %hi(D_8024B100)
/* B6980 800DB580 000E7880 */  sll        $t7, $t6, 2
/* B6984 800DB584 002F0821 */  addu       $at, $at, $t7
/* B6988 800DB588 AC20B100 */  sw         $zero, %lo(D_8024B100)($at)
/* B698C 800DB58C 27190001 */  addiu      $t9, $t8, 1
/* B6990 800DB590 2B210010 */  slti       $at, $t9, 0x10
/* B6994 800DB594 1420FFF7 */  bnez       $at, .L800DB574
/* B6998 800DB598 AFB90000 */   sw        $t9, ($sp)
/* B699C 800DB59C 3C198025 */  lui        $t9, %hi(D_8024B141)
/* B69A0 800DB5A0 9339B141 */  lbu        $t9, %lo(D_8024B141)($t9)
/* B69A4 800DB5A4 3C098025 */  lui        $t1, %hi(D_8024B100)
/* B69A8 800DB5A8 24080001 */  addiu      $t0, $zero, 1
/* B69AC 800DB5AC 3C018025 */  lui        $at, 0x8025
/* B69B0 800DB5B0 2529B100 */  addiu      $t1, $t1, %lo(D_8024B100)
/* B69B4 800DB5B4 240A00FF */  addiu      $t2, $zero, 0xff
/* B69B8 800DB5B8 240B0001 */  addiu      $t3, $zero, 1
/* B69BC 800DB5BC 240C0003 */  addiu      $t4, $zero, 3
/* B69C0 800DB5C0 240D00FF */  addiu      $t5, $zero, 0xff
/* B69C4 800DB5C4 240E00FF */  addiu      $t6, $zero, 0xff
/* B69C8 800DB5C8 240F00FF */  addiu      $t7, $zero, 0xff
/* B69CC 800DB5CC 241800FF */  addiu      $t8, $zero, 0xff
/* B69D0 800DB5D0 AC28B13C */  sw         $t0, -0x4ec4($at)
/* B69D4 800DB5D4 AFA9000C */  sw         $t1, 0xc($sp)
/* B69D8 800DB5D8 A3AA0004 */  sb         $t2, 4($sp)
/* B69DC 800DB5DC A3AB0005 */  sb         $t3, 5($sp)
/* B69E0 800DB5E0 A3AC0006 */  sb         $t4, 6($sp)
/* B69E4 800DB5E4 A3A40007 */  sb         $a0, 7($sp)
/* B69E8 800DB5E8 A3AD0008 */  sb         $t5, 8($sp)
/* B69EC 800DB5EC A3AE0009 */  sb         $t6, 9($sp)
/* B69F0 800DB5F0 A3AF000A */  sb         $t7, 0xa($sp)
/* B69F4 800DB5F4 A3B8000B */  sb         $t8, 0xb($sp)
/* B69F8 800DB5F8 1B200013 */  blez       $t9, .L800DB648
/* B69FC 800DB5FC AFA00000 */   sw        $zero, ($sp)
.L800DB600:
/* B6A00 800DB600 27A90004 */  addiu      $t1, $sp, 4
/* B6A04 800DB604 8D210000 */  lw         $at, ($t1)
/* B6A08 800DB608 8FA8000C */  lw         $t0, 0xc($sp)
/* B6A0C 800DB60C 3C188025 */  lui        $t8, 0x8025
/* B6A10 800DB610 A9010000 */  swl        $at, ($t0)
/* B6A14 800DB614 B9010003 */  swr        $at, 3($t0)
/* B6A18 800DB618 8D2B0004 */  lw         $t3, 4($t1)
/* B6A1C 800DB61C A90B0004 */  swl        $t3, 4($t0)
/* B6A20 800DB620 B90B0007 */  swr        $t3, 7($t0)
/* B6A24 800DB624 8FAE0000 */  lw         $t6, ($sp)
/* B6A28 800DB628 9318B141 */  lbu        $t8, -0x4ebf($t8)
/* B6A2C 800DB62C 8FAC000C */  lw         $t4, 0xc($sp)
/* B6A30 800DB630 25CF0001 */  addiu      $t7, $t6, 1
/* B6A34 800DB634 01F8082A */  slt        $at, $t7, $t8
/* B6A38 800DB638 258D0008 */  addiu      $t5, $t4, 8
/* B6A3C 800DB63C AFAF0000 */  sw         $t7, ($sp)
/* B6A40 800DB640 1420FFEF */  bnez       $at, .L800DB600
/* B6A44 800DB644 AFAD000C */   sw        $t5, 0xc($sp)
.L800DB648:
/* B6A48 800DB648 8FAA000C */  lw         $t2, 0xc($sp)
/* B6A4C 800DB64C 241900FE */  addiu      $t9, $zero, 0xfe
/* B6A50 800DB650 27BD0010 */  addiu      $sp, $sp, 0x10
/* B6A54 800DB654 03E00008 */  jr         $ra
/* B6A58 800DB658 A1590000 */   sb        $t9, ($t2)
/* B6A5C 800DB65C 00000000 */  nop
