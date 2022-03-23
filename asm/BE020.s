.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E2C20
/* BE020 800E2C20 00803025 */  or         $a2, $a0, $zero
/* BE024 800E2C24 8CC70000 */  lw         $a3, ($a2)
/* BE028 800E2C28 27BDFFF8 */  addiu      $sp, $sp, -8
/* BE02C 800E2C2C 10E0000A */  beqz       $a3, .L800E2C58
/* BE030 800E2C30 00000000 */   nop
.L800E2C34:
/* BE034 800E2C34 14E50004 */  bne        $a3, $a1, .L800E2C48
/* BE038 800E2C38 00000000 */   nop
/* BE03C 800E2C3C 8CAE0000 */  lw         $t6, ($a1)
/* BE040 800E2C40 10000005 */  b          .L800E2C58
/* BE044 800E2C44 ACCE0000 */   sw        $t6, ($a2)
.L800E2C48:
/* BE048 800E2C48 00E03025 */  or         $a2, $a3, $zero
/* BE04C 800E2C4C 8CC70000 */  lw         $a3, ($a2)
/* BE050 800E2C50 14E0FFF8 */  bnez       $a3, .L800E2C34
/* BE054 800E2C54 00000000 */   nop
.L800E2C58:
/* BE058 800E2C58 03E00008 */  jr         $ra
/* BE05C 800E2C5C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800E2C60
/* BE060 800E2C60 3C018025 */  lui        $at, %hi(D_8024C264)
/* BE064 800E2C64 240E0000 */  addiu      $t6, $zero, 0
/* BE068 800E2C68 240F0000 */  addiu      $t7, $zero, 0
/* BE06C 800E2C6C AC2FC264 */  sw         $t7, %lo(D_8024C264)($at)
/* BE070 800E2C70 AC2EC260 */  sw         $t6, -0x3da0($at)
/* BE074 800E2C74 3C018025 */  lui        $at, %hi(D_8024C268)
/* BE078 800E2C78 3C188011 */  lui        $t8, %hi(D_80109E20)
/* BE07C 800E2C7C 8F189E20 */  lw         $t8, %lo(D_80109E20)($t8)
/* BE080 800E2C80 AC20C268 */  sw         $zero, %lo(D_8024C268)($at)
/* BE084 800E2C84 3C018025 */  lui        $at, %hi(D_8024C26C)
/* BE088 800E2C88 AC20C26C */  sw         $zero, %lo(D_8024C26C)($at)
/* BE08C 800E2C8C 3C198011 */  lui        $t9, %hi(D_80109E20)
/* BE090 800E2C90 AF180004 */  sw         $t8, 4($t8)
/* BE094 800E2C94 8F399E20 */  lw         $t9, %lo(D_80109E20)($t9)
/* BE098 800E2C98 3C098011 */  lui        $t1, 0x8011
/* BE09C 800E2C9C 240A0000 */  addiu      $t2, $zero, 0
/* BE0A0 800E2CA0 8F280004 */  lw         $t0, 4($t9)
/* BE0A4 800E2CA4 240B0000 */  addiu      $t3, $zero, 0
/* BE0A8 800E2CA8 3C0C8011 */  lui        $t4, 0x8011
/* BE0AC 800E2CAC AF280000 */  sw         $t0, ($t9)
/* BE0B0 800E2CB0 8D299E20 */  lw         $t1, -0x61e0($t1)
/* BE0B4 800E2CB4 3C0D8011 */  lui        $t5, 0x8011
/* BE0B8 800E2CB8 3C188011 */  lui        $t8, 0x8011
/* BE0BC 800E2CBC AD2A0010 */  sw         $t2, 0x10($t1)
/* BE0C0 800E2CC0 AD2B0014 */  sw         $t3, 0x14($t1)
/* BE0C4 800E2CC4 8D8C9E20 */  lw         $t4, -0x61e0($t4)
/* BE0C8 800E2CC8 8D8E0010 */  lw         $t6, 0x10($t4)
/* BE0CC 800E2CCC 8D8F0014 */  lw         $t7, 0x14($t4)
/* BE0D0 800E2CD0 AD8E0008 */  sw         $t6, 8($t4)
/* BE0D4 800E2CD4 AD8F000C */  sw         $t7, 0xc($t4)
/* BE0D8 800E2CD8 8DAD9E20 */  lw         $t5, -0x61e0($t5)
/* BE0DC 800E2CDC ADA00018 */  sw         $zero, 0x18($t5)
/* BE0E0 800E2CE0 8F189E20 */  lw         $t8, -0x61e0($t8)
/* BE0E4 800E2CE4 03E00008 */  jr         $ra
/* BE0E8 800E2CE8 AF00001C */   sw        $zero, 0x1c($t8)

glabel func_800E2CEC
/* BE0EC 800E2CEC 3C0E8011 */  lui        $t6, %hi(D_80109E20)
/* BE0F0 800E2CF0 8DCE9E20 */  lw         $t6, %lo(D_80109E20)($t6)
/* BE0F4 800E2CF4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BE0F8 800E2CF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE0FC 800E2CFC 8DCF0000 */  lw         $t7, ($t6)
/* BE100 800E2D00 11EE0054 */  beq        $t7, $t6, .L800E2E54
/* BE104 800E2D04 00000000 */   nop
.L800E2D08:
/* BE108 800E2D08 3C188011 */  lui        $t8, %hi(D_80109E20)
/* BE10C 800E2D0C 8F189E20 */  lw         $t8, %lo(D_80109E20)($t8)
/* BE110 800E2D10 8F190000 */  lw         $t9, ($t8)
/* BE114 800E2D14 17380006 */  bne        $t9, $t8, .L800E2D30
/* BE118 800E2D18 AFB90024 */   sw        $t9, 0x24($sp)
/* BE11C 800E2D1C 0C03AF80 */  jal        func_800EBE00
/* BE120 800E2D20 00002025 */   or        $a0, $zero, $zero
/* BE124 800E2D24 3C018025 */  lui        $at, %hi(D_8024C270)
/* BE128 800E2D28 1000004A */  b          .L800E2E54
/* BE12C 800E2D2C AC20C270 */   sw        $zero, %lo(D_8024C270)($at)
.L800E2D30:
/* BE130 800E2D30 0C038094 */  jal        func_800E0250
/* BE134 800E2D34 00000000 */   nop
/* BE138 800E2D38 AFA20020 */  sw         $v0, 0x20($sp)
/* BE13C 800E2D3C 3C098025 */  lui        $t1, %hi(D_8024C270)
/* BE140 800E2D40 8D29C270 */  lw         $t1, %lo(D_8024C270)($t1)
/* BE144 800E2D44 8FA80020 */  lw         $t0, 0x20($sp)
/* BE148 800E2D48 8FAF0024 */  lw         $t7, 0x24($sp)
/* BE14C 800E2D4C 3C018025 */  lui        $at, %hi(D_8024C270)
/* BE150 800E2D50 01095023 */  subu       $t2, $t0, $t1
/* BE154 800E2D54 AFAA001C */  sw         $t2, 0x1c($sp)
/* BE158 800E2D58 AC28C270 */  sw         $t0, %lo(D_8024C270)($at)
/* BE15C 800E2D5C 8DEE0010 */  lw         $t6, 0x10($t7)
/* BE160 800E2D60 8FAB001C */  lw         $t3, 0x1c($sp)
/* BE164 800E2D64 240C0000 */  addiu      $t4, $zero, 0
/* BE168 800E2D68 01E0C825 */  or         $t9, $t7, $zero
/* BE16C 800E2D6C 01CC082B */  sltu       $at, $t6, $t4
/* BE170 800E2D70 8DEF0014 */  lw         $t7, 0x14($t7)
/* BE174 800E2D74 14200016 */  bnez       $at, .L800E2DD0
/* BE178 800E2D78 01606825 */   or        $t5, $t3, $zero
/* BE17C 800E2D7C 018E082B */  sltu       $at, $t4, $t6
/* BE180 800E2D80 14200003 */  bnez       $at, .L800E2D90
/* BE184 800E2D84 01AF082B */   sltu      $at, $t5, $t7
/* BE188 800E2D88 10200011 */  beqz       $at, .L800E2DD0
/* BE18C 800E2D8C 00000000 */   nop
.L800E2D90:
/* BE190 800E2D90 27380010 */  addiu      $t8, $t9, 0x10
/* BE194 800E2D94 AFB80018 */  sw         $t8, 0x18($sp)
/* BE198 800E2D98 8F2B0014 */  lw         $t3, 0x14($t9)
/* BE19C 800E2D9C 8F2A0010 */  lw         $t2, 0x10($t9)
/* BE1A0 800E2DA0 016D082B */  sltu       $at, $t3, $t5
/* BE1A4 800E2DA4 014C4023 */  subu       $t0, $t2, $t4
/* BE1A8 800E2DA8 01014023 */  subu       $t0, $t0, $at
/* BE1AC 800E2DAC 016D4823 */  subu       $t1, $t3, $t5
/* BE1B0 800E2DB0 AF290014 */  sw         $t1, 0x14($t9)
/* BE1B4 800E2DB4 AF280010 */  sw         $t0, 0x10($t9)
/* BE1B8 800E2DB8 8FAE0024 */  lw         $t6, 0x24($sp)
/* BE1BC 800E2DBC 8DC40010 */  lw         $a0, 0x10($t6)
/* BE1C0 800E2DC0 0C038B99 */  jal        func_800E2E64
/* BE1C4 800E2DC4 8DC50014 */   lw        $a1, 0x14($t6)
/* BE1C8 800E2DC8 10000022 */  b          .L800E2E54
/* BE1CC 800E2DCC 00000000 */   nop
.L800E2DD0:
/* BE1D0 800E2DD0 8FAF0024 */  lw         $t7, 0x24($sp)
/* BE1D4 800E2DD4 8DF80000 */  lw         $t8, ($t7)
/* BE1D8 800E2DD8 8DEA0004 */  lw         $t2, 4($t7)
/* BE1DC 800E2DDC AD580000 */  sw         $t8, ($t2)
/* BE1E0 800E2DE0 8FAB0024 */  lw         $t3, 0x24($sp)
/* BE1E4 800E2DE4 8D6C0004 */  lw         $t4, 4($t3)
/* BE1E8 800E2DE8 8D6D0000 */  lw         $t5, ($t3)
/* BE1EC 800E2DEC ADAC0004 */  sw         $t4, 4($t5)
/* BE1F0 800E2DF0 8FA80024 */  lw         $t0, 0x24($sp)
/* BE1F4 800E2DF4 AD000000 */  sw         $zero, ($t0)
/* BE1F8 800E2DF8 8FA90024 */  lw         $t1, 0x24($sp)
/* BE1FC 800E2DFC AD200004 */  sw         $zero, 4($t1)
/* BE200 800E2E00 8FB90024 */  lw         $t9, 0x24($sp)
/* BE204 800E2E04 8F2E0018 */  lw         $t6, 0x18($t9)
/* BE208 800E2E08 11C00005 */  beqz       $t6, .L800E2E20
/* BE20C 800E2E0C 00000000 */   nop
/* BE210 800E2E10 01C02025 */  or         $a0, $t6, $zero
/* BE214 800E2E14 8F25001C */  lw         $a1, 0x1c($t9)
/* BE218 800E2E18 0C037100 */  jal        func_800DC400
/* BE21C 800E2E1C 00003025 */   or        $a2, $zero, $zero
.L800E2E20:
/* BE220 800E2E20 8FAF0024 */  lw         $t7, 0x24($sp)
/* BE224 800E2E24 8DF80008 */  lw         $t8, 8($t7)
/* BE228 800E2E28 8DF9000C */  lw         $t9, 0xc($t7)
/* BE22C 800E2E2C 17000003 */  bnez       $t8, .L800E2E3C
/* BE230 800E2E30 00000000 */   nop
/* BE234 800E2E34 1320FFB4 */  beqz       $t9, .L800E2D08
/* BE238 800E2E38 00000000 */   nop
.L800E2E3C:
/* BE23C 800E2E3C ADF80010 */  sw         $t8, 0x10($t7)
/* BE240 800E2E40 ADF90014 */  sw         $t9, 0x14($t7)
/* BE244 800E2E44 0C038BB6 */  jal        func_800E2ED8
/* BE248 800E2E48 8FA40024 */   lw        $a0, 0x24($sp)
/* BE24C 800E2E4C 1000FFAE */  b          .L800E2D08
/* BE250 800E2E50 00000000 */   nop
.L800E2E54:
/* BE254 800E2E54 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE258 800E2E58 27BD0028 */  addiu      $sp, $sp, 0x28
/* BE25C 800E2E5C 03E00008 */  jr         $ra
/* BE260 800E2E60 00000000 */   nop

glabel func_800E2E64
/* BE264 800E2E64 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BE268 800E2E68 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE26C 800E2E6C AFA40028 */  sw         $a0, 0x28($sp)
/* BE270 800E2E70 0C038AF8 */  jal        func_800E2BE0
/* BE274 800E2E74 AFA5002C */   sw        $a1, 0x2c($sp)
/* BE278 800E2E78 0C038094 */  jal        func_800E0250
/* BE27C 800E2E7C AFA2001C */   sw        $v0, 0x1c($sp)
/* BE280 800E2E80 3C018025 */  lui        $at, %hi(D_8024C270)
/* BE284 800E2E84 AC22C270 */  sw         $v0, %lo(D_8024C270)($at)
/* BE288 800E2E88 3C0E8025 */  lui        $t6, %hi(D_8024C270)
/* BE28C 800E2E8C 8DCEC270 */  lw         $t6, %lo(D_8024C270)($t6)
/* BE290 800E2E90 8FA9002C */  lw         $t1, 0x2c($sp)
/* BE294 800E2E94 8FA80028 */  lw         $t0, 0x28($sp)
/* BE298 800E2E98 01C0C825 */  or         $t9, $t6, $zero
/* BE29C 800E2E9C 03295821 */  addu       $t3, $t9, $t1
/* BE2A0 800E2EA0 24180000 */  addiu      $t8, $zero, 0
/* BE2A4 800E2EA4 0169082B */  sltu       $at, $t3, $t1
/* BE2A8 800E2EA8 00385021 */  addu       $t2, $at, $t8
/* BE2AC 800E2EAC 01485021 */  addu       $t2, $t2, $t0
/* BE2B0 800E2EB0 AFAA0020 */  sw         $t2, 0x20($sp)
/* BE2B4 800E2EB4 AFAB0024 */  sw         $t3, 0x24($sp)
/* BE2B8 800E2EB8 0C03AF80 */  jal        func_800EBE00
/* BE2BC 800E2EBC 01602025 */   or        $a0, $t3, $zero
/* BE2C0 800E2EC0 0C038B00 */  jal        func_800E2C00
/* BE2C4 800E2EC4 8FA4001C */   lw        $a0, 0x1c($sp)
/* BE2C8 800E2EC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE2CC 800E2ECC 27BD0028 */  addiu      $sp, $sp, 0x28
/* BE2D0 800E2ED0 03E00008 */  jr         $ra
/* BE2D4 800E2ED4 00000000 */   nop

glabel func_800E2ED8
/* BE2D8 800E2ED8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BE2DC 800E2EDC AFBF0014 */  sw         $ra, 0x14($sp)
/* BE2E0 800E2EE0 0C038AF8 */  jal        func_800E2BE0
/* BE2E4 800E2EE4 AFA40038 */   sw        $a0, 0x38($sp)
/* BE2E8 800E2EE8 3C0E8011 */  lui        $t6, %hi(D_80109E20)
/* BE2EC 800E2EEC 8DCE9E20 */  lw         $t6, %lo(D_80109E20)($t6)
/* BE2F0 800E2EF0 AFA20024 */  sw         $v0, 0x24($sp)
/* BE2F4 800E2EF4 8FB80038 */  lw         $t8, 0x38($sp)
/* BE2F8 800E2EF8 8DCF0000 */  lw         $t7, ($t6)
/* BE2FC 800E2EFC AFAF0034 */  sw         $t7, 0x34($sp)
/* BE300 800E2F00 8F090014 */  lw         $t1, 0x14($t8)
/* BE304 800E2F04 8F080010 */  lw         $t0, 0x10($t8)
/* BE308 800E2F08 AFA9002C */  sw         $t1, 0x2c($sp)
/* BE30C 800E2F0C 11EE0029 */  beq        $t7, $t6, .L800E2FB4
/* BE310 800E2F10 AFA80028 */   sw        $t0, 0x28($sp)
/* BE314 800E2F14 8DEA0010 */  lw         $t2, 0x10($t7)
/* BE318 800E2F18 8DEB0014 */  lw         $t3, 0x14($t7)
/* BE31C 800E2F1C 010A082B */  sltu       $at, $t0, $t2
/* BE320 800E2F20 14200024 */  bnez       $at, .L800E2FB4
/* BE324 800E2F24 0148082B */   sltu      $at, $t2, $t0
/* BE328 800E2F28 14200003 */  bnez       $at, .L800E2F38
/* BE32C 800E2F2C 0169082B */   sltu      $at, $t3, $t1
/* BE330 800E2F30 10200020 */  beqz       $at, .L800E2FB4
/* BE334 800E2F34 00000000 */   nop
.L800E2F38:
/* BE338 800E2F38 27B90028 */  addiu      $t9, $sp, 0x28
/* BE33C 800E2F3C 8FB80034 */  lw         $t8, 0x34($sp)
/* BE340 800E2F40 AFB90020 */  sw         $t9, 0x20($sp)
/* BE344 800E2F44 8F2D0004 */  lw         $t5, 4($t9)
/* BE348 800E2F48 8F2C0000 */  lw         $t4, ($t9)
/* BE34C 800E2F4C 8F0F0014 */  lw         $t7, 0x14($t8)
/* BE350 800E2F50 8F0E0010 */  lw         $t6, 0x10($t8)
/* BE354 800E2F54 3C188011 */  lui        $t8, 0x8011
/* BE358 800E2F58 01AF082B */  sltu       $at, $t5, $t7
/* BE35C 800E2F5C 018E4023 */  subu       $t0, $t4, $t6
/* BE360 800E2F60 01014023 */  subu       $t0, $t0, $at
/* BE364 800E2F64 01AF4823 */  subu       $t1, $t5, $t7
/* BE368 800E2F68 AF290004 */  sw         $t1, 4($t9)
/* BE36C 800E2F6C AF280000 */  sw         $t0, ($t9)
/* BE370 800E2F70 8FAA0034 */  lw         $t2, 0x34($sp)
/* BE374 800E2F74 8F189E20 */  lw         $t8, -0x61e0($t8)
/* BE378 800E2F78 8D4B0000 */  lw         $t3, ($t2)
/* BE37C 800E2F7C 1178000D */  beq        $t3, $t8, .L800E2FB4
/* BE380 800E2F80 AFAB0034 */   sw        $t3, 0x34($sp)
/* BE384 800E2F84 8FAC0028 */  lw         $t4, 0x28($sp)
/* BE388 800E2F88 8D6E0010 */  lw         $t6, 0x10($t3)
/* BE38C 800E2F8C 8FAD002C */  lw         $t5, 0x2c($sp)
/* BE390 800E2F90 8D6F0014 */  lw         $t7, 0x14($t3)
/* BE394 800E2F94 01CC082B */  sltu       $at, $t6, $t4
/* BE398 800E2F98 1420FFE7 */  bnez       $at, .L800E2F38
/* BE39C 800E2F9C 00000000 */   nop
/* BE3A0 800E2FA0 018E082B */  sltu       $at, $t4, $t6
/* BE3A4 800E2FA4 14200003 */  bnez       $at, .L800E2FB4
/* BE3A8 800E2FA8 01ED082B */   sltu      $at, $t7, $t5
/* BE3AC 800E2FAC 1420FFE2 */  bnez       $at, .L800E2F38
/* BE3B0 800E2FB0 00000000 */   nop
.L800E2FB4:
/* BE3B4 800E2FB4 8FB90038 */  lw         $t9, 0x38($sp)
/* BE3B8 800E2FB8 8FA80028 */  lw         $t0, 0x28($sp)
/* BE3BC 800E2FBC 8FA9002C */  lw         $t1, 0x2c($sp)
/* BE3C0 800E2FC0 3C188011 */  lui        $t8, %hi(D_80109E20)
/* BE3C4 800E2FC4 AF280010 */  sw         $t0, 0x10($t9)
/* BE3C8 800E2FC8 AF290014 */  sw         $t1, 0x14($t9)
/* BE3CC 800E2FCC 8F189E20 */  lw         $t8, %lo(D_80109E20)($t8)
/* BE3D0 800E2FD0 8FAA0034 */  lw         $t2, 0x34($sp)
/* BE3D4 800E2FD4 1158000D */  beq        $t2, $t8, .L800E300C
/* BE3D8 800E2FD8 00000000 */   nop
/* BE3DC 800E2FDC 254B0010 */  addiu      $t3, $t2, 0x10
/* BE3E0 800E2FE0 AFAB001C */  sw         $t3, 0x1c($sp)
/* BE3E4 800E2FE4 8D4D0014 */  lw         $t5, 0x14($t2)
/* BE3E8 800E2FE8 8D4C0010 */  lw         $t4, 0x10($t2)
/* BE3EC 800E2FEC 8FAE0028 */  lw         $t6, 0x28($sp)
/* BE3F0 800E2FF0 8FAF002C */  lw         $t7, 0x2c($sp)
/* BE3F4 800E2FF4 018E4023 */  subu       $t0, $t4, $t6
/* BE3F8 800E2FF8 01AF082B */  sltu       $at, $t5, $t7
/* BE3FC 800E2FFC 01014023 */  subu       $t0, $t0, $at
/* BE400 800E3000 01AF4823 */  subu       $t1, $t5, $t7
/* BE404 800E3004 AD490014 */  sw         $t1, 0x14($t2)
/* BE408 800E3008 AD480010 */  sw         $t0, 0x10($t2)
.L800E300C:
/* BE40C 800E300C 8FB90034 */  lw         $t9, 0x34($sp)
/* BE410 800E3010 8FB80038 */  lw         $t8, 0x38($sp)
/* BE414 800E3014 AF190000 */  sw         $t9, ($t8)
/* BE418 800E3018 8FAB0034 */  lw         $t3, 0x34($sp)
/* BE41C 800E301C 8FAD0038 */  lw         $t5, 0x38($sp)
/* BE420 800E3020 8D6C0004 */  lw         $t4, 4($t3)
/* BE424 800E3024 ADAC0004 */  sw         $t4, 4($t5)
/* BE428 800E3028 8FAF0034 */  lw         $t7, 0x34($sp)
/* BE42C 800E302C 8FAE0038 */  lw         $t6, 0x38($sp)
/* BE430 800E3030 8DE80004 */  lw         $t0, 4($t7)
/* BE434 800E3034 AD0E0000 */  sw         $t6, ($t0)
/* BE438 800E3038 8FAA0034 */  lw         $t2, 0x34($sp)
/* BE43C 800E303C 8FA90038 */  lw         $t1, 0x38($sp)
/* BE440 800E3040 AD490004 */  sw         $t1, 4($t2)
/* BE444 800E3044 0C038B00 */  jal        func_800E2C00
/* BE448 800E3048 8FA40024 */   lw        $a0, 0x24($sp)
/* BE44C 800E304C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE450 800E3050 8FA20028 */  lw         $v0, 0x28($sp)
/* BE454 800E3054 8FA3002C */  lw         $v1, 0x2c($sp)
/* BE458 800E3058 03E00008 */  jr         $ra
/* BE45C 800E305C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800E3060
/* BE460 800E3060 14800003 */  bnez       $a0, .L800E3070
/* BE464 800E3064 00000000 */   nop
/* BE468 800E3068 3C048011 */  lui        $a0, %hi(D_80109E10)
/* BE46C 800E306C 8C849E10 */  lw         $a0, %lo(D_80109E10)($a0)
.L800E3070:
/* BE470 800E3070 03E00008 */  jr         $ra
/* BE474 800E3074 8C820004 */   lw        $v0, 4($a0)
/* BE478 800E3078 00000000 */  nop
/* BE47C 800E307C 00000000 */  nop
