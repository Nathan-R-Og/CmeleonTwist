.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0180
/* BB580 800E0180 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BB584 800E0184 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB588 800E0188 240E000D */  addiu      $t6, $zero, 0xd
/* BB58C 800E018C AFA5001C */  sw         $a1, 0x1c($sp)
/* BB590 800E0190 A7AE0018 */  sh         $t6, 0x18($sp)
/* BB594 800E0194 27A50018 */  addiu      $a1, $sp, 0x18
/* BB598 800E0198 24840048 */  addiu      $a0, $a0, 0x48
/* BB59C 800E019C 0C03A0D7 */  jal        func_800E835C
/* BB5A0 800E01A0 00003025 */   or        $a2, $zero, $zero
/* BB5A4 800E01A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB5A8 800E01A8 27BD0028 */  addiu      $sp, $sp, 0x28
/* BB5AC 800E01AC 03E00008 */  jr         $ra
/* BB5B0 800E01B0 00000000 */   nop
/* BB5B4 800E01B4 00000000 */  nop
/* BB5B8 800E01B8 00000000 */  nop
/* BB5BC 800E01BC 00000000 */  nop
