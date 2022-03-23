.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E3CF0
/* BF0F0 800E3CF0 44856000 */  mtc1       $a1, $f12
/* BF0F4 800E3CF4 C4840000 */  lwc1       $f4, ($a0)
/* BF0F8 800E3CF8 44867000 */  mtc1       $a2, $f14
/* BF0FC 800E3CFC C4880010 */  lwc1       $f8, 0x10($a0)
/* BF100 800E3D00 460C2182 */  mul.s      $f6, $f4, $f12
/* BF104 800E3D04 44878000 */  mtc1       $a3, $f16
/* BF108 800E3D08 C4840020 */  lwc1       $f4, 0x20($a0)
/* BF10C 800E3D0C 460E4282 */  mul.s      $f10, $f8, $f14
/* BF110 800E3D10 8FAE0010 */  lw         $t6, 0x10($sp)
/* BF114 800E3D14 46102202 */  mul.s      $f8, $f4, $f16
/* BF118 800E3D18 460A3480 */  add.s      $f18, $f6, $f10
/* BF11C 800E3D1C C48A0030 */  lwc1       $f10, 0x30($a0)
/* BF120 800E3D20 46089180 */  add.s      $f6, $f18, $f8
/* BF124 800E3D24 46065100 */  add.s      $f4, $f10, $f6
/* BF128 800E3D28 E5C40000 */  swc1       $f4, ($t6)
/* BF12C 800E3D2C C4920004 */  lwc1       $f18, 4($a0)
/* BF130 800E3D30 C48A0014 */  lwc1       $f10, 0x14($a0)
/* BF134 800E3D34 8FAF0014 */  lw         $t7, 0x14($sp)
/* BF138 800E3D38 460C9202 */  mul.s      $f8, $f18, $f12
/* BF13C 800E3D3C C4920024 */  lwc1       $f18, 0x24($a0)
/* BF140 800E3D40 460E5182 */  mul.s      $f6, $f10, $f14
/* BF144 800E3D44 46064100 */  add.s      $f4, $f8, $f6
/* BF148 800E3D48 46109282 */  mul.s      $f10, $f18, $f16
/* BF14C 800E3D4C C4860034 */  lwc1       $f6, 0x34($a0)
/* BF150 800E3D50 460A2200 */  add.s      $f8, $f4, $f10
/* BF154 800E3D54 46083480 */  add.s      $f18, $f6, $f8
/* BF158 800E3D58 E5F20000 */  swc1       $f18, ($t7)
/* BF15C 800E3D5C C4840008 */  lwc1       $f4, 8($a0)
/* BF160 800E3D60 C4860018 */  lwc1       $f6, 0x18($a0)
/* BF164 800E3D64 8FB80018 */  lw         $t8, 0x18($sp)
/* BF168 800E3D68 460C2282 */  mul.s      $f10, $f4, $f12
/* BF16C 800E3D6C C4840028 */  lwc1       $f4, 0x28($a0)
/* BF170 800E3D70 460E3202 */  mul.s      $f8, $f6, $f14
/* BF174 800E3D74 46085480 */  add.s      $f18, $f10, $f8
/* BF178 800E3D78 46102182 */  mul.s      $f6, $f4, $f16
/* BF17C 800E3D7C C4880038 */  lwc1       $f8, 0x38($a0)
/* BF180 800E3D80 46069280 */  add.s      $f10, $f18, $f6
/* BF184 800E3D84 460A4100 */  add.s      $f4, $f8, $f10
/* BF188 800E3D88 03E00008 */  jr         $ra
/* BF18C 800E3D8C E7040000 */   swc1      $f4, ($t8)

glabel func_800E3D90
/* BF190 800E3D90 27BDFF98 */  addiu      $sp, $sp, -0x68
/* BF194 800E3D94 44800000 */  mtc1       $zero, $f0
/* BF198 800E3D98 27A3001C */  addiu      $v1, $sp, 0x1c
/* BF19C 800E3D9C 27AB005C */  addiu      $t3, $sp, 0x5c
/* BF1A0 800E3DA0 00803825 */  or         $a3, $a0, $zero
/* BF1A4 800E3DA4 00A04025 */  or         $t0, $a1, $zero
/* BF1A8 800E3DA8 240A0010 */  addiu      $t2, $zero, 0x10
.L800E3DAC:
/* BF1AC 800E3DAC 00002025 */  or         $a0, $zero, $zero
/* BF1B0 800E3DB0 00602825 */  or         $a1, $v1, $zero
/* BF1B4 800E3DB4 01004825 */  or         $t1, $t0, $zero
/* BF1B8 800E3DB8 E4A00000 */  swc1       $f0, ($a1)
/* BF1BC 800E3DBC C52C0000 */  lwc1       $f12, ($t1)
/* BF1C0 800E3DC0 C4EE0000 */  lwc1       $f14, ($a3)
/* BF1C4 800E3DC4 24840004 */  addiu      $a0, $a0, 4
/* BF1C8 800E3DC8 C4B00000 */  lwc1       $f16, ($a1)
/* BF1CC 800E3DCC 460C7482 */  mul.s      $f18, $f14, $f12
/* BF1D0 800E3DD0 508A0020 */  beql       $a0, $t2, .L800E3E54
/* BF1D4 800E3DD4 46128380 */   add.s     $f14, $f16, $f18
/* BF1D8 800E3DD8 46128380 */  add.s      $f14, $f16, $f18
.L800E3DDC:
/* BF1DC 800E3DDC 24840004 */  addiu      $a0, $a0, 4
/* BF1E0 800E3DE0 24A50004 */  addiu      $a1, $a1, 4
/* BF1E4 800E3DE4 25290004 */  addiu      $t1, $t1, 4
/* BF1E8 800E3DE8 E4AEFFFC */  swc1       $f14, -4($a1)
/* BF1EC 800E3DEC C4EE0004 */  lwc1       $f14, 4($a3)
/* BF1F0 800E3DF0 C52C000C */  lwc1       $f12, 0xc($t1)
/* BF1F4 800E3DF4 C4AAFFFC */  lwc1       $f10, -4($a1)
/* BF1F8 800E3DF8 460C7302 */  mul.s      $f12, $f14, $f12
/* BF1FC 800E3DFC 460C5300 */  add.s      $f12, $f10, $f12
/* BF200 800E3E00 E4ACFFFC */  swc1       $f12, -4($a1)
/* BF204 800E3E04 C4EC0008 */  lwc1       $f12, 8($a3)
/* BF208 800E3E08 C52A001C */  lwc1       $f10, 0x1c($t1)
/* BF20C 800E3E0C C4AEFFFC */  lwc1       $f14, -4($a1)
/* BF210 800E3E10 460A6282 */  mul.s      $f10, $f12, $f10
/* BF214 800E3E14 460A7280 */  add.s      $f10, $f14, $f10
/* BF218 800E3E18 E4AAFFFC */  swc1       $f10, -4($a1)
/* BF21C 800E3E1C C4EA000C */  lwc1       $f10, 0xc($a3)
/* BF220 800E3E20 C52E002C */  lwc1       $f14, 0x2c($t1)
/* BF224 800E3E24 C4ACFFFC */  lwc1       $f12, -4($a1)
/* BF228 800E3E28 E4A00000 */  swc1       $f0, ($a1)
/* BF22C 800E3E2C 460E5382 */  mul.s      $f14, $f10, $f14
/* BF230 800E3E30 C4B00000 */  lwc1       $f16, ($a1)
/* BF234 800E3E34 460E6380 */  add.s      $f14, $f12, $f14
/* BF238 800E3E38 E4AEFFFC */  swc1       $f14, -4($a1)
/* BF23C 800E3E3C C4EE0000 */  lwc1       $f14, ($a3)
/* BF240 800E3E40 C52C0000 */  lwc1       $f12, ($t1)
/* BF244 800E3E44 460C7482 */  mul.s      $f18, $f14, $f12
/* BF248 800E3E48 548AFFE4 */  bnel       $a0, $t2, .L800E3DDC
/* BF24C 800E3E4C 46128380 */   add.s     $f14, $f16, $f18
/* BF250 800E3E50 46128380 */  add.s      $f14, $f16, $f18
.L800E3E54:
/* BF254 800E3E54 24A50004 */  addiu      $a1, $a1, 4
/* BF258 800E3E58 25290004 */  addiu      $t1, $t1, 4
/* BF25C 800E3E5C E4AEFFFC */  swc1       $f14, -4($a1)
/* BF260 800E3E60 C52C000C */  lwc1       $f12, 0xc($t1)
/* BF264 800E3E64 C4EE0004 */  lwc1       $f14, 4($a3)
/* BF268 800E3E68 C4AAFFFC */  lwc1       $f10, -4($a1)
/* BF26C 800E3E6C 460C7302 */  mul.s      $f12, $f14, $f12
/* BF270 800E3E70 460C5300 */  add.s      $f12, $f10, $f12
/* BF274 800E3E74 E4ACFFFC */  swc1       $f12, -4($a1)
/* BF278 800E3E78 C52A001C */  lwc1       $f10, 0x1c($t1)
/* BF27C 800E3E7C C4EC0008 */  lwc1       $f12, 8($a3)
/* BF280 800E3E80 C4AEFFFC */  lwc1       $f14, -4($a1)
/* BF284 800E3E84 460A6282 */  mul.s      $f10, $f12, $f10
/* BF288 800E3E88 460A7280 */  add.s      $f10, $f14, $f10
/* BF28C 800E3E8C E4AAFFFC */  swc1       $f10, -4($a1)
/* BF290 800E3E90 C52E002C */  lwc1       $f14, 0x2c($t1)
/* BF294 800E3E94 C4EA000C */  lwc1       $f10, 0xc($a3)
/* BF298 800E3E98 C4ACFFFC */  lwc1       $f12, -4($a1)
/* BF29C 800E3E9C 460E5382 */  mul.s      $f14, $f10, $f14
/* BF2A0 800E3EA0 460E6380 */  add.s      $f14, $f12, $f14
/* BF2A4 800E3EA4 E4AEFFFC */  swc1       $f14, -4($a1)
/* BF2A8 800E3EA8 24630010 */  addiu      $v1, $v1, 0x10
/* BF2AC 800E3EAC 006B082B */  sltu       $at, $v1, $t3
/* BF2B0 800E3EB0 1420FFBE */  bnez       $at, .L800E3DAC
/* BF2B4 800E3EB4 24E70010 */   addiu     $a3, $a3, 0x10
/* BF2B8 800E3EB8 00C01825 */  or         $v1, $a2, $zero
/* BF2BC 800E3EBC 27A4001C */  addiu      $a0, $sp, 0x1c
/* BF2C0 800E3EC0 27A2005C */  addiu      $v0, $sp, 0x5c
.L800E3EC4:
/* BF2C4 800E3EC4 C4860000 */  lwc1       $f6, ($a0)
/* BF2C8 800E3EC8 24840010 */  addiu      $a0, $a0, 0x10
/* BF2CC 800E3ECC 24630010 */  addiu      $v1, $v1, 0x10
/* BF2D0 800E3ED0 E466FFF0 */  swc1       $f6, -0x10($v1)
/* BF2D4 800E3ED4 C488FFF4 */  lwc1       $f8, -0xc($a0)
/* BF2D8 800E3ED8 E468FFF4 */  swc1       $f8, -0xc($v1)
/* BF2DC 800E3EDC C490FFF8 */  lwc1       $f16, -8($a0)
/* BF2E0 800E3EE0 E470FFF8 */  swc1       $f16, -8($v1)
/* BF2E4 800E3EE4 C48AFFFC */  lwc1       $f10, -4($a0)
/* BF2E8 800E3EE8 1482FFF6 */  bne        $a0, $v0, .L800E3EC4
/* BF2EC 800E3EEC E46AFFFC */   swc1      $f10, -4($v1)
/* BF2F0 800E3EF0 03E00008 */  jr         $ra
/* BF2F4 800E3EF4 27BD0068 */   addiu     $sp, $sp, 0x68
/* BF2F8 800E3EF8 00000000 */  nop
/* BF2FC 800E3EFC 00000000 */  nop
