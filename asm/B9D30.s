.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DE930
/* B9D30 800DE930 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B9D34 800DE934 00A03825 */  or         $a3, $a1, $zero
/* B9D38 800DE938 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9D3C 800DE93C AFA5002C */  sw         $a1, 0x2c($sp)
/* B9D40 800DE940 AFA60030 */  sw         $a2, 0x30($sp)
/* B9D44 800DE944 00C04025 */  or         $t0, $a2, $zero
/* B9D48 800DE948 240E0002 */  addiu      $t6, $zero, 2
/* B9D4C 800DE94C 34EF00B0 */  ori        $t7, $a3, 0xb0
/* B9D50 800DE950 2418000A */  addiu      $t8, $zero, 0xa
/* B9D54 800DE954 A7AE0018 */  sh         $t6, 0x18($sp)
/* B9D58 800DE958 AFA0001C */  sw         $zero, 0x1c($sp)
/* B9D5C 800DE95C A3AF0020 */  sb         $t7, 0x20($sp)
/* B9D60 800DE960 A3B80021 */  sb         $t8, 0x21($sp)
/* B9D64 800DE964 A3A80022 */  sb         $t0, 0x22($sp)
/* B9D68 800DE968 00003025 */  or         $a2, $zero, $zero
/* B9D6C 800DE96C 27A50018 */  addiu      $a1, $sp, 0x18
/* B9D70 800DE970 0C03A0D7 */  jal        func_800E835C
/* B9D74 800DE974 24840048 */   addiu     $a0, $a0, 0x48
/* B9D78 800DE978 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9D7C 800DE97C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B9D80 800DE980 03E00008 */  jr         $ra
/* B9D84 800DE984 00000000 */   nop
/* B9D88 800DE988 00000000 */  nop
/* B9D8C 800DE98C 00000000 */  nop
