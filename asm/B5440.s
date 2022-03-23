.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DA040
/* B5440 800DA040 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B5444 800DA044 AFBF001C */  sw         $ra, 0x1c($sp)
/* B5448 800DA048 AFA40028 */  sw         $a0, 0x28($sp)
/* B544C 800DA04C 0C038AF8 */  jal        func_800E2BE0
/* B5450 800DA050 AFB00018 */   sw        $s0, 0x18($sp)
/* B5454 800DA054 93AE002B */  lbu        $t6, 0x2b($sp)
/* B5458 800DA058 00408025 */  or         $s0, $v0, $zero
/* B545C 800DA05C 11C00007 */  beqz       $t6, .L800DA07C
/* B5460 800DA060 00000000 */   nop
/* B5464 800DA064 3C0F8011 */  lui        $t7, %hi(D_80109E94)
/* B5468 800DA068 8DEF9E94 */  lw         $t7, %lo(D_80109E94)($t7)
/* B546C 800DA06C 95F80000 */  lhu        $t8, ($t7)
/* B5470 800DA070 37190020 */  ori        $t9, $t8, 0x20
/* B5474 800DA074 10000007 */  b          .L800DA094
/* B5478 800DA078 A5F90000 */   sh        $t9, ($t7)
.L800DA07C:
/* B547C 800DA07C 3C088011 */  lui        $t0, %hi(D_80109E94)
/* B5480 800DA080 8D089E94 */  lw         $t0, %lo(D_80109E94)($t0)
/* B5484 800DA084 2401FFDF */  addiu      $at, $zero, -0x21
/* B5488 800DA088 95090000 */  lhu        $t1, ($t0)
/* B548C 800DA08C 01215024 */  and        $t2, $t1, $at
/* B5490 800DA090 A50A0000 */  sh         $t2, ($t0)
.L800DA094:
/* B5494 800DA094 0C038B00 */  jal        func_800E2C00
/* B5498 800DA098 02002025 */   or        $a0, $s0, $zero
/* B549C 800DA09C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B54A0 800DA0A0 8FB00018 */  lw         $s0, 0x18($sp)
/* B54A4 800DA0A4 27BD0028 */  addiu      $sp, $sp, 0x28
/* B54A8 800DA0A8 03E00008 */  jr         $ra
/* B54AC 800DA0AC 00000000 */   nop

glabel func_800DA0B0
/* B54B0 800DA0B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B54B4 800DA0B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B54B8 800DA0B8 AFA40028 */  sw         $a0, 0x28($sp)
/* B54BC 800DA0BC 0C038AF8 */  jal        func_800E2BE0
/* B54C0 800DA0C0 AFB00018 */   sw        $s0, 0x18($sp)
/* B54C4 800DA0C4 8FAE0028 */  lw         $t6, 0x28($sp)
/* B54C8 800DA0C8 00408025 */  or         $s0, $v0, $zero
/* B54CC 800DA0CC 31CF0001 */  andi       $t7, $t6, 1
/* B54D0 800DA0D0 11E00006 */  beqz       $t7, .L800DA0EC
/* B54D4 800DA0D4 00000000 */   nop
/* B54D8 800DA0D8 3C188011 */  lui        $t8, %hi(D_80109E94)
/* B54DC 800DA0DC 8F189E94 */  lw         $t8, %lo(D_80109E94)($t8)
/* B54E0 800DA0E0 8F19000C */  lw         $t9, 0xc($t8)
/* B54E4 800DA0E4 37280008 */  ori        $t0, $t9, 8
/* B54E8 800DA0E8 AF08000C */  sw         $t0, 0xc($t8)
.L800DA0EC:
/* B54EC 800DA0EC 8FA90028 */  lw         $t1, 0x28($sp)
/* B54F0 800DA0F0 312A0002 */  andi       $t2, $t1, 2
/* B54F4 800DA0F4 11400007 */  beqz       $t2, .L800DA114
/* B54F8 800DA0F8 00000000 */   nop
/* B54FC 800DA0FC 3C0B8011 */  lui        $t3, %hi(D_80109E94)
/* B5500 800DA100 8D6B9E94 */  lw         $t3, %lo(D_80109E94)($t3)
/* B5504 800DA104 2401FFF7 */  addiu      $at, $zero, -9
/* B5508 800DA108 8D6C000C */  lw         $t4, 0xc($t3)
/* B550C 800DA10C 01816824 */  and        $t5, $t4, $at
/* B5510 800DA110 AD6D000C */  sw         $t5, 0xc($t3)
.L800DA114:
/* B5514 800DA114 8FAE0028 */  lw         $t6, 0x28($sp)
/* B5518 800DA118 31CF0004 */  andi       $t7, $t6, 4
/* B551C 800DA11C 11E00006 */  beqz       $t7, .L800DA138
/* B5520 800DA120 00000000 */   nop
/* B5524 800DA124 3C198011 */  lui        $t9, %hi(D_80109E94)
/* B5528 800DA128 8F399E94 */  lw         $t9, %lo(D_80109E94)($t9)
/* B552C 800DA12C 8F28000C */  lw         $t0, 0xc($t9)
/* B5530 800DA130 35180004 */  ori        $t8, $t0, 4
/* B5534 800DA134 AF38000C */  sw         $t8, 0xc($t9)
.L800DA138:
/* B5538 800DA138 8FA90028 */  lw         $t1, 0x28($sp)
/* B553C 800DA13C 312A0008 */  andi       $t2, $t1, 8
/* B5540 800DA140 11400007 */  beqz       $t2, .L800DA160
/* B5544 800DA144 00000000 */   nop
/* B5548 800DA148 3C0C8011 */  lui        $t4, %hi(D_80109E94)
/* B554C 800DA14C 8D8C9E94 */  lw         $t4, %lo(D_80109E94)($t4)
/* B5550 800DA150 2401FFFB */  addiu      $at, $zero, -5
/* B5554 800DA154 8D8D000C */  lw         $t5, 0xc($t4)
/* B5558 800DA158 01A15824 */  and        $t3, $t5, $at
/* B555C 800DA15C AD8B000C */  sw         $t3, 0xc($t4)
.L800DA160:
/* B5560 800DA160 8FAE0028 */  lw         $t6, 0x28($sp)
/* B5564 800DA164 31CF0010 */  andi       $t7, $t6, 0x10
/* B5568 800DA168 11E00006 */  beqz       $t7, .L800DA184
/* B556C 800DA16C 00000000 */   nop
/* B5570 800DA170 3C088011 */  lui        $t0, %hi(D_80109E94)
/* B5574 800DA174 8D089E94 */  lw         $t0, %lo(D_80109E94)($t0)
/* B5578 800DA178 8D18000C */  lw         $t8, 0xc($t0)
/* B557C 800DA17C 37190010 */  ori        $t9, $t8, 0x10
/* B5580 800DA180 AD19000C */  sw         $t9, 0xc($t0)
.L800DA184:
/* B5584 800DA184 8FA90028 */  lw         $t1, 0x28($sp)
/* B5588 800DA188 312A0020 */  andi       $t2, $t1, 0x20
/* B558C 800DA18C 11400007 */  beqz       $t2, .L800DA1AC
/* B5590 800DA190 00000000 */   nop
/* B5594 800DA194 3C0D8011 */  lui        $t5, %hi(D_80109E94)
/* B5598 800DA198 8DAD9E94 */  lw         $t5, %lo(D_80109E94)($t5)
/* B559C 800DA19C 2401FFEF */  addiu      $at, $zero, -0x11
/* B55A0 800DA1A0 8DAB000C */  lw         $t3, 0xc($t5)
/* B55A4 800DA1A4 01616024 */  and        $t4, $t3, $at
/* B55A8 800DA1A8 ADAC000C */  sw         $t4, 0xc($t5)
.L800DA1AC:
/* B55AC 800DA1AC 8FAE0028 */  lw         $t6, 0x28($sp)
/* B55B0 800DA1B0 31CF0040 */  andi       $t7, $t6, 0x40
/* B55B4 800DA1B4 11E0000D */  beqz       $t7, .L800DA1EC
/* B55B8 800DA1B8 00000000 */   nop
/* B55BC 800DA1BC 3C188011 */  lui        $t8, %hi(D_80109E94)
/* B55C0 800DA1C0 8F189E94 */  lw         $t8, %lo(D_80109E94)($t8)
/* B55C4 800DA1C4 3C010001 */  lui        $at, 1
/* B55C8 800DA1C8 3C098011 */  lui        $t1, %hi(D_80109E94)
/* B55CC 800DA1CC 8F19000C */  lw         $t9, 0xc($t8)
/* B55D0 800DA1D0 03214025 */  or         $t0, $t9, $at
/* B55D4 800DA1D4 AF08000C */  sw         $t0, 0xc($t8)
/* B55D8 800DA1D8 8D299E94 */  lw         $t1, %lo(D_80109E94)($t1)
/* B55DC 800DA1DC 2401FCFF */  addiu      $at, $zero, -0x301
/* B55E0 800DA1E0 8D2A000C */  lw         $t2, 0xc($t1)
/* B55E4 800DA1E4 01415824 */  and        $t3, $t2, $at
/* B55E8 800DA1E8 AD2B000C */  sw         $t3, 0xc($t1)
.L800DA1EC:
/* B55EC 800DA1EC 8FAC0028 */  lw         $t4, 0x28($sp)
/* B55F0 800DA1F0 318D0080 */  andi       $t5, $t4, 0x80
/* B55F4 800DA1F4 11A00010 */  beqz       $t5, .L800DA238
/* B55F8 800DA1F8 00000000 */   nop
/* B55FC 800DA1FC 3C0E8011 */  lui        $t6, %hi(D_80109E94)
/* B5600 800DA200 8DCE9E94 */  lw         $t6, %lo(D_80109E94)($t6)
/* B5604 800DA204 3C01FFFE */  lui        $at, 0xfffe
/* B5608 800DA208 3421FFFF */  ori        $at, $at, 0xffff
/* B560C 800DA20C 8DCF000C */  lw         $t7, 0xc($t6)
/* B5610 800DA210 3C088011 */  lui        $t0, %hi(D_80109E94)
/* B5614 800DA214 01E1C824 */  and        $t9, $t7, $at
/* B5618 800DA218 ADD9000C */  sw         $t9, 0xc($t6)
/* B561C 800DA21C 8D089E94 */  lw         $t0, %lo(D_80109E94)($t0)
/* B5620 800DA220 8D0A0008 */  lw         $t2, 8($t0)
/* B5624 800DA224 8D18000C */  lw         $t8, 0xc($t0)
/* B5628 800DA228 8D4B0004 */  lw         $t3, 4($t2)
/* B562C 800DA22C 31690300 */  andi       $t1, $t3, 0x300
/* B5630 800DA230 03096025 */  or         $t4, $t8, $t1
/* B5634 800DA234 AD0C000C */  sw         $t4, 0xc($t0)
.L800DA238:
/* B5638 800DA238 3C0D8011 */  lui        $t5, %hi(D_80109E94)
/* B563C 800DA23C 8DAD9E94 */  lw         $t5, %lo(D_80109E94)($t5)
/* B5640 800DA240 02002025 */  or         $a0, $s0, $zero
/* B5644 800DA244 95AF0000 */  lhu        $t7, ($t5)
/* B5648 800DA248 35F90008 */  ori        $t9, $t7, 8
/* B564C 800DA24C 0C038B00 */  jal        func_800E2C00
/* B5650 800DA250 A5B90000 */   sh        $t9, ($t5)
/* B5654 800DA254 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5658 800DA258 8FB00018 */  lw         $s0, 0x18($sp)
/* B565C 800DA25C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B5660 800DA260 03E00008 */  jr         $ra
/* B5664 800DA264 00000000 */   nop
/* B5668 800DA268 00000000 */  nop
/* B566C 800DA26C 00000000 */  nop
