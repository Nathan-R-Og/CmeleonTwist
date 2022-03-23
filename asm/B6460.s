.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DB060
/* B6460 800DB060 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6464 800DB064 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6468 800DB068 0C038AF8 */  jal        func_800E2BE0
/* B646C 800DB06C AFA40020 */   sw        $a0, 0x20($sp)
/* B6470 800DB070 3C0F8011 */  lui        $t7, %hi(D_80109E94)
/* B6474 800DB074 8DEF9E94 */  lw         $t7, %lo(D_80109E94)($t7)
/* B6478 800DB078 8FAE0020 */  lw         $t6, 0x20($sp)
/* B647C 800DB07C AFA2001C */  sw         $v0, 0x1c($sp)
/* B6480 800DB080 3C188011 */  lui        $t8, %hi(D_80109E94)
/* B6484 800DB084 ADEE0004 */  sw         $t6, 4($t7)
/* B6488 800DB088 8F189E94 */  lw         $t8, %lo(D_80109E94)($t8)
/* B648C 800DB08C 97190000 */  lhu        $t9, ($t8)
/* B6490 800DB090 37280010 */  ori        $t0, $t9, 0x10
/* B6494 800DB094 A7080000 */  sh         $t0, ($t8)
/* B6498 800DB098 0C038B00 */  jal        func_800E2C00
/* B649C 800DB09C 8FA4001C */   lw        $a0, 0x1c($sp)
/* B64A0 800DB0A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B64A4 800DB0A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* B64A8 800DB0A8 03E00008 */  jr         $ra
/* B64AC 800DB0AC 00000000 */   nop

glabel func_800DB0B0
/* B64B0 800DB0B0 03E00008 */  jr         $ra
/* B64B4 800DB0B4 46006004 */   sqrt.s    $f0, $f12
/* B64B8 800DB0B8 00000000 */  nop
/* B64BC 800DB0BC 00000000 */  nop
