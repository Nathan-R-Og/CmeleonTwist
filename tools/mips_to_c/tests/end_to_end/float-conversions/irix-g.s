.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel test
/* 0000B0 004000B0 3C010041 */  lui   $at, %hi(D_410250)
/* 0000B4 004000B4 444EF800 */  cfc1  $t6, $31
/* 0000B8 004000B8 240F0001 */  addiu $t7, $zero, 1
/* 0000BC 004000BC 44CFF800 */  ctc1  $t7, $31
/* 0000C0 004000C0 C4240250 */  lwc1  $f4, %lo(D_410250)($at)
/* 0000C4 004000C4 460021A4 */  cvt.w.s $f6, $f4
/* 0000C8 004000C8 444FF800 */  cfc1  $t7, $31
/* 0000CC 004000CC 00000000 */  nop
/* 0000D0 004000D0 31E10004 */  andi  $at, $t7, 4
/* 0000D4 004000D4 31EF0078 */  andi  $t7, $t7, 0x78
/* 0000D8 004000D8 11E00014 */  beqz  $t7, .L0040012C
/* 0000DC 004000DC 00000000 */   nop
/* 0000E0 004000E0 3C014F00 */  lui   $at, 0x4f00
/* 0000E4 004000E4 44813000 */  mtc1  $at, $f6
/* 0000E8 004000E8 240F0001 */  addiu $t7, $zero, 1
/* 0000EC 004000EC 46062181 */  sub.s $f6, $f4, $f6
/* 0000F0 004000F0 44CFF800 */  ctc1  $t7, $31
/* 0000F4 004000F4 00000000 */  nop
/* 0000F8 004000F8 460031A4 */  cvt.w.s $f6, $f6
/* 0000FC 004000FC 444FF800 */  cfc1  $t7, $31
/* 000100 00400100 00000000 */  nop
/* 000104 00400104 31E10004 */  andi  $at, $t7, 4
/* 000108 00400108 31EF0078 */  andi  $t7, $t7, 0x78
/* 00010C 0040010C 15E00005 */  bnez  $t7, .L00400124
/* 000110 00400110 00000000 */   nop
/* 000114 00400114 440F3000 */  mfc1  $t7, $f6
/* 000118 00400118 3C018000 */  lui   $at, 0x8000
/* 00011C 0040011C 10000007 */  b     .L0040013C
/* 000120 00400120 01E17825 */   or    $t7, $t7, $at
.L00400124:
/* 000124 00400124 10000005 */  b     .L0040013C
/* 000128 00400128 240FFFFF */   addiu $t7, $zero, -1
.L0040012C:
/* 00012C 0040012C 440F3000 */  mfc1  $t7, $f6
/* 000130 00400130 00000000 */  nop
/* 000134 00400134 05E0FFFB */  bltz  $t7, .L00400124
/* 000138 00400138 00000000 */   nop
.L0040013C:
/* 00013C 0040013C 44CEF800 */  ctc1  $t6, $31
/* 000140 00400140 3C010041 */  lui   $at, %hi(D_410260)
/* 000144 00400144 AC2F0260 */  sw    $t7, %lo(D_410260)($at)
/* 000148 00400148 3C010041 */  lui   $at, %hi(D_410258)
/* 00014C 0040014C 4458F800 */  cfc1  $t8, $31
/* 000150 00400150 24190001 */  addiu $t9, $zero, 1
/* 000154 00400154 44D9F800 */  ctc1  $t9, $31
/* 000158 00400158 D4280258 */  ldc1  $f8, %lo(D_410258)($at)
/* 00015C 0040015C 462042A4 */  cvt.w.d $f10, $f8
/* 000160 00400160 4459F800 */  cfc1  $t9, $31
/* 000164 00400164 00000000 */  nop
/* 000168 00400168 33210004 */  andi  $at, $t9, 4
/* 00016C 0040016C 33390078 */  andi  $t9, $t9, 0x78
/* 000170 00400170 13200015 */  beqz  $t9, .L004001C8
/* 000174 00400174 00000000 */   nop
/* 000178 00400178 3C0141E0 */  lui   $at, 0x41e0
/* 00017C 0040017C 44815800 */  mtc1  $at, $f11
/* 000180 00400180 44805000 */  mtc1  $zero, $f10
/* 000184 00400184 24190001 */  addiu $t9, $zero, 1
/* 000188 00400188 462A4281 */  sub.d $f10, $f8, $f10
/* 00018C 0040018C 44D9F800 */  ctc1  $t9, $31
/* 000190 00400190 00000000 */  nop
/* 000194 00400194 462052A4 */  cvt.w.d $f10, $f10
/* 000198 00400198 4459F800 */  cfc1  $t9, $31
/* 00019C 0040019C 00000000 */  nop
/* 0001A0 004001A0 33210004 */  andi  $at, $t9, 4
/* 0001A4 004001A4 33390078 */  andi  $t9, $t9, 0x78
/* 0001A8 004001A8 17200005 */  bnez  $t9, .L004001C0
/* 0001AC 004001AC 00000000 */   nop
/* 0001B0 004001B0 44195000 */  mfc1  $t9, $f10
/* 0001B4 004001B4 3C018000 */  lui   $at, 0x8000
/* 0001B8 004001B8 10000007 */  b     .L004001D8
/* 0001BC 004001BC 0321C825 */   or    $t9, $t9, $at
.L004001C0:
/* 0001C0 004001C0 10000005 */  b     .L004001D8
/* 0001C4 004001C4 2419FFFF */   addiu $t9, $zero, -1
.L004001C8:
/* 0001C8 004001C8 44195000 */  mfc1  $t9, $f10
/* 0001CC 004001CC 00000000 */  nop
/* 0001D0 004001D0 0720FFFB */  bltz  $t9, .L004001C0
/* 0001D4 004001D4 00000000 */   nop
.L004001D8:
/* 0001D8 004001D8 44D8F800 */  ctc1  $t8, $31
/* 0001DC 004001DC 3C010041 */  lui   $at, %hi(D_410260)
/* 0001E0 004001E0 AC390260 */  sw    $t9, %lo(D_410260)($at)
/* 0001E4 004001E4 3C080041 */  lui   $t0, %hi(D_410260)
/* 0001E8 004001E8 8D080260 */  lw    $t0, %lo(D_410260)($t0)
/* 0001EC 004001EC 44888000 */  mtc1  $t0, $f16
/* 0001F0 004001F0 05010006 */  bgez  $t0, .L0040020C
/* 0001F4 004001F4 468084A1 */   cvt.d.w $f18, $f16
/* 0001F8 004001F8 3C0141F0 */  lui   $at, 0x41f0
/* 0001FC 004001FC 44812800 */  mtc1  $at, $f5
/* 000200 00400200 44802000 */  mtc1  $zero, $f4
/* 000204 00400204 00000000 */  nop
/* 000208 00400208 46249480 */  add.d $f18, $f18, $f4
.L0040020C:
/* 00020C 0040020C 3C010041 */  lui   $at, %hi(D_410258)
/* 000210 00400210 F4320258 */  sdc1  $f18, %lo(D_410258)($at)
/* 000214 00400214 3C090041 */  lui   $t1, %hi(D_410260)
/* 000218 00400218 8D290260 */  lw    $t1, %lo(D_410260)($t1)
/* 00021C 0040021C 44893000 */  mtc1  $t1, $f6
/* 000220 00400220 05210005 */  bgez  $t1, .L00400238
/* 000224 00400224 46803220 */   cvt.s.w $f8, $f6
/* 000228 00400228 3C014F80 */  lui   $at, 0x4f80
/* 00022C 0040022C 44815000 */  mtc1  $at, $f10
/* 000230 00400230 00000000 */  nop
/* 000234 00400234 460A4200 */  add.s $f8, $f8, $f10
.L00400238:
/* 000238 00400238 3C010041 */  lui   $at, %hi(D_410250)
/* 00023C 0040023C E4280250 */  swc1  $f8, %lo(D_410250)($at)
/* 000240 00400240 03E00008 */  jr    $ra
/* 000244 00400244 00000000 */   nop

/* 000248 00400248 03E00008 */  jr    $ra
/* 00024C 0040024C 00000000 */   nop
