.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E3080
/* BE480 800E3080 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE484 800E3084 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE488 800E3088 3C048011 */  lui        $a0, %hi(D_80109E30)
/* BE48C 800E308C 24849E30 */  addiu      $a0, $a0, %lo(D_80109E30)
/* BE490 800E3090 0C038108 */  jal        func_800E0420
/* BE494 800E3094 24050060 */   addiu     $a1, $zero, 0x60
/* BE498 800E3098 3C0E8011 */  lui        $t6, %hi(D_80109E30)
/* BE49C 800E309C 25CE9E30 */  addiu      $t6, $t6, %lo(D_80109E30)
/* BE4A0 800E30A0 3C018011 */  lui        $at, %hi(D_80109E90)
/* BE4A4 800E30A4 AC2E9E90 */  sw         $t6, %lo(D_80109E90)($at)
/* BE4A8 800E30A8 3C018011 */  lui        $at, %hi(D_80109E94)
/* BE4AC 800E30AC 25CF0030 */  addiu      $t7, $t6, 0x30
/* BE4B0 800E30B0 AC2F9E94 */  sw         $t7, %lo(D_80109E94)($at)
/* BE4B4 800E30B4 24180001 */  addiu      $t8, $zero, 1
/* BE4B8 800E30B8 A5D80032 */  sh         $t8, 0x32($t6)
/* BE4BC 800E30BC 3C088011 */  lui        $t0, %hi(D_80109E90)
/* BE4C0 800E30C0 8D089E90 */  lw         $t0, %lo(D_80109E90)($t0)
/* BE4C4 800E30C4 24190001 */  addiu      $t9, $zero, 1
/* BE4C8 800E30C8 3C098000 */  lui        $t1, %hi(D_80000300)
/* BE4CC 800E30CC A5190002 */  sh         $t9, 2($t0)
/* BE4D0 800E30D0 8D290300 */  lw         $t1, %lo(D_80000300)($t1)
/* BE4D4 800E30D4 1520000B */  bnez       $t1, .L800E3104
/* BE4D8 800E30D8 00000000 */   nop
/* BE4DC 800E30DC 3C0B8011 */  lui        $t3, %hi(D_80109E94)
/* BE4E0 800E30E0 8D6B9E94 */  lw         $t3, %lo(D_80109E94)($t3)
/* BE4E4 800E30E4 3C0A8011 */  lui        $t2, %hi(D_8010A1D0)
/* BE4E8 800E30E8 254AA1D0 */  addiu      $t2, $t2, %lo(D_8010A1D0)
/* BE4EC 800E30EC 3C0C02F5 */  lui        $t4, 0x2f5
/* BE4F0 800E30F0 358CB2D2 */  ori        $t4, $t4, 0xb2d2
/* BE4F4 800E30F4 3C018011 */  lui        $at, %hi(D_80109E98)
/* BE4F8 800E30F8 AD6A0008 */  sw         $t2, 8($t3)
/* BE4FC 800E30FC 10000019 */  b          .L800E3164
/* BE500 800E3100 AC2C9E98 */   sw        $t4, %lo(D_80109E98)($at)
.L800E3104:
/* BE504 800E3104 3C0D8000 */  lui        $t5, %hi(D_80000300)
/* BE508 800E3108 8DAD0300 */  lw         $t5, %lo(D_80000300)($t5)
/* BE50C 800E310C 24010002 */  addiu      $at, $zero, 2
/* BE510 800E3110 15A1000B */  bne        $t5, $at, .L800E3140
/* BE514 800E3114 00000000 */   nop
/* BE518 800E3118 3C188011 */  lui        $t8, %hi(D_80109E94)
/* BE51C 800E311C 8F189E94 */  lw         $t8, %lo(D_80109E94)($t8)
/* BE520 800E3120 3C0F8011 */  lui        $t7, %hi(D_8010A220)
/* BE524 800E3124 25EFA220 */  addiu      $t7, $t7, %lo(D_8010A220)
/* BE528 800E3128 3C0E02E6 */  lui        $t6, 0x2e6
/* BE52C 800E312C 35CE025C */  ori        $t6, $t6, 0x25c
/* BE530 800E3130 3C018011 */  lui        $at, %hi(D_80109E98)
/* BE534 800E3134 AF0F0008 */  sw         $t7, 8($t8)
/* BE538 800E3138 1000000A */  b          .L800E3164
/* BE53C 800E313C AC2E9E98 */   sw        $t6, %lo(D_80109E98)($at)
.L800E3140:
/* BE540 800E3140 3C088011 */  lui        $t0, %hi(D_80109E94)
/* BE544 800E3144 8D089E94 */  lw         $t0, %lo(D_80109E94)($t0)
/* BE548 800E3148 3C198011 */  lui        $t9, %hi(D_8010A270)
/* BE54C 800E314C 2739A270 */  addiu      $t9, $t9, %lo(D_8010A270)
/* BE550 800E3150 3C0902E6 */  lui        $t1, 0x2e6
/* BE554 800E3154 3529D354 */  ori        $t1, $t1, 0xd354
/* BE558 800E3158 3C018011 */  lui        $at, %hi(D_80109E98)
/* BE55C 800E315C AD190008 */  sw         $t9, 8($t0)
/* BE560 800E3160 AC299E98 */  sw         $t1, %lo(D_80109E98)($at)
.L800E3164:
/* BE564 800E3164 3C0B8011 */  lui        $t3, %hi(D_80109E94)
/* BE568 800E3168 8D6B9E94 */  lw         $t3, %lo(D_80109E94)($t3)
/* BE56C 800E316C 240A0020 */  addiu      $t2, $zero, 0x20
/* BE570 800E3170 3C0C8011 */  lui        $t4, %hi(D_80109E94)
/* BE574 800E3174 A56A0000 */  sh         $t2, ($t3)
/* BE578 800E3178 8D8C9E94 */  lw         $t4, %lo(D_80109E94)($t4)
/* BE57C 800E317C 3C18A440 */  lui        $t8, %hi(D_A4400010)
/* BE580 800E3180 8D8D0008 */  lw         $t5, 8($t4)
/* BE584 800E3184 8DAF0004 */  lw         $t7, 4($t5)
/* BE588 800E3188 AD8F000C */  sw         $t7, 0xc($t4)
/* BE58C 800E318C 8F0E0010 */  lw         $t6, %lo(D_A4400010)($t8)
/* BE590 800E3190 2DC1000B */  sltiu      $at, $t6, 0xb
/* BE594 800E3194 14200006 */  bnez       $at, .L800E31B0
/* BE598 800E3198 00000000 */   nop
.L800E319C:
/* BE59C 800E319C 3C19A440 */  lui        $t9, %hi(D_A4400010)
/* BE5A0 800E31A0 8F280010 */  lw         $t0, %lo(D_A4400010)($t9)
/* BE5A4 800E31A4 2D01000B */  sltiu      $at, $t0, 0xb
/* BE5A8 800E31A8 1020FFFC */  beqz       $at, .L800E319C
/* BE5AC 800E31AC 00000000 */   nop
.L800E31B0:
/* BE5B0 800E31B0 3C09A440 */  lui        $t1, 0xa440
/* BE5B4 800E31B4 0C038C78 */  jal        func_800E31E0
/* BE5B8 800E31B8 AD200000 */   sw        $zero, ($t1)
/* BE5BC 800E31BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE5C0 800E31C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* BE5C4 800E31C4 03E00008 */  jr         $ra
/* BE5C8 800E31C8 00000000 */   nop
/* BE5CC 800E31CC 00000000 */  nop
