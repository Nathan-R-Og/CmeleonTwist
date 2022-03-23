.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DF1C0
/* BA5C0 800DF1C0 8C860044 */  lw         $a2, 0x44($a0)
/* BA5C4 800DF1C4 8C820040 */  lw         $v0, 0x40($a0)
/* BA5C8 800DF1C8 00001825 */  or         $v1, $zero, $zero
/* BA5CC 800DF1CC 18C00020 */  blez       $a2, .L800DF250
/* BA5D0 800DF1D0 24070030 */   addiu     $a3, $zero, 0x30
.L800DF1D4:
/* BA5D4 800DF1D4 00670019 */  multu      $v1, $a3
/* BA5D8 800DF1D8 00007012 */  mflo       $t6
/* BA5DC 800DF1DC 004E2021 */  addu       $a0, $v0, $t6
/* BA5E0 800DF1E0 8C8F001C */  lw         $t7, 0x1c($a0)
/* BA5E4 800DF1E4 15E00014 */  bnez       $t7, .L800DF238
/* BA5E8 800DF1E8 3C013F80 */   lui       $at, 0x3f80
/* BA5EC 800DF1EC 44812000 */  mtc1       $at, $f4
/* BA5F0 800DF1F0 24180005 */  addiu      $t8, $zero, 5
/* BA5F4 800DF1F4 24190040 */  addiu      $t9, $zero, 0x40
/* BA5F8 800DF1F8 AC85001C */  sw         $a1, 0x1c($a0)
/* BA5FC 800DF1FC A4980020 */  sh         $t8, 0x20($a0)
/* BA600 800DF200 AC800028 */  sw         $zero, 0x28($a0)
/* BA604 800DF204 A099002E */  sb         $t9, 0x2e($a0)
/* BA608 800DF208 A080002F */  sb         $zero, 0x2f($a0)
/* BA60C 800DF20C E4840024 */  swc1       $f4, 0x24($a0)
/* BA610 800DF210 90A8000D */  lbu        $t0, 0xd($a1)
/* BA614 800DF214 2401007F */  addiu      $at, $zero, 0x7f
/* BA618 800DF218 00601025 */  or         $v0, $v1, $zero
/* BA61C 800DF21C 00084BC0 */  sll        $t1, $t0, 0xf
/* BA620 800DF220 01284823 */  subu       $t1, $t1, $t0
/* BA624 800DF224 0121001A */  div        $zero, $t1, $at
/* BA628 800DF228 00005012 */  mflo       $t2
/* BA62C 800DF22C A48A002C */  sh         $t2, 0x2c($a0)
/* BA630 800DF230 03E00008 */  jr         $ra
/* BA634 800DF234 00000000 */   nop
.L800DF238:
/* BA638 800DF238 24630001 */  addiu      $v1, $v1, 1
/* BA63C 800DF23C 00035C00 */  sll        $t3, $v1, 0x10
/* BA640 800DF240 000B1C03 */  sra        $v1, $t3, 0x10
/* BA644 800DF244 0066082A */  slt        $at, $v1, $a2
/* BA648 800DF248 1420FFE2 */  bnez       $at, .L800DF1D4
/* BA64C 800DF24C 00000000 */   nop
.L800DF250:
/* BA650 800DF250 2402FFFF */  addiu      $v0, $zero, -1
/* BA654 800DF254 03E00008 */  jr         $ra
/* BA658 800DF258 00000000 */   nop
/* BA65C 800DF25C 00000000 */  nop
