.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E8C80
/* C4080 800E8C80 400C6000 */  mfc0       $t4, $12
/* C4084 800E8C84 3182FF01 */  andi       $v0, $t4, 0xff01
/* C4088 800E8C88 3C088011 */  lui        $t0, %hi(D_8010901C)
/* C408C 800E8C8C 2508901C */  addiu      $t0, $t0, %lo(D_8010901C)
/* C4090 800E8C90 8D0B0000 */  lw         $t3, ($t0)
/* C4094 800E8C94 2401FFFF */  addiu      $at, $zero, -1
/* C4098 800E8C98 01614026 */  xor        $t0, $t3, $at
/* C409C 800E8C9C 3108FF00 */  andi       $t0, $t0, 0xff00
/* C40A0 800E8CA0 00481025 */  or         $v0, $v0, $t0
/* C40A4 800E8CA4 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* C40A8 800E8CA8 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* C40AC 800E8CAC 11400005 */  beqz       $t2, .L800E8CC4
/* C40B0 800E8CB0 000B4C02 */   srl       $t1, $t3, 0x10
/* C40B4 800E8CB4 2401FFFF */  addiu      $at, $zero, -1
/* C40B8 800E8CB8 01214826 */  xor        $t1, $t1, $at
/* C40BC 800E8CBC 3129003F */  andi       $t1, $t1, 0x3f
/* C40C0 800E8CC0 01495025 */  or         $t2, $t2, $t1
.L800E8CC4:
/* C40C4 800E8CC4 000A5400 */  sll        $t2, $t2, 0x10
/* C40C8 800E8CC8 004A1025 */  or         $v0, $v0, $t2
/* C40CC 800E8CCC 3C01003F */  lui        $at, 0x3f
/* C40D0 800E8CD0 00814024 */  and        $t0, $a0, $at
/* C40D4 800E8CD4 010B4024 */  and        $t0, $t0, $t3
/* C40D8 800E8CD8 000843C2 */  srl        $t0, $t0, 0xf
/* C40DC 800E8CDC 3C0A8011 */  lui        $t2, %hi(D_80110FF0)
/* C40E0 800E8CE0 01485021 */  addu       $t2, $t2, $t0
/* C40E4 800E8CE4 954A0FF0 */  lhu        $t2, %lo(D_80110FF0)($t2)
/* C40E8 800E8CE8 3C01A430 */  lui        $at, %hi(D_A430000C)
/* C40EC 800E8CEC AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* C40F0 800E8CF0 3088FF01 */  andi       $t0, $a0, 0xff01
/* C40F4 800E8CF4 3169FF00 */  andi       $t1, $t3, 0xff00
/* C40F8 800E8CF8 01094024 */  and        $t0, $t0, $t1
/* C40FC 800E8CFC 3C01FFFF */  lui        $at, 0xffff
/* C4100 800E8D00 342100FF */  ori        $at, $at, 0xff
/* C4104 800E8D04 01816024 */  and        $t4, $t4, $at
/* C4108 800E8D08 01886025 */  or         $t4, $t4, $t0
/* C410C 800E8D0C 408C6000 */  mtc0       $t4, $12
/* C4110 800E8D10 00000000 */  nop
/* C4114 800E8D14 00000000 */  nop
/* C4118 800E8D18 03E00008 */  jr         $ra
/* C411C 800E8D1C 00000000 */   nop

glabel func_800E8D20
/* C4120 800E8D20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4124 800E8D24 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4128 800E8D28 AFA40018 */  sw         $a0, 0x18($sp)
/* C412C 800E8D2C AFA60020 */  sw         $a2, 0x20($sp)
/* C4130 800E8D30 8CAE0008 */  lw         $t6, 8($a1)
/* C4134 800E8D34 51C0001A */  beql       $t6, $zero, .L800E8DA0
/* C4138 800E8D38 8FBF0014 */   lw        $ra, 0x14($sp)
/* C413C 800E8D3C 0C037AA8 */  jal        func_800DEAA0
/* C4140 800E8D40 AFA5001C */   sw        $a1, 0x1c($sp)
/* C4144 800E8D44 8FA7001C */  lw         $a3, 0x1c($sp)
/* C4148 800E8D48 10400014 */  beqz       $v0, .L800E8D9C
/* C414C 800E8D4C 00403025 */   or        $a2, $v0, $zero
/* C4150 800E8D50 8FAF0018 */  lw         $t7, 0x18($sp)
/* C4154 800E8D54 8CF90008 */  lw         $t9, 8($a3)
/* C4158 800E8D58 240A000E */  addiu      $t2, $zero, 0xe
/* C415C 800E8D5C 8DF8001C */  lw         $t8, 0x1c($t7)
/* C4160 800E8D60 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C4164 800E8D64 A44A0008 */  sh         $t2, 8($v0)
/* C4168 800E8D68 24050003 */  addiu      $a1, $zero, 3
/* C416C 800E8D6C 03084821 */  addu       $t1, $t8, $t0
/* C4170 800E8D70 AC490004 */  sw         $t1, 4($v0)
/* C4174 800E8D74 8FAB0020 */  lw         $t3, 0x20($sp)
/* C4178 800E8D78 AC400000 */  sw         $zero, ($v0)
/* C417C 800E8D7C AC4B000C */  sw         $t3, 0xc($v0)
/* C4180 800E8D80 84EC001A */  lh         $t4, 0x1a($a3)
/* C4184 800E8D84 A44C000A */  sh         $t4, 0xa($v0)
/* C4188 800E8D88 8CED0008 */  lw         $t5, 8($a3)
/* C418C 800E8D8C 8DA4000C */  lw         $a0, 0xc($t5)
/* C4190 800E8D90 8C990008 */  lw         $t9, 8($a0)
/* C4194 800E8D94 0320F809 */  jalr       $t9
/* C4198 800E8D98 00000000 */   nop
.L800E8D9C:
/* C419C 800E8D9C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800E8DA0:
/* C41A0 800E8DA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* C41A4 800E8DA4 03E00008 */  jr         $ra
/* C41A8 800E8DA8 00000000 */   nop
/* C41AC 800E8DAC 00000000 */  nop
