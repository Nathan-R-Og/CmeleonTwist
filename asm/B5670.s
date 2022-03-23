.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DA270
/* B5670 800DA270 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B5674 800DA274 3C0E8011 */  lui        $t6, %hi(D_80109D70)
/* B5678 800DA278 8DCE9D70 */  lw         $t6, %lo(D_80109D70)($t6)
/* B567C 800DA27C AFBF001C */  sw         $ra, 0x1c($sp)
/* B5680 800DA280 AFA40030 */  sw         $a0, 0x30($sp)
/* B5684 800DA284 AFA50034 */  sw         $a1, 0x34($sp)
/* B5688 800DA288 AFA60038 */  sw         $a2, 0x38($sp)
/* B568C 800DA28C 15C00056 */  bnez       $t6, .L800DA3E8
/* B5690 800DA290 AFA7003C */   sw        $a3, 0x3c($sp)
/* B5694 800DA294 8FA40034 */  lw         $a0, 0x34($sp)
/* B5698 800DA298 8FA50038 */  lw         $a1, 0x38($sp)
/* B569C 800DA29C 0C036938 */  jal        func_800DA4E0
/* B56A0 800DA2A0 8FA6003C */   lw        $a2, 0x3c($sp)
/* B56A4 800DA2A4 3C048025 */  lui        $a0, %hi(D_8024B050)
/* B56A8 800DA2A8 3C058025 */  lui        $a1, %hi(D_8024B068)
/* B56AC 800DA2AC 24A5B068 */  addiu      $a1, $a1, %lo(D_8024B068)
/* B56B0 800DA2B0 2484B050 */  addiu      $a0, $a0, %lo(D_8024B050)
/* B56B4 800DA2B4 0C036938 */  jal        func_800DA4E0
/* B56B8 800DA2B8 24060001 */   addiu     $a2, $zero, 1
/* B56BC 800DA2BC 3C0F8011 */  lui        $t7, %hi(D_80109EA0)
/* B56C0 800DA2C0 8DEF9EA0 */  lw         $t7, %lo(D_80109EA0)($t7)
/* B56C4 800DA2C4 15E00003 */  bnez       $t7, .L800DA2D4
/* B56C8 800DA2C8 00000000 */   nop
/* B56CC 800DA2CC 0C038D50 */  jal        func_800E3540
/* B56D0 800DA2D0 00000000 */   nop
.L800DA2D4:
/* B56D4 800DA2D4 3C058025 */  lui        $a1, %hi(D_8024B050)
/* B56D8 800DA2D8 3C062222 */  lui        $a2, 0x2222
/* B56DC 800DA2DC 34C62222 */  ori        $a2, $a2, 0x2222
/* B56E0 800DA2E0 24A5B050 */  addiu      $a1, $a1, %lo(D_8024B050)
/* B56E4 800DA2E4 0C036C8C */  jal        func_800DB230
/* B56E8 800DA2E8 24040008 */   addiu     $a0, $zero, 8
/* B56EC 800DA2EC 2418FFFF */  addiu      $t8, $zero, -1
/* B56F0 800DA2F0 AFB80028 */  sw         $t8, 0x28($sp)
/* B56F4 800DA2F4 0C038C18 */  jal        func_800E3060
/* B56F8 800DA2F8 00002025 */   or        $a0, $zero, $zero
/* B56FC 800DA2FC AFA20024 */  sw         $v0, 0x24($sp)
/* B5700 800DA300 8FB90024 */  lw         $t9, 0x24($sp)
/* B5704 800DA304 8FA80030 */  lw         $t0, 0x30($sp)
/* B5708 800DA308 0328082A */  slt        $at, $t9, $t0
/* B570C 800DA30C 10200005 */  beqz       $at, .L800DA324
/* B5710 800DA310 00000000 */   nop
/* B5714 800DA314 AFB90028 */  sw         $t9, 0x28($sp)
/* B5718 800DA318 00002025 */  or         $a0, $zero, $zero
/* B571C 800DA31C 0C036900 */  jal        func_800DA400
/* B5720 800DA320 01002825 */   or        $a1, $t0, $zero
.L800DA324:
/* B5724 800DA324 0C038AF8 */  jal        func_800E2BE0
/* B5728 800DA328 00000000 */   nop
/* B572C 800DA32C 3C018011 */  lui        $at, 0x8011
/* B5730 800DA330 8FAB0034 */  lw         $t3, 0x34($sp)
/* B5734 800DA334 3C0A8025 */  lui        $t2, %hi(D_80249EA0)
/* B5738 800DA338 3C0C8025 */  lui        $t4, %hi(D_8024B050)
/* B573C 800DA33C 24090001 */  addiu      $t1, $zero, 1
/* B5740 800DA340 254A9EA0 */  addiu      $t2, $t2, %lo(D_80249EA0)
/* B5744 800DA344 258CB050 */  addiu      $t4, $t4, %lo(D_8024B050)
/* B5748 800DA348 AC299D70 */  sw         $t1, -0x6290($at)
/* B574C 800DA34C AC2A9D74 */  sw         $t2, -0x628c($at)
/* B5750 800DA350 AC2C9D7C */  sw         $t4, -0x6284($at)
/* B5754 800DA354 3C188025 */  lui        $t8, 0x8025
/* B5758 800DA358 AC2B9D78 */  sw         $t3, -0x6288($at)
/* B575C 800DA35C 8FA80030 */  lw         $t0, 0x30($sp)
/* B5760 800DA360 3C018011 */  lui        $at, 0x8011
/* B5764 800DA364 3C0D8025 */  lui        $t5, %hi(D_8024C288)
/* B5768 800DA368 3C0E800E */  lui        $t6, %hi(D_800E3600)
/* B576C 800DA36C 3C0F800E */  lui        $t7, %hi(D_800E36E0)
/* B5770 800DA370 2718A050 */  addiu      $t8, $t8, -0x5fb0
/* B5774 800DA374 25ADC288 */  addiu      $t5, $t5, %lo(D_8024C288)
/* B5778 800DA378 25CE3600 */  addiu      $t6, $t6, %lo(D_800E3600)
/* B577C 800DA37C 25EF36E0 */  addiu      $t7, $t7, %lo(D_800E36E0)
/* B5780 800DA380 27191000 */  addiu      $t9, $t8, 0x1000
/* B5784 800DA384 3C06800E */  lui        $a2, 0x800e
/* B5788 800DA388 3C078011 */  lui        $a3, %hi(D_80109D70)
/* B578C 800DA38C AFA2002C */  sw         $v0, 0x2c($sp)
/* B5790 800DA390 AC2D9D80 */  sw         $t5, -0x6280($at)
/* B5794 800DA394 AC2E9D84 */  sw         $t6, -0x627c($at)
/* B5798 800DA398 AC2F9D88 */  sw         $t7, -0x6278($at)
/* B579C 800DA39C 24E79D70 */  addiu      $a3, $a3, %lo(D_80109D70)
/* B57A0 800DA3A0 24C637C0 */  addiu      $a2, $a2, 0x37c0
/* B57A4 800DA3A4 AFB90010 */  sw         $t9, 0x10($sp)
/* B57A8 800DA3A8 01402025 */  or         $a0, $t2, $zero
/* B57AC 800DA3AC 00002825 */  or         $a1, $zero, $zero
/* B57B0 800DA3B0 0C036674 */  jal        func_800D99D0
/* B57B4 800DA3B4 AFA80014 */   sw        $t0, 0x14($sp)
/* B57B8 800DA3B8 3C048025 */  lui        $a0, %hi(D_80249EA0)
/* B57BC 800DA3BC 0C0366C8 */  jal        func_800D9B20
/* B57C0 800DA3C0 24849EA0 */   addiu     $a0, $a0, %lo(D_80249EA0)
/* B57C4 800DA3C4 0C038B00 */  jal        func_800E2C00
/* B57C8 800DA3C8 8FA4002C */   lw        $a0, 0x2c($sp)
/* B57CC 800DA3CC 8FA90028 */  lw         $t1, 0x28($sp)
/* B57D0 800DA3D0 2401FFFF */  addiu      $at, $zero, -1
/* B57D4 800DA3D4 11210004 */  beq        $t1, $at, .L800DA3E8
/* B57D8 800DA3D8 00000000 */   nop
/* B57DC 800DA3DC 00002025 */  or         $a0, $zero, $zero
/* B57E0 800DA3E0 0C036900 */  jal        func_800DA400
/* B57E4 800DA3E4 01202825 */   or        $a1, $t1, $zero
.L800DA3E8:
/* B57E8 800DA3E8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B57EC 800DA3EC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B57F0 800DA3F0 03E00008 */  jr         $ra
/* B57F4 800DA3F4 00000000 */   nop
/* B57F8 800DA3F8 00000000 */  nop
/* B57FC 800DA3FC 00000000 */  nop
