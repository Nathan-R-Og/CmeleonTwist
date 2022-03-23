.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E31E0
/* BE5E0 800E31E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* BE5E4 800E31E4 AFB1001C */  sw         $s1, 0x1c($sp)
/* BE5E8 800E31E8 AFBF0024 */  sw         $ra, 0x24($sp)
/* BE5EC 800E31EC AFB20020 */  sw         $s2, 0x20($sp)
/* BE5F0 800E31F0 AFB00018 */  sw         $s0, 0x18($sp)
/* BE5F4 800E31F4 AFA00030 */  sw         $zero, 0x30($sp)
/* BE5F8 800E31F8 3C118011 */  lui        $s1, %hi(D_80109E94)
/* BE5FC 800E31FC 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* BE600 800E3200 8E319E94 */  lw         $s1, %lo(D_80109E94)($s1)
/* BE604 800E3204 8DCF0010 */  lw         $t7, %lo(D_A4400010)($t6)
/* BE608 800E3208 8E300008 */  lw         $s0, 8($s1)
/* BE60C 800E320C 31F80001 */  andi       $t8, $t7, 1
/* BE610 800E3210 AFB80030 */  sw         $t8, 0x30($sp)
/* BE614 800E3214 0C037228 */  jal        func_800DC8A0
/* BE618 800E3218 8E240004 */   lw        $a0, 4($s1)
/* BE61C 800E321C 8FB90030 */  lw         $t9, 0x30($sp)
/* BE620 800E3220 00409025 */  or         $s2, $v0, $zero
/* BE624 800E3224 00194080 */  sll        $t0, $t9, 2
/* BE628 800E3228 01194021 */  addu       $t0, $t0, $t9
/* BE62C 800E322C 00084080 */  sll        $t0, $t0, 2
/* BE630 800E3230 02084821 */  addu       $t1, $s0, $t0
/* BE634 800E3234 8D2A0028 */  lw         $t2, 0x28($t1)
/* BE638 800E3238 01525821 */  addu       $t3, $t2, $s2
/* BE63C 800E323C AFAB003C */  sw         $t3, 0x3c($sp)
/* BE640 800E3240 962C0000 */  lhu        $t4, ($s1)
/* BE644 800E3244 318D0002 */  andi       $t5, $t4, 2
/* BE648 800E3248 11A00008 */  beqz       $t5, .L800E326C
/* BE64C 800E324C 00000000 */   nop
/* BE650 800E3250 8E0F0020 */  lw         $t7, 0x20($s0)
/* BE654 800E3254 8E2E0020 */  lw         $t6, 0x20($s1)
/* BE658 800E3258 2401F000 */  addiu      $at, $zero, -0x1000
/* BE65C 800E325C 01E1C024 */  and        $t8, $t7, $at
/* BE660 800E3260 01D8C825 */  or         $t9, $t6, $t8
/* BE664 800E3264 10000003 */  b          .L800E3274
/* BE668 800E3268 AE390020 */   sw        $t9, 0x20($s1)
.L800E326C:
/* BE66C 800E326C 8E080020 */  lw         $t0, 0x20($s0)
/* BE670 800E3270 AE280020 */  sw         $t0, 0x20($s1)
.L800E3274:
/* BE674 800E3274 96290000 */  lhu        $t1, ($s1)
/* BE678 800E3278 312A0004 */  andi       $t2, $t1, 4
/* BE67C 800E327C 11400041 */  beqz       $t2, .L800E3384
/* BE680 800E3280 00000000 */   nop
/* BE684 800E3284 8FAB0030 */  lw         $t3, 0x30($sp)
/* BE688 800E3288 000B6080 */  sll        $t4, $t3, 2
/* BE68C 800E328C 018B6021 */  addu       $t4, $t4, $t3
/* BE690 800E3290 000C6080 */  sll        $t4, $t4, 2
/* BE694 800E3294 020C6821 */  addu       $t5, $s0, $t4
/* BE698 800E3298 8DAF002C */  lw         $t7, 0x2c($t5)
/* BE69C 800E329C 31EE0FFF */  andi       $t6, $t7, 0xfff
/* BE6A0 800E32A0 448E3000 */  mtc1       $t6, $f6
/* BE6A4 800E32A4 AFAE0034 */  sw         $t6, 0x34($sp)
/* BE6A8 800E32A8 C6240024 */  lwc1       $f4, 0x24($s1)
/* BE6AC 800E32AC 05C10005 */  bgez       $t6, .L800E32C4
/* BE6B0 800E32B0 46803220 */   cvt.s.w   $f8, $f6
/* BE6B4 800E32B4 3C014F80 */  lui        $at, 0x4f80
/* BE6B8 800E32B8 44815000 */  mtc1       $at, $f10
/* BE6BC 800E32BC 00000000 */  nop
/* BE6C0 800E32C0 460A4200 */  add.s      $f8, $f8, $f10
.L800E32C4:
/* BE6C4 800E32C4 46082402 */  mul.s      $f16, $f4, $f8
/* BE6C8 800E32C8 24190001 */  addiu      $t9, $zero, 1
/* BE6CC 800E32CC 4458F800 */  cfc1       $t8, $31
/* BE6D0 800E32D0 44D9F800 */  ctc1       $t9, $31
/* BE6D4 800E32D4 00000000 */  nop
/* BE6D8 800E32D8 460084A4 */  cvt.w.s    $f18, $f16
/* BE6DC 800E32DC 4459F800 */  cfc1       $t9, $31
/* BE6E0 800E32E0 00000000 */  nop
/* BE6E4 800E32E4 33210004 */  andi       $at, $t9, 4
/* BE6E8 800E32E8 33390078 */  andi       $t9, $t9, 0x78
/* BE6EC 800E32EC 13200013 */  beqz       $t9, .L800E333C
/* BE6F0 800E32F0 3C014F00 */   lui       $at, 0x4f00
/* BE6F4 800E32F4 44819000 */  mtc1       $at, $f18
/* BE6F8 800E32F8 24190001 */  addiu      $t9, $zero, 1
/* BE6FC 800E32FC 46128481 */  sub.s      $f18, $f16, $f18
/* BE700 800E3300 44D9F800 */  ctc1       $t9, $31
/* BE704 800E3304 00000000 */  nop
/* BE708 800E3308 460094A4 */  cvt.w.s    $f18, $f18
/* BE70C 800E330C 4459F800 */  cfc1       $t9, $31
/* BE710 800E3310 00000000 */  nop
/* BE714 800E3314 33210004 */  andi       $at, $t9, 4
/* BE718 800E3318 33390078 */  andi       $t9, $t9, 0x78
/* BE71C 800E331C 17200005 */  bnez       $t9, .L800E3334
/* BE720 800E3320 00000000 */   nop
/* BE724 800E3324 44199000 */  mfc1       $t9, $f18
/* BE728 800E3328 3C018000 */  lui        $at, 0x8000
/* BE72C 800E332C 10000007 */  b          .L800E334C
/* BE730 800E3330 0321C825 */   or        $t9, $t9, $at
.L800E3334:
/* BE734 800E3334 10000005 */  b          .L800E334C
/* BE738 800E3338 2419FFFF */   addiu     $t9, $zero, -1
.L800E333C:
/* BE73C 800E333C 44199000 */  mfc1       $t9, $f18
/* BE740 800E3340 00000000 */  nop
/* BE744 800E3344 0720FFFB */  bltz       $t9, .L800E3334
/* BE748 800E3348 00000000 */   nop
.L800E334C:
/* BE74C 800E334C AE39002C */  sw         $t9, 0x2c($s1)
/* BE750 800E3350 8FA90030 */  lw         $t1, 0x30($sp)
/* BE754 800E3354 8E28002C */  lw         $t0, 0x2c($s1)
/* BE758 800E3358 2401F000 */  addiu      $at, $zero, -0x1000
/* BE75C 800E335C 00095080 */  sll        $t2, $t1, 2
/* BE760 800E3360 01495021 */  addu       $t2, $t2, $t1
/* BE764 800E3364 000A5080 */  sll        $t2, $t2, 2
/* BE768 800E3368 020A5821 */  addu       $t3, $s0, $t2
/* BE76C 800E336C 8D6C002C */  lw         $t4, 0x2c($t3)
/* BE770 800E3370 44D8F800 */  ctc1       $t8, $31
/* BE774 800E3374 01816824 */  and        $t5, $t4, $at
/* BE778 800E3378 010D7825 */  or         $t7, $t0, $t5
/* BE77C 800E337C 10000008 */  b          .L800E33A0
/* BE780 800E3380 AE2F002C */   sw        $t7, 0x2c($s1)
.L800E3384:
/* BE784 800E3384 8FAE0030 */  lw         $t6, 0x30($sp)
/* BE788 800E3388 000EC080 */  sll        $t8, $t6, 2
/* BE78C 800E338C 030EC021 */  addu       $t8, $t8, $t6
/* BE790 800E3390 0018C080 */  sll        $t8, $t8, 2
/* BE794 800E3394 0218C821 */  addu       $t9, $s0, $t8
/* BE798 800E3398 8F29002C */  lw         $t1, 0x2c($t9)
/* BE79C 800E339C AE29002C */  sw         $t1, 0x2c($s1)
.L800E33A0:
/* BE7A0 800E33A0 8E0A001C */  lw         $t2, 0x1c($s0)
/* BE7A4 800E33A4 AFAA0038 */  sw         $t2, 0x38($sp)
/* BE7A8 800E33A8 962B0000 */  lhu        $t3, ($s1)
/* BE7AC 800E33AC 316C0020 */  andi       $t4, $t3, 0x20
/* BE7B0 800E33B0 11800002 */  beqz       $t4, .L800E33BC
/* BE7B4 800E33B4 00000000 */   nop
/* BE7B8 800E33B8 AFA00038 */  sw         $zero, 0x38($sp)
.L800E33BC:
/* BE7BC 800E33BC 96280000 */  lhu        $t0, ($s1)
/* BE7C0 800E33C0 310D0040 */  andi       $t5, $t0, 0x40
/* BE7C4 800E33C4 11A00005 */  beqz       $t5, .L800E33DC
/* BE7C8 800E33C8 00000000 */   nop
/* BE7CC 800E33CC AE20002C */  sw         $zero, 0x2c($s1)
/* BE7D0 800E33D0 0C037228 */  jal        func_800DC8A0
/* BE7D4 800E33D4 8E240004 */   lw        $a0, 4($s1)
/* BE7D8 800E33D8 AFA2003C */  sw         $v0, 0x3c($sp)
.L800E33DC:
/* BE7DC 800E33DC 962F0000 */  lhu        $t7, ($s1)
/* BE7E0 800E33E0 31EE0080 */  andi       $t6, $t7, 0x80
/* BE7E4 800E33E4 11C00009 */  beqz       $t6, .L800E340C
/* BE7E8 800E33E8 00000000 */   nop
/* BE7EC 800E33EC 96380028 */  lhu        $t8, 0x28($s1)
/* BE7F0 800E33F0 3C0103FF */  lui        $at, 0x3ff
/* BE7F4 800E33F4 8E240004 */  lw         $a0, 4($s1)
/* BE7F8 800E33F8 0018CC00 */  sll        $t9, $t8, 0x10
/* BE7FC 800E33FC 03214824 */  and        $t1, $t9, $at
/* BE800 800E3400 0C037228 */  jal        func_800DC8A0
/* BE804 800E3404 AE29002C */   sw        $t1, 0x2c($s1)
/* BE808 800E3408 AFA2003C */  sw         $v0, 0x3c($sp)
.L800E340C:
/* BE80C 800E340C 8FAA003C */  lw         $t2, 0x3c($sp)
/* BE810 800E3410 3C0BA440 */  lui        $t3, %hi(D_A4400004)
/* BE814 800E3414 3C08A440 */  lui        $t0, %hi(D_A4400008)
/* BE818 800E3418 AD6A0004 */  sw         $t2, %lo(D_A4400004)($t3)
/* BE81C 800E341C 8E0C0008 */  lw         $t4, 8($s0)
/* BE820 800E3420 3C0FA440 */  lui        $t7, 0xa440
/* BE824 800E3424 3C18A440 */  lui        $t8, 0xa440
/* BE828 800E3428 AD0C0008 */  sw         $t4, %lo(D_A4400008)($t0)
/* BE82C 800E342C 8E0D000C */  lw         $t5, 0xc($s0)
/* BE830 800E3430 3C09A440 */  lui        $t1, 0xa440
/* BE834 800E3434 3C018011 */  lui        $at, 0x8011
/* BE838 800E3438 ADED0014 */  sw         $t5, 0x14($t7)
/* BE83C 800E343C 8E0E0010 */  lw         $t6, 0x10($s0)
/* BE840 800E3440 AF0E0018 */  sw         $t6, 0x18($t8)
/* BE844 800E3444 8E190014 */  lw         $t9, 0x14($s0)
/* BE848 800E3448 AD39001C */  sw         $t9, 0x1c($t1)
/* BE84C 800E344C 8E0A0018 */  lw         $t2, 0x18($s0)
/* BE850 800E3450 3C19A440 */  lui        $t9, 0xa440
/* BE854 800E3454 AD6A0020 */  sw         $t2, 0x20($t3)
/* BE858 800E3458 8FAC0038 */  lw         $t4, 0x38($sp)
/* BE85C 800E345C AD0C0024 */  sw         $t4, 0x24($t0)
/* BE860 800E3460 8FAD0030 */  lw         $t5, 0x30($sp)
/* BE864 800E3464 000D7880 */  sll        $t7, $t5, 2
/* BE868 800E3468 01ED7821 */  addu       $t7, $t7, $t5
/* BE86C 800E346C 000F7880 */  sll        $t7, $t7, 2
/* BE870 800E3470 020F7021 */  addu       $t6, $s0, $t7
/* BE874 800E3474 8DD80030 */  lw         $t8, 0x30($t6)
/* BE878 800E3478 AF380028 */  sw         $t8, 0x28($t9)
/* BE87C 800E347C 8FA90030 */  lw         $t1, 0x30($sp)
/* BE880 800E3480 00095080 */  sll        $t2, $t1, 2
/* BE884 800E3484 01495021 */  addu       $t2, $t2, $t1
/* BE888 800E3488 000A5080 */  sll        $t2, $t2, 2
/* BE88C 800E348C 020A5821 */  addu       $t3, $s0, $t2
/* BE890 800E3490 8D6C0034 */  lw         $t4, 0x34($t3)
/* BE894 800E3494 3C0AA440 */  lui        $t2, 0xa440
/* BE898 800E3498 AD0C002C */  sw         $t4, 0x2c($t0)
/* BE89C 800E349C 8FAD0030 */  lw         $t5, 0x30($sp)
/* BE8A0 800E34A0 3C0CA440 */  lui        $t4, 0xa440
/* BE8A4 800E34A4 000D7880 */  sll        $t7, $t5, 2
/* BE8A8 800E34A8 01ED7821 */  addu       $t7, $t7, $t5
/* BE8AC 800E34AC 000F7880 */  sll        $t7, $t7, 2
/* BE8B0 800E34B0 020F7021 */  addu       $t6, $s0, $t7
/* BE8B4 800E34B4 8DD80038 */  lw         $t8, 0x38($t6)
/* BE8B8 800E34B8 3C0DA440 */  lui        $t5, 0xa440
/* BE8BC 800E34BC 3C0F8011 */  lui        $t7, 0x8011
/* BE8C0 800E34C0 AF38000C */  sw         $t8, 0xc($t9)
/* BE8C4 800E34C4 8E290020 */  lw         $t1, 0x20($s1)
/* BE8C8 800E34C8 3C188011 */  lui        $t8, 0x8011
/* BE8CC 800E34CC 3C0E8011 */  lui        $t6, 0x8011
/* BE8D0 800E34D0 AD490030 */  sw         $t1, 0x30($t2)
/* BE8D4 800E34D4 8E2B002C */  lw         $t3, 0x2c($s1)
/* BE8D8 800E34D8 AD8B0034 */  sw         $t3, 0x34($t4)
/* BE8DC 800E34DC 8E28000C */  lw         $t0, 0xc($s1)
/* BE8E0 800E34E0 ADA80000 */  sw         $t0, ($t5)
/* BE8E4 800E34E4 8DEF9E90 */  lw         $t7, -0x6170($t7)
/* BE8E8 800E34E8 AC2F9E94 */  sw         $t7, -0x616c($at)
/* BE8EC 800E34EC 3C018011 */  lui        $at, %hi(D_80109E90)
/* BE8F0 800E34F0 AC319E90 */  sw         $s1, %lo(D_80109E90)($at)
/* BE8F4 800E34F4 8F189E90 */  lw         $t8, -0x6170($t8)
/* BE8F8 800E34F8 8DCE9E94 */  lw         $t6, -0x616c($t6)
/* BE8FC 800E34FC 270A0030 */  addiu      $t2, $t8, 0x30
.L800E3500:
/* BE900 800E3500 8F010000 */  lw         $at, ($t8)
/* BE904 800E3504 2718000C */  addiu      $t8, $t8, 0xc
/* BE908 800E3508 25CE000C */  addiu      $t6, $t6, 0xc
/* BE90C 800E350C ADC1FFF4 */  sw         $at, -0xc($t6)
/* BE910 800E3510 8F01FFF8 */  lw         $at, -8($t8)
/* BE914 800E3514 ADC1FFF8 */  sw         $at, -8($t6)
/* BE918 800E3518 8F01FFFC */  lw         $at, -4($t8)
/* BE91C 800E351C 170AFFF8 */  bne        $t8, $t2, .L800E3500
/* BE920 800E3520 ADC1FFFC */   sw        $at, -4($t6)
/* BE924 800E3524 8FBF0024 */  lw         $ra, 0x24($sp)
/* BE928 800E3528 8FB00018 */  lw         $s0, 0x18($sp)
/* BE92C 800E352C 8FB1001C */  lw         $s1, 0x1c($sp)
/* BE930 800E3530 8FB20020 */  lw         $s2, 0x20($sp)
/* BE934 800E3534 03E00008 */  jr         $ra
/* BE938 800E3538 27BD0048 */   addiu     $sp, $sp, 0x48
/* BE93C 800E353C 00000000 */  nop
