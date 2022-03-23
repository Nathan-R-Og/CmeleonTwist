.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EBD10
/* C7110 800EBD10 240E0002 */  addiu      $t6, $zero, 2
/* C7114 800EBD14 3C018025 */  lui        $at, %hi(D_8024C494)
/* C7118 800EBD18 A02EC494 */  sb         $t6, %lo(D_8024C494)($at)
/* C711C 800EBD1C 3C018025 */  lui        $at, %hi(D_8024C49C)
/* C7120 800EBD20 3C0FA500 */  lui        $t7, 0xa500
/* C7124 800EBD24 AC2FC49C */  sw         $t7, %lo(D_8024C49C)($at)
/* C7128 800EBD28 3C018025 */  lui        $at, %hi(D_8024C495)
/* C712C 800EBD2C 24180003 */  addiu      $t8, $zero, 3
/* C7130 800EBD30 A038C495 */  sb         $t8, %lo(D_8024C495)($at)
/* C7134 800EBD34 3C018025 */  lui        $at, %hi(D_8024C498)
/* C7138 800EBD38 24190006 */  addiu      $t9, $zero, 6
/* C713C 800EBD3C A039C498 */  sb         $t9, %lo(D_8024C498)($at)
/* C7140 800EBD40 3C018025 */  lui        $at, %hi(D_8024C496)
/* C7144 800EBD44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C7148 800EBD48 24080006 */  addiu      $t0, $zero, 6
/* C714C 800EBD4C 24090002 */  addiu      $t1, $zero, 2
/* C7150 800EBD50 AFBF0014 */  sw         $ra, 0x14($sp)
/* C7154 800EBD54 A028C496 */  sb         $t0, %lo(D_8024C496)($at)
/* C7158 800EBD58 A029C497 */  sb         $t1, -0x3b69($at)
/* C715C 800EBD5C 240A0003 */  addiu      $t2, $zero, 3
/* C7160 800EBD60 3C0BA460 */  lui        $t3, %hi(D_A4600024)
/* C7164 800EBD64 AD6A0024 */  sw         $t2, %lo(D_A4600024)($t3)
/* C7168 800EBD68 3C0C8025 */  lui        $t4, %hi(D_8024C498)
/* C716C 800EBD6C 918CC498 */  lbu        $t4, %lo(D_8024C498)($t4)
/* C7170 800EBD70 3C0DA460 */  lui        $t5, %hi(D_A4600028)
/* C7174 800EBD74 3C0E8025 */  lui        $t6, %hi(D_8024C496)
/* C7178 800EBD78 ADAC0028 */  sw         $t4, %lo(D_A4600028)($t5)
/* C717C 800EBD7C 91CEC496 */  lbu        $t6, %lo(D_8024C496)($t6)
/* C7180 800EBD80 3C0FA460 */  lui        $t7, %hi(D_A460002C)
/* C7184 800EBD84 3C188025 */  lui        $t8, %hi(D_8024C497)
/* C7188 800EBD88 ADEE002C */  sw         $t6, %lo(D_A460002C)($t7)
/* C718C 800EBD8C 9318C497 */  lbu        $t8, %lo(D_8024C497)($t8)
/* C7190 800EBD90 3C048025 */  lui        $a0, %hi(D_8024C490)
/* C7194 800EBD94 3C19A460 */  lui        $t9, %hi(D_A4600030)
/* C7198 800EBD98 2484C490 */  addiu      $a0, $a0, %lo(D_8024C490)
/* C719C 800EBD9C 24840014 */  addiu      $a0, $a0, 0x14
/* C71A0 800EBDA0 24050060 */  addiu      $a1, $zero, 0x60
/* C71A4 800EBDA4 0C038108 */  jal        func_800E0420
/* C71A8 800EBDA8 AF380030 */   sw        $t8, %lo(D_A4600030)($t9)
/* C71AC 800EBDAC 0C038AF8 */  jal        func_800E2BE0
/* C71B0 800EBDB0 00000000 */   nop
/* C71B4 800EBDB4 3C088011 */  lui        $t0, %hi(D_80109D8C)
/* C71B8 800EBDB8 8D089D8C */  lw         $t0, %lo(D_80109D8C)($t0)
/* C71BC 800EBDBC 3C018025 */  lui        $at, %hi(D_8024C490)
/* C71C0 800EBDC0 3C098025 */  lui        $t1, %hi(D_8024C490)
/* C71C4 800EBDC4 AC28C490 */  sw         $t0, %lo(D_8024C490)($at)
/* C71C8 800EBDC8 3C018011 */  lui        $at, %hi(D_80109D8C)
/* C71CC 800EBDCC 2529C490 */  addiu      $t1, $t1, %lo(D_8024C490)
/* C71D0 800EBDD0 AC299D8C */  sw         $t1, %lo(D_80109D8C)($at)
/* C71D4 800EBDD4 AFA2001C */  sw         $v0, 0x1c($sp)
/* C71D8 800EBDD8 3C018025 */  lui        $at, %hi(D_8024C504)
/* C71DC 800EBDDC AC29C504 */  sw         $t1, %lo(D_8024C504)($at)
/* C71E0 800EBDE0 0C038B00 */  jal        func_800E2C00
/* C71E4 800EBDE4 8FA4001C */   lw        $a0, 0x1c($sp)
/* C71E8 800EBDE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* C71EC 800EBDEC 3C028025 */  lui        $v0, %hi(D_8024C490)
/* C71F0 800EBDF0 2442C490 */  addiu      $v0, $v0, %lo(D_8024C490)
/* C71F4 800EBDF4 03E00008 */  jr         $ra
/* C71F8 800EBDF8 27BD0020 */   addiu     $sp, $sp, 0x20
/* C71FC 800EBDFC 00000000 */  nop
