.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004E9F0
/* 29DF0 8004E9F0 3C0E8017 */  lui        $t6, %hi(D_80175680)
/* 29DF4 8004E9F4 95CE5680 */  lhu        $t6, %lo(D_80175680)($t6)
/* 29DF8 8004E9F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 29DFC 8004E9FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 29E00 8004EA00 31CF0020 */  andi       $t7, $t6, 0x20
/* 29E04 8004EA04 11E00011 */  beqz       $t7, .L8004EA4C
/* 29E08 8004EA08 3C01800F */   lui       $at, %hi(D_800F0718)
/* 29E0C 8004EA0C C4240718 */  lwc1       $f4, %lo(D_800F0718)($at)
/* 29E10 8004EA10 3C018017 */  lui        $at, %hi(D_80168DB0)
/* 29E14 8004EA14 E4248DB0 */  swc1       $f4, %lo(D_80168DB0)($at)
/* 29E18 8004EA18 3C01800F */  lui        $at, %hi(D_800F071C)
/* 29E1C 8004EA1C C426071C */  lwc1       $f6, %lo(D_800F071C)($at)
/* 29E20 8004EA20 3C018017 */  lui        $at, %hi(D_80168EE0)
/* 29E24 8004EA24 E4268EE0 */  swc1       $f6, %lo(D_80168EE0)($at)
/* 29E28 8004EA28 3C01800F */  lui        $at, %hi(D_800F0720)
/* 29E2C 8004EA2C C4280720 */  lwc1       $f8, %lo(D_800F0720)($at)
/* 29E30 8004EA30 3C018017 */  lui        $at, %hi(D_80169010)
/* 29E34 8004EA34 E4289010 */  swc1       $f8, %lo(D_80169010)($at)
/* 29E38 8004EA38 3C01800F */  lui        $at, %hi(D_800F0724)
/* 29E3C 8004EA3C C42A0724 */  lwc1       $f10, %lo(D_800F0724)($at)
/* 29E40 8004EA40 3C018017 */  lui        $at, %hi(D_80169140)
/* 29E44 8004EA44 10000011 */  b          .L8004EA8C
/* 29E48 8004EA48 E42A9140 */   swc1      $f10, %lo(D_80169140)($at)
.L8004EA4C:
/* 29E4C 8004EA4C 3C018017 */  lui        $at, %hi(D_80168DB0)
/* 29E50 8004EA50 C4308DB0 */  lwc1       $f16, %lo(D_80168DB0)($at)
/* 29E54 8004EA54 3C01800F */  lui        $at, %hi(D_800F0718)
/* 29E58 8004EA58 E4300718 */  swc1       $f16, %lo(D_800F0718)($at)
/* 29E5C 8004EA5C 3C018017 */  lui        $at, %hi(D_80168EE0)
/* 29E60 8004EA60 C4328EE0 */  lwc1       $f18, %lo(D_80168EE0)($at)
/* 29E64 8004EA64 3C01800F */  lui        $at, %hi(D_800F071C)
/* 29E68 8004EA68 E432071C */  swc1       $f18, %lo(D_800F071C)($at)
/* 29E6C 8004EA6C 3C018017 */  lui        $at, %hi(D_80169010)
/* 29E70 8004EA70 C4249010 */  lwc1       $f4, %lo(D_80169010)($at)
/* 29E74 8004EA74 3C01800F */  lui        $at, %hi(D_800F0720)
/* 29E78 8004EA78 E4240720 */  swc1       $f4, %lo(D_800F0720)($at)
/* 29E7C 8004EA7C 3C018017 */  lui        $at, %hi(D_80169140)
/* 29E80 8004EA80 C4269140 */  lwc1       $f6, %lo(D_80169140)($at)
/* 29E84 8004EA84 3C01800F */  lui        $at, %hi(D_800F0724)
/* 29E88 8004EA88 E4260724 */  swc1       $f6, %lo(D_800F0724)($at)
.L8004EA8C:
/* 29E8C 8004EA8C 0C015797 */  jal        func_80055E5C
/* 29E90 8004EA90 24040800 */   addiu     $a0, $zero, 0x800
/* 29E94 8004EA94 10400007 */  beqz       $v0, .L8004EAB4
/* 29E98 8004EA98 3C028017 */   lui       $v0, %hi(D_80176B74)
/* 29E9C 8004EA9C 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 29EA0 8004EAA0 3C0142C8 */  lui        $at, 0x42c8
/* 29EA4 8004EAA4 44810000 */  mtc1       $at, $f0
/* 29EA8 8004EAA8 C448000C */  lwc1       $f8, 0xc($v0)
/* 29EAC 8004EAAC 46004281 */  sub.s      $f10, $f8, $f0
/* 29EB0 8004EAB0 E44A000C */  swc1       $f10, 0xc($v0)
.L8004EAB4:
/* 29EB4 8004EAB4 0C015797 */  jal        func_80055E5C
/* 29EB8 8004EAB8 24040400 */   addiu     $a0, $zero, 0x400
/* 29EBC 8004EABC 3C0142C8 */  lui        $at, 0x42c8
/* 29EC0 8004EAC0 44810000 */  mtc1       $at, $f0
/* 29EC4 8004EAC4 10400005 */  beqz       $v0, .L8004EADC
/* 29EC8 8004EAC8 3C028017 */   lui       $v0, %hi(D_80176B74)
/* 29ECC 8004EACC 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 29ED0 8004EAD0 C450000C */  lwc1       $f16, 0xc($v0)
/* 29ED4 8004EAD4 46008480 */  add.s      $f18, $f16, $f0
/* 29ED8 8004EAD8 E452000C */  swc1       $f18, 0xc($v0)
.L8004EADC:
/* 29EDC 8004EADC 0C015797 */  jal        func_80055E5C
/* 29EE0 8004EAE0 24040200 */   addiu     $a0, $zero, 0x200
/* 29EE4 8004EAE4 3C0142C8 */  lui        $at, 0x42c8
/* 29EE8 8004EAE8 44810000 */  mtc1       $at, $f0
/* 29EEC 8004EAEC 10400005 */  beqz       $v0, .L8004EB04
/* 29EF0 8004EAF0 3C028017 */   lui       $v0, %hi(D_80176B74)
/* 29EF4 8004EAF4 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 29EF8 8004EAF8 C4440004 */  lwc1       $f4, 4($v0)
/* 29EFC 8004EAFC 46002181 */  sub.s      $f6, $f4, $f0
/* 29F00 8004EB00 E4460004 */  swc1       $f6, 4($v0)
.L8004EB04:
/* 29F04 8004EB04 0C015797 */  jal        func_80055E5C
/* 29F08 8004EB08 24040100 */   addiu     $a0, $zero, 0x100
/* 29F0C 8004EB0C 3C0142C8 */  lui        $at, 0x42c8
/* 29F10 8004EB10 44810000 */  mtc1       $at, $f0
/* 29F14 8004EB14 10400005 */  beqz       $v0, .L8004EB2C
/* 29F18 8004EB18 3C028017 */   lui       $v0, %hi(D_80176B74)
/* 29F1C 8004EB1C 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 29F20 8004EB20 C4480004 */  lwc1       $f8, 4($v0)
/* 29F24 8004EB24 46004280 */  add.s      $f10, $f8, $f0
/* 29F28 8004EB28 E44A0004 */  swc1       $f10, 4($v0)
.L8004EB2C:
/* 29F2C 8004EB2C 0C015797 */  jal        func_80055E5C
/* 29F30 8004EB30 24040008 */   addiu     $a0, $zero, 8
/* 29F34 8004EB34 3C0142C8 */  lui        $at, 0x42c8
/* 29F38 8004EB38 44810000 */  mtc1       $at, $f0
/* 29F3C 8004EB3C 1040000E */  beqz       $v0, .L8004EB78
/* 29F40 8004EB40 3C01800F */   lui       $at, %hi(D_800F071C)
/* 29F44 8004EB44 C424071C */  lwc1       $f4, %lo(D_800F071C)($at)
/* 29F48 8004EB48 C4300718 */  lwc1       $f16, 0x718($at)
/* 29F4C 8004EB4C 46002180 */  add.s      $f6, $f4, $f0
/* 29F50 8004EB50 46008480 */  add.s      $f18, $f16, $f0
/* 29F54 8004EB54 E426071C */  swc1       $f6, 0x71c($at)
/* 29F58 8004EB58 E4320718 */  swc1       $f18, 0x718($at)
/* 29F5C 8004EB5C 3C01800F */  lui        $at, %hi(D_800F0720)
/* 29F60 8004EB60 C4280720 */  lwc1       $f8, %lo(D_800F0720)($at)
/* 29F64 8004EB64 C4300724 */  lwc1       $f16, 0x724($at)
/* 29F68 8004EB68 46004280 */  add.s      $f10, $f8, $f0
/* 29F6C 8004EB6C 46008480 */  add.s      $f18, $f16, $f0
/* 29F70 8004EB70 E42A0720 */  swc1       $f10, 0x720($at)
/* 29F74 8004EB74 E4320724 */  swc1       $f18, 0x724($at)
.L8004EB78:
/* 29F78 8004EB78 0C015797 */  jal        func_80055E5C
/* 29F7C 8004EB7C 24040004 */   addiu     $a0, $zero, 4
/* 29F80 8004EB80 3C0142C8 */  lui        $at, 0x42c8
/* 29F84 8004EB84 44810000 */  mtc1       $at, $f0
/* 29F88 8004EB88 1040000E */  beqz       $v0, .L8004EBC4
/* 29F8C 8004EB8C 3C01800F */   lui       $at, %hi(D_800F071C)
/* 29F90 8004EB90 C428071C */  lwc1       $f8, %lo(D_800F071C)($at)
/* 29F94 8004EB94 C4240718 */  lwc1       $f4, 0x718($at)
/* 29F98 8004EB98 46004281 */  sub.s      $f10, $f8, $f0
/* 29F9C 8004EB9C 46002181 */  sub.s      $f6, $f4, $f0
/* 29FA0 8004EBA0 E42A071C */  swc1       $f10, 0x71c($at)
/* 29FA4 8004EBA4 E4260718 */  swc1       $f6, 0x718($at)
/* 29FA8 8004EBA8 3C01800F */  lui        $at, %hi(D_800F0720)
/* 29FAC 8004EBAC C4300720 */  lwc1       $f16, %lo(D_800F0720)($at)
/* 29FB0 8004EBB0 C4240724 */  lwc1       $f4, 0x724($at)
/* 29FB4 8004EBB4 46008481 */  sub.s      $f18, $f16, $f0
/* 29FB8 8004EBB8 46002181 */  sub.s      $f6, $f4, $f0
/* 29FBC 8004EBBC E4320720 */  swc1       $f18, 0x720($at)
/* 29FC0 8004EBC0 E4260724 */  swc1       $f6, 0x724($at)
.L8004EBC4:
/* 29FC4 8004EBC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 29FC8 8004EBC8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 29FCC 8004EBCC 03E00008 */  jr         $ra
/* 29FD0 8004EBD0 00000000 */   nop

glabel func_8004EBD4
/* 29FD4 8004EBD4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 29FD8 8004EBD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 29FDC 8004EBDC 0C015797 */  jal        func_80055E5C
/* 29FE0 8004EBE0 24040002 */   addiu     $a0, $zero, 2
/* 29FE4 8004EBE4 10400007 */  beqz       $v0, .L8004EC04
/* 29FE8 8004EBE8 3C038024 */   lui       $v1, %hi(D_80240CD8)
/* 29FEC 8004EBEC 24630CD8 */  addiu      $v1, $v1, %lo(D_80240CD8)
/* 29FF0 8004EBF0 8C6F0000 */  lw         $t7, ($v1)
/* 29FF4 8004EBF4 240E0001 */  addiu      $t6, $zero, 1
/* 29FF8 8004EBF8 AFAE001C */  sw         $t6, 0x1c($sp)
/* 29FFC 8004EBFC 25F8FFFF */  addiu      $t8, $t7, -1
/* 2A000 8004EC00 AC780000 */  sw         $t8, ($v1)
.L8004EC04:
/* 2A004 8004EC04 0C015797 */  jal        func_80055E5C
/* 2A008 8004EC08 24040001 */   addiu     $a0, $zero, 1
/* 2A00C 8004EC0C 3C038024 */  lui        $v1, %hi(D_80240CD8)
/* 2A010 8004EC10 24630CD8 */  addiu      $v1, $v1, %lo(D_80240CD8)
/* 2A014 8004EC14 10400005 */  beqz       $v0, .L8004EC2C
/* 2A018 8004EC18 8FA5001C */   lw        $a1, 0x1c($sp)
/* 2A01C 8004EC1C 8C790000 */  lw         $t9, ($v1)
/* 2A020 8004EC20 24050001 */  addiu      $a1, $zero, 1
/* 2A024 8004EC24 27280001 */  addiu      $t0, $t9, 1
/* 2A028 8004EC28 AC680000 */  sw         $t0, ($v1)
.L8004EC2C:
/* 2A02C 8004EC2C 8C640000 */  lw         $a0, ($v1)
/* 2A030 8004EC30 3C098024 */  lui        $t1, %hi(D_802478E0)
/* 2A034 8004EC34 3C0B8024 */  lui        $t3, 0x8024
/* 2A038 8004EC38 04810004 */  bgez       $a0, .L8004EC4C
/* 2A03C 8004EC3C 3C0C8023 */   lui       $t4, 0x8023
/* 2A040 8004EC40 8D2978E0 */  lw         $t1, %lo(D_802478E0)($t1)
/* 2A044 8004EC44 2524FFFF */  addiu      $a0, $t1, -1
/* 2A048 8004EC48 AC640000 */  sw         $a0, ($v1)
.L8004EC4C:
/* 2A04C 8004EC4C 8D6B78E0 */  lw         $t3, 0x78e0($t3)
/* 2A050 8004EC50 008B082A */  slt        $at, $a0, $t3
/* 2A054 8004EC54 54200003 */  bnel       $at, $zero, .L8004EC64
/* 2A058 8004EC58 24010001 */   addiu     $at, $zero, 1
/* 2A05C 8004EC5C AC600000 */  sw         $zero, ($v1)
/* 2A060 8004EC60 24010001 */  addiu      $at, $zero, 1
.L8004EC64:
/* 2A064 8004EC64 54A1000D */  bnel       $a1, $at, .L8004EC9C
/* 2A068 8004EC68 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2A06C 8004EC6C 8D8C6974 */  lw         $t4, 0x6974($t4)
/* 2A070 8004EC70 3C048024 */  lui        $a0, %hi(D_80240CD8)
/* 2A074 8004EC74 8C840CD8 */  lw         $a0, %lo(D_80240CD8)($a0)
/* 2A078 8004EC78 15800005 */  bnez       $t4, .L8004EC90
/* 2A07C 8004EC7C 00000000 */   nop
/* 2A080 8004EC80 0C030516 */  jal        func_800C1458
/* 2A084 8004EC84 00000000 */   nop
/* 2A088 8004EC88 10000004 */  b          .L8004EC9C
/* 2A08C 8004EC8C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8004EC90:
/* 2A090 8004EC90 0C030A76 */  jal        func_800C29D8
/* 2A094 8004EC94 00000000 */   nop
/* 2A098 8004EC98 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004EC9C:
/* 2A09C 8004EC9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2A0A0 8004ECA0 03E00008 */  jr         $ra
/* 2A0A4 8004ECA4 00000000 */   nop

glabel func_8004ECA8
/* 2A0A8 8004ECA8 03E00008 */  jr         $ra
/* 2A0AC 8004ECAC 00000000 */   nop

glabel func_8004ECB0
/* 2A0B0 8004ECB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2A0B4 8004ECB4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2A0B8 8004ECB8 0C015797 */  jal        func_80055E5C
/* 2A0BC 8004ECBC 24041000 */   addiu     $a0, $zero, 0x1000
/* 2A0C0 8004ECC0 10400005 */  beqz       $v0, .L8004ECD8
/* 2A0C4 8004ECC4 3C0E800F */   lui       $t6, %hi(D_800F0728)
/* 2A0C8 8004ECC8 8DCE0728 */  lw         $t6, %lo(D_800F0728)($t6)
/* 2A0CC 8004ECCC 3C01800F */  lui        $at, %hi(D_800F0728)
/* 2A0D0 8004ECD0 25CF0001 */  addiu      $t7, $t6, 1
/* 2A0D4 8004ECD4 AC2F0728 */  sw         $t7, %lo(D_800F0728)($at)
.L8004ECD8:
/* 2A0D8 8004ECD8 0C015797 */  jal        func_80055E5C
/* 2A0DC 8004ECDC 24044000 */   addiu     $a0, $zero, 0x4000
/* 2A0E0 8004ECE0 1040000A */  beqz       $v0, .L8004ED0C
/* 2A0E4 8004ECE4 3C02800F */   lui       $v0, %hi(D_800F0730)
/* 2A0E8 8004ECE8 8C420730 */  lw         $v0, %lo(D_800F0730)($v0)
/* 2A0EC 8004ECEC 3C01800F */  lui        $at, %hi(D_800F0730)
/* 2A0F0 8004ECF0 24420001 */  addiu      $v0, $v0, 1
/* 2A0F4 8004ECF4 AC220730 */  sw         $v0, %lo(D_800F0730)($at)
/* 2A0F8 8004ECF8 28410168 */  slti       $at, $v0, 0x168
/* 2A0FC 8004ECFC 14200003 */  bnez       $at, .L8004ED0C
/* 2A100 8004ED00 2442FE98 */   addiu     $v0, $v0, -0x168
/* 2A104 8004ED04 3C01800F */  lui        $at, %hi(D_800F0730)
/* 2A108 8004ED08 AC220730 */  sw         $v0, %lo(D_800F0730)($at)
.L8004ED0C:
/* 2A10C 8004ED0C 0C015797 */  jal        func_80055E5C
/* 2A110 8004ED10 34048000 */   ori       $a0, $zero, 0x8000
/* 2A114 8004ED14 1040000A */  beqz       $v0, .L8004ED40
/* 2A118 8004ED18 3C18800F */   lui       $t8, 0x800f
/* 2A11C 8004ED1C 3C02800F */  lui        $v0, %hi(D_800F0730)
/* 2A120 8004ED20 8C420730 */  lw         $v0, %lo(D_800F0730)($v0)
/* 2A124 8004ED24 3C01800F */  lui        $at, %hi(D_800F0730)
/* 2A128 8004ED28 2442FFFF */  addiu      $v0, $v0, -1
/* 2A12C 8004ED2C 04410004 */  bgez       $v0, .L8004ED40
/* 2A130 8004ED30 AC220730 */   sw        $v0, %lo(D_800F0730)($at)
/* 2A134 8004ED34 24420168 */  addiu      $v0, $v0, 0x168
/* 2A138 8004ED38 3C01800F */  lui        $at, %hi(D_800F0730)
/* 2A13C 8004ED3C AC220730 */  sw         $v0, %lo(D_800F0730)($at)
.L8004ED40:
/* 2A140 8004ED40 8F180728 */  lw         $t8, 0x728($t8)
/* 2A144 8004ED44 3C02800F */  lui        $v0, %hi(D_800F0730)
/* 2A148 8004ED48 8C420730 */  lw         $v0, %lo(D_800F0730)($v0)
/* 2A14C 8004ED4C 13000070 */  beqz       $t8, .L8004EF10
/* 2A150 8004ED50 24010001 */   addiu     $at, $zero, 1
/* 2A154 8004ED54 1301000C */  beq        $t8, $at, .L8004ED88
/* 2A158 8004ED58 3C19800F */   lui       $t9, 0x800f
/* 2A15C 8004ED5C 24010002 */  addiu      $at, $zero, 2
/* 2A160 8004ED60 1301001E */  beq        $t8, $at, .L8004EDDC
/* 2A164 8004ED64 00024040 */   sll       $t0, $v0, 1
/* 2A168 8004ED68 3C01800F */  lui        $at, %hi(D_800F0730)
/* 2A16C 8004ED6C AC220730 */  sw         $v0, %lo(D_800F0730)($at)
/* 2A170 8004ED70 24010003 */  addiu      $at, $zero, 3
/* 2A174 8004ED74 1301004B */  beq        $t8, $at, .L8004EEA4
/* 2A178 8004ED78 3C0B800F */   lui       $t3, 0x800f
/* 2A17C 8004ED7C 44806000 */  mtc1       $zero, $f12
/* 2A180 8004ED80 1000005C */  b          .L8004EEF4
/* 2A184 8004ED84 44066000 */   mfc1      $a2, $f12
.L8004ED88:
/* 2A188 8004ED88 8F39072C */  lw         $t9, 0x72c($t9)
/* 2A18C 8004ED8C 3C01800F */  lui        $at, %hi(D_800F0730)
/* 2A190 8004ED90 AC220730 */  sw         $v0, %lo(D_800F0730)($at)
/* 2A194 8004ED94 44992000 */  mtc1       $t9, $f4
/* 2A198 8004ED98 3C028017 */  lui        $v0, %hi(D_80176B74)
/* 2A19C 8004ED9C 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 2A1A0 8004EDA0 468021A0 */  cvt.s.w    $f6, $f4
/* 2A1A4 8004EDA4 3C013F80 */  lui        $at, 0x3f80
/* 2A1A8 8004EDA8 44815000 */  mtc1       $at, $f10
/* 2A1AC 8004EDAC C44E0008 */  lwc1       $f14, 8($v0)
/* 2A1B0 8004EDB0 C442000C */  lwc1       $f2, 0xc($v0)
/* 2A1B4 8004EDB4 C44C0004 */  lwc1       $f12, 4($v0)
/* 2A1B8 8004EDB8 46067200 */  add.s      $f8, $f14, $f6
/* 2A1BC 8004EDBC 44061000 */  mfc1       $a2, $f2
/* 2A1C0 8004EDC0 44076000 */  mfc1       $a3, $f12
/* 2A1C4 8004EDC4 460A1480 */  add.s      $f18, $f2, $f10
/* 2A1C8 8004EDC8 E7A80010 */  swc1       $f8, 0x10($sp)
/* 2A1CC 8004EDCC 0C01ED20 */  jal        func_8007B480
/* 2A1D0 8004EDD0 E7B20014 */   swc1      $f18, 0x14($sp)
/* 2A1D4 8004EDD4 1000004E */  b          .L8004EF10
/* 2A1D8 8004EDD8 00000000 */   nop
.L8004EDDC:
/* 2A1DC 8004EDDC 44882000 */  mtc1       $t0, $f4
/* 2A1E0 8004EDE0 3C018011 */  lui        $at, %hi(D_8010C8B0)
/* 2A1E4 8004EDE4 D428C8B0 */  ldc1       $f8, %lo(D_8010C8B0)($at)
/* 2A1E8 8004EDE8 468021A1 */  cvt.d.w    $f6, $f4
/* 2A1EC 8004EDEC 3C018011 */  lui        $at, %hi(D_8010C8B8)
/* 2A1F0 8004EDF0 D432C8B8 */  ldc1       $f18, %lo(D_8010C8B8)($at)
/* 2A1F4 8004EDF4 3C01800F */  lui        $at, %hi(D_800F0730)
/* 2A1F8 8004EDF8 AC220730 */  sw         $v0, %lo(D_800F0730)($at)
/* 2A1FC 8004EDFC 46283282 */  mul.d      $f10, $f6, $f8
/* 2A200 8004EE00 46325103 */  div.d      $f4, $f10, $f18
/* 2A204 8004EE04 0C036B60 */  jal        func_800DAD80
/* 2A208 8004EE08 46202320 */   cvt.s.d   $f12, $f4
/* 2A20C 8004EE0C 3C02800F */  lui        $v0, %hi(D_800F0730)
/* 2A210 8004EE10 8C420730 */  lw         $v0, %lo(D_800F0730)($v0)
/* 2A214 8004EE14 3C018011 */  lui        $at, %hi(D_8010C8C0)
/* 2A218 8004EE18 D42AC8C0 */  ldc1       $f10, %lo(D_8010C8C0)($at)
/* 2A21C 8004EE1C 00024840 */  sll        $t1, $v0, 1
/* 2A220 8004EE20 44893000 */  mtc1       $t1, $f6
/* 2A224 8004EE24 3C018011 */  lui        $at, %hi(D_8010C8C8)
/* 2A228 8004EE28 D424C8C8 */  ldc1       $f4, %lo(D_8010C8C8)($at)
/* 2A22C 8004EE2C 46803221 */  cvt.d.w    $f8, $f6
/* 2A230 8004EE30 E7A00024 */  swc1       $f0, 0x24($sp)
/* 2A234 8004EE34 462A4482 */  mul.d      $f18, $f8, $f10
/* 2A238 8004EE38 46249183 */  div.d      $f6, $f18, $f4
/* 2A23C 8004EE3C 0C036C30 */  jal        func_800DB0C0
/* 2A240 8004EE40 46203320 */   cvt.s.d   $f12, $f6
/* 2A244 8004EE44 3C0A800F */  lui        $t2, %hi(D_800F072C)
/* 2A248 8004EE48 8D4A072C */  lw         $t2, %lo(D_800F072C)($t2)
/* 2A24C 8004EE4C C7AA0024 */  lwc1       $f10, 0x24($sp)
/* 2A250 8004EE50 3C028017 */  lui        $v0, %hi(D_80176B74)
/* 2A254 8004EE54 448A4000 */  mtc1       $t2, $f8
/* 2A258 8004EE58 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 2A25C 8004EE5C 3C013F80 */  lui        $at, 0x3f80
/* 2A260 8004EE60 46804420 */  cvt.s.w    $f16, $f8
/* 2A264 8004EE64 C44C0004 */  lwc1       $f12, 4($v0)
/* 2A268 8004EE68 44813000 */  mtc1       $at, $f6
/* 2A26C 8004EE6C C44E0008 */  lwc1       $f14, 8($v0)
/* 2A270 8004EE70 C442000C */  lwc1       $f2, 0xc($v0)
/* 2A274 8004EE74 46105482 */  mul.s      $f18, $f10, $f16
/* 2A278 8004EE78 46067200 */  add.s      $f8, $f14, $f6
/* 2A27C 8004EE7C 44061000 */  mfc1       $a2, $f2
/* 2A280 8004EE80 46100282 */  mul.s      $f10, $f0, $f16
/* 2A284 8004EE84 E7A80010 */  swc1       $f8, 0x10($sp)
/* 2A288 8004EE88 460C9100 */  add.s      $f4, $f18, $f12
/* 2A28C 8004EE8C 460A1481 */  sub.s      $f18, $f2, $f10
/* 2A290 8004EE90 44072000 */  mfc1       $a3, $f4
/* 2A294 8004EE94 0C01ED20 */  jal        func_8007B480
/* 2A298 8004EE98 E7B20014 */   swc1      $f18, 0x14($sp)
/* 2A29C 8004EE9C 1000001C */  b          .L8004EF10
/* 2A2A0 8004EEA0 00000000 */   nop
.L8004EEA4:
/* 2A2A4 8004EEA4 8D6B072C */  lw         $t3, 0x72c($t3)
/* 2A2A8 8004EEA8 3C028017 */  lui        $v0, %hi(D_80176B74)
/* 2A2AC 8004EEAC 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 2A2B0 8004EEB0 448B4000 */  mtc1       $t3, $f8
/* 2A2B4 8004EEB4 3C013F80 */  lui        $at, 0x3f80
/* 2A2B8 8004EEB8 44812000 */  mtc1       $at, $f4
/* 2A2BC 8004EEBC 468042A0 */  cvt.s.w    $f10, $f8
/* 2A2C0 8004EEC0 C44E0008 */  lwc1       $f14, 8($v0)
/* 2A2C4 8004EEC4 C442000C */  lwc1       $f2, 0xc($v0)
/* 2A2C8 8004EEC8 C44C0004 */  lwc1       $f12, 4($v0)
/* 2A2CC 8004EECC 46047180 */  add.s      $f6, $f14, $f4
/* 2A2D0 8004EED0 44061000 */  mfc1       $a2, $f2
/* 2A2D4 8004EED4 44076000 */  mfc1       $a3, $f12
/* 2A2D8 8004EED8 460A1480 */  add.s      $f18, $f2, $f10
/* 2A2DC 8004EEDC E7A60010 */  swc1       $f6, 0x10($sp)
/* 2A2E0 8004EEE0 0C01ED20 */  jal        func_8007B480
/* 2A2E4 8004EEE4 E7B20014 */   swc1      $f18, 0x14($sp)
/* 2A2E8 8004EEE8 10000009 */  b          .L8004EF10
/* 2A2EC 8004EEEC 00000000 */   nop
/* 2A2F0 8004EEF0 44066000 */  mfc1       $a2, $f12
.L8004EEF4:
/* 2A2F4 8004EEF4 44076000 */  mfc1       $a3, $f12
/* 2A2F8 8004EEF8 46006386 */  mov.s      $f14, $f12
/* 2A2FC 8004EEFC E7AC0010 */  swc1       $f12, 0x10($sp)
/* 2A300 8004EF00 0C01ED0D */  jal        func_8007B434
/* 2A304 8004EF04 E7AC0014 */   swc1      $f12, 0x14($sp)
/* 2A308 8004EF08 3C01800F */  lui        $at, %hi(D_800F0728)
/* 2A30C 8004EF0C AC200728 */  sw         $zero, %lo(D_800F0728)($at)
.L8004EF10:
/* 2A310 8004EF10 0C015797 */  jal        func_80055E5C
/* 2A314 8004EF14 24042000 */   addiu     $a0, $zero, 0x2000
/* 2A318 8004EF18 10400006 */  beqz       $v0, .L8004EF34
/* 2A31C 8004EF1C 3C0E800F */   lui       $t6, 0x800f
/* 2A320 8004EF20 3C0C800F */  lui        $t4, %hi(D_800F072C)
/* 2A324 8004EF24 8D8C072C */  lw         $t4, %lo(D_800F072C)($t4)
/* 2A328 8004EF28 3C01800F */  lui        $at, %hi(D_800F072C)
/* 2A32C 8004EF2C 258D0064 */  addiu      $t5, $t4, 0x64
/* 2A330 8004EF30 AC2D072C */  sw         $t5, %lo(D_800F072C)($at)
.L8004EF34:
/* 2A334 8004EF34 8DCE072C */  lw         $t6, 0x72c($t6)
/* 2A338 8004EF38 240F0064 */  addiu      $t7, $zero, 0x64
/* 2A33C 8004EF3C 29C14E21 */  slti       $at, $t6, 0x4e21
/* 2A340 8004EF40 14200002 */  bnez       $at, .L8004EF4C
/* 2A344 8004EF44 3C01800F */   lui       $at, %hi(D_800F072C)
/* 2A348 8004EF48 AC2F072C */  sw         $t7, %lo(D_800F072C)($at)
.L8004EF4C:
/* 2A34C 8004EF4C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2A350 8004EF50 27BD0030 */  addiu      $sp, $sp, 0x30
/* 2A354 8004EF54 03E00008 */  jr         $ra
/* 2A358 8004EF58 00000000 */   nop

glabel func_8004EF5C
/* 2A35C 8004EF5C 27BDFDD0 */  addiu      $sp, $sp, -0x230
/* 2A360 8004EF60 3C0F800F */  lui        $t7, %hi(D_800F0734)
/* 2A364 8004EF64 25EF0734 */  addiu      $t7, $t7, %lo(D_800F0734)
/* 2A368 8004EF68 AFBF007C */  sw         $ra, 0x7c($sp)
/* 2A36C 8004EF6C AFB60078 */  sw         $s6, 0x78($sp)
/* 2A370 8004EF70 AFB50074 */  sw         $s5, 0x74($sp)
/* 2A374 8004EF74 AFB40070 */  sw         $s4, 0x70($sp)
/* 2A378 8004EF78 AFB3006C */  sw         $s3, 0x6c($sp)
/* 2A37C 8004EF7C AFB20068 */  sw         $s2, 0x68($sp)
/* 2A380 8004EF80 AFB10064 */  sw         $s1, 0x64($sp)
/* 2A384 8004EF84 AFB00060 */  sw         $s0, 0x60($sp)
/* 2A388 8004EF88 F7B80058 */  sdc1       $f24, 0x58($sp)
/* 2A38C 8004EF8C F7B60050 */  sdc1       $f22, 0x50($sp)
/* 2A390 8004EF90 F7B40048 */  sdc1       $f20, 0x48($sp)
/* 2A394 8004EF94 25E8018C */  addiu      $t0, $t7, 0x18c
/* 2A398 8004EF98 27AE00A0 */  addiu      $t6, $sp, 0xa0
.L8004EF9C:
/* 2A39C 8004EF9C 8DE10000 */  lw         $at, ($t7)
/* 2A3A0 8004EFA0 25EF000C */  addiu      $t7, $t7, 0xc
/* 2A3A4 8004EFA4 25CE000C */  addiu      $t6, $t6, 0xc
/* 2A3A8 8004EFA8 ADC1FFF4 */  sw         $at, -0xc($t6)
/* 2A3AC 8004EFAC 8DE1FFF8 */  lw         $at, -8($t7)
/* 2A3B0 8004EFB0 ADC1FFF8 */  sw         $at, -8($t6)
/* 2A3B4 8004EFB4 8DE1FFFC */  lw         $at, -4($t7)
/* 2A3B8 8004EFB8 15E8FFF8 */  bne        $t7, $t0, .L8004EF9C
/* 2A3BC 8004EFBC ADC1FFFC */   sw        $at, -4($t6)
/* 2A3C0 8004EFC0 8DE10000 */  lw         $at, ($t7)
/* 2A3C4 8004EFC4 24044000 */  addiu      $a0, $zero, 0x4000
/* 2A3C8 8004EFC8 0C015797 */  jal        func_80055E5C
/* 2A3CC 8004EFCC ADC10000 */   sw        $at, ($t6)
/* 2A3D0 8004EFD0 10400009 */  beqz       $v0, .L8004EFF8
/* 2A3D4 8004EFD4 34048000 */   ori       $a0, $zero, 0x8000
/* 2A3D8 8004EFD8 3C12800F */  lui        $s2, %hi(D_800F08C4)
/* 2A3DC 8004EFDC 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A3E0 8004EFE0 3C138017 */  lui        $s3, %hi(D_80176810)
/* 2A3E4 8004EFE4 26736810 */  addiu      $s3, $s3, %lo(D_80176810)
/* 2A3E8 8004EFE8 02721021 */  addu       $v0, $s3, $s2
/* 2A3EC 8004EFEC 90490000 */  lbu        $t1, ($v0)
/* 2A3F0 8004EFF0 252A0001 */  addiu      $t2, $t1, 1
/* 2A3F4 8004EFF4 A04A0000 */  sb         $t2, ($v0)
.L8004EFF8:
/* 2A3F8 8004EFF8 3C138017 */  lui        $s3, %hi(D_80176810)
/* 2A3FC 8004EFFC 0C015797 */  jal        func_80055E5C
/* 2A400 8004F000 26736810 */   addiu     $s3, $s3, %lo(D_80176810)
/* 2A404 8004F004 10400006 */  beqz       $v0, .L8004F020
/* 2A408 8004F008 3C12800F */   lui       $s2, %hi(D_800F08C4)
/* 2A40C 8004F00C 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A410 8004F010 02721021 */  addu       $v0, $s3, $s2
/* 2A414 8004F014 904B0000 */  lbu        $t3, ($v0)
/* 2A418 8004F018 256CFFFF */  addiu      $t4, $t3, -1
/* 2A41C 8004F01C A04C0000 */  sb         $t4, ($v0)
.L8004F020:
/* 2A420 8004F020 0C015797 */  jal        func_80055E5C
/* 2A424 8004F024 24040002 */   addiu     $a0, $zero, 2
/* 2A428 8004F028 10400009 */  beqz       $v0, .L8004F050
/* 2A42C 8004F02C 24040004 */   addiu     $a0, $zero, 4
/* 2A430 8004F030 3C12800F */  lui        $s2, %hi(D_800F08C4)
/* 2A434 8004F034 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A438 8004F038 3C118017 */  lui        $s1, %hi(D_80176814)
/* 2A43C 8004F03C 26316814 */  addiu      $s1, $s1, %lo(D_80176814)
/* 2A440 8004F040 02321021 */  addu       $v0, $s1, $s2
/* 2A444 8004F044 904D0000 */  lbu        $t5, ($v0)
/* 2A448 8004F048 25B90001 */  addiu      $t9, $t5, 1
/* 2A44C 8004F04C A0590000 */  sb         $t9, ($v0)
.L8004F050:
/* 2A450 8004F050 3C118017 */  lui        $s1, %hi(D_80176814)
/* 2A454 8004F054 0C015797 */  jal        func_80055E5C
/* 2A458 8004F058 26316814 */   addiu     $s1, $s1, %lo(D_80176814)
/* 2A45C 8004F05C 10400006 */  beqz       $v0, .L8004F078
/* 2A460 8004F060 3C12800F */   lui       $s2, %hi(D_800F08C4)
/* 2A464 8004F064 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A468 8004F068 02321021 */  addu       $v0, $s1, $s2
/* 2A46C 8004F06C 90580000 */  lbu        $t8, ($v0)
/* 2A470 8004F070 2708FFFF */  addiu      $t0, $t8, -1
/* 2A474 8004F074 A0480000 */  sb         $t0, ($v0)
.L8004F078:
/* 2A478 8004F078 0C015797 */  jal        func_80055E5C
/* 2A47C 8004F07C 24040008 */   addiu     $a0, $zero, 8
/* 2A480 8004F080 10400009 */  beqz       $v0, .L8004F0A8
/* 2A484 8004F084 24040001 */   addiu     $a0, $zero, 1
/* 2A488 8004F088 3C12800F */  lui        $s2, %hi(D_800F08C4)
/* 2A48C 8004F08C 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A490 8004F090 3C108017 */  lui        $s0, %hi(D_80176818)
/* 2A494 8004F094 26106818 */  addiu      $s0, $s0, %lo(D_80176818)
/* 2A498 8004F098 02121021 */  addu       $v0, $s0, $s2
/* 2A49C 8004F09C 904F0000 */  lbu        $t7, ($v0)
/* 2A4A0 8004F0A0 25EE0001 */  addiu      $t6, $t7, 1
/* 2A4A4 8004F0A4 A04E0000 */  sb         $t6, ($v0)
.L8004F0A8:
/* 2A4A8 8004F0A8 3C108017 */  lui        $s0, %hi(D_80176818)
/* 2A4AC 8004F0AC 0C015797 */  jal        func_80055E5C
/* 2A4B0 8004F0B0 26106818 */   addiu     $s0, $s0, %lo(D_80176818)
/* 2A4B4 8004F0B4 10400006 */  beqz       $v0, .L8004F0D0
/* 2A4B8 8004F0B8 3C12800F */   lui       $s2, %hi(D_800F08C4)
/* 2A4BC 8004F0BC 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A4C0 8004F0C0 02121021 */  addu       $v0, $s0, $s2
/* 2A4C4 8004F0C4 90490000 */  lbu        $t1, ($v0)
/* 2A4C8 8004F0C8 252AFFFF */  addiu      $t2, $t1, -1
/* 2A4CC 8004F0CC A04A0000 */  sb         $t2, ($v0)
.L8004F0D0:
/* 2A4D0 8004F0D0 0C015797 */  jal        func_80055E5C
/* 2A4D4 8004F0D4 24040010 */   addiu     $a0, $zero, 0x10
/* 2A4D8 8004F0D8 24010001 */  addiu      $at, $zero, 1
/* 2A4DC 8004F0DC 14410006 */  bne        $v0, $at, .L8004F0F8
/* 2A4E0 8004F0E0 3C12800F */   lui       $s2, %hi(D_800F08C4)
/* 2A4E4 8004F0E4 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A4E8 8004F0E8 3C01800F */  lui        $at, %hi(D_800F08C4)
/* 2A4EC 8004F0EC 26520001 */  addiu      $s2, $s2, 1
/* 2A4F0 8004F0F0 324B0003 */  andi       $t3, $s2, 3
/* 2A4F4 8004F0F4 AC2B08C4 */  sw         $t3, %lo(D_800F08C4)($at)
.L8004F0F8:
/* 2A4F8 8004F0F8 0C015797 */  jal        func_80055E5C
/* 2A4FC 8004F0FC 24042000 */   addiu     $a0, $zero, 0x2000
/* 2A500 8004F100 10400015 */  beqz       $v0, .L8004F158
/* 2A504 8004F104 3C018017 */   lui       $at, %hi(D_80176814)
/* 2A508 8004F108 A0206814 */  sb         $zero, %lo(D_80176814)($at)
/* 2A50C 8004F10C 3C018017 */  lui        $at, %hi(D_80176810)
/* 2A510 8004F110 A0206810 */  sb         $zero, %lo(D_80176810)($at)
/* 2A514 8004F114 3C018017 */  lui        $at, %hi(D_80176815)
/* 2A518 8004F118 A0206815 */  sb         $zero, %lo(D_80176815)($at)
/* 2A51C 8004F11C 3C018017 */  lui        $at, %hi(D_80176811)
/* 2A520 8004F120 A0206811 */  sb         $zero, %lo(D_80176811)($at)
/* 2A524 8004F124 3C018017 */  lui        $at, %hi(D_80176816)
/* 2A528 8004F128 A0206816 */  sb         $zero, %lo(D_80176816)($at)
/* 2A52C 8004F12C 3C018017 */  lui        $at, %hi(D_80176812)
/* 2A530 8004F130 A0206812 */  sb         $zero, %lo(D_80176812)($at)
/* 2A534 8004F134 3C018017 */  lui        $at, %hi(D_80176817)
/* 2A538 8004F138 A0206817 */  sb         $zero, %lo(D_80176817)($at)
/* 2A53C 8004F13C 3C018017 */  lui        $at, %hi(D_80176813)
/* 2A540 8004F140 A0206813 */  sb         $zero, %lo(D_80176813)($at)
/* 2A544 8004F144 3C018017 */  lui        $at, %hi(D_80176818)
/* 2A548 8004F148 A0206818 */  sb         $zero, %lo(D_80176818)($at)
/* 2A54C 8004F14C A0206819 */  sb         $zero, 0x6819($at)
/* 2A550 8004F150 A020681A */  sb         $zero, 0x681a($at)
/* 2A554 8004F154 A020681B */  sb         $zero, 0x681b($at)
.L8004F158:
/* 2A558 8004F158 0C01842E */  jal        func_800610B8
/* 2A55C 8004F15C 00000000 */   nop
/* 2A560 8004F160 3C013F00 */  lui        $at, 0x3f00
/* 2A564 8004F164 3C148017 */  lui        $s4, 0x8017
/* 2A568 8004F168 3C158017 */  lui        $s5, %hi(D_80176814)
/* 2A56C 8004F16C 3C168017 */  lui        $s6, %hi(D_80176810)
/* 2A570 8004F170 4481C000 */  mtc1       $at, $f24
/* 2A574 8004F174 4480B000 */  mtc1       $zero, $f22
/* 2A578 8004F178 26D66810 */  addiu      $s6, $s6, %lo(D_80176810)
/* 2A57C 8004F17C 26B56814 */  addiu      $s5, $s5, %lo(D_80176814)
/* 2A580 8004F180 26946818 */  addiu      $s4, $s4, 0x6818
/* 2A584 8004F184 24120040 */  addiu      $s2, $zero, 0x40
.L8004F188:
/* 2A588 8004F188 926C0001 */  lbu        $t4, 1($s3)
/* 2A58C 8004F18C 922D0001 */  lbu        $t5, 1($s1)
/* 2A590 8004F190 92190001 */  lbu        $t9, 1($s0)
/* 2A594 8004F194 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2A598 8004F198 920C0003 */  lbu        $t4, 3($s0)
/* 2A59C 8004F19C 92680002 */  lbu        $t0, 2($s3)
/* 2A5A0 8004F1A0 922F0002 */  lbu        $t7, 2($s1)
/* 2A5A4 8004F1A4 920E0002 */  lbu        $t6, 2($s0)
/* 2A5A8 8004F1A8 926A0003 */  lbu        $t2, 3($s3)
/* 2A5AC 8004F1AC 922B0003 */  lbu        $t3, 3($s1)
/* 2A5B0 8004F1B0 AFAD0014 */  sw         $t5, 0x14($sp)
/* 2A5B4 8004F1B4 240D00FF */  addiu      $t5, $zero, 0xff
/* 2A5B8 8004F1B8 241800FF */  addiu      $t8, $zero, 0xff
/* 2A5BC 8004F1BC 240900FF */  addiu      $t1, $zero, 0xff
/* 2A5C0 8004F1C0 AFA9002C */  sw         $t1, 0x2c($sp)
/* 2A5C4 8004F1C4 AFB8001C */  sw         $t8, 0x1c($sp)
/* 2A5C8 8004F1C8 AFAD003C */  sw         $t5, 0x3c($sp)
/* 2A5CC 8004F1CC 92640000 */  lbu        $a0, ($s3)
/* 2A5D0 8004F1D0 92250000 */  lbu        $a1, ($s1)
/* 2A5D4 8004F1D4 92060000 */  lbu        $a2, ($s0)
/* 2A5D8 8004F1D8 240700FF */  addiu      $a3, $zero, 0xff
/* 2A5DC 8004F1DC AFB90018 */  sw         $t9, 0x18($sp)
/* 2A5E0 8004F1E0 AFAC0038 */  sw         $t4, 0x38($sp)
/* 2A5E4 8004F1E4 AFA80020 */  sw         $t0, 0x20($sp)
/* 2A5E8 8004F1E8 AFAF0024 */  sw         $t7, 0x24($sp)
/* 2A5EC 8004F1EC AFAE0028 */  sw         $t6, 0x28($sp)
/* 2A5F0 8004F1F0 AFAA0030 */  sw         $t2, 0x30($sp)
/* 2A5F4 8004F1F4 0C0184C2 */  jal        func_80061308
/* 2A5F8 8004F1F8 AFAB0034 */   sw        $t3, 0x34($sp)
/* 2A5FC 8004F1FC 44922000 */  mtc1       $s2, $f4
/* 2A600 8004F200 92D90000 */  lbu        $t9, ($s6)
/* 2A604 8004F204 3C014334 */  lui        $at, 0x4334
/* 2A608 8004F208 46802520 */  cvt.s.w    $f20, $f4
/* 2A60C 8004F20C 44993000 */  mtc1       $t9, $f6
/* 2A610 8004F210 44816000 */  mtc1       $at, $f12
/* 2A614 8004F214 4406B000 */  mfc1       $a2, $f22
/* 2A618 8004F218 4407C000 */  mfc1       $a3, $f24
/* 2A61C 8004F21C 46803220 */  cvt.s.w    $f8, $f6
/* 2A620 8004F220 07210005 */  bgez       $t9, .L8004F238
/* 2A624 8004F224 4600A386 */   mov.s     $f14, $f20
/* 2A628 8004F228 3C014F80 */  lui        $at, 0x4f80
/* 2A62C 8004F22C 44815000 */  mtc1       $at, $f10
/* 2A630 8004F230 00000000 */  nop
/* 2A634 8004F234 460A4200 */  add.s      $f8, $f8, $f10
.L8004F238:
/* 2A638 8004F238 24180003 */  addiu      $t8, $zero, 3
/* 2A63C 8004F23C AFB80014 */  sw         $t8, 0x14($sp)
/* 2A640 8004F240 E7A80010 */  swc1       $f8, 0x10($sp)
/* 2A644 8004F244 0C01FC36 */  jal        func_8007F0D8
/* 2A648 8004F248 AFA00018 */   sw        $zero, 0x18($sp)
/* 2A64C 8004F24C 92680001 */  lbu        $t0, 1($s3)
/* 2A650 8004F250 922F0001 */  lbu        $t7, 1($s1)
/* 2A654 8004F254 920E0001 */  lbu        $t6, 1($s0)
/* 2A658 8004F258 AFA80010 */  sw         $t0, 0x10($sp)
/* 2A65C 8004F25C 92080003 */  lbu        $t0, 3($s0)
/* 2A660 8004F260 926A0002 */  lbu        $t2, 2($s3)
/* 2A664 8004F264 922B0002 */  lbu        $t3, 2($s1)
/* 2A668 8004F268 920C0002 */  lbu        $t4, 2($s0)
/* 2A66C 8004F26C 92790003 */  lbu        $t9, 3($s3)
/* 2A670 8004F270 92380003 */  lbu        $t8, 3($s1)
/* 2A674 8004F274 AFAF0014 */  sw         $t7, 0x14($sp)
/* 2A678 8004F278 240F00FF */  addiu      $t7, $zero, 0xff
/* 2A67C 8004F27C 240900FF */  addiu      $t1, $zero, 0xff
/* 2A680 8004F280 240D00FF */  addiu      $t5, $zero, 0xff
/* 2A684 8004F284 AFAD002C */  sw         $t5, 0x2c($sp)
/* 2A688 8004F288 AFA9001C */  sw         $t1, 0x1c($sp)
/* 2A68C 8004F28C AFAF003C */  sw         $t7, 0x3c($sp)
/* 2A690 8004F290 92640000 */  lbu        $a0, ($s3)
/* 2A694 8004F294 92250000 */  lbu        $a1, ($s1)
/* 2A698 8004F298 92060000 */  lbu        $a2, ($s0)
/* 2A69C 8004F29C 240700FF */  addiu      $a3, $zero, 0xff
/* 2A6A0 8004F2A0 AFAE0018 */  sw         $t6, 0x18($sp)
/* 2A6A4 8004F2A4 AFA80038 */  sw         $t0, 0x38($sp)
/* 2A6A8 8004F2A8 AFAA0020 */  sw         $t2, 0x20($sp)
/* 2A6AC 8004F2AC AFAB0024 */  sw         $t3, 0x24($sp)
/* 2A6B0 8004F2B0 AFAC0028 */  sw         $t4, 0x28($sp)
/* 2A6B4 8004F2B4 AFB90030 */  sw         $t9, 0x30($sp)
/* 2A6B8 8004F2B8 0C0184C2 */  jal        func_80061308
/* 2A6BC 8004F2BC AFB80034 */   sw        $t8, 0x34($sp)
/* 2A6C0 8004F2C0 92AE0000 */  lbu        $t6, ($s5)
/* 2A6C4 8004F2C4 3C014352 */  lui        $at, 0x4352
/* 2A6C8 8004F2C8 44816000 */  mtc1       $at, $f12
/* 2A6CC 8004F2CC 448E8000 */  mtc1       $t6, $f16
/* 2A6D0 8004F2D0 4406B000 */  mfc1       $a2, $f22
/* 2A6D4 8004F2D4 4407C000 */  mfc1       $a3, $f24
/* 2A6D8 8004F2D8 4600A386 */  mov.s      $f14, $f20
/* 2A6DC 8004F2DC 05C10005 */  bgez       $t6, .L8004F2F4
/* 2A6E0 8004F2E0 468084A0 */   cvt.s.w   $f18, $f16
/* 2A6E4 8004F2E4 3C014F80 */  lui        $at, 0x4f80
/* 2A6E8 8004F2E8 44812000 */  mtc1       $at, $f4
/* 2A6EC 8004F2EC 00000000 */  nop
/* 2A6F0 8004F2F0 46049480 */  add.s      $f18, $f18, $f4
.L8004F2F4:
/* 2A6F4 8004F2F4 24090003 */  addiu      $t1, $zero, 3
/* 2A6F8 8004F2F8 AFA90014 */  sw         $t1, 0x14($sp)
/* 2A6FC 8004F2FC E7B20010 */  swc1       $f18, 0x10($sp)
/* 2A700 8004F300 0C01FC36 */  jal        func_8007F0D8
/* 2A704 8004F304 AFA00018 */   sw        $zero, 0x18($sp)
/* 2A708 8004F308 926A0001 */  lbu        $t2, 1($s3)
/* 2A70C 8004F30C 922B0001 */  lbu        $t3, 1($s1)
/* 2A710 8004F310 920C0001 */  lbu        $t4, 1($s0)
/* 2A714 8004F314 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2A718 8004F318 920A0003 */  lbu        $t2, 3($s0)
/* 2A71C 8004F31C 92790002 */  lbu        $t9, 2($s3)
/* 2A720 8004F320 92380002 */  lbu        $t8, 2($s1)
/* 2A724 8004F324 92080002 */  lbu        $t0, 2($s0)
/* 2A728 8004F328 926E0003 */  lbu        $t6, 3($s3)
/* 2A72C 8004F32C 92290003 */  lbu        $t1, 3($s1)
/* 2A730 8004F330 AFAB0014 */  sw         $t3, 0x14($sp)
/* 2A734 8004F334 240B00FF */  addiu      $t3, $zero, 0xff
/* 2A738 8004F338 240D00FF */  addiu      $t5, $zero, 0xff
/* 2A73C 8004F33C 240F00FF */  addiu      $t7, $zero, 0xff
/* 2A740 8004F340 AFAF002C */  sw         $t7, 0x2c($sp)
/* 2A744 8004F344 AFAD001C */  sw         $t5, 0x1c($sp)
/* 2A748 8004F348 AFAB003C */  sw         $t3, 0x3c($sp)
/* 2A74C 8004F34C 92640000 */  lbu        $a0, ($s3)
/* 2A750 8004F350 92250000 */  lbu        $a1, ($s1)
/* 2A754 8004F354 92060000 */  lbu        $a2, ($s0)
/* 2A758 8004F358 240700FF */  addiu      $a3, $zero, 0xff
/* 2A75C 8004F35C AFAC0018 */  sw         $t4, 0x18($sp)
/* 2A760 8004F360 AFAA0038 */  sw         $t2, 0x38($sp)
/* 2A764 8004F364 AFB90020 */  sw         $t9, 0x20($sp)
/* 2A768 8004F368 AFB80024 */  sw         $t8, 0x24($sp)
/* 2A76C 8004F36C AFA80028 */  sw         $t0, 0x28($sp)
/* 2A770 8004F370 AFAE0030 */  sw         $t6, 0x30($sp)
/* 2A774 8004F374 0C0184C2 */  jal        func_80061308
/* 2A778 8004F378 AFA90034 */   sw        $t1, 0x34($sp)
/* 2A77C 8004F37C 928C0000 */  lbu        $t4, ($s4)
/* 2A780 8004F380 3C014370 */  lui        $at, 0x4370
/* 2A784 8004F384 44816000 */  mtc1       $at, $f12
/* 2A788 8004F388 448C3000 */  mtc1       $t4, $f6
/* 2A78C 8004F38C 4406B000 */  mfc1       $a2, $f22
/* 2A790 8004F390 4407C000 */  mfc1       $a3, $f24
/* 2A794 8004F394 4600A386 */  mov.s      $f14, $f20
/* 2A798 8004F398 05810005 */  bgez       $t4, .L8004F3B0
/* 2A79C 8004F39C 468032A0 */   cvt.s.w   $f10, $f6
/* 2A7A0 8004F3A0 3C014F80 */  lui        $at, 0x4f80
/* 2A7A4 8004F3A4 44814000 */  mtc1       $at, $f8
/* 2A7A8 8004F3A8 00000000 */  nop
/* 2A7AC 8004F3AC 46085280 */  add.s      $f10, $f10, $f8
.L8004F3B0:
/* 2A7B0 8004F3B0 240D0003 */  addiu      $t5, $zero, 3
/* 2A7B4 8004F3B4 AFAD0014 */  sw         $t5, 0x14($sp)
/* 2A7B8 8004F3B8 E7AA0010 */  swc1       $f10, 0x10($sp)
/* 2A7BC 8004F3BC 0C01FAF9 */  jal        func_8007EBE4
/* 2A7C0 8004F3C0 AFA00018 */   sw        $zero, 0x18($sp)
/* 2A7C4 8004F3C4 26520020 */  addiu      $s2, $s2, 0x20
/* 2A7C8 8004F3C8 240100C0 */  addiu      $at, $zero, 0xc0
/* 2A7CC 8004F3CC 26940001 */  addiu      $s4, $s4, 1
/* 2A7D0 8004F3D0 26B50001 */  addiu      $s5, $s5, 1
/* 2A7D4 8004F3D4 1641FF6C */  bne        $s2, $at, .L8004F188
/* 2A7D8 8004F3D8 26D60001 */   addiu     $s6, $s6, 1
/* 2A7DC 8004F3DC 92790001 */  lbu        $t9, 1($s3)
/* 2A7E0 8004F3E0 92380001 */  lbu        $t8, 1($s1)
/* 2A7E4 8004F3E4 92080001 */  lbu        $t0, 1($s0)
/* 2A7E8 8004F3E8 AFB90010 */  sw         $t9, 0x10($sp)
/* 2A7EC 8004F3EC 92190003 */  lbu        $t9, 3($s0)
/* 2A7F0 8004F3F0 926E0002 */  lbu        $t6, 2($s3)
/* 2A7F4 8004F3F4 92290002 */  lbu        $t1, 2($s1)
/* 2A7F8 8004F3F8 920A0002 */  lbu        $t2, 2($s0)
/* 2A7FC 8004F3FC 926C0003 */  lbu        $t4, 3($s3)
/* 2A800 8004F400 922D0003 */  lbu        $t5, 3($s1)
/* 2A804 8004F404 AFB80014 */  sw         $t8, 0x14($sp)
/* 2A808 8004F408 241800FF */  addiu      $t8, $zero, 0xff
/* 2A80C 8004F40C 240F00FF */  addiu      $t7, $zero, 0xff
/* 2A810 8004F410 240B00FF */  addiu      $t3, $zero, 0xff
/* 2A814 8004F414 AFAB002C */  sw         $t3, 0x2c($sp)
/* 2A818 8004F418 AFAF001C */  sw         $t7, 0x1c($sp)
/* 2A81C 8004F41C AFB8003C */  sw         $t8, 0x3c($sp)
/* 2A820 8004F420 92640000 */  lbu        $a0, ($s3)
/* 2A824 8004F424 92250000 */  lbu        $a1, ($s1)
/* 2A828 8004F428 92060000 */  lbu        $a2, ($s0)
/* 2A82C 8004F42C 240700FF */  addiu      $a3, $zero, 0xff
/* 2A830 8004F430 AFA80018 */  sw         $t0, 0x18($sp)
/* 2A834 8004F434 AFB90038 */  sw         $t9, 0x38($sp)
/* 2A838 8004F438 AFAE0020 */  sw         $t6, 0x20($sp)
/* 2A83C 8004F43C AFA90024 */  sw         $t1, 0x24($sp)
/* 2A840 8004F440 AFAA0028 */  sw         $t2, 0x28($sp)
/* 2A844 8004F444 AFAC0030 */  sw         $t4, 0x30($sp)
/* 2A848 8004F448 0C0184C2 */  jal        func_80061308
/* 2A84C 8004F44C AFAD0034 */   sw        $t5, 0x34($sp)
/* 2A850 8004F450 3C12800F */  lui        $s2, %hi(D_800F08C4)
/* 2A854 8004F454 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A858 8004F458 24100064 */  addiu      $s0, $zero, 0x64
/* 2A85C 8004F45C 3C01430C */  lui        $at, 0x430c
/* 2A860 8004F460 02500019 */  multu      $s2, $s0
/* 2A864 8004F464 44816000 */  mtc1       $at, $f12
/* 2A868 8004F468 3C014200 */  lui        $at, 0x4200
/* 2A86C 8004F46C 27AF00A0 */  addiu      $t7, $sp, 0xa0
/* 2A870 8004F470 44817000 */  mtc1       $at, $f14
/* 2A874 8004F474 4406B000 */  mfc1       $a2, $f22
/* 2A878 8004F478 24090001 */  addiu      $t1, $zero, 1
/* 2A87C 8004F47C AFA90014 */  sw         $t1, 0x14($sp)
/* 2A880 8004F480 3C073F80 */  lui        $a3, 0x3f80
/* 2A884 8004F484 00004012 */  mflo       $t0
/* 2A888 8004F488 010F7021 */  addu       $t6, $t0, $t7
/* 2A88C 8004F48C 0C0200FC */  jal        func_800803F0
/* 2A890 8004F490 AFAE0010 */   sw        $t6, 0x10($sp)
/* 2A894 8004F494 3C12800F */  lui        $s2, %hi(D_800F08C4)
/* 2A898 8004F498 8E5208C4 */  lw         $s2, %lo(D_800F08C4)($s2)
/* 2A89C 8004F49C 3C0142F8 */  lui        $at, 0x42f8
/* 2A8A0 8004F4A0 27AB00A0 */  addiu      $t3, $sp, 0xa0
/* 2A8A4 8004F4A4 1240000D */  beqz       $s2, .L8004F4DC
/* 2A8A8 8004F4A8 00000000 */   nop
/* 2A8AC 8004F4AC 24010001 */  addiu      $at, $zero, 1
/* 2A8B0 8004F4B0 1241001A */  beq        $s2, $at, .L8004F51C
/* 2A8B4 8004F4B4 27B800A0 */   addiu     $t8, $sp, 0xa0
/* 2A8B8 8004F4B8 24010002 */  addiu      $at, $zero, 2
/* 2A8BC 8004F4BC 12410028 */  beq        $s2, $at, .L8004F560
/* 2A8C0 8004F4C0 27A900A0 */   addiu     $t1, $sp, 0xa0
/* 2A8C4 8004F4C4 24010003 */  addiu      $at, $zero, 3
/* 2A8C8 8004F4C8 12410036 */  beq        $s2, $at, .L8004F5A4
/* 2A8CC 8004F4CC 27AD00A0 */   addiu     $t5, $sp, 0xa0
/* 2A8D0 8004F4D0 3C01800F */  lui        $at, %hi(D_800F08C4)
/* 2A8D4 8004F4D4 10000042 */  b          .L8004F5E0
/* 2A8D8 8004F4D8 AC3208C4 */   sw        $s2, %lo(D_800F08C4)($at)
.L8004F4DC:
/* 2A8DC 8004F4DC 02500019 */  multu      $s2, $s0
/* 2A8E0 8004F4E0 44816000 */  mtc1       $at, $f12
/* 2A8E4 8004F4E4 3C014180 */  lui        $at, 0x4180
/* 2A8E8 8004F4E8 44817000 */  mtc1       $at, $f14
/* 2A8EC 8004F4EC 3C01800F */  lui        $at, %hi(D_800F08C4)
/* 2A8F0 8004F4F0 4406B000 */  mfc1       $a2, $f22
/* 2A8F4 8004F4F4 4407C000 */  mfc1       $a3, $f24
/* 2A8F8 8004F4F8 240D0001 */  addiu      $t5, $zero, 1
/* 2A8FC 8004F4FC AFAD0014 */  sw         $t5, 0x14($sp)
/* 2A900 8004F500 AC3208C4 */  sw         $s2, %lo(D_800F08C4)($at)
/* 2A904 8004F504 00005012 */  mflo       $t2
/* 2A908 8004F508 014B6021 */  addu       $t4, $t2, $t3
/* 2A90C 8004F50C 0C0200FC */  jal        func_800803F0
/* 2A910 8004F510 AFAC0010 */   sw        $t4, 0x10($sp)
/* 2A914 8004F514 10000032 */  b          .L8004F5E0
/* 2A918 8004F518 00000000 */   nop
.L8004F51C:
/* 2A91C 8004F51C 02500019 */  multu      $s2, $s0
/* 2A920 8004F520 3C0142F8 */  lui        $at, 0x42f8
/* 2A924 8004F524 44816000 */  mtc1       $at, $f12
/* 2A928 8004F528 3C014240 */  lui        $at, 0x4240
/* 2A92C 8004F52C 44817000 */  mtc1       $at, $f14
/* 2A930 8004F530 3C01800F */  lui        $at, 0x800f
/* 2A934 8004F534 4406B000 */  mfc1       $a2, $f22
/* 2A938 8004F538 4407C000 */  mfc1       $a3, $f24
/* 2A93C 8004F53C 240F0001 */  addiu      $t7, $zero, 1
/* 2A940 8004F540 AFAF0014 */  sw         $t7, 0x14($sp)
/* 2A944 8004F544 0000C812 */  mflo       $t9
/* 2A948 8004F548 03384021 */  addu       $t0, $t9, $t8
/* 2A94C 8004F54C AFA80010 */  sw         $t0, 0x10($sp)
/* 2A950 8004F550 0C0200FC */  jal        func_800803F0
/* 2A954 8004F554 AC3208C4 */   sw        $s2, 0x8c4($at)
/* 2A958 8004F558 10000021 */  b          .L8004F5E0
/* 2A95C 8004F55C 00000000 */   nop
.L8004F560:
/* 2A960 8004F560 02500019 */  multu      $s2, $s0
/* 2A964 8004F564 3C014394 */  lui        $at, 0x4394
/* 2A968 8004F568 44816000 */  mtc1       $at, $f12
/* 2A96C 8004F56C 3C014180 */  lui        $at, 0x4180
/* 2A970 8004F570 44817000 */  mtc1       $at, $f14
/* 2A974 8004F574 3C01800F */  lui        $at, 0x800f
/* 2A978 8004F578 4406B000 */  mfc1       $a2, $f22
/* 2A97C 8004F57C 4407C000 */  mfc1       $a3, $f24
/* 2A980 8004F580 240B0001 */  addiu      $t3, $zero, 1
/* 2A984 8004F584 AFAB0014 */  sw         $t3, 0x14($sp)
/* 2A988 8004F588 00007012 */  mflo       $t6
/* 2A98C 8004F58C 01C95021 */  addu       $t2, $t6, $t1
/* 2A990 8004F590 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2A994 8004F594 0C0200FC */  jal        func_800803F0
/* 2A998 8004F598 AC3208C4 */   sw        $s2, 0x8c4($at)
/* 2A99C 8004F59C 10000010 */  b          .L8004F5E0
/* 2A9A0 8004F5A0 00000000 */   nop
.L8004F5A4:
/* 2A9A4 8004F5A4 02500019 */  multu      $s2, $s0
/* 2A9A8 8004F5A8 3C014394 */  lui        $at, 0x4394
/* 2A9AC 8004F5AC 44816000 */  mtc1       $at, $f12
/* 2A9B0 8004F5B0 3C014240 */  lui        $at, 0x4240
/* 2A9B4 8004F5B4 44817000 */  mtc1       $at, $f14
/* 2A9B8 8004F5B8 3C01800F */  lui        $at, 0x800f
/* 2A9BC 8004F5BC 4406B000 */  mfc1       $a2, $f22
/* 2A9C0 8004F5C0 4407C000 */  mfc1       $a3, $f24
/* 2A9C4 8004F5C4 24180001 */  addiu      $t8, $zero, 1
/* 2A9C8 8004F5C8 AFB80014 */  sw         $t8, 0x14($sp)
/* 2A9CC 8004F5CC 00006012 */  mflo       $t4
/* 2A9D0 8004F5D0 018DC821 */  addu       $t9, $t4, $t5
/* 2A9D4 8004F5D4 AFB90010 */  sw         $t9, 0x10($sp)
/* 2A9D8 8004F5D8 0C0200FC */  jal        func_800803F0
/* 2A9DC 8004F5DC AC3208C4 */   sw        $s2, 0x8c4($at)
.L8004F5E0:
/* 2A9E0 8004F5E0 0C01842E */  jal        func_800610B8
/* 2A9E4 8004F5E4 00000000 */   nop
/* 2A9E8 8004F5E8 8FBF007C */  lw         $ra, 0x7c($sp)
/* 2A9EC 8004F5EC D7B40048 */  ldc1       $f20, 0x48($sp)
/* 2A9F0 8004F5F0 D7B60050 */  ldc1       $f22, 0x50($sp)
/* 2A9F4 8004F5F4 D7B80058 */  ldc1       $f24, 0x58($sp)
/* 2A9F8 8004F5F8 8FB00060 */  lw         $s0, 0x60($sp)
/* 2A9FC 8004F5FC 8FB10064 */  lw         $s1, 0x64($sp)
/* 2AA00 8004F600 8FB20068 */  lw         $s2, 0x68($sp)
/* 2AA04 8004F604 8FB3006C */  lw         $s3, 0x6c($sp)
/* 2AA08 8004F608 8FB40070 */  lw         $s4, 0x70($sp)
/* 2AA0C 8004F60C 8FB50074 */  lw         $s5, 0x74($sp)
/* 2AA10 8004F610 8FB60078 */  lw         $s6, 0x78($sp)
/* 2AA14 8004F614 03E00008 */  jr         $ra
/* 2AA18 8004F618 27BD0230 */   addiu     $sp, $sp, 0x230

glabel func_8004F61C
/* 2AA1C 8004F61C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2AA20 8004F620 AFBF005C */  sw         $ra, 0x5c($sp)
/* 2AA24 8004F624 AFB40058 */  sw         $s4, 0x58($sp)
/* 2AA28 8004F628 AFB30054 */  sw         $s3, 0x54($sp)
/* 2AA2C 8004F62C AFB20050 */  sw         $s2, 0x50($sp)
/* 2AA30 8004F630 AFB1004C */  sw         $s1, 0x4c($sp)
/* 2AA34 8004F634 AFB00048 */  sw         $s0, 0x48($sp)
/* 2AA38 8004F638 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 2AA3C 8004F63C F7B60038 */  sdc1       $f22, 0x38($sp)
/* 2AA40 8004F640 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 2AA44 8004F644 0C015797 */  jal        func_80055E5C
/* 2AA48 8004F648 34048000 */   ori       $a0, $zero, 0x8000
/* 2AA4C 8004F64C 24120001 */  addiu      $s2, $zero, 1
/* 2AA50 8004F650 14520041 */  bne        $v0, $s2, .L8004F758
/* 2AA54 8004F654 3C10800F */   lui       $s0, %hi(D_800F08D0)
/* 2AA58 8004F658 8E1008D0 */  lw         $s0, %lo(D_800F08D0)($s0)
/* 2AA5C 8004F65C 3C11800F */  lui        $s1, %hi(D_800F08C8)
/* 2AA60 8004F660 3C028017 */  lui        $v0, %hi(D_80176B74)
/* 2AA64 8004F664 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 2AA68 8004F668 263108C8 */  addiu      $s1, $s1, %lo(D_800F08C8)
/* 2AA6C 8004F66C 00107880 */  sll        $t7, $s0, 2
/* 2AA70 8004F670 022FC021 */  addu       $t8, $s1, $t7
/* 2AA74 8004F674 8F190000 */  lw         $t9, ($t8)
/* 2AA78 8004F678 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2AA7C 8004F67C C420070C */  lwc1       $f0, %lo(D_800F070C)($at)
/* 2AA80 8004F680 C4440004 */  lwc1       $f4, 4($v0)
/* 2AA84 8004F684 00107140 */  sll        $t6, $s0, 5
/* 2AA88 8004F688 01D07023 */  subu       $t6, $t6, $s0
/* 2AA8C 8004F68C 000E7080 */  sll        $t6, $t6, 2
/* 2AA90 8004F690 00194080 */  sll        $t0, $t9, 2
/* 2AA94 8004F694 46002180 */  add.s      $f6, $f4, $f0
/* 2AA98 8004F698 01D07021 */  addu       $t6, $t6, $s0
/* 2AA9C 8004F69C 01194021 */  addu       $t0, $t0, $t9
/* 2AAA0 8004F6A0 00084080 */  sll        $t0, $t0, 2
/* 2AAA4 8004F6A4 000E7100 */  sll        $t6, $t6, 4
/* 2AAA8 8004F6A8 3C0A8017 */  lui        $t2, %hi(D_80175870)
/* 2AAAC 8004F6AC 254A5870 */  addiu      $t2, $t2, %lo(D_80175870)
/* 2AAB0 8004F6B0 01C84821 */  addu       $t1, $t6, $t0
/* 2AAB4 8004F6B4 012A1821 */  addu       $v1, $t1, $t2
/* 2AAB8 8004F6B8 E4660000 */  swc1       $f6, ($v1)
/* 2AABC 8004F6BC 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2AAC0 8004F6C0 C4220710 */  lwc1       $f2, %lo(D_800F0710)($at)
/* 2AAC4 8004F6C4 C4480008 */  lwc1       $f8, 8($v0)
/* 2AAC8 8004F6C8 3C01800F */  lui        $at, 0x800f
/* 2AACC 8004F6CC 24140064 */  addiu      $s4, $zero, 0x64
/* 2AAD0 8004F6D0 46024280 */  add.s      $f10, $f8, $f2
/* 2AAD4 8004F6D4 02140019 */  multu      $s0, $s4
/* 2AAD8 8004F6D8 3C13800F */  lui        $s3, %hi(D_800F08D4)
/* 2AADC 8004F6DC 267308D4 */  addiu      $s3, $s3, %lo(D_800F08D4)
/* 2AAE0 8004F6E0 E46A0004 */  swc1       $f10, 4($v1)
/* 2AAE4 8004F6E4 C42C0714 */  lwc1       $f12, 0x714($at)
/* 2AAE8 8004F6E8 C450000C */  lwc1       $f16, 0xc($v0)
/* 2AAEC 8004F6EC 3C048011 */  lui        $a0, %hi(D_8010C640)
/* 2AAF0 8004F6F0 2484C640 */  addiu      $a0, $a0, %lo(D_8010C640)
/* 2AAF4 8004F6F4 460C8480 */  add.s      $f18, $f16, $f12
/* 2AAF8 8004F6F8 00005812 */  mflo       $t3
/* 2AAFC 8004F6FC 026B2821 */  addu       $a1, $s3, $t3
/* 2AB00 8004F700 E4720008 */  swc1       $f18, 8($v1)
/* 2AB04 8004F704 C44A0008 */  lwc1       $f10, 8($v0)
/* 2AB08 8004F708 C4440004 */  lwc1       $f4, 4($v0)
/* 2AB0C 8004F70C 46025400 */  add.s      $f16, $f10, $f2
/* 2AB10 8004F710 46002180 */  add.s      $f6, $f4, $f0
/* 2AB14 8004F714 460084A1 */  cvt.d.s    $f18, $f16
/* 2AB18 8004F718 46003221 */  cvt.d.s    $f8, $f6
/* 2AB1C 8004F71C F7B20010 */  sdc1       $f18, 0x10($sp)
/* 2AB20 8004F720 C444000C */  lwc1       $f4, 0xc($v0)
/* 2AB24 8004F724 44074000 */  mfc1       $a3, $f8
/* 2AB28 8004F728 44064800 */  mfc1       $a2, $f9
/* 2AB2C 8004F72C 460C2180 */  add.s      $f6, $f4, $f12
/* 2AB30 8004F730 46003221 */  cvt.d.s    $f8, $f6
/* 2AB34 8004F734 0C036EA5 */  jal        func_800DBA94
/* 2AB38 8004F738 F7A80018 */   sdc1      $f8, 0x18($sp)
/* 2AB3C 8004F73C 3C10800F */  lui        $s0, %hi(D_800F08D0)
/* 2AB40 8004F740 8E1008D0 */  lw         $s0, %lo(D_800F08D0)($s0)
/* 2AB44 8004F744 00106080 */  sll        $t4, $s0, 2
/* 2AB48 8004F748 022C1021 */  addu       $v0, $s1, $t4
/* 2AB4C 8004F74C 8C4D0000 */  lw         $t5, ($v0)
/* 2AB50 8004F750 25AF0001 */  addiu      $t7, $t5, 1
/* 2AB54 8004F754 AC4F0000 */  sw         $t7, ($v0)
.L8004F758:
/* 2AB58 8004F758 3C11800F */  lui        $s1, %hi(D_800F08C8)
/* 2AB5C 8004F75C 3C13800F */  lui        $s3, %hi(D_800F08D4)
/* 2AB60 8004F760 267308D4 */  addiu      $s3, $s3, %lo(D_800F08D4)
/* 2AB64 8004F764 263108C8 */  addiu      $s1, $s1, %lo(D_800F08C8)
/* 2AB68 8004F768 24140064 */  addiu      $s4, $zero, 0x64
/* 2AB6C 8004F76C 0C015797 */  jal        func_80055E5C
/* 2AB70 8004F770 24044000 */   addiu     $a0, $zero, 0x4000
/* 2AB74 8004F774 1452003C */  bne        $v0, $s2, .L8004F868
/* 2AB78 8004F778 3C10800F */   lui       $s0, %hi(D_800F08D0)
/* 2AB7C 8004F77C 8E1008D0 */  lw         $s0, %lo(D_800F08D0)($s0)
/* 2AB80 8004F780 3C028017 */  lui        $v0, %hi(D_80176B74)
/* 2AB84 8004F784 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 2AB88 8004F788 0010C880 */  sll        $t9, $s0, 2
/* 2AB8C 8004F78C 02397021 */  addu       $t6, $s1, $t9
/* 2AB90 8004F790 8DC80000 */  lw         $t0, ($t6)
/* 2AB94 8004F794 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2AB98 8004F798 C420070C */  lwc1       $f0, %lo(D_800F070C)($at)
/* 2AB9C 8004F79C C44A0004 */  lwc1       $f10, 4($v0)
/* 2ABA0 8004F7A0 0010C140 */  sll        $t8, $s0, 5
/* 2ABA4 8004F7A4 0310C023 */  subu       $t8, $t8, $s0
/* 2ABA8 8004F7A8 0018C080 */  sll        $t8, $t8, 2
/* 2ABAC 8004F7AC 00084880 */  sll        $t1, $t0, 2
/* 2ABB0 8004F7B0 46005400 */  add.s      $f16, $f10, $f0
/* 2ABB4 8004F7B4 0310C021 */  addu       $t8, $t8, $s0
/* 2ABB8 8004F7B8 01284821 */  addu       $t1, $t1, $t0
/* 2ABBC 8004F7BC 00094880 */  sll        $t1, $t1, 2
/* 2ABC0 8004F7C0 0018C100 */  sll        $t8, $t8, 4
/* 2ABC4 8004F7C4 3C0B8017 */  lui        $t3, %hi(D_80175870)
/* 2ABC8 8004F7C8 256B5870 */  addiu      $t3, $t3, %lo(D_80175870)
/* 2ABCC 8004F7CC 03095021 */  addu       $t2, $t8, $t1
/* 2ABD0 8004F7D0 014B1821 */  addu       $v1, $t2, $t3
/* 2ABD4 8004F7D4 E4700000 */  swc1       $f16, ($v1)
/* 2ABD8 8004F7D8 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2ABDC 8004F7DC C4220710 */  lwc1       $f2, %lo(D_800F0710)($at)
/* 2ABE0 8004F7E0 C452001C */  lwc1       $f18, 0x1c($v0)
/* 2ABE4 8004F7E4 3C01800F */  lui        $at, 0x800f
/* 2ABE8 8004F7E8 02140019 */  multu      $s0, $s4
/* 2ABEC 8004F7EC 46029100 */  add.s      $f4, $f18, $f2
/* 2ABF0 8004F7F0 3C048011 */  lui        $a0, %hi(D_8010C6C8)
/* 2ABF4 8004F7F4 2484C6C8 */  addiu      $a0, $a0, %lo(D_8010C6C8)
/* 2ABF8 8004F7F8 E4640004 */  swc1       $f4, 4($v1)
/* 2ABFC 8004F7FC C42C0714 */  lwc1       $f12, 0x714($at)
/* 2AC00 8004F800 C446000C */  lwc1       $f6, 0xc($v0)
/* 2AC04 8004F804 460C3200 */  add.s      $f8, $f6, $f12
/* 2AC08 8004F808 00006012 */  mflo       $t4
/* 2AC0C 8004F80C 026C2821 */  addu       $a1, $s3, $t4
/* 2AC10 8004F810 E4680008 */  swc1       $f8, 8($v1)
/* 2AC14 8004F814 C444001C */  lwc1       $f4, 0x1c($v0)
/* 2AC18 8004F818 C44A0004 */  lwc1       $f10, 4($v0)
/* 2AC1C 8004F81C 46022180 */  add.s      $f6, $f4, $f2
/* 2AC20 8004F820 46005400 */  add.s      $f16, $f10, $f0
/* 2AC24 8004F824 46003221 */  cvt.d.s    $f8, $f6
/* 2AC28 8004F828 460084A1 */  cvt.d.s    $f18, $f16
/* 2AC2C 8004F82C F7A80010 */  sdc1       $f8, 0x10($sp)
/* 2AC30 8004F830 C44A000C */  lwc1       $f10, 0xc($v0)
/* 2AC34 8004F834 44079000 */  mfc1       $a3, $f18
/* 2AC38 8004F838 44069800 */  mfc1       $a2, $f19
/* 2AC3C 8004F83C 460C5400 */  add.s      $f16, $f10, $f12
/* 2AC40 8004F840 460084A1 */  cvt.d.s    $f18, $f16
/* 2AC44 8004F844 0C036EA5 */  jal        func_800DBA94
/* 2AC48 8004F848 F7B20018 */   sdc1      $f18, 0x18($sp)
/* 2AC4C 8004F84C 3C10800F */  lui        $s0, %hi(D_800F08D0)
/* 2AC50 8004F850 8E1008D0 */  lw         $s0, %lo(D_800F08D0)($s0)
/* 2AC54 8004F854 00106880 */  sll        $t5, $s0, 2
/* 2AC58 8004F858 022D1021 */  addu       $v0, $s1, $t5
/* 2AC5C 8004F85C 8C4F0000 */  lw         $t7, ($v0)
/* 2AC60 8004F860 25F90001 */  addiu      $t9, $t7, 1
/* 2AC64 8004F864 AC590000 */  sw         $t9, ($v0)
.L8004F868:
/* 2AC68 8004F868 0C015797 */  jal        func_80055E5C
/* 2AC6C 8004F86C 24042000 */   addiu     $a0, $zero, 0x2000
/* 2AC70 8004F870 10400007 */  beqz       $v0, .L8004F890
/* 2AC74 8004F874 3C03800F */   lui       $v1, %hi(D_800F08D0)
/* 2AC78 8004F878 3C02800F */  lui        $v0, %hi(D_800F08C8)
/* 2AC7C 8004F87C 244208C8 */  addiu      $v0, $v0, %lo(D_800F08C8)
/* 2AC80 8004F880 246308D0 */  addiu      $v1, $v1, %lo(D_800F08D0)
.L8004F884:
/* 2AC84 8004F884 24420004 */  addiu      $v0, $v0, 4
/* 2AC88 8004F888 1443FFFE */  bne        $v0, $v1, .L8004F884
/* 2AC8C 8004F88C AC40FFFC */   sw        $zero, -4($v0)
.L8004F890:
/* 2AC90 8004F890 0C015797 */  jal        func_80055E5C
/* 2AC94 8004F894 24040010 */   addiu     $a0, $zero, 0x10
/* 2AC98 8004F898 1040000A */  beqz       $v0, .L8004F8C4
/* 2AC9C 8004F89C 00002025 */   or        $a0, $zero, $zero
/* 2ACA0 8004F8A0 3C10800F */  lui        $s0, %hi(D_800F08D0)
/* 2ACA4 8004F8A4 8E1008D0 */  lw         $s0, %lo(D_800F08D0)($s0)
/* 2ACA8 8004F8A8 3C01800F */  lui        $at, %hi(D_800F08D0)
/* 2ACAC 8004F8AC 26100001 */  addiu      $s0, $s0, 1
/* 2ACB0 8004F8B0 AC3008D0 */  sw         $s0, %lo(D_800F08D0)($at)
/* 2ACB4 8004F8B4 2A010002 */  slti       $at, $s0, 2
/* 2ACB8 8004F8B8 14200002 */  bnez       $at, .L8004F8C4
/* 2ACBC 8004F8BC 3C01800F */   lui       $at, %hi(D_800F08D0)
/* 2ACC0 8004F8C0 AC2008D0 */  sw         $zero, %lo(D_800F08D0)($at)
.L8004F8C4:
/* 2ACC4 8004F8C4 240500FF */  addiu      $a1, $zero, 0xff
/* 2ACC8 8004F8C8 00003025 */  or         $a2, $zero, $zero
/* 2ACCC 8004F8CC 0C01849C */  jal        func_80061270
/* 2ACD0 8004F8D0 240700FF */   addiu     $a3, $zero, 0xff
/* 2ACD4 8004F8D4 0C0184BC */  jal        func_800612F0
/* 2ACD8 8004F8D8 24040001 */   addiu     $a0, $zero, 1
/* 2ACDC 8004F8DC 3C10800F */  lui        $s0, %hi(D_800F08D0)
/* 2ACE0 8004F8E0 8E1008D0 */  lw         $s0, %lo(D_800F08D0)($s0)
/* 2ACE4 8004F8E4 3C013F80 */  lui        $at, 0x3f80
/* 2ACE8 8004F8E8 4481A000 */  mtc1       $at, $f20
/* 2ACEC 8004F8EC 260E0001 */  addiu      $t6, $s0, 1
/* 2ACF0 8004F8F0 448E2000 */  mtc1       $t6, $f4
/* 2ACF4 8004F8F4 4480B000 */  mtc1       $zero, $f22
/* 2ACF8 8004F8F8 3C014200 */  lui        $at, 0x4200
/* 2ACFC 8004F8FC 468021A0 */  cvt.s.w    $f6, $f4
/* 2AD00 8004F900 4481C000 */  mtc1       $at, $f24
/* 2AD04 8004F904 3C01437A */  lui        $at, 0x437a
/* 2AD08 8004F908 44816000 */  mtc1       $at, $f12
/* 2AD0C 8004F90C 24080001 */  addiu      $t0, $zero, 1
/* 2AD10 8004F910 4406B000 */  mfc1       $a2, $f22
/* 2AD14 8004F914 4407B000 */  mfc1       $a3, $f22
/* 2AD18 8004F918 AFA80020 */  sw         $t0, 0x20($sp)
/* 2AD1C 8004F91C E7A6001C */  swc1       $f6, 0x1c($sp)
/* 2AD20 8004F920 E7B40010 */  swc1       $f20, 0x10($sp)
/* 2AD24 8004F924 E7B60014 */  swc1       $f22, 0x14($sp)
/* 2AD28 8004F928 E7B60018 */  swc1       $f22, 0x18($sp)
/* 2AD2C 8004F92C 0C016BF4 */  jal        func_8005AFD0
/* 2AD30 8004F930 4600C386 */   mov.s     $f14, $f24
/* 2AD34 8004F934 3C10800F */  lui        $s0, %hi(D_800F08D0)
/* 2AD38 8004F938 8E1008D0 */  lw         $s0, %lo(D_800F08D0)($s0)
/* 2AD3C 8004F93C 3C01438C */  lui        $at, 0x438c
/* 2AD40 8004F940 44816000 */  mtc1       $at, $f12
/* 2AD44 8004F944 02140019 */  multu      $s0, $s4
/* 2AD48 8004F948 4406B000 */  mfc1       $a2, $f22
/* 2AD4C 8004F94C 4407A000 */  mfc1       $a3, $f20
/* 2AD50 8004F950 240A0001 */  addiu      $t2, $zero, 1
/* 2AD54 8004F954 AFAA0014 */  sw         $t2, 0x14($sp)
/* 2AD58 8004F958 4600C386 */  mov.s      $f14, $f24
/* 2AD5C 8004F95C 0000C012 */  mflo       $t8
/* 2AD60 8004F960 02784821 */  addu       $t1, $s3, $t8
/* 2AD64 8004F964 0C0200FC */  jal        func_800803F0
/* 2AD68 8004F968 AFA90010 */   sw        $t1, 0x10($sp)
/* 2AD6C 8004F96C 3C014280 */  lui        $at, 0x4280
/* 2AD70 8004F970 3C13800F */  lui        $s3, %hi(D_800F08C8)
/* 2AD74 8004F974 4481A000 */  mtc1       $at, $f20
/* 2AD78 8004F978 267308C8 */  addiu      $s3, $s3, %lo(D_800F08C8)
/* 2AD7C 8004F97C 00009025 */  or         $s2, $zero, $zero
/* 2AD80 8004F980 24140002 */  addiu      $s4, $zero, 2
.L8004F984:
/* 2AD84 8004F984 8E6B0000 */  lw         $t3, ($s3)
/* 2AD88 8004F988 00126140 */  sll        $t4, $s2, 5
/* 2AD8C 8004F98C 01926023 */  subu       $t4, $t4, $s2
/* 2AD90 8004F990 19600024 */  blez       $t3, .L8004FA24
/* 2AD94 8004F994 00008825 */   or        $s1, $zero, $zero
/* 2AD98 8004F998 000C6080 */  sll        $t4, $t4, 2
/* 2AD9C 8004F99C 01926021 */  addu       $t4, $t4, $s2
/* 2ADA0 8004F9A0 3C0D8017 */  lui        $t5, %hi(D_80175870)
/* 2ADA4 8004F9A4 25AD5870 */  addiu      $t5, $t5, %lo(D_80175870)
/* 2ADA8 8004F9A8 000C6100 */  sll        $t4, $t4, 4
/* 2ADAC 8004F9AC 018D8021 */  addu       $s0, $t4, $t5
.L8004F9B0:
/* 2ADB0 8004F9B0 1640000D */  bnez       $s2, .L8004F9E8
/* 2ADB4 8004F9B4 24190053 */   addiu     $t9, $zero, 0x53
/* 2ADB8 8004F9B8 C6080004 */  lwc1       $f8, 4($s0)
/* 2ADBC 8004F9BC 4407A000 */  mfc1       $a3, $f20
/* 2ADC0 8004F9C0 240F0052 */  addiu      $t7, $zero, 0x52
/* 2ADC4 8004F9C4 AFAF0018 */  sw         $t7, 0x18($sp)
/* 2ADC8 8004F9C8 C60C0000 */  lwc1       $f12, ($s0)
/* 2ADCC 8004F9CC 8E060008 */  lw         $a2, 8($s0)
/* 2ADD0 8004F9D0 E7B40010 */  swc1       $f20, 0x10($sp)
/* 2ADD4 8004F9D4 E7B60014 */  swc1       $f22, 0x14($sp)
/* 2ADD8 8004F9D8 0C015D1F */  jal        func_8005747C
/* 2ADDC 8004F9DC 46184380 */   add.s     $f14, $f8, $f24
/* 2ADE0 8004F9E0 1000000B */  b          .L8004FA10
/* 2ADE4 8004F9E4 8E6E0000 */   lw        $t6, ($s3)
.L8004F9E8:
/* 2ADE8 8004F9E8 C60A0004 */  lwc1       $f10, 4($s0)
/* 2ADEC 8004F9EC 4407A000 */  mfc1       $a3, $f20
/* 2ADF0 8004F9F0 C60C0000 */  lwc1       $f12, ($s0)
/* 2ADF4 8004F9F4 8E060008 */  lw         $a2, 8($s0)
/* 2ADF8 8004F9F8 E7B40010 */  swc1       $f20, 0x10($sp)
/* 2ADFC 8004F9FC E7B60014 */  swc1       $f22, 0x14($sp)
/* 2AE00 8004FA00 AFB90018 */  sw         $t9, 0x18($sp)
/* 2AE04 8004FA04 0C015D1F */  jal        func_8005747C
/* 2AE08 8004FA08 46185380 */   add.s     $f14, $f10, $f24
/* 2AE0C 8004FA0C 8E6E0000 */  lw         $t6, ($s3)
.L8004FA10:
/* 2AE10 8004FA10 26310001 */  addiu      $s1, $s1, 1
/* 2AE14 8004FA14 26100014 */  addiu      $s0, $s0, 0x14
/* 2AE18 8004FA18 022E082A */  slt        $at, $s1, $t6
/* 2AE1C 8004FA1C 1420FFE4 */  bnez       $at, .L8004F9B0
/* 2AE20 8004FA20 00000000 */   nop
.L8004FA24:
/* 2AE24 8004FA24 26520001 */  addiu      $s2, $s2, 1
/* 2AE28 8004FA28 1654FFD6 */  bne        $s2, $s4, .L8004F984
/* 2AE2C 8004FA2C 26730004 */   addiu     $s3, $s3, 4
/* 2AE30 8004FA30 8FBF005C */  lw         $ra, 0x5c($sp)
/* 2AE34 8004FA34 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 2AE38 8004FA38 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 2AE3C 8004FA3C D7B80040 */  ldc1       $f24, 0x40($sp)
/* 2AE40 8004FA40 8FB00048 */  lw         $s0, 0x48($sp)
/* 2AE44 8004FA44 8FB1004C */  lw         $s1, 0x4c($sp)
/* 2AE48 8004FA48 8FB20050 */  lw         $s2, 0x50($sp)
/* 2AE4C 8004FA4C 8FB30054 */  lw         $s3, 0x54($sp)
/* 2AE50 8004FA50 8FB40058 */  lw         $s4, 0x58($sp)
/* 2AE54 8004FA54 03E00008 */  jr         $ra
/* 2AE58 8004FA58 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8004FA5C
/* 2AE5C 8004FA5C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2AE60 8004FA60 AFBF005C */  sw         $ra, 0x5c($sp)
/* 2AE64 8004FA64 AFB40058 */  sw         $s4, 0x58($sp)
/* 2AE68 8004FA68 AFB30054 */  sw         $s3, 0x54($sp)
/* 2AE6C 8004FA6C AFB20050 */  sw         $s2, 0x50($sp)
/* 2AE70 8004FA70 AFB1004C */  sw         $s1, 0x4c($sp)
/* 2AE74 8004FA74 AFB00048 */  sw         $s0, 0x48($sp)
/* 2AE78 8004FA78 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 2AE7C 8004FA7C F7B60038 */  sdc1       $f22, 0x38($sp)
/* 2AE80 8004FA80 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 2AE84 8004FA84 0C015797 */  jal        func_80055E5C
/* 2AE88 8004FA88 34048000 */   ori       $a0, $zero, 0x8000
/* 2AE8C 8004FA8C 24120001 */  addiu      $s2, $zero, 1
/* 2AE90 8004FA90 14520041 */  bne        $v0, $s2, .L8004FB98
/* 2AE94 8004FA94 3C10800F */   lui       $s0, %hi(D_800F09A4)
/* 2AE98 8004FA98 8E1009A4 */  lw         $s0, %lo(D_800F09A4)($s0)
/* 2AE9C 8004FA9C 3C11800F */  lui        $s1, %hi(D_800F099C)
/* 2AEA0 8004FAA0 3C028017 */  lui        $v0, %hi(D_80176B74)
/* 2AEA4 8004FAA4 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 2AEA8 8004FAA8 2631099C */  addiu      $s1, $s1, %lo(D_800F099C)
/* 2AEAC 8004FAAC 00107880 */  sll        $t7, $s0, 2
/* 2AEB0 8004FAB0 022FC021 */  addu       $t8, $s1, $t7
/* 2AEB4 8004FAB4 8F190000 */  lw         $t9, ($t8)
/* 2AEB8 8004FAB8 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2AEBC 8004FABC C420070C */  lwc1       $f0, %lo(D_800F070C)($at)
/* 2AEC0 8004FAC0 C4440004 */  lwc1       $f4, 4($v0)
/* 2AEC4 8004FAC4 00107140 */  sll        $t6, $s0, 5
/* 2AEC8 8004FAC8 01D07023 */  subu       $t6, $t6, $s0
/* 2AECC 8004FACC 000E7080 */  sll        $t6, $t6, 2
/* 2AED0 8004FAD0 00194080 */  sll        $t0, $t9, 2
/* 2AED4 8004FAD4 46002180 */  add.s      $f6, $f4, $f0
/* 2AED8 8004FAD8 01D07021 */  addu       $t6, $t6, $s0
/* 2AEDC 8004FADC 01194021 */  addu       $t0, $t0, $t9
/* 2AEE0 8004FAE0 00084080 */  sll        $t0, $t0, 2
/* 2AEE4 8004FAE4 000E7100 */  sll        $t6, $t6, 4
/* 2AEE8 8004FAE8 3C0A8017 */  lui        $t2, %hi(D_80175870)
/* 2AEEC 8004FAEC 254A5870 */  addiu      $t2, $t2, %lo(D_80175870)
/* 2AEF0 8004FAF0 01C84821 */  addu       $t1, $t6, $t0
/* 2AEF4 8004FAF4 012A1821 */  addu       $v1, $t1, $t2
/* 2AEF8 8004FAF8 E4660000 */  swc1       $f6, ($v1)
/* 2AEFC 8004FAFC 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2AF00 8004FB00 C4220710 */  lwc1       $f2, %lo(D_800F0710)($at)
/* 2AF04 8004FB04 C4480008 */  lwc1       $f8, 8($v0)
/* 2AF08 8004FB08 3C01800F */  lui        $at, 0x800f
/* 2AF0C 8004FB0C 24140064 */  addiu      $s4, $zero, 0x64
/* 2AF10 8004FB10 46024280 */  add.s      $f10, $f8, $f2
/* 2AF14 8004FB14 02140019 */  multu      $s0, $s4
/* 2AF18 8004FB18 3C13800F */  lui        $s3, %hi(D_800F09A8)
/* 2AF1C 8004FB1C 267309A8 */  addiu      $s3, $s3, %lo(D_800F09A8)
/* 2AF20 8004FB20 E46A0004 */  swc1       $f10, 4($v1)
/* 2AF24 8004FB24 C42C0714 */  lwc1       $f12, 0x714($at)
/* 2AF28 8004FB28 C450000C */  lwc1       $f16, 0xc($v0)
/* 2AF2C 8004FB2C 3C048011 */  lui        $a0, %hi(D_8010C750)
/* 2AF30 8004FB30 2484C750 */  addiu      $a0, $a0, %lo(D_8010C750)
/* 2AF34 8004FB34 460C8480 */  add.s      $f18, $f16, $f12
/* 2AF38 8004FB38 00005812 */  mflo       $t3
/* 2AF3C 8004FB3C 026B2821 */  addu       $a1, $s3, $t3
/* 2AF40 8004FB40 E4720008 */  swc1       $f18, 8($v1)
/* 2AF44 8004FB44 C44A0008 */  lwc1       $f10, 8($v0)
/* 2AF48 8004FB48 C4440004 */  lwc1       $f4, 4($v0)
/* 2AF4C 8004FB4C 46025400 */  add.s      $f16, $f10, $f2
/* 2AF50 8004FB50 46002180 */  add.s      $f6, $f4, $f0
/* 2AF54 8004FB54 460084A1 */  cvt.d.s    $f18, $f16
/* 2AF58 8004FB58 46003221 */  cvt.d.s    $f8, $f6
/* 2AF5C 8004FB5C F7B20010 */  sdc1       $f18, 0x10($sp)
/* 2AF60 8004FB60 C444000C */  lwc1       $f4, 0xc($v0)
/* 2AF64 8004FB64 44074000 */  mfc1       $a3, $f8
/* 2AF68 8004FB68 44064800 */  mfc1       $a2, $f9
/* 2AF6C 8004FB6C 460C2180 */  add.s      $f6, $f4, $f12
/* 2AF70 8004FB70 46003221 */  cvt.d.s    $f8, $f6
/* 2AF74 8004FB74 0C036EA5 */  jal        func_800DBA94
/* 2AF78 8004FB78 F7A80018 */   sdc1      $f8, 0x18($sp)
/* 2AF7C 8004FB7C 3C10800F */  lui        $s0, %hi(D_800F09A4)
/* 2AF80 8004FB80 8E1009A4 */  lw         $s0, %lo(D_800F09A4)($s0)
/* 2AF84 8004FB84 00106080 */  sll        $t4, $s0, 2
/* 2AF88 8004FB88 022C1021 */  addu       $v0, $s1, $t4
/* 2AF8C 8004FB8C 8C4D0000 */  lw         $t5, ($v0)
/* 2AF90 8004FB90 25AF0001 */  addiu      $t7, $t5, 1
/* 2AF94 8004FB94 AC4F0000 */  sw         $t7, ($v0)
.L8004FB98:
/* 2AF98 8004FB98 3C11800F */  lui        $s1, %hi(D_800F099C)
/* 2AF9C 8004FB9C 3C13800F */  lui        $s3, %hi(D_800F09A8)
/* 2AFA0 8004FBA0 267309A8 */  addiu      $s3, $s3, %lo(D_800F09A8)
/* 2AFA4 8004FBA4 2631099C */  addiu      $s1, $s1, %lo(D_800F099C)
/* 2AFA8 8004FBA8 24140064 */  addiu      $s4, $zero, 0x64
/* 2AFAC 8004FBAC 0C015797 */  jal        func_80055E5C
/* 2AFB0 8004FBB0 24044000 */   addiu     $a0, $zero, 0x4000
/* 2AFB4 8004FBB4 1452003C */  bne        $v0, $s2, .L8004FCA8
/* 2AFB8 8004FBB8 3C10800F */   lui       $s0, %hi(D_800F09A4)
/* 2AFBC 8004FBBC 8E1009A4 */  lw         $s0, %lo(D_800F09A4)($s0)
/* 2AFC0 8004FBC0 3C028017 */  lui        $v0, %hi(D_80176B74)
/* 2AFC4 8004FBC4 8C426B74 */  lw         $v0, %lo(D_80176B74)($v0)
/* 2AFC8 8004FBC8 0010C880 */  sll        $t9, $s0, 2
/* 2AFCC 8004FBCC 02397021 */  addu       $t6, $s1, $t9
/* 2AFD0 8004FBD0 8DC80000 */  lw         $t0, ($t6)
/* 2AFD4 8004FBD4 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2AFD8 8004FBD8 C420070C */  lwc1       $f0, %lo(D_800F070C)($at)
/* 2AFDC 8004FBDC C44A0004 */  lwc1       $f10, 4($v0)
/* 2AFE0 8004FBE0 0010C140 */  sll        $t8, $s0, 5
/* 2AFE4 8004FBE4 0310C023 */  subu       $t8, $t8, $s0
/* 2AFE8 8004FBE8 0018C080 */  sll        $t8, $t8, 2
/* 2AFEC 8004FBEC 00084880 */  sll        $t1, $t0, 2
/* 2AFF0 8004FBF0 46005400 */  add.s      $f16, $f10, $f0
/* 2AFF4 8004FBF4 0310C021 */  addu       $t8, $t8, $s0
/* 2AFF8 8004FBF8 01284821 */  addu       $t1, $t1, $t0
/* 2AFFC 8004FBFC 00094880 */  sll        $t1, $t1, 2
/* 2B000 8004FC00 0018C100 */  sll        $t8, $t8, 4
/* 2B004 8004FC04 3C0B8017 */  lui        $t3, %hi(D_80175870)
/* 2B008 8004FC08 256B5870 */  addiu      $t3, $t3, %lo(D_80175870)
/* 2B00C 8004FC0C 03095021 */  addu       $t2, $t8, $t1
/* 2B010 8004FC10 014B1821 */  addu       $v1, $t2, $t3
/* 2B014 8004FC14 E4700000 */  swc1       $f16, ($v1)
/* 2B018 8004FC18 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B01C 8004FC1C C4220710 */  lwc1       $f2, %lo(D_800F0710)($at)
/* 2B020 8004FC20 C452001C */  lwc1       $f18, 0x1c($v0)
/* 2B024 8004FC24 3C01800F */  lui        $at, 0x800f
/* 2B028 8004FC28 02140019 */  multu      $s0, $s4
/* 2B02C 8004FC2C 46029100 */  add.s      $f4, $f18, $f2
/* 2B030 8004FC30 3C048011 */  lui        $a0, %hi(D_8010C780)
/* 2B034 8004FC34 2484C780 */  addiu      $a0, $a0, %lo(D_8010C780)
/* 2B038 8004FC38 E4640004 */  swc1       $f4, 4($v1)
/* 2B03C 8004FC3C C42C0714 */  lwc1       $f12, 0x714($at)
/* 2B040 8004FC40 C446000C */  lwc1       $f6, 0xc($v0)
/* 2B044 8004FC44 460C3200 */  add.s      $f8, $f6, $f12
/* 2B048 8004FC48 00006012 */  mflo       $t4
/* 2B04C 8004FC4C 026C2821 */  addu       $a1, $s3, $t4
/* 2B050 8004FC50 E4680008 */  swc1       $f8, 8($v1)
/* 2B054 8004FC54 C444001C */  lwc1       $f4, 0x1c($v0)
/* 2B058 8004FC58 C44A0004 */  lwc1       $f10, 4($v0)
/* 2B05C 8004FC5C 46022180 */  add.s      $f6, $f4, $f2
/* 2B060 8004FC60 46005400 */  add.s      $f16, $f10, $f0
/* 2B064 8004FC64 46003221 */  cvt.d.s    $f8, $f6
/* 2B068 8004FC68 460084A1 */  cvt.d.s    $f18, $f16
/* 2B06C 8004FC6C F7A80010 */  sdc1       $f8, 0x10($sp)
/* 2B070 8004FC70 C44A000C */  lwc1       $f10, 0xc($v0)
/* 2B074 8004FC74 44079000 */  mfc1       $a3, $f18
/* 2B078 8004FC78 44069800 */  mfc1       $a2, $f19
/* 2B07C 8004FC7C 460C5400 */  add.s      $f16, $f10, $f12
/* 2B080 8004FC80 460084A1 */  cvt.d.s    $f18, $f16
/* 2B084 8004FC84 0C036EA5 */  jal        func_800DBA94
/* 2B088 8004FC88 F7B20018 */   sdc1      $f18, 0x18($sp)
/* 2B08C 8004FC8C 3C10800F */  lui        $s0, %hi(D_800F09A4)
/* 2B090 8004FC90 8E1009A4 */  lw         $s0, %lo(D_800F09A4)($s0)
/* 2B094 8004FC94 00106880 */  sll        $t5, $s0, 2
/* 2B098 8004FC98 022D1021 */  addu       $v0, $s1, $t5
/* 2B09C 8004FC9C 8C4F0000 */  lw         $t7, ($v0)
/* 2B0A0 8004FCA0 25F90001 */  addiu      $t9, $t7, 1
/* 2B0A4 8004FCA4 AC590000 */  sw         $t9, ($v0)
.L8004FCA8:
/* 2B0A8 8004FCA8 0C015797 */  jal        func_80055E5C
/* 2B0AC 8004FCAC 24042000 */   addiu     $a0, $zero, 0x2000
/* 2B0B0 8004FCB0 10400007 */  beqz       $v0, .L8004FCD0
/* 2B0B4 8004FCB4 3C03800F */   lui       $v1, %hi(D_800F09A4)
/* 2B0B8 8004FCB8 3C02800F */  lui        $v0, %hi(D_800F099C)
/* 2B0BC 8004FCBC 2442099C */  addiu      $v0, $v0, %lo(D_800F099C)
/* 2B0C0 8004FCC0 246309A4 */  addiu      $v1, $v1, %lo(D_800F09A4)
.L8004FCC4:
/* 2B0C4 8004FCC4 24420004 */  addiu      $v0, $v0, 4
/* 2B0C8 8004FCC8 1443FFFE */  bne        $v0, $v1, .L8004FCC4
/* 2B0CC 8004FCCC AC40FFFC */   sw        $zero, -4($v0)
.L8004FCD0:
/* 2B0D0 8004FCD0 0C015797 */  jal        func_80055E5C
/* 2B0D4 8004FCD4 24040010 */   addiu     $a0, $zero, 0x10
/* 2B0D8 8004FCD8 10400009 */  beqz       $v0, .L8004FD00
/* 2B0DC 8004FCDC 3C10800F */   lui       $s0, %hi(D_800F09A4)
/* 2B0E0 8004FCE0 8E1009A4 */  lw         $s0, %lo(D_800F09A4)($s0)
/* 2B0E4 8004FCE4 3C01800F */  lui        $at, %hi(D_800F09A4)
/* 2B0E8 8004FCE8 26100001 */  addiu      $s0, $s0, 1
/* 2B0EC 8004FCEC AC3009A4 */  sw         $s0, %lo(D_800F09A4)($at)
/* 2B0F0 8004FCF0 2A010002 */  slti       $at, $s0, 2
/* 2B0F4 8004FCF4 14200002 */  bnez       $at, .L8004FD00
/* 2B0F8 8004FCF8 3C01800F */   lui       $at, %hi(D_800F09A4)
/* 2B0FC 8004FCFC AC2009A4 */  sw         $zero, %lo(D_800F09A4)($at)
.L8004FD00:
/* 2B100 8004FD00 0C015797 */  jal        func_80055E5C
/* 2B104 8004FD04 00002025 */   or        $a0, $zero, $zero
/* 2B108 8004FD08 1040001C */  beqz       $v0, .L8004FD7C
/* 2B10C 8004FD0C 00002025 */   or        $a0, $zero, $zero
/* 2B110 8004FD10 240500FF */  addiu      $a1, $zero, 0xff
/* 2B114 8004FD14 00003025 */  or         $a2, $zero, $zero
/* 2B118 8004FD18 0C01849C */  jal        func_80061270
/* 2B11C 8004FD1C 240700FF */   addiu     $a3, $zero, 0xff
/* 2B120 8004FD20 0C0184BC */  jal        func_800612F0
/* 2B124 8004FD24 24040001 */   addiu     $a0, $zero, 1
/* 2B128 8004FD28 3C10800F */  lui        $s0, %hi(D_800F09A4)
/* 2B12C 8004FD2C 8E1009A4 */  lw         $s0, %lo(D_800F09A4)($s0)
/* 2B130 8004FD30 3C014200 */  lui        $at, 0x4200
/* 2B134 8004FD34 44817000 */  mtc1       $at, $f14
/* 2B138 8004FD38 260E0001 */  addiu      $t6, $s0, 1
/* 2B13C 8004FD3C 448E3000 */  mtc1       $t6, $f6
/* 2B140 8004FD40 4480A000 */  mtc1       $zero, $f20
/* 2B144 8004FD44 3C01437A */  lui        $at, 0x437a
/* 2B148 8004FD48 46803220 */  cvt.s.w    $f8, $f6
/* 2B14C 8004FD4C 44816000 */  mtc1       $at, $f12
/* 2B150 8004FD50 3C013F80 */  lui        $at, 0x3f80
/* 2B154 8004FD54 44812000 */  mtc1       $at, $f4
/* 2B158 8004FD58 24080001 */  addiu      $t0, $zero, 1
/* 2B15C 8004FD5C 4406A000 */  mfc1       $a2, $f20
/* 2B160 8004FD60 4407A000 */  mfc1       $a3, $f20
/* 2B164 8004FD64 AFA80020 */  sw         $t0, 0x20($sp)
/* 2B168 8004FD68 E7A8001C */  swc1       $f8, 0x1c($sp)
/* 2B16C 8004FD6C E7B40014 */  swc1       $f20, 0x14($sp)
/* 2B170 8004FD70 E7B40018 */  swc1       $f20, 0x18($sp)
/* 2B174 8004FD74 0C016BF4 */  jal        func_8005AFD0
/* 2B178 8004FD78 E7A40010 */   swc1      $f4, 0x10($sp)
.L8004FD7C:
/* 2B17C 8004FD7C 3C10800F */  lui        $s0, %hi(D_800F09A4)
/* 2B180 8004FD80 8E1009A4 */  lw         $s0, %lo(D_800F09A4)($s0)
/* 2B184 8004FD84 4480A000 */  mtc1       $zero, $f20
/* 2B188 8004FD88 3C014200 */  lui        $at, 0x4200
/* 2B18C 8004FD8C 02140019 */  multu      $s0, $s4
/* 2B190 8004FD90 4481C000 */  mtc1       $at, $f24
/* 2B194 8004FD94 3C01438C */  lui        $at, 0x438c
/* 2B198 8004FD98 44816000 */  mtc1       $at, $f12
/* 2B19C 8004FD9C 240A0001 */  addiu      $t2, $zero, 1
/* 2B1A0 8004FDA0 4406A000 */  mfc1       $a2, $f20
/* 2B1A4 8004FDA4 AFAA0014 */  sw         $t2, 0x14($sp)
/* 2B1A8 8004FDA8 3C073F80 */  lui        $a3, 0x3f80
/* 2B1AC 8004FDAC 4600C386 */  mov.s      $f14, $f24
/* 2B1B0 8004FDB0 0000C012 */  mflo       $t8
/* 2B1B4 8004FDB4 02784821 */  addu       $t1, $s3, $t8
/* 2B1B8 8004FDB8 0C0200FC */  jal        func_800803F0
/* 2B1BC 8004FDBC AFA90010 */   sw        $t1, 0x10($sp)
/* 2B1C0 8004FDC0 3C014280 */  lui        $at, 0x4280
/* 2B1C4 8004FDC4 3C12800F */  lui        $s2, %hi(D_800F099C)
/* 2B1C8 8004FDC8 4481A000 */  mtc1       $at, $f20
/* 2B1CC 8004FDCC 2652099C */  addiu      $s2, $s2, %lo(D_800F099C)
/* 2B1D0 8004FDD0 00009825 */  or         $s3, $zero, $zero
/* 2B1D4 8004FDD4 24140002 */  addiu      $s4, $zero, 2
.L8004FDD8:
/* 2B1D8 8004FDD8 8E4B0000 */  lw         $t3, ($s2)
/* 2B1DC 8004FDDC 00136140 */  sll        $t4, $s3, 5
/* 2B1E0 8004FDE0 01936023 */  subu       $t4, $t4, $s3
/* 2B1E4 8004FDE4 1960001C */  blez       $t3, .L8004FE58
/* 2B1E8 8004FDE8 00008825 */   or        $s1, $zero, $zero
/* 2B1EC 8004FDEC 266F0001 */  addiu      $t7, $s3, 1
/* 2B1F0 8004FDF0 448F5000 */  mtc1       $t7, $f10
/* 2B1F4 8004FDF4 000C6080 */  sll        $t4, $t4, 2
/* 2B1F8 8004FDF8 01936021 */  addu       $t4, $t4, $s3
/* 2B1FC 8004FDFC 3C0D8017 */  lui        $t5, %hi(D_80175870)
/* 2B200 8004FE00 25AD5870 */  addiu      $t5, $t5, %lo(D_80175870)
/* 2B204 8004FE04 000C6100 */  sll        $t4, $t4, 4
/* 2B208 8004FE08 018D8021 */  addu       $s0, $t4, $t5
/* 2B20C 8004FE0C 468055A0 */  cvt.s.w    $f22, $f10
.L8004FE10:
/* 2B210 8004FE10 0C0184BC */  jal        func_800612F0
/* 2B214 8004FE14 24040001 */   addiu     $a0, $zero, 1
/* 2B218 8004FE18 C6100004 */  lwc1       $f16, 4($s0)
/* 2B21C 8004FE1C 4407A000 */  mfc1       $a3, $f20
/* 2B220 8004FE20 24190001 */  addiu      $t9, $zero, 1
/* 2B224 8004FE24 AFB90018 */  sw         $t9, 0x18($sp)
/* 2B228 8004FE28 C60C0000 */  lwc1       $f12, ($s0)
/* 2B22C 8004FE2C 8E060008 */  lw         $a2, 8($s0)
/* 2B230 8004FE30 E7B40010 */  swc1       $f20, 0x10($sp)
/* 2B234 8004FE34 E7B60014 */  swc1       $f22, 0x14($sp)
/* 2B238 8004FE38 0C015D1F */  jal        func_8005747C
/* 2B23C 8004FE3C 46188380 */   add.s     $f14, $f16, $f24
/* 2B240 8004FE40 8E4E0000 */  lw         $t6, ($s2)
/* 2B244 8004FE44 26310001 */  addiu      $s1, $s1, 1
/* 2B248 8004FE48 26100014 */  addiu      $s0, $s0, 0x14
/* 2B24C 8004FE4C 022E082A */  slt        $at, $s1, $t6
/* 2B250 8004FE50 1420FFEF */  bnez       $at, .L8004FE10
/* 2B254 8004FE54 00000000 */   nop
.L8004FE58:
/* 2B258 8004FE58 26730001 */  addiu      $s3, $s3, 1
/* 2B25C 8004FE5C 1674FFDE */  bne        $s3, $s4, .L8004FDD8
/* 2B260 8004FE60 26520004 */   addiu     $s2, $s2, 4
/* 2B264 8004FE64 8FBF005C */  lw         $ra, 0x5c($sp)
/* 2B268 8004FE68 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 2B26C 8004FE6C D7B60038 */  ldc1       $f22, 0x38($sp)
/* 2B270 8004FE70 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 2B274 8004FE74 8FB00048 */  lw         $s0, 0x48($sp)
/* 2B278 8004FE78 8FB1004C */  lw         $s1, 0x4c($sp)
/* 2B27C 8004FE7C 8FB20050 */  lw         $s2, 0x50($sp)
/* 2B280 8004FE80 8FB30054 */  lw         $s3, 0x54($sp)
/* 2B284 8004FE84 8FB40058 */  lw         $s4, 0x58($sp)
/* 2B288 8004FE88 03E00008 */  jr         $ra
/* 2B28C 8004FE8C 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8004FE90
/* 2B290 8004FE90 AFA60008 */  sw         $a2, 8($sp)
/* 2B294 8004FE94 C7A60008 */  lwc1       $f6, 8($sp)
/* 2B298 8004FE98 C4840010 */  lwc1       $f4, 0x10($a0)
/* 2B29C 8004FE9C 44857000 */  mtc1       $a1, $f14
/* 2B2A0 8004FEA0 C48A0000 */  lwc1       $f10, ($a0)
/* 2B2A4 8004FEA4 46062202 */  mul.s      $f8, $f4, $f6
/* 2B2A8 8004FEA8 44876000 */  mtc1       $a3, $f12
/* 2B2AC 8004FEAC C4840020 */  lwc1       $f4, 0x20($a0)
/* 2B2B0 8004FEB0 460E5402 */  mul.s      $f16, $f10, $f14
/* 2B2B4 8004FEB4 8FAE0010 */  lw         $t6, 0x10($sp)
/* 2B2B8 8004FEB8 460C2282 */  mul.s      $f10, $f4, $f12
/* 2B2BC 8004FEBC 46088480 */  add.s      $f18, $f16, $f8
/* 2B2C0 8004FEC0 46125400 */  add.s      $f16, $f10, $f18
/* 2B2C4 8004FEC4 E5D00000 */  swc1       $f16, ($t6)
/* 2B2C8 8004FEC8 C4880014 */  lwc1       $f8, 0x14($a0)
/* 2B2CC 8004FECC C48A0004 */  lwc1       $f10, 4($a0)
/* 2B2D0 8004FED0 8FAF0014 */  lw         $t7, 0x14($sp)
/* 2B2D4 8004FED4 46064102 */  mul.s      $f4, $f8, $f6
/* 2B2D8 8004FED8 C4880024 */  lwc1       $f8, 0x24($a0)
/* 2B2DC 8004FEDC 460E5482 */  mul.s      $f18, $f10, $f14
/* 2B2E0 8004FEE0 46049400 */  add.s      $f16, $f18, $f4
/* 2B2E4 8004FEE4 460C4282 */  mul.s      $f10, $f8, $f12
/* 2B2E8 8004FEE8 46105480 */  add.s      $f18, $f10, $f16
/* 2B2EC 8004FEEC E5F20000 */  swc1       $f18, ($t7)
/* 2B2F0 8004FEF0 C4840018 */  lwc1       $f4, 0x18($a0)
/* 2B2F4 8004FEF4 C48A0008 */  lwc1       $f10, 8($a0)
/* 2B2F8 8004FEF8 8FB80018 */  lw         $t8, 0x18($sp)
/* 2B2FC 8004FEFC 46062202 */  mul.s      $f8, $f4, $f6
/* 2B300 8004FF00 C4840028 */  lwc1       $f4, 0x28($a0)
/* 2B304 8004FF04 460E5402 */  mul.s      $f16, $f10, $f14
/* 2B308 8004FF08 46088480 */  add.s      $f18, $f16, $f8
/* 2B30C 8004FF0C 460C2182 */  mul.s      $f6, $f4, $f12
/* 2B310 8004FF10 46123280 */  add.s      $f10, $f6, $f18
/* 2B314 8004FF14 03E00008 */  jr         $ra
/* 2B318 8004FF18 E70A0000 */   swc1      $f10, ($t8)

glabel func_8004FF1C
/* 2B31C 8004FF1C 3C0142C8 */  lui        $at, 0x42c8
/* 2B320 8004FF20 44810000 */  mtc1       $at, $f0
/* 2B324 8004FF24 C4840024 */  lwc1       $f4, 0x24($a0)
/* 2B328 8004FF28 44801000 */  mtc1       $zero, $f2
/* 2B32C 8004FF2C C4880014 */  lwc1       $f8, 0x14($a0)
/* 2B330 8004FF30 46002182 */  mul.s      $f6, $f4, $f0
/* 2B334 8004FF34 00000000 */  nop
/* 2B338 8004FF38 46024282 */  mul.s      $f10, $f8, $f2
/* 2B33C 8004FF3C 460A3400 */  add.s      $f16, $f6, $f10
/* 2B340 8004FF40 E4B00000 */  swc1       $f16, ($a1)
/* 2B344 8004FF44 C4920028 */  lwc1       $f18, 0x28($a0)
/* 2B348 8004FF48 C4880018 */  lwc1       $f8, 0x18($a0)
/* 2B34C 8004FF4C 46009102 */  mul.s      $f4, $f18, $f0
/* 2B350 8004FF50 00000000 */  nop
/* 2B354 8004FF54 46024182 */  mul.s      $f6, $f8, $f2
/* 2B358 8004FF58 46062280 */  add.s      $f10, $f4, $f6
/* 2B35C 8004FF5C 03E00008 */  jr         $ra
/* 2B360 8004FF60 E4CA0000 */   swc1      $f10, ($a2)

glabel func_8004FF64
/* 2B364 8004FF64 3C0142C8 */  lui        $at, 0x42c8
/* 2B368 8004FF68 44810000 */  mtc1       $at, $f0
/* 2B36C 8004FF6C C4840020 */  lwc1       $f4, 0x20($a0)
/* 2B370 8004FF70 44801000 */  mtc1       $zero, $f2
/* 2B374 8004FF74 C4880000 */  lwc1       $f8, ($a0)
/* 2B378 8004FF78 46002182 */  mul.s      $f6, $f4, $f0
/* 2B37C 8004FF7C 00000000 */  nop
/* 2B380 8004FF80 46024282 */  mul.s      $f10, $f8, $f2
/* 2B384 8004FF84 460A3400 */  add.s      $f16, $f6, $f10
/* 2B388 8004FF88 E4B00000 */  swc1       $f16, ($a1)
/* 2B38C 8004FF8C C4920028 */  lwc1       $f18, 0x28($a0)
/* 2B390 8004FF90 C4880008 */  lwc1       $f8, 8($a0)
/* 2B394 8004FF94 46009102 */  mul.s      $f4, $f18, $f0
/* 2B398 8004FF98 00000000 */  nop
/* 2B39C 8004FF9C 46024182 */  mul.s      $f6, $f8, $f2
/* 2B3A0 8004FFA0 46062280 */  add.s      $f10, $f4, $f6
/* 2B3A4 8004FFA4 03E00008 */  jr         $ra
/* 2B3A8 8004FFA8 E4CA0000 */   swc1      $f10, ($a2)

glabel func_8004FFAC
/* 2B3AC 8004FFAC 44800000 */  mtc1       $zero, $f0
/* 2B3B0 8004FFB0 C4840010 */  lwc1       $f4, 0x10($a0)
/* 2B3B4 8004FFB4 3C0142C8 */  lui        $at, 0x42c8
/* 2B3B8 8004FFB8 44811000 */  mtc1       $at, $f2
/* 2B3BC 8004FFBC 46002182 */  mul.s      $f6, $f4, $f0
/* 2B3C0 8004FFC0 C4880000 */  lwc1       $f8, ($a0)
/* 2B3C4 8004FFC4 46024282 */  mul.s      $f10, $f8, $f2
/* 2B3C8 8004FFC8 460A3400 */  add.s      $f16, $f6, $f10
/* 2B3CC 8004FFCC E4B00000 */  swc1       $f16, ($a1)
/* 2B3D0 8004FFD0 C4920014 */  lwc1       $f18, 0x14($a0)
/* 2B3D4 8004FFD4 C4880004 */  lwc1       $f8, 4($a0)
/* 2B3D8 8004FFD8 46009102 */  mul.s      $f4, $f18, $f0
/* 2B3DC 8004FFDC 00000000 */  nop
/* 2B3E0 8004FFE0 46024182 */  mul.s      $f6, $f8, $f2
/* 2B3E4 8004FFE4 46062280 */  add.s      $f10, $f4, $f6
/* 2B3E8 8004FFE8 03E00008 */  jr         $ra
/* 2B3EC 8004FFEC E4CA0000 */   swc1      $f10, ($a2)

glabel func_8004FFF0
/* 2B3F0 8004FFF0 3C01800F */  lui        $at, %hi(D_800F06B0)
/* 2B3F4 8004FFF4 03E00008 */  jr         $ra
/* 2B3F8 8004FFF8 AC2006B0 */   sw        $zero, %lo(D_800F06B0)($at)

glabel func_8004FFFC
/* 2B3FC 8004FFFC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2B400 80050000 AFBF004C */  sw         $ra, 0x4c($sp)
/* 2B404 80050004 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 2B408 80050008 0C015797 */  jal        func_80055E5C
/* 2B40C 8005000C 24040010 */   addiu     $a0, $zero, 0x10
/* 2B410 80050010 10400006 */  beqz       $v0, .L8005002C
/* 2B414 80050014 3C18800F */   lui       $t8, 0x800f
/* 2B418 80050018 3C0E800F */  lui        $t6, %hi(D_800F0B38)
/* 2B41C 8005001C 8DCE0B38 */  lw         $t6, %lo(D_800F0B38)($t6)
/* 2B420 80050020 3C01800F */  lui        $at, %hi(D_800F0B38)
/* 2B424 80050024 39CF0001 */  xori       $t7, $t6, 1
/* 2B428 80050028 AC2F0B38 */  sw         $t7, %lo(D_800F0B38)($at)
.L8005002C:
/* 2B42C 8005002C 8F180B38 */  lw         $t8, 0xb38($t8)
/* 2B430 80050030 00002025 */  or         $a0, $zero, $zero
/* 2B434 80050034 00002825 */  or         $a1, $zero, $zero
/* 2B438 80050038 1300005B */  beqz       $t8, .L800501A8
/* 2B43C 8005003C 00003025 */   or        $a2, $zero, $zero
/* 2B440 80050040 0C01849C */  jal        func_80061270
/* 2B444 80050044 240700FF */   addiu     $a3, $zero, 0xff
/* 2B448 80050048 3C013F80 */  lui        $at, 0x3f80
/* 2B44C 8005004C 4480A000 */  mtc1       $zero, $f20
/* 2B450 80050050 44812000 */  mtc1       $at, $f4
/* 2B454 80050054 3C0143A0 */  lui        $at, 0x43a0
/* 2B458 80050058 44813000 */  mtc1       $at, $f6
/* 2B45C 8005005C 3C014334 */  lui        $at, 0x4334
/* 2B460 80050060 44814000 */  mtc1       $at, $f8
/* 2B464 80050064 4406A000 */  mfc1       $a2, $f20
/* 2B468 80050068 4407A000 */  mfc1       $a3, $f20
/* 2B46C 8005006C AFA00020 */  sw         $zero, 0x20($sp)
/* 2B470 80050070 4600A306 */  mov.s      $f12, $f20
/* 2B474 80050074 4600A386 */  mov.s      $f14, $f20
/* 2B478 80050078 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 2B47C 8005007C E7A40010 */  swc1       $f4, 0x10($sp)
/* 2B480 80050080 E7A60014 */  swc1       $f6, 0x14($sp)
/* 2B484 80050084 0C016BF4 */  jal        func_8005AFD0
/* 2B488 80050088 E7A80018 */   swc1      $f8, 0x18($sp)
/* 2B48C 8005008C 3C0143C8 */  lui        $at, 0x43c8
/* 2B490 80050090 44815000 */  mtc1       $at, $f10
/* 2B494 80050094 3C0144FA */  lui        $at, 0x44fa
/* 2B498 80050098 44818000 */  mtc1       $at, $f16
/* 2B49C 8005009C 4406A000 */  mfc1       $a2, $f20
/* 2B4A0 800500A0 4407A000 */  mfc1       $a3, $f20
/* 2B4A4 800500A4 4600A306 */  mov.s      $f12, $f20
/* 2B4A8 800500A8 4600A386 */  mov.s      $f14, $f20
/* 2B4AC 800500AC E7AA0010 */  swc1       $f10, 0x10($sp)
/* 2B4B0 800500B0 0C01ED20 */  jal        func_8007B480
/* 2B4B4 800500B4 E7B00014 */   swc1      $f16, 0x14($sp)
/* 2B4B8 800500B8 3C0142F0 */  lui        $at, 0x42f0
/* 2B4BC 800500BC 44817000 */  mtc1       $at, $f14
/* 2B4C0 800500C0 4406A000 */  mfc1       $a2, $f20
/* 2B4C4 800500C4 4407A000 */  mfc1       $a3, $f20
/* 2B4C8 800500C8 4600A306 */  mov.s      $f12, $f20
/* 2B4CC 800500CC E7B40014 */  swc1       $f20, 0x14($sp)
/* 2B4D0 800500D0 0C01ED33 */  jal        func_8007B4CC
/* 2B4D4 800500D4 E7AE0010 */   swc1      $f14, 0x10($sp)
/* 2B4D8 800500D8 3C014200 */  lui        $at, 0x4200
/* 2B4DC 800500DC 44816000 */  mtc1       $at, $f12
/* 2B4E0 800500E0 3C013F80 */  lui        $at, 0x3f80
/* 2B4E4 800500E4 44819000 */  mtc1       $at, $f18
/* 2B4E8 800500E8 4406A000 */  mfc1       $a2, $f20
/* 2B4EC 800500EC 4407A000 */  mfc1       $a3, $f20
/* 2B4F0 800500F0 2419004D */  addiu      $t9, $zero, 0x4d
/* 2B4F4 800500F4 AFB90020 */  sw         $t9, 0x20($sp)
/* 2B4F8 800500F8 E7B40014 */  swc1       $f20, 0x14($sp)
/* 2B4FC 800500FC E7B40018 */  swc1       $f20, 0x18($sp)
/* 2B500 80050100 E7B4001C */  swc1       $f20, 0x1c($sp)
/* 2B504 80050104 46006386 */  mov.s      $f14, $f12
/* 2B508 80050108 0C016BF4 */  jal        func_8005AFD0
/* 2B50C 8005010C E7B20010 */   swc1      $f18, 0x10($sp)
/* 2B510 80050110 240800C8 */  addiu      $t0, $zero, 0xc8
/* 2B514 80050114 240900C8 */  addiu      $t1, $zero, 0xc8
/* 2B518 80050118 240A00FF */  addiu      $t2, $zero, 0xff
/* 2B51C 8005011C 240B00BF */  addiu      $t3, $zero, 0xbf
/* 2B520 80050120 240C000A */  addiu      $t4, $zero, 0xa
/* 2B524 80050124 240D00FF */  addiu      $t5, $zero, 0xff
/* 2B528 80050128 240E00C8 */  addiu      $t6, $zero, 0xc8
/* 2B52C 8005012C 240F00C8 */  addiu      $t7, $zero, 0xc8
/* 2B530 80050130 241800FF */  addiu      $t8, $zero, 0xff
/* 2B534 80050134 AFB8003C */  sw         $t8, 0x3c($sp)
/* 2B538 80050138 AFAF0034 */  sw         $t7, 0x34($sp)
/* 2B53C 8005013C AFAE0030 */  sw         $t6, 0x30($sp)
/* 2B540 80050140 AFAD002C */  sw         $t5, 0x2c($sp)
/* 2B544 80050144 AFAC0024 */  sw         $t4, 0x24($sp)
/* 2B548 80050148 AFAB0020 */  sw         $t3, 0x20($sp)
/* 2B54C 8005014C AFAA001C */  sw         $t2, 0x1c($sp)
/* 2B550 80050150 AFA90014 */  sw         $t1, 0x14($sp)
/* 2B554 80050154 AFA80010 */  sw         $t0, 0x10($sp)
/* 2B558 80050158 240400BF */  addiu      $a0, $zero, 0xbf
/* 2B55C 8005015C 2405000A */  addiu      $a1, $zero, 0xa
/* 2B560 80050160 00003025 */  or         $a2, $zero, $zero
/* 2B564 80050164 240700FF */  addiu      $a3, $zero, 0xff
/* 2B568 80050168 AFA00018 */  sw         $zero, 0x18($sp)
/* 2B56C 8005016C AFA00028 */  sw         $zero, 0x28($sp)
/* 2B570 80050170 0C0184C2 */  jal        func_80061308
/* 2B574 80050174 AFA00038 */   sw        $zero, 0x38($sp)
/* 2B578 80050178 3C014280 */  lui        $at, 0x4280
/* 2B57C 8005017C 44816000 */  mtc1       $at, $f12
/* 2B580 80050180 3C014200 */  lui        $at, 0x4200
/* 2B584 80050184 3C198011 */  lui        $t9, %hi(D_8010C7B0)
/* 2B588 80050188 2739C7B0 */  addiu      $t9, $t9, %lo(D_8010C7B0)
/* 2B58C 8005018C 44817000 */  mtc1       $at, $f14
/* 2B590 80050190 4406A000 */  mfc1       $a2, $f20
/* 2B594 80050194 24080001 */  addiu      $t0, $zero, 1
/* 2B598 80050198 AFA80014 */  sw         $t0, 0x14($sp)
/* 2B59C 8005019C AFB90010 */  sw         $t9, 0x10($sp)
/* 2B5A0 800501A0 0C0200FC */  jal        func_800803F0
/* 2B5A4 800501A4 3C073F80 */   lui       $a3, 0x3f80
.L800501A8:
/* 2B5A8 800501A8 8FBF004C */  lw         $ra, 0x4c($sp)
/* 2B5AC 800501AC D7B40040 */  ldc1       $f20, 0x40($sp)
/* 2B5B0 800501B0 27BD0050 */  addiu      $sp, $sp, 0x50
/* 2B5B4 800501B4 03E00008 */  jr         $ra
/* 2B5B8 800501B8 00000000 */   nop

glabel func_800501BC
/* 2B5BC 800501BC 3C03800F */  lui        $v1, %hi(D_800F06B0)
/* 2B5C0 800501C0 8C6306B0 */  lw         $v1, %lo(D_800F06B0)($v1)
/* 2B5C4 800501C4 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 2B5C8 800501C8 AFBF005C */  sw         $ra, 0x5c($sp)
/* 2B5CC 800501CC AFB00058 */  sw         $s0, 0x58($sp)
/* 2B5D0 800501D0 F7B60050 */  sdc1       $f22, 0x50($sp)
/* 2B5D4 800501D4 0460036E */  bltz       $v1, .L80050F90
/* 2B5D8 800501D8 F7B40048 */   sdc1      $f20, 0x48($sp)
/* 2B5DC 800501DC 3C028017 */  lui        $v0, %hi(D_80174980)
/* 2B5E0 800501E0 8C424980 */  lw         $v0, %lo(D_80174980)($v0)
/* 2B5E4 800501E4 24010002 */  addiu      $at, $zero, 2
/* 2B5E8 800501E8 10410007 */  beq        $v0, $at, .L80050208
/* 2B5EC 800501EC 24010003 */   addiu     $at, $zero, 3
/* 2B5F0 800501F0 10410005 */  beq        $v0, $at, .L80050208
/* 2B5F4 800501F4 24010004 */   addiu     $at, $zero, 4
/* 2B5F8 800501F8 10410003 */  beq        $v0, $at, .L80050208
/* 2B5FC 800501FC 24010005 */   addiu     $at, $zero, 5
/* 2B600 80050200 14410005 */  bne        $v0, $at, .L80050218
/* 2B604 80050204 00000000 */   nop
.L80050208:
/* 2B608 80050208 0C013FFC */  jal        func_8004FFF0
/* 2B60C 8005020C 00000000 */   nop
/* 2B610 80050210 3C03800F */  lui        $v1, %hi(D_800F06B0)
/* 2B614 80050214 8C6306B0 */  lw         $v1, %lo(D_800F06B0)($v1)
.L80050218:
/* 2B618 80050218 3C108017 */  lui        $s0, %hi(D_80174874)
/* 2B61C 8005021C 26104874 */  addiu      $s0, $s0, %lo(D_80174874)
/* 2B620 80050220 8E0E0000 */  lw         $t6, ($s0)
/* 2B624 80050224 2DC10009 */  sltiu      $at, $t6, 9
/* 2B628 80050228 10200052 */  beqz       $at, .L80050374
/* 2B62C 8005022C 000E7080 */   sll       $t6, $t6, 2
/* 2B630 80050230 3C018011 */  lui        $at, %hi(D_8010C8D0)
/* 2B634 80050234 002E0821 */  addu       $at, $at, $t6
/* 2B638 80050238 8C2EC8D0 */  lw         $t6, %lo(D_8010C8D0)($at)
/* 2B63C 8005023C 01C00008 */  jr         $t6
/* 2B640 80050240 00000000 */   nop
/* 2B644 80050244 4480B000 */  mtc1       $zero, $f22
/* 2B648 80050248 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B64C 8005024C E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B650 80050250 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B654 80050254 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B658 80050258 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B65C 8005025C 1000004C */  b          .L80050390
/* 2B660 80050260 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B664 80050264 4480B000 */  mtc1       $zero, $f22
/* 2B668 80050268 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B66C 8005026C E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B670 80050270 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B674 80050274 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B678 80050278 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B67C 8005027C 10000044 */  b          .L80050390
/* 2B680 80050280 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B684 80050284 4480B000 */  mtc1       $zero, $f22
/* 2B688 80050288 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B68C 8005028C E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B690 80050290 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B694 80050294 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B698 80050298 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B69C 8005029C 1000003C */  b          .L80050390
/* 2B6A0 800502A0 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B6A4 800502A4 3C018011 */  lui        $at, %hi(D_8010C8F4)
/* 2B6A8 800502A8 C424C8F4 */  lwc1       $f4, %lo(D_8010C8F4)($at)
/* 2B6AC 800502AC 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B6B0 800502B0 4480B000 */  mtc1       $zero, $f22
/* 2B6B4 800502B4 E424070C */  swc1       $f4, %lo(D_800F070C)($at)
/* 2B6B8 800502B8 3C018011 */  lui        $at, %hi(D_8010C8F8)
/* 2B6BC 800502BC C426C8F8 */  lwc1       $f6, %lo(D_8010C8F8)($at)
/* 2B6C0 800502C0 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B6C4 800502C4 E4260710 */  swc1       $f6, %lo(D_800F0710)($at)
/* 2B6C8 800502C8 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B6CC 800502CC 10000030 */  b          .L80050390
/* 2B6D0 800502D0 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B6D4 800502D4 4480B000 */  mtc1       $zero, $f22
/* 2B6D8 800502D8 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B6DC 800502DC E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B6E0 800502E0 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B6E4 800502E4 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B6E8 800502E8 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B6EC 800502EC 10000028 */  b          .L80050390
/* 2B6F0 800502F0 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B6F4 800502F4 4480B000 */  mtc1       $zero, $f22
/* 2B6F8 800502F8 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B6FC 800502FC E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B700 80050300 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B704 80050304 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B708 80050308 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B70C 8005030C 10000020 */  b          .L80050390
/* 2B710 80050310 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B714 80050314 4480B000 */  mtc1       $zero, $f22
/* 2B718 80050318 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B71C 8005031C E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B720 80050320 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B724 80050324 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B728 80050328 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B72C 8005032C 10000018 */  b          .L80050390
/* 2B730 80050330 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B734 80050334 4480B000 */  mtc1       $zero, $f22
/* 2B738 80050338 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B73C 8005033C E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B740 80050340 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B744 80050344 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B748 80050348 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B74C 8005034C 10000010 */  b          .L80050390
/* 2B750 80050350 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
/* 2B754 80050354 4480B000 */  mtc1       $zero, $f22
/* 2B758 80050358 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B75C 8005035C E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B760 80050360 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B764 80050364 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B768 80050368 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B76C 8005036C 10000008 */  b          .L80050390
/* 2B770 80050370 E4360714 */   swc1      $f22, %lo(D_800F0714)($at)
.L80050374:
/* 2B774 80050374 4480B000 */  mtc1       $zero, $f22
/* 2B778 80050378 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2B77C 8005037C E436070C */  swc1       $f22, %lo(D_800F070C)($at)
/* 2B780 80050380 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2B784 80050384 E4360710 */  swc1       $f22, %lo(D_800F0710)($at)
/* 2B788 80050388 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2B78C 8005038C E4360714 */  swc1       $f22, %lo(D_800F0714)($at)
.L80050390:
/* 2B790 80050390 3C0F8017 */  lui        $t7, %hi(D_80175680)
/* 2B794 80050394 95EF5680 */  lhu        $t7, %lo(D_80175680)($t7)
/* 2B798 80050398 24010001 */  addiu      $at, $zero, 1
/* 2B79C 8005039C 31F80020 */  andi       $t8, $t7, 0x20
/* 2B7A0 800503A0 130002C9 */  beqz       $t8, .L80050EC8
/* 2B7A4 800503A4 00000000 */   nop
/* 2B7A8 800503A8 146102C7 */  bne        $v1, $at, .L80050EC8
/* 2B7AC 800503AC 00002025 */   or        $a0, $zero, $zero
/* 2B7B0 800503B0 00002825 */  or         $a1, $zero, $zero
/* 2B7B4 800503B4 00003025 */  or         $a2, $zero, $zero
/* 2B7B8 800503B8 0C01849C */  jal        func_80061270
/* 2B7BC 800503BC 24070080 */   addiu     $a3, $zero, 0x80
/* 2B7C0 800503C0 3C013F80 */  lui        $at, 0x3f80
/* 2B7C4 800503C4 4481A000 */  mtc1       $at, $f20
/* 2B7C8 800503C8 3C0142A0 */  lui        $at, 0x42a0
/* 2B7CC 800503CC 44814000 */  mtc1       $at, $f8
/* 2B7D0 800503D0 3C014340 */  lui        $at, 0x4340
/* 2B7D4 800503D4 44815000 */  mtc1       $at, $f10
/* 2B7D8 800503D8 4406B000 */  mfc1       $a2, $f22
/* 2B7DC 800503DC 4407B000 */  mfc1       $a3, $f22
/* 2B7E0 800503E0 4600B306 */  mov.s      $f12, $f22
/* 2B7E4 800503E4 4600B386 */  mov.s      $f14, $f22
/* 2B7E8 800503E8 E7B6001C */  swc1       $f22, 0x1c($sp)
/* 2B7EC 800503EC AFA00020 */  sw         $zero, 0x20($sp)
/* 2B7F0 800503F0 E7B40010 */  swc1       $f20, 0x10($sp)
/* 2B7F4 800503F4 E7A80014 */  swc1       $f8, 0x14($sp)
/* 2B7F8 800503F8 0C016BF4 */  jal        func_8005AFD0
/* 2B7FC 800503FC E7AA0018 */   swc1      $f10, 0x18($sp)
/* 2B800 80050400 241900C8 */  addiu      $t9, $zero, 0xc8
/* 2B804 80050404 240800C8 */  addiu      $t0, $zero, 0xc8
/* 2B808 80050408 240900FF */  addiu      $t1, $zero, 0xff
/* 2B80C 8005040C 240A00BF */  addiu      $t2, $zero, 0xbf
/* 2B810 80050410 240B000A */  addiu      $t3, $zero, 0xa
/* 2B814 80050414 240C00FF */  addiu      $t4, $zero, 0xff
/* 2B818 80050418 240D00C8 */  addiu      $t5, $zero, 0xc8
/* 2B81C 8005041C 240E00C8 */  addiu      $t6, $zero, 0xc8
/* 2B820 80050420 240F00FF */  addiu      $t7, $zero, 0xff
/* 2B824 80050424 AFAF003C */  sw         $t7, 0x3c($sp)
/* 2B828 80050428 AFAE0034 */  sw         $t6, 0x34($sp)
/* 2B82C 8005042C AFAD0030 */  sw         $t5, 0x30($sp)
/* 2B830 80050430 AFAC002C */  sw         $t4, 0x2c($sp)
/* 2B834 80050434 AFAB0024 */  sw         $t3, 0x24($sp)
/* 2B838 80050438 AFAA0020 */  sw         $t2, 0x20($sp)
/* 2B83C 8005043C AFA9001C */  sw         $t1, 0x1c($sp)
/* 2B840 80050440 AFA80014 */  sw         $t0, 0x14($sp)
/* 2B844 80050444 AFB90010 */  sw         $t9, 0x10($sp)
/* 2B848 80050448 240400BF */  addiu      $a0, $zero, 0xbf
/* 2B84C 8005044C 2405000A */  addiu      $a1, $zero, 0xa
/* 2B850 80050450 00003025 */  or         $a2, $zero, $zero
/* 2B854 80050454 240700FF */  addiu      $a3, $zero, 0xff
/* 2B858 80050458 AFA00018 */  sw         $zero, 0x18($sp)
/* 2B85C 8005045C AFA00028 */  sw         $zero, 0x28($sp)
/* 2B860 80050460 0C0184C2 */  jal        func_80061308
/* 2B864 80050464 AFA00038 */   sw        $zero, 0x38($sp)
/* 2B868 80050468 8E180000 */  lw         $t8, ($s0)
/* 2B86C 8005046C 2F01000F */  sltiu      $at, $t8, 0xf
/* 2B870 80050470 102001C2 */  beqz       $at, .L80050B7C
/* 2B874 80050474 0018C080 */   sll       $t8, $t8, 2
/* 2B878 80050478 3C018011 */  lui        $at, %hi(D_8010C8FC)
/* 2B87C 8005047C 00380821 */  addu       $at, $at, $t8
/* 2B880 80050480 8C38C8FC */  lw         $t8, %lo(D_8010C8FC)($at)
/* 2B884 80050484 03000008 */  jr         $t8
/* 2B888 80050488 00000000 */   nop
/* 2B88C 8005048C 3C014200 */  lui        $at, 0x4200
/* 2B890 80050490 44816000 */  mtc1       $at, $f12
/* 2B894 80050494 3C198011 */  lui        $t9, %hi(D_8010C7C4)
/* 2B898 80050498 2739C7C4 */  addiu      $t9, $t9, %lo(D_8010C7C4)
/* 2B89C 8005049C 4406B000 */  mfc1       $a2, $f22
/* 2B8A0 800504A0 4407A000 */  mfc1       $a3, $f20
/* 2B8A4 800504A4 24080001 */  addiu      $t0, $zero, 1
/* 2B8A8 800504A8 AFA80014 */  sw         $t0, 0x14($sp)
/* 2B8AC 800504AC AFB90010 */  sw         $t9, 0x10($sp)
/* 2B8B0 800504B0 0C0200FC */  jal        func_800803F0
/* 2B8B4 800504B4 46006386 */   mov.s     $f14, $f12
/* 2B8B8 800504B8 3C098024 */  lui        $t1, %hi(D_80240CD8)
/* 2B8BC 800504BC 8D290CD8 */  lw         $t1, %lo(D_80240CD8)($t1)
/* 2B8C0 800504C0 3C014200 */  lui        $at, 0x4200
/* 2B8C4 800504C4 44816000 */  mtc1       $at, $f12
/* 2B8C8 800504C8 44892000 */  mtc1       $t1, $f4
/* 2B8CC 800504CC 3C014280 */  lui        $at, 0x4280
/* 2B8D0 800504D0 44817000 */  mtc1       $at, $f14
/* 2B8D4 800504D4 468021A0 */  cvt.s.w    $f6, $f4
/* 2B8D8 800504D8 4406B000 */  mfc1       $a2, $f22
/* 2B8DC 800504DC 4407A000 */  mfc1       $a3, $f20
/* 2B8E0 800504E0 240A0002 */  addiu      $t2, $zero, 2
/* 2B8E4 800504E4 AFAA0014 */  sw         $t2, 0x14($sp)
/* 2B8E8 800504E8 AFA00018 */  sw         $zero, 0x18($sp)
/* 2B8EC 800504EC 0C01FAF9 */  jal        func_8007EBE4
/* 2B8F0 800504F0 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2B8F4 800504F4 100001A1 */  b          .L80050B7C
/* 2B8F8 800504F8 00000000 */   nop
/* 2B8FC 800504FC 3C014200 */  lui        $at, 0x4200
/* 2B900 80050500 3C0B8011 */  lui        $t3, %hi(D_8010C7CC)
/* 2B904 80050504 256BC7CC */  addiu      $t3, $t3, %lo(D_8010C7CC)
/* 2B908 80050508 44816000 */  mtc1       $at, $f12
/* 2B90C 8005050C 44817000 */  mtc1       $at, $f14
/* 2B910 80050510 4406B000 */  mfc1       $a2, $f22
/* 2B914 80050514 4407A000 */  mfc1       $a3, $f20
/* 2B918 80050518 240C0001 */  addiu      $t4, $zero, 1
/* 2B91C 8005051C AFAC0014 */  sw         $t4, 0x14($sp)
/* 2B920 80050520 0C0200FC */  jal        func_800803F0
/* 2B924 80050524 AFAB0010 */   sw        $t3, 0x10($sp)
/* 2B928 80050528 3C0D8024 */  lui        $t5, %hi(D_80240CD8)
/* 2B92C 8005052C 8DAD0CD8 */  lw         $t5, %lo(D_80240CD8)($t5)
/* 2B930 80050530 3C014200 */  lui        $at, 0x4200
/* 2B934 80050534 44816000 */  mtc1       $at, $f12
/* 2B938 80050538 448D4000 */  mtc1       $t5, $f8
/* 2B93C 8005053C 3C014280 */  lui        $at, 0x4280
/* 2B940 80050540 44817000 */  mtc1       $at, $f14
/* 2B944 80050544 468042A0 */  cvt.s.w    $f10, $f8
/* 2B948 80050548 4406B000 */  mfc1       $a2, $f22
/* 2B94C 8005054C 4407A000 */  mfc1       $a3, $f20
/* 2B950 80050550 240E0002 */  addiu      $t6, $zero, 2
/* 2B954 80050554 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2B958 80050558 AFA00018 */  sw         $zero, 0x18($sp)
/* 2B95C 8005055C 0C01FAF9 */  jal        func_8007EBE4
/* 2B960 80050560 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2B964 80050564 10000185 */  b          .L80050B7C
/* 2B968 80050568 00000000 */   nop
/* 2B96C 8005056C 3C014200 */  lui        $at, 0x4200
/* 2B970 80050570 3C0F8011 */  lui        $t7, %hi(D_8010C7D4)
/* 2B974 80050574 25EFC7D4 */  addiu      $t7, $t7, %lo(D_8010C7D4)
/* 2B978 80050578 44816000 */  mtc1       $at, $f12
/* 2B97C 8005057C 44817000 */  mtc1       $at, $f14
/* 2B980 80050580 4406B000 */  mfc1       $a2, $f22
/* 2B984 80050584 4407A000 */  mfc1       $a3, $f20
/* 2B988 80050588 24180001 */  addiu      $t8, $zero, 1
/* 2B98C 8005058C AFB80014 */  sw         $t8, 0x14($sp)
/* 2B990 80050590 0C0200FC */  jal        func_800803F0
/* 2B994 80050594 AFAF0010 */   sw        $t7, 0x10($sp)
/* 2B998 80050598 3C198024 */  lui        $t9, %hi(D_80240CD8)
/* 2B99C 8005059C 8F390CD8 */  lw         $t9, %lo(D_80240CD8)($t9)
/* 2B9A0 800505A0 3C014200 */  lui        $at, 0x4200
/* 2B9A4 800505A4 44816000 */  mtc1       $at, $f12
/* 2B9A8 800505A8 44992000 */  mtc1       $t9, $f4
/* 2B9AC 800505AC 3C014280 */  lui        $at, 0x4280
/* 2B9B0 800505B0 44817000 */  mtc1       $at, $f14
/* 2B9B4 800505B4 468021A0 */  cvt.s.w    $f6, $f4
/* 2B9B8 800505B8 4406B000 */  mfc1       $a2, $f22
/* 2B9BC 800505BC 4407A000 */  mfc1       $a3, $f20
/* 2B9C0 800505C0 24080002 */  addiu      $t0, $zero, 2
/* 2B9C4 800505C4 AFA80014 */  sw         $t0, 0x14($sp)
/* 2B9C8 800505C8 AFA00018 */  sw         $zero, 0x18($sp)
/* 2B9CC 800505CC 0C01FAF9 */  jal        func_8007EBE4
/* 2B9D0 800505D0 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2B9D4 800505D4 10000169 */  b          .L80050B7C
/* 2B9D8 800505D8 00000000 */   nop
/* 2B9DC 800505DC 3C014200 */  lui        $at, 0x4200
/* 2B9E0 800505E0 3C098011 */  lui        $t1, %hi(D_8010C7E0)
/* 2B9E4 800505E4 2529C7E0 */  addiu      $t1, $t1, %lo(D_8010C7E0)
/* 2B9E8 800505E8 44816000 */  mtc1       $at, $f12
/* 2B9EC 800505EC 44817000 */  mtc1       $at, $f14
/* 2B9F0 800505F0 4406B000 */  mfc1       $a2, $f22
/* 2B9F4 800505F4 4407A000 */  mfc1       $a3, $f20
/* 2B9F8 800505F8 240A0001 */  addiu      $t2, $zero, 1
/* 2B9FC 800505FC AFAA0014 */  sw         $t2, 0x14($sp)
/* 2BA00 80050600 0C0200FC */  jal        func_800803F0
/* 2BA04 80050604 AFA90010 */   sw        $t1, 0x10($sp)
/* 2BA08 80050608 3C0B8024 */  lui        $t3, %hi(D_80240CD8)
/* 2BA0C 8005060C 8D6B0CD8 */  lw         $t3, %lo(D_80240CD8)($t3)
/* 2BA10 80050610 3C014200 */  lui        $at, 0x4200
/* 2BA14 80050614 44816000 */  mtc1       $at, $f12
/* 2BA18 80050618 448B4000 */  mtc1       $t3, $f8
/* 2BA1C 8005061C 3C014280 */  lui        $at, 0x4280
/* 2BA20 80050620 44817000 */  mtc1       $at, $f14
/* 2BA24 80050624 468042A0 */  cvt.s.w    $f10, $f8
/* 2BA28 80050628 4406B000 */  mfc1       $a2, $f22
/* 2BA2C 8005062C 4407A000 */  mfc1       $a3, $f20
/* 2BA30 80050630 240C0002 */  addiu      $t4, $zero, 2
/* 2BA34 80050634 AFAC0014 */  sw         $t4, 0x14($sp)
/* 2BA38 80050638 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BA3C 8005063C 0C01FAF9 */  jal        func_8007EBE4
/* 2BA40 80050640 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2BA44 80050644 1000014D */  b          .L80050B7C
/* 2BA48 80050648 00000000 */   nop
/* 2BA4C 8005064C 3C014200 */  lui        $at, 0x4200
/* 2BA50 80050650 44816000 */  mtc1       $at, $f12
/* 2BA54 80050654 3C0D8011 */  lui        $t5, %hi(D_8010C7F0)
/* 2BA58 80050658 25ADC7F0 */  addiu      $t5, $t5, %lo(D_8010C7F0)
/* 2BA5C 8005065C 4406B000 */  mfc1       $a2, $f22
/* 2BA60 80050660 4407A000 */  mfc1       $a3, $f20
/* 2BA64 80050664 240E0001 */  addiu      $t6, $zero, 1
/* 2BA68 80050668 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2BA6C 8005066C AFAD0010 */  sw         $t5, 0x10($sp)
/* 2BA70 80050670 0C0200FC */  jal        func_800803F0
/* 2BA74 80050674 46006386 */   mov.s     $f14, $f12
/* 2BA78 80050678 3C0F8024 */  lui        $t7, %hi(D_80240CD8)
/* 2BA7C 8005067C 8DEF0CD8 */  lw         $t7, %lo(D_80240CD8)($t7)
/* 2BA80 80050680 3C014200 */  lui        $at, 0x4200
/* 2BA84 80050684 44816000 */  mtc1       $at, $f12
/* 2BA88 80050688 448F2000 */  mtc1       $t7, $f4
/* 2BA8C 8005068C 3C014280 */  lui        $at, 0x4280
/* 2BA90 80050690 44817000 */  mtc1       $at, $f14
/* 2BA94 80050694 468021A0 */  cvt.s.w    $f6, $f4
/* 2BA98 80050698 4406B000 */  mfc1       $a2, $f22
/* 2BA9C 8005069C 4407A000 */  mfc1       $a3, $f20
/* 2BAA0 800506A0 24180002 */  addiu      $t8, $zero, 2
/* 2BAA4 800506A4 AFB80014 */  sw         $t8, 0x14($sp)
/* 2BAA8 800506A8 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BAAC 800506AC 0C01FAF9 */  jal        func_8007EBE4
/* 2BAB0 800506B0 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2BAB4 800506B4 10000131 */  b          .L80050B7C
/* 2BAB8 800506B8 00000000 */   nop
/* 2BABC 800506BC 3C014200 */  lui        $at, 0x4200
/* 2BAC0 800506C0 3C198011 */  lui        $t9, %hi(D_8010C800)
/* 2BAC4 800506C4 2739C800 */  addiu      $t9, $t9, %lo(D_8010C800)
/* 2BAC8 800506C8 44816000 */  mtc1       $at, $f12
/* 2BACC 800506CC 44817000 */  mtc1       $at, $f14
/* 2BAD0 800506D0 4406B000 */  mfc1       $a2, $f22
/* 2BAD4 800506D4 4407A000 */  mfc1       $a3, $f20
/* 2BAD8 800506D8 24080001 */  addiu      $t0, $zero, 1
/* 2BADC 800506DC AFA80014 */  sw         $t0, 0x14($sp)
/* 2BAE0 800506E0 0C0200FC */  jal        func_800803F0
/* 2BAE4 800506E4 AFB90010 */   sw        $t9, 0x10($sp)
/* 2BAE8 800506E8 3C098024 */  lui        $t1, %hi(D_80240CD8)
/* 2BAEC 800506EC 8D290CD8 */  lw         $t1, %lo(D_80240CD8)($t1)
/* 2BAF0 800506F0 3C014200 */  lui        $at, 0x4200
/* 2BAF4 800506F4 44816000 */  mtc1       $at, $f12
/* 2BAF8 800506F8 44894000 */  mtc1       $t1, $f8
/* 2BAFC 800506FC 3C014280 */  lui        $at, 0x4280
/* 2BB00 80050700 44817000 */  mtc1       $at, $f14
/* 2BB04 80050704 468042A0 */  cvt.s.w    $f10, $f8
/* 2BB08 80050708 4406B000 */  mfc1       $a2, $f22
/* 2BB0C 8005070C 4407A000 */  mfc1       $a3, $f20
/* 2BB10 80050710 240A0002 */  addiu      $t2, $zero, 2
/* 2BB14 80050714 AFAA0014 */  sw         $t2, 0x14($sp)
/* 2BB18 80050718 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BB1C 8005071C 0C01FAF9 */  jal        func_8007EBE4
/* 2BB20 80050720 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2BB24 80050724 10000115 */  b          .L80050B7C
/* 2BB28 80050728 00000000 */   nop
/* 2BB2C 8005072C 3C014200 */  lui        $at, 0x4200
/* 2BB30 80050730 3C0B8011 */  lui        $t3, %hi(D_8010C80C)
/* 2BB34 80050734 256BC80C */  addiu      $t3, $t3, %lo(D_8010C80C)
/* 2BB38 80050738 44816000 */  mtc1       $at, $f12
/* 2BB3C 8005073C 44817000 */  mtc1       $at, $f14
/* 2BB40 80050740 4406B000 */  mfc1       $a2, $f22
/* 2BB44 80050744 4407A000 */  mfc1       $a3, $f20
/* 2BB48 80050748 240C0001 */  addiu      $t4, $zero, 1
/* 2BB4C 8005074C AFAC0014 */  sw         $t4, 0x14($sp)
/* 2BB50 80050750 0C0200FC */  jal        func_800803F0
/* 2BB54 80050754 AFAB0010 */   sw        $t3, 0x10($sp)
/* 2BB58 80050758 3C0D8023 */  lui        $t5, %hi(D_80236974)
/* 2BB5C 8005075C 8DAD6974 */  lw         $t5, %lo(D_80236974)($t5)
/* 2BB60 80050760 3C0E8024 */  lui        $t6, 0x8024
/* 2BB64 80050764 3C014200 */  lui        $at, 0x4200
/* 2BB68 80050768 15A00014 */  bnez       $t5, .L800507BC
/* 2BB6C 8005076C 3C088024 */   lui       $t0, 0x8024
/* 2BB70 80050770 3C0F800F */  lui        $t7, %hi(D_800F0B40)
/* 2BB74 80050774 8DEF0B40 */  lw         $t7, %lo(D_800F0B40)($t7)
/* 2BB78 80050778 8DCE0CD8 */  lw         $t6, 0xcd8($t6)
/* 2BB7C 8005077C 3C014200 */  lui        $at, 0x4200
/* 2BB80 80050780 44816000 */  mtc1       $at, $f12
/* 2BB84 80050784 01CFC021 */  addu       $t8, $t6, $t7
/* 2BB88 80050788 44982000 */  mtc1       $t8, $f4
/* 2BB8C 8005078C 3C014280 */  lui        $at, 0x4280
/* 2BB90 80050790 44817000 */  mtc1       $at, $f14
/* 2BB94 80050794 468021A0 */  cvt.s.w    $f6, $f4
/* 2BB98 80050798 4406B000 */  mfc1       $a2, $f22
/* 2BB9C 8005079C 4407A000 */  mfc1       $a3, $f20
/* 2BBA0 800507A0 24190002 */  addiu      $t9, $zero, 2
/* 2BBA4 800507A4 AFB90014 */  sw         $t9, 0x14($sp)
/* 2BBA8 800507A8 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BBAC 800507AC 0C01FAF9 */  jal        func_8007EBE4
/* 2BBB0 800507B0 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2BBB4 800507B4 100000F1 */  b          .L80050B7C
/* 2BBB8 800507B8 00000000 */   nop
.L800507BC:
/* 2BBBC 800507BC 8D080CD8 */  lw         $t0, 0xcd8($t0)
/* 2BBC0 800507C0 44816000 */  mtc1       $at, $f12
/* 2BBC4 800507C4 3C014280 */  lui        $at, 0x4280
/* 2BBC8 800507C8 44884000 */  mtc1       $t0, $f8
/* 2BBCC 800507CC 44817000 */  mtc1       $at, $f14
/* 2BBD0 800507D0 4406B000 */  mfc1       $a2, $f22
/* 2BBD4 800507D4 468042A0 */  cvt.s.w    $f10, $f8
/* 2BBD8 800507D8 4407A000 */  mfc1       $a3, $f20
/* 2BBDC 800507DC 24090002 */  addiu      $t1, $zero, 2
/* 2BBE0 800507E0 AFA90014 */  sw         $t1, 0x14($sp)
/* 2BBE4 800507E4 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BBE8 800507E8 0C01FAF9 */  jal        func_8007EBE4
/* 2BBEC 800507EC E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2BBF0 800507F0 3C0A8024 */  lui        $t2, %hi(D_802478E0)
/* 2BBF4 800507F4 8D4A78E0 */  lw         $t2, %lo(D_802478E0)($t2)
/* 2BBF8 800507F8 3C01800F */  lui        $at, %hi(D_800F0B40)
/* 2BBFC 800507FC 100000DF */  b          .L80050B7C
/* 2BC00 80050800 AC2A0B40 */   sw        $t2, %lo(D_800F0B40)($at)
/* 2BC04 80050804 3C014200 */  lui        $at, 0x4200
/* 2BC08 80050808 44816000 */  mtc1       $at, $f12
/* 2BC0C 8005080C 3C0B8011 */  lui        $t3, %hi(D_8010C81C)
/* 2BC10 80050810 256BC81C */  addiu      $t3, $t3, %lo(D_8010C81C)
/* 2BC14 80050814 4406B000 */  mfc1       $a2, $f22
/* 2BC18 80050818 4407A000 */  mfc1       $a3, $f20
/* 2BC1C 8005081C 240C0001 */  addiu      $t4, $zero, 1
/* 2BC20 80050820 AFAC0014 */  sw         $t4, 0x14($sp)
/* 2BC24 80050824 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2BC28 80050828 0C0200FC */  jal        func_800803F0
/* 2BC2C 8005082C 46006386 */   mov.s     $f14, $f12
/* 2BC30 80050830 3C0D8024 */  lui        $t5, %hi(D_80240CD8)
/* 2BC34 80050834 8DAD0CD8 */  lw         $t5, %lo(D_80240CD8)($t5)
/* 2BC38 80050838 3C014200 */  lui        $at, 0x4200
/* 2BC3C 8005083C 44816000 */  mtc1       $at, $f12
/* 2BC40 80050840 448D2000 */  mtc1       $t5, $f4
/* 2BC44 80050844 3C014280 */  lui        $at, 0x4280
/* 2BC48 80050848 44817000 */  mtc1       $at, $f14
/* 2BC4C 8005084C 468021A0 */  cvt.s.w    $f6, $f4
/* 2BC50 80050850 4406B000 */  mfc1       $a2, $f22
/* 2BC54 80050854 4407A000 */  mfc1       $a3, $f20
/* 2BC58 80050858 240E0002 */  addiu      $t6, $zero, 2
/* 2BC5C 8005085C AFAE0014 */  sw         $t6, 0x14($sp)
/* 2BC60 80050860 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BC64 80050864 0C01FAF9 */  jal        func_8007EBE4
/* 2BC68 80050868 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2BC6C 8005086C 100000C3 */  b          .L80050B7C
/* 2BC70 80050870 00000000 */   nop
/* 2BC74 80050874 3C014200 */  lui        $at, 0x4200
/* 2BC78 80050878 44816000 */  mtc1       $at, $f12
/* 2BC7C 8005087C 3C0F8011 */  lui        $t7, %hi(D_8010C824)
/* 2BC80 80050880 25EFC824 */  addiu      $t7, $t7, %lo(D_8010C824)
/* 2BC84 80050884 4406B000 */  mfc1       $a2, $f22
/* 2BC88 80050888 4407A000 */  mfc1       $a3, $f20
/* 2BC8C 8005088C 24180001 */  addiu      $t8, $zero, 1
/* 2BC90 80050890 AFB80014 */  sw         $t8, 0x14($sp)
/* 2BC94 80050894 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2BC98 80050898 0C0200FC */  jal        func_800803F0
/* 2BC9C 8005089C 46006386 */   mov.s     $f14, $f12
/* 2BCA0 800508A0 3C198024 */  lui        $t9, %hi(D_80240CD8)
/* 2BCA4 800508A4 8F390CD8 */  lw         $t9, %lo(D_80240CD8)($t9)
/* 2BCA8 800508A8 3C014200 */  lui        $at, 0x4200
/* 2BCAC 800508AC 44816000 */  mtc1       $at, $f12
/* 2BCB0 800508B0 44994000 */  mtc1       $t9, $f8
/* 2BCB4 800508B4 3C014280 */  lui        $at, 0x4280
/* 2BCB8 800508B8 44817000 */  mtc1       $at, $f14
/* 2BCBC 800508BC 468042A0 */  cvt.s.w    $f10, $f8
/* 2BCC0 800508C0 4406B000 */  mfc1       $a2, $f22
/* 2BCC4 800508C4 4407A000 */  mfc1       $a3, $f20
/* 2BCC8 800508C8 24080002 */  addiu      $t0, $zero, 2
/* 2BCCC 800508CC AFA80014 */  sw         $t0, 0x14($sp)
/* 2BCD0 800508D0 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BCD4 800508D4 0C01FAF9 */  jal        func_8007EBE4
/* 2BCD8 800508D8 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2BCDC 800508DC 100000A7 */  b          .L80050B7C
/* 2BCE0 800508E0 00000000 */   nop
/* 2BCE4 800508E4 3C014200 */  lui        $at, 0x4200
/* 2BCE8 800508E8 44816000 */  mtc1       $at, $f12
/* 2BCEC 800508EC 3C098011 */  lui        $t1, %hi(D_8010C838)
/* 2BCF0 800508F0 2529C838 */  addiu      $t1, $t1, %lo(D_8010C838)
/* 2BCF4 800508F4 4406B000 */  mfc1       $a2, $f22
/* 2BCF8 800508F8 4407A000 */  mfc1       $a3, $f20
/* 2BCFC 800508FC 240A0001 */  addiu      $t2, $zero, 1
/* 2BD00 80050900 AFAA0014 */  sw         $t2, 0x14($sp)
/* 2BD04 80050904 AFA90010 */  sw         $t1, 0x10($sp)
/* 2BD08 80050908 0C0200FC */  jal        func_800803F0
/* 2BD0C 8005090C 46006386 */   mov.s     $f14, $f12
/* 2BD10 80050910 3C0B8024 */  lui        $t3, %hi(D_80240CD8)
/* 2BD14 80050914 8D6B0CD8 */  lw         $t3, %lo(D_80240CD8)($t3)
/* 2BD18 80050918 3C014200 */  lui        $at, 0x4200
/* 2BD1C 8005091C 44816000 */  mtc1       $at, $f12
/* 2BD20 80050920 448B2000 */  mtc1       $t3, $f4
/* 2BD24 80050924 3C014280 */  lui        $at, 0x4280
/* 2BD28 80050928 44817000 */  mtc1       $at, $f14
/* 2BD2C 8005092C 468021A0 */  cvt.s.w    $f6, $f4
/* 2BD30 80050930 4406B000 */  mfc1       $a2, $f22
/* 2BD34 80050934 4407A000 */  mfc1       $a3, $f20
/* 2BD38 80050938 240C0002 */  addiu      $t4, $zero, 2
/* 2BD3C 8005093C AFAC0014 */  sw         $t4, 0x14($sp)
/* 2BD40 80050940 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BD44 80050944 0C01FAF9 */  jal        func_8007EBE4
/* 2BD48 80050948 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2BD4C 8005094C 1000008B */  b          .L80050B7C
/* 2BD50 80050950 00000000 */   nop
/* 2BD54 80050954 3C014200 */  lui        $at, 0x4200
/* 2BD58 80050958 44816000 */  mtc1       $at, $f12
/* 2BD5C 8005095C 3C0D8011 */  lui        $t5, %hi(D_8010C850)
/* 2BD60 80050960 25ADC850 */  addiu      $t5, $t5, %lo(D_8010C850)
/* 2BD64 80050964 4406B000 */  mfc1       $a2, $f22
/* 2BD68 80050968 4407A000 */  mfc1       $a3, $f20
/* 2BD6C 8005096C 240E0001 */  addiu      $t6, $zero, 1
/* 2BD70 80050970 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2BD74 80050974 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2BD78 80050978 0C0200FC */  jal        func_800803F0
/* 2BD7C 8005097C 46006386 */   mov.s     $f14, $f12
/* 2BD80 80050980 3C0F8024 */  lui        $t7, %hi(D_80240CD8)
/* 2BD84 80050984 8DEF0CD8 */  lw         $t7, %lo(D_80240CD8)($t7)
/* 2BD88 80050988 3C014200 */  lui        $at, 0x4200
/* 2BD8C 8005098C 44816000 */  mtc1       $at, $f12
/* 2BD90 80050990 448F4000 */  mtc1       $t7, $f8
/* 2BD94 80050994 3C014280 */  lui        $at, 0x4280
/* 2BD98 80050998 44817000 */  mtc1       $at, $f14
/* 2BD9C 8005099C 468042A0 */  cvt.s.w    $f10, $f8
/* 2BDA0 800509A0 4406B000 */  mfc1       $a2, $f22
/* 2BDA4 800509A4 4407A000 */  mfc1       $a3, $f20
/* 2BDA8 800509A8 24180002 */  addiu      $t8, $zero, 2
/* 2BDAC 800509AC AFB80014 */  sw         $t8, 0x14($sp)
/* 2BDB0 800509B0 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BDB4 800509B4 0C01FAF9 */  jal        func_8007EBE4
/* 2BDB8 800509B8 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2BDBC 800509BC 1000006F */  b          .L80050B7C
/* 2BDC0 800509C0 00000000 */   nop
/* 2BDC4 800509C4 3C014200 */  lui        $at, 0x4200
/* 2BDC8 800509C8 44816000 */  mtc1       $at, $f12
/* 2BDCC 800509CC 3C198011 */  lui        $t9, %hi(D_8010C860)
/* 2BDD0 800509D0 2739C860 */  addiu      $t9, $t9, %lo(D_8010C860)
/* 2BDD4 800509D4 4406B000 */  mfc1       $a2, $f22
/* 2BDD8 800509D8 4407A000 */  mfc1       $a3, $f20
/* 2BDDC 800509DC 24080001 */  addiu      $t0, $zero, 1
/* 2BDE0 800509E0 AFA80014 */  sw         $t0, 0x14($sp)
/* 2BDE4 800509E4 AFB90010 */  sw         $t9, 0x10($sp)
/* 2BDE8 800509E8 0C0200FC */  jal        func_800803F0
/* 2BDEC 800509EC 46006386 */   mov.s     $f14, $f12
/* 2BDF0 800509F0 3C098024 */  lui        $t1, %hi(D_80240CD8)
/* 2BDF4 800509F4 8D290CD8 */  lw         $t1, %lo(D_80240CD8)($t1)
/* 2BDF8 800509F8 3C014200 */  lui        $at, 0x4200
/* 2BDFC 800509FC 44816000 */  mtc1       $at, $f12
/* 2BE00 80050A00 44892000 */  mtc1       $t1, $f4
/* 2BE04 80050A04 3C014280 */  lui        $at, 0x4280
/* 2BE08 80050A08 44817000 */  mtc1       $at, $f14
/* 2BE0C 80050A0C 468021A0 */  cvt.s.w    $f6, $f4
/* 2BE10 80050A10 4406B000 */  mfc1       $a2, $f22
/* 2BE14 80050A14 4407A000 */  mfc1       $a3, $f20
/* 2BE18 80050A18 240A0002 */  addiu      $t2, $zero, 2
/* 2BE1C 80050A1C AFAA0014 */  sw         $t2, 0x14($sp)
/* 2BE20 80050A20 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BE24 80050A24 0C01FAF9 */  jal        func_8007EBE4
/* 2BE28 80050A28 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2BE2C 80050A2C 10000053 */  b          .L80050B7C
/* 2BE30 80050A30 00000000 */   nop
/* 2BE34 80050A34 3C014200 */  lui        $at, 0x4200
/* 2BE38 80050A38 44816000 */  mtc1       $at, $f12
/* 2BE3C 80050A3C 3C0B8011 */  lui        $t3, %hi(D_8010C870)
/* 2BE40 80050A40 256BC870 */  addiu      $t3, $t3, %lo(D_8010C870)
/* 2BE44 80050A44 4406B000 */  mfc1       $a2, $f22
/* 2BE48 80050A48 4407A000 */  mfc1       $a3, $f20
/* 2BE4C 80050A4C 240C0001 */  addiu      $t4, $zero, 1
/* 2BE50 80050A50 AFAC0014 */  sw         $t4, 0x14($sp)
/* 2BE54 80050A54 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2BE58 80050A58 0C0200FC */  jal        func_800803F0
/* 2BE5C 80050A5C 46006386 */   mov.s     $f14, $f12
/* 2BE60 80050A60 3C0D8024 */  lui        $t5, %hi(D_80240CD8)
/* 2BE64 80050A64 8DAD0CD8 */  lw         $t5, %lo(D_80240CD8)($t5)
/* 2BE68 80050A68 3C014200 */  lui        $at, 0x4200
/* 2BE6C 80050A6C 44816000 */  mtc1       $at, $f12
/* 2BE70 80050A70 448D4000 */  mtc1       $t5, $f8
/* 2BE74 80050A74 3C014280 */  lui        $at, 0x4280
/* 2BE78 80050A78 44817000 */  mtc1       $at, $f14
/* 2BE7C 80050A7C 468042A0 */  cvt.s.w    $f10, $f8
/* 2BE80 80050A80 4406B000 */  mfc1       $a2, $f22
/* 2BE84 80050A84 4407A000 */  mfc1       $a3, $f20
/* 2BE88 80050A88 240E0002 */  addiu      $t6, $zero, 2
/* 2BE8C 80050A8C AFAE0014 */  sw         $t6, 0x14($sp)
/* 2BE90 80050A90 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BE94 80050A94 0C01FAF9 */  jal        func_8007EBE4
/* 2BE98 80050A98 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2BE9C 80050A9C 10000037 */  b          .L80050B7C
/* 2BEA0 80050AA0 00000000 */   nop
/* 2BEA4 80050AA4 3C014200 */  lui        $at, 0x4200
/* 2BEA8 80050AA8 44816000 */  mtc1       $at, $f12
/* 2BEAC 80050AAC 3C0F8011 */  lui        $t7, %hi(D_8010C888)
/* 2BEB0 80050AB0 25EFC888 */  addiu      $t7, $t7, %lo(D_8010C888)
/* 2BEB4 80050AB4 4406B000 */  mfc1       $a2, $f22
/* 2BEB8 80050AB8 4407A000 */  mfc1       $a3, $f20
/* 2BEBC 80050ABC 24180001 */  addiu      $t8, $zero, 1
/* 2BEC0 80050AC0 AFB80014 */  sw         $t8, 0x14($sp)
/* 2BEC4 80050AC4 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2BEC8 80050AC8 0C0200FC */  jal        func_800803F0
/* 2BECC 80050ACC 46006386 */   mov.s     $f14, $f12
/* 2BED0 80050AD0 3C198024 */  lui        $t9, %hi(D_80240CD8)
/* 2BED4 80050AD4 8F390CD8 */  lw         $t9, %lo(D_80240CD8)($t9)
/* 2BED8 80050AD8 3C014200 */  lui        $at, 0x4200
/* 2BEDC 80050ADC 44816000 */  mtc1       $at, $f12
/* 2BEE0 80050AE0 44992000 */  mtc1       $t9, $f4
/* 2BEE4 80050AE4 3C014280 */  lui        $at, 0x4280
/* 2BEE8 80050AE8 44817000 */  mtc1       $at, $f14
/* 2BEEC 80050AEC 468021A0 */  cvt.s.w    $f6, $f4
/* 2BEF0 80050AF0 4406B000 */  mfc1       $a2, $f22
/* 2BEF4 80050AF4 4407A000 */  mfc1       $a3, $f20
/* 2BEF8 80050AF8 24080002 */  addiu      $t0, $zero, 2
/* 2BEFC 80050AFC AFA80014 */  sw         $t0, 0x14($sp)
/* 2BF00 80050B00 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BF04 80050B04 0C01FAF9 */  jal        func_8007EBE4
/* 2BF08 80050B08 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2BF0C 80050B0C 1000001B */  b          .L80050B7C
/* 2BF10 80050B10 00000000 */   nop
/* 2BF14 80050B14 3C014200 */  lui        $at, 0x4200
/* 2BF18 80050B18 44816000 */  mtc1       $at, $f12
/* 2BF1C 80050B1C 3C098011 */  lui        $t1, %hi(D_8010C89C)
/* 2BF20 80050B20 2529C89C */  addiu      $t1, $t1, %lo(D_8010C89C)
/* 2BF24 80050B24 4406B000 */  mfc1       $a2, $f22
/* 2BF28 80050B28 4407A000 */  mfc1       $a3, $f20
/* 2BF2C 80050B2C 240A0001 */  addiu      $t2, $zero, 1
/* 2BF30 80050B30 AFAA0014 */  sw         $t2, 0x14($sp)
/* 2BF34 80050B34 AFA90010 */  sw         $t1, 0x10($sp)
/* 2BF38 80050B38 0C0200FC */  jal        func_800803F0
/* 2BF3C 80050B3C 46006386 */   mov.s     $f14, $f12
/* 2BF40 80050B40 3C0B8024 */  lui        $t3, %hi(D_80240CD8)
/* 2BF44 80050B44 8D6B0CD8 */  lw         $t3, %lo(D_80240CD8)($t3)
/* 2BF48 80050B48 3C014200 */  lui        $at, 0x4200
/* 2BF4C 80050B4C 44816000 */  mtc1       $at, $f12
/* 2BF50 80050B50 448B4000 */  mtc1       $t3, $f8
/* 2BF54 80050B54 3C014280 */  lui        $at, 0x4280
/* 2BF58 80050B58 44817000 */  mtc1       $at, $f14
/* 2BF5C 80050B5C 468042A0 */  cvt.s.w    $f10, $f8
/* 2BF60 80050B60 4406B000 */  mfc1       $a2, $f22
/* 2BF64 80050B64 4407A000 */  mfc1       $a3, $f20
/* 2BF68 80050B68 240C0002 */  addiu      $t4, $zero, 2
/* 2BF6C 80050B6C AFAC0014 */  sw         $t4, 0x14($sp)
/* 2BF70 80050B70 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BF74 80050B74 0C01FAF9 */  jal        func_8007EBE4
/* 2BF78 80050B78 E7AA0010 */   swc1      $f10, 0x10($sp)
.L80050B7C:
/* 2BF7C 80050B7C 3C108017 */  lui        $s0, %hi(D_80176B74)
/* 2BF80 80050B80 3C014200 */  lui        $at, 0x4200
/* 2BF84 80050B84 26106B74 */  addiu      $s0, $s0, %lo(D_80176B74)
/* 2BF88 80050B88 44816000 */  mtc1       $at, $f12
/* 2BF8C 80050B8C 8E0D0000 */  lw         $t5, ($s0)
/* 2BF90 80050B90 3C0142C0 */  lui        $at, 0x42c0
/* 2BF94 80050B94 44817000 */  mtc1       $at, $f14
/* 2BF98 80050B98 3C01800F */  lui        $at, %hi(D_800F070C)
/* 2BF9C 80050B9C C426070C */  lwc1       $f6, %lo(D_800F070C)($at)
/* 2BFA0 80050BA0 C5A40004 */  lwc1       $f4, 4($t5)
/* 2BFA4 80050BA4 4406B000 */  mfc1       $a2, $f22
/* 2BFA8 80050BA8 240E0006 */  addiu      $t6, $zero, 6
/* 2BFAC 80050BAC 46062200 */  add.s      $f8, $f4, $f6
/* 2BFB0 80050BB0 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2BFB4 80050BB4 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BFB8 80050BB8 3C073F00 */  lui        $a3, 0x3f00
/* 2BFBC 80050BBC 0C01FC36 */  jal        func_8007F0D8
/* 2BFC0 80050BC0 E7A80010 */   swc1      $f8, 0x10($sp)
/* 2BFC4 80050BC4 3C014200 */  lui        $at, 0x4200
/* 2BFC8 80050BC8 44816000 */  mtc1       $at, $f12
/* 2BFCC 80050BCC 8E0F0000 */  lw         $t7, ($s0)
/* 2BFD0 80050BD0 3C0142E0 */  lui        $at, 0x42e0
/* 2BFD4 80050BD4 44817000 */  mtc1       $at, $f14
/* 2BFD8 80050BD8 3C01800F */  lui        $at, %hi(D_800F0710)
/* 2BFDC 80050BDC C4240710 */  lwc1       $f4, %lo(D_800F0710)($at)
/* 2BFE0 80050BE0 C5EA0008 */  lwc1       $f10, 8($t7)
/* 2BFE4 80050BE4 4406B000 */  mfc1       $a2, $f22
/* 2BFE8 80050BE8 24180006 */  addiu      $t8, $zero, 6
/* 2BFEC 80050BEC 46045180 */  add.s      $f6, $f10, $f4
/* 2BFF0 80050BF0 AFB80014 */  sw         $t8, 0x14($sp)
/* 2BFF4 80050BF4 AFA00018 */  sw         $zero, 0x18($sp)
/* 2BFF8 80050BF8 3C073F00 */  lui        $a3, 0x3f00
/* 2BFFC 80050BFC 0C01FC36 */  jal        func_8007F0D8
/* 2C000 80050C00 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2C004 80050C04 3C014200 */  lui        $at, 0x4200
/* 2C008 80050C08 44816000 */  mtc1       $at, $f12
/* 2C00C 80050C0C 8E190000 */  lw         $t9, ($s0)
/* 2C010 80050C10 3C014300 */  lui        $at, 0x4300
/* 2C014 80050C14 44817000 */  mtc1       $at, $f14
/* 2C018 80050C18 3C01800F */  lui        $at, %hi(D_800F0714)
/* 2C01C 80050C1C C42A0714 */  lwc1       $f10, %lo(D_800F0714)($at)
/* 2C020 80050C20 C728000C */  lwc1       $f8, 0xc($t9)
/* 2C024 80050C24 4406B000 */  mfc1       $a2, $f22
/* 2C028 80050C28 24080006 */  addiu      $t0, $zero, 6
/* 2C02C 80050C2C 460A4100 */  add.s      $f4, $f8, $f10
/* 2C030 80050C30 AFA80014 */  sw         $t0, 0x14($sp)
/* 2C034 80050C34 AFA00018 */  sw         $zero, 0x18($sp)
/* 2C038 80050C38 3C073F00 */  lui        $a3, 0x3f00
/* 2C03C 80050C3C 0C01FC36 */  jal        func_8007F0D8
/* 2C040 80050C40 E7A40010 */   swc1      $f4, 0x10($sp)
/* 2C044 80050C44 3C028017 */  lui        $v0, %hi(D_801768A0)
/* 2C048 80050C48 244268A0 */  addiu      $v0, $v0, %lo(D_801768A0)
/* 2C04C 80050C4C C4460034 */  lwc1       $f6, 0x34($v0)
/* 2C050 80050C50 C4480028 */  lwc1       $f8, 0x28($v0)
/* 2C054 80050C54 C44A0038 */  lwc1       $f10, 0x38($v0)
/* 2C058 80050C58 C444002C */  lwc1       $f4, 0x2c($v0)
/* 2C05C 80050C5C 46083001 */  sub.s      $f0, $f6, $f8
/* 2C060 80050C60 C4480030 */  lwc1       $f8, 0x30($v0)
/* 2C064 80050C64 C446003C */  lwc1       $f6, 0x3c($v0)
/* 2C068 80050C68 46045081 */  sub.s      $f2, $f10, $f4
/* 2C06C 80050C6C 46000282 */  mul.s      $f10, $f0, $f0
/* 2C070 80050C70 46083381 */  sub.s      $f14, $f6, $f8
/* 2C074 80050C74 46021102 */  mul.s      $f4, $f2, $f2
/* 2C078 80050C78 46045180 */  add.s      $f6, $f10, $f4
/* 2C07C 80050C7C 460E7202 */  mul.s      $f8, $f14, $f14
/* 2C080 80050C80 0C036C2C */  jal        func_800DB0B0
/* 2C084 80050C84 46083300 */   add.s     $f12, $f6, $f8
/* 2C088 80050C88 3C014200 */  lui        $at, 0x4200
/* 2C08C 80050C8C 44816000 */  mtc1       $at, $f12
/* 2C090 80050C90 3C014320 */  lui        $at, 0x4320
/* 2C094 80050C94 44817000 */  mtc1       $at, $f14
/* 2C098 80050C98 4406B000 */  mfc1       $a2, $f22
/* 2C09C 80050C9C 24090006 */  addiu      $t1, $zero, 6
/* 2C0A0 80050CA0 AFA90014 */  sw         $t1, 0x14($sp)
/* 2C0A4 80050CA4 3C073F00 */  lui        $a3, 0x3f00
/* 2C0A8 80050CA8 E7A00010 */  swc1       $f0, 0x10($sp)
/* 2C0AC 80050CAC 0C01FC36 */  jal        func_8007F0D8
/* 2C0B0 80050CB0 AFA00018 */   sw        $zero, 0x18($sp)
/* 2C0B4 80050CB4 24020020 */  addiu      $v0, $zero, 0x20
/* 2C0B8 80050CB8 3C108017 */  lui        $s0, %hi(D_80174880)
/* 2C0BC 80050CBC 26104880 */  addiu      $s0, $s0, %lo(D_80174880)
/* 2C0C0 80050CC0 AFA20064 */  sw         $v0, 0x64($sp)
.L80050CC4:
/* 2C0C4 80050CC4 8FA20064 */  lw         $v0, 0x64($sp)
/* 2C0C8 80050CC8 8E0A0000 */  lw         $t2, ($s0)
/* 2C0CC 80050CCC 3C014348 */  lui        $at, 0x4348
/* 2C0D0 80050CD0 44825000 */  mtc1       $v0, $f10
/* 2C0D4 80050CD4 448A2000 */  mtc1       $t2, $f4
/* 2C0D8 80050CD8 44816000 */  mtc1       $at, $f12
/* 2C0DC 80050CDC 46805520 */  cvt.s.w    $f20, $f10
/* 2C0E0 80050CE0 4406B000 */  mfc1       $a2, $f22
/* 2C0E4 80050CE4 240B0004 */  addiu      $t3, $zero, 4
/* 2C0E8 80050CE8 240C0001 */  addiu      $t4, $zero, 1
/* 2C0EC 80050CEC AFAC0018 */  sw         $t4, 0x18($sp)
/* 2C0F0 80050CF0 468021A0 */  cvt.s.w    $f6, $f4
/* 2C0F4 80050CF4 AFAB0014 */  sw         $t3, 0x14($sp)
/* 2C0F8 80050CF8 4600A386 */  mov.s      $f14, $f20
/* 2C0FC 80050CFC 3C073F00 */  lui        $a3, 0x3f00
/* 2C100 80050D00 0C01FC36 */  jal        func_8007F0D8
/* 2C104 80050D04 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2C108 80050D08 8E0D0028 */  lw         $t5, 0x28($s0)
/* 2C10C 80050D0C 3C014366 */  lui        $at, 0x4366
/* 2C110 80050D10 44816000 */  mtc1       $at, $f12
/* 2C114 80050D14 448D4000 */  mtc1       $t5, $f8
/* 2C118 80050D18 4406B000 */  mfc1       $a2, $f22
/* 2C11C 80050D1C 240E0004 */  addiu      $t6, $zero, 4
/* 2C120 80050D20 468042A0 */  cvt.s.w    $f10, $f8
/* 2C124 80050D24 240F0001 */  addiu      $t7, $zero, 1
/* 2C128 80050D28 AFAF0018 */  sw         $t7, 0x18($sp)
/* 2C12C 80050D2C AFAE0014 */  sw         $t6, 0x14($sp)
/* 2C130 80050D30 4600A386 */  mov.s      $f14, $f20
/* 2C134 80050D34 3C073F00 */  lui        $a3, 0x3f00
/* 2C138 80050D38 0C01FC36 */  jal        func_8007F0D8
/* 2C13C 80050D3C E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2C140 80050D40 8E180050 */  lw         $t8, 0x50($s0)
/* 2C144 80050D44 3C014382 */  lui        $at, 0x4382
/* 2C148 80050D48 44816000 */  mtc1       $at, $f12
/* 2C14C 80050D4C 44982000 */  mtc1       $t8, $f4
/* 2C150 80050D50 4406B000 */  mfc1       $a2, $f22
/* 2C154 80050D54 24190004 */  addiu      $t9, $zero, 4
/* 2C158 80050D58 468021A0 */  cvt.s.w    $f6, $f4
/* 2C15C 80050D5C 24080001 */  addiu      $t0, $zero, 1
/* 2C160 80050D60 AFA80018 */  sw         $t0, 0x18($sp)
/* 2C164 80050D64 AFB90014 */  sw         $t9, 0x14($sp)
/* 2C168 80050D68 4600A386 */  mov.s      $f14, $f20
/* 2C16C 80050D6C 3C073F00 */  lui        $a3, 0x3f00
/* 2C170 80050D70 0C01FC36 */  jal        func_8007F0D8
/* 2C174 80050D74 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2C178 80050D78 8FA90064 */  lw         $t1, 0x64($sp)
/* 2C17C 80050D7C 3C0B8017 */  lui        $t3, %hi(D_801748A8)
/* 2C180 80050D80 256B48A8 */  addiu      $t3, $t3, %lo(D_801748A8)
/* 2C184 80050D84 26100004 */  addiu      $s0, $s0, 4
/* 2C188 80050D88 252A000C */  addiu      $t2, $t1, 0xc
/* 2C18C 80050D8C 160BFFCD */  bne        $s0, $t3, .L80050CC4
/* 2C190 80050D90 AFAA0064 */   sw        $t2, 0x64($sp)
/* 2C194 80050D94 3C108017 */  lui        $s0, %hi(D_80174880)
/* 2C198 80050D98 26104880 */  addiu      $s0, $s0, %lo(D_80174880)
/* 2C19C 80050D9C 8E0C0078 */  lw         $t4, 0x78($s0)
/* 2C1A0 80050DA0 3C014391 */  lui        $at, 0x4391
/* 2C1A4 80050DA4 4481A000 */  mtc1       $at, $f20
/* 2C1A8 80050DA8 448C4000 */  mtc1       $t4, $f8
/* 2C1AC 80050DAC 3C014200 */  lui        $at, 0x4200
/* 2C1B0 80050DB0 44817000 */  mtc1       $at, $f14
/* 2C1B4 80050DB4 468042A0 */  cvt.s.w    $f10, $f8
/* 2C1B8 80050DB8 4406B000 */  mfc1       $a2, $f22
/* 2C1BC 80050DBC 240D0004 */  addiu      $t5, $zero, 4
/* 2C1C0 80050DC0 240E0001 */  addiu      $t6, $zero, 1
/* 2C1C4 80050DC4 AFAE0018 */  sw         $t6, 0x18($sp)
/* 2C1C8 80050DC8 AFAD0014 */  sw         $t5, 0x14($sp)
/* 2C1CC 80050DCC E7AA0010 */  swc1       $f10, 0x10($sp)
/* 2C1D0 80050DD0 3C073F00 */  lui        $a3, 0x3f00
/* 2C1D4 80050DD4 0C01FC36 */  jal        func_8007F0D8
/* 2C1D8 80050DD8 4600A306 */   mov.s     $f12, $f20
/* 2C1DC 80050DDC 8E0F007C */  lw         $t7, 0x7c($s0)
/* 2C1E0 80050DE0 3C014230 */  lui        $at, 0x4230
/* 2C1E4 80050DE4 44817000 */  mtc1       $at, $f14
/* 2C1E8 80050DE8 448F2000 */  mtc1       $t7, $f4
/* 2C1EC 80050DEC 4406B000 */  mfc1       $a2, $f22
/* 2C1F0 80050DF0 24180004 */  addiu      $t8, $zero, 4
/* 2C1F4 80050DF4 468021A0 */  cvt.s.w    $f6, $f4
/* 2C1F8 80050DF8 24190001 */  addiu      $t9, $zero, 1
/* 2C1FC 80050DFC AFB90018 */  sw         $t9, 0x18($sp)
/* 2C200 80050E00 AFB80014 */  sw         $t8, 0x14($sp)
/* 2C204 80050E04 4600A306 */  mov.s      $f12, $f20
/* 2C208 80050E08 3C073F00 */  lui        $a3, 0x3f00
/* 2C20C 80050E0C 0C01FC36 */  jal        func_8007F0D8
/* 2C210 80050E10 E7A60010 */   swc1      $f6, 0x10($sp)
/* 2C214 80050E14 3C088024 */  lui        $t0, %hi(D_80240CD8)
/* 2C218 80050E18 8D080CD8 */  lw         $t0, %lo(D_80240CD8)($t0)
/* 2C21C 80050E1C 3C0A8024 */  lui        $t2, %hi(D_80240CE0)
/* 2C220 80050E20 254A0CE0 */  addiu      $t2, $t2, %lo(D_80240CE0)
/* 2C224 80050E24 000848C0 */  sll        $t1, $t0, 3
/* 2C228 80050E28 01284823 */  subu       $t1, $t1, $t0
/* 2C22C 80050E2C 00094880 */  sll        $t1, $t1, 2
/* 2C230 80050E30 01284823 */  subu       $t1, $t1, $t0
/* 2C234 80050E34 000948C0 */  sll        $t1, $t1, 3
/* 2C238 80050E38 012A1021 */  addu       $v0, $t1, $t2
/* 2C23C 80050E3C C4420030 */  lwc1       $f2, 0x30($v0)
/* 2C240 80050E40 C448003C */  lwc1       $f8, 0x3c($v0)
/* 2C244 80050E44 3C014000 */  lui        $at, 0x4000
/* 2C248 80050E48 44812000 */  mtc1       $at, $f4
/* 2C24C 80050E4C 46024281 */  sub.s      $f10, $f8, $f2
/* 2C250 80050E50 C4520034 */  lwc1       $f18, 0x34($v0)
/* 2C254 80050E54 C4460040 */  lwc1       $f6, 0x40($v0)
/* 2C258 80050E58 C4560038 */  lwc1       $f22, 0x38($v0)
/* 2C25C 80050E5C 46045003 */  div.s      $f0, $f10, $f4
/* 2C260 80050E60 44815000 */  mtc1       $at, $f10
/* 2C264 80050E64 C4440044 */  lwc1       $f4, 0x44($v0)
/* 2C268 80050E68 240B0064 */  addiu      $t3, $zero, 0x64
/* 2C26C 80050E6C 46123201 */  sub.s      $f8, $f6, $f18
/* 2C270 80050E70 240C0064 */  addiu      $t4, $zero, 0x64
/* 2C274 80050E74 240D0064 */  addiu      $t5, $zero, 0x64
/* 2C278 80050E78 46162181 */  sub.s      $f6, $f4, $f22
/* 2C27C 80050E7C 240E0064 */  addiu      $t6, $zero, 0x64
/* 2C280 80050E80 AFAE0024 */  sw         $t6, 0x24($sp)
/* 2C284 80050E84 AFAD0020 */  sw         $t5, 0x20($sp)
/* 2C288 80050E88 AFAC001C */  sw         $t4, 0x1c($sp)
/* 2C28C 80050E8C AFAB0018 */  sw         $t3, 0x18($sp)
/* 2C290 80050E90 460A4403 */  div.s      $f16, $f8, $f10
/* 2C294 80050E94 44814000 */  mtc1       $at, $f8
/* 2C298 80050E98 44070000 */  mfc1       $a3, $f0
/* 2C29C 80050E9C 46001300 */  add.s      $f12, $f2, $f0
/* 2C2A0 80050EA0 46083503 */  div.s      $f20, $f6, $f8
/* 2C2A4 80050EA4 E7B00010 */  swc1       $f16, 0x10($sp)
/* 2C2A8 80050EA8 46109380 */  add.s      $f14, $f18, $f16
/* 2C2AC 80050EAC 4614B280 */  add.s      $f10, $f22, $f20
/* 2C2B0 80050EB0 E7B40014 */  swc1       $f20, 0x14($sp)
/* 2C2B4 80050EB4 44065000 */  mfc1       $a2, $f10
/* 2C2B8 80050EB8 0C02030A */  jal        func_80080C28
/* 2C2BC 80050EBC 00000000 */   nop
/* 2C2C0 80050EC0 3C03800F */  lui        $v1, %hi(D_800F06B0)
/* 2C2C4 80050EC4 8C6306B0 */  lw         $v1, %lo(D_800F06B0)($v1)
.L80050EC8:
/* 2C2C8 80050EC8 14600029 */  bnez       $v1, .L80050F70
/* 2C2CC 80050ECC 00000000 */   nop
/* 2C2D0 80050ED0 0C015797 */  jal        func_80055E5C
/* 2C2D4 80050ED4 24040800 */   addiu     $a0, $zero, 0x800
/* 2C2D8 80050ED8 10400003 */  beqz       $v0, .L80050EE8
/* 2C2DC 80050EDC 240F0001 */   addiu     $t7, $zero, 1
/* 2C2E0 80050EE0 3C01800F */  lui        $at, %hi(D_800F0B3C)
/* 2C2E4 80050EE4 AC2F0B3C */  sw         $t7, %lo(D_800F0B3C)($at)
.L80050EE8:
/* 2C2E8 80050EE8 0C015797 */  jal        func_80055E5C
/* 2C2EC 80050EEC 24040400 */   addiu     $a0, $zero, 0x400
/* 2C2F0 80050EF0 10400007 */  beqz       $v0, .L80050F10
/* 2C2F4 80050EF4 3C18800F */   lui       $t8, %hi(D_800F0B3C)
/* 2C2F8 80050EF8 8F180B3C */  lw         $t8, %lo(D_800F0B3C)($t8)
/* 2C2FC 80050EFC 24190002 */  addiu      $t9, $zero, 2
/* 2C300 80050F00 3C01800F */  lui        $at, %hi(D_800F0B3C)
/* 2C304 80050F04 1B000002 */  blez       $t8, .L80050F10
/* 2C308 80050F08 00000000 */   nop
/* 2C30C 80050F0C AC390B3C */  sw         $t9, %lo(D_800F0B3C)($at)
.L80050F10:
/* 2C310 80050F10 0C015797 */  jal        func_80055E5C
/* 2C314 80050F14 24040200 */   addiu     $a0, $zero, 0x200
/* 2C318 80050F18 10400007 */  beqz       $v0, .L80050F38
/* 2C31C 80050F1C 3C08800F */   lui       $t0, %hi(D_800F0B3C)
/* 2C320 80050F20 8D080B3C */  lw         $t0, %lo(D_800F0B3C)($t0)
/* 2C324 80050F24 24090003 */  addiu      $t1, $zero, 3
/* 2C328 80050F28 29010002 */  slti       $at, $t0, 2
/* 2C32C 80050F2C 14200002 */  bnez       $at, .L80050F38
/* 2C330 80050F30 3C01800F */   lui       $at, %hi(D_800F0B3C)
/* 2C334 80050F34 AC290B3C */  sw         $t1, %lo(D_800F0B3C)($at)
.L80050F38:
/* 2C338 80050F38 0C015797 */  jal        func_80055E5C
/* 2C33C 80050F3C 24040100 */   addiu     $a0, $zero, 0x100
/* 2C340 80050F40 10400013 */  beqz       $v0, .L80050F90
/* 2C344 80050F44 3C0A800F */   lui       $t2, %hi(D_800F0B3C)
/* 2C348 80050F48 8D4A0B3C */  lw         $t2, %lo(D_800F0B3C)($t2)
/* 2C34C 80050F4C 240B0004 */  addiu      $t3, $zero, 4
/* 2C350 80050F50 240C0001 */  addiu      $t4, $zero, 1
/* 2C354 80050F54 29410003 */  slti       $at, $t2, 3
/* 2C358 80050F58 1420000D */  bnez       $at, .L80050F90
/* 2C35C 80050F5C 3C01800F */   lui       $at, %hi(D_800F0B3C)
/* 2C360 80050F60 AC2B0B3C */  sw         $t3, %lo(D_800F0B3C)($at)
/* 2C364 80050F64 3C01800F */  lui        $at, %hi(D_800F06B0)
/* 2C368 80050F68 10000009 */  b          .L80050F90
/* 2C36C 80050F6C AC2C06B0 */   sw        $t4, %lo(D_800F06B0)($at)
.L80050F70:
/* 2C370 80050F70 0C013A7C */  jal        func_8004E9F0
/* 2C374 80050F74 00000000 */   nop
/* 2C378 80050F78 0C013AF5 */  jal        func_8004EBD4
/* 2C37C 80050F7C 00000000 */   nop
/* 2C380 80050F80 0C013B2A */  jal        func_8004ECA8
/* 2C384 80050F84 00000000 */   nop
/* 2C388 80050F88 0C013B2C */  jal        func_8004ECB0
/* 2C38C 80050F8C 00000000 */   nop
.L80050F90:
/* 2C390 80050F90 8FBF005C */  lw         $ra, 0x5c($sp)
/* 2C394 80050F94 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 2C398 80050F98 D7B60050 */  ldc1       $f22, 0x50($sp)
/* 2C39C 80050F9C 8FB00058 */  lw         $s0, 0x58($sp)
/* 2C3A0 80050FA0 03E00008 */  jr         $ra
/* 2C3A4 80050FA4 27BD0088 */   addiu     $sp, $sp, 0x88
/* 2C3A8 80050FA8 00000000 */  nop
/* 2C3AC 80050FAC 00000000 */  nop
