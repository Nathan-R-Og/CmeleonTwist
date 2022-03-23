.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E1930
/* BCD30 800E1930 3C1A800E */  lui        $k0, %hi(func_800E1940)
/* BCD34 800E1934 275A1940 */  addiu      $k0, $k0, %lo(func_800E1940)
/* BCD38 800E1938 03400008 */  jr         $k0
/* BCD3C 800E193C 00000000 */   nop

glabel func_800E1940
/* BCD40 800E1940 3C1A8025 */  lui        $k0, %hi(D_8024C2E0)
/* BCD44 800E1944 275AC2E0 */  addiu      $k0, $k0, %lo(D_8024C2E0)
/* BCD48 800E1948 FF410020 */  sd         $at, 0x20($k0)
/* BCD4C 800E194C 401B6000 */  mfc0       $k1, $12
/* BCD50 800E1950 AF5B0118 */  sw         $k1, 0x118($k0)
/* BCD54 800E1954 2401FFFC */  addiu      $at, $zero, -4
/* BCD58 800E1958 0361D824 */  and        $k1, $k1, $at
/* BCD5C 800E195C 409B6000 */  mtc0       $k1, $12
/* BCD60 800E1960 FF480058 */  sd         $t0, 0x58($k0)
/* BCD64 800E1964 FF490060 */  sd         $t1, 0x60($k0)
/* BCD68 800E1968 FF4A0068 */  sd         $t2, 0x68($k0)
/* BCD6C 800E196C AF400018 */  sw         $zero, 0x18($k0)
/* BCD70 800E1970 40086800 */  mfc0       $t0, $13
/* BCD74 800E1974 03404025 */  or         $t0, $k0, $zero
/* BCD78 800E1978 3C1A8011 */  lui        $k0, %hi(D_80109E10)
/* BCD7C 800E197C 8F5A9E10 */  lw         $k0, %lo(D_80109E10)($k0)
/* BCD80 800E1980 DD090020 */  ld         $t1, 0x20($t0)
/* BCD84 800E1984 FF490020 */  sd         $t1, 0x20($k0)
/* BCD88 800E1988 DD090118 */  ld         $t1, 0x118($t0)
/* BCD8C 800E198C FF490118 */  sd         $t1, 0x118($k0)
/* BCD90 800E1990 DD090058 */  ld         $t1, 0x58($t0)
/* BCD94 800E1994 FF490058 */  sd         $t1, 0x58($k0)
/* BCD98 800E1998 DD090060 */  ld         $t1, 0x60($t0)
/* BCD9C 800E199C FF490060 */  sd         $t1, 0x60($k0)
/* BCDA0 800E19A0 DD090068 */  ld         $t1, 0x68($t0)
/* BCDA4 800E19A4 FF490068 */  sd         $t1, 0x68($k0)
/* BCDA8 800E19A8 8F5B0118 */  lw         $k1, 0x118($k0)
/* BCDAC 800E19AC 00004012 */  mflo       $t0
/* BCDB0 800E19B0 FF480108 */  sd         $t0, 0x108($k0)
/* BCDB4 800E19B4 00004010 */  mfhi       $t0
/* BCDB8 800E19B8 3369FF00 */  andi       $t1, $k1, 0xff00
/* BCDBC 800E19BC FF420028 */  sd         $v0, 0x28($k0)
/* BCDC0 800E19C0 FF430030 */  sd         $v1, 0x30($k0)
/* BCDC4 800E19C4 FF440038 */  sd         $a0, 0x38($k0)
/* BCDC8 800E19C8 FF450040 */  sd         $a1, 0x40($k0)
/* BCDCC 800E19CC FF460048 */  sd         $a2, 0x48($k0)
/* BCDD0 800E19D0 FF470050 */  sd         $a3, 0x50($k0)
/* BCDD4 800E19D4 FF4B0070 */  sd         $t3, 0x70($k0)
/* BCDD8 800E19D8 FF4C0078 */  sd         $t4, 0x78($k0)
/* BCDDC 800E19DC FF4D0080 */  sd         $t5, 0x80($k0)
/* BCDE0 800E19E0 FF4E0088 */  sd         $t6, 0x88($k0)
/* BCDE4 800E19E4 FF4F0090 */  sd         $t7, 0x90($k0)
/* BCDE8 800E19E8 FF500098 */  sd         $s0, 0x98($k0)
/* BCDEC 800E19EC FF5100A0 */  sd         $s1, 0xa0($k0)
/* BCDF0 800E19F0 FF5200A8 */  sd         $s2, 0xa8($k0)
/* BCDF4 800E19F4 FF5300B0 */  sd         $s3, 0xb0($k0)
/* BCDF8 800E19F8 FF5400B8 */  sd         $s4, 0xb8($k0)
/* BCDFC 800E19FC FF5500C0 */  sd         $s5, 0xc0($k0)
/* BCE00 800E1A00 FF5600C8 */  sd         $s6, 0xc8($k0)
/* BCE04 800E1A04 FF5700D0 */  sd         $s7, 0xd0($k0)
/* BCE08 800E1A08 FF5800D8 */  sd         $t8, 0xd8($k0)
/* BCE0C 800E1A0C FF5900E0 */  sd         $t9, 0xe0($k0)
/* BCE10 800E1A10 FF5C00E8 */  sd         $gp, 0xe8($k0)
/* BCE14 800E1A14 FF5D00F0 */  sd         $sp, 0xf0($k0)
/* BCE18 800E1A18 FF5E00F8 */  sd         $fp, 0xf8($k0)
/* BCE1C 800E1A1C FF5F0100 */  sd         $ra, 0x100($k0)
/* BCE20 800E1A20 1120000D */  beqz       $t1, .L800E1A58
/* BCE24 800E1A24 FF480110 */   sd        $t0, 0x110($k0)
/* BCE28 800E1A28 3C088011 */  lui        $t0, %hi(D_8010901C)
/* BCE2C 800E1A2C 2508901C */  addiu      $t0, $t0, %lo(D_8010901C)
/* BCE30 800E1A30 8D080000 */  lw         $t0, ($t0)
/* BCE34 800E1A34 2401FFFF */  addiu      $at, $zero, -1
/* BCE38 800E1A38 01014026 */  xor        $t0, $t0, $at
/* BCE3C 800E1A3C 3C01FFFF */  lui        $at, 0xffff
/* BCE40 800E1A40 3108FF00 */  andi       $t0, $t0, 0xff00
/* BCE44 800E1A44 342100FF */  ori        $at, $at, 0xff
/* BCE48 800E1A48 01284825 */  or         $t1, $t1, $t0
/* BCE4C 800E1A4C 0361D824 */  and        $k1, $k1, $at
/* BCE50 800E1A50 0369D825 */  or         $k1, $k1, $t1
/* BCE54 800E1A54 AF5B0118 */  sw         $k1, 0x118($k0)
.L800E1A58:
/* BCE58 800E1A58 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* BCE5C 800E1A5C 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* BCE60 800E1A60 1120000B */  beqz       $t1, .L800E1A90
/* BCE64 800E1A64 00000000 */   nop
/* BCE68 800E1A68 3C088011 */  lui        $t0, %hi(D_8010901C)
/* BCE6C 800E1A6C 2508901C */  addiu      $t0, $t0, %lo(D_8010901C)
/* BCE70 800E1A70 8D080000 */  lw         $t0, ($t0)
/* BCE74 800E1A74 8F4C0128 */  lw         $t4, 0x128($k0)
/* BCE78 800E1A78 2401FFFF */  addiu      $at, $zero, -1
/* BCE7C 800E1A7C 00084402 */  srl        $t0, $t0, 0x10
/* BCE80 800E1A80 01014026 */  xor        $t0, $t0, $at
/* BCE84 800E1A84 3108003F */  andi       $t0, $t0, 0x3f
/* BCE88 800E1A88 010C4024 */  and        $t0, $t0, $t4
/* BCE8C 800E1A8C 01284825 */  or         $t1, $t1, $t0
.L800E1A90:
/* BCE90 800E1A90 AF490128 */  sw         $t1, 0x128($k0)
/* BCE94 800E1A94 40087000 */  mfc0       $t0, $14
/* BCE98 800E1A98 AF48011C */  sw         $t0, 0x11c($k0)
/* BCE9C 800E1A9C 8F480018 */  lw         $t0, 0x18($k0)
/* BCEA0 800E1AA0 11000014 */  beqz       $t0, .L800E1AF4
/* BCEA4 800E1AA4 00000000 */   nop
/* BCEA8 800E1AA8 4448F800 */  cfc1       $t0, $31
/* BCEAC 800E1AAC 00000000 */  nop
/* BCEB0 800E1AB0 AF48012C */  sw         $t0, 0x12c($k0)
/* BCEB4 800E1AB4 F7400130 */  sdc1       $f0, 0x130($k0)
/* BCEB8 800E1AB8 F7420138 */  sdc1       $f2, 0x138($k0)
/* BCEBC 800E1ABC F7440140 */  sdc1       $f4, 0x140($k0)
/* BCEC0 800E1AC0 F7460148 */  sdc1       $f6, 0x148($k0)
/* BCEC4 800E1AC4 F7480150 */  sdc1       $f8, 0x150($k0)
/* BCEC8 800E1AC8 F74A0158 */  sdc1       $f10, 0x158($k0)
/* BCECC 800E1ACC F74C0160 */  sdc1       $f12, 0x160($k0)
/* BCED0 800E1AD0 F74E0168 */  sdc1       $f14, 0x168($k0)
/* BCED4 800E1AD4 F7500170 */  sdc1       $f16, 0x170($k0)
/* BCED8 800E1AD8 F7520178 */  sdc1       $f18, 0x178($k0)
/* BCEDC 800E1ADC F7540180 */  sdc1       $f20, 0x180($k0)
/* BCEE0 800E1AE0 F7560188 */  sdc1       $f22, 0x188($k0)
/* BCEE4 800E1AE4 F7580190 */  sdc1       $f24, 0x190($k0)
/* BCEE8 800E1AE8 F75A0198 */  sdc1       $f26, 0x198($k0)
/* BCEEC 800E1AEC F75C01A0 */  sdc1       $f28, 0x1a0($k0)
/* BCEF0 800E1AF0 F75E01A8 */  sdc1       $f30, 0x1a8($k0)
.L800E1AF4:
/* BCEF4 800E1AF4 40086800 */  mfc0       $t0, $13
/* BCEF8 800E1AF8 AF480120 */  sw         $t0, 0x120($k0)
/* BCEFC 800E1AFC 24090002 */  addiu      $t1, $zero, 2
/* BCF00 800E1B00 A7490010 */  sh         $t1, 0x10($k0)
/* BCF04 800E1B04 3109007C */  andi       $t1, $t0, 0x7c
/* BCF08 800E1B08 240A0024 */  addiu      $t2, $zero, 0x24
/* BCF0C 800E1B0C 112A00B0 */  beq        $t1, $t2, .L800E1DD0
/* BCF10 800E1B10 00000000 */   nop
/* BCF14 800E1B14 240A002C */  addiu      $t2, $zero, 0x2c
/* BCF18 800E1B18 112A00FF */  beq        $t1, $t2, .L800E1F18
/* BCF1C 800E1B1C 00000000 */   nop
/* BCF20 800E1B20 240A0000 */  addiu      $t2, $zero, 0
/* BCF24 800E1B24 152A00C3 */  bne        $t1, $t2, .L800E1E34
/* BCF28 800E1B28 00000000 */   nop
/* BCF2C 800E1B2C 03688024 */  and        $s0, $k1, $t0
.L800E1B30:
/* BCF30 800E1B30 3209FF00 */  andi       $t1, $s0, 0xff00
/* BCF34 800E1B34 00095302 */  srl        $t2, $t1, 0xc
/* BCF38 800E1B38 15400003 */  bnez       $t2, .L800E1B48
/* BCF3C 800E1B3C 00000000 */   nop
/* BCF40 800E1B40 00095202 */  srl        $t2, $t1, 8
/* BCF44 800E1B44 214A0010 */  addi       $t2, $t2, 0x10
.L800E1B48:
/* BCF48 800E1B48 3C018011 */  lui        $at, %hi(D_80110C30)
/* BCF4C 800E1B4C 002A0821 */  addu       $at, $at, $t2
/* BCF50 800E1B50 902A0C30 */  lbu        $t2, %lo(D_80110C30)($at)
/* BCF54 800E1B54 3C018011 */  lui        $at, %hi(D_80110C50)
/* BCF58 800E1B58 002A0821 */  addu       $at, $at, $t2
/* BCF5C 800E1B5C 8C2A0C50 */  lw         $t2, %lo(D_80110C50)($at)
/* BCF60 800E1B60 01400008 */  jr         $t2
/* BCF64 800E1B64 00000000 */   nop
/* BCF68 800E1B68 2401DFFF */  addiu      $at, $zero, -0x2001
/* BCF6C 800E1B6C 1000FFF0 */  b          .L800E1B30
/* BCF70 800E1B70 02018024 */   and       $s0, $s0, $at
/* BCF74 800E1B74 2401BFFF */  addiu      $at, $zero, -0x4001
/* BCF78 800E1B78 1000FFED */  b          .L800E1B30
/* BCF7C 800E1B7C 02018024 */   and       $s0, $s0, $at
/* BCF80 800E1B80 40095800 */  mfc0       $t1, $11
/* BCF84 800E1B84 40895800 */  mtc0       $t1, $11
/* BCF88 800E1B88 0C038799 */  jal        func_800E1E64
/* BCF8C 800E1B8C 24040018 */   addiu     $a0, $zero, 0x18
/* BCF90 800E1B90 3C01FFFF */  lui        $at, 0xffff
/* BCF94 800E1B94 34217FFF */  ori        $at, $at, 0x7fff
/* BCF98 800E1B98 1000FFE5 */  b          .L800E1B30
/* BCF9C 800E1B9C 02018024 */   and       $s0, $s0, $at
/* BCFA0 800E1BA0 2401F7FF */  addiu      $at, $zero, -0x801
/* BCFA4 800E1BA4 02018024 */  and        $s0, $s0, $at
/* BCFA8 800E1BA8 240A0004 */  addiu      $t2, $zero, 4
/* BCFAC 800E1BAC 3C018011 */  lui        $at, %hi(D_80109DE0)
/* BCFB0 800E1BB0 002A0821 */  addu       $at, $at, $t2
/* BCFB4 800E1BB4 8C2A9DE0 */  lw         $t2, %lo(D_80109DE0)($at)
/* BCFB8 800E1BB8 3C1D8025 */  lui        $sp, %hi(D_8024B240)
/* BCFBC 800E1BBC 27BDB240 */  addiu      $sp, $sp, %lo(D_8024B240)
/* BCFC0 800E1BC0 24040010 */  addiu      $a0, $zero, 0x10
/* BCFC4 800E1BC4 11400007 */  beqz       $t2, .L800E1BE4
/* BCFC8 800E1BC8 27BD0FF0 */   addiu     $sp, $sp, 0xff0
/* BCFCC 800E1BCC 0140F809 */  jalr       $t2
/* BCFD0 800E1BD0 00000000 */   nop
/* BCFD4 800E1BD4 10400003 */  beqz       $v0, .L800E1BE4
/* BCFD8 800E1BD8 00000000 */   nop
/* BCFDC 800E1BDC 10000082 */  b          .L800E1DE8
/* BCFE0 800E1BE0 00000000 */   nop
.L800E1BE4:
/* BCFE4 800E1BE4 0C038799 */  jal        func_800E1E64
/* BCFE8 800E1BE8 00000000 */   nop
/* BCFEC 800E1BEC 1000FFD0 */  b          .L800E1B30
/* BCFF0 800E1BF0 00000000 */   nop
/* BCFF4 800E1BF4 3C088011 */  lui        $t0, %hi(D_8010901C)
/* BCFF8 800E1BF8 2508901C */  addiu      $t0, $t0, %lo(D_8010901C)
/* BCFFC 800E1BFC 8D080000 */  lw         $t0, ($t0)
/* BD000 800E1C00 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* BD004 800E1C04 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* BD008 800E1C08 00084402 */  srl        $t0, $t0, 0x10
/* BD00C 800E1C0C 02288824 */  and        $s1, $s1, $t0
/* BD010 800E1C10 32290001 */  andi       $t1, $s1, 1
/* BD014 800E1C14 11200013 */  beqz       $t1, .L800E1C64
/* BD018 800E1C18 00000000 */   nop
/* BD01C 800E1C1C 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* BD020 800E1C20 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* BD024 800E1C24 24090008 */  addiu      $t1, $zero, 8
/* BD028 800E1C28 3C01A404 */  lui        $at, %hi(D_A4040010)
/* BD02C 800E1C2C 318C0300 */  andi       $t4, $t4, 0x300
/* BD030 800E1C30 3231003E */  andi       $s1, $s1, 0x3e
/* BD034 800E1C34 11800007 */  beqz       $t4, .L800E1C54
/* BD038 800E1C38 AC290010 */   sw        $t1, %lo(D_A4040010)($at)
/* BD03C 800E1C3C 0C038799 */  jal        func_800E1E64
/* BD040 800E1C40 24040020 */   addiu     $a0, $zero, 0x20
/* BD044 800E1C44 12200038 */  beqz       $s1, .L800E1D28
/* BD048 800E1C48 00000000 */   nop
/* BD04C 800E1C4C 10000005 */  b          .L800E1C64
/* BD050 800E1C50 00000000 */   nop
.L800E1C54:
/* BD054 800E1C54 0C038799 */  jal        func_800E1E64
/* BD058 800E1C58 24040058 */   addiu     $a0, $zero, 0x58
/* BD05C 800E1C5C 12200032 */  beqz       $s1, .L800E1D28
/* BD060 800E1C60 00000000 */   nop
.L800E1C64:
/* BD064 800E1C64 32290008 */  andi       $t1, $s1, 8
/* BD068 800E1C68 11200007 */  beqz       $t1, .L800E1C88
/* BD06C 800E1C6C 3C01A440 */   lui       $at, %hi(D_A4400010)
/* BD070 800E1C70 32310037 */  andi       $s1, $s1, 0x37
/* BD074 800E1C74 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* BD078 800E1C78 0C038799 */  jal        func_800E1E64
/* BD07C 800E1C7C 24040038 */   addiu     $a0, $zero, 0x38
/* BD080 800E1C80 12200029 */  beqz       $s1, .L800E1D28
/* BD084 800E1C84 00000000 */   nop
.L800E1C88:
/* BD088 800E1C88 32290004 */  andi       $t1, $s1, 4
/* BD08C 800E1C8C 11200009 */  beqz       $t1, .L800E1CB4
/* BD090 800E1C90 00000000 */   nop
/* BD094 800E1C94 24090001 */  addiu      $t1, $zero, 1
/* BD098 800E1C98 3C01A450 */  lui        $at, %hi(D_A450000C)
/* BD09C 800E1C9C 3231003B */  andi       $s1, $s1, 0x3b
/* BD0A0 800E1CA0 AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* BD0A4 800E1CA4 0C038799 */  jal        func_800E1E64
/* BD0A8 800E1CA8 24040030 */   addiu     $a0, $zero, 0x30
/* BD0AC 800E1CAC 1220001E */  beqz       $s1, .L800E1D28
/* BD0B0 800E1CB0 00000000 */   nop
.L800E1CB4:
/* BD0B4 800E1CB4 32290002 */  andi       $t1, $s1, 2
/* BD0B8 800E1CB8 11200007 */  beqz       $t1, .L800E1CD8
/* BD0BC 800E1CBC 3C01A480 */   lui       $at, %hi(D_A4800018)
/* BD0C0 800E1CC0 3231003D */  andi       $s1, $s1, 0x3d
/* BD0C4 800E1CC4 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* BD0C8 800E1CC8 0C038799 */  jal        func_800E1E64
/* BD0CC 800E1CCC 24040028 */   addiu     $a0, $zero, 0x28
/* BD0D0 800E1CD0 12200015 */  beqz       $s1, .L800E1D28
/* BD0D4 800E1CD4 00000000 */   nop
.L800E1CD8:
/* BD0D8 800E1CD8 32290010 */  andi       $t1, $s1, 0x10
/* BD0DC 800E1CDC 11200009 */  beqz       $t1, .L800E1D04
/* BD0E0 800E1CE0 00000000 */   nop
/* BD0E4 800E1CE4 24090002 */  addiu      $t1, $zero, 2
/* BD0E8 800E1CE8 3C01A460 */  lui        $at, %hi(D_A4600010)
/* BD0EC 800E1CEC 3231002F */  andi       $s1, $s1, 0x2f
/* BD0F0 800E1CF0 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* BD0F4 800E1CF4 0C038799 */  jal        func_800E1E64
/* BD0F8 800E1CF8 24040040 */   addiu     $a0, $zero, 0x40
/* BD0FC 800E1CFC 1220000A */  beqz       $s1, .L800E1D28
/* BD100 800E1D00 00000000 */   nop
.L800E1D04:
/* BD104 800E1D04 32290020 */  andi       $t1, $s1, 0x20
/* BD108 800E1D08 11200007 */  beqz       $t1, .L800E1D28
/* BD10C 800E1D0C 00000000 */   nop
/* BD110 800E1D10 24090800 */  addiu      $t1, $zero, 0x800
/* BD114 800E1D14 3C01A430 */  lui        $at, 0xa430
/* BD118 800E1D18 3231001F */  andi       $s1, $s1, 0x1f
/* BD11C 800E1D1C AC290000 */  sw         $t1, ($at)
/* BD120 800E1D20 0C038799 */  jal        func_800E1E64
/* BD124 800E1D24 24040048 */   addiu     $a0, $zero, 0x48
.L800E1D28:
/* BD128 800E1D28 2401FBFF */  addiu      $at, $zero, -0x401
/* BD12C 800E1D2C 1000FF80 */  b          .L800E1B30
/* BD130 800E1D30 02018024 */   and       $s0, $s0, $at
/* BD134 800E1D34 8F5B0118 */  lw         $k1, 0x118($k0)
/* BD138 800E1D38 2401EFFF */  addiu      $at, $zero, -0x1001
/* BD13C 800E1D3C 3C098011 */  lui        $t1, %hi(D_80109018)
/* BD140 800E1D40 0361D824 */  and        $k1, $k1, $at
/* BD144 800E1D44 AF5B0118 */  sw         $k1, 0x118($k0)
/* BD148 800E1D48 25299018 */  addiu      $t1, $t1, %lo(D_80109018)
/* BD14C 800E1D4C 8D2A0000 */  lw         $t2, ($t1)
/* BD150 800E1D50 11400003 */  beqz       $t2, .L800E1D60
/* BD154 800E1D54 2401EFFF */   addiu     $at, $zero, -0x1001
/* BD158 800E1D58 10000023 */  b          .L800E1DE8
/* BD15C 800E1D5C 02018024 */   and       $s0, $s0, $at
.L800E1D60:
/* BD160 800E1D60 240A0001 */  addiu      $t2, $zero, 1
/* BD164 800E1D64 AD2A0000 */  sw         $t2, ($t1)
/* BD168 800E1D68 0C038799 */  jal        func_800E1E64
/* BD16C 800E1D6C 24040070 */   addiu     $a0, $zero, 0x70
/* BD170 800E1D70 3C0A8011 */  lui        $t2, %hi(D_80109E08)
/* BD174 800E1D74 8D4A9E08 */  lw         $t2, %lo(D_80109E08)($t2)
/* BD178 800E1D78 2401EFFF */  addiu      $at, $zero, -0x1001
/* BD17C 800E1D7C 02018024 */  and        $s0, $s0, $at
/* BD180 800E1D80 8D5B0118 */  lw         $k1, 0x118($t2)
/* BD184 800E1D84 0361D824 */  and        $k1, $k1, $at
/* BD188 800E1D88 10000017 */  b          .L800E1DE8
/* BD18C 800E1D8C AD5B0118 */   sw        $k1, 0x118($t2)
/* BD190 800E1D90 2401FDFF */  addiu      $at, $zero, -0x201
/* BD194 800E1D94 01014024 */  and        $t0, $t0, $at
/* BD198 800E1D98 40886800 */  mtc0       $t0, $13
/* BD19C 800E1D9C 0C038799 */  jal        func_800E1E64
/* BD1A0 800E1DA0 24040008 */   addiu     $a0, $zero, 8
/* BD1A4 800E1DA4 2401FDFF */  addiu      $at, $zero, -0x201
/* BD1A8 800E1DA8 1000FF61 */  b          .L800E1B30
/* BD1AC 800E1DAC 02018024 */   and       $s0, $s0, $at
/* BD1B0 800E1DB0 2401FEFF */  addiu      $at, $zero, -0x101
/* BD1B4 800E1DB4 01014024 */  and        $t0, $t0, $at
/* BD1B8 800E1DB8 40886800 */  mtc0       $t0, $13
/* BD1BC 800E1DBC 0C038799 */  jal        func_800E1E64
/* BD1C0 800E1DC0 24040000 */   addiu     $a0, $zero, 0
/* BD1C4 800E1DC4 2401FEFF */  addiu      $at, $zero, -0x101
/* BD1C8 800E1DC8 1000FF59 */  b          .L800E1B30
/* BD1CC 800E1DCC 02018024 */   and       $s0, $s0, $at
.L800E1DD0:
/* BD1D0 800E1DD0 24090001 */  addiu      $t1, $zero, 1
/* BD1D4 800E1DD4 A7490012 */  sh         $t1, 0x12($k0)
/* BD1D8 800E1DD8 0C038799 */  jal        func_800E1E64
/* BD1DC 800E1DDC 24040050 */   addiu     $a0, $zero, 0x50
/* BD1E0 800E1DE0 10000001 */  b          .L800E1DE8
/* BD1E4 800E1DE4 00000000 */   nop
.L800E1DE8:
/* BD1E8 800E1DE8 3C0A8011 */  lui        $t2, %hi(D_80109E08)
/* BD1EC 800E1DEC 8D4A9E08 */  lw         $t2, %lo(D_80109E08)($t2)
/* BD1F0 800E1DF0 8F490004 */  lw         $t1, 4($k0)
/* BD1F4 800E1DF4 8D4B0004 */  lw         $t3, 4($t2)
/* BD1F8 800E1DF8 012B082A */  slt        $at, $t1, $t3
/* BD1FC 800E1DFC 10200007 */  beqz       $at, .L800E1E1C
/* BD200 800E1E00 00000000 */   nop
/* BD204 800E1E04 3C048011 */  lui        $a0, %hi(D_80109E08)
/* BD208 800E1E08 03402825 */  or         $a1, $k0, $zero
/* BD20C 800E1E0C 0C038813 */  jal        func_800E204C
/* BD210 800E1E10 24849E08 */   addiu     $a0, $a0, %lo(D_80109E08)
/* BD214 800E1E14 08038829 */  j          .L800E20A4
/* BD218 800E1E18 00000000 */   nop
.L800E1E1C:
/* BD21C 800E1E1C 3C098011 */  lui        $t1, %hi(D_80109E08)
/* BD220 800E1E20 25299E08 */  addiu      $t1, $t1, %lo(D_80109E08)
/* BD224 800E1E24 8D2A0000 */  lw         $t2, ($t1)
/* BD228 800E1E28 AF4A0000 */  sw         $t2, ($k0)
/* BD22C 800E1E2C 08038829 */  j          .L800E20A4
/* BD230 800E1E30 AD3A0000 */   sw        $k0, ($t1)
.L800E1E34:
/* BD234 800E1E34 3C018011 */  lui        $at, %hi(D_80109E14)
/* BD238 800E1E38 AC3A9E14 */  sw         $k0, %lo(D_80109E14)($at)
/* BD23C 800E1E3C 24090001 */  addiu      $t1, $zero, 1
/* BD240 800E1E40 A7490010 */  sh         $t1, 0x10($k0)
/* BD244 800E1E44 24090002 */  addiu      $t1, $zero, 2
/* BD248 800E1E48 A7490012 */  sh         $t1, 0x12($k0)
/* BD24C 800E1E4C 400A4000 */  mfc0       $t2, $8
/* BD250 800E1E50 AF4A0124 */  sw         $t2, 0x124($k0)
/* BD254 800E1E54 0C038799 */  jal        func_800E1E64
/* BD258 800E1E58 24040060 */   addiu     $a0, $zero, 0x60
/* BD25C 800E1E5C 08038829 */  j          .L800E20A4
/* BD260 800E1E60 00000000 */   nop

glabel func_800E1E64
/* BD264 800E1E64 3C0A8025 */  lui        $t2, %hi(D_8024B080)
/* BD268 800E1E68 254AB080 */  addiu      $t2, $t2, %lo(D_8024B080)
/* BD26C 800E1E6C 01445021 */  addu       $t2, $t2, $a0
/* BD270 800E1E70 8D490000 */  lw         $t1, ($t2)
/* BD274 800E1E74 03E09025 */  or         $s2, $ra, $zero
/* BD278 800E1E78 11200025 */  beqz       $t1, .L800E1F10
/* BD27C 800E1E7C 00000000 */   nop
/* BD280 800E1E80 8D2B0008 */  lw         $t3, 8($t1)
/* BD284 800E1E84 8D2C0010 */  lw         $t4, 0x10($t1)
/* BD288 800E1E88 016C082A */  slt        $at, $t3, $t4
/* BD28C 800E1E8C 10200020 */  beqz       $at, .L800E1F10
/* BD290 800E1E90 00000000 */   nop
/* BD294 800E1E94 8D2D000C */  lw         $t5, 0xc($t1)
/* BD298 800E1E98 01AB6821 */  addu       $t5, $t5, $t3
/* BD29C 800E1E9C 01AC001A */  div        $zero, $t5, $t4
/* BD2A0 800E1EA0 15800002 */  bnez       $t4, .L800E1EAC
/* BD2A4 800E1EA4 00000000 */   nop
/* BD2A8 800E1EA8 0007000D */  break      7
.L800E1EAC:
/* BD2AC 800E1EAC 2401FFFF */   addiu     $at, $zero, -1
/* BD2B0 800E1EB0 15810004 */  bne        $t4, $at, .L800E1EC4
/* BD2B4 800E1EB4 3C018000 */   lui       $at, 0x8000
/* BD2B8 800E1EB8 15A10002 */  bne        $t5, $at, .L800E1EC4
/* BD2BC 800E1EBC 00000000 */   nop
/* BD2C0 800E1EC0 0006000D */  break      6
.L800E1EC4:
/* BD2C4 800E1EC4 8D2C0014 */   lw        $t4, 0x14($t1)
/* BD2C8 800E1EC8 00006810 */  mfhi       $t5
/* BD2CC 800E1ECC 000D6880 */  sll        $t5, $t5, 2
/* BD2D0 800E1ED0 018D6021 */  addu       $t4, $t4, $t5
/* BD2D4 800E1ED4 8D4D0004 */  lw         $t5, 4($t2)
/* BD2D8 800E1ED8 256A0001 */  addiu      $t2, $t3, 1
/* BD2DC 800E1EDC AD8D0000 */  sw         $t5, ($t4)
/* BD2E0 800E1EE0 AD2A0008 */  sw         $t2, 8($t1)
/* BD2E4 800E1EE4 8D2A0000 */  lw         $t2, ($t1)
/* BD2E8 800E1EE8 8D4B0000 */  lw         $t3, ($t2)
/* BD2EC 800E1EEC 11600008 */  beqz       $t3, .L800E1F10
/* BD2F0 800E1EF0 00000000 */   nop
/* BD2F4 800E1EF4 0C038825 */  jal        func_800E2094
/* BD2F8 800E1EF8 01202025 */   or        $a0, $t1, $zero
/* BD2FC 800E1EFC 00405025 */  or         $t2, $v0, $zero
/* BD300 800E1F00 3C048011 */  lui        $a0, %hi(D_80109E08)
/* BD304 800E1F04 01402825 */  or         $a1, $t2, $zero
/* BD308 800E1F08 0C038813 */  jal        func_800E204C
/* BD30C 800E1F0C 24849E08 */   addiu     $a0, $a0, %lo(D_80109E08)
.L800E1F10:
/* BD310 800E1F10 02400008 */  jr         $s2
/* BD314 800E1F14 00000000 */   nop
.L800E1F18:
/* BD318 800E1F18 3C013000 */  lui        $at, 0x3000
/* BD31C 800E1F1C 01014824 */  and        $t1, $t0, $at
/* BD320 800E1F20 00094F02 */  srl        $t1, $t1, 0x1c
/* BD324 800E1F24 240A0001 */  addiu      $t2, $zero, 1
/* BD328 800E1F28 152AFFC2 */  bne        $t1, $t2, .L800E1E34
/* BD32C 800E1F2C 00000000 */   nop
/* BD330 800E1F30 8F5B0118 */  lw         $k1, 0x118($k0)
/* BD334 800E1F34 3C012000 */  lui        $at, 0x2000
/* BD338 800E1F38 24090001 */  addiu      $t1, $zero, 1
/* BD33C 800E1F3C 0361D825 */  or         $k1, $k1, $at
/* BD340 800E1F40 AF490018 */  sw         $t1, 0x18($k0)
/* BD344 800E1F44 1000FFB5 */  b          .L800E1E1C
/* BD348 800E1F48 AF5B0118 */   sw        $k1, 0x118($k0)

glabel func_800E1F4C
/* BD34C 800E1F4C 3C058011 */  lui        $a1, %hi(D_80109E10)
/* BD350 800E1F50 8CA59E10 */  lw         $a1, %lo(D_80109E10)($a1)
/* BD354 800E1F54 40086000 */  mfc0       $t0, $12
/* BD358 800E1F58 8CBB0018 */  lw         $k1, 0x18($a1)
/* BD35C 800E1F5C 35080002 */  ori        $t0, $t0, 2
/* BD360 800E1F60 ACA80118 */  sw         $t0, 0x118($a1)
/* BD364 800E1F64 FCB00098 */  sd         $s0, 0x98($a1)
/* BD368 800E1F68 FCB100A0 */  sd         $s1, 0xa0($a1)
/* BD36C 800E1F6C FCB200A8 */  sd         $s2, 0xa8($a1)
/* BD370 800E1F70 FCB300B0 */  sd         $s3, 0xb0($a1)
/* BD374 800E1F74 FCB400B8 */  sd         $s4, 0xb8($a1)
/* BD378 800E1F78 FCB500C0 */  sd         $s5, 0xc0($a1)
/* BD37C 800E1F7C FCB600C8 */  sd         $s6, 0xc8($a1)
/* BD380 800E1F80 FCB700D0 */  sd         $s7, 0xd0($a1)
/* BD384 800E1F84 FCBC00E8 */  sd         $gp, 0xe8($a1)
/* BD388 800E1F88 FCBD00F0 */  sd         $sp, 0xf0($a1)
/* BD38C 800E1F8C FCBE00F8 */  sd         $fp, 0xf8($a1)
/* BD390 800E1F90 FCBF0100 */  sd         $ra, 0x100($a1)
/* BD394 800E1F94 13600009 */  beqz       $k1, .L800E1FBC
/* BD398 800E1F98 ACBF011C */   sw        $ra, 0x11c($a1)
/* BD39C 800E1F9C 445BF800 */  cfc1       $k1, $31
/* BD3A0 800E1FA0 F4B40180 */  sdc1       $f20, 0x180($a1)
/* BD3A4 800E1FA4 F4B60188 */  sdc1       $f22, 0x188($a1)
/* BD3A8 800E1FA8 F4B80190 */  sdc1       $f24, 0x190($a1)
/* BD3AC 800E1FAC F4BA0198 */  sdc1       $f26, 0x198($a1)
/* BD3B0 800E1FB0 F4BC01A0 */  sdc1       $f28, 0x1a0($a1)
/* BD3B4 800E1FB4 F4BE01A8 */  sdc1       $f30, 0x1a8($a1)
/* BD3B8 800E1FB8 ACBB012C */  sw         $k1, 0x12c($a1)
.L800E1FBC:
/* BD3BC 800E1FBC 8CBB0118 */  lw         $k1, 0x118($a1)
/* BD3C0 800E1FC0 3369FF00 */  andi       $t1, $k1, 0xff00
/* BD3C4 800E1FC4 1120000D */  beqz       $t1, .L800E1FFC
/* BD3C8 800E1FC8 00000000 */   nop
/* BD3CC 800E1FCC 3C088011 */  lui        $t0, %hi(D_8010901C)
/* BD3D0 800E1FD0 2508901C */  addiu      $t0, $t0, %lo(D_8010901C)
/* BD3D4 800E1FD4 8D080000 */  lw         $t0, ($t0)
/* BD3D8 800E1FD8 2401FFFF */  addiu      $at, $zero, -1
/* BD3DC 800E1FDC 01014026 */  xor        $t0, $t0, $at
/* BD3E0 800E1FE0 3C01FFFF */  lui        $at, 0xffff
/* BD3E4 800E1FE4 3108FF00 */  andi       $t0, $t0, 0xff00
/* BD3E8 800E1FE8 342100FF */  ori        $at, $at, 0xff
/* BD3EC 800E1FEC 01284825 */  or         $t1, $t1, $t0
/* BD3F0 800E1FF0 0361D824 */  and        $k1, $k1, $at
/* BD3F4 800E1FF4 0369D825 */  or         $k1, $k1, $t1
/* BD3F8 800E1FF8 ACBB0118 */  sw         $k1, 0x118($a1)
.L800E1FFC:
/* BD3FC 800E1FFC 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* BD400 800E2000 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* BD404 800E2004 1360000B */  beqz       $k1, .L800E2034
/* BD408 800E2008 00000000 */   nop
/* BD40C 800E200C 3C1A8011 */  lui        $k0, %hi(D_8010901C)
/* BD410 800E2010 275A901C */  addiu      $k0, $k0, %lo(D_8010901C)
/* BD414 800E2014 8F5A0000 */  lw         $k0, ($k0)
/* BD418 800E2018 8CA80128 */  lw         $t0, 0x128($a1)
/* BD41C 800E201C 2401FFFF */  addiu      $at, $zero, -1
/* BD420 800E2020 001AD402 */  srl        $k0, $k0, 0x10
/* BD424 800E2024 0341D026 */  xor        $k0, $k0, $at
/* BD428 800E2028 335A003F */  andi       $k0, $k0, 0x3f
/* BD42C 800E202C 0348D024 */  and        $k0, $k0, $t0
/* BD430 800E2030 037AD825 */  or         $k1, $k1, $k0
.L800E2034:
/* BD434 800E2034 10800003 */  beqz       $a0, .L800E2044
/* BD438 800E2038 ACBB0128 */   sw        $k1, 0x128($a1)
/* BD43C 800E203C 0C038813 */  jal        func_800E204C
/* BD440 800E2040 00000000 */   nop
.L800E2044:
/* BD444 800E2044 08038829 */  j          .L800E20A4
/* BD448 800E2048 00000000 */   nop

glabel func_800E204C
/* BD44C 800E204C 8C980000 */  lw         $t8, ($a0)
/* BD450 800E2050 8CAF0004 */  lw         $t7, 4($a1)
/* BD454 800E2054 0080C825 */  or         $t9, $a0, $zero
/* BD458 800E2058 8F0E0004 */  lw         $t6, 4($t8)
/* BD45C 800E205C 01CF082A */  slt        $at, $t6, $t7
/* BD460 800E2060 14200007 */  bnez       $at, .L800E2080
/* BD464 800E2064 00000000 */   nop
.L800E2068:
/* BD468 800E2068 0300C825 */  or         $t9, $t8, $zero
/* BD46C 800E206C 8F180000 */  lw         $t8, ($t8)
/* BD470 800E2070 8F0E0004 */  lw         $t6, 4($t8)
/* BD474 800E2074 01CF082A */  slt        $at, $t6, $t7
/* BD478 800E2078 1020FFFB */  beqz       $at, .L800E2068
/* BD47C 800E207C 00000000 */   nop
.L800E2080:
/* BD480 800E2080 8F380000 */  lw         $t8, ($t9)
/* BD484 800E2084 ACB80000 */  sw         $t8, ($a1)
/* BD488 800E2088 AF250000 */  sw         $a1, ($t9)
/* BD48C 800E208C 03E00008 */  jr         $ra
/* BD490 800E2090 ACA40008 */   sw        $a0, 8($a1)

glabel func_800E2094
/* BD494 800E2094 8C820000 */  lw         $v0, ($a0)
/* BD498 800E2098 8C590000 */  lw         $t9, ($v0)
/* BD49C 800E209C 03E00008 */  jr         $ra
/* BD4A0 800E20A0 AC990000 */   sw        $t9, ($a0)

glabel func_800E20A4
.L800E20A4:
/* BD4A4 800E20A4 3C048011 */  lui        $a0, %hi(D_80109E08)
/* BD4A8 800E20A8 0C038825 */  jal        func_800E2094
/* BD4AC 800E20AC 24849E08 */   addiu     $a0, $a0, %lo(D_80109E08)
/* BD4B0 800E20B0 3C018011 */  lui        $at, %hi(D_80109E10)
/* BD4B4 800E20B4 AC229E10 */  sw         $v0, %lo(D_80109E10)($at)
/* BD4B8 800E20B8 24080004 */  addiu      $t0, $zero, 4
/* BD4BC 800E20BC A4480010 */  sh         $t0, 0x10($v0)
/* BD4C0 800E20C0 0040D025 */  or         $k0, $v0, $zero
/* BD4C4 800E20C4 3C088011 */  lui        $t0, %hi(D_8010901C)
/* BD4C8 800E20C8 8F5B0118 */  lw         $k1, 0x118($k0)
/* BD4CC 800E20CC 2508901C */  addiu      $t0, $t0, %lo(D_8010901C)
/* BD4D0 800E20D0 8D080000 */  lw         $t0, ($t0)
/* BD4D4 800E20D4 3C01FFFF */  lui        $at, 0xffff
/* BD4D8 800E20D8 3369FF00 */  andi       $t1, $k1, 0xff00
/* BD4DC 800E20DC 342100FF */  ori        $at, $at, 0xff
/* BD4E0 800E20E0 3108FF00 */  andi       $t0, $t0, 0xff00
/* BD4E4 800E20E4 01284824 */  and        $t1, $t1, $t0
/* BD4E8 800E20E8 0361D824 */  and        $k1, $k1, $at
/* BD4EC 800E20EC 0369D825 */  or         $k1, $k1, $t1
/* BD4F0 800E20F0 409B6000 */  mtc0       $k1, $12
/* BD4F4 800E20F4 DF5B0108 */  ld         $k1, 0x108($k0)
/* BD4F8 800E20F8 DF410020 */  ld         $at, 0x20($k0)
/* BD4FC 800E20FC DF420028 */  ld         $v0, 0x28($k0)
/* BD500 800E2100 03600013 */  mtlo       $k1
/* BD504 800E2104 DF5B0110 */  ld         $k1, 0x110($k0)
/* BD508 800E2108 DF430030 */  ld         $v1, 0x30($k0)
/* BD50C 800E210C DF440038 */  ld         $a0, 0x38($k0)
/* BD510 800E2110 DF450040 */  ld         $a1, 0x40($k0)
/* BD514 800E2114 DF460048 */  ld         $a2, 0x48($k0)
/* BD518 800E2118 DF470050 */  ld         $a3, 0x50($k0)
/* BD51C 800E211C DF480058 */  ld         $t0, 0x58($k0)
/* BD520 800E2120 DF490060 */  ld         $t1, 0x60($k0)
/* BD524 800E2124 DF4A0068 */  ld         $t2, 0x68($k0)
/* BD528 800E2128 DF4B0070 */  ld         $t3, 0x70($k0)
/* BD52C 800E212C DF4C0078 */  ld         $t4, 0x78($k0)
/* BD530 800E2130 DF4D0080 */  ld         $t5, 0x80($k0)
/* BD534 800E2134 DF4E0088 */  ld         $t6, 0x88($k0)
/* BD538 800E2138 DF4F0090 */  ld         $t7, 0x90($k0)
/* BD53C 800E213C DF500098 */  ld         $s0, 0x98($k0)
/* BD540 800E2140 DF5100A0 */  ld         $s1, 0xa0($k0)
/* BD544 800E2144 DF5200A8 */  ld         $s2, 0xa8($k0)
/* BD548 800E2148 DF5300B0 */  ld         $s3, 0xb0($k0)
/* BD54C 800E214C DF5400B8 */  ld         $s4, 0xb8($k0)
/* BD550 800E2150 DF5500C0 */  ld         $s5, 0xc0($k0)
/* BD554 800E2154 DF5600C8 */  ld         $s6, 0xc8($k0)
/* BD558 800E2158 DF5700D0 */  ld         $s7, 0xd0($k0)
/* BD55C 800E215C DF5800D8 */  ld         $t8, 0xd8($k0)
/* BD560 800E2160 DF5900E0 */  ld         $t9, 0xe0($k0)
/* BD564 800E2164 DF5C00E8 */  ld         $gp, 0xe8($k0)
/* BD568 800E2168 03600011 */  mthi       $k1
/* BD56C 800E216C DF5D00F0 */  ld         $sp, 0xf0($k0)
/* BD570 800E2170 DF5E00F8 */  ld         $fp, 0xf8($k0)
/* BD574 800E2174 DF5F0100 */  ld         $ra, 0x100($k0)
/* BD578 800E2178 8F5B011C */  lw         $k1, 0x11c($k0)
/* BD57C 800E217C 409B7000 */  mtc0       $k1, $14
/* BD580 800E2180 8F5B0018 */  lw         $k1, 0x18($k0)
/* BD584 800E2184 13600013 */  beqz       $k1, .L800E21D4
/* BD588 800E2188 00000000 */   nop
/* BD58C 800E218C 8F5B012C */  lw         $k1, 0x12c($k0)
/* BD590 800E2190 44DBF800 */  ctc1       $k1, $31
/* BD594 800E2194 D7400130 */  ldc1       $f0, 0x130($k0)
/* BD598 800E2198 D7420138 */  ldc1       $f2, 0x138($k0)
/* BD59C 800E219C D7440140 */  ldc1       $f4, 0x140($k0)
/* BD5A0 800E21A0 D7460148 */  ldc1       $f6, 0x148($k0)
/* BD5A4 800E21A4 D7480150 */  ldc1       $f8, 0x150($k0)
/* BD5A8 800E21A8 D74A0158 */  ldc1       $f10, 0x158($k0)
/* BD5AC 800E21AC D74C0160 */  ldc1       $f12, 0x160($k0)
/* BD5B0 800E21B0 D74E0168 */  ldc1       $f14, 0x168($k0)
/* BD5B4 800E21B4 D7500170 */  ldc1       $f16, 0x170($k0)
/* BD5B8 800E21B8 D7520178 */  ldc1       $f18, 0x178($k0)
/* BD5BC 800E21BC D7540180 */  ldc1       $f20, 0x180($k0)
/* BD5C0 800E21C0 D7560188 */  ldc1       $f22, 0x188($k0)
/* BD5C4 800E21C4 D7580190 */  ldc1       $f24, 0x190($k0)
/* BD5C8 800E21C8 D75A0198 */  ldc1       $f26, 0x198($k0)
/* BD5CC 800E21CC D75C01A0 */  ldc1       $f28, 0x1a0($k0)
/* BD5D0 800E21D0 D75E01A8 */  ldc1       $f30, 0x1a8($k0)
.L800E21D4:
/* BD5D4 800E21D4 8F5B0128 */  lw         $k1, 0x128($k0)
/* BD5D8 800E21D8 3C1A8011 */  lui        $k0, %hi(D_8010901C)
/* BD5DC 800E21DC 275A901C */  addiu      $k0, $k0, %lo(D_8010901C)
/* BD5E0 800E21E0 8F5A0000 */  lw         $k0, ($k0)
/* BD5E4 800E21E4 001AD402 */  srl        $k0, $k0, 0x10
/* BD5E8 800E21E8 037AD824 */  and        $k1, $k1, $k0
/* BD5EC 800E21EC 001BD840 */  sll        $k1, $k1, 1
/* BD5F0 800E21F0 3C1A8011 */  lui        $k0, %hi(D_80110FF0)
/* BD5F4 800E21F4 275A0FF0 */  addiu      $k0, $k0, %lo(D_80110FF0)
/* BD5F8 800E21F8 037AD821 */  addu       $k1, $k1, $k0
/* BD5FC 800E21FC 977B0000 */  lhu        $k1, ($k1)
/* BD600 800E2200 3C1AA430 */  lui        $k0, %hi(D_A430000C)
/* BD604 800E2204 275A000C */  addiu      $k0, $k0, %lo(D_A430000C)
/* BD608 800E2208 AF5B0000 */  sw         $k1, ($k0)
/* BD60C 800E220C 00000000 */  nop
/* BD610 800E2210 00000000 */  nop
/* BD614 800E2214 00000000 */  nop
/* BD618 800E2218 00000000 */  nop
/* BD61C 800E221C 42000018 */  eret
/* BD620 800E2220 0C03AF04 */  jal        func_800EBC10
/* BD624 800E2224 00002025 */   or        $a0, $zero, $zero
/* BD628 800E2228 00000000 */  nop
/* BD62C 800E222C 00000000 */  nop

glabel func_800E2230
/* BD630 800E2230 40085000 */  mfc0       $t0, $10
/* BD634 800E2234 2409001F */  addiu      $t1, $zero, 0x1f
/* BD638 800E2238 40890000 */  mtc0       $t1, $0
/* BD63C 800E223C 40802800 */  mtc0       $zero, $5
/* BD640 800E2240 240A0017 */  addiu      $t2, $zero, 0x17
/* BD644 800E2244 3C09C000 */  lui        $t1, 0xc000
/* BD648 800E2248 40895000 */  mtc0       $t1, $10
/* BD64C 800E224C 3C098000 */  lui        $t1, 0x8000
/* BD650 800E2250 00095982 */  srl        $t3, $t1, 6
/* BD654 800E2254 016A5825 */  or         $t3, $t3, $t2
/* BD658 800E2258 408B1000 */  mtc0       $t3, $2
/* BD65C 800E225C 24090001 */  addiu      $t1, $zero, 1
/* BD660 800E2260 40891800 */  mtc0       $t1, $3
/* BD664 800E2264 00000000 */  nop
/* BD668 800E2268 42000002 */  tlbwi
/* BD66C 800E226C 00000000 */  nop
/* BD670 800E2270 00000000 */  nop
/* BD674 800E2274 00000000 */  nop
/* BD678 800E2278 00000000 */  nop
/* BD67C 800E227C 40885000 */  mtc0       $t0, $10
/* BD680 800E2280 03E00008 */  jr         $ra
/* BD684 800E2284 00000000 */   nop
/* BD688 800E2288 00000000 */  nop
/* BD68C 800E228C 00000000 */  nop
/* BD690 800E2290 00000000 */  nop
/* BD694 800E2294 00000000 */  nop
/* BD698 800E2298 00000000 */  nop
/* BD69C 800E229C 00000000 */  nop
/* BD6A0 800E22A0 00000000 */  nop
/* BD6A4 800E22A4 00000000 */  nop
/* BD6A8 800E22A8 00000000 */  nop
/* BD6AC 800E22AC 00000000 */  nop
/* BD6B0 800E22B0 00000000 */  nop
/* BD6B4 800E22B4 00000000 */  nop
/* BD6B8 800E22B8 00000000 */  nop
/* BD6BC 800E22BC 00000000 */  nop
/* BD6C0 800E22C0 00000000 */  nop
/* BD6C4 800E22C4 00000000 */  nop
/* BD6C8 800E22C8 00000000 */  nop
/* BD6CC 800E22CC 00000000 */  nop
