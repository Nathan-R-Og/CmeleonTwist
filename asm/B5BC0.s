.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DA7C0
/* B5BC0 800DA7C0 3C014780 */  lui        $at, 0x4780
/* B5BC4 800DA7C4 44810000 */  mtc1       $at, $f0
/* B5BC8 800DA7C8 00A01025 */  or         $v0, $a1, $zero
/* B5BCC 800DA7CC 24A30020 */  addiu      $v1, $a1, 0x20
/* B5BD0 800DA7D0 00003025 */  or         $a2, $zero, $zero
/* B5BD4 800DA7D4 00803825 */  or         $a3, $a0, $zero
/* B5BD8 800DA7D8 240C0004 */  addiu      $t4, $zero, 4
/* B5BDC 800DA7DC 240B0002 */  addiu      $t3, $zero, 2
/* B5BE0 800DA7E0 3C0AFFFF */  lui        $t2, 0xffff
.L800DA7E4:
/* B5BE4 800DA7E4 00002025 */  or         $a0, $zero, $zero
/* B5BE8 800DA7E8 00E04025 */  or         $t0, $a3, $zero
/* B5BEC 800DA7EC C50E0004 */  lwc1       $f14, 4($t0)
/* B5BF0 800DA7F0 24840001 */  addiu      $a0, $a0, 1
/* B5BF4 800DA7F4 C5120000 */  lwc1       $f18, ($t0)
/* B5BF8 800DA7F8 46007402 */  mul.s      $f16, $f14, $f0
/* B5BFC 800DA7FC 108B0019 */  beq        $a0, $t3, .L800DA864
/* B5C00 800DA800 00000000 */   nop
.L800DA804:
/* B5C04 800DA804 46009382 */  mul.s      $f14, $f18, $f0
/* B5C08 800DA808 24840001 */  addiu      $a0, $a0, 1
/* B5C0C 800DA80C 24420004 */  addiu      $v0, $v0, 4
/* B5C10 800DA810 24630004 */  addiu      $v1, $v1, 4
/* B5C14 800DA814 25080008 */  addiu      $t0, $t0, 8
/* B5C18 800DA818 4600830D */  trunc.w.s  $f12, $f16
/* B5C1C 800DA81C 4600738D */  trunc.w.s  $f14, $f14
/* B5C20 800DA820 44096000 */  mfc1       $t1, $f12
/* B5C24 800DA824 44057000 */  mfc1       $a1, $f14
/* B5C28 800DA828 0009CC03 */  sra        $t9, $t1, 0x10
/* B5C2C 800DA82C 332DFFFF */  andi       $t5, $t9, 0xffff
/* B5C30 800DA830 00AAC024 */  and        $t8, $a1, $t2
/* B5C34 800DA834 030D7025 */  or         $t6, $t8, $t5
/* B5C38 800DA838 00057C00 */  sll        $t7, $a1, 0x10
/* B5C3C 800DA83C 01EAC824 */  and        $t9, $t7, $t2
/* B5C40 800DA840 AC4EFFFC */  sw         $t6, -4($v0)
/* B5C44 800DA844 3138FFFF */  andi       $t8, $t1, 0xffff
/* B5C48 800DA848 03386825 */  or         $t5, $t9, $t8
/* B5C4C 800DA84C AC6DFFFC */  sw         $t5, -4($v1)
/* B5C50 800DA850 C50E0004 */  lwc1       $f14, 4($t0)
/* B5C54 800DA854 C5120000 */  lwc1       $f18, ($t0)
/* B5C58 800DA858 46007402 */  mul.s      $f16, $f14, $f0
/* B5C5C 800DA85C 148BFFE9 */  bne        $a0, $t3, .L800DA804
/* B5C60 800DA860 00000000 */   nop
.L800DA864:
/* B5C64 800DA864 46009382 */  mul.s      $f14, $f18, $f0
/* B5C68 800DA868 25080008 */  addiu      $t0, $t0, 8
/* B5C6C 800DA86C 24420004 */  addiu      $v0, $v0, 4
/* B5C70 800DA870 24630004 */  addiu      $v1, $v1, 4
/* B5C74 800DA874 4600830D */  trunc.w.s  $f12, $f16
/* B5C78 800DA878 4600738D */  trunc.w.s  $f14, $f14
/* B5C7C 800DA87C 44096000 */  mfc1       $t1, $f12
/* B5C80 800DA880 44057000 */  mfc1       $a1, $f14
/* B5C84 800DA884 0009CC03 */  sra        $t9, $t1, 0x10
/* B5C88 800DA888 332DFFFF */  andi       $t5, $t9, 0xffff
/* B5C8C 800DA88C 00AAC024 */  and        $t8, $a1, $t2
/* B5C90 800DA890 030D7025 */  or         $t6, $t8, $t5
/* B5C94 800DA894 00057C00 */  sll        $t7, $a1, 0x10
/* B5C98 800DA898 01EAC824 */  and        $t9, $t7, $t2
/* B5C9C 800DA89C 3138FFFF */  andi       $t8, $t1, 0xffff
/* B5CA0 800DA8A0 AC4EFFFC */  sw         $t6, -4($v0)
/* B5CA4 800DA8A4 03386825 */  or         $t5, $t9, $t8
/* B5CA8 800DA8A8 AC6DFFFC */  sw         $t5, -4($v1)
/* B5CAC 800DA8AC 24C60001 */  addiu      $a2, $a2, 1
/* B5CB0 800DA8B0 14CCFFCC */  bne        $a2, $t4, .L800DA7E4
/* B5CB4 800DA8B4 24E70010 */   addiu     $a3, $a3, 0x10
/* B5CB8 800DA8B8 03E00008 */  jr         $ra
/* B5CBC 800DA8BC 00000000 */   nop

glabel func_800DA8C0
/* B5CC0 800DA8C0 3C013F80 */  lui        $at, 0x3f80
/* B5CC4 800DA8C4 00801825 */  or         $v1, $a0, $zero
/* B5CC8 800DA8C8 44810000 */  mtc1       $at, $f0
/* B5CCC 800DA8CC 44801000 */  mtc1       $zero, $f2
/* B5CD0 800DA8D0 24040001 */  addiu      $a0, $zero, 1
/* B5CD4 800DA8D4 00001025 */  or         $v0, $zero, $zero
/* B5CD8 800DA8D8 24070004 */  addiu      $a3, $zero, 4
/* B5CDC 800DA8DC 24060003 */  addiu      $a2, $zero, 3
/* B5CE0 800DA8E0 24050002 */  addiu      $a1, $zero, 2
.L800DA8E4:
/* B5CE4 800DA8E4 54400004 */  bnel       $v0, $zero, .L800DA8F8
/* B5CE8 800DA8E8 E4620000 */   swc1      $f2, ($v1)
/* B5CEC 800DA8EC 10000002 */  b          .L800DA8F8
/* B5CF0 800DA8F0 E4600000 */   swc1      $f0, ($v1)
/* B5CF4 800DA8F4 E4620000 */  swc1       $f2, ($v1)
.L800DA8F8:
/* B5CF8 800DA8F8 54440004 */  bnel       $v0, $a0, .L800DA90C
/* B5CFC 800DA8FC E4620004 */   swc1      $f2, 4($v1)
/* B5D00 800DA900 10000002 */  b          .L800DA90C
/* B5D04 800DA904 E4600004 */   swc1      $f0, 4($v1)
/* B5D08 800DA908 E4620004 */  swc1       $f2, 4($v1)
.L800DA90C:
/* B5D0C 800DA90C 54450004 */  bnel       $v0, $a1, .L800DA920
/* B5D10 800DA910 E4620008 */   swc1      $f2, 8($v1)
/* B5D14 800DA914 10000002 */  b          .L800DA920
/* B5D18 800DA918 E4600008 */   swc1      $f0, 8($v1)
/* B5D1C 800DA91C E4620008 */  swc1       $f2, 8($v1)
.L800DA920:
/* B5D20 800DA920 54460004 */  bnel       $v0, $a2, .L800DA934
/* B5D24 800DA924 E462000C */   swc1      $f2, 0xc($v1)
/* B5D28 800DA928 10000002 */  b          .L800DA934
/* B5D2C 800DA92C E460000C */   swc1      $f0, 0xc($v1)
/* B5D30 800DA930 E462000C */  swc1       $f2, 0xc($v1)
.L800DA934:
/* B5D34 800DA934 24420001 */  addiu      $v0, $v0, 1
/* B5D38 800DA938 1447FFEA */  bne        $v0, $a3, .L800DA8E4
/* B5D3C 800DA93C 24630010 */   addiu     $v1, $v1, 0x10
/* B5D40 800DA940 03E00008 */  jr         $ra
/* B5D44 800DA944 00000000 */   nop

glabel func_800DA948
/* B5D48 800DA948 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* B5D4C 800DA94C AFBF0014 */  sw         $ra, 0x14($sp)
/* B5D50 800DA950 AFA40058 */  sw         $a0, 0x58($sp)
/* B5D54 800DA954 0C036A30 */  jal        func_800DA8C0
/* B5D58 800DA958 27A40018 */   addiu     $a0, $sp, 0x18
/* B5D5C 800DA95C 27A40018 */  addiu      $a0, $sp, 0x18
/* B5D60 800DA960 0C0369F0 */  jal        func_800DA7C0
/* B5D64 800DA964 8FA50058 */   lw        $a1, 0x58($sp)
/* B5D68 800DA968 8FBF0014 */  lw         $ra, 0x14($sp)
/* B5D6C 800DA96C 27BD0058 */  addiu      $sp, $sp, 0x58
/* B5D70 800DA970 03E00008 */  jr         $ra
/* B5D74 800DA974 00000000 */   nop

glabel func_800DA978
/* B5D78 800DA978 3C014780 */  lui        $at, 0x4780
/* B5D7C 800DA97C 44810000 */  mtc1       $at, $f0
/* B5D80 800DA980 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B5D84 800DA984 00A01025 */  or         $v0, $a1, $zero
/* B5D88 800DA988 24A30020 */  addiu      $v1, $a1, 0x20
/* B5D8C 800DA98C 00003025 */  or         $a2, $zero, $zero
/* B5D90 800DA990 00804025 */  or         $t0, $a0, $zero
/* B5D94 800DA994 240C0004 */  addiu      $t4, $zero, 4
/* B5D98 800DA998 240B0002 */  addiu      $t3, $zero, 2
/* B5D9C 800DA99C 3C0AFFFF */  lui        $t2, 0xffff
.L800DA9A0:
/* B5DA0 800DA9A0 00002025 */  or         $a0, $zero, $zero
/* B5DA4 800DA9A4 01004825 */  or         $t1, $t0, $zero
.L800DA9A8:
/* B5DA8 800DA9A8 8C6E0000 */  lw         $t6, ($v1)
/* B5DAC 800DA9AC 8C590000 */  lw         $t9, ($v0)
/* B5DB0 800DA9B0 24840001 */  addiu      $a0, $a0, 1
/* B5DB4 800DA9B4 000E7C02 */  srl        $t7, $t6, 0x10
/* B5DB8 800DA9B8 31F8FFFF */  andi       $t8, $t7, 0xffff
/* B5DBC 800DA9BC 032A6824 */  and        $t5, $t9, $t2
/* B5DC0 800DA9C0 030D7025 */  or         $t6, $t8, $t5
/* B5DC4 800DA9C4 AFAE0004 */  sw         $t6, 4($sp)
/* B5DC8 800DA9C8 8C6F0000 */  lw         $t7, ($v1)
/* B5DCC 800DA9CC 8C580000 */  lw         $t8, ($v0)
/* B5DD0 800DA9D0 8FA50004 */  lw         $a1, 4($sp)
/* B5DD4 800DA9D4 31F9FFFF */  andi       $t9, $t7, 0xffff
/* B5DD8 800DA9D8 00186C00 */  sll        $t5, $t8, 0x10
/* B5DDC 800DA9DC 44859000 */  mtc1       $a1, $f18
/* B5DE0 800DA9E0 01AA7024 */  and        $t6, $t5, $t2
/* B5DE4 800DA9E4 032E3825 */  or         $a3, $t9, $t6
/* B5DE8 800DA9E8 468094A0 */  cvt.s.w    $f18, $f18
/* B5DEC 800DA9EC 44878000 */  mtc1       $a3, $f16
/* B5DF0 800DA9F0 AFA70000 */  sw         $a3, ($sp)
/* B5DF4 800DA9F4 24420004 */  addiu      $v0, $v0, 4
/* B5DF8 800DA9F8 24630004 */  addiu      $v1, $v1, 4
/* B5DFC 800DA9FC 46808420 */  cvt.s.w    $f16, $f16
/* B5E00 800DAA00 25290008 */  addiu      $t1, $t1, 8
/* B5E04 800DAA04 46009483 */  div.s      $f18, $f18, $f0
/* B5E08 800DAA08 46008403 */  div.s      $f16, $f16, $f0
/* B5E0C 800DAA0C E532FFF8 */  swc1       $f18, -8($t1)
/* B5E10 800DAA10 148BFFE5 */  bne        $a0, $t3, .L800DA9A8
/* B5E14 800DAA14 E530FFFC */   swc1      $f16, -4($t1)
/* B5E18 800DAA18 24C60001 */  addiu      $a2, $a2, 1
/* B5E1C 800DAA1C 14CCFFE0 */  bne        $a2, $t4, .L800DA9A0
/* B5E20 800DAA20 25080010 */   addiu     $t0, $t0, 0x10
/* B5E24 800DAA24 03E00008 */  jr         $ra
/* B5E28 800DAA28 27BD0010 */   addiu     $sp, $sp, 0x10
/* B5E2C 800DAA2C 00000000 */  nop
