.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EE030
/* C9430 800EE030 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C9434 800EE034 AFA40030 */  sw         $a0, 0x30($sp)
/* C9438 800EE038 AFBF0014 */  sw         $ra, 0x14($sp)
/* C943C 800EE03C AFA60038 */  sw         $a2, 0x38($sp)
/* C9440 800EE040 AFA7003C */  sw         $a3, 0x3c($sp)
/* C9444 800EE044 00C02025 */  or         $a0, $a2, $zero
/* C9448 800EE048 00E02825 */  or         $a1, $a3, $zero
/* C944C 800EE04C 8FA70044 */  lw         $a3, 0x44($sp)
/* C9450 800EE050 0C038173 */  jal        func_800E05CC
/* C9454 800EE054 8FA60040 */   lw        $a2, 0x40($sp)
/* C9458 800EE058 AFA20020 */  sw         $v0, 0x20($sp)
/* C945C 800EE05C AFA30024 */  sw         $v1, 0x24($sp)
/* C9460 800EE060 8FA40040 */  lw         $a0, 0x40($sp)
/* C9464 800EE064 8FA50044 */  lw         $a1, 0x44($sp)
/* C9468 800EE068 00403025 */  or         $a2, $v0, $zero
/* C946C 800EE06C 0C03818A */  jal        func_800E0628
/* C9470 800EE070 00603825 */   or        $a3, $v1, $zero
/* C9474 800EE074 8FAE0038 */  lw         $t6, 0x38($sp)
/* C9478 800EE078 8FAF003C */  lw         $t7, 0x3c($sp)
/* C947C 800EE07C 8FA80020 */  lw         $t0, 0x20($sp)
/* C9480 800EE080 01C2C023 */  subu       $t8, $t6, $v0
/* C9484 800EE084 01E3082B */  sltu       $at, $t7, $v1
/* C9488 800EE088 0301C023 */  subu       $t8, $t8, $at
/* C948C 800EE08C 01E3C823 */  subu       $t9, $t7, $v1
/* C9490 800EE090 AFB9002C */  sw         $t9, 0x2c($sp)
/* C9494 800EE094 AFB80028 */  sw         $t8, 0x28($sp)
/* C9498 800EE098 1D000017 */  bgtz       $t0, .L800EE0F8
/* C949C 800EE09C 8FA90024 */   lw        $t1, 0x24($sp)
/* C94A0 800EE0A0 05000003 */  bltz       $t0, .L800EE0B0
/* C94A4 800EE0A4 00000000 */   nop
/* C94A8 800EE0A8 10000014 */  b          .L800EE0FC
/* C94AC 800EE0AC 27A80020 */   addiu     $t0, $sp, 0x20
.L800EE0B0:
/* C94B0 800EE0B0 07020012 */  bltzl      $t8, .L800EE0FC
/* C94B4 800EE0B4 27A80020 */   addiu     $t0, $sp, 0x20
/* C94B8 800EE0B8 1F000003 */  bgtz       $t8, .L800EE0C8
/* C94BC 800EE0BC 252B0001 */   addiu     $t3, $t1, 1
/* C94C0 800EE0C0 5320000E */  beql       $t9, $zero, .L800EE0FC
/* C94C4 800EE0C4 27A80020 */   addiu     $t0, $sp, 0x20
.L800EE0C8:
/* C94C8 800EE0C8 8FAC0040 */  lw         $t4, 0x40($sp)
/* C94CC 800EE0CC 8FAD0044 */  lw         $t5, 0x44($sp)
/* C94D0 800EE0D0 2D610001 */  sltiu      $at, $t3, 1
/* C94D4 800EE0D4 01015021 */  addu       $t2, $t0, $at
/* C94D8 800EE0D8 030C7023 */  subu       $t6, $t8, $t4
/* C94DC 800EE0DC 032D082B */  sltu       $at, $t9, $t5
/* C94E0 800EE0E0 01C17023 */  subu       $t6, $t6, $at
/* C94E4 800EE0E4 032D7823 */  subu       $t7, $t9, $t5
/* C94E8 800EE0E8 AFAA0020 */  sw         $t2, 0x20($sp)
/* C94EC 800EE0EC AFAB0024 */  sw         $t3, 0x24($sp)
/* C94F0 800EE0F0 AFAF002C */  sw         $t7, 0x2c($sp)
/* C94F4 800EE0F4 AFAE0028 */  sw         $t6, 0x28($sp)
.L800EE0F8:
/* C94F8 800EE0F8 27A80020 */  addiu      $t0, $sp, 0x20
.L800EE0FC:
/* C94FC 800EE0FC 8FA20030 */  lw         $v0, 0x30($sp)
/* C9500 800EE100 8D010000 */  lw         $at, ($t0)
/* C9504 800EE104 AC410000 */  sw         $at, ($v0)
/* C9508 800EE108 8D0B0004 */  lw         $t3, 4($t0)
/* C950C 800EE10C AC4B0004 */  sw         $t3, 4($v0)
/* C9510 800EE110 8D010008 */  lw         $at, 8($t0)
/* C9514 800EE114 AC410008 */  sw         $at, 8($v0)
/* C9518 800EE118 8D0B000C */  lw         $t3, 0xc($t0)
/* C951C 800EE11C AC4B000C */  sw         $t3, 0xc($v0)
/* C9520 800EE120 8FBF0014 */  lw         $ra, 0x14($sp)
/* C9524 800EE124 27BD0030 */  addiu      $sp, $sp, 0x30
/* C9528 800EE128 03E00008 */  jr         $ra
/* C952C 800EE12C 00000000 */   nop

glabel func_800EE130
/* C9530 800EE130 00A6001A */  div        $zero, $a1, $a2
/* C9534 800EE134 00001012 */  mflo       $v0
/* C9538 800EE138 27BDFFF8 */  addiu      $sp, $sp, -8
/* C953C 800EE13C 14C00002 */  bnez       $a2, .L800EE148
/* C9540 800EE140 00000000 */   nop
/* C9544 800EE144 0007000D */  break      7
.L800EE148:
/* C9548 800EE148 2401FFFF */   addiu     $at, $zero, -1
/* C954C 800EE14C 14C10004 */  bne        $a2, $at, .L800EE160
/* C9550 800EE150 3C018000 */   lui       $at, 0x8000
/* C9554 800EE154 14A10002 */  bne        $a1, $at, .L800EE160
/* C9558 800EE158 00000000 */   nop
/* C955C 800EE15C 0006000D */  break      6
.L800EE160:
/* C9560 800EE160 00C20019 */   multu     $a2, $v0
/* C9564 800EE164 AFA20000 */  sw         $v0, ($sp)
/* C9568 800EE168 27AF0000 */  addiu      $t7, $sp, 0
/* C956C 800EE16C 00007012 */  mflo       $t6
/* C9570 800EE170 00AE1823 */  subu       $v1, $a1, $t6
/* C9574 800EE174 04410008 */  bgez       $v0, .L800EE198
/* C9578 800EE178 AFA30004 */   sw        $v1, 4($sp)
/* C957C 800EE17C AFA20000 */  sw         $v0, ($sp)
/* C9580 800EE180 18600005 */  blez       $v1, .L800EE198
/* C9584 800EE184 AFA30004 */   sw        $v1, 4($sp)
/* C9588 800EE188 24420001 */  addiu      $v0, $v0, 1
/* C958C 800EE18C 00661823 */  subu       $v1, $v1, $a2
/* C9590 800EE190 AFA30004 */  sw         $v1, 4($sp)
/* C9594 800EE194 AFA20000 */  sw         $v0, ($sp)
.L800EE198:
/* C9598 800EE198 8DE10000 */  lw         $at, ($t7)
/* C959C 800EE19C 00801025 */  or         $v0, $a0, $zero
/* C95A0 800EE1A0 AC810000 */  sw         $at, ($a0)
/* C95A4 800EE1A4 8DE80004 */  lw         $t0, 4($t7)
/* C95A8 800EE1A8 27BD0008 */  addiu      $sp, $sp, 8
/* C95AC 800EE1AC 03E00008 */  jr         $ra
/* C95B0 800EE1B0 AC880004 */   sw        $t0, 4($a0)
