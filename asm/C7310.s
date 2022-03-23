.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBF10
/* C7310 800EBF10 00801025 */  or         $v0, $a0, $zero
/* C7314 800EBF14 10C00007 */  beqz       $a2, .L800EBF34
/* C7318 800EBF18 00A01825 */   or        $v1, $a1, $zero
.L800EBF1C:
/* C731C 800EBF1C 906E0000 */  lbu        $t6, ($v1)
/* C7320 800EBF20 24C6FFFF */  addiu      $a2, $a2, -1
/* C7324 800EBF24 24420001 */  addiu      $v0, $v0, 1
/* C7328 800EBF28 24630001 */  addiu      $v1, $v1, 1
/* C732C 800EBF2C 14C0FFFB */  bnez       $a2, .L800EBF1C
/* C7330 800EBF30 A04EFFFF */   sb        $t6, -1($v0)
.L800EBF34:
/* C7334 800EBF34 03E00008 */  jr         $ra
/* C7338 800EBF38 00801025 */   or        $v0, $a0, $zero

glabel func_800EBF3C
/* C733C 800EBF3C 908E0000 */  lbu        $t6, ($a0)
/* C7340 800EBF40 00801825 */  or         $v1, $a0, $zero
/* C7344 800EBF44 11C00005 */  beqz       $t6, .L800EBF5C
/* C7348 800EBF48 00000000 */   nop
/* C734C 800EBF4C 906F0001 */  lbu        $t7, 1($v1)
.L800EBF50:
/* C7350 800EBF50 24630001 */  addiu      $v1, $v1, 1
/* C7354 800EBF54 55E0FFFE */  bnel       $t7, $zero, .L800EBF50
/* C7358 800EBF58 906F0001 */   lbu       $t7, 1($v1)
.L800EBF5C:
/* C735C 800EBF5C 03E00008 */  jr         $ra
/* C7360 800EBF60 00641023 */   subu      $v0, $v1, $a0

glabel func_800EBF64
/* C7364 800EBF64 90830000 */  lbu        $v1, ($a0)
/* C7368 800EBF68 30AE00FF */  andi       $t6, $a1, 0xff
/* C736C 800EBF6C 30A200FF */  andi       $v0, $a1, 0xff
/* C7370 800EBF70 51C3000A */  beql       $t6, $v1, .L800EBF9C
/* C7374 800EBF74 00801025 */   or        $v0, $a0, $zero
.L800EBF78:
/* C7378 800EBF78 54600004 */  bnel       $v1, $zero, .L800EBF8C
/* C737C 800EBF7C 90830001 */   lbu       $v1, 1($a0)
/* C7380 800EBF80 03E00008 */  jr         $ra
/* C7384 800EBF84 00001025 */   or        $v0, $zero, $zero
/* C7388 800EBF88 90830001 */  lbu        $v1, 1($a0)
.L800EBF8C:
/* C738C 800EBF8C 24840001 */  addiu      $a0, $a0, 1
/* C7390 800EBF90 1443FFF9 */  bne        $v0, $v1, .L800EBF78
/* C7394 800EBF94 00000000 */   nop
/* C7398 800EBF98 00801025 */  or         $v0, $a0, $zero
.L800EBF9C:
/* C739C 800EBF9C 03E00008 */  jr         $ra
/* C73A0 800EBFA0 00000000 */   nop
/* C73A4 800EBFA4 00000000 */  nop
/* C73A8 800EBFA8 00000000 */  nop
/* C73AC 800EBFAC 00000000 */  nop
