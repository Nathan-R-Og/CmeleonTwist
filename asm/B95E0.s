.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DE1E0
/* B95E0 800DE1E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B95E4 800DE1E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B95E8 800DE1E8 240E000E */  addiu      $t6, $zero, 0xe
/* B95EC 800DE1EC AFA5001C */  sw         $a1, 0x1c($sp)
/* B95F0 800DE1F0 A7AE0018 */  sh         $t6, 0x18($sp)
/* B95F4 800DE1F4 27A50018 */  addiu      $a1, $sp, 0x18
/* B95F8 800DE1F8 24840048 */  addiu      $a0, $a0, 0x48
/* B95FC 800DE1FC 0C03A0D7 */  jal        func_800E835C
/* B9600 800DE200 00003025 */   or        $a2, $zero, $zero
/* B9604 800DE204 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9608 800DE208 27BD0028 */  addiu      $sp, $sp, 0x28
/* B960C 800DE20C 03E00008 */  jr         $ra
/* B9610 800DE210 00000000 */   nop
/* B9614 800DE214 00000000 */  nop
/* B9618 800DE218 00000000 */  nop
/* B961C 800DE21C 00000000 */  nop
