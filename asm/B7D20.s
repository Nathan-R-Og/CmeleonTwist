.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DC920
/* B7D20 800DC920 8C820000 */  lw         $v0, ($a0)
/* B7D24 800DC924 50400004 */  beql       $v0, $zero, .L800DC938
/* B7D28 800DC928 8C820004 */   lw        $v0, 4($a0)
/* B7D2C 800DC92C 8C8E0004 */  lw         $t6, 4($a0)
/* B7D30 800DC930 AC4E0004 */  sw         $t6, 4($v0)
/* B7D34 800DC934 8C820004 */  lw         $v0, 4($a0)
.L800DC938:
/* B7D38 800DC938 10400003 */  beqz       $v0, .L800DC948
/* B7D3C 800DC93C 00000000 */   nop
/* B7D40 800DC940 8C8F0000 */  lw         $t7, ($a0)
/* B7D44 800DC944 AC4F0000 */  sw         $t7, ($v0)
.L800DC948:
/* B7D48 800DC948 03E00008 */  jr         $ra
/* B7D4C 800DC94C 00000000 */   nop

glabel func_800DC950
/* B7D50 800DC950 8CAE0000 */  lw         $t6, ($a1)
/* B7D54 800DC954 AC850004 */  sw         $a1, 4($a0)
/* B7D58 800DC958 AC8E0000 */  sw         $t6, ($a0)
/* B7D5C 800DC95C 8CA20000 */  lw         $v0, ($a1)
/* B7D60 800DC960 10400002 */  beqz       $v0, .L800DC96C
/* B7D64 800DC964 00000000 */   nop
/* B7D68 800DC968 AC440004 */  sw         $a0, 4($v0)
.L800DC96C:
/* B7D6C 800DC96C 03E00008 */  jr         $ra
/* B7D70 800DC970 ACA40000 */   sw        $a0, ($a1)

glabel func_800DC974
/* B7D74 800DC974 3C0E8011 */  lui        $t6, %hi(D_80109DA0)
/* B7D78 800DC978 8DCE9DA0 */  lw         $t6, %lo(D_80109DA0)($t6)
/* B7D7C 800DC97C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7D80 800DC980 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7D84 800DC984 51C00006 */  beql       $t6, $zero, .L800DC9A0
/* B7D88 800DC988 8FBF0014 */   lw        $ra, 0x14($sp)
/* B7D8C 800DC98C 0C039A3C */  jal        func_800E68F0
/* B7D90 800DC990 00000000 */   nop
/* B7D94 800DC994 3C018011 */  lui        $at, %hi(D_80109DA0)
/* B7D98 800DC998 AC209DA0 */  sw         $zero, %lo(D_80109DA0)($at)
/* B7D9C 800DC99C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800DC9A0:
/* B7DA0 800DC9A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7DA4 800DC9A4 03E00008 */  jr         $ra
/* B7DA8 800DC9A8 00000000 */   nop

glabel func_800DC9AC
/* B7DAC 800DC9AC 3C028011 */  lui        $v0, %hi(D_80109DA0)
/* B7DB0 800DC9B0 24429DA0 */  addiu      $v0, $v0, %lo(D_80109DA0)
/* B7DB4 800DC9B4 8C4E0000 */  lw         $t6, ($v0)
/* B7DB8 800DC9B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B7DBC 800DC9BC AFBF0014 */  sw         $ra, 0x14($sp)
/* B7DC0 800DC9C0 55C00004 */  bnel       $t6, $zero, .L800DC9D4
/* B7DC4 800DC9C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* B7DC8 800DC9C8 0C037B5C */  jal        func_800DED70
/* B7DCC 800DC9CC AC440000 */   sw        $a0, ($v0)
/* B7DD0 800DC9D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800DC9D4:
/* B7DD4 800DC9D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7DD8 800DC9D8 03E00008 */  jr         $ra
/* B7DDC 800DC9DC 00000000 */   nop

glabel func_800DC9E0
/* B7DE0 800DC9E0 8FAE0010 */  lw         $t6, 0x10($sp)
/* B7DE4 800DC9E4 AFA40000 */  sw         $a0, ($sp)
/* B7DE8 800DC9E8 AFA50004 */  sw         $a1, 4($sp)
/* B7DEC 800DC9EC 00EE0019 */  multu      $a3, $t6
/* B7DF0 800DC9F0 8CD90008 */  lw         $t9, 8($a2)
/* B7DF4 800DC9F4 8CD80000 */  lw         $t8, ($a2)
/* B7DF8 800DC9F8 8CC40004 */  lw         $a0, 4($a2)
/* B7DFC 800DC9FC 2401FFF0 */  addiu      $at, $zero, -0x10
/* B7E00 800DCA00 03194021 */  addu       $t0, $t8, $t9
/* B7E04 800DCA04 00001825 */  or         $v1, $zero, $zero
/* B7E08 800DCA08 00001012 */  mflo       $v0
/* B7E0C 800DCA0C 2442000F */  addiu      $v0, $v0, 0xf
/* B7E10 800DCA10 00417824 */  and        $t7, $v0, $at
/* B7E14 800DCA14 008F4821 */  addu       $t1, $a0, $t7
/* B7E18 800DCA18 0109082B */  sltu       $at, $t0, $t1
/* B7E1C 800DCA1C 14200003 */  bnez       $at, .L800DCA2C
/* B7E20 800DCA20 008F5021 */   addu      $t2, $a0, $t7
/* B7E24 800DCA24 00801825 */  or         $v1, $a0, $zero
/* B7E28 800DCA28 ACCA0004 */  sw         $t2, 4($a2)
.L800DCA2C:
/* B7E2C 800DCA2C 03E00008 */  jr         $ra
/* B7E30 800DCA30 00601025 */   or        $v0, $v1, $zero
/* B7E34 800DCA34 00000000 */  nop
/* B7E38 800DCA38 00000000 */  nop
/* B7E3C 800DCA3C 00000000 */  nop
