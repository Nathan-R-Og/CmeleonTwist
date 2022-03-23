.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBFB0
/* C73B0 800EBFB0 27BDFF70 */  addiu      $sp, $sp, -0x90
/* C73B4 800EBFB4 AFB10020 */  sw         $s1, 0x20($sp)
/* C73B8 800EBFB8 30A200FF */  andi       $v0, $a1, 0xff
/* C73BC 800EBFBC 24030058 */  addiu      $v1, $zero, 0x58
/* C73C0 800EBFC0 00808825 */  or         $s1, $a0, $zero
/* C73C4 800EBFC4 AFBF002C */  sw         $ra, 0x2c($sp)
/* C73C8 800EBFC8 AFB30028 */  sw         $s3, 0x28($sp)
/* C73CC 800EBFCC AFB20024 */  sw         $s2, 0x24($sp)
/* C73D0 800EBFD0 AFB0001C */  sw         $s0, 0x1c($sp)
/* C73D4 800EBFD4 14620004 */  bne        $v1, $v0, .L800EBFE8
/* C73D8 800EBFD8 AFA50094 */   sw        $a1, 0x94($sp)
/* C73DC 800EBFDC 3C138011 */  lui        $s3, %hi(D_8010A2D4)
/* C73E0 800EBFE0 10000003 */  b          .L800EBFF0
/* C73E4 800EBFE4 2673A2D4 */   addiu     $s3, $s3, %lo(D_8010A2D4)
.L800EBFE8:
/* C73E8 800EBFE8 3C138011 */  lui        $s3, %hi(D_8010A2C0)
/* C73EC 800EBFEC 2673A2C0 */  addiu      $s3, $s3, %lo(D_8010A2C0)
.L800EBFF0:
/* C73F0 800EBFF0 2401006F */  addiu      $at, $zero, 0x6f
/* C73F4 800EBFF4 14410003 */  bne        $v0, $at, .L800EC004
/* C73F8 800EBFF8 24100018 */   addiu     $s0, $zero, 0x18
/* C73FC 800EBFFC 10000009 */  b          .L800EC024
/* C7400 800EC000 24090008 */   addiu     $t1, $zero, 8
.L800EC004:
/* C7404 800EC004 24010078 */  addiu      $at, $zero, 0x78
/* C7408 800EC008 10410005 */  beq        $v0, $at, .L800EC020
/* C740C 800EC00C 24080010 */   addiu     $t0, $zero, 0x10
/* C7410 800EC010 10620003 */  beq        $v1, $v0, .L800EC020
/* C7414 800EC014 00000000 */   nop
/* C7418 800EC018 10000001 */  b          .L800EC020
/* C741C 800EC01C 2408000A */   addiu     $t0, $zero, 0xa
.L800EC020:
/* C7420 800EC020 01004825 */  or         $t1, $t0, $zero
.L800EC024:
/* C7424 800EC024 8E380000 */  lw         $t8, ($s1)
/* C7428 800EC028 8E390004 */  lw         $t9, 4($s1)
/* C742C 800EC02C 24010064 */  addiu      $at, $zero, 0x64
/* C7430 800EC030 AFB80060 */  sw         $t8, 0x60($sp)
/* C7434 800EC034 AFB80040 */  sw         $t8, 0x40($sp)
/* C7438 800EC038 AFB90044 */  sw         $t9, 0x44($sp)
/* C743C 800EC03C 10410004 */  beq        $v0, $at, .L800EC050
/* C7440 800EC040 AFB90064 */   sw        $t9, 0x64($sp)
/* C7444 800EC044 24010069 */  addiu      $at, $zero, 0x69
/* C7448 800EC048 54410010 */  bnel       $v0, $at, .L800EC08C
/* C744C 800EC04C 8FAA0060 */   lw        $t2, 0x60($sp)
.L800EC050:
/* C7450 800EC050 8FAC0040 */  lw         $t4, 0x40($sp)
/* C7454 800EC054 5D80000D */  bgtzl      $t4, .L800EC08C
/* C7458 800EC058 8FAA0060 */   lw        $t2, 0x60($sp)
/* C745C 800EC05C 05800003 */  bltz       $t4, .L800EC06C
/* C7460 800EC060 8FAE0060 */   lw        $t6, 0x60($sp)
/* C7464 800EC064 10000009 */  b          .L800EC08C
/* C7468 800EC068 8FAA0060 */   lw        $t2, 0x60($sp)
.L800EC06C:
/* C746C 800EC06C 8FAF0064 */  lw         $t7, 0x64($sp)
/* C7470 800EC070 01C0C027 */  not        $t8, $t6
/* C7474 800EC074 2DE10001 */  sltiu      $at, $t7, 1
/* C7478 800EC078 0301C021 */  addu       $t8, $t8, $at
/* C747C 800EC07C 000FC823 */  negu       $t9, $t7
/* C7480 800EC080 AFB90064 */  sw         $t9, 0x64($sp)
/* C7484 800EC084 AFB80060 */  sw         $t8, 0x60($sp)
/* C7488 800EC088 8FAA0060 */  lw         $t2, 0x60($sp)
.L800EC08C:
/* C748C 800EC08C 8FAB0064 */  lw         $t3, 0x64($sp)
/* C7490 800EC090 24080017 */  addiu      $t0, $zero, 0x17
/* C7494 800EC094 15400006 */  bnez       $t2, .L800EC0B0
/* C7498 800EC098 8FA40060 */   lw        $a0, 0x60($sp)
/* C749C 800EC09C 55600005 */  bnel       $t3, $zero, .L800EC0B4
/* C74A0 800EC0A0 24100017 */   addiu     $s0, $zero, 0x17
/* C74A4 800EC0A4 8E2C0024 */  lw         $t4, 0x24($s1)
/* C74A8 800EC0A8 51800010 */  beql       $t4, $zero, .L800EC0EC
/* C74AC 800EC0AC 27B20078 */   addiu     $s2, $sp, 0x78
.L800EC0B0:
/* C74B0 800EC0B0 24100017 */  addiu      $s0, $zero, 0x17
.L800EC0B4:
/* C74B4 800EC0B4 8FA50064 */  lw         $a1, 0x64($sp)
/* C74B8 800EC0B8 01203825 */  or         $a3, $t1, $zero
/* C74BC 800EC0BC 000937C3 */  sra        $a2, $t1, 0x1f
/* C74C0 800EC0C0 AFA8004C */  sw         $t0, 0x4c($sp)
/* C74C4 800EC0C4 0C03813B */  jal        func_800E04EC
/* C74C8 800EC0C8 AFA90070 */   sw        $t1, 0x70($sp)
/* C74CC 800EC0CC 8FA8004C */  lw         $t0, 0x4c($sp)
/* C74D0 800EC0D0 00737021 */  addu       $t6, $v1, $s3
/* C74D4 800EC0D4 91CF0000 */  lbu        $t7, ($t6)
/* C74D8 800EC0D8 27B20078 */  addiu      $s2, $sp, 0x78
/* C74DC 800EC0DC 8FA90070 */  lw         $t1, 0x70($sp)
/* C74E0 800EC0E0 0248C021 */  addu       $t8, $s2, $t0
/* C74E4 800EC0E4 A30F0000 */  sb         $t7, ($t8)
/* C74E8 800EC0E8 27B20078 */  addiu      $s2, $sp, 0x78
.L800EC0EC:
/* C74EC 800EC0EC 8FA40060 */  lw         $a0, 0x60($sp)
/* C74F0 800EC0F0 8FA50064 */  lw         $a1, 0x64($sp)
/* C74F4 800EC0F4 01203825 */  or         $a3, $t1, $zero
/* C74F8 800EC0F8 000937C3 */  sra        $a2, $t1, 0x1f
/* C74FC 800EC0FC 0C03814A */  jal        func_800E0528
/* C7500 800EC100 AFA90070 */   sw        $t1, 0x70($sp)
/* C7504 800EC104 8FA90070 */  lw         $t1, 0x70($sp)
/* C7508 800EC108 AE230004 */  sw         $v1, 4($s1)
/* C750C 800EC10C 0440002B */  bltz       $v0, .L800EC1BC
/* C7510 800EC110 AE220000 */   sw        $v0, ($s1)
/* C7514 800EC114 1C400003 */  bgtz       $v0, .L800EC124
/* C7518 800EC118 00000000 */   nop
/* C751C 800EC11C 50600028 */  beql       $v1, $zero, .L800EC1C0
/* C7520 800EC120 240C0018 */   addiu     $t4, $zero, 0x18
.L800EC124:
/* C7524 800EC124 1A000025 */  blez       $s0, .L800EC1BC
/* C7528 800EC128 000967C3 */   sra       $t4, $t1, 0x1f
/* C752C 800EC12C 8E2A0000 */  lw         $t2, ($s1)
/* C7530 800EC130 8E2B0004 */  lw         $t3, 4($s1)
/* C7534 800EC134 AFA9003C */  sw         $t1, 0x3c($sp)
/* C7538 800EC138 AFAC0038 */  sw         $t4, 0x38($sp)
/* C753C 800EC13C AFAA0040 */  sw         $t2, 0x40($sp)
/* C7540 800EC140 AFAB0044 */  sw         $t3, 0x44($sp)
/* C7544 800EC144 8FAE0038 */  lw         $t6, 0x38($sp)
.L800EC148:
/* C7548 800EC148 8FAF003C */  lw         $t7, 0x3c($sp)
/* C754C 800EC14C 27A40050 */  addiu      $a0, $sp, 0x50
/* C7550 800EC150 8FA60040 */  lw         $a2, 0x40($sp)
/* C7554 800EC154 8FA70044 */  lw         $a3, 0x44($sp)
/* C7558 800EC158 AFAE0010 */  sw         $t6, 0x10($sp)
/* C755C 800EC15C 0C03B80C */  jal        func_800EE030
/* C7560 800EC160 AFAF0014 */   sw        $t7, 0x14($sp)
/* C7564 800EC164 8FB80050 */  lw         $t8, 0x50($sp)
/* C7568 800EC168 8FB90054 */  lw         $t9, 0x54($sp)
/* C756C 800EC16C 2604FFFF */  addiu      $a0, $s0, -1
/* C7570 800EC170 AE380000 */  sw         $t8, ($s1)
/* C7574 800EC174 AE390004 */  sw         $t9, 4($s1)
/* C7578 800EC178 8FAB005C */  lw         $t3, 0x5c($sp)
/* C757C 800EC17C 02447821 */  addu       $t7, $s2, $a0
/* C7580 800EC180 00808025 */  or         $s0, $a0, $zero
/* C7584 800EC184 01736821 */  addu       $t5, $t3, $s3
/* C7588 800EC188 91AE0000 */  lbu        $t6, ($t5)
/* C758C 800EC18C A1EE0000 */  sb         $t6, ($t7)
/* C7590 800EC190 8E380000 */  lw         $t8, ($s1)
/* C7594 800EC194 8E390004 */  lw         $t9, 4($s1)
/* C7598 800EC198 AFB80040 */  sw         $t8, 0x40($sp)
/* C759C 800EC19C 07000007 */  bltz       $t8, .L800EC1BC
/* C75A0 800EC1A0 AFB90044 */   sw        $t9, 0x44($sp)
/* C75A4 800EC1A4 1F000003 */  bgtz       $t8, .L800EC1B4
/* C75A8 800EC1A8 00000000 */   nop
/* C75AC 800EC1AC 53200004 */  beql       $t9, $zero, .L800EC1C0
/* C75B0 800EC1B0 240C0018 */   addiu     $t4, $zero, 0x18
.L800EC1B4:
/* C75B4 800EC1B4 5E00FFE4 */  bgtzl      $s0, .L800EC148
/* C75B8 800EC1B8 8FAE0038 */   lw        $t6, 0x38($sp)
.L800EC1BC:
/* C75BC 800EC1BC 240C0018 */  addiu      $t4, $zero, 0x18
.L800EC1C0:
/* C75C0 800EC1C0 01903023 */  subu       $a2, $t4, $s0
/* C75C4 800EC1C4 AE260014 */  sw         $a2, 0x14($s1)
/* C75C8 800EC1C8 8E240008 */  lw         $a0, 8($s1)
/* C75CC 800EC1CC 0C03AFC4 */  jal        func_800EBF10
/* C75D0 800EC1D0 02502821 */   addu      $a1, $s2, $s0
/* C75D4 800EC1D4 8E250014 */  lw         $a1, 0x14($s1)
/* C75D8 800EC1D8 8E240024 */  lw         $a0, 0x24($s1)
/* C75DC 800EC1DC 00A4082A */  slt        $at, $a1, $a0
/* C75E0 800EC1E0 10200002 */  beqz       $at, .L800EC1EC
/* C75E4 800EC1E4 00856823 */   subu      $t5, $a0, $a1
/* C75E8 800EC1E8 AE2D0010 */  sw         $t5, 0x10($s1)
.L800EC1EC:
/* C75EC 800EC1EC 04830010 */  bgezl      $a0, .L800EC230
/* C75F0 800EC1F0 8FBF002C */   lw        $ra, 0x2c($sp)
/* C75F4 800EC1F4 8E2E0030 */  lw         $t6, 0x30($s1)
/* C75F8 800EC1F8 24010010 */  addiu      $at, $zero, 0x10
/* C75FC 800EC1FC 31CF0014 */  andi       $t7, $t6, 0x14
/* C7600 800EC200 55E1000B */  bnel       $t7, $at, .L800EC230
/* C7604 800EC204 8FBF002C */   lw        $ra, 0x2c($sp)
/* C7608 800EC208 8E380028 */  lw         $t8, 0x28($s1)
/* C760C 800EC20C 8E39000C */  lw         $t9, 0xc($s1)
/* C7610 800EC210 8E220010 */  lw         $v0, 0x10($s1)
/* C7614 800EC214 03195023 */  subu       $t2, $t8, $t9
/* C7618 800EC218 01425823 */  subu       $t3, $t2, $v0
/* C761C 800EC21C 01658023 */  subu       $s0, $t3, $a1
/* C7620 800EC220 1A000002 */  blez       $s0, .L800EC22C
/* C7624 800EC224 00506021 */   addu      $t4, $v0, $s0
/* C7628 800EC228 AE2C0010 */  sw         $t4, 0x10($s1)
.L800EC22C:
/* C762C 800EC22C 8FBF002C */  lw         $ra, 0x2c($sp)
.L800EC230:
/* C7630 800EC230 8FB0001C */  lw         $s0, 0x1c($sp)
/* C7634 800EC234 8FB10020 */  lw         $s1, 0x20($sp)
/* C7638 800EC238 8FB20024 */  lw         $s2, 0x24($sp)
/* C763C 800EC23C 8FB30028 */  lw         $s3, 0x28($sp)
/* C7640 800EC240 03E00008 */  jr         $ra
/* C7644 800EC244 27BD0090 */   addiu     $sp, $sp, 0x90
/* C7648 800EC248 00000000 */  nop
/* C764C 800EC24C 00000000 */  nop
