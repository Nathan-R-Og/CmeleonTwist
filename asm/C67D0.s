.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EB3D0
/* C67D0 800EB3D0 3C0EA450 */  lui        $t6, %hi(D_A450000C)
/* C67D4 800EB3D4 8DC4000C */  lw         $a0, %lo(D_A450000C)($t6)
/* C67D8 800EB3D8 3C018000 */  lui        $at, 0x8000
/* C67DC 800EB3DC 27BDFFF8 */  addiu      $sp, $sp, -8
/* C67E0 800EB3E0 00817824 */  and        $t7, $a0, $at
/* C67E4 800EB3E4 11E00003 */  beqz       $t7, .L800EB3F4
/* C67E8 800EB3E8 00000000 */   nop
/* C67EC 800EB3EC 10000002 */  b          .L800EB3F8
/* C67F0 800EB3F0 24020001 */   addiu     $v0, $zero, 1
.L800EB3F4:
/* C67F4 800EB3F4 00001025 */  or         $v0, $zero, $zero
.L800EB3F8:
/* C67F8 800EB3F8 03E00008 */  jr         $ra
/* C67FC 800EB3FC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800EB400
/* C6800 800EB400 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C6804 800EB404 AFA5003C */  sw         $a1, 0x3c($sp)
/* C6808 800EB408 93AF003F */  lbu        $t7, 0x3f($sp)
/* C680C 800EB40C 3C0E8025 */  lui        $t6, %hi(D_8024C2A0)
/* C6810 800EB410 25CEC2A0 */  addiu      $t6, $t6, %lo(D_8024C2A0)
/* C6814 800EB414 29E10041 */  slti       $at, $t7, 0x41
/* C6818 800EB418 AFBF0014 */  sw         $ra, 0x14($sp)
/* C681C 800EB41C AFA40038 */  sw         $a0, 0x38($sp)
/* C6820 800EB420 AFA60040 */  sw         $a2, 0x40($sp)
/* C6824 800EB424 AFA00034 */  sw         $zero, 0x34($sp)
/* C6828 800EB428 14200003 */  bnez       $at, .L800EB438
/* C682C 800EB42C AFAE002C */   sw        $t6, 0x2c($sp)
/* C6830 800EB430 1000005B */  b          .L800EB5A0
/* C6834 800EB434 2402FFFF */   addiu     $v0, $zero, -1
.L800EB438:
/* C6838 800EB438 0C038398 */  jal        func_800E0E60
/* C683C 800EB43C 00000000 */   nop
/* C6840 800EB440 8FA40038 */  lw         $a0, 0x38($sp)
/* C6844 800EB444 0C03ADAF */  jal        func_800EB6BC
/* C6848 800EB448 27A5001C */   addiu     $a1, $sp, 0x1c
/* C684C 800EB44C AFA20034 */  sw         $v0, 0x34($sp)
/* C6850 800EB450 8FB80034 */  lw         $t8, 0x34($sp)
/* C6854 800EB454 17000005 */  bnez       $t8, .L800EB46C
/* C6858 800EB458 00000000 */   nop
/* C685C 800EB45C 97B9001C */  lhu        $t9, 0x1c($sp)
/* C6860 800EB460 34018000 */  ori        $at, $zero, 0x8000
/* C6864 800EB464 13210003 */  beq        $t9, $at, .L800EB474
/* C6868 800EB468 00000000 */   nop
.L800EB46C:
/* C686C 800EB46C 1000004C */  b          .L800EB5A0
/* C6870 800EB470 24020008 */   addiu     $v0, $zero, 8
.L800EB474:
/* C6874 800EB474 93A8001E */  lbu        $t0, 0x1e($sp)
/* C6878 800EB478 31090080 */  andi       $t1, $t0, 0x80
/* C687C 800EB47C 11200008 */  beqz       $t1, .L800EB4A0
/* C6880 800EB480 00000000 */   nop
.L800EB484:
/* C6884 800EB484 8FA40038 */  lw         $a0, 0x38($sp)
/* C6888 800EB488 0C03ADAF */  jal        func_800EB6BC
/* C688C 800EB48C 27A5001C */   addiu     $a1, $sp, 0x1c
/* C6890 800EB490 93AA001E */  lbu        $t2, 0x1e($sp)
/* C6894 800EB494 314B0080 */  andi       $t3, $t2, 0x80
/* C6898 800EB498 1560FFFA */  bnez       $t3, .L800EB484
/* C689C 800EB49C 00000000 */   nop
.L800EB4A0:
/* C68A0 800EB4A0 93A4003F */  lbu        $a0, 0x3f($sp)
/* C68A4 800EB4A4 0C03AD6C */  jal        func_800EB5B0
/* C68A8 800EB4A8 8FA50040 */   lw        $a1, 0x40($sp)
/* C68AC 800EB4AC 3C058025 */  lui        $a1, %hi(D_8024C2A0)
/* C68B0 800EB4B0 24A5C2A0 */  addiu      $a1, $a1, %lo(D_8024C2A0)
/* C68B4 800EB4B4 0C0383B4 */  jal        func_800E0ED0
/* C68B8 800EB4B8 24040001 */   addiu     $a0, $zero, 1
/* C68BC 800EB4BC AFA20034 */  sw         $v0, 0x34($sp)
/* C68C0 800EB4C0 8FA40038 */  lw         $a0, 0x38($sp)
/* C68C4 800EB4C4 00002825 */  or         $a1, $zero, $zero
/* C68C8 800EB4C8 0C036988 */  jal        func_800DA620
/* C68CC 800EB4CC 24060001 */   addiu     $a2, $zero, 1
/* C68D0 800EB4D0 AFA00030 */  sw         $zero, 0x30($sp)
.L800EB4D4:
/* C68D4 800EB4D4 8FAD0030 */  lw         $t5, 0x30($sp)
/* C68D8 800EB4D8 8FAF0030 */  lw         $t7, 0x30($sp)
/* C68DC 800EB4DC 3C018025 */  lui        $at, %hi(D_8024C2A0)
/* C68E0 800EB4E0 000D7080 */  sll        $t6, $t5, 2
/* C68E4 800EB4E4 002E0821 */  addu       $at, $at, $t6
/* C68E8 800EB4E8 240C00FF */  addiu      $t4, $zero, 0xff
/* C68EC 800EB4EC AC2CC2A0 */  sw         $t4, %lo(D_8024C2A0)($at)
/* C68F0 800EB4F0 25F80001 */  addiu      $t8, $t7, 1
/* C68F4 800EB4F4 2B010010 */  slti       $at, $t8, 0x10
/* C68F8 800EB4F8 1420FFF6 */  bnez       $at, .L800EB4D4
/* C68FC 800EB4FC AFB80030 */   sw        $t8, 0x30($sp)
/* C6900 800EB500 3C018025 */  lui        $at, %hi(D_8024C2DC)
/* C6904 800EB504 3C058025 */  lui        $a1, %hi(D_8024C2A0)
/* C6908 800EB508 AC20C2DC */  sw         $zero, %lo(D_8024C2DC)($at)
/* C690C 800EB50C 24A5C2A0 */  addiu      $a1, $a1, %lo(D_8024C2A0)
/* C6910 800EB510 0C0383B4 */  jal        func_800E0ED0
/* C6914 800EB514 00002025 */   or        $a0, $zero, $zero
/* C6918 800EB518 24190005 */  addiu      $t9, $zero, 5
/* C691C 800EB51C 3C018025 */  lui        $at, %hi(D_8024B140)
/* C6920 800EB520 AFA20034 */  sw         $v0, 0x34($sp)
/* C6924 800EB524 A039B140 */  sb         $t9, %lo(D_8024B140)($at)
/* C6928 800EB528 8FA40038 */  lw         $a0, 0x38($sp)
/* C692C 800EB52C 00002825 */  or         $a1, $zero, $zero
/* C6930 800EB530 0C036988 */  jal        func_800DA620
/* C6934 800EB534 24060001 */   addiu     $a2, $zero, 1
/* C6938 800EB538 AFA00030 */  sw         $zero, 0x30($sp)
.L800EB53C:
/* C693C 800EB53C 8FAA0030 */  lw         $t2, 0x30($sp)
/* C6940 800EB540 8FA8002C */  lw         $t0, 0x2c($sp)
/* C6944 800EB544 254B0001 */  addiu      $t3, $t2, 1
/* C6948 800EB548 29610004 */  slti       $at, $t3, 4
/* C694C 800EB54C 25090001 */  addiu      $t1, $t0, 1
/* C6950 800EB550 AFAB0030 */  sw         $t3, 0x30($sp)
/* C6954 800EB554 1420FFF9 */  bnez       $at, .L800EB53C
/* C6958 800EB558 AFA9002C */   sw        $t1, 0x2c($sp)
/* C695C 800EB55C 8FAC002C */  lw         $t4, 0x2c($sp)
/* C6960 800EB560 27AD0020 */  addiu      $t5, $sp, 0x20
/* C6964 800EB564 89810000 */  lwl        $at, ($t4)
/* C6968 800EB568 99810003 */  lwr        $at, 3($t4)
/* C696C 800EB56C ADA10000 */  sw         $at, ($t5)
/* C6970 800EB570 898F0004 */  lwl        $t7, 4($t4)
/* C6974 800EB574 998F0007 */  lwr        $t7, 7($t4)
/* C6978 800EB578 ADAF0004 */  sw         $t7, 4($t5)
/* C697C 800EB57C 89810008 */  lwl        $at, 8($t4)
/* C6980 800EB580 9981000B */  lwr        $at, 0xb($t4)
/* C6984 800EB584 ADA10008 */  sw         $at, 8($t5)
/* C6988 800EB588 93B80021 */  lbu        $t8, 0x21($sp)
/* C698C 800EB58C 331900C0 */  andi       $t9, $t8, 0xc0
/* C6990 800EB590 00194103 */  sra        $t0, $t9, 4
/* C6994 800EB594 0C0383A9 */  jal        func_800E0EA4
/* C6998 800EB598 AFA80034 */   sw        $t0, 0x34($sp)
/* C699C 800EB59C 8FA20034 */  lw         $v0, 0x34($sp)
.L800EB5A0:
/* C69A0 800EB5A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C69A4 800EB5A4 27BD0038 */  addiu      $sp, $sp, 0x38
/* C69A8 800EB5A8 03E00008 */  jr         $ra
/* C69AC 800EB5AC 00000000 */   nop

glabel func_800EB5B0
/* C69B0 800EB5B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C69B4 800EB5B4 3C0E8025 */  lui        $t6, %hi(D_8024C2A0)
/* C69B8 800EB5B8 25CEC2A0 */  addiu      $t6, $t6, %lo(D_8024C2A0)
/* C69BC 800EB5BC 308400FF */  andi       $a0, $a0, 0xff
/* C69C0 800EB5C0 AFAE0014 */  sw         $t6, 0x14($sp)
/* C69C4 800EB5C4 AFA00004 */  sw         $zero, 4($sp)
.L800EB5C8:
/* C69C8 800EB5C8 8FB80004 */  lw         $t8, 4($sp)
/* C69CC 800EB5CC 8FA80004 */  lw         $t0, 4($sp)
/* C69D0 800EB5D0 3C018025 */  lui        $at, %hi(D_8024C2A0)
/* C69D4 800EB5D4 0018C880 */  sll        $t9, $t8, 2
/* C69D8 800EB5D8 00390821 */  addu       $at, $at, $t9
/* C69DC 800EB5DC 240F00FF */  addiu      $t7, $zero, 0xff
/* C69E0 800EB5E0 AC2FC2A0 */  sw         $t7, %lo(D_8024C2A0)($at)
/* C69E4 800EB5E4 25090001 */  addiu      $t1, $t0, 1
/* C69E8 800EB5E8 29210010 */  slti       $at, $t1, 0x10
/* C69EC 800EB5EC 1420FFF6 */  bnez       $at, .L800EB5C8
/* C69F0 800EB5F0 AFA90004 */   sw        $t1, 4($sp)
/* C69F4 800EB5F4 240A0001 */  addiu      $t2, $zero, 1
/* C69F8 800EB5F8 3C018025 */  lui        $at, %hi(D_8024C2DC)
/* C69FC 800EB5FC 240B000A */  addiu      $t3, $zero, 0xa
/* C6A00 800EB600 240C0001 */  addiu      $t4, $zero, 1
/* C6A04 800EB604 240D0005 */  addiu      $t5, $zero, 5
/* C6A08 800EB608 AC2AC2DC */  sw         $t2, %lo(D_8024C2DC)($at)
/* C6A0C 800EB60C A3AB0008 */  sb         $t3, 8($sp)
/* C6A10 800EB610 A3AC0009 */  sb         $t4, 9($sp)
/* C6A14 800EB614 A3AD000A */  sb         $t5, 0xa($sp)
/* C6A18 800EB618 A3A4000B */  sb         $a0, 0xb($sp)
/* C6A1C 800EB61C AFA00004 */  sw         $zero, 4($sp)
.L800EB620:
/* C6A20 800EB620 8FB80004 */  lw         $t8, 4($sp)
/* C6A24 800EB624 90AE0000 */  lbu        $t6, ($a1)
/* C6A28 800EB628 24A50001 */  addiu      $a1, $a1, 1
/* C6A2C 800EB62C 03B87821 */  addu       $t7, $sp, $t8
/* C6A30 800EB630 A1EE000C */  sb         $t6, 0xc($t7)
/* C6A34 800EB634 8FB90004 */  lw         $t9, 4($sp)
/* C6A38 800EB638 27280001 */  addiu      $t0, $t9, 1
/* C6A3C 800EB63C 29010008 */  slti       $at, $t0, 8
/* C6A40 800EB640 1420FFF7 */  bnez       $at, .L800EB620
/* C6A44 800EB644 AFA80004 */   sw        $t0, 4($sp)
/* C6A48 800EB648 AFA00004 */  sw         $zero, 4($sp)
.L800EB64C:
/* C6A4C 800EB64C 8FA90014 */  lw         $t1, 0x14($sp)
/* C6A50 800EB650 A1200000 */  sb         $zero, ($t1)
/* C6A54 800EB654 8FAC0004 */  lw         $t4, 4($sp)
/* C6A58 800EB658 8FAA0014 */  lw         $t2, 0x14($sp)
/* C6A5C 800EB65C 258D0001 */  addiu      $t5, $t4, 1
/* C6A60 800EB660 29A10004 */  slti       $at, $t5, 4
/* C6A64 800EB664 254B0001 */  addiu      $t3, $t2, 1
/* C6A68 800EB668 AFAD0004 */  sw         $t5, 4($sp)
/* C6A6C 800EB66C 1420FFF7 */  bnez       $at, .L800EB64C
/* C6A70 800EB670 AFAB0014 */   sw        $t3, 0x14($sp)
/* C6A74 800EB674 27B80008 */  addiu      $t8, $sp, 8
/* C6A78 800EB678 8F010000 */  lw         $at, ($t8)
/* C6A7C 800EB67C 8FAE0014 */  lw         $t6, 0x14($sp)
/* C6A80 800EB680 240A00FE */  addiu      $t2, $zero, 0xfe
/* C6A84 800EB684 A9C10000 */  swl        $at, ($t6)
/* C6A88 800EB688 B9C10003 */  swr        $at, 3($t6)
/* C6A8C 800EB68C 8F190004 */  lw         $t9, 4($t8)
/* C6A90 800EB690 A9D90004 */  swl        $t9, 4($t6)
/* C6A94 800EB694 B9D90007 */  swr        $t9, 7($t6)
/* C6A98 800EB698 8F010008 */  lw         $at, 8($t8)
/* C6A9C 800EB69C A9C10008 */  swl        $at, 8($t6)
/* C6AA0 800EB6A0 B9C1000B */  swr        $at, 0xb($t6)
/* C6AA4 800EB6A4 8FA80014 */  lw         $t0, 0x14($sp)
/* C6AA8 800EB6A8 2509000C */  addiu      $t1, $t0, 0xc
/* C6AAC 800EB6AC AFA90014 */  sw         $t1, 0x14($sp)
/* C6AB0 800EB6B0 A12A0000 */  sb         $t2, ($t1)
/* C6AB4 800EB6B4 03E00008 */  jr         $ra
/* C6AB8 800EB6B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800EB6BC
/* C6ABC 800EB6BC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C6AC0 800EB6C0 3C0E8025 */  lui        $t6, %hi(D_8024C2A0)
/* C6AC4 800EB6C4 25CEC2A0 */  addiu      $t6, $t6, %lo(D_8024C2A0)
/* C6AC8 800EB6C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C6ACC 800EB6CC AFA40030 */  sw         $a0, 0x30($sp)
/* C6AD0 800EB6D0 AFA50034 */  sw         $a1, 0x34($sp)
/* C6AD4 800EB6D4 AFA0002C */  sw         $zero, 0x2c($sp)
/* C6AD8 800EB6D8 AFAE0024 */  sw         $t6, 0x24($sp)
/* C6ADC 800EB6DC AFA00028 */  sw         $zero, 0x28($sp)
.L800EB6E0:
/* C6AE0 800EB6E0 8FAF0028 */  lw         $t7, 0x28($sp)
/* C6AE4 800EB6E4 8FB90028 */  lw         $t9, 0x28($sp)
/* C6AE8 800EB6E8 3C018025 */  lui        $at, %hi(D_8024C2A0)
/* C6AEC 800EB6EC 000FC080 */  sll        $t8, $t7, 2
/* C6AF0 800EB6F0 00380821 */  addu       $at, $at, $t8
/* C6AF4 800EB6F4 AC20C2A0 */  sw         $zero, %lo(D_8024C2A0)($at)
/* C6AF8 800EB6F8 27280001 */  addiu      $t0, $t9, 1
/* C6AFC 800EB6FC 29010010 */  slti       $at, $t0, 0x10
/* C6B00 800EB700 1420FFF7 */  bnez       $at, .L800EB6E0
/* C6B04 800EB704 AFA80028 */   sw        $t0, 0x28($sp)
/* C6B08 800EB708 3C0A8025 */  lui        $t2, %hi(D_8024C2A0)
/* C6B0C 800EB70C 24090001 */  addiu      $t1, $zero, 1
/* C6B10 800EB710 3C018025 */  lui        $at, %hi(D_8024C2DC)
/* C6B14 800EB714 254AC2A0 */  addiu      $t2, $t2, %lo(D_8024C2A0)
/* C6B18 800EB718 AC29C2DC */  sw         $t1, %lo(D_8024C2DC)($at)
/* C6B1C 800EB71C AFAA0024 */  sw         $t2, 0x24($sp)
/* C6B20 800EB720 AFA00028 */  sw         $zero, 0x28($sp)
.L800EB724:
/* C6B24 800EB724 8FAB0024 */  lw         $t3, 0x24($sp)
/* C6B28 800EB728 A1600000 */  sb         $zero, ($t3)
/* C6B2C 800EB72C 8FAE0028 */  lw         $t6, 0x28($sp)
/* C6B30 800EB730 8FAC0024 */  lw         $t4, 0x24($sp)
/* C6B34 800EB734 25CF0001 */  addiu      $t7, $t6, 1
/* C6B38 800EB738 29E10004 */  slti       $at, $t7, 4
/* C6B3C 800EB73C 258D0001 */  addiu      $t5, $t4, 1
/* C6B40 800EB740 AFAF0028 */  sw         $t7, 0x28($sp)
/* C6B44 800EB744 1420FFF7 */  bnez       $at, .L800EB724
/* C6B48 800EB748 AFAD0024 */   sw        $t5, 0x24($sp)
/* C6B4C 800EB74C 241800FF */  addiu      $t8, $zero, 0xff
/* C6B50 800EB750 24190001 */  addiu      $t9, $zero, 1
/* C6B54 800EB754 24080003 */  addiu      $t0, $zero, 3
/* C6B58 800EB758 240900FF */  addiu      $t1, $zero, 0xff
/* C6B5C 800EB75C 240A00FF */  addiu      $t2, $zero, 0xff
/* C6B60 800EB760 240B00FF */  addiu      $t3, $zero, 0xff
/* C6B64 800EB764 240C00FF */  addiu      $t4, $zero, 0xff
/* C6B68 800EB768 A3B8001C */  sb         $t8, 0x1c($sp)
/* C6B6C 800EB76C A3B9001D */  sb         $t9, 0x1d($sp)
/* C6B70 800EB770 A3A8001E */  sb         $t0, 0x1e($sp)
/* C6B74 800EB774 A3A0001F */  sb         $zero, 0x1f($sp)
/* C6B78 800EB778 A3A90020 */  sb         $t1, 0x20($sp)
/* C6B7C 800EB77C A3AA0021 */  sb         $t2, 0x21($sp)
/* C6B80 800EB780 A3AB0022 */  sb         $t3, 0x22($sp)
/* C6B84 800EB784 A3AC0023 */  sb         $t4, 0x23($sp)
/* C6B88 800EB788 27AE001C */  addiu      $t6, $sp, 0x1c
/* C6B8C 800EB78C 8DC10000 */  lw         $at, ($t6)
/* C6B90 800EB790 8FAD0024 */  lw         $t5, 0x24($sp)
/* C6B94 800EB794 240A00FE */  addiu      $t2, $zero, 0xfe
/* C6B98 800EB798 3C058025 */  lui        $a1, %hi(D_8024C2A0)
/* C6B9C 800EB79C A9A10000 */  swl        $at, ($t5)
/* C6BA0 800EB7A0 B9A10003 */  swr        $at, 3($t5)
/* C6BA4 800EB7A4 8DD90004 */  lw         $t9, 4($t6)
/* C6BA8 800EB7A8 24A5C2A0 */  addiu      $a1, $a1, %lo(D_8024C2A0)
/* C6BAC 800EB7AC 24040001 */  addiu      $a0, $zero, 1
/* C6BB0 800EB7B0 A9B90004 */  swl        $t9, 4($t5)
/* C6BB4 800EB7B4 B9B90007 */  swr        $t9, 7($t5)
/* C6BB8 800EB7B8 8FA80024 */  lw         $t0, 0x24($sp)
/* C6BBC 800EB7BC 25090008 */  addiu      $t1, $t0, 8
/* C6BC0 800EB7C0 AFA90024 */  sw         $t1, 0x24($sp)
/* C6BC4 800EB7C4 0C0383B4 */  jal        func_800E0ED0
/* C6BC8 800EB7C8 A12A0000 */   sb        $t2, ($t1)
/* C6BCC 800EB7CC AFA2002C */  sw         $v0, 0x2c($sp)
/* C6BD0 800EB7D0 8FA40030 */  lw         $a0, 0x30($sp)
/* C6BD4 800EB7D4 00002825 */  or         $a1, $zero, $zero
/* C6BD8 800EB7D8 0C036988 */  jal        func_800DA620
/* C6BDC 800EB7DC 24060001 */   addiu     $a2, $zero, 1
/* C6BE0 800EB7E0 240B0005 */  addiu      $t3, $zero, 5
/* C6BE4 800EB7E4 3C018025 */  lui        $at, %hi(D_8024B140)
/* C6BE8 800EB7E8 3C058025 */  lui        $a1, %hi(D_8024C2A0)
/* C6BEC 800EB7EC A02BB140 */  sb         $t3, %lo(D_8024B140)($at)
/* C6BF0 800EB7F0 24A5C2A0 */  addiu      $a1, $a1, %lo(D_8024C2A0)
/* C6BF4 800EB7F4 0C0383B4 */  jal        func_800E0ED0
/* C6BF8 800EB7F8 00002025 */   or        $a0, $zero, $zero
/* C6BFC 800EB7FC AFA2002C */  sw         $v0, 0x2c($sp)
/* C6C00 800EB800 8FA40030 */  lw         $a0, 0x30($sp)
/* C6C04 800EB804 00002825 */  or         $a1, $zero, $zero
/* C6C08 800EB808 0C036988 */  jal        func_800DA620
/* C6C0C 800EB80C 24060001 */   addiu     $a2, $zero, 1
/* C6C10 800EB810 8FAC002C */  lw         $t4, 0x2c($sp)
/* C6C14 800EB814 11800003 */  beqz       $t4, .L800EB824
/* C6C18 800EB818 00000000 */   nop
/* C6C1C 800EB81C 1000002C */  b          .L800EB8D0
/* C6C20 800EB820 01801025 */   or        $v0, $t4, $zero
.L800EB824:
/* C6C24 800EB824 3C188025 */  lui        $t8, %hi(D_8024C2A0)
/* C6C28 800EB828 2718C2A0 */  addiu      $t8, $t8, %lo(D_8024C2A0)
/* C6C2C 800EB82C AFB80024 */  sw         $t8, 0x24($sp)
/* C6C30 800EB830 AFA00028 */  sw         $zero, 0x28($sp)
.L800EB834:
/* C6C34 800EB834 8FAF0024 */  lw         $t7, 0x24($sp)
/* C6C38 800EB838 A1E00000 */  sb         $zero, ($t7)
/* C6C3C 800EB83C 8FB90028 */  lw         $t9, 0x28($sp)
/* C6C40 800EB840 8FAD0024 */  lw         $t5, 0x24($sp)
/* C6C44 800EB844 27280001 */  addiu      $t0, $t9, 1
/* C6C48 800EB848 29010004 */  slti       $at, $t0, 4
/* C6C4C 800EB84C 25AE0001 */  addiu      $t6, $t5, 1
/* C6C50 800EB850 AFA80028 */  sw         $t0, 0x28($sp)
/* C6C54 800EB854 1420FFF7 */  bnez       $at, .L800EB834
/* C6C58 800EB858 AFAE0024 */   sw        $t6, 0x24($sp)
/* C6C5C 800EB85C 8FA90024 */  lw         $t1, 0x24($sp)
/* C6C60 800EB860 27AA001C */  addiu      $t2, $sp, 0x1c
/* C6C64 800EB864 89210000 */  lwl        $at, ($t1)
/* C6C68 800EB868 99210003 */  lwr        $at, 3($t1)
/* C6C6C 800EB86C AD410000 */  sw         $at, ($t2)
/* C6C70 800EB870 892C0004 */  lwl        $t4, 4($t1)
/* C6C74 800EB874 992C0007 */  lwr        $t4, 7($t1)
/* C6C78 800EB878 AD4C0004 */  sw         $t4, 4($t2)
/* C6C7C 800EB87C 93B8001E */  lbu        $t8, 0x1e($sp)
/* C6C80 800EB880 8FAE0034 */  lw         $t6, 0x34($sp)
/* C6C84 800EB884 330F00C0 */  andi       $t7, $t8, 0xc0
/* C6C88 800EB888 000F6903 */  sra        $t5, $t7, 4
/* C6C8C 800EB88C A1CD0003 */  sb         $t5, 3($t6)
/* C6C90 800EB890 93B90021 */  lbu        $t9, 0x21($sp)
/* C6C94 800EB894 93AB0020 */  lbu        $t3, 0x20($sp)
/* C6C98 800EB898 8FA90034 */  lw         $t1, 0x34($sp)
/* C6C9C 800EB89C 00194200 */  sll        $t0, $t9, 8
/* C6CA0 800EB8A0 010B5025 */  or         $t2, $t0, $t3
/* C6CA4 800EB8A4 A52A0000 */  sh         $t2, ($t1)
/* C6CA8 800EB8A8 8FB80034 */  lw         $t8, 0x34($sp)
/* C6CAC 800EB8AC 93AC0022 */  lbu        $t4, 0x22($sp)
/* C6CB0 800EB8B0 A30C0002 */  sb         $t4, 2($t8)
/* C6CB4 800EB8B4 8FAF0034 */  lw         $t7, 0x34($sp)
/* C6CB8 800EB8B8 91ED0003 */  lbu        $t5, 3($t7)
/* C6CBC 800EB8BC 11A00003 */  beqz       $t5, .L800EB8CC
/* C6CC0 800EB8C0 00000000 */   nop
/* C6CC4 800EB8C4 10000002 */  b          .L800EB8D0
/* C6CC8 800EB8C8 01A01025 */   or        $v0, $t5, $zero
.L800EB8CC:
/* C6CCC 800EB8CC 00001025 */  or         $v0, $zero, $zero
.L800EB8D0:
/* C6CD0 800EB8D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C6CD4 800EB8D4 27BD0030 */  addiu      $sp, $sp, 0x30
/* C6CD8 800EB8D8 03E00008 */  jr         $ra
/* C6CDC 800EB8DC 00000000 */   nop

glabel func_800EB8E0
/* C6CE0 800EB8E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C6CE4 800EB8E4 AFA5003C */  sw         $a1, 0x3c($sp)
/* C6CE8 800EB8E8 93AF003F */  lbu        $t7, 0x3f($sp)
/* C6CEC 800EB8EC 3C0E8025 */  lui        $t6, %hi(D_8024C2A0)
/* C6CF0 800EB8F0 25CEC2A0 */  addiu      $t6, $t6, %lo(D_8024C2A0)
/* C6CF4 800EB8F4 29E10041 */  slti       $at, $t7, 0x41
/* C6CF8 800EB8F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* C6CFC 800EB8FC AFA40038 */  sw         $a0, 0x38($sp)
/* C6D00 800EB900 AFA60040 */  sw         $a2, 0x40($sp)
/* C6D04 800EB904 AFA00034 */  sw         $zero, 0x34($sp)
/* C6D08 800EB908 AFA00030 */  sw         $zero, 0x30($sp)
/* C6D0C 800EB90C 14200003 */  bnez       $at, .L800EB91C
/* C6D10 800EB910 AFAE002C */   sw        $t6, 0x2c($sp)
/* C6D14 800EB914 1000006A */  b          .L800EBAC0
/* C6D18 800EB918 2402FFFF */   addiu     $v0, $zero, -1
.L800EB91C:
/* C6D1C 800EB91C 0C038398 */  jal        func_800E0E60
/* C6D20 800EB920 00000000 */   nop
/* C6D24 800EB924 8FA40038 */  lw         $a0, 0x38($sp)
/* C6D28 800EB928 0C03ADAF */  jal        func_800EB6BC
/* C6D2C 800EB92C 27A50028 */   addiu     $a1, $sp, 0x28
/* C6D30 800EB930 AFA20034 */  sw         $v0, 0x34($sp)
/* C6D34 800EB934 8FB80034 */  lw         $t8, 0x34($sp)
/* C6D38 800EB938 17000005 */  bnez       $t8, .L800EB950
/* C6D3C 800EB93C 00000000 */   nop
/* C6D40 800EB940 97B90028 */  lhu        $t9, 0x28($sp)
/* C6D44 800EB944 34018000 */  ori        $at, $zero, 0x8000
/* C6D48 800EB948 13210003 */  beq        $t9, $at, .L800EB958
/* C6D4C 800EB94C 00000000 */   nop
.L800EB950:
/* C6D50 800EB950 1000005B */  b          .L800EBAC0
/* C6D54 800EB954 24020008 */   addiu     $v0, $zero, 8
.L800EB958:
/* C6D58 800EB958 93A8002A */  lbu        $t0, 0x2a($sp)
/* C6D5C 800EB95C 31090080 */  andi       $t1, $t0, 0x80
/* C6D60 800EB960 11200008 */  beqz       $t1, .L800EB984
/* C6D64 800EB964 00000000 */   nop
.L800EB968:
/* C6D68 800EB968 8FA40038 */  lw         $a0, 0x38($sp)
/* C6D6C 800EB96C 0C03ADAF */  jal        func_800EB6BC
/* C6D70 800EB970 27A50028 */   addiu     $a1, $sp, 0x28
/* C6D74 800EB974 93AA002A */  lbu        $t2, 0x2a($sp)
/* C6D78 800EB978 314B0080 */  andi       $t3, $t2, 0x80
/* C6D7C 800EB97C 1560FFFA */  bnez       $t3, .L800EB968
/* C6D80 800EB980 00000000 */   nop
.L800EB984:
/* C6D84 800EB984 0C03AEB4 */  jal        func_800EBAD0
/* C6D88 800EB988 93A4003F */   lbu       $a0, 0x3f($sp)
/* C6D8C 800EB98C 3C058025 */  lui        $a1, %hi(D_8024C2A0)
/* C6D90 800EB990 24A5C2A0 */  addiu      $a1, $a1, %lo(D_8024C2A0)
/* C6D94 800EB994 0C0383B4 */  jal        func_800E0ED0
/* C6D98 800EB998 24040001 */   addiu     $a0, $zero, 1
/* C6D9C 800EB99C AFA20034 */  sw         $v0, 0x34($sp)
/* C6DA0 800EB9A0 8FA40038 */  lw         $a0, 0x38($sp)
/* C6DA4 800EB9A4 00002825 */  or         $a1, $zero, $zero
/* C6DA8 800EB9A8 0C036988 */  jal        func_800DA620
/* C6DAC 800EB9AC 24060001 */   addiu     $a2, $zero, 1
/* C6DB0 800EB9B0 AFA00030 */  sw         $zero, 0x30($sp)
.L800EB9B4:
/* C6DB4 800EB9B4 8FAD0030 */  lw         $t5, 0x30($sp)
/* C6DB8 800EB9B8 8FAF0030 */  lw         $t7, 0x30($sp)
/* C6DBC 800EB9BC 3C018025 */  lui        $at, %hi(D_8024C2A0)
/* C6DC0 800EB9C0 000D7080 */  sll        $t6, $t5, 2
/* C6DC4 800EB9C4 002E0821 */  addu       $at, $at, $t6
/* C6DC8 800EB9C8 240C00FF */  addiu      $t4, $zero, 0xff
/* C6DCC 800EB9CC AC2CC2A0 */  sw         $t4, %lo(D_8024C2A0)($at)
/* C6DD0 800EB9D0 25F80001 */  addiu      $t8, $t7, 1
/* C6DD4 800EB9D4 2B010010 */  slti       $at, $t8, 0x10
/* C6DD8 800EB9D8 1420FFF6 */  bnez       $at, .L800EB9B4
/* C6DDC 800EB9DC AFB80030 */   sw        $t8, 0x30($sp)
/* C6DE0 800EB9E0 3C018025 */  lui        $at, %hi(D_8024C2DC)
/* C6DE4 800EB9E4 3C058025 */  lui        $a1, %hi(D_8024C2A0)
/* C6DE8 800EB9E8 AC20C2DC */  sw         $zero, %lo(D_8024C2DC)($at)
/* C6DEC 800EB9EC 24A5C2A0 */  addiu      $a1, $a1, %lo(D_8024C2A0)
/* C6DF0 800EB9F0 0C0383B4 */  jal        func_800E0ED0
/* C6DF4 800EB9F4 00002025 */   or        $a0, $zero, $zero
/* C6DF8 800EB9F8 24190004 */  addiu      $t9, $zero, 4
/* C6DFC 800EB9FC 3C018025 */  lui        $at, %hi(D_8024B140)
/* C6E00 800EBA00 AFA20034 */  sw         $v0, 0x34($sp)
/* C6E04 800EBA04 A039B140 */  sb         $t9, %lo(D_8024B140)($at)
/* C6E08 800EBA08 8FA40038 */  lw         $a0, 0x38($sp)
/* C6E0C 800EBA0C 00002825 */  or         $a1, $zero, $zero
/* C6E10 800EBA10 0C036988 */  jal        func_800DA620
/* C6E14 800EBA14 24060001 */   addiu     $a2, $zero, 1
/* C6E18 800EBA18 AFA00030 */  sw         $zero, 0x30($sp)
.L800EBA1C:
/* C6E1C 800EBA1C 8FAA0030 */  lw         $t2, 0x30($sp)
/* C6E20 800EBA20 8FA8002C */  lw         $t0, 0x2c($sp)
/* C6E24 800EBA24 254B0001 */  addiu      $t3, $t2, 1
/* C6E28 800EBA28 29610004 */  slti       $at, $t3, 4
/* C6E2C 800EBA2C 25090001 */  addiu      $t1, $t0, 1
/* C6E30 800EBA30 AFAB0030 */  sw         $t3, 0x30($sp)
/* C6E34 800EBA34 1420FFF9 */  bnez       $at, .L800EBA1C
/* C6E38 800EBA38 AFA9002C */   sw        $t1, 0x2c($sp)
/* C6E3C 800EBA3C 8FAC002C */  lw         $t4, 0x2c($sp)
/* C6E40 800EBA40 27AD001C */  addiu      $t5, $sp, 0x1c
/* C6E44 800EBA44 89810000 */  lwl        $at, ($t4)
/* C6E48 800EBA48 99810003 */  lwr        $at, 3($t4)
/* C6E4C 800EBA4C ADA10000 */  sw         $at, ($t5)
/* C6E50 800EBA50 898F0004 */  lwl        $t7, 4($t4)
/* C6E54 800EBA54 998F0007 */  lwr        $t7, 7($t4)
/* C6E58 800EBA58 ADAF0004 */  sw         $t7, 4($t5)
/* C6E5C 800EBA5C 89810008 */  lwl        $at, 8($t4)
/* C6E60 800EBA60 9981000B */  lwr        $at, 0xb($t4)
/* C6E64 800EBA64 ADA10008 */  sw         $at, 8($t5)
/* C6E68 800EBA68 93B8001D */  lbu        $t8, 0x1d($sp)
/* C6E6C 800EBA6C 331900C0 */  andi       $t9, $t8, 0xc0
/* C6E70 800EBA70 00194103 */  sra        $t0, $t9, 4
/* C6E74 800EBA74 1500000F */  bnez       $t0, .L800EBAB4
/* C6E78 800EBA78 AFA80034 */   sw        $t0, 0x34($sp)
/* C6E7C 800EBA7C AFA00030 */  sw         $zero, 0x30($sp)
.L800EBA80:
/* C6E80 800EBA80 8FA90030 */  lw         $t1, 0x30($sp)
/* C6E84 800EBA84 8FAB0040 */  lw         $t3, 0x40($sp)
/* C6E88 800EBA88 03A95021 */  addu       $t2, $sp, $t1
/* C6E8C 800EBA8C 914A0020 */  lbu        $t2, 0x20($t2)
/* C6E90 800EBA90 A16A0000 */  sb         $t2, ($t3)
/* C6E94 800EBA94 8FAC0030 */  lw         $t4, 0x30($sp)
/* C6E98 800EBA98 8FAE0040 */  lw         $t6, 0x40($sp)
/* C6E9C 800EBA9C 258F0001 */  addiu      $t7, $t4, 1
/* C6EA0 800EBAA0 29E10008 */  slti       $at, $t7, 8
/* C6EA4 800EBAA4 25CD0001 */  addiu      $t5, $t6, 1
/* C6EA8 800EBAA8 AFAF0030 */  sw         $t7, 0x30($sp)
/* C6EAC 800EBAAC 1420FFF4 */  bnez       $at, .L800EBA80
/* C6EB0 800EBAB0 AFAD0040 */   sw        $t5, 0x40($sp)
.L800EBAB4:
/* C6EB4 800EBAB4 0C0383A9 */  jal        func_800E0EA4
/* C6EB8 800EBAB8 00000000 */   nop
/* C6EBC 800EBABC 8FA20034 */  lw         $v0, 0x34($sp)
.L800EBAC0:
/* C6EC0 800EBAC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C6EC4 800EBAC4 27BD0038 */  addiu      $sp, $sp, 0x38
/* C6EC8 800EBAC8 03E00008 */  jr         $ra
/* C6ECC 800EBACC 00000000 */   nop

glabel func_800EBAD0
/* C6ED0 800EBAD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C6ED4 800EBAD4 3C0E8025 */  lui        $t6, %hi(D_8024C2A0)
/* C6ED8 800EBAD8 25CEC2A0 */  addiu      $t6, $t6, %lo(D_8024C2A0)
/* C6EDC 800EBADC 308400FF */  andi       $a0, $a0, 0xff
/* C6EE0 800EBAE0 AFAE0014 */  sw         $t6, 0x14($sp)
/* C6EE4 800EBAE4 AFA00004 */  sw         $zero, 4($sp)
.L800EBAE8:
/* C6EE8 800EBAE8 8FB80004 */  lw         $t8, 4($sp)
/* C6EEC 800EBAEC 8FA80004 */  lw         $t0, 4($sp)
/* C6EF0 800EBAF0 3C018025 */  lui        $at, %hi(D_8024C2A0)
/* C6EF4 800EBAF4 0018C880 */  sll        $t9, $t8, 2
/* C6EF8 800EBAF8 00390821 */  addu       $at, $at, $t9
/* C6EFC 800EBAFC 240F00FF */  addiu      $t7, $zero, 0xff
/* C6F00 800EBB00 AC2FC2A0 */  sw         $t7, %lo(D_8024C2A0)($at)
/* C6F04 800EBB04 25090001 */  addiu      $t1, $t0, 1
/* C6F08 800EBB08 29210010 */  slti       $at, $t1, 0x10
/* C6F0C 800EBB0C 1420FFF6 */  bnez       $at, .L800EBAE8
/* C6F10 800EBB10 AFA90004 */   sw        $t1, 4($sp)
/* C6F14 800EBB14 240A0001 */  addiu      $t2, $zero, 1
/* C6F18 800EBB18 3C018025 */  lui        $at, %hi(D_8024C2DC)
/* C6F1C 800EBB1C 240B0002 */  addiu      $t3, $zero, 2
/* C6F20 800EBB20 240C0008 */  addiu      $t4, $zero, 8
/* C6F24 800EBB24 240D0004 */  addiu      $t5, $zero, 4
/* C6F28 800EBB28 AC2AC2DC */  sw         $t2, %lo(D_8024C2DC)($at)
/* C6F2C 800EBB2C A3AB0008 */  sb         $t3, 8($sp)
/* C6F30 800EBB30 A3AC0009 */  sb         $t4, 9($sp)
/* C6F34 800EBB34 A3AD000A */  sb         $t5, 0xa($sp)
/* C6F38 800EBB38 A3A4000B */  sb         $a0, 0xb($sp)
/* C6F3C 800EBB3C AFA00004 */  sw         $zero, 4($sp)
.L800EBB40:
/* C6F40 800EBB40 8FAE0004 */  lw         $t6, 4($sp)
/* C6F44 800EBB44 03AEC021 */  addu       $t8, $sp, $t6
/* C6F48 800EBB48 A300000C */  sb         $zero, 0xc($t8)
/* C6F4C 800EBB4C 8FAF0004 */  lw         $t7, 4($sp)
/* C6F50 800EBB50 25F90001 */  addiu      $t9, $t7, 1
/* C6F54 800EBB54 2B210008 */  slti       $at, $t9, 8
/* C6F58 800EBB58 1420FFF9 */  bnez       $at, .L800EBB40
/* C6F5C 800EBB5C AFB90004 */   sw        $t9, 4($sp)
/* C6F60 800EBB60 AFA00004 */  sw         $zero, 4($sp)
.L800EBB64:
/* C6F64 800EBB64 8FA80014 */  lw         $t0, 0x14($sp)
/* C6F68 800EBB68 A1000000 */  sb         $zero, ($t0)
/* C6F6C 800EBB6C 8FAB0004 */  lw         $t3, 4($sp)
/* C6F70 800EBB70 8FA90014 */  lw         $t1, 0x14($sp)
/* C6F74 800EBB74 256C0001 */  addiu      $t4, $t3, 1
/* C6F78 800EBB78 29810004 */  slti       $at, $t4, 4
/* C6F7C 800EBB7C 252A0001 */  addiu      $t2, $t1, 1
/* C6F80 800EBB80 AFAC0004 */  sw         $t4, 4($sp)
/* C6F84 800EBB84 1420FFF7 */  bnez       $at, .L800EBB64
/* C6F88 800EBB88 AFAA0014 */   sw        $t2, 0x14($sp)
/* C6F8C 800EBB8C 27AE0008 */  addiu      $t6, $sp, 8
/* C6F90 800EBB90 8DC10000 */  lw         $at, ($t6)
/* C6F94 800EBB94 8FAD0014 */  lw         $t5, 0x14($sp)
/* C6F98 800EBB98 240900FE */  addiu      $t1, $zero, 0xfe
/* C6F9C 800EBB9C A9A10000 */  swl        $at, ($t5)
/* C6FA0 800EBBA0 B9A10003 */  swr        $at, 3($t5)
/* C6FA4 800EBBA4 8DCF0004 */  lw         $t7, 4($t6)
/* C6FA8 800EBBA8 A9AF0004 */  swl        $t7, 4($t5)
/* C6FAC 800EBBAC B9AF0007 */  swr        $t7, 7($t5)
/* C6FB0 800EBBB0 8DC10008 */  lw         $at, 8($t6)
/* C6FB4 800EBBB4 A9A10008 */  swl        $at, 8($t5)
/* C6FB8 800EBBB8 B9A1000B */  swr        $at, 0xb($t5)
/* C6FBC 800EBBBC 8FB90014 */  lw         $t9, 0x14($sp)
/* C6FC0 800EBBC0 2728000C */  addiu      $t0, $t9, 0xc
/* C6FC4 800EBBC4 AFA80014 */  sw         $t0, 0x14($sp)
/* C6FC8 800EBBC8 A1090000 */  sb         $t1, ($t0)
/* C6FCC 800EBBCC 03E00008 */  jr         $ra
/* C6FD0 800EBBD0 27BD0018 */   addiu     $sp, $sp, 0x18
/* C6FD4 800EBBD4 00000000 */  nop
/* C6FD8 800EBBD8 00000000 */  nop
/* C6FDC 800EBBDC 00000000 */  nop
