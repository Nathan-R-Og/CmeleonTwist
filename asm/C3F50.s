.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8B50
/* C3F50 800E8B50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3F54 800E8B54 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3F58 800E8B58 AFA40018 */  sw         $a0, 0x18($sp)
/* C3F5C 800E8B5C AFA60020 */  sw         $a2, 0x20($sp)
/* C3F60 800E8B60 8CAE0008 */  lw         $t6, 8($a1)
/* C3F64 800E8B64 51C00018 */  beql       $t6, $zero, .L800E8BC8
/* C3F68 800E8B68 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3F6C 800E8B6C 0C037AA8 */  jal        func_800DEAA0
/* C3F70 800E8B70 AFA5001C */   sw        $a1, 0x1c($sp)
/* C3F74 800E8B74 8FA7001C */  lw         $a3, 0x1c($sp)
/* C3F78 800E8B78 10400012 */  beqz       $v0, .L800E8BC4
/* C3F7C 800E8B7C 00403025 */   or        $a2, $v0, $zero
/* C3F80 800E8B80 8FAF0018 */  lw         $t7, 0x18($sp)
/* C3F84 800E8B84 8CF90008 */  lw         $t9, 8($a3)
/* C3F88 800E8B88 240A000C */  addiu      $t2, $zero, 0xc
/* C3F8C 800E8B8C 8DF8001C */  lw         $t8, 0x1c($t7)
/* C3F90 800E8B90 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C3F94 800E8B94 A44A0008 */  sh         $t2, 8($v0)
/* C3F98 800E8B98 24050003 */  addiu      $a1, $zero, 3
/* C3F9C 800E8B9C 03084821 */  addu       $t1, $t8, $t0
/* C3FA0 800E8BA0 AC490004 */  sw         $t1, 4($v0)
/* C3FA4 800E8BA4 93AB0023 */  lbu        $t3, 0x23($sp)
/* C3FA8 800E8BA8 AC400000 */  sw         $zero, ($v0)
/* C3FAC 800E8BAC AC4B000C */  sw         $t3, 0xc($v0)
/* C3FB0 800E8BB0 8CEC0008 */  lw         $t4, 8($a3)
/* C3FB4 800E8BB4 8D84000C */  lw         $a0, 0xc($t4)
/* C3FB8 800E8BB8 8C990008 */  lw         $t9, 8($a0)
/* C3FBC 800E8BBC 0320F809 */  jalr       $t9
/* C3FC0 800E8BC0 00000000 */   nop
.L800E8BC4:
/* C3FC4 800E8BC4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8BC8:
/* C3FC8 800E8BC8 27BD0018 */  addiu      $sp, $sp, 0x18
/* C3FCC 800E8BCC 03E00008 */  jr         $ra
/* C3FD0 800E8BD0 00000000 */   nop
/* C3FD4 800E8BD4 00000000 */  nop
/* C3FD8 800E8BD8 00000000 */  nop
/* C3FDC 800E8BDC 00000000 */  nop
