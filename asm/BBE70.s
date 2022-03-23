.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0A70
/* BBE70 800E0A70 3C048011 */  lui        $a0, %hi(D_80109DC0)
/* BBE74 800E0A74 8C849DC0 */  lw         $a0, %lo(D_80109DC0)($a0)
/* BBE78 800E0A78 3C018011 */  lui        $at, 0x8011
/* BBE7C 800E0A7C 00047080 */  sll        $t6, $a0, 2
/* BBE80 800E0A80 25CF0002 */  addiu      $t7, $t6, 2
/* BBE84 800E0A84 25D80003 */  addiu      $t8, $t6, 3
/* BBE88 800E0A88 01F80019 */  multu      $t7, $t8
/* BBE8C 800E0A8C 00002812 */  mflo       $a1
/* BBE90 800E0A90 00051082 */  srl        $v0, $a1, 2
/* BBE94 800E0A94 03E00008 */  jr         $ra
/* BBE98 800E0A98 AC229DC0 */   sw        $v0, -0x6240($at)
/* BBE9C 800E0A9C 00000000 */  nop
