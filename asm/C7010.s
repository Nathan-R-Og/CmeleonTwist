.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBC10
/* C7010 800EBC10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C7014 800EBC14 AFBF0024 */  sw         $ra, 0x24($sp)
/* C7018 800EBC18 AFA40038 */  sw         $a0, 0x38($sp)
/* C701C 800EBC1C AFB20020 */  sw         $s2, 0x20($sp)
/* C7020 800EBC20 AFB1001C */  sw         $s1, 0x1c($sp)
/* C7024 800EBC24 0C038AF8 */  jal        func_800E2BE0
/* C7028 800EBC28 AFB00018 */   sw        $s0, 0x18($sp)
/* C702C 800EBC2C 8FAE0038 */  lw         $t6, 0x38($sp)
/* C7030 800EBC30 00408025 */  or         $s0, $v0, $zero
/* C7034 800EBC34 15C00005 */  bnez       $t6, .L800EBC4C
/* C7038 800EBC38 00000000 */   nop
/* C703C 800EBC3C 3C0F8011 */  lui        $t7, %hi(D_80109E10)
/* C7040 800EBC40 8DEF9E10 */  lw         $t7, %lo(D_80109E10)($t7)
/* C7044 800EBC44 10000009 */  b          .L800EBC6C
/* C7048 800EBC48 AFAF0038 */   sw        $t7, 0x38($sp)
.L800EBC4C:
/* C704C 800EBC4C 8FB80038 */  lw         $t8, 0x38($sp)
/* C7050 800EBC50 24010001 */  addiu      $at, $zero, 1
/* C7054 800EBC54 97190010 */  lhu        $t9, 0x10($t8)
/* C7058 800EBC58 13210004 */  beq        $t9, $at, .L800EBC6C
/* C705C 800EBC5C 00000000 */   nop
/* C7060 800EBC60 8F040008 */  lw         $a0, 8($t8)
/* C7064 800EBC64 0C038B08 */  jal        func_800E2C20
/* C7068 800EBC68 03002825 */   or        $a1, $t8, $zero
.L800EBC6C:
/* C706C 800EBC6C 3C088011 */  lui        $t0, %hi(D_80109E0C)
/* C7070 800EBC70 8D089E0C */  lw         $t0, %lo(D_80109E0C)($t0)
/* C7074 800EBC74 8FA90038 */  lw         $t1, 0x38($sp)
/* C7078 800EBC78 15090005 */  bne        $t0, $t1, .L800EBC90
/* C707C 800EBC7C 00000000 */   nop
/* C7080 800EBC80 8D0A000C */  lw         $t2, 0xc($t0)
/* C7084 800EBC84 3C018011 */  lui        $at, %hi(D_80109E0C)
/* C7088 800EBC88 10000010 */  b          .L800EBCCC
/* C708C 800EBC8C AC2A9E0C */   sw        $t2, %lo(D_80109E0C)($at)
.L800EBC90:
/* C7090 800EBC90 3C118011 */  lui        $s1, %hi(D_80109E0C)
/* C7094 800EBC94 8E319E0C */  lw         $s1, %lo(D_80109E0C)($s1)
/* C7098 800EBC98 8E32000C */  lw         $s2, 0xc($s1)
/* C709C 800EBC9C 1240000B */  beqz       $s2, .L800EBCCC
/* C70A0 800EBCA0 00000000 */   nop
.L800EBCA4:
/* C70A4 800EBCA4 8FAB0038 */  lw         $t3, 0x38($sp)
/* C70A8 800EBCA8 164B0004 */  bne        $s2, $t3, .L800EBCBC
/* C70AC 800EBCAC 00000000 */   nop
/* C70B0 800EBCB0 8D6C000C */  lw         $t4, 0xc($t3)
/* C70B4 800EBCB4 10000005 */  b          .L800EBCCC
/* C70B8 800EBCB8 AE2C000C */   sw        $t4, 0xc($s1)
.L800EBCBC:
/* C70BC 800EBCBC 02408825 */  or         $s1, $s2, $zero
/* C70C0 800EBCC0 8E32000C */  lw         $s2, 0xc($s1)
/* C70C4 800EBCC4 1640FFF7 */  bnez       $s2, .L800EBCA4
/* C70C8 800EBCC8 00000000 */   nop
.L800EBCCC:
/* C70CC 800EBCCC 3C0E8011 */  lui        $t6, %hi(D_80109E10)
/* C70D0 800EBCD0 8DCE9E10 */  lw         $t6, %lo(D_80109E10)($t6)
/* C70D4 800EBCD4 8FAD0038 */  lw         $t5, 0x38($sp)
/* C70D8 800EBCD8 15AE0003 */  bne        $t5, $t6, .L800EBCE8
/* C70DC 800EBCDC 00000000 */   nop
/* C70E0 800EBCE0 0C038829 */  jal        func_800E20A4
/* C70E4 800EBCE4 00000000 */   nop
.L800EBCE8:
/* C70E8 800EBCE8 0C038B00 */  jal        func_800E2C00
/* C70EC 800EBCEC 02002025 */   or        $a0, $s0, $zero
/* C70F0 800EBCF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* C70F4 800EBCF4 8FB00018 */  lw         $s0, 0x18($sp)
/* C70F8 800EBCF8 8FB1001C */  lw         $s1, 0x1c($sp)
/* C70FC 800EBCFC 8FB20020 */  lw         $s2, 0x20($sp)
/* C7100 800EBD00 03E00008 */  jr         $ra
/* C7104 800EBD04 27BD0038 */   addiu     $sp, $sp, 0x38
/* C7108 800EBD08 00000000 */  nop
/* C710C 800EBD0C 00000000 */  nop
