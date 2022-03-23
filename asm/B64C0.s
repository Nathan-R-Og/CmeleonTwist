.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DB0C0
/* B64C0 800DB0C0 E7AC0000 */  swc1       $f12, ($sp)
/* B64C4 800DB0C4 8FA20000 */  lw         $v0, ($sp)
/* B64C8 800DB0C8 C7A60000 */  lwc1       $f6, ($sp)
/* B64CC 800DB0CC C7AA0000 */  lwc1       $f10, ($sp)
/* B64D0 800DB0D0 00027583 */  sra        $t6, $v0, 0x16
/* B64D4 800DB0D4 31CF01FF */  andi       $t7, $t6, 0x1ff
/* B64D8 800DB0D8 29E10136 */  slti       $at, $t7, 0x136
/* B64DC 800DB0DC 50200049 */  beql       $at, $zero, .L800DB204
/* B64E0 800DB0E0 460A5032 */   c.eq.s    $f10, $f10
/* B64E4 800DB0E4 44802000 */  mtc1       $zero, $f4
/* B64E8 800DB0E8 3C013FE0 */  lui        $at, 0x3fe0
/* B64EC 800DB0EC 44819800 */  mtc1       $at, $f19
/* B64F0 800DB0F0 4606203C */  c.lt.s     $f4, $f6
/* B64F4 800DB0F4 C7A00000 */  lwc1       $f0, ($sp)
/* B64F8 800DB0F8 3C018011 */  lui        $at, 0x8011
/* B64FC 800DB0FC 45020004 */  bc1fl      .L800DB110
/* B6500 800DB100 46000007 */   neg.s     $f0, $f0
/* B6504 800DB104 10000002 */  b          .L800DB110
/* B6508 800DB108 46003006 */   mov.s     $f0, $f6
/* B650C 800DB10C 46000007 */  neg.s      $f0, $f0
.L800DB110:
/* B6510 800DB110 D4280938 */  ldc1       $f8, 0x938($at)
/* B6514 800DB114 46000321 */  cvt.d.s    $f12, $f0
/* B6518 800DB118 44809000 */  mtc1       $zero, $f18
/* B651C 800DB11C 46286282 */  mul.d      $f10, $f12, $f8
/* B6520 800DB120 44802800 */  mtc1       $zero, $f5
/* B6524 800DB124 44802000 */  mtc1       $zero, $f4
/* B6528 800DB128 46325380 */  add.d      $f14, $f10, $f18
/* B652C 800DB12C 462E203E */  c.le.d     $f4, $f14
/* B6530 800DB130 00000000 */  nop
/* B6534 800DB134 45020007 */  bc1fl      .L800DB154
/* B6538 800DB138 46327281 */   sub.d     $f10, $f14, $f18
/* B653C 800DB13C 46327180 */  add.d      $f6, $f14, $f18
/* B6540 800DB140 4620320D */  trunc.w.d  $f8, $f6
/* B6544 800DB144 44024000 */  mfc1       $v0, $f8
/* B6548 800DB148 10000006 */  b          .L800DB164
/* B654C 800DB14C 44823000 */   mtc1      $v0, $f6
/* B6550 800DB150 46327281 */  sub.d      $f10, $f14, $f18
.L800DB154:
/* B6554 800DB154 4620510D */  trunc.w.d  $f4, $f10
/* B6558 800DB158 44022000 */  mfc1       $v0, $f4
/* B655C 800DB15C 00000000 */  nop
/* B6560 800DB160 44823000 */  mtc1       $v0, $f6
.L800DB164:
/* B6564 800DB164 3C018011 */  lui        $at, %hi(D_80110940)
/* B6568 800DB168 D42A0940 */  ldc1       $f10, %lo(D_80110940)($at)
/* B656C 800DB16C 46803221 */  cvt.d.w    $f8, $f6
/* B6570 800DB170 3C018011 */  lui        $at, %hi(D_80110948)
/* B6574 800DB174 D4260948 */  ldc1       $f6, %lo(D_80110948)($at)
/* B6578 800DB178 3C038011 */  lui        $v1, %hi(D_80110910)
/* B657C 800DB17C 24630910 */  addiu      $v1, $v1, %lo(D_80110910)
/* B6580 800DB180 46324001 */  sub.d      $f0, $f8, $f18
/* B6584 800DB184 30480001 */  andi       $t0, $v0, 1
/* B6588 800DB188 462A0102 */  mul.d      $f4, $f0, $f10
/* B658C 800DB18C D46A0020 */  ldc1       $f10, 0x20($v1)
/* B6590 800DB190 46260202 */  mul.d      $f8, $f0, $f6
/* B6594 800DB194 D4660018 */  ldc1       $f6, 0x18($v1)
/* B6598 800DB198 46246081 */  sub.d      $f2, $f12, $f4
/* B659C 800DB19C 46281081 */  sub.d      $f2, $f2, $f8
/* B65A0 800DB1A0 46221382 */  mul.d      $f14, $f2, $f2
/* B65A4 800DB1A4 00000000 */  nop
/* B65A8 800DB1A8 462E5102 */  mul.d      $f4, $f10, $f14
/* B65AC 800DB1AC 46262200 */  add.d      $f8, $f4, $f6
/* B65B0 800DB1B0 D4640010 */  ldc1       $f4, 0x10($v1)
/* B65B4 800DB1B4 462E4282 */  mul.d      $f10, $f8, $f14
/* B65B8 800DB1B8 46245180 */  add.d      $f6, $f10, $f4
/* B65BC 800DB1BC D46A0008 */  ldc1       $f10, 8($v1)
/* B65C0 800DB1C0 462E3202 */  mul.d      $f8, $f6, $f14
/* B65C4 800DB1C4 15000007 */  bnez       $t0, .L800DB1E4
/* B65C8 800DB1C8 46285400 */   add.d     $f16, $f10, $f8
/* B65CC 800DB1CC 462E1102 */  mul.d      $f4, $f2, $f14
/* B65D0 800DB1D0 00000000 */  nop
/* B65D4 800DB1D4 46302182 */  mul.d      $f6, $f4, $f16
/* B65D8 800DB1D8 46223280 */  add.d      $f10, $f6, $f2
/* B65DC 800DB1DC 03E00008 */  jr         $ra
/* B65E0 800DB1E0 46205020 */   cvt.s.d   $f0, $f10
.L800DB1E4:
/* B65E4 800DB1E4 462E1202 */  mul.d      $f8, $f2, $f14
/* B65E8 800DB1E8 00000000 */  nop
/* B65EC 800DB1EC 46304102 */  mul.d      $f4, $f8, $f16
/* B65F0 800DB1F0 46222180 */  add.d      $f6, $f4, $f2
/* B65F4 800DB1F4 46203020 */  cvt.s.d    $f0, $f6
/* B65F8 800DB1F8 03E00008 */  jr         $ra
/* B65FC 800DB1FC 46000007 */   neg.s     $f0, $f0
/* B6600 800DB200 460A5032 */  c.eq.s     $f10, $f10
.L800DB204:
/* B6604 800DB204 3C018011 */  lui        $at, 0x8011
/* B6608 800DB208 45010004 */  bc1t       .L800DB21C
/* B660C 800DB20C 00000000 */   nop
/* B6610 800DB210 3C018011 */  lui        $at, %hi(D_80110CA0)
/* B6614 800DB214 03E00008 */  jr         $ra
/* B6618 800DB218 C4200CA0 */   lwc1      $f0, %lo(D_80110CA0)($at)
.L800DB21C:
/* B661C 800DB21C C4200950 */  lwc1       $f0, 0x950($at)
/* B6620 800DB220 03E00008 */  jr         $ra
/* B6624 800DB224 00000000 */   nop
/* B6628 800DB228 00000000 */  nop
/* B662C 800DB22C 00000000 */  nop
