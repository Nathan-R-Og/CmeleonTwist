.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8240
/* C3640 800E8240 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C3644 800E8244 AFB30020 */  sw         $s3, 0x20($sp)
/* C3648 800E8248 00059C00 */  sll        $s3, $a1, 0x10
/* C364C 800E824C AFB2001C */  sw         $s2, 0x1c($sp)
/* C3650 800E8250 00809025 */  or         $s2, $a0, $zero
/* C3654 800E8254 00137403 */  sra        $t6, $s3, 0x10
/* C3658 800E8258 AFBF0024 */  sw         $ra, 0x24($sp)
/* C365C 800E825C 01C09825 */  or         $s3, $t6, $zero
/* C3660 800E8260 AFB10018 */  sw         $s1, 0x18($sp)
/* C3664 800E8264 AFB00014 */  sw         $s0, 0x14($sp)
/* C3668 800E8268 AFA50044 */  sw         $a1, 0x44($sp)
/* C366C 800E826C 0C03A320 */  jal        func_800E8C80
/* C3670 800E8270 24040001 */   addiu     $a0, $zero, 1
/* C3674 800E8274 AFA2002C */  sw         $v0, 0x2c($sp)
/* C3678 800E8278 8E500008 */  lw         $s0, 8($s2)
/* C367C 800E827C 12000012 */  beqz       $s0, .L800E82C8
/* C3680 800E8280 00000000 */   nop
.L800E8284:
/* C3684 800E8284 860F000C */  lh         $t7, 0xc($s0)
/* C3688 800E8288 8E110000 */  lw         $s1, ($s0)
/* C368C 800E828C 166F000C */  bne        $s3, $t7, .L800E82C0
/* C3690 800E8290 00000000 */   nop
/* C3694 800E8294 12200005 */  beqz       $s1, .L800E82AC
/* C3698 800E8298 00000000 */   nop
/* C369C 800E829C 8E380008 */  lw         $t8, 8($s1)
/* C36A0 800E82A0 8E190008 */  lw         $t9, 8($s0)
/* C36A4 800E82A4 03194021 */  addu       $t0, $t8, $t9
/* C36A8 800E82A8 AE280008 */  sw         $t0, 8($s1)
.L800E82AC:
/* C36AC 800E82AC 0C037248 */  jal        func_800DC920
/* C36B0 800E82B0 02002025 */   or        $a0, $s0, $zero
/* C36B4 800E82B4 02002025 */  or         $a0, $s0, $zero
/* C36B8 800E82B8 0C037254 */  jal        func_800DC950
/* C36BC 800E82BC 02402825 */   or        $a1, $s2, $zero
.L800E82C0:
/* C36C0 800E82C0 1620FFF0 */  bnez       $s1, .L800E8284
/* C36C4 800E82C4 02208025 */   or        $s0, $s1, $zero
.L800E82C8:
/* C36C8 800E82C8 0C03A320 */  jal        func_800E8C80
/* C36CC 800E82CC 8FA4002C */   lw        $a0, 0x2c($sp)
/* C36D0 800E82D0 8FBF0024 */  lw         $ra, 0x24($sp)
/* C36D4 800E82D4 8FB00014 */  lw         $s0, 0x14($sp)
/* C36D8 800E82D8 8FB10018 */  lw         $s1, 0x18($sp)
/* C36DC 800E82DC 8FB2001C */  lw         $s2, 0x1c($sp)
/* C36E0 800E82E0 8FB30020 */  lw         $s3, 0x20($sp)
/* C36E4 800E82E4 03E00008 */  jr         $ra
/* C36E8 800E82E8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_800E82EC
/* C36EC 800E82EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C36F0 800E82F0 AFB20020 */  sw         $s2, 0x20($sp)
/* C36F4 800E82F4 00809025 */  or         $s2, $a0, $zero
/* C36F8 800E82F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* C36FC 800E82FC AFB1001C */  sw         $s1, 0x1c($sp)
/* C3700 800E8300 AFB00018 */  sw         $s0, 0x18($sp)
/* C3704 800E8304 0C03A320 */  jal        func_800E8C80
/* C3708 800E8308 24040001 */   addiu     $a0, $zero, 1
/* C370C 800E830C AFA2002C */  sw         $v0, 0x2c($sp)
/* C3710 800E8310 8E500008 */  lw         $s0, 8($s2)
/* C3714 800E8314 12000009 */  beqz       $s0, .L800E833C
/* C3718 800E8318 00000000 */   nop
.L800E831C:
/* C371C 800E831C 8E110000 */  lw         $s1, ($s0)
/* C3720 800E8320 0C037248 */  jal        func_800DC920
/* C3724 800E8324 02002025 */   or        $a0, $s0, $zero
/* C3728 800E8328 02002025 */  or         $a0, $s0, $zero
/* C372C 800E832C 0C037254 */  jal        func_800DC950
/* C3730 800E8330 02402825 */   or        $a1, $s2, $zero
/* C3734 800E8334 1620FFF9 */  bnez       $s1, .L800E831C
/* C3738 800E8338 02208025 */   or        $s0, $s1, $zero
.L800E833C:
/* C373C 800E833C 0C03A320 */  jal        func_800E8C80
/* C3740 800E8340 8FA4002C */   lw        $a0, 0x2c($sp)
/* C3744 800E8344 8FBF0024 */  lw         $ra, 0x24($sp)
/* C3748 800E8348 8FB00018 */  lw         $s0, 0x18($sp)
/* C374C 800E834C 8FB1001C */  lw         $s1, 0x1c($sp)
/* C3750 800E8350 8FB20020 */  lw         $s2, 0x20($sp)
/* C3754 800E8354 03E00008 */  jr         $ra
/* C3758 800E8358 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800E835C
/* C375C 800E835C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C3760 800E8360 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3764 800E8364 AFA40030 */  sw         $a0, 0x30($sp)
/* C3768 800E8368 AFA50034 */  sw         $a1, 0x34($sp)
/* C376C 800E836C AFA00020 */  sw         $zero, 0x20($sp)
/* C3770 800E8370 24040001 */  addiu      $a0, $zero, 1
/* C3774 800E8374 0C03A320 */  jal        func_800E8C80
/* C3778 800E8378 AFA60038 */   sw        $a2, 0x38($sp)
/* C377C 800E837C 8FAE0030 */  lw         $t6, 0x30($sp)
/* C3780 800E8380 8FA70038 */  lw         $a3, 0x38($sp)
/* C3784 800E8384 00402825 */  or         $a1, $v0, $zero
/* C3788 800E8388 8DC80000 */  lw         $t0, ($t6)
/* C378C 800E838C 15000005 */  bnez       $t0, .L800E83A4
/* C3790 800E8390 01002025 */   or        $a0, $t0, $zero
/* C3794 800E8394 0C03A320 */  jal        func_800E8C80
/* C3798 800E8398 00402025 */   or        $a0, $v0, $zero
/* C379C 800E839C 10000035 */  b          .L800E8474
/* C37A0 800E83A0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800E83A4:
/* C37A4 800E83A4 AFA5001C */  sw         $a1, 0x1c($sp)
/* C37A8 800E83A8 AFA70038 */  sw         $a3, 0x38($sp)
/* C37AC 800E83AC 0C037248 */  jal        func_800DC920
/* C37B0 800E83B0 AFA8002C */   sw        $t0, 0x2c($sp)
/* C37B4 800E83B4 8FA8002C */  lw         $t0, 0x2c($sp)
/* C37B8 800E83B8 8FA40034 */  lw         $a0, 0x34($sp)
/* C37BC 800E83BC 24060010 */  addiu      $a2, $zero, 0x10
/* C37C0 800E83C0 0C03B4D0 */  jal        func_800ED340
/* C37C4 800E83C4 2505000C */   addiu     $a1, $t0, 0xc
/* C37C8 800E83C8 8FA70038 */  lw         $a3, 0x38($sp)
/* C37CC 800E83CC 3C017FFF */  lui        $at, 0x7fff
/* C37D0 800E83D0 3421FFFF */  ori        $at, $at, 0xffff
/* C37D4 800E83D4 14E10003 */  bne        $a3, $at, .L800E83E4
/* C37D8 800E83D8 8FA8002C */   lw        $t0, 0x2c($sp)
/* C37DC 800E83DC 240FFFFF */  addiu      $t7, $zero, -1
/* C37E0 800E83E0 AFAF0020 */  sw         $t7, 0x20($sp)
.L800E83E4:
/* C37E4 800E83E4 8FA20030 */  lw         $v0, 0x30($sp)
/* C37E8 800E83E8 2401FFF8 */  addiu      $at, $zero, -8
/* C37EC 800E83EC 8FB80020 */  lw         $t8, 0x20($sp)
/* C37F0 800E83F0 1041001D */  beq        $v0, $at, .L800E8468
/* C37F4 800E83F4 24450008 */   addiu     $a1, $v0, 8
.L800E83F8:
/* C37F8 800E83F8 8CA20000 */  lw         $v0, ($a1)
/* C37FC 800E83FC 5440000B */  bnel       $v0, $zero, .L800E842C
/* C3800 800E8400 8C430008 */   lw        $v1, 8($v0)
/* C3804 800E8404 53000004 */  beql       $t8, $zero, .L800E8418
/* C3808 800E8408 AD070008 */   sw        $a3, 8($t0)
/* C380C 800E840C 10000002 */  b          .L800E8418
/* C3810 800E8410 AD000008 */   sw        $zero, 8($t0)
/* C3814 800E8414 AD070008 */  sw         $a3, 8($t0)
.L800E8418:
/* C3818 800E8418 0C037254 */  jal        func_800DC950
/* C381C 800E841C 01002025 */   or        $a0, $t0, $zero
/* C3820 800E8420 10000011 */  b          .L800E8468
/* C3824 800E8424 00000000 */   nop
/* C3828 800E8428 8C430008 */  lw         $v1, 8($v0)
.L800E842C:
/* C382C 800E842C 00403025 */  or         $a2, $v0, $zero
/* C3830 800E8430 00E3082A */  slt        $at, $a3, $v1
/* C3834 800E8434 5020000A */  beql       $at, $zero, .L800E8460
/* C3838 800E8438 00402825 */   or        $a1, $v0, $zero
/* C383C 800E843C AD070008 */  sw         $a3, 8($t0)
/* C3840 800E8440 8CD90008 */  lw         $t9, 8($a2)
/* C3844 800E8444 01002025 */  or         $a0, $t0, $zero
/* C3848 800E8448 03274823 */  subu       $t1, $t9, $a3
/* C384C 800E844C 0C037254 */  jal        func_800DC950
/* C3850 800E8450 ACC90008 */   sw        $t1, 8($a2)
/* C3854 800E8454 10000004 */  b          .L800E8468
/* C3858 800E8458 00000000 */   nop
/* C385C 800E845C 00402825 */  or         $a1, $v0, $zero
.L800E8460:
/* C3860 800E8460 1440FFE5 */  bnez       $v0, .L800E83F8
/* C3864 800E8464 00E33823 */   subu      $a3, $a3, $v1
.L800E8468:
/* C3868 800E8468 0C03A320 */  jal        func_800E8C80
/* C386C 800E846C 8FA4001C */   lw        $a0, 0x1c($sp)
/* C3870 800E8470 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8474:
/* C3874 800E8474 27BD0030 */  addiu      $sp, $sp, 0x30
/* C3878 800E8478 03E00008 */  jr         $ra
/* C387C 800E847C 00000000 */   nop

glabel func_800E8480
/* C3880 800E8480 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C3884 800E8484 AFBF001C */  sw         $ra, 0x1c($sp)
/* C3888 800E8488 AFA40030 */  sw         $a0, 0x30($sp)
/* C388C 800E848C AFB00018 */  sw         $s0, 0x18($sp)
/* C3890 800E8490 AFA50034 */  sw         $a1, 0x34($sp)
/* C3894 800E8494 0C03A320 */  jal        func_800E8C80
/* C3898 800E8498 24040001 */   addiu     $a0, $zero, 1
/* C389C 800E849C 8FAE0030 */  lw         $t6, 0x30($sp)
/* C38A0 800E84A0 AFA20024 */  sw         $v0, 0x24($sp)
/* C38A4 800E84A4 8FB80034 */  lw         $t8, 0x34($sp)
/* C38A8 800E84A8 8DD00008 */  lw         $s0, 8($t6)
/* C38AC 800E84AC 00001825 */  or         $v1, $zero, $zero
/* C38B0 800E84B0 5200000D */  beql       $s0, $zero, .L800E84E8
/* C38B4 800E84B4 240FFFFF */   addiu     $t7, $zero, -1
/* C38B8 800E84B8 0C037248 */  jal        func_800DC920
/* C38BC 800E84BC 02002025 */   or        $a0, $s0, $zero
/* C38C0 800E84C0 2604000C */  addiu      $a0, $s0, 0xc
/* C38C4 800E84C4 8FA50034 */  lw         $a1, 0x34($sp)
/* C38C8 800E84C8 0C03B4D0 */  jal        func_800ED340
/* C38CC 800E84CC 24060010 */   addiu     $a2, $zero, 0x10
/* C38D0 800E84D0 02002025 */  or         $a0, $s0, $zero
/* C38D4 800E84D4 0C037254 */  jal        func_800DC950
/* C38D8 800E84D8 8FA50030 */   lw        $a1, 0x30($sp)
/* C38DC 800E84DC 10000003 */  b          .L800E84EC
/* C38E0 800E84E0 8E030008 */   lw        $v1, 8($s0)
/* C38E4 800E84E4 240FFFFF */  addiu      $t7, $zero, -1
.L800E84E8:
/* C38E8 800E84E8 A70F0000 */  sh         $t7, ($t8)
.L800E84EC:
/* C38EC 800E84EC 8FA40024 */  lw         $a0, 0x24($sp)
/* C38F0 800E84F0 0C03A320 */  jal        func_800E8C80
/* C38F4 800E84F4 AFA30028 */   sw        $v1, 0x28($sp)
/* C38F8 800E84F8 8FBF001C */  lw         $ra, 0x1c($sp)
/* C38FC 800E84FC 8FA20028 */  lw         $v0, 0x28($sp)
/* C3900 800E8500 8FB00018 */  lw         $s0, 0x18($sp)
/* C3904 800E8504 03E00008 */  jr         $ra
/* C3908 800E8508 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800E850C
/* C390C 800E850C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C3910 800E8510 AFB30020 */  sw         $s3, 0x20($sp)
/* C3914 800E8514 AFB2001C */  sw         $s2, 0x1c($sp)
/* C3918 800E8518 AFB00014 */  sw         $s0, 0x14($sp)
/* C391C 800E851C AFBF0024 */  sw         $ra, 0x24($sp)
/* C3920 800E8520 AFB10018 */  sw         $s1, 0x18($sp)
/* C3924 800E8524 00809025 */  or         $s2, $a0, $zero
/* C3928 800E8528 00C09825 */  or         $s3, $a2, $zero
/* C392C 800E852C AC800010 */  sw         $zero, 0x10($a0)
/* C3930 800E8530 AC800008 */  sw         $zero, 8($a0)
/* C3934 800E8534 AC80000C */  sw         $zero, 0xc($a0)
/* C3938 800E8538 AC800000 */  sw         $zero, ($a0)
/* C393C 800E853C AC800004 */  sw         $zero, 4($a0)
/* C3940 800E8540 18C00008 */  blez       $a2, .L800E8564
/* C3944 800E8544 00008025 */   or        $s0, $zero, $zero
/* C3948 800E8548 00A08825 */  or         $s1, $a1, $zero
.L800E854C:
/* C394C 800E854C 02202025 */  or         $a0, $s1, $zero
/* C3950 800E8550 0C037254 */  jal        func_800DC950
/* C3954 800E8554 02402825 */   or        $a1, $s2, $zero
/* C3958 800E8558 26100001 */  addiu      $s0, $s0, 1
/* C395C 800E855C 1613FFFB */  bne        $s0, $s3, .L800E854C
/* C3960 800E8560 2631001C */   addiu     $s1, $s1, 0x1c
.L800E8564:
/* C3964 800E8564 8FBF0024 */  lw         $ra, 0x24($sp)
/* C3968 800E8568 8FB00014 */  lw         $s0, 0x14($sp)
/* C396C 800E856C 8FB10018 */  lw         $s1, 0x18($sp)
/* C3970 800E8570 8FB2001C */  lw         $s2, 0x1c($sp)
/* C3974 800E8574 8FB30020 */  lw         $s3, 0x20($sp)
/* C3978 800E8578 03E00008 */  jr         $ra
/* C397C 800E857C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800E8580
/* C3980 800E8580 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3984 800E8584 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3988 800E8588 00803025 */  or         $a2, $a0, $zero
/* C398C 800E858C AFA60018 */  sw         $a2, 0x18($sp)
/* C3990 800E8590 24040001 */  addiu      $a0, $zero, 1
/* C3994 800E8594 0C03A320 */  jal        func_800E8C80
/* C3998 800E8598 AFA5001C */   sw        $a1, 0x1c($sp)
/* C399C 800E859C 8FA60018 */  lw         $a2, 0x18($sp)
/* C39A0 800E85A0 8FA5001C */  lw         $a1, 0x1c($sp)
/* C39A4 800E85A4 00402025 */  or         $a0, $v0, $zero
/* C39A8 800E85A8 8CCE0020 */  lw         $t6, 0x20($a2)
/* C39AC 800E85AC ACAE0010 */  sw         $t6, 0x10($a1)
/* C39B0 800E85B0 8CCF0000 */  lw         $t7, ($a2)
/* C39B4 800E85B4 ACAF0000 */  sw         $t7, ($a1)
/* C39B8 800E85B8 0C03A320 */  jal        func_800E8C80
/* C39BC 800E85BC ACC50000 */   sw        $a1, ($a2)
/* C39C0 800E85C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C39C4 800E85C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C39C8 800E85C8 03E00008 */  jr         $ra
/* C39CC 800E85CC 00000000 */   nop

glabel func_800E85D0
/* C39D0 800E85D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C39D4 800E85D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C39D8 800E85D8 AFA40018 */  sw         $a0, 0x18($sp)
/* C39DC 800E85DC 8CAE0008 */  lw         $t6, 8($a1)
/* C39E0 800E85E0 51C00016 */  beql       $t6, $zero, .L800E863C
/* C39E4 800E85E4 8FBF0014 */   lw        $ra, 0x14($sp)
/* C39E8 800E85E8 0C037AA8 */  jal        func_800DEAA0
/* C39EC 800E85EC AFA5001C */   sw        $a1, 0x1c($sp)
/* C39F0 800E85F0 8FA7001C */  lw         $a3, 0x1c($sp)
/* C39F4 800E85F4 10400010 */  beqz       $v0, .L800E8638
/* C39F8 800E85F8 00403025 */   or        $a2, $v0, $zero
/* C39FC 800E85FC 8FAF0018 */  lw         $t7, 0x18($sp)
/* C3A00 800E8600 8CF90008 */  lw         $t9, 8($a3)
/* C3A04 800E8604 240A000F */  addiu      $t2, $zero, 0xf
/* C3A08 800E8608 8DF8001C */  lw         $t8, 0x1c($t7)
/* C3A0C 800E860C 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C3A10 800E8610 A44A0008 */  sh         $t2, 8($v0)
/* C3A14 800E8614 AC400000 */  sw         $zero, ($v0)
/* C3A18 800E8618 03084821 */  addu       $t1, $t8, $t0
/* C3A1C 800E861C AC490004 */  sw         $t1, 4($v0)
/* C3A20 800E8620 8CEB0008 */  lw         $t3, 8($a3)
/* C3A24 800E8624 24050003 */  addiu      $a1, $zero, 3
/* C3A28 800E8628 8D64000C */  lw         $a0, 0xc($t3)
/* C3A2C 800E862C 8C990008 */  lw         $t9, 8($a0)
/* C3A30 800E8630 0320F809 */  jalr       $t9
/* C3A34 800E8634 00000000 */   nop
.L800E8638:
/* C3A38 800E8638 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E863C:
/* C3A3C 800E863C 27BD0018 */  addiu      $sp, $sp, 0x18
/* C3A40 800E8640 03E00008 */  jr         $ra
/* C3A44 800E8644 00000000 */   nop
/* C3A48 800E8648 00000000 */  nop
/* C3A4C 800E864C 00000000 */  nop
