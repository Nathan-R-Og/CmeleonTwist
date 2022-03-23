.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0AA0
/* BBEA0 800E0AA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BBEA4 800E0AA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BBEA8 800E0AA8 240E0003 */  addiu      $t6, $zero, 3
/* BBEAC 800E0AAC AFA40040 */  sw         $a0, 0x40($sp)
/* BBEB0 800E0AB0 AFA50044 */  sw         $a1, 0x44($sp)
/* BBEB4 800E0AB4 AFA0003C */  sw         $zero, 0x3c($sp)
/* BBEB8 800E0AB8 A3A0001F */  sb         $zero, 0x1f($sp)
/* BBEBC 800E0ABC 0C038398 */  jal        func_800E0E60
/* BBEC0 800E0AC0 AFAE0018 */   sw        $t6, 0x18($sp)
.L800E0AC4:
/* BBEC4 800E0AC4 0C038310 */  jal        func_800E0C40
/* BBEC8 800E0AC8 00002025 */   or        $a0, $zero, $zero
/* BBECC 800E0ACC 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* BBED0 800E0AD0 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* BBED4 800E0AD4 0C0383B4 */  jal        func_800E0ED0
/* BBED8 800E0AD8 24040001 */   addiu     $a0, $zero, 1
/* BBEDC 800E0ADC AFA2003C */  sw         $v0, 0x3c($sp)
/* BBEE0 800E0AE0 8FA40040 */  lw         $a0, 0x40($sp)
/* BBEE4 800E0AE4 27A50038 */  addiu      $a1, $sp, 0x38
/* BBEE8 800E0AE8 0C036988 */  jal        func_800DA620
/* BBEEC 800E0AEC 24060001 */   addiu     $a2, $zero, 1
/* BBEF0 800E0AF0 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* BBEF4 800E0AF4 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* BBEF8 800E0AF8 0C0383B4 */  jal        func_800E0ED0
/* BBEFC 800E0AFC 00002025 */   or        $a0, $zero, $zero
/* BBF00 800E0B00 AFA2003C */  sw         $v0, 0x3c($sp)
/* BBF04 800E0B04 8FA40040 */  lw         $a0, 0x40($sp)
/* BBF08 800E0B08 27A50038 */  addiu      $a1, $sp, 0x38
/* BBF0C 800E0B0C 0C036988 */  jal        func_800DA620
/* BBF10 800E0B10 24060001 */   addiu     $a2, $zero, 1
/* BBF14 800E0B14 27A40037 */  addiu      $a0, $sp, 0x37
/* BBF18 800E0B18 0C03834F */  jal        func_800E0D3C
/* BBF1C 800E0B1C 27A50024 */   addiu     $a1, $sp, 0x24
/* BBF20 800E0B20 3C0F8025 */  lui        $t7, %hi(D_8024B141)
/* BBF24 800E0B24 91EFB141 */  lbu        $t7, %lo(D_8024B141)($t7)
/* BBF28 800E0B28 AFA00020 */  sw         $zero, 0x20($sp)
/* BBF2C 800E0B2C 19E00014 */  blez       $t7, .L800E0B80
/* BBF30 800E0B30 00000000 */   nop
.L800E0B34:
/* BBF34 800E0B34 8FB80020 */  lw         $t8, 0x20($sp)
/* BBF38 800E0B38 0018C880 */  sll        $t9, $t8, 2
/* BBF3C 800E0B3C 03B94021 */  addu       $t0, $sp, $t9
/* BBF40 800E0B40 91080026 */  lbu        $t0, 0x26($t0)
/* BBF44 800E0B44 31090004 */  andi       $t1, $t0, 4
/* BBF48 800E0B48 15200005 */  bnez       $t1, .L800E0B60
/* BBF4C 800E0B4C 00000000 */   nop
/* BBF50 800E0B50 8FAA0018 */  lw         $t2, 0x18($sp)
/* BBF54 800E0B54 254BFFFF */  addiu      $t3, $t2, -1
/* BBF58 800E0B58 10000009 */  b          .L800E0B80
/* BBF5C 800E0B5C AFAB0018 */   sw        $t3, 0x18($sp)
.L800E0B60:
/* BBF60 800E0B60 8FAC0020 */  lw         $t4, 0x20($sp)
/* BBF64 800E0B64 3C0E8025 */  lui        $t6, %hi(D_8024B141)
/* BBF68 800E0B68 91CEB141 */  lbu        $t6, %lo(D_8024B141)($t6)
/* BBF6C 800E0B6C 258D0001 */  addiu      $t5, $t4, 1
/* BBF70 800E0B70 AFAD0020 */  sw         $t5, 0x20($sp)
/* BBF74 800E0B74 01AE082A */  slt        $at, $t5, $t6
/* BBF78 800E0B78 1420FFEE */  bnez       $at, .L800E0B34
/* BBF7C 800E0B7C 00000000 */   nop
.L800E0B80:
/* BBF80 800E0B80 3C0F8025 */  lui        $t7, %hi(D_8024B141)
/* BBF84 800E0B84 91EFB141 */  lbu        $t7, %lo(D_8024B141)($t7)
/* BBF88 800E0B88 8FB80020 */  lw         $t8, 0x20($sp)
/* BBF8C 800E0B8C 15F80002 */  bne        $t7, $t8, .L800E0B98
/* BBF90 800E0B90 00000000 */   nop
/* BBF94 800E0B94 AFA00018 */  sw         $zero, 0x18($sp)
.L800E0B98:
/* BBF98 800E0B98 8FB90018 */  lw         $t9, 0x18($sp)
/* BBF9C 800E0B9C 1F20FFC9 */  bgtz       $t9, .L800E0AC4
/* BBFA0 800E0BA0 00000000 */   nop
/* BBFA4 800E0BA4 3C088025 */  lui        $t0, %hi(D_8024B141)
/* BBFA8 800E0BA8 9108B141 */  lbu        $t0, %lo(D_8024B141)($t0)
/* BBFAC 800E0BAC AFA00020 */  sw         $zero, 0x20($sp)
/* BBFB0 800E0BB0 19000019 */  blez       $t0, .L800E0C18
/* BBFB4 800E0BB4 00000000 */   nop
.L800E0BB8:
/* BBFB8 800E0BB8 8FA90020 */  lw         $t1, 0x20($sp)
/* BBFBC 800E0BBC 27AB0024 */  addiu      $t3, $sp, 0x24
/* BBFC0 800E0BC0 00095080 */  sll        $t2, $t1, 2
/* BBFC4 800E0BC4 014B6021 */  addu       $t4, $t2, $t3
/* BBFC8 800E0BC8 918D0003 */  lbu        $t5, 3($t4)
/* BBFCC 800E0BCC 15A0000A */  bnez       $t5, .L800E0BF8
/* BBFD0 800E0BD0 00000000 */   nop
/* BBFD4 800E0BD4 918E0002 */  lbu        $t6, 2($t4)
/* BBFD8 800E0BD8 31CF0001 */  andi       $t7, $t6, 1
/* BBFDC 800E0BDC 11E00006 */  beqz       $t7, .L800E0BF8
/* BBFE0 800E0BE0 00000000 */   nop
/* BBFE4 800E0BE4 93B8001F */  lbu        $t8, 0x1f($sp)
/* BBFE8 800E0BE8 24190001 */  addiu      $t9, $zero, 1
/* BBFEC 800E0BEC 01394004 */  sllv       $t0, $t9, $t1
/* BBFF0 800E0BF0 03085025 */  or         $t2, $t8, $t0
/* BBFF4 800E0BF4 A3AA001F */  sb         $t2, 0x1f($sp)
.L800E0BF8:
/* BBFF8 800E0BF8 8FAB0020 */  lw         $t3, 0x20($sp)
/* BBFFC 800E0BFC 3C0C8025 */  lui        $t4, %hi(D_8024B141)
/* BC000 800E0C00 918CB141 */  lbu        $t4, %lo(D_8024B141)($t4)
/* BC004 800E0C04 256D0001 */  addiu      $t5, $t3, 1
/* BC008 800E0C08 AFAD0020 */  sw         $t5, 0x20($sp)
/* BC00C 800E0C0C 01AC082A */  slt        $at, $t5, $t4
/* BC010 800E0C10 1420FFE9 */  bnez       $at, .L800E0BB8
/* BC014 800E0C14 00000000 */   nop
.L800E0C18:
/* BC018 800E0C18 0C0383A9 */  jal        func_800E0EA4
/* BC01C 800E0C1C 00000000 */   nop
/* BC020 800E0C20 93AE001F */  lbu        $t6, 0x1f($sp)
/* BC024 800E0C24 8FAF0044 */  lw         $t7, 0x44($sp)
/* BC028 800E0C28 A1EE0000 */  sb         $t6, ($t7)
/* BC02C 800E0C2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BC030 800E0C30 8FA2003C */  lw         $v0, 0x3c($sp)
/* BC034 800E0C34 27BD0040 */  addiu      $sp, $sp, 0x40
/* BC038 800E0C38 03E00008 */  jr         $ra
/* BC03C 800E0C3C 00000000 */   nop

glabel func_800E0C40
/* BC040 800E0C40 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* BC044 800E0C44 308400FF */  andi       $a0, $a0, 0xff
/* BC048 800E0C48 3C018025 */  lui        $at, %hi(D_8024B140)
/* BC04C 800E0C4C A024B140 */  sb         $a0, %lo(D_8024B140)($at)
/* BC050 800E0C50 AFA00000 */  sw         $zero, ($sp)
.L800E0C54:
/* BC054 800E0C54 8FAE0000 */  lw         $t6, ($sp)
/* BC058 800E0C58 8FB80000 */  lw         $t8, ($sp)
/* BC05C 800E0C5C 3C018025 */  lui        $at, %hi(D_8024B1E0)
/* BC060 800E0C60 000E7880 */  sll        $t7, $t6, 2
/* BC064 800E0C64 002F0821 */  addu       $at, $at, $t7
/* BC068 800E0C68 AC20B1E0 */  sw         $zero, %lo(D_8024B1E0)($at)
/* BC06C 800E0C6C 27190001 */  addiu      $t9, $t8, 1
/* BC070 800E0C70 2B210010 */  slti       $at, $t9, 0x10
/* BC074 800E0C74 1420FFF7 */  bnez       $at, .L800E0C54
/* BC078 800E0C78 AFB90000 */   sw        $t9, ($sp)
/* BC07C 800E0C7C 3C198025 */  lui        $t9, %hi(D_8024B141)
/* BC080 800E0C80 9339B141 */  lbu        $t9, %lo(D_8024B141)($t9)
/* BC084 800E0C84 3C098025 */  lui        $t1, %hi(D_8024B1E0)
/* BC088 800E0C88 24080001 */  addiu      $t0, $zero, 1
/* BC08C 800E0C8C 3C018025 */  lui        $at, 0x8025
/* BC090 800E0C90 2529B1E0 */  addiu      $t1, $t1, %lo(D_8024B1E0)
/* BC094 800E0C94 240A00FF */  addiu      $t2, $zero, 0xff
/* BC098 800E0C98 240B0001 */  addiu      $t3, $zero, 1
/* BC09C 800E0C9C 240C0003 */  addiu      $t4, $zero, 3
/* BC0A0 800E0CA0 240D00FF */  addiu      $t5, $zero, 0xff
/* BC0A4 800E0CA4 240E00FF */  addiu      $t6, $zero, 0xff
/* BC0A8 800E0CA8 240F00FF */  addiu      $t7, $zero, 0xff
/* BC0AC 800E0CAC 241800FF */  addiu      $t8, $zero, 0xff
/* BC0B0 800E0CB0 AC28B21C */  sw         $t0, -0x4de4($at)
/* BC0B4 800E0CB4 AFA9000C */  sw         $t1, 0xc($sp)
/* BC0B8 800E0CB8 A3AA0004 */  sb         $t2, 4($sp)
/* BC0BC 800E0CBC A3AB0005 */  sb         $t3, 5($sp)
/* BC0C0 800E0CC0 A3AC0006 */  sb         $t4, 6($sp)
/* BC0C4 800E0CC4 A3A40007 */  sb         $a0, 7($sp)
/* BC0C8 800E0CC8 A3AD0008 */  sb         $t5, 8($sp)
/* BC0CC 800E0CCC A3AE0009 */  sb         $t6, 9($sp)
/* BC0D0 800E0CD0 A3AF000A */  sb         $t7, 0xa($sp)
/* BC0D4 800E0CD4 A3B8000B */  sb         $t8, 0xb($sp)
/* BC0D8 800E0CD8 1B200013 */  blez       $t9, .L800E0D28
/* BC0DC 800E0CDC AFA00000 */   sw        $zero, ($sp)
.L800E0CE0:
/* BC0E0 800E0CE0 27A90004 */  addiu      $t1, $sp, 4
/* BC0E4 800E0CE4 8D210000 */  lw         $at, ($t1)
/* BC0E8 800E0CE8 8FA8000C */  lw         $t0, 0xc($sp)
/* BC0EC 800E0CEC 3C188025 */  lui        $t8, 0x8025
/* BC0F0 800E0CF0 A9010000 */  swl        $at, ($t0)
/* BC0F4 800E0CF4 B9010003 */  swr        $at, 3($t0)
/* BC0F8 800E0CF8 8D2B0004 */  lw         $t3, 4($t1)
/* BC0FC 800E0CFC A90B0004 */  swl        $t3, 4($t0)
/* BC100 800E0D00 B90B0007 */  swr        $t3, 7($t0)
/* BC104 800E0D04 8FAE0000 */  lw         $t6, ($sp)
/* BC108 800E0D08 9318B141 */  lbu        $t8, -0x4ebf($t8)
/* BC10C 800E0D0C 8FAC000C */  lw         $t4, 0xc($sp)
/* BC110 800E0D10 25CF0001 */  addiu      $t7, $t6, 1
/* BC114 800E0D14 01F8082A */  slt        $at, $t7, $t8
/* BC118 800E0D18 258D0008 */  addiu      $t5, $t4, 8
/* BC11C 800E0D1C AFAF0000 */  sw         $t7, ($sp)
/* BC120 800E0D20 1420FFEF */  bnez       $at, .L800E0CE0
/* BC124 800E0D24 AFAD000C */   sw        $t5, 0xc($sp)
.L800E0D28:
/* BC128 800E0D28 8FAA000C */  lw         $t2, 0xc($sp)
/* BC12C 800E0D2C 241900FE */  addiu      $t9, $zero, 0xfe
/* BC130 800E0D30 27BD0010 */  addiu      $sp, $sp, 0x10
/* BC134 800E0D34 03E00008 */  jr         $ra
/* BC138 800E0D38 A1590000 */   sb        $t9, ($t2)

glabel func_800E0D3C
/* BC13C 800E0D3C 3C0F8025 */  lui        $t7, %hi(D_8024B141)
/* BC140 800E0D40 91EFB141 */  lbu        $t7, %lo(D_8024B141)($t7)
/* BC144 800E0D44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BC148 800E0D48 3C0E8025 */  lui        $t6, %hi(D_8024B1E0)
/* BC14C 800E0D4C 25CEB1E0 */  addiu      $t6, $t6, %lo(D_8024B1E0)
/* BC150 800E0D50 A3A00007 */  sb         $zero, 7($sp)
/* BC154 800E0D54 AFAE0014 */  sw         $t6, 0x14($sp)
/* BC158 800E0D58 19E00028 */  blez       $t7, .L800E0DFC
/* BC15C 800E0D5C AFA00008 */   sw        $zero, 8($sp)
.L800E0D60:
/* BC160 800E0D60 8FB90014 */  lw         $t9, 0x14($sp)
/* BC164 800E0D64 27B8000C */  addiu      $t8, $sp, 0xc
/* BC168 800E0D68 8B210000 */  lwl        $at, ($t9)
/* BC16C 800E0D6C 9B210003 */  lwr        $at, 3($t9)
/* BC170 800E0D70 AF010000 */  sw         $at, ($t8)
/* BC174 800E0D74 8B290004 */  lwl        $t1, 4($t9)
/* BC178 800E0D78 9B290007 */  lwr        $t1, 7($t9)
/* BC17C 800E0D7C AF090004 */  sw         $t1, 4($t8)
/* BC180 800E0D80 93AA000E */  lbu        $t2, 0xe($sp)
/* BC184 800E0D84 314B00C0 */  andi       $t3, $t2, 0xc0
/* BC188 800E0D88 000B6103 */  sra        $t4, $t3, 4
/* BC18C 800E0D8C A0AC0003 */  sb         $t4, 3($a1)
/* BC190 800E0D90 90AD0003 */  lbu        $t5, 3($a1)
/* BC194 800E0D94 15A0000E */  bnez       $t5, .L800E0DD0
/* BC198 800E0D98 00000000 */   nop
/* BC19C 800E0D9C 93AE0011 */  lbu        $t6, 0x11($sp)
/* BC1A0 800E0DA0 93A80010 */  lbu        $t0, 0x10($sp)
/* BC1A4 800E0DA4 240B0001 */  addiu      $t3, $zero, 1
/* BC1A8 800E0DA8 000E7A00 */  sll        $t7, $t6, 8
/* BC1AC 800E0DAC 01E8C025 */  or         $t8, $t7, $t0
/* BC1B0 800E0DB0 A4B80000 */  sh         $t8, ($a1)
/* BC1B4 800E0DB4 93B90012 */  lbu        $t9, 0x12($sp)
/* BC1B8 800E0DB8 A0B90002 */  sb         $t9, 2($a1)
/* BC1BC 800E0DBC 8FAA0008 */  lw         $t2, 8($sp)
/* BC1C0 800E0DC0 93A90007 */  lbu        $t1, 7($sp)
/* BC1C4 800E0DC4 014B6004 */  sllv       $t4, $t3, $t2
/* BC1C8 800E0DC8 012C6825 */  or         $t5, $t1, $t4
/* BC1CC 800E0DCC A3AD0007 */  sb         $t5, 7($sp)
.L800E0DD0:
/* BC1D0 800E0DD0 8FAE0008 */  lw         $t6, 8($sp)
/* BC1D4 800E0DD4 3C198025 */  lui        $t9, %hi(D_8024B141)
/* BC1D8 800E0DD8 9339B141 */  lbu        $t9, %lo(D_8024B141)($t9)
/* BC1DC 800E0DDC 8FA80014 */  lw         $t0, 0x14($sp)
/* BC1E0 800E0DE0 25CF0001 */  addiu      $t7, $t6, 1
/* BC1E4 800E0DE4 01F9082A */  slt        $at, $t7, $t9
/* BC1E8 800E0DE8 25180008 */  addiu      $t8, $t0, 8
/* BC1EC 800E0DEC AFB80014 */  sw         $t8, 0x14($sp)
/* BC1F0 800E0DF0 AFAF0008 */  sw         $t7, 8($sp)
/* BC1F4 800E0DF4 1420FFDA */  bnez       $at, .L800E0D60
/* BC1F8 800E0DF8 24A50004 */   addiu     $a1, $a1, 4
.L800E0DFC:
/* BC1FC 800E0DFC 93AB0007 */  lbu        $t3, 7($sp)
/* BC200 800E0E00 27BD0018 */  addiu      $sp, $sp, 0x18
/* BC204 800E0E04 03E00008 */  jr         $ra
/* BC208 800E0E08 A08B0000 */   sb        $t3, ($a0)
/* BC20C 800E0E0C 00000000 */  nop
