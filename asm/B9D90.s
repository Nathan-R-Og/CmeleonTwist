.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DE990
/* B9D90 800DE990 03E00008 */  jr         $ra
/* B9D94 800DE994 00000000 */   nop

glabel func_800DE998
/* B9D98 800DE998 8C8E0044 */  lw         $t6, 0x44($a0)
/* B9D9C 800DE99C 44852000 */  mtc1       $a1, $f4
/* B9DA0 800DE9A0 3C018011 */  lui        $at, %hi(D_80110C10)
/* B9DA4 800DE9A4 448E4000 */  mtc1       $t6, $f8
/* B9DA8 800DE9A8 468021A0 */  cvt.s.w    $f6, $f4
/* B9DAC 800DE9AC D4240C10 */  ldc1       $f4, %lo(D_80110C10)($at)
/* B9DB0 800DE9B0 3C013FE0 */  lui        $at, 0x3fe0
/* B9DB4 800DE9B4 44813800 */  mtc1       $at, $f7
/* B9DB8 800DE9B8 2401FFF0 */  addiu      $at, $zero, -0x10
/* B9DBC 800DE9BC 468042A0 */  cvt.s.w    $f10, $f8
/* B9DC0 800DE9C0 460A3402 */  mul.s      $f16, $f6, $f10
/* B9DC4 800DE9C4 44803000 */  mtc1       $zero, $f6
/* B9DC8 800DE9C8 460084A1 */  cvt.d.s    $f18, $f16
/* B9DCC 800DE9CC 46249203 */  div.d      $f8, $f18, $f4
/* B9DD0 800DE9D0 46264280 */  add.d      $f10, $f8, $f6
/* B9DD4 800DE9D4 46205020 */  cvt.s.d    $f0, $f10
/* B9DD8 800DE9D8 4600040D */  trunc.w.s  $f16, $f0
/* B9DDC 800DE9DC 44028000 */  mfc1       $v0, $f16
/* B9DE0 800DE9E0 00000000 */  nop
/* B9DE4 800DE9E4 0041C024 */  and        $t8, $v0, $at
/* B9DE8 800DE9E8 03E00008 */  jr         $ra
/* B9DEC 800DE9EC 03001025 */   or        $v0, $t8, $zero

glabel func_800DE9F0
/* B9DF0 800DE9F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9DF4 800DE9F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9DF8 800DE9F8 AFA40018 */  sw         $a0, 0x18($sp)
/* B9DFC 800DE9FC AFA5001C */  sw         $a1, 0x1c($sp)
/* B9E00 800DEA00 0C037248 */  jal        func_800DC920
/* B9E04 800DEA04 00A02025 */   or        $a0, $a1, $zero
/* B9E08 800DEA08 8FA50018 */  lw         $a1, 0x18($sp)
/* B9E0C 800DEA0C 8FA4001C */  lw         $a0, 0x1c($sp)
/* B9E10 800DEA10 0C037254 */  jal        func_800DC950
/* B9E14 800DEA14 24A50014 */   addiu     $a1, $a1, 0x14
/* B9E18 800DEA18 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9E1C 800DEA1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B9E20 800DEA20 03E00008 */  jr         $ra
/* B9E24 800DEA24 00000000 */   nop

glabel func_800DEA28
/* B9E28 800DEA28 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B9E2C 800DEA2C AFBF0024 */  sw         $ra, 0x24($sp)
/* B9E30 800DEA30 AFB20020 */  sw         $s2, 0x20($sp)
/* B9E34 800DEA34 AFB1001C */  sw         $s1, 0x1c($sp)
/* B9E38 800DEA38 AFB00018 */  sw         $s0, 0x18($sp)
/* B9E3C 800DEA3C 8C900014 */  lw         $s0, 0x14($a0)
/* B9E40 800DEA40 00808825 */  or         $s1, $a0, $zero
/* B9E44 800DEA44 24920004 */  addiu      $s2, $a0, 4
/* B9E48 800DEA48 5200000A */  beql       $s0, $zero, .L800DEA74
/* B9E4C 800DEA4C 8FBF0024 */   lw        $ra, 0x24($sp)
.L800DEA50:
/* B9E50 800DEA50 0C037248 */  jal        func_800DC920
/* B9E54 800DEA54 02002025 */   or        $a0, $s0, $zero
/* B9E58 800DEA58 02002025 */  or         $a0, $s0, $zero
/* B9E5C 800DEA5C 0C037254 */  jal        func_800DC950
/* B9E60 800DEA60 02402825 */   or        $a1, $s2, $zero
/* B9E64 800DEA64 8E300014 */  lw         $s0, 0x14($s1)
/* B9E68 800DEA68 1600FFF9 */  bnez       $s0, .L800DEA50
/* B9E6C 800DEA6C 00000000 */   nop
/* B9E70 800DEA70 8FBF0024 */  lw         $ra, 0x24($sp)
.L800DEA74:
/* B9E74 800DEA74 8FB00018 */  lw         $s0, 0x18($sp)
/* B9E78 800DEA78 8FB1001C */  lw         $s1, 0x1c($sp)
/* B9E7C 800DEA7C 8FB20020 */  lw         $s2, 0x20($sp)
/* B9E80 800DEA80 03E00008 */  jr         $ra
/* B9E84 800DEA84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800DEA88
/* B9E88 800DEA88 3C028011 */  lui        $v0, %hi(D_80109DA0)
/* B9E8C 800DEA8C 8C429DA0 */  lw         $v0, %lo(D_80109DA0)($v0)
/* B9E90 800DEA90 8C4E002C */  lw         $t6, 0x2c($v0)
/* B9E94 800DEA94 AC8E0000 */  sw         $t6, ($a0)
/* B9E98 800DEA98 03E00008 */  jr         $ra
/* B9E9C 800DEA9C AC44002C */   sw        $a0, 0x2c($v0)

glabel func_800DEAA0
/* B9EA0 800DEAA0 3C028011 */  lui        $v0, %hi(D_80109DA0)
/* B9EA4 800DEAA4 8C429DA0 */  lw         $v0, %lo(D_80109DA0)($v0)
/* B9EA8 800DEAA8 00001825 */  or         $v1, $zero, $zero
/* B9EAC 800DEAAC 8C44002C */  lw         $a0, 0x2c($v0)
/* B9EB0 800DEAB0 10800005 */  beqz       $a0, .L800DEAC8
/* B9EB4 800DEAB4 00000000 */   nop
/* B9EB8 800DEAB8 8C8E0000 */  lw         $t6, ($a0)
/* B9EBC 800DEABC 00801825 */  or         $v1, $a0, $zero
/* B9EC0 800DEAC0 AC4E002C */  sw         $t6, 0x2c($v0)
/* B9EC4 800DEAC4 AC800000 */  sw         $zero, ($a0)
.L800DEAC8:
/* B9EC8 800DEAC8 03E00008 */  jr         $ra
/* B9ECC 800DEACC 00601025 */   or        $v0, $v1, $zero

glabel func_800DEAD0
/* B9ED0 800DEAD0 03E00008 */  jr         $ra
/* B9ED4 800DEAD4 00000000 */   nop

glabel func_800DEAD8
/* B9ED8 800DEAD8 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* B9EDC 800DEADC AFB10030 */  sw         $s1, 0x30($sp)
/* B9EE0 800DEAE0 3C118011 */  lui        $s1, %hi(D_80109DA0)
/* B9EE4 800DEAE4 8E319DA0 */  lw         $s1, %lo(D_80109DA0)($s1)
/* B9EE8 800DEAE8 AFBF004C */  sw         $ra, 0x4c($sp)
/* B9EEC 800DEAEC AFB70048 */  sw         $s7, 0x48($sp)
/* B9EF0 800DEAF0 AFB60044 */  sw         $s6, 0x44($sp)
/* B9EF4 800DEAF4 AFB50040 */  sw         $s5, 0x40($sp)
/* B9EF8 800DEAF8 AFB4003C */  sw         $s4, 0x3c($sp)
/* B9EFC 800DEAFC AFB30038 */  sw         $s3, 0x38($sp)
/* B9F00 800DEB00 AFB20034 */  sw         $s2, 0x34($sp)
/* B9F04 800DEB04 AFB0002C */  sw         $s0, 0x2c($sp)
/* B9F08 800DEB08 F7B60020 */  sdc1       $f22, 0x20($sp)
/* B9F0C 800DEB0C F7B40018 */  sdc1       $f20, 0x18($sp)
/* B9F10 800DEB10 AFA400B8 */  sw         $a0, 0xb8($sp)
/* B9F14 800DEB14 AFA500BC */  sw         $a1, 0xbc($sp)
/* B9F18 800DEB18 A7A000AA */  sh         $zero, 0xaa($sp)
/* B9F1C 800DEB1C 8E2F0000 */  lw         $t7, ($s1)
/* B9F20 800DEB20 00E09825 */  or         $s3, $a3, $zero
/* B9F24 800DEB24 0080A025 */  or         $s4, $a0, $zero
/* B9F28 800DEB28 15E00004 */  bnez       $t7, .L800DEB3C
/* B9F2C 800DEB2C 00C0A825 */   or        $s5, $a2, $zero
/* B9F30 800DEB30 ACA00000 */  sw         $zero, ($a1)
/* B9F34 800DEB34 10000081 */  b          .L800DED3C
/* B9F38 800DEB38 00801025 */   or        $v0, $a0, $zero
.L800DEB3C:
/* B9F3C 800DEB3C AFA000B4 */  sw         $zero, 0xb4($sp)
/* B9F40 800DEB40 8E220000 */  lw         $v0, ($s1)
/* B9F44 800DEB44 3C037FFF */  lui        $v1, 0x7fff
/* B9F48 800DEB48 3463FFFF */  ori        $v1, $v1, 0xffff
/* B9F4C 800DEB4C 1040000E */  beqz       $v0, .L800DEB88
/* B9F50 800DEB50 2412FFF0 */   addiu     $s2, $zero, -0x10
/* B9F54 800DEB54 8E240020 */  lw         $a0, 0x20($s1)
/* B9F58 800DEB58 8C590010 */  lw         $t9, 0x10($v0)
.L800DEB5C:
/* B9F5C 800DEB5C 03244023 */  subu       $t0, $t9, $a0
/* B9F60 800DEB60 0103082A */  slt        $at, $t0, $v1
/* B9F64 800DEB64 50200006 */  beql       $at, $zero, .L800DEB80
/* B9F68 800DEB68 8C420000 */   lw        $v0, ($v0)
/* B9F6C 800DEB6C AFA200B4 */  sw         $v0, 0xb4($sp)
/* B9F70 800DEB70 8C490010 */  lw         $t1, 0x10($v0)
/* B9F74 800DEB74 8E240020 */  lw         $a0, 0x20($s1)
/* B9F78 800DEB78 01241823 */  subu       $v1, $t1, $a0
/* B9F7C 800DEB7C 8C420000 */  lw         $v0, ($v0)
.L800DEB80:
/* B9F80 800DEB80 5440FFF6 */  bnel       $v0, $zero, .L800DEB5C
/* B9F84 800DEB84 8C590010 */   lw        $t9, 0x10($v0)
.L800DEB88:
/* B9F88 800DEB88 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* B9F8C 800DEB8C 8E240020 */  lw         $a0, 0x20($s1)
/* B9F90 800DEB90 8D420010 */  lw         $v0, 0x10($t2)
/* B9F94 800DEB94 00445823 */  subu       $t3, $v0, $a0
/* B9F98 800DEB98 0173082A */  slt        $at, $t3, $s3
/* B9F9C 800DEB9C 10200038 */  beqz       $at, .L800DEC80
/* B9FA0 800DEBA0 AE22001C */   sw        $v0, 0x1c($s1)
/* B9FA4 800DEBA4 3C013FE0 */  lui        $at, 0x3fe0
/* B9FA8 800DEBA8 4481B800 */  mtc1       $at, $f23
/* B9FAC 800DEBAC 3C018011 */  lui        $at, %hi(D_80110C18)
/* B9FB0 800DEBB0 4480B000 */  mtc1       $zero, $f22
/* B9FB4 800DEBB4 D4340C18 */  ldc1       $f20, %lo(D_80110C18)($at)
.L800DEBB8:
/* B9FB8 800DEBB8 8E2C001C */  lw         $t4, 0x1c($s1)
/* B9FBC 800DEBBC 3C107FFF */  lui        $s0, 0x7fff
/* B9FC0 800DEBC0 3610FFFF */  ori        $s0, $s0, 0xffff
/* B9FC4 800DEBC4 01926824 */  and        $t5, $t4, $s2
/* B9FC8 800DEBC8 AE2D001C */  sw         $t5, 0x1c($s1)
/* B9FCC 800DEBCC 8FA400B4 */  lw         $a0, 0xb4($sp)
/* B9FD0 800DEBD0 8C990008 */  lw         $t9, 8($a0)
/* B9FD4 800DEBD4 0320F809 */  jalr       $t9
/* B9FD8 800DEBD8 00000000 */   nop
/* B9FDC 800DEBDC 8E380044 */  lw         $t8, 0x44($s1)
/* B9FE0 800DEBE0 44822000 */  mtc1       $v0, $f4
/* B9FE4 800DEBE4 8FA800B4 */  lw         $t0, 0xb4($sp)
/* B9FE8 800DEBE8 44984000 */  mtc1       $t8, $f8
/* B9FEC 800DEBEC 468021A0 */  cvt.s.w    $f6, $f4
/* B9FF0 800DEBF0 8D090010 */  lw         $t1, 0x10($t0)
/* B9FF4 800DEBF4 468042A0 */  cvt.s.w    $f10, $f8
/* B9FF8 800DEBF8 460A3402 */  mul.s      $f16, $f6, $f10
/* B9FFC 800DEBFC 460084A1 */  cvt.d.s    $f18, $f16
/* BA000 800DEC00 46349103 */  div.d      $f4, $f18, $f20
/* BA004 800DEC04 46362200 */  add.d      $f8, $f4, $f22
/* BA008 800DEC08 46204020 */  cvt.s.d    $f0, $f8
/* BA00C 800DEC0C 4600018D */  trunc.w.s  $f6, $f0
/* BA010 800DEC10 44023000 */  mfc1       $v0, $f6
/* BA014 800DEC14 00000000 */  nop
/* BA018 800DEC18 01225021 */  addu       $t2, $t1, $v0
/* BA01C 800DEC1C AD0A0010 */  sw         $t2, 0x10($t0)
/* BA020 800DEC20 AFA000B4 */  sw         $zero, 0xb4($sp)
/* BA024 800DEC24 8E230000 */  lw         $v1, ($s1)
/* BA028 800DEC28 5060000F */  beql       $v1, $zero, .L800DEC68
/* BA02C 800DEC2C 8FAF00B4 */   lw        $t7, 0xb4($sp)
/* BA030 800DEC30 8E240020 */  lw         $a0, 0x20($s1)
/* BA034 800DEC34 8C6B0010 */  lw         $t3, 0x10($v1)
.L800DEC38:
/* BA038 800DEC38 01646023 */  subu       $t4, $t3, $a0
/* BA03C 800DEC3C 0190082A */  slt        $at, $t4, $s0
/* BA040 800DEC40 50200006 */  beql       $at, $zero, .L800DEC5C
/* BA044 800DEC44 8C630000 */   lw        $v1, ($v1)
/* BA048 800DEC48 AFA300B4 */  sw         $v1, 0xb4($sp)
/* BA04C 800DEC4C 8C6D0010 */  lw         $t5, 0x10($v1)
/* BA050 800DEC50 8E240020 */  lw         $a0, 0x20($s1)
/* BA054 800DEC54 01A48023 */  subu       $s0, $t5, $a0
/* BA058 800DEC58 8C630000 */  lw         $v1, ($v1)
.L800DEC5C:
/* BA05C 800DEC5C 5460FFF6 */  bnel       $v1, $zero, .L800DEC38
/* BA060 800DEC60 8C6B0010 */   lw        $t3, 0x10($v1)
/* BA064 800DEC64 8FAF00B4 */  lw         $t7, 0xb4($sp)
.L800DEC68:
/* BA068 800DEC68 8E240020 */  lw         $a0, 0x20($s1)
/* BA06C 800DEC6C 8DE20010 */  lw         $v0, 0x10($t7)
/* BA070 800DEC70 0044C823 */  subu       $t9, $v0, $a0
/* BA074 800DEC74 0333082A */  slt        $at, $t9, $s3
/* BA078 800DEC78 1420FFCF */  bnez       $at, .L800DEBB8
/* BA07C 800DEC7C AE22001C */   sw        $v0, 0x1c($s1)
.L800DEC80:
/* BA080 800DEC80 8E38001C */  lw         $t8, 0x1c($s1)
/* BA084 800DEC84 2412FFF0 */  addiu      $s2, $zero, -0x10
/* BA088 800DEC88 27B700AA */  addiu      $s7, $sp, 0xaa
/* BA08C 800DEC8C 03127024 */  and        $t6, $t8, $s2
/* BA090 800DEC90 1A600022 */  blez       $s3, .L800DED1C
/* BA094 800DEC94 AE2E001C */   sw        $t6, 0x1c($s1)
/* BA098 800DEC98 3C160700 */  lui        $s6, 0x700
.L800DEC9C:
/* BA09C 800DEC9C 8E220048 */  lw         $v0, 0x48($s1)
/* BA0A0 800DECA0 02608025 */  or         $s0, $s3, $zero
/* BA0A4 800DECA4 0053082A */  slt        $at, $v0, $s3
/* BA0A8 800DECA8 10200003 */  beqz       $at, .L800DECB8
/* BA0AC 800DECAC 00000000 */   nop
/* BA0B0 800DECB0 10000001 */  b          .L800DECB8
/* BA0B4 800DECB4 00408025 */   or        $s0, $v0, $zero
.L800DECB8:
/* BA0B8 800DECB8 AE960000 */  sw         $s6, ($s4)
/* BA0BC 800DECBC AE800004 */  sw         $zero, 4($s4)
/* BA0C0 800DECC0 8E320038 */  lw         $s2, 0x38($s1)
/* BA0C4 800DECC4 24050006 */  addiu      $a1, $zero, 6
/* BA0C8 800DECC8 02A03025 */  or         $a2, $s5, $zero
/* BA0CC 800DECCC 8E590008 */  lw         $t9, 8($s2)
/* BA0D0 800DECD0 02402025 */  or         $a0, $s2, $zero
/* BA0D4 800DECD4 0320F809 */  jalr       $t9
/* BA0D8 800DECD8 00000000 */   nop
/* BA0DC 800DECDC 8E270020 */  lw         $a3, 0x20($s1)
/* BA0E0 800DECE0 26890008 */  addiu      $t1, $s4, 8
/* BA0E4 800DECE4 AFA90010 */  sw         $t1, 0x10($sp)
/* BA0E8 800DECE8 8E590004 */  lw         $t9, 4($s2)
/* BA0EC 800DECEC 02402025 */  or         $a0, $s2, $zero
/* BA0F0 800DECF0 02E02825 */  or         $a1, $s7, $zero
/* BA0F4 800DECF4 0320F809 */  jalr       $t9
/* BA0F8 800DECF8 02003025 */   or        $a2, $s0, $zero
/* BA0FC 800DECFC 8E2B0020 */  lw         $t3, 0x20($s1)
/* BA100 800DED00 02709823 */  subu       $s3, $s3, $s0
/* BA104 800DED04 00104080 */  sll        $t0, $s0, 2
/* BA108 800DED08 01706021 */  addu       $t4, $t3, $s0
/* BA10C 800DED0C 0040A025 */  or         $s4, $v0, $zero
/* BA110 800DED10 02A8A821 */  addu       $s5, $s5, $t0
/* BA114 800DED14 1E60FFE1 */  bgtz       $s3, .L800DEC9C
/* BA118 800DED18 AE2C0020 */   sw        $t4, 0x20($s1)
.L800DED1C:
/* BA11C 800DED1C 8FAD00B8 */  lw         $t5, 0xb8($sp)
/* BA120 800DED20 8FAE00BC */  lw         $t6, 0xbc($sp)
/* BA124 800DED24 02202025 */  or         $a0, $s1, $zero
/* BA128 800DED28 028D7823 */  subu       $t7, $s4, $t5
/* BA12C 800DED2C 000FC0C3 */  sra        $t8, $t7, 3
/* BA130 800DED30 0C037A8A */  jal        func_800DEA28
/* BA134 800DED34 ADD80000 */   sw        $t8, ($t6)
/* BA138 800DED38 02801025 */  or         $v0, $s4, $zero
.L800DED3C:
/* BA13C 800DED3C 8FBF004C */  lw         $ra, 0x4c($sp)
/* BA140 800DED40 D7B40018 */  ldc1       $f20, 0x18($sp)
/* BA144 800DED44 D7B60020 */  ldc1       $f22, 0x20($sp)
/* BA148 800DED48 8FB0002C */  lw         $s0, 0x2c($sp)
/* BA14C 800DED4C 8FB10030 */  lw         $s1, 0x30($sp)
/* BA150 800DED50 8FB20034 */  lw         $s2, 0x34($sp)
/* BA154 800DED54 8FB30038 */  lw         $s3, 0x38($sp)
/* BA158 800DED58 8FB4003C */  lw         $s4, 0x3c($sp)
/* BA15C 800DED5C 8FB50040 */  lw         $s5, 0x40($sp)
/* BA160 800DED60 8FB60044 */  lw         $s6, 0x44($sp)
/* BA164 800DED64 8FB70048 */  lw         $s7, 0x48($sp)
/* BA168 800DED68 03E00008 */  jr         $ra
/* BA16C 800DED6C 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel func_800DED70
/* BA170 800DED70 27BDFF88 */  addiu      $sp, $sp, -0x78
/* BA174 800DED74 AFBF0044 */  sw         $ra, 0x44($sp)
/* BA178 800DED78 AFBE0040 */  sw         $fp, 0x40($sp)
/* BA17C 800DED7C AFB7003C */  sw         $s7, 0x3c($sp)
/* BA180 800DED80 AFB60038 */  sw         $s6, 0x38($sp)
/* BA184 800DED84 AFB50034 */  sw         $s5, 0x34($sp)
/* BA188 800DED88 AFB40030 */  sw         $s4, 0x30($sp)
/* BA18C 800DED8C AFB3002C */  sw         $s3, 0x2c($sp)
/* BA190 800DED90 AFB20028 */  sw         $s2, 0x28($sp)
/* BA194 800DED94 AFB10024 */  sw         $s1, 0x24($sp)
/* BA198 800DED98 AFB00020 */  sw         $s0, 0x20($sp)
/* BA19C 800DED9C 8CB70014 */  lw         $s7, 0x14($a1)
/* BA1A0 800DEDA0 AC800000 */  sw         $zero, ($a0)
/* BA1A4 800DEDA4 8CAE0004 */  lw         $t6, 4($a1)
/* BA1A8 800DEDA8 AC800020 */  sw         $zero, 0x20($a0)
/* BA1AC 800DEDAC AC80001C */  sw         $zero, 0x1c($a0)
/* BA1B0 800DEDB0 AC8E003C */  sw         $t6, 0x3c($a0)
/* BA1B4 800DEDB4 8CAF0018 */  lw         $t7, 0x18($a1)
/* BA1B8 800DEDB8 241800A0 */  addiu      $t8, $zero, 0xa0
/* BA1BC 800DEDBC AC980048 */  sw         $t8, 0x48($a0)
/* BA1C0 800DEDC0 AC8F0044 */  sw         $t7, 0x44($a0)
/* BA1C4 800DEDC4 8CB90010 */  lw         $t9, 0x10($a1)
/* BA1C8 800DEDC8 0080B025 */  or         $s6, $a0, $zero
/* BA1CC 800DEDCC 00A0F025 */  or         $fp, $a1, $zero
/* BA1D0 800DEDD0 2408001C */  addiu      $t0, $zero, 0x1c
/* BA1D4 800DEDD4 AC990024 */  sw         $t9, 0x24($a0)
/* BA1D8 800DEDD8 AFA80010 */  sw         $t0, 0x10($sp)
/* BA1DC 800DEDDC 00002025 */  or         $a0, $zero, $zero
/* BA1E0 800DEDE0 00002825 */  or         $a1, $zero, $zero
/* BA1E4 800DEDE4 24070001 */  addiu      $a3, $zero, 1
/* BA1E8 800DEDE8 0C037278 */  jal        func_800DC9E0
/* BA1EC 800DEDEC 02E03025 */   or        $a2, $s7, $zero
/* BA1F0 800DEDF0 AFA2005C */  sw         $v0, 0x5c($sp)
/* BA1F4 800DEDF4 0C03A36C */  jal        func_800E8DB0
/* BA1F8 800DEDF8 00402025 */   or        $a0, $v0, $zero
/* BA1FC 800DEDFC 8FA9005C */  lw         $t1, 0x5c($sp)
/* BA200 800DEE00 240A004C */  addiu      $t2, $zero, 0x4c
/* BA204 800DEE04 00002025 */  or         $a0, $zero, $zero
/* BA208 800DEE08 AEC90038 */  sw         $t1, 0x38($s6)
/* BA20C 800DEE0C AFAA0010 */  sw         $t2, 0x10($sp)
/* BA210 800DEE10 00002825 */  or         $a1, $zero, $zero
/* BA214 800DEE14 02E03025 */  or         $a2, $s7, $zero
/* BA218 800DEE18 0C037278 */  jal        func_800DC9E0
/* BA21C 800DEE1C 24070001 */   addiu     $a3, $zero, 1
/* BA220 800DEE20 240B0001 */  addiu      $t3, $zero, 1
/* BA224 800DEE24 AEC20034 */  sw         $v0, 0x34($s6)
/* BA228 800DEE28 AECB0040 */  sw         $t3, 0x40($s6)
/* BA22C 800DEE2C 8FC70004 */  lw         $a3, 4($fp)
/* BA230 800DEE30 240C0004 */  addiu      $t4, $zero, 4
/* BA234 800DEE34 AFAC0010 */  sw         $t4, 0x10($sp)
/* BA238 800DEE38 00002025 */  or         $a0, $zero, $zero
/* BA23C 800DEE3C 00002825 */  or         $a1, $zero, $zero
/* BA240 800DEE40 0C037278 */  jal        func_800DC9E0
/* BA244 800DEE44 02E03025 */   or        $a2, $s7, $zero
/* BA248 800DEE48 8EC40034 */  lw         $a0, 0x34($s6)
/* BA24C 800DEE4C 00402825 */  or         $a1, $v0, $zero
/* BA250 800DEE50 0C03A392 */  jal        func_800E8E48
/* BA254 800DEE54 8FC60004 */   lw        $a2, 4($fp)
/* BA258 800DEE58 240D0020 */  addiu      $t5, $zero, 0x20
/* BA25C 800DEE5C AFAD0010 */  sw         $t5, 0x10($sp)
/* BA260 800DEE60 00002025 */  or         $a0, $zero, $zero
/* BA264 800DEE64 00002825 */  or         $a1, $zero, $zero
/* BA268 800DEE68 02E03025 */  or         $a2, $s7, $zero
/* BA26C 800DEE6C 0C037278 */  jal        func_800DC9E0
/* BA270 800DEE70 24070001 */   addiu     $a3, $zero, 1
/* BA274 800DEE74 AEC20030 */  sw         $v0, 0x30($s6)
/* BA278 800DEE78 8FC70004 */  lw         $a3, 4($fp)
/* BA27C 800DEE7C 240E0004 */  addiu      $t6, $zero, 4
/* BA280 800DEE80 AFAE0010 */  sw         $t6, 0x10($sp)
/* BA284 800DEE84 00002025 */  or         $a0, $zero, $zero
/* BA288 800DEE88 00002825 */  or         $a1, $zero, $zero
/* BA28C 800DEE8C 0C037278 */  jal        func_800DC9E0
/* BA290 800DEE90 02E03025 */   or        $a2, $s7, $zero
/* BA294 800DEE94 8EC40030 */  lw         $a0, 0x30($s6)
/* BA298 800DEE98 00402825 */  or         $a1, $v0, $zero
/* BA29C 800DEE9C 0C03A37D */  jal        func_800E8DF4
/* BA2A0 800DEEA0 8FC60004 */   lw        $a2, 4($fp)
/* BA2A4 800DEEA4 93CF001C */  lbu        $t7, 0x1c($fp)
/* BA2A8 800DEEA8 02C02025 */  or         $a0, $s6, $zero
/* BA2AC 800DEEAC 03C03025 */  or         $a2, $fp, $zero
/* BA2B0 800DEEB0 11E00006 */  beqz       $t7, .L800DEECC
/* BA2B4 800DEEB4 24050002 */   addiu     $a1, $zero, 2
/* BA2B8 800DEEB8 00002825 */  or         $a1, $zero, $zero
/* BA2BC 800DEEBC 0C03A554 */  jal        func_800E9550
/* BA2C0 800DEEC0 02E03825 */   or        $a3, $s7, $zero
/* BA2C4 800DEEC4 10000005 */  b          .L800DEEDC
/* BA2C8 800DEEC8 AEC00004 */   sw        $zero, 4($s6)
.L800DEECC:
/* BA2CC 800DEECC 8EC40030 */  lw         $a0, 0x30($s6)
/* BA2D0 800DEED0 0C03A57C */  jal        func_800E95F0
/* BA2D4 800DEED4 8EC60034 */   lw        $a2, 0x34($s6)
/* BA2D8 800DEED8 AEC00004 */  sw         $zero, 4($s6)
.L800DEEDC:
/* BA2DC 800DEEDC AEC00008 */  sw         $zero, 8($s6)
/* BA2E0 800DEEE0 AEC00014 */  sw         $zero, 0x14($s6)
/* BA2E4 800DEEE4 AEC00018 */  sw         $zero, 0x18($s6)
/* BA2E8 800DEEE8 AEC0000C */  sw         $zero, 0xc($s6)
/* BA2EC 800DEEEC AEC00010 */  sw         $zero, 0x10($s6)
/* BA2F0 800DEEF0 8FC70004 */  lw         $a3, 4($fp)
/* BA2F4 800DEEF4 241800DC */  addiu      $t8, $zero, 0xdc
/* BA2F8 800DEEF8 AFB80010 */  sw         $t8, 0x10($sp)
/* BA2FC 800DEEFC 00002025 */  or         $a0, $zero, $zero
/* BA300 800DEF00 00002825 */  or         $a1, $zero, $zero
/* BA304 800DEF04 0C037278 */  jal        func_800DC9E0
/* BA308 800DEF08 02E03025 */   or        $a2, $s7, $zero
/* BA30C 800DEF0C 8FD90004 */  lw         $t9, 4($fp)
/* BA310 800DEF10 0000A025 */  or         $s4, $zero, $zero
/* BA314 800DEF14 00408025 */  or         $s0, $v0, $zero
/* BA318 800DEF18 1B20002F */  blez       $t9, .L800DEFD8
/* BA31C 800DEF1C 26C50004 */   addiu     $a1, $s6, 4
/* BA320 800DEF20 2451008C */  addiu      $s1, $v0, 0x8c
/* BA324 800DEF24 24520058 */  addiu      $s2, $v0, 0x58
/* BA328 800DEF28 24530010 */  addiu      $s3, $v0, 0x10
/* BA32C 800DEF2C AFA50048 */  sw         $a1, 0x48($sp)
.L800DEF30:
/* BA330 800DEF30 8FA50048 */  lw         $a1, 0x48($sp)
/* BA334 800DEF34 0200A825 */  or         $s5, $s0, $zero
/* BA338 800DEF38 0C037254 */  jal        func_800DC950
/* BA33C 800DEF3C 02002025 */   or        $a0, $s0, $zero
/* BA340 800DEF40 AE000008 */  sw         $zero, 8($s0)
/* BA344 800DEF44 8EC50024 */  lw         $a1, 0x24($s6)
/* BA348 800DEF48 02602025 */  or         $a0, $s3, $zero
/* BA34C 800DEF4C 0C03A3C9 */  jal        func_800E8F24
/* BA350 800DEF50 02E03025 */   or        $a2, $s7, $zero
/* BA354 800DEF54 02602025 */  or         $a0, $s3, $zero
/* BA358 800DEF58 24050001 */  addiu      $a1, $zero, 1
/* BA35C 800DEF5C 0C03A5D0 */  jal        func_800E9740
/* BA360 800DEF60 00003025 */   or        $a2, $zero, $zero
/* BA364 800DEF64 02402025 */  or         $a0, $s2, $zero
/* BA368 800DEF68 0C03A3A7 */  jal        func_800E8E9C
/* BA36C 800DEF6C 02E02825 */   or        $a1, $s7, $zero
/* BA370 800DEF70 02402025 */  or         $a0, $s2, $zero
/* BA374 800DEF74 24050001 */  addiu      $a1, $zero, 1
/* BA378 800DEF78 0C03A8A4 */  jal        func_800EA290
/* BA37C 800DEF7C 02603025 */   or        $a2, $s3, $zero
/* BA380 800DEF80 02202025 */  or         $a0, $s1, $zero
/* BA384 800DEF84 0C03A3F3 */  jal        func_800E8FCC
/* BA388 800DEF88 02E02825 */   or        $a1, $s7, $zero
/* BA38C 800DEF8C 02202025 */  or         $a0, $s1, $zero
/* BA390 800DEF90 24050001 */  addiu      $a1, $zero, 1
/* BA394 800DEF94 0C03A9A9 */  jal        func_800EA6A4
/* BA398 800DEF98 02403025 */   or        $a2, $s2, $zero
/* BA39C 800DEF9C 8EC40034 */  lw         $a0, 0x34($s6)
/* BA3A0 800DEFA0 24050002 */  addiu      $a1, $zero, 2
/* BA3A4 800DEFA4 0C03AC7C */  jal        func_800EB1F0
/* BA3A8 800DEFA8 02203025 */   or        $a2, $s1, $zero
/* BA3AC 800DEFAC 26A8008C */  addiu      $t0, $s5, 0x8c
/* BA3B0 800DEFB0 AEA8000C */  sw         $t0, 0xc($s5)
/* BA3B4 800DEFB4 8FC90004 */  lw         $t1, 4($fp)
/* BA3B8 800DEFB8 26940001 */  addiu      $s4, $s4, 1
/* BA3BC 800DEFBC 261000DC */  addiu      $s0, $s0, 0xdc
/* BA3C0 800DEFC0 0289082A */  slt        $at, $s4, $t1
/* BA3C4 800DEFC4 263100DC */  addiu      $s1, $s1, 0xdc
/* BA3C8 800DEFC8 265200DC */  addiu      $s2, $s2, 0xdc
/* BA3CC 800DEFCC 1420FFD8 */  bnez       $at, .L800DEF30
/* BA3D0 800DEFD0 267300DC */   addiu     $s3, $s3, 0xdc
/* BA3D4 800DEFD4 0000A025 */  or         $s4, $zero, $zero
.L800DEFD8:
/* BA3D8 800DEFD8 8FA4005C */  lw         $a0, 0x5c($sp)
/* BA3DC 800DEFDC 24050001 */  addiu      $a1, $zero, 1
/* BA3E0 800DEFE0 0C03ACC0 */  jal        func_800EB300
/* BA3E4 800DEFE4 8EC60030 */   lw        $a2, 0x30($s6)
/* BA3E8 800DEFE8 8FC70008 */  lw         $a3, 8($fp)
/* BA3EC 800DEFEC 240A001C */  addiu      $t2, $zero, 0x1c
/* BA3F0 800DEFF0 AFAA0010 */  sw         $t2, 0x10($sp)
/* BA3F4 800DEFF4 00002025 */  or         $a0, $zero, $zero
/* BA3F8 800DEFF8 00002825 */  or         $a1, $zero, $zero
/* BA3FC 800DEFFC 0C037278 */  jal        func_800DC9E0
/* BA400 800DF000 02E03025 */   or        $a2, $s7, $zero
/* BA404 800DF004 AEC0002C */  sw         $zero, 0x2c($s6)
/* BA408 800DF008 8FCB0008 */  lw         $t3, 8($fp)
/* BA40C 800DF00C 00401825 */  or         $v1, $v0, $zero
/* BA410 800DF010 5960000B */  blezl      $t3, .L800DF040
/* BA414 800DF014 AED70028 */   sw        $s7, 0x28($s6)
/* BA418 800DF018 8ECC002C */  lw         $t4, 0x2c($s6)
.L800DF01C:
/* BA41C 800DF01C 26940001 */  addiu      $s4, $s4, 1
/* BA420 800DF020 AC6C0000 */  sw         $t4, ($v1)
/* BA424 800DF024 AEC3002C */  sw         $v1, 0x2c($s6)
/* BA428 800DF028 8FCD0008 */  lw         $t5, 8($fp)
/* BA42C 800DF02C 2463001C */  addiu      $v1, $v1, 0x1c
/* BA430 800DF030 028D082A */  slt        $at, $s4, $t5
/* BA434 800DF034 5420FFF9 */  bnel       $at, $zero, .L800DF01C
/* BA438 800DF038 8ECC002C */   lw        $t4, 0x2c($s6)
/* BA43C 800DF03C AED70028 */  sw         $s7, 0x28($s6)
.L800DF040:
/* BA440 800DF040 8FBF0044 */  lw         $ra, 0x44($sp)
/* BA444 800DF044 8FBE0040 */  lw         $fp, 0x40($sp)
/* BA448 800DF048 8FB7003C */  lw         $s7, 0x3c($sp)
/* BA44C 800DF04C 8FB60038 */  lw         $s6, 0x38($sp)
/* BA450 800DF050 8FB50034 */  lw         $s5, 0x34($sp)
/* BA454 800DF054 8FB40030 */  lw         $s4, 0x30($sp)
/* BA458 800DF058 8FB3002C */  lw         $s3, 0x2c($sp)
/* BA45C 800DF05C 8FB20028 */  lw         $s2, 0x28($sp)
/* BA460 800DF060 8FB10024 */  lw         $s1, 0x24($sp)
/* BA464 800DF064 8FB00020 */  lw         $s0, 0x20($sp)
/* BA468 800DF068 03E00008 */  jr         $ra
/* BA46C 800DF06C 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_800DF070
/* BA470 800DF070 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BA474 800DF074 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA478 800DF078 0C0399C8 */  jal        func_800E6720
/* BA47C 800DF07C 24040400 */   addiu     $a0, $zero, 0x400
/* BA480 800DF080 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA484 800DF084 27BD0018 */  addiu      $sp, $sp, 0x18
/* BA488 800DF088 03E00008 */  jr         $ra
/* BA48C 800DF08C 00000000 */   nop

glabel func_800DF090
/* BA490 800DF090 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BA494 800DF094 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA498 800DF098 0C03ACF0 */  jal        func_800EB3C0
/* BA49C 800DF09C AFA40020 */   sw        $a0, 0x20($sp)
/* BA4A0 800DF0A0 AFA2001C */  sw         $v0, 0x1c($sp)
/* BA4A4 800DF0A4 8FAE001C */  lw         $t6, 0x1c($sp)
/* BA4A8 800DF0A8 31CF0100 */  andi       $t7, $t6, 0x100
/* BA4AC 800DF0AC 11E00004 */  beqz       $t7, .L800DF0C0
/* BA4B0 800DF0B0 00000000 */   nop
/* BA4B4 800DF0B4 24180001 */  addiu      $t8, $zero, 1
/* BA4B8 800DF0B8 10000002 */  b          .L800DF0C4
/* BA4BC 800DF0BC AFB80018 */   sw        $t8, 0x18($sp)
.L800DF0C0:
/* BA4C0 800DF0C0 AFA00018 */  sw         $zero, 0x18($sp)
.L800DF0C4:
/* BA4C4 800DF0C4 8FB9001C */  lw         $t9, 0x1c($sp)
/* BA4C8 800DF0C8 33280080 */  andi       $t0, $t9, 0x80
/* BA4CC 800DF0CC 1100000B */  beqz       $t0, .L800DF0FC
/* BA4D0 800DF0D0 00000000 */   nop
/* BA4D4 800DF0D4 8FA90020 */  lw         $t1, 0x20($sp)
/* BA4D8 800DF0D8 8FAB0018 */  lw         $t3, 0x18($sp)
/* BA4DC 800DF0DC 2401FFFD */  addiu      $at, $zero, -3
/* BA4E0 800DF0E0 8D2A0004 */  lw         $t2, 4($t1)
/* BA4E4 800DF0E4 014B6025 */  or         $t4, $t2, $t3
/* BA4E8 800DF0E8 AD2C0004 */  sw         $t4, 4($t1)
/* BA4EC 800DF0EC 8FAD0020 */  lw         $t5, 0x20($sp)
/* BA4F0 800DF0F0 8DAE0004 */  lw         $t6, 4($t5)
/* BA4F4 800DF0F4 01C17824 */  and        $t7, $t6, $at
/* BA4F8 800DF0F8 ADAF0004 */  sw         $t7, 4($t5)
.L800DF0FC:
/* BA4FC 800DF0FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA500 800DF100 8FA20018 */  lw         $v0, 0x18($sp)
/* BA504 800DF104 27BD0020 */  addiu      $sp, $sp, 0x20
/* BA508 800DF108 03E00008 */  jr         $ra
/* BA50C 800DF10C 00000000 */   nop

glabel func_800DF110
/* BA510 800DF110 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BA514 800DF114 3C0F8011 */  lui        $t7, %hi(D_80109DB0)
/* BA518 800DF118 91EF9DB0 */  lbu        $t7, %lo(D_80109DB0)($t7)
/* BA51C 800DF11C AFA40020 */  sw         $a0, 0x20($sp)
/* BA520 800DF120 8FAE0020 */  lw         $t6, 0x20($sp)
/* BA524 800DF124 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA528 800DF128 AFA50024 */  sw         $a1, 0x24($sp)
/* BA52C 800DF12C 11E00003 */  beqz       $t7, .L800DF13C
/* BA530 800DF130 AFAE001C */   sw        $t6, 0x1c($sp)
/* BA534 800DF134 25D8E000 */  addiu      $t8, $t6, -0x2000
/* BA538 800DF138 AFB8001C */  sw         $t8, 0x1c($sp)
.L800DF13C:
/* BA53C 800DF13C 8FB90020 */  lw         $t9, 0x20($sp)
/* BA540 800DF140 8FA80024 */  lw         $t0, 0x24($sp)
/* BA544 800DF144 24012000 */  addiu      $at, $zero, 0x2000
/* BA548 800DF148 03284821 */  addu       $t1, $t9, $t0
/* BA54C 800DF14C 312A3FFF */  andi       $t2, $t1, 0x3fff
/* BA550 800DF150 15410005 */  bne        $t2, $at, .L800DF168
/* BA554 800DF154 00000000 */   nop
/* BA558 800DF158 240B0001 */  addiu      $t3, $zero, 1
/* BA55C 800DF15C 3C018011 */  lui        $at, %hi(D_80109DB0)
/* BA560 800DF160 10000003 */  b          .L800DF170
/* BA564 800DF164 A02B9DB0 */   sb        $t3, %lo(D_80109DB0)($at)
.L800DF168:
/* BA568 800DF168 3C018011 */  lui        $at, %hi(D_80109DB0)
/* BA56C 800DF16C A0209DB0 */  sb         $zero, %lo(D_80109DB0)($at)
.L800DF170:
/* BA570 800DF170 0C03ACF4 */  jal        func_800EB3D0
/* BA574 800DF174 00000000 */   nop
/* BA578 800DF178 10400003 */  beqz       $v0, .L800DF188
/* BA57C 800DF17C 00000000 */   nop
/* BA580 800DF180 10000009 */  b          .L800DF1A8
/* BA584 800DF184 2402FFFF */   addiu     $v0, $zero, -1
.L800DF188:
/* BA588 800DF188 0C037228 */  jal        func_800DC8A0
/* BA58C 800DF18C 8FA4001C */   lw        $a0, 0x1c($sp)
/* BA590 800DF190 3C0CA450 */  lui        $t4, 0xa450
/* BA594 800DF194 AD820000 */  sw         $v0, ($t4)
/* BA598 800DF198 8FAD0024 */  lw         $t5, 0x24($sp)
/* BA59C 800DF19C 3C0FA450 */  lui        $t7, %hi(D_A4500004)
/* BA5A0 800DF1A0 00001025 */  or         $v0, $zero, $zero
/* BA5A4 800DF1A4 ADED0004 */  sw         $t5, %lo(D_A4500004)($t7)
.L800DF1A8:
/* BA5A8 800DF1A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BA5AC 800DF1AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* BA5B0 800DF1B0 03E00008 */  jr         $ra
/* BA5B4 800DF1B4 00000000 */   nop
/* BA5B8 800DF1B8 00000000 */  nop
/* BA5BC 800DF1BC 00000000 */  nop
