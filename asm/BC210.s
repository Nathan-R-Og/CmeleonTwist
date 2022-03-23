.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0E10
/* BC210 800E0E10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BC214 800E0E14 AFBF0014 */  sw         $ra, 0x14($sp)
/* BC218 800E0E18 240E0001 */  addiu      $t6, $zero, 1
/* BC21C 800E0E1C 3C018011 */  lui        $at, %hi(D_80109DD0)
/* BC220 800E0E20 3C048025 */  lui        $a0, %hi(D_8024B228)
/* BC224 800E0E24 3C058025 */  lui        $a1, %hi(D_8024B220)
/* BC228 800E0E28 AC2E9DD0 */  sw         $t6, %lo(D_80109DD0)($at)
/* BC22C 800E0E2C 24A5B220 */  addiu      $a1, $a1, %lo(D_8024B220)
/* BC230 800E0E30 2484B228 */  addiu      $a0, $a0, %lo(D_8024B228)
/* BC234 800E0E34 0C036938 */  jal        func_800DA4E0
/* BC238 800E0E38 24060001 */   addiu     $a2, $zero, 1
/* BC23C 800E0E3C 3C048025 */  lui        $a0, %hi(D_8024B228)
/* BC240 800E0E40 2484B228 */  addiu      $a0, $a0, %lo(D_8024B228)
/* BC244 800E0E44 00002825 */  or         $a1, $zero, $zero
/* BC248 800E0E48 0C037100 */  jal        func_800DC400
/* BC24C 800E0E4C 00003025 */   or        $a2, $zero, $zero
/* BC250 800E0E50 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC254 800E0E54 27BD0018 */  addiu      $sp, $sp, 0x18
/* BC258 800E0E58 03E00008 */  jr         $ra
/* BC25C 800E0E5C 00000000 */   nop

glabel func_800E0E60
/* BC260 800E0E60 3C0E8011 */  lui        $t6, %hi(D_80109DD0)
/* BC264 800E0E64 8DCE9DD0 */  lw         $t6, %lo(D_80109DD0)($t6)
/* BC268 800E0E68 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BC26C 800E0E6C AFBF0014 */  sw         $ra, 0x14($sp)
/* BC270 800E0E70 15C00003 */  bnez       $t6, .L800E0E80
/* BC274 800E0E74 00000000 */   nop
/* BC278 800E0E78 0C038384 */  jal        func_800E0E10
/* BC27C 800E0E7C 00000000 */   nop
.L800E0E80:
/* BC280 800E0E80 3C048025 */  lui        $a0, %hi(D_8024B228)
/* BC284 800E0E84 2484B228 */  addiu      $a0, $a0, %lo(D_8024B228)
/* BC288 800E0E88 27A5001C */  addiu      $a1, $sp, 0x1c
/* BC28C 800E0E8C 0C036988 */  jal        func_800DA620
/* BC290 800E0E90 24060001 */   addiu     $a2, $zero, 1
/* BC294 800E0E94 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC298 800E0E98 27BD0020 */  addiu      $sp, $sp, 0x20
/* BC29C 800E0E9C 03E00008 */  jr         $ra
/* BC2A0 800E0EA0 00000000 */   nop

glabel func_800E0EA4
/* BC2A4 800E0EA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BC2A8 800E0EA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BC2AC 800E0EAC 3C048025 */  lui        $a0, %hi(D_8024B228)
/* BC2B0 800E0EB0 2484B228 */  addiu      $a0, $a0, %lo(D_8024B228)
/* BC2B4 800E0EB4 00002825 */  or         $a1, $zero, $zero
/* BC2B8 800E0EB8 0C037100 */  jal        func_800DC400
/* BC2BC 800E0EBC 00003025 */   or        $a2, $zero, $zero
/* BC2C0 800E0EC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC2C4 800E0EC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* BC2C8 800E0EC8 03E00008 */  jr         $ra
/* BC2CC 800E0ECC 00000000 */   nop

glabel func_800E0ED0
/* BC2D0 800E0ED0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BC2D4 800E0ED4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BC2D8 800E0ED8 AFA40018 */  sw         $a0, 0x18($sp)
/* BC2DC 800E0EDC 0C03AEF8 */  jal        func_800EBBE0
/* BC2E0 800E0EE0 AFA5001C */   sw        $a1, 0x1c($sp)
/* BC2E4 800E0EE4 10400003 */  beqz       $v0, .L800E0EF4
/* BC2E8 800E0EE8 00000000 */   nop
/* BC2EC 800E0EEC 1000001F */  b          .L800E0F6C
/* BC2F0 800E0EF0 2402FFFF */   addiu     $v0, $zero, -1
.L800E0EF4:
/* BC2F4 800E0EF4 8FAE0018 */  lw         $t6, 0x18($sp)
/* BC2F8 800E0EF8 24010001 */  addiu      $at, $zero, 1
/* BC2FC 800E0EFC 15C10004 */  bne        $t6, $at, .L800E0F10
/* BC300 800E0F00 00000000 */   nop
/* BC304 800E0F04 8FA4001C */  lw         $a0, 0x1c($sp)
/* BC308 800E0F08 0C036BF8 */  jal        func_800DAFE0
/* BC30C 800E0F0C 24050040 */   addiu     $a1, $zero, 0x40
.L800E0F10:
/* BC310 800E0F10 0C037228 */  jal        func_800DC8A0
/* BC314 800E0F14 8FA4001C */   lw        $a0, 0x1c($sp)
/* BC318 800E0F18 3C0FA480 */  lui        $t7, 0xa480
/* BC31C 800E0F1C ADE20000 */  sw         $v0, ($t7)
/* BC320 800E0F20 8FB80018 */  lw         $t8, 0x18($sp)
/* BC324 800E0F24 17000006 */  bnez       $t8, .L800E0F40
/* BC328 800E0F28 00000000 */   nop
/* BC32C 800E0F2C 3C191FC0 */  lui        $t9, 0x1fc0
/* BC330 800E0F30 373907C0 */  ori        $t9, $t9, 0x7c0
/* BC334 800E0F34 3C08A480 */  lui        $t0, %hi(D_A4800004)
/* BC338 800E0F38 10000005 */  b          .L800E0F50
/* BC33C 800E0F3C AD190004 */   sw        $t9, %lo(D_A4800004)($t0)
.L800E0F40:
/* BC340 800E0F40 3C091FC0 */  lui        $t1, 0x1fc0
/* BC344 800E0F44 352907C0 */  ori        $t1, $t1, 0x7c0
/* BC348 800E0F48 3C0AA480 */  lui        $t2, %hi(D_A4800010)
/* BC34C 800E0F4C AD490010 */  sw         $t1, %lo(D_A4800010)($t2)
.L800E0F50:
/* BC350 800E0F50 8FAB0018 */  lw         $t3, 0x18($sp)
/* BC354 800E0F54 15600004 */  bnez       $t3, .L800E0F68
/* BC358 800E0F58 00000000 */   nop
/* BC35C 800E0F5C 8FA4001C */  lw         $a0, 0x1c($sp)
/* BC360 800E0F60 0C0372C4 */  jal        func_800DCB10
/* BC364 800E0F64 24050040 */   addiu     $a1, $zero, 0x40
.L800E0F68:
/* BC368 800E0F68 00001025 */  or         $v0, $zero, $zero
.L800E0F6C:
/* BC36C 800E0F6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC370 800E0F70 27BD0018 */  addiu      $sp, $sp, 0x18
/* BC374 800E0F74 03E00008 */  jr         $ra
/* BC378 800E0F78 00000000 */   nop
/* BC37C 800E0F7C 00000000 */  nop
