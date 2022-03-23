.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E3F00
/* BF300 800E3F00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BF304 800E3F04 AFBF0014 */  sw         $ra, 0x14($sp)
/* BF308 800E3F08 C4820000 */  lwc1       $f2, ($a0)
/* BF30C 800E3F0C C4AE0000 */  lwc1       $f14, ($a1)
/* BF310 800E3F10 C4C00000 */  lwc1       $f0, ($a2)
/* BF314 800E3F14 46021102 */  mul.s      $f4, $f2, $f2
/* BF318 800E3F18 AFA60020 */  sw         $a2, 0x20($sp)
/* BF31C 800E3F1C AFA5001C */  sw         $a1, 0x1c($sp)
/* BF320 800E3F20 460E7182 */  mul.s      $f6, $f14, $f14
/* BF324 800E3F24 AFA40018 */  sw         $a0, 0x18($sp)
/* BF328 800E3F28 46000282 */  mul.s      $f10, $f0, $f0
/* BF32C 800E3F2C 46062200 */  add.s      $f8, $f4, $f6
/* BF330 800E3F30 0C036C2C */  jal        func_800DB0B0
/* BF334 800E3F34 46085300 */   add.s     $f12, $f10, $f8
/* BF338 800E3F38 3C013F80 */  lui        $at, 0x3f80
/* BF33C 800E3F3C 44818000 */  mtc1       $at, $f16
/* BF340 800E3F40 8FA40018 */  lw         $a0, 0x18($sp)
/* BF344 800E3F44 8FA5001C */  lw         $a1, 0x1c($sp)
/* BF348 800E3F48 46008083 */  div.s      $f2, $f16, $f0
/* BF34C 800E3F4C C4920000 */  lwc1       $f18, ($a0)
/* BF350 800E3F50 8FA60020 */  lw         $a2, 0x20($sp)
/* BF354 800E3F54 46029102 */  mul.s      $f4, $f18, $f2
/* BF358 800E3F58 E4840000 */  swc1       $f4, ($a0)
/* BF35C 800E3F5C C4A60000 */  lwc1       $f6, ($a1)
/* BF360 800E3F60 46023282 */  mul.s      $f10, $f6, $f2
/* BF364 800E3F64 E4AA0000 */  swc1       $f10, ($a1)
/* BF368 800E3F68 C4C80000 */  lwc1       $f8, ($a2)
/* BF36C 800E3F6C 46024402 */  mul.s      $f16, $f8, $f2
/* BF370 800E3F70 E4D00000 */  swc1       $f16, ($a2)
/* BF374 800E3F74 8FBF0014 */  lw         $ra, 0x14($sp)
/* BF378 800E3F78 27BD0018 */  addiu      $sp, $sp, 0x18
/* BF37C 800E3F7C 03E00008 */  jr         $ra
/* BF380 800E3F80 00000000 */   nop
/* BF384 800E3F84 00000000 */  nop
/* BF388 800E3F88 00000000 */  nop
/* BF38C 800E3F8C 00000000 */  nop
