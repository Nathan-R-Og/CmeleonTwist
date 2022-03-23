.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E87A0
/* C3BA0 800E87A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C3BA4 800E87A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C3BA8 800E87A8 AFA40018 */  sw         $a0, 0x18($sp)
/* C3BAC 800E87AC AFA60020 */  sw         $a2, 0x20($sp)
/* C3BB0 800E87B0 8CAE0008 */  lw         $t6, 8($a1)
/* C3BB4 800E87B4 51C00018 */  beql       $t6, $zero, .L800E8818
/* C3BB8 800E87B8 8FBF0014 */   lw        $ra, 0x14($sp)
/* C3BBC 800E87BC 0C037AA8 */  jal        func_800DEAA0
/* C3BC0 800E87C0 AFA5001C */   sw        $a1, 0x1c($sp)
/* C3BC4 800E87C4 8FA7001C */  lw         $a3, 0x1c($sp)
/* C3BC8 800E87C8 10400012 */  beqz       $v0, .L800E8814
/* C3BCC 800E87CC 00403025 */   or        $a2, $v0, $zero
/* C3BD0 800E87D0 8FAF0018 */  lw         $t7, 0x18($sp)
/* C3BD4 800E87D4 8CF90008 */  lw         $t9, 8($a3)
/* C3BD8 800E87D8 240A0007 */  addiu      $t2, $zero, 7
/* C3BDC 800E87DC 8DF8001C */  lw         $t8, 0x1c($t7)
/* C3BE0 800E87E0 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C3BE4 800E87E4 A44A0008 */  sh         $t2, 8($v0)
/* C3BE8 800E87E8 24050003 */  addiu      $a1, $zero, 3
/* C3BEC 800E87EC 03084821 */  addu       $t1, $t8, $t0
/* C3BF0 800E87F0 AC490004 */  sw         $t1, 4($v0)
/* C3BF4 800E87F4 C7A40020 */  lwc1       $f4, 0x20($sp)
/* C3BF8 800E87F8 AC400000 */  sw         $zero, ($v0)
/* C3BFC 800E87FC E444000C */  swc1       $f4, 0xc($v0)
/* C3C00 800E8800 8CEB0008 */  lw         $t3, 8($a3)
/* C3C04 800E8804 8D64000C */  lw         $a0, 0xc($t3)
/* C3C08 800E8808 8C990008 */  lw         $t9, 8($a0)
/* C3C0C 800E880C 0320F809 */  jalr       $t9
/* C3C10 800E8810 00000000 */   nop
.L800E8814:
/* C3C14 800E8814 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8818:
/* C3C18 800E8818 27BD0018 */  addiu      $sp, $sp, 0x18
/* C3C1C 800E881C 03E00008 */  jr         $ra
/* C3C20 800E8820 00000000 */   nop
/* C3C24 800E8824 00000000 */  nop
/* C3C28 800E8828 00000000 */  nop
/* C3C2C 800E882C 00000000 */  nop
