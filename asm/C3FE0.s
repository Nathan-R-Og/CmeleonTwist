.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8BE0
/* C3FE0 800E8BE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3FE4 800E8BE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3FE8 800E8BE8 AFA40018 */  sw         $a0, 0x18($sp)
/* C3FEC 800E8BEC AFA60020 */  sw         $a2, 0x20($sp)
/* C3FF0 800E8BF0 8CAE0008 */  lw         $t6, 8($a1)
/* C3FF4 800E8BF4 51C0001C */  beql       $t6, $zero, .L800E8C68
/* C3FF8 800E8BF8 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3FFC 800E8BFC 0C037AA8 */  jal        func_800DEAA0
/* C4000 800E8C00 AFA5001C */   sw        $a1, 0x1c($sp)
/* C4004 800E8C04 8FA7001C */  lw         $a3, 0x1c($sp)
/* C4008 800E8C08 10400016 */  beqz       $v0, .L800E8C64
/* C400C 800E8C0C 00403025 */   or        $a2, $v0, $zero
/* C4010 800E8C10 8FAF0018 */  lw         $t7, 0x18($sp)
/* C4014 800E8C14 8CF90008 */  lw         $t9, 8($a3)
/* C4018 800E8C18 240A0010 */  addiu      $t2, $zero, 0x10
/* C401C 800E8C1C 8DF8001C */  lw         $t8, 0x1c($t7)
/* C4020 800E8C20 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C4024 800E8C24 A44A0008 */  sh         $t2, 8($v0)
/* C4028 800E8C28 03084821 */  addu       $t1, $t8, $t0
/* C402C 800E8C2C AC490004 */  sw         $t1, 4($v0)
/* C4030 800E8C30 93A30023 */  lbu        $v1, 0x23($sp)
/* C4034 800E8C34 04610003 */  bgez       $v1, .L800E8C44
/* C4038 800E8C38 00035823 */   negu      $t3, $v1
/* C403C 800E8C3C 10000002 */  b          .L800E8C48
/* C4040 800E8C40 AC4B000C */   sw        $t3, 0xc($v0)
.L800E8C44:
/* C4044 800E8C44 AC43000C */  sw         $v1, 0xc($v0)
.L800E8C48:
/* C4048 800E8C48 ACC00000 */  sw         $zero, ($a2)
/* C404C 800E8C4C 8CEC0008 */  lw         $t4, 8($a3)
/* C4050 800E8C50 24050003 */  addiu      $a1, $zero, 3
/* C4054 800E8C54 8D84000C */  lw         $a0, 0xc($t4)
/* C4058 800E8C58 8C990008 */  lw         $t9, 8($a0)
/* C405C 800E8C5C 0320F809 */  jalr       $t9
/* C4060 800E8C60 00000000 */   nop
.L800E8C64:
/* C4064 800E8C64 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8C68:
/* C4068 800E8C68 27BD0018 */  addiu      $sp, $sp, 0x18
/* C406C 800E8C6C 03E00008 */  jr         $ra
/* C4070 800E8C70 00000000 */   nop
/* C4074 800E8C74 00000000 */  nop
/* C4078 800E8C78 00000000 */  nop
/* C407C 800E8C7C 00000000 */  nop
