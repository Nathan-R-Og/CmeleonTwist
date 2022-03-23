.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DBAE0
/* B6EE0 800DBAE0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B6EE4 800DBAE4 3C018011 */  lui        $at, %hi(D_80110960)
/* B6EE8 800DBAE8 C4240960 */  lwc1       $f4, %lo(D_80110960)($at)
/* B6EEC 800DBAEC AFB00018 */  sw         $s0, 0x18($sp)
/* B6EF0 800DBAF0 00808025 */  or         $s0, $a0, $zero
/* B6EF4 800DBAF4 3C018025 */  lui        $at, 0x8025
/* B6EF8 800DBAF8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6EFC 800DBAFC AFA50034 */  sw         $a1, 0x34($sp)
/* B6F00 800DBB00 AFA60038 */  sw         $a2, 0x38($sp)
/* B6F04 800DBB04 AFA7003C */  sw         $a3, 0x3c($sp)
/* B6F08 800DBB08 27A60040 */  addiu      $a2, $sp, 0x40
/* B6F0C 800DBB0C 27A5003C */  addiu      $a1, $sp, 0x3c
/* B6F10 800DBB10 27A40038 */  addiu      $a0, $sp, 0x38
/* B6F14 800DBB14 0C038FC0 */  jal        func_800E3F00
/* B6F18 800DBB18 E424B190 */   swc1      $f4, -0x4e70($at)
/* B6F1C 800DBB1C 3C018025 */  lui        $at, %hi(D_8024B190)
/* B6F20 800DBB20 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* B6F24 800DBB24 C426B190 */  lwc1       $f6, %lo(D_8024B190)($at)
/* B6F28 800DBB28 46066302 */  mul.s      $f12, $f12, $f6
/* B6F2C 800DBB2C 0C036B60 */  jal        func_800DAD80
/* B6F30 800DBB30 E7AC0034 */   swc1      $f12, 0x34($sp)
/* B6F34 800DBB34 C7AC0034 */  lwc1       $f12, 0x34($sp)
/* B6F38 800DBB38 0C036C30 */  jal        func_800DB0C0
/* B6F3C 800DBB3C E7A0002C */   swc1      $f0, 0x2c($sp)
/* B6F40 800DBB40 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* B6F44 800DBB44 C7B20040 */  lwc1       $f18, 0x40($sp)
/* B6F48 800DBB48 E7A00028 */  swc1       $f0, 0x28($sp)
/* B6F4C 800DBB4C 460E7202 */  mul.s      $f8, $f14, $f14
/* B6F50 800DBB50 00000000 */  nop
/* B6F54 800DBB54 46129282 */  mul.s      $f10, $f18, $f18
/* B6F58 800DBB58 0C036C2C */  jal        func_800DB0B0
/* B6F5C 800DBB5C 460A4300 */   add.s     $f12, $f8, $f10
/* B6F60 800DBB60 02002025 */  or         $a0, $s0, $zero
/* B6F64 800DBB64 0C036A30 */  jal        func_800DA8C0
/* B6F68 800DBB68 E7A00024 */   swc1      $f0, 0x24($sp)
/* B6F6C 800DBB6C 44806000 */  mtc1       $zero, $f12
/* B6F70 800DBB70 C7AE0024 */  lwc1       $f14, 0x24($sp)
/* B6F74 800DBB74 C7A20028 */  lwc1       $f2, 0x28($sp)
/* B6F78 800DBB78 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* B6F7C 800DBB7C 460C7032 */  c.eq.s     $f14, $f12
/* B6F80 800DBB80 3C013F80 */  lui        $at, 0x3f80
/* B6F84 800DBB84 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* B6F88 800DBB88 45030041 */  bc1tl      .L800DBC90
/* B6F8C 800DBB8C 8FBF001C */   lw        $ra, 0x1c($sp)
/* B6F90 800DBB90 44812000 */  mtc1       $at, $f4
/* B6F94 800DBB94 46068202 */  mul.s      $f8, $f16, $f6
/* B6F98 800DBB98 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* B6F9C 800DBB9C C7A60040 */  lwc1       $f6, 0x40($sp)
/* B6FA0 800DBBA0 460E2003 */  div.s      $f0, $f4, $f14
/* B6FA4 800DBBA4 460A4102 */  mul.s      $f4, $f8, $f10
/* B6FA8 800DBBA8 46003207 */  neg.s      $f8, $f6
/* B6FAC 800DBBAC 46024282 */  mul.s      $f10, $f8, $f2
/* B6FB0 800DBBB0 46045181 */  sub.s      $f6, $f10, $f4
/* B6FB4 800DBBB4 46003202 */  mul.s      $f8, $f6, $f0
/* B6FB8 800DBBB8 E6080000 */  swc1       $f8, ($s0)
/* B6FBC 800DBBBC C7AA003C */  lwc1       $f10, 0x3c($sp)
/* B6FC0 800DBBC0 C7A60038 */  lwc1       $f6, 0x38($sp)
/* B6FC4 800DBBC4 460A1102 */  mul.s      $f4, $f2, $f10
/* B6FC8 800DBBC8 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* B6FCC 800DBBCC 46062202 */  mul.s      $f8, $f4, $f6
/* B6FD0 800DBBD0 00000000 */  nop
/* B6FD4 800DBBD4 46105102 */  mul.s      $f4, $f10, $f16
/* B6FD8 800DBBD8 46082181 */  sub.s      $f6, $f4, $f8
/* B6FDC 800DBBDC 46003282 */  mul.s      $f10, $f6, $f0
/* B6FE0 800DBBE0 E60A0010 */  swc1       $f10, 0x10($s0)
/* B6FE4 800DBBE4 460E8182 */  mul.s      $f6, $f16, $f14
/* B6FE8 800DBBE8 C7A40038 */  lwc1       $f4, 0x38($sp)
/* B6FEC 800DBBEC E60C0030 */  swc1       $f12, 0x30($s0)
/* B6FF0 800DBBF0 460E1282 */  mul.s      $f10, $f2, $f14
/* B6FF4 800DBBF4 46002207 */  neg.s      $f8, $f4
/* B6FF8 800DBBF8 E6080020 */  swc1       $f8, 0x20($s0)
/* B6FFC 800DBBFC E6060004 */  swc1       $f6, 4($s0)
/* B7000 800DBC00 E60A0014 */  swc1       $f10, 0x14($s0)
/* B7004 800DBC04 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* B7008 800DBC08 E60C0034 */  swc1       $f12, 0x34($s0)
/* B700C 800DBC0C 46002207 */  neg.s      $f8, $f4
/* B7010 800DBC10 E6080024 */  swc1       $f8, 0x24($s0)
/* B7014 800DBC14 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* B7018 800DBC18 C7A40040 */  lwc1       $f4, 0x40($sp)
/* B701C 800DBC1C 46068282 */  mul.s      $f10, $f16, $f6
/* B7020 800DBC20 C7A60038 */  lwc1       $f6, 0x38($sp)
/* B7024 800DBC24 46045202 */  mul.s      $f8, $f10, $f4
/* B7028 800DBC28 00000000 */  nop
/* B702C 800DBC2C 46061282 */  mul.s      $f10, $f2, $f6
/* B7030 800DBC30 46085101 */  sub.s      $f4, $f10, $f8
/* B7034 800DBC34 46008287 */  neg.s      $f10, $f16
/* B7038 800DBC38 46002182 */  mul.s      $f6, $f4, $f0
/* B703C 800DBC3C E6060008 */  swc1       $f6, 8($s0)
/* B7040 800DBC40 C7A80038 */  lwc1       $f8, 0x38($sp)
/* B7044 800DBC44 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* B7048 800DBC48 46085102 */  mul.s      $f4, $f10, $f8
/* B704C 800DBC4C C7A80040 */  lwc1       $f8, 0x40($sp)
/* B7050 800DBC50 46061282 */  mul.s      $f10, $f2, $f6
/* B7054 800DBC54 00000000 */  nop
/* B7058 800DBC58 46085182 */  mul.s      $f6, $f10, $f8
/* B705C 800DBC5C 46062281 */  sub.s      $f10, $f4, $f6
/* B7060 800DBC60 46005202 */  mul.s      $f8, $f10, $f0
/* B7064 800DBC64 44815000 */  mtc1       $at, $f10
/* B7068 800DBC68 E6080018 */  swc1       $f8, 0x18($s0)
/* B706C 800DBC6C C7A40040 */  lwc1       $f4, 0x40($sp)
/* B7070 800DBC70 E60C0038 */  swc1       $f12, 0x38($s0)
/* B7074 800DBC74 E60C000C */  swc1       $f12, 0xc($s0)
/* B7078 800DBC78 46002187 */  neg.s      $f6, $f4
/* B707C 800DBC7C E60C001C */  swc1       $f12, 0x1c($s0)
/* B7080 800DBC80 E6060028 */  swc1       $f6, 0x28($s0)
/* B7084 800DBC84 E60C002C */  swc1       $f12, 0x2c($s0)
/* B7088 800DBC88 E60A003C */  swc1       $f10, 0x3c($s0)
/* B708C 800DBC8C 8FBF001C */  lw         $ra, 0x1c($sp)
.L800DBC90:
/* B7090 800DBC90 8FB00018 */  lw         $s0, 0x18($sp)
/* B7094 800DBC94 27BD0030 */  addiu      $sp, $sp, 0x30
/* B7098 800DBC98 03E00008 */  jr         $ra
/* B709C 800DBC9C 00000000 */   nop

glabel func_800DBCA0
/* B70A0 800DBCA0 44856000 */  mtc1       $a1, $f12
/* B70A4 800DBCA4 44867000 */  mtc1       $a2, $f14
/* B70A8 800DBCA8 44878000 */  mtc1       $a3, $f16
/* B70AC 800DBCAC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* B70B0 800DBCB0 C7A40070 */  lwc1       $f4, 0x70($sp)
/* B70B4 800DBCB4 AFBF001C */  sw         $ra, 0x1c($sp)
/* B70B8 800DBCB8 AFA40060 */  sw         $a0, 0x60($sp)
/* B70BC 800DBCBC 44056000 */  mfc1       $a1, $f12
/* B70C0 800DBCC0 44067000 */  mfc1       $a2, $f14
/* B70C4 800DBCC4 44078000 */  mfc1       $a3, $f16
/* B70C8 800DBCC8 27A40020 */  addiu      $a0, $sp, 0x20
/* B70CC 800DBCCC 0C036EB8 */  jal        func_800DBAE0
/* B70D0 800DBCD0 E7A40010 */   swc1      $f4, 0x10($sp)
/* B70D4 800DBCD4 27A40020 */  addiu      $a0, $sp, 0x20
/* B70D8 800DBCD8 0C0369F0 */  jal        func_800DA7C0
/* B70DC 800DBCDC 8FA50060 */   lw        $a1, 0x60($sp)
/* B70E0 800DBCE0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B70E4 800DBCE4 27BD0060 */  addiu      $sp, $sp, 0x60
/* B70E8 800DBCE8 03E00008 */  jr         $ra
/* B70EC 800DBCEC 00000000 */   nop

glabel func_800DBCF0
/* B70F0 800DBCF0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B70F4 800DBCF4 AFBF004C */  sw         $ra, 0x4c($sp)
/* B70F8 800DBCF8 AFB00048 */  sw         $s0, 0x48($sp)
/* B70FC 800DBCFC 00808025 */  or         $s0, $a0, $zero
/* B7100 800DBD00 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* B7104 800DBD04 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* B7108 800DBD08 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* B710C 800DBD0C F7B80028 */  sdc1       $f24, 0x28($sp)
/* B7110 800DBD10 F7B60020 */  sdc1       $f22, 0x20($sp)
/* B7114 800DBD14 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B7118 800DBD18 AFA50054 */  sw         $a1, 0x54($sp)
/* B711C 800DBD1C AFA60058 */  sw         $a2, 0x58($sp)
/* B7120 800DBD20 0C036A30 */  jal        func_800DA8C0
/* B7124 800DBD24 AFA7005C */   sw        $a3, 0x5c($sp)
/* B7128 800DBD28 C7A40060 */  lwc1       $f4, 0x60($sp)
/* B712C 800DBD2C C7A60054 */  lwc1       $f6, 0x54($sp)
/* B7130 800DBD30 C7A80064 */  lwc1       $f8, 0x64($sp)
/* B7134 800DBD34 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* B7138 800DBD38 46062001 */  sub.s      $f0, $f4, $f6
/* B713C 800DBD3C C7A6005C */  lwc1       $f6, 0x5c($sp)
/* B7140 800DBD40 C7A40068 */  lwc1       $f4, 0x68($sp)
/* B7144 800DBD44 460A4581 */  sub.s      $f22, $f8, $f10
/* B7148 800DBD48 46000202 */  mul.s      $f8, $f0, $f0
/* B714C 800DBD4C 46000506 */  mov.s      $f20, $f0
/* B7150 800DBD50 46062601 */  sub.s      $f24, $f4, $f6
/* B7154 800DBD54 4616B282 */  mul.s      $f10, $f22, $f22
/* B7158 800DBD58 460A4100 */  add.s      $f4, $f8, $f10
/* B715C 800DBD5C 4618C182 */  mul.s      $f6, $f24, $f24
/* B7160 800DBD60 0C036C2C */  jal        func_800DB0B0
/* B7164 800DBD64 46062300 */   add.s     $f12, $f4, $f6
/* B7168 800DBD68 3C01BFF0 */  lui        $at, 0xbff0
/* B716C 800DBD6C 44814800 */  mtc1       $at, $f9
/* B7170 800DBD70 44804000 */  mtc1       $zero, $f8
/* B7174 800DBD74 460002A1 */  cvt.d.s    $f10, $f0
/* B7178 800DBD78 C7A60070 */  lwc1       $f6, 0x70($sp)
/* B717C 800DBD7C 462A4103 */  div.d      $f4, $f8, $f10
/* B7180 800DBD80 C7AA0074 */  lwc1       $f10, 0x74($sp)
/* B7184 800DBD84 462020A0 */  cvt.s.d    $f2, $f4
/* B7188 800DBD88 4602A502 */  mul.s      $f20, $f20, $f2
/* B718C 800DBD8C 00000000 */  nop
/* B7190 800DBD90 4602B582 */  mul.s      $f22, $f22, $f2
/* B7194 800DBD94 00000000 */  nop
/* B7198 800DBD98 4602C602 */  mul.s      $f24, $f24, $f2
/* B719C 800DBD9C 00000000 */  nop
/* B71A0 800DBDA0 46183202 */  mul.s      $f8, $f6, $f24
/* B71A4 800DBDA4 00000000 */  nop
/* B71A8 800DBDA8 46165102 */  mul.s      $f4, $f10, $f22
/* B71AC 800DBDAC 46044681 */  sub.s      $f26, $f8, $f4
/* B71B0 800DBDB0 46145202 */  mul.s      $f8, $f10, $f20
/* B71B4 800DBDB4 C7A4006C */  lwc1       $f4, 0x6c($sp)
/* B71B8 800DBDB8 46182282 */  mul.s      $f10, $f4, $f24
/* B71BC 800DBDBC 460A4701 */  sub.s      $f28, $f8, $f10
/* B71C0 800DBDC0 46162202 */  mul.s      $f8, $f4, $f22
/* B71C4 800DBDC4 00000000 */  nop
/* B71C8 800DBDC8 46143282 */  mul.s      $f10, $f6, $f20
/* B71CC 800DBDCC 460A4781 */  sub.s      $f30, $f8, $f10
/* B71D0 800DBDD0 461AD102 */  mul.s      $f4, $f26, $f26
/* B71D4 800DBDD4 00000000 */  nop
/* B71D8 800DBDD8 461CE182 */  mul.s      $f6, $f28, $f28
/* B71DC 800DBDDC 46062200 */  add.s      $f8, $f4, $f6
/* B71E0 800DBDE0 461EF282 */  mul.s      $f10, $f30, $f30
/* B71E4 800DBDE4 0C036C2C */  jal        func_800DB0B0
/* B71E8 800DBDE8 460A4300 */   add.s     $f12, $f8, $f10
/* B71EC 800DBDEC 3C013FF0 */  lui        $at, 0x3ff0
/* B71F0 800DBDF0 44812800 */  mtc1       $at, $f5
/* B71F4 800DBDF4 44802000 */  mtc1       $zero, $f4
/* B71F8 800DBDF8 460001A1 */  cvt.d.s    $f6, $f0
/* B71FC 800DBDFC 46262203 */  div.d      $f8, $f4, $f6
/* B7200 800DBE00 462040A0 */  cvt.s.d    $f2, $f8
/* B7204 800DBE04 4602D682 */  mul.s      $f26, $f26, $f2
/* B7208 800DBE08 00000000 */  nop
/* B720C 800DBE0C 4602E702 */  mul.s      $f28, $f28, $f2
/* B7210 800DBE10 00000000 */  nop
/* B7214 800DBE14 4602F782 */  mul.s      $f30, $f30, $f2
/* B7218 800DBE18 00000000 */  nop
/* B721C 800DBE1C 461EB282 */  mul.s      $f10, $f22, $f30
/* B7220 800DBE20 00000000 */  nop
/* B7224 800DBE24 461CC102 */  mul.s      $f4, $f24, $f28
/* B7228 800DBE28 00000000 */  nop
/* B722C 800DBE2C 461AC182 */  mul.s      $f6, $f24, $f26
/* B7230 800DBE30 00000000 */  nop
/* B7234 800DBE34 461EA202 */  mul.s      $f8, $f20, $f30
/* B7238 800DBE38 46045381 */  sub.s      $f14, $f10, $f4
/* B723C 800DBE3C 461CA282 */  mul.s      $f10, $f20, $f28
/* B7240 800DBE40 00000000 */  nop
/* B7244 800DBE44 461AB102 */  mul.s      $f4, $f22, $f26
/* B7248 800DBE48 E7AE006C */  swc1       $f14, 0x6c($sp)
/* B724C 800DBE4C 46083401 */  sub.s      $f16, $f6, $f8
/* B7250 800DBE50 460E7182 */  mul.s      $f6, $f14, $f14
/* B7254 800DBE54 00000000 */  nop
/* B7258 800DBE58 46108202 */  mul.s      $f8, $f16, $f16
/* B725C 800DBE5C E7B00070 */  swc1       $f16, 0x70($sp)
/* B7260 800DBE60 46045481 */  sub.s      $f18, $f10, $f4
/* B7264 800DBE64 46129102 */  mul.s      $f4, $f18, $f18
/* B7268 800DBE68 46083280 */  add.s      $f10, $f6, $f8
/* B726C 800DBE6C E7B20074 */  swc1       $f18, 0x74($sp)
/* B7270 800DBE70 0C036C2C */  jal        func_800DB0B0
/* B7274 800DBE74 46045300 */   add.s     $f12, $f10, $f4
/* B7278 800DBE78 3C013FF0 */  lui        $at, 0x3ff0
/* B727C 800DBE7C 44813800 */  mtc1       $at, $f7
/* B7280 800DBE80 44803000 */  mtc1       $zero, $f6
/* B7284 800DBE84 46000221 */  cvt.d.s    $f8, $f0
/* B7288 800DBE88 C7AE006C */  lwc1       $f14, 0x6c($sp)
/* B728C 800DBE8C 46283283 */  div.d      $f10, $f6, $f8
/* B7290 800DBE90 C7AC0070 */  lwc1       $f12, 0x70($sp)
/* B7294 800DBE94 C7A40074 */  lwc1       $f4, 0x74($sp)
/* B7298 800DBE98 3C013F80 */  lui        $at, 0x3f80
/* B729C 800DBE9C 462050A0 */  cvt.s.d    $f2, $f10
/* B72A0 800DBEA0 46027382 */  mul.s      $f14, $f14, $f2
/* B72A4 800DBEA4 00000000 */  nop
/* B72A8 800DBEA8 46026302 */  mul.s      $f12, $f12, $f2
/* B72AC 800DBEAC 00000000 */  nop
/* B72B0 800DBEB0 46022182 */  mul.s      $f6, $f4, $f2
/* B72B4 800DBEB4 E7A60074 */  swc1       $f6, 0x74($sp)
/* B72B8 800DBEB8 E61A0000 */  swc1       $f26, ($s0)
/* B72BC 800DBEBC E61C0010 */  swc1       $f28, 0x10($s0)
/* B72C0 800DBEC0 E61E0020 */  swc1       $f30, 0x20($s0)
/* B72C4 800DBEC4 C7A80054 */  lwc1       $f8, 0x54($sp)
/* B72C8 800DBEC8 C7A40058 */  lwc1       $f4, 0x58($sp)
/* B72CC 800DBECC 461A4282 */  mul.s      $f10, $f8, $f26
/* B72D0 800DBED0 00000000 */  nop
/* B72D4 800DBED4 461C2182 */  mul.s      $f6, $f4, $f28
/* B72D8 800DBED8 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* B72DC 800DBEDC E60E0004 */  swc1       $f14, 4($s0)
/* B72E0 800DBEE0 E60C0014 */  swc1       $f12, 0x14($s0)
/* B72E4 800DBEE4 46065200 */  add.s      $f8, $f10, $f6
/* B72E8 800DBEE8 461E2282 */  mul.s      $f10, $f4, $f30
/* B72EC 800DBEEC 460A4180 */  add.s      $f6, $f8, $f10
/* B72F0 800DBEF0 46003107 */  neg.s      $f4, $f6
/* B72F4 800DBEF4 E6040030 */  swc1       $f4, 0x30($s0)
/* B72F8 800DBEF8 C7A00074 */  lwc1       $f0, 0x74($sp)
/* B72FC 800DBEFC E7AC0070 */  swc1       $f12, 0x70($sp)
/* B7300 800DBF00 E7AE006C */  swc1       $f14, 0x6c($sp)
/* B7304 800DBF04 C7AE0054 */  lwc1       $f14, 0x54($sp)
/* B7308 800DBF08 C7AC0058 */  lwc1       $f12, 0x58($sp)
/* B730C 800DBF0C C7A2005C */  lwc1       $f2, 0x5c($sp)
/* B7310 800DBF10 E6000024 */  swc1       $f0, 0x24($s0)
/* B7314 800DBF14 C7A8006C */  lwc1       $f8, 0x6c($sp)
/* B7318 800DBF18 C7A60070 */  lwc1       $f6, 0x70($sp)
/* B731C 800DBF1C E6140008 */  swc1       $f20, 8($s0)
/* B7320 800DBF20 46087282 */  mul.s      $f10, $f14, $f8
/* B7324 800DBF24 E6160018 */  swc1       $f22, 0x18($s0)
/* B7328 800DBF28 E6180028 */  swc1       $f24, 0x28($s0)
/* B732C 800DBF2C 46066102 */  mul.s      $f4, $f12, $f6
/* B7330 800DBF30 46045200 */  add.s      $f8, $f10, $f4
/* B7334 800DBF34 46001182 */  mul.s      $f6, $f2, $f0
/* B7338 800DBF38 44800000 */  mtc1       $zero, $f0
/* B733C 800DBF3C 00000000 */  nop
/* B7340 800DBF40 E600000C */  swc1       $f0, 0xc($s0)
/* B7344 800DBF44 E600001C */  swc1       $f0, 0x1c($s0)
/* B7348 800DBF48 E600002C */  swc1       $f0, 0x2c($s0)
/* B734C 800DBF4C 46064280 */  add.s      $f10, $f8, $f6
/* B7350 800DBF50 46147202 */  mul.s      $f8, $f14, $f20
/* B7354 800DBF54 00000000 */  nop
/* B7358 800DBF58 46166182 */  mul.s      $f6, $f12, $f22
/* B735C 800DBF5C 46005107 */  neg.s      $f4, $f10
/* B7360 800DBF60 E6040034 */  swc1       $f4, 0x34($s0)
/* B7364 800DBF64 46181102 */  mul.s      $f4, $f2, $f24
/* B7368 800DBF68 46064280 */  add.s      $f10, $f8, $f6
/* B736C 800DBF6C 46045200 */  add.s      $f8, $f10, $f4
/* B7370 800DBF70 44815000 */  mtc1       $at, $f10
/* B7374 800DBF74 46004187 */  neg.s      $f6, $f8
/* B7378 800DBF78 E60A003C */  swc1       $f10, 0x3c($s0)
/* B737C 800DBF7C E6060038 */  swc1       $f6, 0x38($s0)
/* B7380 800DBF80 8FBF004C */  lw         $ra, 0x4c($sp)
/* B7384 800DBF84 8FB00048 */  lw         $s0, 0x48($sp)
/* B7388 800DBF88 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* B738C 800DBF8C D7BC0038 */  ldc1       $f28, 0x38($sp)
/* B7390 800DBF90 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* B7394 800DBF94 D7B80028 */  ldc1       $f24, 0x28($sp)
/* B7398 800DBF98 D7B60020 */  ldc1       $f22, 0x20($sp)
/* B739C 800DBF9C D7B40018 */  ldc1       $f20, 0x18($sp)
/* B73A0 800DBFA0 03E00008 */  jr         $ra
/* B73A4 800DBFA4 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800DBFA8
/* B73A8 800DBFA8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B73AC 800DBFAC C7A40080 */  lwc1       $f4, 0x80($sp)
/* B73B0 800DBFB0 44856000 */  mtc1       $a1, $f12
/* B73B4 800DBFB4 44867000 */  mtc1       $a2, $f14
/* B73B8 800DBFB8 44878000 */  mtc1       $a3, $f16
/* B73BC 800DBFBC E7A40010 */  swc1       $f4, 0x10($sp)
/* B73C0 800DBFC0 C7A40094 */  lwc1       $f4, 0x94($sp)
/* B73C4 800DBFC4 C7A60084 */  lwc1       $f6, 0x84($sp)
/* B73C8 800DBFC8 C7A80088 */  lwc1       $f8, 0x88($sp)
/* B73CC 800DBFCC C7AA008C */  lwc1       $f10, 0x8c($sp)
/* B73D0 800DBFD0 C7B20090 */  lwc1       $f18, 0x90($sp)
/* B73D4 800DBFD4 AFBF002C */  sw         $ra, 0x2c($sp)
/* B73D8 800DBFD8 AFA40070 */  sw         $a0, 0x70($sp)
/* B73DC 800DBFDC 44056000 */  mfc1       $a1, $f12
/* B73E0 800DBFE0 44067000 */  mfc1       $a2, $f14
/* B73E4 800DBFE4 44078000 */  mfc1       $a3, $f16
/* B73E8 800DBFE8 27A40030 */  addiu      $a0, $sp, 0x30
/* B73EC 800DBFEC E7A40024 */  swc1       $f4, 0x24($sp)
/* B73F0 800DBFF0 E7A60014 */  swc1       $f6, 0x14($sp)
/* B73F4 800DBFF4 E7A80018 */  swc1       $f8, 0x18($sp)
/* B73F8 800DBFF8 E7AA001C */  swc1       $f10, 0x1c($sp)
/* B73FC 800DBFFC 0C036F3C */  jal        func_800DBCF0
/* B7400 800DC000 E7B20020 */   swc1      $f18, 0x20($sp)
/* B7404 800DC004 27A40030 */  addiu      $a0, $sp, 0x30
/* B7408 800DC008 0C0369F0 */  jal        func_800DA7C0
/* B740C 800DC00C 8FA50070 */   lw        $a1, 0x70($sp)
/* B7410 800DC010 8FBF002C */  lw         $ra, 0x2c($sp)
/* B7414 800DC014 27BD0070 */  addiu      $sp, $sp, 0x70
/* B7418 800DC018 03E00008 */  jr         $ra
/* B741C 800DC01C 00000000 */   nop

glabel func_800DC020
/* B7420 800DC020 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B7424 800DC024 44867000 */  mtc1       $a2, $f14
/* B7428 800DC028 AFBF0014 */  sw         $ra, 0x14($sp)
/* B742C 800DC02C AFA7003C */  sw         $a3, 0x3c($sp)
/* B7430 800DC030 AFA40030 */  sw         $a0, 0x30($sp)
/* B7434 800DC034 AFA50034 */  sw         $a1, 0x34($sp)
/* B7438 800DC038 0C036A30 */  jal        func_800DA8C0
/* B743C 800DC03C E7AE0038 */   swc1      $f14, 0x38($sp)
/* B7440 800DC040 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* B7444 800DC044 3C018011 */  lui        $at, %hi(D_80110970)
/* B7448 800DC048 D4260970 */  ldc1       $f6, %lo(D_80110970)($at)
/* B744C 800DC04C 46007121 */  cvt.d.s    $f4, $f14
/* B7450 800DC050 3C014000 */  lui        $at, 0x4000
/* B7454 800DC054 46262202 */  mul.d      $f8, $f4, $f6
/* B7458 800DC058 44815000 */  mtc1       $at, $f10
/* B745C 800DC05C 462043A0 */  cvt.s.d    $f14, $f8
/* B7460 800DC060 460A7303 */  div.s      $f12, $f14, $f10
/* B7464 800DC064 0C036C30 */  jal        func_800DB0C0
/* B7468 800DC068 E7AC001C */   swc1      $f12, 0x1c($sp)
/* B746C 800DC06C C7AC001C */  lwc1       $f12, 0x1c($sp)
/* B7470 800DC070 0C036B60 */  jal        func_800DAD80
/* B7474 800DC074 E7A00020 */   swc1      $f0, 0x20($sp)
/* B7478 800DC078 C7A40020 */  lwc1       $f4, 0x20($sp)
/* B747C 800DC07C C7A6003C */  lwc1       $f6, 0x3c($sp)
/* B7480 800DC080 C7AE0040 */  lwc1       $f14, 0x40($sp)
/* B7484 800DC084 46002083 */  div.s      $f2, $f4, $f0
/* B7488 800DC088 C7B00044 */  lwc1       $f16, 0x44($sp)
/* B748C 800DC08C 3C01BF80 */  lui        $at, 0xbf80
/* B7490 800DC090 44812000 */  mtc1       $at, $f4
/* B7494 800DC094 46107480 */  add.s      $f18, $f14, $f16
/* B7498 800DC098 8FA20030 */  lw         $v0, 0x30($sp)
/* B749C 800DC09C 3C014000 */  lui        $at, 0x4000
/* B74A0 800DC0A0 46107301 */  sub.s      $f12, $f14, $f16
/* B74A4 800DC0A4 8FA50034 */  lw         $a1, 0x34($sp)
/* B74A8 800DC0A8 E444002C */  swc1       $f4, 0x2c($v0)
/* B74AC 800DC0AC 00001825 */  or         $v1, $zero, $zero
/* B74B0 800DC0B0 24040004 */  addiu      $a0, $zero, 4
/* B74B4 800DC0B4 460C9283 */  div.s      $f10, $f18, $f12
/* B74B8 800DC0B8 E4420014 */  swc1       $f2, 0x14($v0)
/* B74BC 800DC0BC 46061203 */  div.s      $f8, $f2, $f6
/* B74C0 800DC0C0 44813000 */  mtc1       $at, $f6
/* B74C4 800DC0C4 E44A0028 */  swc1       $f10, 0x28($v0)
/* B74C8 800DC0C8 E4480000 */  swc1       $f8, ($v0)
/* B74CC 800DC0CC 460E3202 */  mul.s      $f8, $f6, $f14
/* B74D0 800DC0D0 44803000 */  mtc1       $zero, $f6
/* B74D4 800DC0D4 00000000 */  nop
/* B74D8 800DC0D8 E446003C */  swc1       $f6, 0x3c($v0)
/* B74DC 800DC0DC 46104282 */  mul.s      $f10, $f8, $f16
/* B74E0 800DC0E0 460C5103 */  div.s      $f4, $f10, $f12
/* B74E4 800DC0E4 E4440038 */  swc1       $f4, 0x38($v0)
/* B74E8 800DC0E8 C7A00048 */  lwc1       $f0, 0x48($sp)
/* B74EC 800DC0EC C4460000 */  lwc1       $f6, ($v0)
/* B74F0 800DC0F0 24630001 */  addiu      $v1, $v1, 1
/* B74F4 800DC0F4 C4500004 */  lwc1       $f16, 4($v0)
/* B74F8 800DC0F8 46003282 */  mul.s      $f10, $f6, $f0
/* B74FC 800DC0FC C44C0008 */  lwc1       $f12, 8($v0)
/* B7500 800DC100 10640010 */  beq        $v1, $a0, .L800DC144
/* B7504 800DC104 C44E000C */   lwc1      $f14, 0xc($v0)
.L800DC108:
/* B7508 800DC108 46008202 */  mul.s      $f8, $f16, $f0
/* B750C 800DC10C C4460010 */  lwc1       $f6, 0x10($v0)
/* B7510 800DC110 C4500014 */  lwc1       $f16, 0x14($v0)
/* B7514 800DC114 46006102 */  mul.s      $f4, $f12, $f0
/* B7518 800DC118 C44C0018 */  lwc1       $f12, 0x18($v0)
/* B751C 800DC11C 24630001 */  addiu      $v1, $v1, 1
/* B7520 800DC120 46007082 */  mul.s      $f2, $f14, $f0
/* B7524 800DC124 C44E001C */  lwc1       $f14, 0x1c($v0)
/* B7528 800DC128 E44A0000 */  swc1       $f10, ($v0)
/* B752C 800DC12C 46003282 */  mul.s      $f10, $f6, $f0
/* B7530 800DC130 E4480004 */  swc1       $f8, 4($v0)
/* B7534 800DC134 E4440008 */  swc1       $f4, 8($v0)
/* B7538 800DC138 24420010 */  addiu      $v0, $v0, 0x10
/* B753C 800DC13C 1464FFF2 */  bne        $v1, $a0, .L800DC108
/* B7540 800DC140 E442FFFC */   swc1      $f2, -4($v0)
.L800DC144:
/* B7544 800DC144 46008202 */  mul.s      $f8, $f16, $f0
/* B7548 800DC148 24420010 */  addiu      $v0, $v0, 0x10
/* B754C 800DC14C E44AFFF0 */  swc1       $f10, -0x10($v0)
/* B7550 800DC150 46006102 */  mul.s      $f4, $f12, $f0
/* B7554 800DC154 00000000 */  nop
/* B7558 800DC158 46007082 */  mul.s      $f2, $f14, $f0
/* B755C 800DC15C E448FFF4 */  swc1       $f8, -0xc($v0)
/* B7560 800DC160 E444FFF8 */  swc1       $f4, -8($v0)
/* B7564 800DC164 E442FFFC */  swc1       $f2, -4($v0)
/* B7568 800DC168 10A00035 */  beqz       $a1, .L800DC240
/* B756C 800DC16C 3C014000 */   lui       $at, 0x4000
/* B7570 800DC170 44814800 */  mtc1       $at, $f9
/* B7574 800DC174 44804000 */  mtc1       $zero, $f8
/* B7578 800DC178 46009021 */  cvt.d.s    $f0, $f18
/* B757C 800DC17C 340EFFFF */  ori        $t6, $zero, 0xffff
/* B7580 800DC180 4628003E */  c.le.d     $f0, $f8
/* B7584 800DC184 3C014100 */  lui        $at, 0x4100
/* B7588 800DC188 45020004 */  bc1fl      .L800DC19C
/* B758C 800DC18C 44815800 */   mtc1      $at, $f11
/* B7590 800DC190 1000002B */  b          .L800DC240
/* B7594 800DC194 A4AE0000 */   sh        $t6, ($a1)
/* B7598 800DC198 44815800 */  mtc1       $at, $f11
.L800DC19C:
/* B759C 800DC19C 44805000 */  mtc1       $zero, $f10
/* B75A0 800DC1A0 24180001 */  addiu      $t8, $zero, 1
/* B75A4 800DC1A4 3C0141E0 */  lui        $at, 0x41e0
/* B75A8 800DC1A8 46205103 */  div.d      $f4, $f10, $f0
/* B75AC 800DC1AC 24080001 */  addiu      $t0, $zero, 1
/* B75B0 800DC1B0 444FF800 */  cfc1       $t7, $31
/* B75B4 800DC1B4 44D8F800 */  ctc1       $t8, $31
/* B75B8 800DC1B8 00000000 */  nop
/* B75BC 800DC1BC 462021A4 */  cvt.w.d    $f6, $f4
/* B75C0 800DC1C0 4458F800 */  cfc1       $t8, $31
/* B75C4 800DC1C4 00000000 */  nop
/* B75C8 800DC1C8 33180078 */  andi       $t8, $t8, 0x78
/* B75CC 800DC1CC 53000014 */  beql       $t8, $zero, .L800DC220
/* B75D0 800DC1D0 44183000 */   mfc1      $t8, $f6
/* B75D4 800DC1D4 44813800 */  mtc1       $at, $f7
/* B75D8 800DC1D8 44803000 */  mtc1       $zero, $f6
/* B75DC 800DC1DC 24180001 */  addiu      $t8, $zero, 1
/* B75E0 800DC1E0 46262181 */  sub.d      $f6, $f4, $f6
/* B75E4 800DC1E4 44D8F800 */  ctc1       $t8, $31
/* B75E8 800DC1E8 00000000 */  nop
/* B75EC 800DC1EC 462031A4 */  cvt.w.d    $f6, $f6
/* B75F0 800DC1F0 4458F800 */  cfc1       $t8, $31
/* B75F4 800DC1F4 00000000 */  nop
/* B75F8 800DC1F8 33180078 */  andi       $t8, $t8, 0x78
/* B75FC 800DC1FC 17000005 */  bnez       $t8, .L800DC214
/* B7600 800DC200 00000000 */   nop
/* B7604 800DC204 44183000 */  mfc1       $t8, $f6
/* B7608 800DC208 3C018000 */  lui        $at, 0x8000
/* B760C 800DC20C 10000007 */  b          .L800DC22C
/* B7610 800DC210 0301C025 */   or        $t8, $t8, $at
.L800DC214:
/* B7614 800DC214 10000005 */  b          .L800DC22C
/* B7618 800DC218 2418FFFF */   addiu     $t8, $zero, -1
/* B761C 800DC21C 44183000 */  mfc1       $t8, $f6
.L800DC220:
/* B7620 800DC220 00000000 */  nop
/* B7624 800DC224 0700FFFB */  bltz       $t8, .L800DC214
/* B7628 800DC228 00000000 */   nop
.L800DC22C:
/* B762C 800DC22C 44CFF800 */  ctc1       $t7, $31
/* B7630 800DC230 3319FFFF */  andi       $t9, $t8, 0xffff
/* B7634 800DC234 1F200002 */  bgtz       $t9, .L800DC240
/* B7638 800DC238 A4B80000 */   sh        $t8, ($a1)
/* B763C 800DC23C A4A80000 */  sh         $t0, ($a1)
.L800DC240:
/* B7640 800DC240 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7644 800DC244 27BD0030 */  addiu      $sp, $sp, 0x30
/* B7648 800DC248 03E00008 */  jr         $ra
/* B764C 800DC24C 00000000 */   nop

glabel func_800DC250
/* B7650 800DC250 27BDFF98 */  addiu      $sp, $sp, -0x68
/* B7654 800DC254 44866000 */  mtc1       $a2, $f12
/* B7658 800DC258 44877000 */  mtc1       $a3, $f14
/* B765C 800DC25C C7A40078 */  lwc1       $f4, 0x78($sp)
/* B7660 800DC260 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* B7664 800DC264 C7A80080 */  lwc1       $f8, 0x80($sp)
/* B7668 800DC268 AFBF0024 */  sw         $ra, 0x24($sp)
/* B766C 800DC26C AFA40068 */  sw         $a0, 0x68($sp)
/* B7670 800DC270 44066000 */  mfc1       $a2, $f12
/* B7674 800DC274 44077000 */  mfc1       $a3, $f14
/* B7678 800DC278 27A40028 */  addiu      $a0, $sp, 0x28
/* B767C 800DC27C E7A40010 */  swc1       $f4, 0x10($sp)
/* B7680 800DC280 E7A60014 */  swc1       $f6, 0x14($sp)
/* B7684 800DC284 0C037008 */  jal        func_800DC020
/* B7688 800DC288 E7A80018 */   swc1      $f8, 0x18($sp)
/* B768C 800DC28C 27A40028 */  addiu      $a0, $sp, 0x28
/* B7690 800DC290 0C0369F0 */  jal        func_800DA7C0
/* B7694 800DC294 8FA50068 */   lw        $a1, 0x68($sp)
/* B7698 800DC298 8FBF0024 */  lw         $ra, 0x24($sp)
/* B769C 800DC29C 27BD0068 */  addiu      $sp, $sp, 0x68
/* B76A0 800DC2A0 03E00008 */  jr         $ra
/* B76A4 800DC2A4 00000000 */   nop
/* B76A8 800DC2A8 00000000 */  nop
/* B76AC 800DC2AC 00000000 */  nop
