.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D9FD0
/* B53D0 800D9FD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B53D4 800D9FD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B53D8 800D9FD8 AFA40028 */  sw         $a0, 0x28($sp)
/* B53DC 800D9FDC 0C038AF8 */  jal        func_800E2BE0
/* B53E0 800D9FE0 AFB00018 */   sw        $s0, 0x18($sp)
/* B53E4 800D9FE4 3C0F8011 */  lui        $t7, %hi(D_80109E94)
/* B53E8 800D9FE8 8DEF9E94 */  lw         $t7, %lo(D_80109E94)($t7)
/* B53EC 800D9FEC 8FAE0028 */  lw         $t6, 0x28($sp)
/* B53F0 800D9FF0 3C198011 */  lui        $t9, %hi(D_80109E94)
/* B53F4 800D9FF4 24180001 */  addiu      $t8, $zero, 1
/* B53F8 800D9FF8 ADEE0008 */  sw         $t6, 8($t7)
/* B53FC 800D9FFC 8F399E94 */  lw         $t9, %lo(D_80109E94)($t9)
/* B5400 800DA000 3C088011 */  lui        $t0, %hi(D_80109E94)
/* B5404 800DA004 00408025 */  or         $s0, $v0, $zero
/* B5408 800DA008 A7380000 */  sh         $t8, ($t9)
/* B540C 800DA00C 8D089E94 */  lw         $t0, %lo(D_80109E94)($t0)
/* B5410 800DA010 02002025 */  or         $a0, $s0, $zero
/* B5414 800DA014 8D090008 */  lw         $t1, 8($t0)
/* B5418 800DA018 8D2A0004 */  lw         $t2, 4($t1)
/* B541C 800DA01C 0C038B00 */  jal        func_800E2C00
/* B5420 800DA020 AD0A000C */   sw        $t2, 0xc($t0)
/* B5424 800DA024 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5428 800DA028 8FB00018 */  lw         $s0, 0x18($sp)
/* B542C 800DA02C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B5430 800DA030 03E00008 */  jr         $ra
/* B5434 800DA034 00000000 */   nop
/* B5438 800DA038 00000000 */  nop
/* B543C 800DA03C 00000000 */  nop
