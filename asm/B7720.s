.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC320
/* B7720 800DC320 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7724 800DC324 AFA40020 */  sw         $a0, 0x20($sp)
/* B7728 800DC328 8FAE0020 */  lw         $t6, 0x20($sp)
/* B772C 800DC32C AFBF0014 */  sw         $ra, 0x14($sp)
/* B7730 800DC330 AFA60028 */  sw         $a2, 0x28($sp)
/* B7734 800DC334 AFA7002C */  sw         $a3, 0x2c($sp)
/* B7738 800DC338 ADC00000 */  sw         $zero, ($t6)
/* B773C 800DC33C 8FAF0020 */  lw         $t7, 0x20($sp)
/* B7740 800DC340 ADE00004 */  sw         $zero, 4($t7)
/* B7744 800DC344 8FA80020 */  lw         $t0, 0x20($sp)
/* B7748 800DC348 8FB90034 */  lw         $t9, 0x34($sp)
/* B774C 800DC34C 8FB80030 */  lw         $t8, 0x30($sp)
/* B7750 800DC350 AD19000C */  sw         $t9, 0xc($t0)
/* B7754 800DC354 AD180008 */  sw         $t8, 8($t0)
/* B7758 800DC358 8FAA0028 */  lw         $t2, 0x28($sp)
/* B775C 800DC35C 8FAB002C */  lw         $t3, 0x2c($sp)
/* B7760 800DC360 15400003 */  bnez       $t2, .L800DC370
/* B7764 800DC364 00000000 */   nop
/* B7768 800DC368 11600005 */  beqz       $t3, .L800DC380
/* B776C 800DC36C 00000000 */   nop
.L800DC370:
/* B7770 800DC370 8FA90020 */  lw         $t1, 0x20($sp)
/* B7774 800DC374 AD2A0010 */  sw         $t2, 0x10($t1)
/* B7778 800DC378 10000006 */  b          .L800DC394
/* B777C 800DC37C AD2B0014 */   sw        $t3, 0x14($t1)
.L800DC380:
/* B7780 800DC380 8FAE0020 */  lw         $t6, 0x20($sp)
/* B7784 800DC384 8FAC0030 */  lw         $t4, 0x30($sp)
/* B7788 800DC388 8FAD0034 */  lw         $t5, 0x34($sp)
/* B778C 800DC38C ADCC0010 */  sw         $t4, 0x10($t6)
/* B7790 800DC390 ADCD0014 */  sw         $t5, 0x14($t6)
.L800DC394:
/* B7794 800DC394 8FAF0038 */  lw         $t7, 0x38($sp)
/* B7798 800DC398 8FB80020 */  lw         $t8, 0x20($sp)
/* B779C 800DC39C AF0F0018 */  sw         $t7, 0x18($t8)
/* B77A0 800DC3A0 8FA80020 */  lw         $t0, 0x20($sp)
/* B77A4 800DC3A4 8FB9003C */  lw         $t9, 0x3c($sp)
/* B77A8 800DC3A8 AD19001C */  sw         $t9, 0x1c($t0)
/* B77AC 800DC3AC 0C038BB6 */  jal        func_800E2ED8
/* B77B0 800DC3B0 8FA40020 */   lw        $a0, 0x20($sp)
/* B77B4 800DC3B4 3C0A8011 */  lui        $t2, %hi(D_80109E20)
/* B77B8 800DC3B8 8D4A9E20 */  lw         $t2, %lo(D_80109E20)($t2)
/* B77BC 800DC3BC AFA20018 */  sw         $v0, 0x18($sp)
/* B77C0 800DC3C0 AFA3001C */  sw         $v1, 0x1c($sp)
/* B77C4 800DC3C4 8FA90020 */  lw         $t1, 0x20($sp)
/* B77C8 800DC3C8 8D4B0000 */  lw         $t3, ($t2)
/* B77CC 800DC3CC 15690004 */  bne        $t3, $t1, .L800DC3E0
/* B77D0 800DC3D0 00000000 */   nop
/* B77D4 800DC3D4 8FA40018 */  lw         $a0, 0x18($sp)
/* B77D8 800DC3D8 0C038B99 */  jal        func_800E2E64
/* B77DC 800DC3DC 8FA5001C */   lw        $a1, 0x1c($sp)
.L800DC3E0:
/* B77E0 800DC3E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B77E4 800DC3E4 27BD0020 */  addiu      $sp, $sp, 0x20
/* B77E8 800DC3E8 00001025 */  or         $v0, $zero, $zero
/* B77EC 800DC3EC 03E00008 */  jr         $ra
/* B77F0 800DC3F0 00000000 */   nop
/* B77F4 800DC3F4 00000000 */  nop
/* B77F8 800DC3F8 00000000 */  nop
/* B77FC 800DC3FC 00000000 */  nop
