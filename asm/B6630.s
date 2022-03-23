.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DB230
/* B6630 800DB230 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B6634 800DB234 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6638 800DB238 AFA40028 */  sw         $a0, 0x28($sp)
/* B663C 800DB23C AFA5002C */  sw         $a1, 0x2c($sp)
/* B6640 800DB240 AFA60030 */  sw         $a2, 0x30($sp)
/* B6644 800DB244 0C038AF8 */  jal        func_800E2BE0
/* B6648 800DB248 AFB00018 */   sw        $s0, 0x18($sp)
/* B664C 800DB24C 8FAE0028 */  lw         $t6, 0x28($sp)
/* B6650 800DB250 3C188025 */  lui        $t8, %hi(D_8024B080)
/* B6654 800DB254 8FA8002C */  lw         $t0, 0x2c($sp)
/* B6658 800DB258 2718B080 */  addiu      $t8, $t8, %lo(D_8024B080)
/* B665C 800DB25C 000E78C0 */  sll        $t7, $t6, 3
/* B6660 800DB260 01F8C821 */  addu       $t9, $t7, $t8
/* B6664 800DB264 AFB90020 */  sw         $t9, 0x20($sp)
/* B6668 800DB268 AF280000 */  sw         $t0, ($t9)
/* B666C 800DB26C 8FAA0020 */  lw         $t2, 0x20($sp)
/* B6670 800DB270 8FA90030 */  lw         $t1, 0x30($sp)
/* B6674 800DB274 00408025 */  or         $s0, $v0, $zero
/* B6678 800DB278 02002025 */  or         $a0, $s0, $zero
/* B667C 800DB27C 0C038B00 */  jal        func_800E2C00
/* B6680 800DB280 AD490004 */   sw        $t1, 4($t2)
/* B6684 800DB284 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6688 800DB288 8FB00018 */  lw         $s0, 0x18($sp)
/* B668C 800DB28C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B6690 800DB290 03E00008 */  jr         $ra
/* B6694 800DB294 00000000 */   nop
/* B6698 800DB298 00000000 */  nop
/* B669C 800DB29C 00000000 */  nop
