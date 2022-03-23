.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E1880
/* BCC80 800E1880 4442F800 */  cfc1       $v0, $31
/* BCC84 800E1884 44C4F800 */  ctc1       $a0, $31
/* BCC88 800E1888 03E00008 */  jr         $ra
/* BCC8C 800E188C 00000000 */   nop

glabel func_800E1890
/* BCC90 800E1890 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BCC94 800E1894 AFBF0014 */  sw         $ra, 0x14($sp)
/* BCC98 800E1898 AFA40018 */  sw         $a0, 0x18($sp)
/* BCC9C 800E189C 0C03AEF8 */  jal        func_800EBBE0
/* BCCA0 800E18A0 AFA5001C */   sw        $a1, 0x1c($sp)
/* BCCA4 800E18A4 10400003 */  beqz       $v0, .L800E18B4
/* BCCA8 800E18A8 00000000 */   nop
/* BCCAC 800E18AC 10000008 */  b          .L800E18D0
/* BCCB0 800E18B0 2402FFFF */   addiu     $v0, $zero, -1
.L800E18B4:
/* BCCB4 800E18B4 8FAE0018 */  lw         $t6, 0x18($sp)
/* BCCB8 800E18B8 3C01A000 */  lui        $at, 0xa000
/* BCCBC 800E18BC 8FB9001C */  lw         $t9, 0x1c($sp)
/* BCCC0 800E18C0 01C17825 */  or         $t7, $t6, $at
/* BCCC4 800E18C4 8DF80000 */  lw         $t8, ($t7)
/* BCCC8 800E18C8 00001025 */  or         $v0, $zero, $zero
/* BCCCC 800E18CC AF380000 */  sw         $t8, ($t9)
.L800E18D0:
/* BCCD0 800E18D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* BCCD4 800E18D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* BCCD8 800E18D8 03E00008 */  jr         $ra
/* BCCDC 800E18DC 00000000 */   nop

glabel func_800E18E0
/* BCCE0 800E18E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BCCE4 800E18E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BCCE8 800E18E8 AFA40018 */  sw         $a0, 0x18($sp)
/* BCCEC 800E18EC 0C03AEF8 */  jal        func_800EBBE0
/* BCCF0 800E18F0 AFA5001C */   sw        $a1, 0x1c($sp)
/* BCCF4 800E18F4 10400003 */  beqz       $v0, .L800E1904
/* BCCF8 800E18F8 00000000 */   nop
/* BCCFC 800E18FC 10000007 */  b          .L800E191C
/* BCD00 800E1900 2402FFFF */   addiu     $v0, $zero, -1
.L800E1904:
/* BCD04 800E1904 8FAF0018 */  lw         $t7, 0x18($sp)
/* BCD08 800E1908 8FAE001C */  lw         $t6, 0x1c($sp)
/* BCD0C 800E190C 3C01A000 */  lui        $at, 0xa000
/* BCD10 800E1910 01E1C025 */  or         $t8, $t7, $at
/* BCD14 800E1914 00001025 */  or         $v0, $zero, $zero
/* BCD18 800E1918 AF0E0000 */  sw         $t6, ($t8)
.L800E191C:
/* BCD1C 800E191C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BCD20 800E1920 27BD0018 */  addiu      $sp, $sp, 0x18
/* BCD24 800E1924 03E00008 */  jr         $ra
/* BCD28 800E1928 00000000 */   nop
/* BCD2C 800E192C 00000000 */  nop
