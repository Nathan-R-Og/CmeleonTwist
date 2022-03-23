.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E01C0
/* BB5C0 800E01C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BB5C4 800E01C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* BB5C8 800E01C8 0C038AF8 */  jal        func_800E2BE0
/* BB5CC 800E01CC AFB00018 */   sw        $s0, 0x18($sp)
/* BB5D0 800E01D0 0C038094 */  jal        func_800E0250
/* BB5D4 800E01D4 00408025 */   or        $s0, $v0, $zero
/* BB5D8 800E01D8 AFA20034 */  sw         $v0, 0x34($sp)
/* BB5DC 800E01DC 3C0F8025 */  lui        $t7, %hi(D_8024C268)
/* BB5E0 800E01E0 8DEFC268 */  lw         $t7, %lo(D_8024C268)($t7)
/* BB5E4 800E01E4 8FAE0034 */  lw         $t6, 0x34($sp)
/* BB5E8 800E01E8 3C088025 */  lui        $t0, %hi(D_8024C260)
/* BB5EC 800E01EC 3C098025 */  lui        $t1, %hi(D_8024C264)
/* BB5F0 800E01F0 8D29C264 */  lw         $t1, %lo(D_8024C264)($t1)
/* BB5F4 800E01F4 8D08C260 */  lw         $t0, %lo(D_8024C260)($t0)
/* BB5F8 800E01F8 01CFC023 */  subu       $t8, $t6, $t7
/* BB5FC 800E01FC AFB80030 */  sw         $t8, 0x30($sp)
/* BB600 800E0200 02002025 */  or         $a0, $s0, $zero
/* BB604 800E0204 AFA9002C */  sw         $t1, 0x2c($sp)
/* BB608 800E0208 0C038B00 */  jal        func_800E2C00
/* BB60C 800E020C AFA80028 */   sw        $t0, 0x28($sp)
/* BB610 800E0210 8FB90030 */  lw         $t9, 0x30($sp)
/* BB614 800E0214 8FAD002C */  lw         $t5, 0x2c($sp)
/* BB618 800E0218 8FBF001C */  lw         $ra, 0x1c($sp)
/* BB61C 800E021C 03205825 */  or         $t3, $t9, $zero
/* BB620 800E0220 016D1821 */  addu       $v1, $t3, $t5
/* BB624 800E0224 8FAC0028 */  lw         $t4, 0x28($sp)
/* BB628 800E0228 240A0000 */  addiu      $t2, $zero, 0
/* BB62C 800E022C 006D082B */  sltu       $at, $v1, $t5
/* BB630 800E0230 002A1021 */  addu       $v0, $at, $t2
/* BB634 800E0234 8FB00018 */  lw         $s0, 0x18($sp)
/* BB638 800E0238 27BD0038 */  addiu      $sp, $sp, 0x38
/* BB63C 800E023C 03E00008 */  jr         $ra
/* BB640 800E0240 004C1021 */   addu      $v0, $v0, $t4
/* BB644 800E0244 00000000 */  nop
/* BB648 800E0248 00000000 */  nop
/* BB64C 800E024C 00000000 */  nop
