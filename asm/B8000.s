.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DCC00
/* B8000 800DCC00 03E00008 */  jr         $ra
/* B8004 800DCC04 00000000 */   nop

glabel func_800DCC08
/* B8008 800DCC08 03E00008 */  jr         $ra
/* B800C 800DCC0C 00000000 */   nop

glabel func_800DCC10
/* B8010 800DCC10 908E0003 */  lbu        $t6, 3($a0)
/* B8014 800DCC14 15C00037 */  bnez       $t6, .L800DCCF4
/* B8018 800DCC18 00000000 */   nop
/* B801C 800DCC1C 848F000E */  lh         $t7, 0xe($a0)
/* B8020 800DCC20 24090001 */  addiu      $t1, $zero, 1
/* B8024 800DCC24 A0890003 */  sb         $t1, 3($a0)
/* B8028 800DCC28 19E00032 */  blez       $t7, .L800DCCF4
/* B802C 800DCC2C 00001025 */   or        $v0, $zero, $zero
/* B8030 800DCC30 00801825 */  or         $v1, $a0, $zero
/* B8034 800DCC34 240A0001 */  addiu      $t2, $zero, 1
/* B8038 800DCC38 8C780010 */  lw         $t8, 0x10($v1)
.L800DCC3C:
/* B803C 800DCC3C 0305C821 */  addu       $t9, $t8, $a1
/* B8040 800DCC40 AC790010 */  sw         $t9, 0x10($v1)
/* B8044 800DCC44 932E000E */  lbu        $t6, 0xe($t9)
/* B8048 800DCC48 03203025 */  or         $a2, $t9, $zero
/* B804C 800DCC4C 55C00024 */  bnel       $t6, $zero, .L800DCCE0
/* B8050 800DCC50 8498000E */   lh        $t8, 0xe($a0)
/* B8054 800DCC54 8F2F0000 */  lw         $t7, ($t9)
/* B8058 800DCC58 A329000E */  sb         $t1, 0xe($t9)
/* B805C 800DCC5C 01E5C021 */  addu       $t8, $t7, $a1
/* B8060 800DCC60 AF380000 */  sw         $t8, ($t9)
/* B8064 800DCC64 8F390004 */  lw         $t9, 4($t9)
/* B8068 800DCC68 8CCF0008 */  lw         $t7, 8($a2)
/* B806C 800DCC6C 03257021 */  addu       $t6, $t9, $a1
/* B8070 800DCC70 01E5C021 */  addu       $t8, $t7, $a1
/* B8074 800DCC74 ACCE0004 */  sw         $t6, 4($a2)
/* B8078 800DCC78 ACD80008 */  sw         $t8, 8($a2)
/* B807C 800DCC7C 93190009 */  lbu        $t9, 9($t8)
/* B8080 800DCC80 03004025 */  or         $t0, $t8, $zero
/* B8084 800DCC84 57200016 */  bnel       $t9, $zero, .L800DCCE0
/* B8088 800DCC88 8498000E */   lh        $t8, 0xe($a0)
/* B808C 800DCC8C 8F0E0000 */  lw         $t6, ($t8)
/* B8090 800DCC90 93060008 */  lbu        $a2, 8($t8)
/* B8094 800DCC94 A3090009 */  sb         $t1, 9($t8)
/* B8098 800DCC98 01C77821 */  addu       $t7, $t6, $a3
/* B809C 800DCC9C 14C00009 */  bnez       $a2, .L800DCCC4
/* B80A0 800DCCA0 AF0F0000 */   sw        $t7, ($t8)
/* B80A4 800DCCA4 8F180010 */  lw         $t8, 0x10($t8)
/* B80A8 800DCCA8 8D06000C */  lw         $a2, 0xc($t0)
/* B80AC 800DCCAC 0305C821 */  addu       $t9, $t8, $a1
/* B80B0 800DCCB0 10C0000A */  beqz       $a2, .L800DCCDC
/* B80B4 800DCCB4 AD190010 */   sw        $t9, 0x10($t0)
/* B80B8 800DCCB8 00C57021 */  addu       $t6, $a2, $a1
/* B80BC 800DCCBC 10000007 */  b          .L800DCCDC
/* B80C0 800DCCC0 AD0E000C */   sw        $t6, 0xc($t0)
.L800DCCC4:
/* B80C4 800DCCC4 55460006 */  bnel       $t2, $a2, .L800DCCE0
/* B80C8 800DCCC8 8498000E */   lh        $t8, 0xe($a0)
/* B80CC 800DCCCC 8D06000C */  lw         $a2, 0xc($t0)
/* B80D0 800DCCD0 10C00002 */  beqz       $a2, .L800DCCDC
/* B80D4 800DCCD4 00C57821 */   addu      $t7, $a2, $a1
/* B80D8 800DCCD8 AD0F000C */  sw         $t7, 0xc($t0)
.L800DCCDC:
/* B80DC 800DCCDC 8498000E */  lh         $t8, 0xe($a0)
.L800DCCE0:
/* B80E0 800DCCE0 24420001 */  addiu      $v0, $v0, 1
/* B80E4 800DCCE4 24630004 */  addiu      $v1, $v1, 4
/* B80E8 800DCCE8 0058082A */  slt        $at, $v0, $t8
/* B80EC 800DCCEC 5420FFD3 */  bnel       $at, $zero, .L800DCC3C
/* B80F0 800DCCF0 8C780010 */   lw        $t8, 0x10($v1)
.L800DCCF4:
/* B80F4 800DCCF4 03E00008 */  jr         $ra
/* B80F8 800DCCF8 00000000 */   nop

glabel func_800DCCFC
/* B80FC 800DCCFC 03E00008 */  jr         $ra
/* B8100 800DCD00 00000000 */   nop

glabel func_800DCD04
/* B8104 800DCD04 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* B8108 800DCD08 AFBF002C */  sw         $ra, 0x2c($sp)
/* B810C 800DCD0C AFB40028 */  sw         $s4, 0x28($sp)
/* B8110 800DCD10 AFB30024 */  sw         $s3, 0x24($sp)
/* B8114 800DCD14 AFB20020 */  sw         $s2, 0x20($sp)
/* B8118 800DCD18 AFB1001C */  sw         $s1, 0x1c($sp)
/* B811C 800DCD1C AFB00018 */  sw         $s0, 0x18($sp)
/* B8120 800DCD20 848E0000 */  lh         $t6, ($a0)
/* B8124 800DCD24 24014231 */  addiu      $at, $zero, 0x4231
/* B8128 800DCD28 00808025 */  or         $s0, $a0, $zero
/* B812C 800DCD2C 15C1002E */  bne        $t6, $at, .L800DCDE8
/* B8130 800DCD30 00A08825 */   or        $s1, $a1, $zero
/* B8134 800DCD34 848F0002 */  lh         $t7, 2($a0)
/* B8138 800DCD38 00009825 */  or         $s3, $zero, $zero
/* B813C 800DCD3C 00809025 */  or         $s2, $a0, $zero
/* B8140 800DCD40 19E00029 */  blez       $t7, .L800DCDE8
/* B8144 800DCD44 24140001 */   addiu     $s4, $zero, 1
/* B8148 800DCD48 8E580004 */  lw         $t8, 4($s2)
.L800DCD4C:
/* B814C 800DCD4C 0310C821 */  addu       $t9, $t8, $s0
/* B8150 800DCD50 1320001F */  beqz       $t9, .L800DCDD0
/* B8154 800DCD54 AE590004 */   sw        $t9, 4($s2)
/* B8158 800DCD58 932E0002 */  lbu        $t6, 2($t9)
/* B815C 800DCD5C 03206825 */  or         $t5, $t9, $zero
/* B8160 800DCD60 55C0001C */  bnel       $t6, $zero, .L800DCDD4
/* B8164 800DCD64 86180002 */   lh        $t8, 2($s0)
/* B8168 800DCD68 8F220008 */  lw         $v0, 8($t9)
/* B816C 800DCD6C A3340002 */  sb         $s4, 2($t9)
/* B8170 800DCD70 00006025 */  or         $t4, $zero, $zero
/* B8174 800DCD74 10400005 */  beqz       $v0, .L800DCD8C
/* B8178 800DCD78 00502021 */   addu      $a0, $v0, $s0
/* B817C 800DCD7C AF240008 */  sw         $a0, 8($t9)
/* B8180 800DCD80 02002825 */  or         $a1, $s0, $zero
/* B8184 800DCD84 0C037304 */  jal        func_800DCC10
/* B8188 800DCD88 02203825 */   or        $a3, $s1, $zero
.L800DCD8C:
/* B818C 800DCD8C 85B80000 */  lh         $t8, ($t5)
/* B8190 800DCD90 01A05825 */  or         $t3, $t5, $zero
/* B8194 800DCD94 5B00000F */  blezl      $t8, .L800DCDD4
/* B8198 800DCD98 86180002 */   lh        $t8, 2($s0)
/* B819C 800DCD9C 8D79000C */  lw         $t9, 0xc($t3)
.L800DCDA0:
/* B81A0 800DCDA0 02002825 */  or         $a1, $s0, $zero
/* B81A4 800DCDA4 03302021 */  addu       $a0, $t9, $s0
/* B81A8 800DCDA8 10800003 */  beqz       $a0, .L800DCDB8
/* B81AC 800DCDAC AD64000C */   sw        $a0, 0xc($t3)
/* B81B0 800DCDB0 0C037304 */  jal        func_800DCC10
/* B81B4 800DCDB4 02203825 */   or        $a3, $s1, $zero
.L800DCDB8:
/* B81B8 800DCDB8 85AF0000 */  lh         $t7, ($t5)
/* B81BC 800DCDBC 258C0001 */  addiu      $t4, $t4, 1
/* B81C0 800DCDC0 256B0004 */  addiu      $t3, $t3, 4
/* B81C4 800DCDC4 018F082A */  slt        $at, $t4, $t7
/* B81C8 800DCDC8 5420FFF5 */  bnel       $at, $zero, .L800DCDA0
/* B81CC 800DCDCC 8D79000C */   lw        $t9, 0xc($t3)
.L800DCDD0:
/* B81D0 800DCDD0 86180002 */  lh         $t8, 2($s0)
.L800DCDD4:
/* B81D4 800DCDD4 26730001 */  addiu      $s3, $s3, 1
/* B81D8 800DCDD8 26520004 */  addiu      $s2, $s2, 4
/* B81DC 800DCDDC 0278082A */  slt        $at, $s3, $t8
/* B81E0 800DCDE0 5420FFDA */  bnel       $at, $zero, .L800DCD4C
/* B81E4 800DCDE4 8E580004 */   lw        $t8, 4($s2)
.L800DCDE8:
/* B81E8 800DCDE8 8FBF002C */  lw         $ra, 0x2c($sp)
/* B81EC 800DCDEC 8FB00018 */  lw         $s0, 0x18($sp)
/* B81F0 800DCDF0 8FB1001C */  lw         $s1, 0x1c($sp)
/* B81F4 800DCDF4 8FB20020 */  lw         $s2, 0x20($sp)
/* B81F8 800DCDF8 8FB30024 */  lw         $s3, 0x24($sp)
/* B81FC 800DCDFC 8FB40028 */  lw         $s4, 0x28($sp)
/* B8200 800DCE00 03E00008 */  jr         $ra
/* B8204 800DCE04 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800DCE08
/* B8208 800DCE08 848E0002 */  lh         $t6, 2($a0)
/* B820C 800DCE0C 00001025 */  or         $v0, $zero, $zero
/* B8210 800DCE10 00801825 */  or         $v1, $a0, $zero
/* B8214 800DCE14 19C0000A */  blez       $t6, .L800DCE40
/* B8218 800DCE18 00000000 */   nop
/* B821C 800DCE1C 8C6F0004 */  lw         $t7, 4($v1)
.L800DCE20:
/* B8220 800DCE20 24420001 */  addiu      $v0, $v0, 1
/* B8224 800DCE24 24630008 */  addiu      $v1, $v1, 8
/* B8228 800DCE28 01E5C021 */  addu       $t8, $t7, $a1
/* B822C 800DCE2C AC78FFFC */  sw         $t8, -4($v1)
/* B8230 800DCE30 84990002 */  lh         $t9, 2($a0)
/* B8234 800DCE34 0059082A */  slt        $at, $v0, $t9
/* B8238 800DCE38 5420FFF9 */  bnel       $at, $zero, .L800DCE20
/* B823C 800DCE3C 8C6F0004 */   lw        $t7, 4($v1)
.L800DCE40:
/* B8240 800DCE40 03E00008 */  jr         $ra
/* B8244 800DCE44 00000000 */   nop
/* B8248 800DCE48 00000000 */  nop
/* B824C 800DCE4C 00000000 */  nop
