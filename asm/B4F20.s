.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D9B20
/* B4F20 800D9B20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B4F24 800D9B24 AFBF001C */  sw         $ra, 0x1c($sp)
/* B4F28 800D9B28 AFA40028 */  sw         $a0, 0x28($sp)
/* B4F2C 800D9B2C AFB10018 */  sw         $s1, 0x18($sp)
/* B4F30 800D9B30 0C038AF8 */  jal        func_800E2BE0
/* B4F34 800D9B34 AFB00014 */   sw        $s0, 0x14($sp)
/* B4F38 800D9B38 8FAE0028 */  lw         $t6, 0x28($sp)
/* B4F3C 800D9B3C 24010001 */  addiu      $at, $zero, 1
/* B4F40 800D9B40 00408025 */  or         $s0, $v0, $zero
/* B4F44 800D9B44 95D10010 */  lhu        $s1, 0x10($t6)
/* B4F48 800D9B48 1221000C */  beq        $s1, $at, .L800D9B7C
/* B4F4C 800D9B4C 24010008 */   addiu     $at, $zero, 8
/* B4F50 800D9B50 1621002A */  bne        $s1, $at, .L800D9BFC
/* B4F54 800D9B54 00000000 */   nop
/* B4F58 800D9B58 8FB80028 */  lw         $t8, 0x28($sp)
/* B4F5C 800D9B5C 240F0002 */  addiu      $t7, $zero, 2
/* B4F60 800D9B60 3C048011 */  lui        $a0, %hi(D_80109E08)
/* B4F64 800D9B64 A70F0010 */  sh         $t7, 0x10($t8)
/* B4F68 800D9B68 8FA50028 */  lw         $a1, 0x28($sp)
/* B4F6C 800D9B6C 0C038813 */  jal        func_800E204C
/* B4F70 800D9B70 24849E08 */   addiu     $a0, $a0, %lo(D_80109E08)
/* B4F74 800D9B74 10000021 */  b          .L800D9BFC
/* B4F78 800D9B78 00000000 */   nop
.L800D9B7C:
/* B4F7C 800D9B7C 8FB90028 */  lw         $t9, 0x28($sp)
/* B4F80 800D9B80 8F280008 */  lw         $t0, 8($t9)
/* B4F84 800D9B84 11000005 */  beqz       $t0, .L800D9B9C
/* B4F88 800D9B88 00000000 */   nop
/* B4F8C 800D9B8C 3C098011 */  lui        $t1, %hi(D_80109E08)
/* B4F90 800D9B90 25299E08 */  addiu      $t1, $t1, %lo(D_80109E08)
/* B4F94 800D9B94 1509000A */  bne        $t0, $t1, .L800D9BC0
/* B4F98 800D9B98 00000000 */   nop
.L800D9B9C:
/* B4F9C 800D9B9C 8FAB0028 */  lw         $t3, 0x28($sp)
/* B4FA0 800D9BA0 240A0002 */  addiu      $t2, $zero, 2
/* B4FA4 800D9BA4 3C048011 */  lui        $a0, %hi(D_80109E08)
/* B4FA8 800D9BA8 A56A0010 */  sh         $t2, 0x10($t3)
/* B4FAC 800D9BAC 8FA50028 */  lw         $a1, 0x28($sp)
/* B4FB0 800D9BB0 0C038813 */  jal        func_800E204C
/* B4FB4 800D9BB4 24849E08 */   addiu     $a0, $a0, %lo(D_80109E08)
/* B4FB8 800D9BB8 10000010 */  b          .L800D9BFC
/* B4FBC 800D9BBC 00000000 */   nop
.L800D9BC0:
/* B4FC0 800D9BC0 8FAD0028 */  lw         $t5, 0x28($sp)
/* B4FC4 800D9BC4 240C0008 */  addiu      $t4, $zero, 8
/* B4FC8 800D9BC8 A5AC0010 */  sh         $t4, 0x10($t5)
/* B4FCC 800D9BCC 8FAE0028 */  lw         $t6, 0x28($sp)
/* B4FD0 800D9BD0 8DC40008 */  lw         $a0, 8($t6)
/* B4FD4 800D9BD4 0C038813 */  jal        func_800E204C
/* B4FD8 800D9BD8 01C02825 */   or        $a1, $t6, $zero
/* B4FDC 800D9BDC 8FAF0028 */  lw         $t7, 0x28($sp)
/* B4FE0 800D9BE0 0C038825 */  jal        func_800E2094
/* B4FE4 800D9BE4 8DE40008 */   lw        $a0, 8($t7)
/* B4FE8 800D9BE8 00408825 */  or         $s1, $v0, $zero
/* B4FEC 800D9BEC 3C048011 */  lui        $a0, %hi(D_80109E08)
/* B4FF0 800D9BF0 24849E08 */  addiu      $a0, $a0, %lo(D_80109E08)
/* B4FF4 800D9BF4 0C038813 */  jal        func_800E204C
/* B4FF8 800D9BF8 02202825 */   or        $a1, $s1, $zero
.L800D9BFC:
/* B4FFC 800D9BFC 3C188011 */  lui        $t8, %hi(D_80109E10)
/* B5000 800D9C00 8F189E10 */  lw         $t8, %lo(D_80109E10)($t8)
/* B5004 800D9C04 17000005 */  bnez       $t8, .L800D9C1C
/* B5008 800D9C08 00000000 */   nop
/* B500C 800D9C0C 0C038829 */  jal        func_800E20A4
/* B5010 800D9C10 00000000 */   nop
/* B5014 800D9C14 1000000F */  b          .L800D9C54
/* B5018 800D9C18 00000000 */   nop
.L800D9C1C:
/* B501C 800D9C1C 3C198011 */  lui        $t9, %hi(D_80109E10)
/* B5020 800D9C20 3C098011 */  lui        $t1, %hi(D_80109E08)
/* B5024 800D9C24 8D299E08 */  lw         $t1, %lo(D_80109E08)($t1)
/* B5028 800D9C28 8F399E10 */  lw         $t9, %lo(D_80109E10)($t9)
/* B502C 800D9C2C 8D2A0004 */  lw         $t2, 4($t1)
/* B5030 800D9C30 8F280004 */  lw         $t0, 4($t9)
/* B5034 800D9C34 010A082A */  slt        $at, $t0, $t2
/* B5038 800D9C38 10200006 */  beqz       $at, .L800D9C54
/* B503C 800D9C3C 00000000 */   nop
/* B5040 800D9C40 240B0002 */  addiu      $t3, $zero, 2
/* B5044 800D9C44 3C048011 */  lui        $a0, %hi(D_80109E08)
/* B5048 800D9C48 A72B0010 */  sh         $t3, 0x10($t9)
/* B504C 800D9C4C 0C0387D3 */  jal        func_800E1F4C
/* B5050 800D9C50 24849E08 */   addiu     $a0, $a0, %lo(D_80109E08)
.L800D9C54:
/* B5054 800D9C54 0C038B00 */  jal        func_800E2C00
/* B5058 800D9C58 02002025 */   or        $a0, $s0, $zero
/* B505C 800D9C5C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B5060 800D9C60 8FB00014 */  lw         $s0, 0x14($sp)
/* B5064 800D9C64 8FB10018 */  lw         $s1, 0x18($sp)
/* B5068 800D9C68 03E00008 */  jr         $ra
/* B506C 800D9C6C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800D9C70
/* B5070 800D9C70 3C0E8011 */  lui        $t6, %hi(D_80109030)
/* B5074 800D9C74 8DCE9030 */  lw         $t6, %lo(D_80109030)($t6)
/* B5078 800D9C78 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B507C 800D9C7C AFBF001C */  sw         $ra, 0x1c($sp)
/* B5080 800D9C80 15C00059 */  bnez       $t6, .L800D9DE8
/* B5084 800D9C84 AFA40030 */   sw        $a0, 0x30($sp)
/* B5088 800D9C88 0C038B18 */  jal        func_800E2C60
/* B508C 800D9C8C 00000000 */   nop
/* B5090 800D9C90 3C048025 */  lui        $a0, %hi(D_80249E30)
/* B5094 800D9C94 3C058025 */  lui        $a1, %hi(D_80249E48)
/* B5098 800D9C98 24A59E48 */  addiu      $a1, $a1, %lo(D_80249E48)
/* B509C 800D9C9C 24849E30 */  addiu      $a0, $a0, %lo(D_80249E30)
/* B50A0 800D9CA0 0C036938 */  jal        func_800DA4E0
/* B50A4 800D9CA4 24060005 */   addiu     $a2, $zero, 5
/* B50A8 800D9CA8 3C018025 */  lui        $at, %hi(D_80249E60)
/* B50AC 800D9CAC 240F000D */  addiu      $t7, $zero, 0xd
/* B50B0 800D9CB0 A42F9E60 */  sh         $t7, %lo(D_80249E60)($at)
/* B50B4 800D9CB4 A0209E62 */  sb         $zero, -0x619e($at)
/* B50B8 800D9CB8 AC209E64 */  sw         $zero, -0x619c($at)
/* B50BC 800D9CBC 3C018025 */  lui        $at, %hi(D_80249E78)
/* B50C0 800D9CC0 2418000E */  addiu      $t8, $zero, 0xe
/* B50C4 800D9CC4 3C058025 */  lui        $a1, 0x8025
/* B50C8 800D9CC8 3C068025 */  lui        $a2, %hi(D_80249E60)
/* B50CC 800D9CCC A4389E78 */  sh         $t8, %lo(D_80249E78)($at)
/* B50D0 800D9CD0 A0209E7A */  sb         $zero, -0x6186($at)
/* B50D4 800D9CD4 AC209E7C */  sw         $zero, -0x6184($at)
/* B50D8 800D9CD8 24C69E60 */  addiu      $a2, $a2, %lo(D_80249E60)
/* B50DC 800D9CDC 24A59E30 */  addiu      $a1, $a1, -0x61d0
/* B50E0 800D9CE0 0C036C8C */  jal        func_800DB230
/* B50E4 800D9CE4 24040007 */   addiu     $a0, $zero, 7
/* B50E8 800D9CE8 3C058025 */  lui        $a1, %hi(D_80249E30)
/* B50EC 800D9CEC 3C068025 */  lui        $a2, %hi(D_80249E78)
/* B50F0 800D9CF0 24C69E78 */  addiu      $a2, $a2, %lo(D_80249E78)
/* B50F4 800D9CF4 24A59E30 */  addiu      $a1, $a1, %lo(D_80249E30)
/* B50F8 800D9CF8 0C036C8C */  jal        func_800DB230
/* B50FC 800D9CFC 24040003 */   addiu     $a0, $zero, 3
/* B5100 800D9D00 2419FFFF */  addiu      $t9, $zero, -1
/* B5104 800D9D04 AFB90028 */  sw         $t9, 0x28($sp)
/* B5108 800D9D08 0C038C18 */  jal        func_800E3060
/* B510C 800D9D0C 00002025 */   or        $a0, $zero, $zero
/* B5110 800D9D10 AFA20024 */  sw         $v0, 0x24($sp)
/* B5114 800D9D14 8FA80024 */  lw         $t0, 0x24($sp)
/* B5118 800D9D18 8FA90030 */  lw         $t1, 0x30($sp)
/* B511C 800D9D1C 0109082A */  slt        $at, $t0, $t1
/* B5120 800D9D20 10200005 */  beqz       $at, .L800D9D38
/* B5124 800D9D24 00000000 */   nop
/* B5128 800D9D28 AFA80028 */  sw         $t0, 0x28($sp)
/* B512C 800D9D2C 00002025 */  or         $a0, $zero, $zero
/* B5130 800D9D30 0C036900 */  jal        func_800DA400
/* B5134 800D9D34 01202825 */   or        $a1, $t1, $zero
.L800D9D38:
/* B5138 800D9D38 0C038AF8 */  jal        func_800E2BE0
/* B513C 800D9D3C 00000000 */   nop
/* B5140 800D9D40 3C018011 */  lui        $at, 0x8011
/* B5144 800D9D44 3C0C8025 */  lui        $t4, %hi(D_80249E30)
/* B5148 800D9D48 3C0B8025 */  lui        $t3, %hi(D_80248C80)
/* B514C 800D9D4C 258C9E30 */  addiu      $t4, $t4, %lo(D_80249E30)
/* B5150 800D9D50 240A0001 */  addiu      $t2, $zero, 1
/* B5154 800D9D54 256B8C80 */  addiu      $t3, $t3, %lo(D_80248C80)
/* B5158 800D9D58 AC2A9030 */  sw         $t2, -0x6fd0($at)
/* B515C 800D9D5C AC2B9034 */  sw         $t3, -0x6fcc($at)
/* B5160 800D9D60 AC2C9038 */  sw         $t4, -0x6fc8($at)
/* B5164 800D9D64 AC2C903C */  sw         $t4, -0x6fc4($at)
/* B5168 800D9D68 3C0D8025 */  lui        $t5, %hi(D_80248E30)
/* B516C 800D9D6C 8FAF0030 */  lw         $t7, 0x30($sp)
/* B5170 800D9D70 3C018011 */  lui        $at, 0x8011
/* B5174 800D9D74 25AD8E30 */  addiu      $t5, $t5, %lo(D_80248E30)
/* B5178 800D9D78 25AE1000 */  addiu      $t6, $t5, 0x1000
/* B517C 800D9D7C 3C06800E */  lui        $a2, 0x800e
/* B5180 800D9D80 3C078011 */  lui        $a3, %hi(D_80109030)
/* B5184 800D9D84 AFA2002C */  sw         $v0, 0x2c($sp)
/* B5188 800D9D88 AC209040 */  sw         $zero, -0x6fc0($at)
/* B518C 800D9D8C AC209044 */  sw         $zero, -0x6fbc($at)
/* B5190 800D9D90 AC209048 */  sw         $zero, -0x6fb8($at)
/* B5194 800D9D94 24E79030 */  addiu      $a3, $a3, %lo(D_80109030)
/* B5198 800D9D98 24C69DF8 */  addiu      $a2, $a2, -0x6208
/* B519C 800D9D9C AFAE0010 */  sw         $t6, 0x10($sp)
/* B51A0 800D9DA0 01602025 */  or         $a0, $t3, $zero
/* B51A4 800D9DA4 00002825 */  or         $a1, $zero, $zero
/* B51A8 800D9DA8 0C036674 */  jal        func_800D99D0
/* B51AC 800D9DAC AFAF0014 */   sw        $t7, 0x14($sp)
/* B51B0 800D9DB0 0C038C20 */  jal        func_800E3080
/* B51B4 800D9DB4 00000000 */   nop
/* B51B8 800D9DB8 3C048025 */  lui        $a0, %hi(D_80248C80)
/* B51BC 800D9DBC 0C0366C8 */  jal        func_800D9B20
/* B51C0 800D9DC0 24848C80 */   addiu     $a0, $a0, %lo(D_80248C80)
/* B51C4 800D9DC4 0C038B00 */  jal        func_800E2C00
/* B51C8 800D9DC8 8FA4002C */   lw        $a0, 0x2c($sp)
/* B51CC 800D9DCC 8FB80028 */  lw         $t8, 0x28($sp)
/* B51D0 800D9DD0 2401FFFF */  addiu      $at, $zero, -1
/* B51D4 800D9DD4 13010004 */  beq        $t8, $at, .L800D9DE8
/* B51D8 800D9DD8 00000000 */   nop
/* B51DC 800D9DDC 00002025 */  or         $a0, $zero, $zero
/* B51E0 800D9DE0 0C036900 */  jal        func_800DA400
/* B51E4 800D9DE4 03002825 */   or        $a1, $t8, $zero
.L800D9DE8:
/* B51E8 800D9DE8 8FBF001C */  lw         $ra, 0x1c($sp)
/* B51EC 800D9DEC 27BD0030 */  addiu      $sp, $sp, 0x30
/* B51F0 800D9DF0 03E00008 */  jr         $ra
/* B51F4 800D9DF4 00000000 */   nop

glabel func_800D9DF8
/* B51F8 800D9DF8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B51FC 800D9DFC AFBF001C */  sw         $ra, 0x1c($sp)
/* B5200 800D9E00 AFA40038 */  sw         $a0, 0x38($sp)
/* B5204 800D9E04 AFB00018 */  sw         $s0, 0x18($sp)
/* B5208 800D9E08 AFA0002C */  sw         $zero, 0x2c($sp)
/* B520C 800D9E0C 0C038C74 */  jal        func_800E31D0
/* B5210 800D9E10 AFA00028 */   sw        $zero, 0x28($sp)
/* B5214 800D9E14 AFA20034 */  sw         $v0, 0x34($sp)
/* B5218 800D9E18 8FAE0034 */  lw         $t6, 0x34($sp)
/* B521C 800D9E1C 3C018025 */  lui        $at, %hi(D_80249E90)
/* B5220 800D9E20 95CF0002 */  lhu        $t7, 2($t6)
/* B5224 800D9E24 15E00004 */  bnez       $t7, .L800D9E38
/* B5228 800D9E28 A42F9E90 */   sh        $t7, %lo(D_80249E90)($at)
/* B522C 800D9E2C 24180001 */  addiu      $t8, $zero, 1
/* B5230 800D9E30 3C018025 */  lui        $at, %hi(D_80249E90)
/* B5234 800D9E34 A4389E90 */  sh         $t8, %lo(D_80249E90)($at)
.L800D9E38:
/* B5238 800D9E38 8FB90038 */  lw         $t9, 0x38($sp)
/* B523C 800D9E3C AFB90030 */  sw         $t9, 0x30($sp)
.L800D9E40:
/* B5240 800D9E40 8FA80030 */  lw         $t0, 0x30($sp)
/* B5244 800D9E44 27A5002C */  addiu      $a1, $sp, 0x2c
/* B5248 800D9E48 24060001 */  addiu      $a2, $zero, 1
/* B524C 800D9E4C 0C036988 */  jal        func_800DA620
/* B5250 800D9E50 8D04000C */   lw        $a0, 0xc($t0)
/* B5254 800D9E54 8FA9002C */  lw         $t1, 0x2c($sp)
/* B5258 800D9E58 2401000D */  addiu      $at, $zero, 0xd
/* B525C 800D9E5C 95300000 */  lhu        $s0, ($t1)
/* B5260 800D9E60 12010005 */  beq        $s0, $at, .L800D9E78
/* B5264 800D9E64 2401000E */   addiu     $at, $zero, 0xe
/* B5268 800D9E68 12010047 */  beq        $s0, $at, .L800D9F88
/* B526C 800D9E6C 00000000 */   nop
/* B5270 800D9E70 1000FFF3 */  b          .L800D9E40
/* B5274 800D9E74 00000000 */   nop
.L800D9E78:
/* B5278 800D9E78 0C038C78 */  jal        func_800E31E0
/* B527C 800D9E7C 00000000 */   nop
/* B5280 800D9E80 3C0A8025 */  lui        $t2, %hi(D_80249E90)
/* B5284 800D9E84 954A9E90 */  lhu        $t2, %lo(D_80249E90)($t2)
/* B5288 800D9E88 3C018025 */  lui        $at, %hi(D_80249E90)
/* B528C 800D9E8C 254BFFFF */  addiu      $t3, $t2, -1
/* B5290 800D9E90 316CFFFF */  andi       $t4, $t3, 0xffff
/* B5294 800D9E94 15800010 */  bnez       $t4, .L800D9ED8
/* B5298 800D9E98 A42B9E90 */   sh        $t3, %lo(D_80249E90)($at)
/* B529C 800D9E9C 0C038C74 */  jal        func_800E31D0
/* B52A0 800D9EA0 00000000 */   nop
/* B52A4 800D9EA4 AFA20034 */  sw         $v0, 0x34($sp)
/* B52A8 800D9EA8 8FAD0034 */  lw         $t5, 0x34($sp)
/* B52AC 800D9EAC 8DAE0010 */  lw         $t6, 0x10($t5)
/* B52B0 800D9EB0 11C00005 */  beqz       $t6, .L800D9EC8
/* B52B4 800D9EB4 00000000 */   nop
/* B52B8 800D9EB8 01C02025 */  or         $a0, $t6, $zero
/* B52BC 800D9EBC 8DA50014 */  lw         $a1, 0x14($t5)
/* B52C0 800D9EC0 0C037100 */  jal        func_800DC400
/* B52C4 800D9EC4 00003025 */   or        $a2, $zero, $zero
.L800D9EC8:
/* B52C8 800D9EC8 8FAF0034 */  lw         $t7, 0x34($sp)
/* B52CC 800D9ECC 3C018025 */  lui        $at, %hi(D_80249E90)
/* B52D0 800D9ED0 95F80002 */  lhu        $t8, 2($t7)
/* B52D4 800D9ED4 A4389E90 */  sh         $t8, %lo(D_80249E90)($at)
.L800D9ED8:
/* B52D8 800D9ED8 3C198025 */  lui        $t9, %hi(D_8024C26C)
/* B52DC 800D9EDC 8F39C26C */  lw         $t9, %lo(D_8024C26C)($t9)
/* B52E0 800D9EE0 8FA90028 */  lw         $t1, 0x28($sp)
/* B52E4 800D9EE4 3C018025 */  lui        $at, %hi(D_8024C26C)
/* B52E8 800D9EE8 27280001 */  addiu      $t0, $t9, 1
/* B52EC 800D9EEC 1120000C */  beqz       $t1, .L800D9F20
/* B52F0 800D9EF0 AC28C26C */   sw        $t0, %lo(D_8024C26C)($at)
/* B52F4 800D9EF4 0C038094 */  jal        func_800E0250
/* B52F8 800D9EF8 00000000 */   nop
/* B52FC 800D9EFC AFA20024 */  sw         $v0, 0x24($sp)
/* B5300 800D9F00 8FAA0024 */  lw         $t2, 0x24($sp)
/* B5304 800D9F04 240C0000 */  addiu      $t4, $zero, 0
/* B5308 800D9F08 3C018025 */  lui        $at, %hi(D_8024C260)
/* B530C 800D9F0C AC2CC260 */  sw         $t4, %lo(D_8024C260)($at)
/* B5310 800D9F10 3C018025 */  lui        $at, %hi(D_8024C264)
/* B5314 800D9F14 01406825 */  or         $t5, $t2, $zero
/* B5318 800D9F18 AC2DC264 */  sw         $t5, %lo(D_8024C264)($at)
/* B531C 800D9F1C AFA00028 */  sw         $zero, 0x28($sp)
.L800D9F20:
/* B5320 800D9F20 3C0B8025 */  lui        $t3, %hi(D_8024C268)
/* B5324 800D9F24 8D6BC268 */  lw         $t3, %lo(D_8024C268)($t3)
/* B5328 800D9F28 0C038094 */  jal        func_800E0250
/* B532C 800D9F2C AFAB0024 */   sw        $t3, 0x24($sp)
/* B5330 800D9F30 3C018025 */  lui        $at, %hi(D_8024C268)
/* B5334 800D9F34 AC22C268 */  sw         $v0, %lo(D_8024C268)($at)
/* B5338 800D9F38 3C0E8025 */  lui        $t6, %hi(D_8024C268)
/* B533C 800D9F3C 8DCEC268 */  lw         $t6, %lo(D_8024C268)($t6)
/* B5340 800D9F40 8FAF0024 */  lw         $t7, 0x24($sp)
/* B5344 800D9F44 3C0B8025 */  lui        $t3, %hi(D_8024C264)
/* B5348 800D9F48 8D6BC264 */  lw         $t3, %lo(D_8024C264)($t3)
/* B534C 800D9F4C 01CFC023 */  subu       $t8, $t6, $t7
/* B5350 800D9F50 03004825 */  or         $t1, $t8, $zero
/* B5354 800D9F54 3C0A8025 */  lui        $t2, %hi(D_8024C260)
/* B5358 800D9F58 012B6821 */  addu       $t5, $t1, $t3
/* B535C 800D9F5C 8D4AC260 */  lw         $t2, %lo(D_8024C260)($t2)
/* B5360 800D9F60 24080000 */  addiu      $t0, $zero, 0
/* B5364 800D9F64 01AB082B */  sltu       $at, $t5, $t3
/* B5368 800D9F68 00286021 */  addu       $t4, $at, $t0
/* B536C 800D9F6C 3C018025 */  lui        $at, %hi(D_8024C260)
/* B5370 800D9F70 018A6021 */  addu       $t4, $t4, $t2
/* B5374 800D9F74 AC2CC260 */  sw         $t4, %lo(D_8024C260)($at)
/* B5378 800D9F78 3C018025 */  lui        $at, %hi(D_8024C264)
/* B537C 800D9F7C AFB80024 */  sw         $t8, 0x24($sp)
/* B5380 800D9F80 1000FFAF */  b          .L800D9E40
/* B5384 800D9F84 AC2DC264 */   sw        $t5, %lo(D_8024C264)($at)
.L800D9F88:
/* B5388 800D9F88 0C038B3B */  jal        func_800E2CEC
/* B538C 800D9F8C 00000000 */   nop
/* B5390 800D9F90 1000FFAB */  b          .L800D9E40
/* B5394 800D9F94 00000000 */   nop
/* B5398 800D9F98 00000000 */  nop
/* B539C 800D9F9C 00000000 */  nop
/* B53A0 800D9FA0 00000000 */  nop
/* B53A4 800D9FA4 00000000 */  nop
/* B53A8 800D9FA8 00000000 */  nop
/* B53AC 800D9FAC 00000000 */  nop
/* B53B0 800D9FB0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B53B4 800D9FB4 8FB00018 */  lw         $s0, 0x18($sp)
/* B53B8 800D9FB8 27BD0038 */  addiu      $sp, $sp, 0x38
/* B53BC 800D9FBC 03E00008 */  jr         $ra
/* B53C0 800D9FC0 00000000 */   nop
/* B53C4 800D9FC4 00000000 */  nop
/* B53C8 800D9FC8 00000000 */  nop
/* B53CC 800D9FCC 00000000 */  nop
