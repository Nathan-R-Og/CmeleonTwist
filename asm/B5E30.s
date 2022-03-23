.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DAA30
/* B5E30 800DAA30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B5E34 800DAA34 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5E38 800DAA38 AFA5001C */  sw         $a1, 0x1c($sp)
/* B5E3C 800DAA3C AFA60020 */  sw         $a2, 0x20($sp)
/* B5E40 800DAA40 AFA70024 */  sw         $a3, 0x24($sp)
/* B5E44 800DAA44 0C036A30 */  jal        func_800DA8C0
/* B5E48 800DAA48 AFA40018 */   sw        $a0, 0x18($sp)
/* B5E4C 800DAA4C 8FA40018 */  lw         $a0, 0x18($sp)
/* B5E50 800DAA50 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* B5E54 800DAA54 3C013F80 */  lui        $at, 0x3f80
/* B5E58 800DAA58 44815000 */  mtc1       $at, $f10
/* B5E5C 800DAA5C E4840000 */  swc1       $f4, ($a0)
/* B5E60 800DAA60 C7A60020 */  lwc1       $f6, 0x20($sp)
/* B5E64 800DAA64 E4860014 */  swc1       $f6, 0x14($a0)
/* B5E68 800DAA68 C7A80024 */  lwc1       $f8, 0x24($sp)
/* B5E6C 800DAA6C E48A003C */  swc1       $f10, 0x3c($a0)
/* B5E70 800DAA70 E4880028 */  swc1       $f8, 0x28($a0)
/* B5E74 800DAA74 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5E78 800DAA78 27BD0018 */  addiu      $sp, $sp, 0x18
/* B5E7C 800DAA7C 03E00008 */  jr         $ra
/* B5E80 800DAA80 00000000 */   nop

glabel func_800DAA84
/* B5E84 800DAA84 44856000 */  mtc1       $a1, $f12
/* B5E88 800DAA88 44867000 */  mtc1       $a2, $f14
/* B5E8C 800DAA8C 44878000 */  mtc1       $a3, $f16
/* B5E90 800DAA90 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* B5E94 800DAA94 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5E98 800DAA98 AFA40058 */  sw         $a0, 0x58($sp)
/* B5E9C 800DAA9C 44056000 */  mfc1       $a1, $f12
/* B5EA0 800DAAA0 44067000 */  mfc1       $a2, $f14
/* B5EA4 800DAAA4 44078000 */  mfc1       $a3, $f16
/* B5EA8 800DAAA8 0C036A8C */  jal        func_800DAA30
/* B5EAC 800DAAAC 27A40018 */   addiu     $a0, $sp, 0x18
/* B5EB0 800DAAB0 27A40018 */  addiu      $a0, $sp, 0x18
/* B5EB4 800DAAB4 0C0369F0 */  jal        func_800DA7C0
/* B5EB8 800DAAB8 8FA50058 */   lw        $a1, 0x58($sp)
/* B5EBC 800DAABC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5EC0 800DAAC0 27BD0058 */  addiu      $sp, $sp, 0x58
/* B5EC4 800DAAC4 03E00008 */  jr         $ra
/* B5EC8 800DAAC8 00000000 */   nop
/* B5ECC 800DAACC 00000000 */  nop
