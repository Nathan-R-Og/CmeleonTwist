.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E6770
/* C1B70 800E6770 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C1B74 800E6774 AFBF0014 */  sw         $ra, 0x14($sp)
/* C1B78 800E6778 AFA40018 */  sw         $a0, 0x18($sp)
/* C1B7C 800E677C AFA5001C */  sw         $a1, 0x1c($sp)
/* C1B80 800E6780 AFA60020 */  sw         $a2, 0x20($sp)
/* C1B84 800E6784 0C039A00 */  jal        func_800E6800
/* C1B88 800E6788 AFA70024 */   sw        $a3, 0x24($sp)
/* C1B8C 800E678C 10400003 */  beqz       $v0, .L800E679C
/* C1B90 800E6790 00000000 */   nop
/* C1B94 800E6794 10000015 */  b          .L800E67EC
/* C1B98 800E6798 2402FFFF */   addiu     $v0, $zero, -1
.L800E679C:
/* C1B9C 800E679C 8FAE001C */  lw         $t6, 0x1c($sp)
/* C1BA0 800E67A0 3C0FA404 */  lui        $t7, 0xa404
/* C1BA4 800E67A4 ADEE0000 */  sw         $t6, ($t7)
/* C1BA8 800E67A8 0C037228 */  jal        func_800DC8A0
/* C1BAC 800E67AC 8FA40020 */   lw        $a0, 0x20($sp)
/* C1BB0 800E67B0 3C18A404 */  lui        $t8, %hi(D_A4040004)
/* C1BB4 800E67B4 AF020004 */  sw         $v0, %lo(D_A4040004)($t8)
/* C1BB8 800E67B8 8FB90018 */  lw         $t9, 0x18($sp)
/* C1BBC 800E67BC 17200006 */  bnez       $t9, .L800E67D8
/* C1BC0 800E67C0 00000000 */   nop
/* C1BC4 800E67C4 8FA80024 */  lw         $t0, 0x24($sp)
/* C1BC8 800E67C8 3C0AA404 */  lui        $t2, %hi(D_A404000C)
/* C1BCC 800E67CC 2509FFFF */  addiu      $t1, $t0, -1
/* C1BD0 800E67D0 10000005 */  b          .L800E67E8
/* C1BD4 800E67D4 AD49000C */   sw        $t1, %lo(D_A404000C)($t2)
.L800E67D8:
/* C1BD8 800E67D8 8FAB0024 */  lw         $t3, 0x24($sp)
/* C1BDC 800E67DC 3C0DA404 */  lui        $t5, %hi(D_A4040008)
/* C1BE0 800E67E0 256CFFFF */  addiu      $t4, $t3, -1
/* C1BE4 800E67E4 ADAC0008 */  sw         $t4, %lo(D_A4040008)($t5)
.L800E67E8:
/* C1BE8 800E67E8 00001025 */  or         $v0, $zero, $zero
.L800E67EC:
/* C1BEC 800E67EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C1BF0 800E67F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* C1BF4 800E67F4 03E00008 */  jr         $ra
/* C1BF8 800E67F8 00000000 */   nop
/* C1BFC 800E67FC 00000000 */  nop
