.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E2BE0
/* BDFE0 800E2BE0 40086000 */  mfc0       $t0, $12
/* BDFE4 800E2BE4 2401FFFE */  addiu      $at, $zero, -2
/* BDFE8 800E2BE8 01014824 */  and        $t1, $t0, $at
/* BDFEC 800E2BEC 40896000 */  mtc0       $t1, $12
/* BDFF0 800E2BF0 31020001 */  andi       $v0, $t0, 1
/* BDFF4 800E2BF4 00000000 */  nop
/* BDFF8 800E2BF8 03E00008 */  jr         $ra
/* BDFFC 800E2BFC 00000000 */   nop

glabel func_800E2C00
/* BE000 800E2C00 40086000 */  mfc0       $t0, $12
/* BE004 800E2C04 01044025 */  or         $t0, $t0, $a0
/* BE008 800E2C08 40886000 */  mtc0       $t0, $12
/* BE00C 800E2C0C 00000000 */  nop
/* BE010 800E2C10 00000000 */  nop
/* BE014 800E2C14 03E00008 */  jr         $ra
/* BE018 800E2C18 00000000 */   nop
/* BE01C 800E2C1C 00000000 */  nop
