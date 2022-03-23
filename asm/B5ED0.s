.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DAAD0
/* B5ED0 800DAAD0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B5ED4 800DAAD4 AFA5006C */  sw         $a1, 0x6c($sp)
/* B5ED8 800DAAD8 00802825 */  or         $a1, $a0, $zero
/* B5EDC 800DAADC AFBF0024 */  sw         $ra, 0x24($sp)
/* B5EE0 800DAAE0 AFA40068 */  sw         $a0, 0x68($sp)
/* B5EE4 800DAAE4 AFA60070 */  sw         $a2, 0x70($sp)
/* B5EE8 800DAAE8 AFA70074 */  sw         $a3, 0x74($sp)
/* B5EEC 800DAAEC 0C036A5E */  jal        func_800DA978
/* B5EF0 800DAAF0 27A40028 */   addiu     $a0, $sp, 0x28
/* B5EF4 800DAAF4 8FAE0078 */  lw         $t6, 0x78($sp)
/* B5EF8 800DAAF8 8FAF007C */  lw         $t7, 0x7c($sp)
/* B5EFC 800DAAFC 8FB80080 */  lw         $t8, 0x80($sp)
/* B5F00 800DAB00 27A40028 */  addiu      $a0, $sp, 0x28
/* B5F04 800DAB04 8FA5006C */  lw         $a1, 0x6c($sp)
/* B5F08 800DAB08 8FA60070 */  lw         $a2, 0x70($sp)
/* B5F0C 800DAB0C 8FA70074 */  lw         $a3, 0x74($sp)
/* B5F10 800DAB10 AFAE0010 */  sw         $t6, 0x10($sp)
/* B5F14 800DAB14 AFAF0014 */  sw         $t7, 0x14($sp)
/* B5F18 800DAB18 0C038F3C */  jal        func_800E3CF0
/* B5F1C 800DAB1C AFB80018 */   sw        $t8, 0x18($sp)
/* B5F20 800DAB20 8FBF0024 */  lw         $ra, 0x24($sp)
/* B5F24 800DAB24 27BD0068 */  addiu      $sp, $sp, 0x68
/* B5F28 800DAB28 03E00008 */  jr         $ra
/* B5F2C 800DAB2C 00000000 */   nop

glabel func_800DAB30
/* B5F30 800DAB30 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B5F34 800DAB34 AFA500DC */  sw         $a1, 0xdc($sp)
/* B5F38 800DAB38 00802825 */  or         $a1, $a0, $zero
/* B5F3C 800DAB3C AFBF0014 */  sw         $ra, 0x14($sp)
/* B5F40 800DAB40 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B5F44 800DAB44 AFA600E0 */  sw         $a2, 0xe0($sp)
/* B5F48 800DAB48 0C036A5E */  jal        func_800DA978
/* B5F4C 800DAB4C 27A40098 */   addiu     $a0, $sp, 0x98
/* B5F50 800DAB50 27A40058 */  addiu      $a0, $sp, 0x58
/* B5F54 800DAB54 0C036A5E */  jal        func_800DA978
/* B5F58 800DAB58 8FA500DC */   lw        $a1, 0xdc($sp)
/* B5F5C 800DAB5C 27A40098 */  addiu      $a0, $sp, 0x98
/* B5F60 800DAB60 27A50058 */  addiu      $a1, $sp, 0x58
/* B5F64 800DAB64 0C038F64 */  jal        func_800E3D90
/* B5F68 800DAB68 27A60018 */   addiu     $a2, $sp, 0x18
/* B5F6C 800DAB6C 27A40018 */  addiu      $a0, $sp, 0x18
/* B5F70 800DAB70 0C0369F0 */  jal        func_800DA7C0
/* B5F74 800DAB74 8FA500E0 */   lw        $a1, 0xe0($sp)
/* B5F78 800DAB78 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5F7C 800DAB7C 27BD00D8 */  addiu      $sp, $sp, 0xd8
/* B5F80 800DAB80 03E00008 */  jr         $ra
/* B5F84 800DAB84 00000000 */   nop
/* B5F88 800DAB88 00000000 */  nop
/* B5F8C 800DAB8C 00000000 */  nop
