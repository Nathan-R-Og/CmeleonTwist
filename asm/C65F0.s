.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800EB1F0
/* C65F0 800EB1F0 24010002 */  addiu      $at, $zero, 2
/* C65F4 800EB1F4 14A10008 */  bne        $a1, $at, .L800EB218
/* C65F8 800EB1F8 8C82001C */   lw        $v0, 0x1c($a0)
/* C65FC 800EB1FC 8C8E0014 */  lw         $t6, 0x14($a0)
/* C6600 800EB200 000E7880 */  sll        $t7, $t6, 2
/* C6604 800EB204 004FC021 */  addu       $t8, $v0, $t7
/* C6608 800EB208 AF060000 */  sw         $a2, ($t8)
/* C660C 800EB20C 8C990014 */  lw         $t9, 0x14($a0)
/* C6610 800EB210 27280001 */  addiu      $t0, $t9, 1
/* C6614 800EB214 AC880014 */  sw         $t0, 0x14($a0)
.L800EB218:
/* C6618 800EB218 03E00008 */  jr         $ra
/* C661C 800EB21C 00001025 */   or        $v0, $zero, $zero

glabel func_800EB220
/* C6620 800EB220 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C6624 800EB224 8FA80050 */  lw         $t0, 0x50($sp)
/* C6628 800EB228 AFBF003C */  sw         $ra, 0x3c($sp)
/* C662C 800EB22C AFB60038 */  sw         $s6, 0x38($sp)
/* C6630 800EB230 AFB50034 */  sw         $s5, 0x34($sp)
/* C6634 800EB234 AFB40030 */  sw         $s4, 0x30($sp)
/* C6638 800EB238 AFB3002C */  sw         $s3, 0x2c($sp)
/* C663C 800EB23C AFB20028 */  sw         $s2, 0x28($sp)
/* C6640 800EB240 AFB10024 */  sw         $s1, 0x24($sp)
/* C6644 800EB244 AFB00020 */  sw         $s0, 0x20($sp)
/* C6648 800EB248 8C83001C */  lw         $v1, 0x1c($a0)
/* C664C 800EB24C 3C0E0200 */  lui        $t6, 0x200
/* C6650 800EB250 00061040 */  sll        $v0, $a2, 1
/* C6654 800EB254 3C0F0200 */  lui        $t7, 0x200
/* C6658 800EB258 35CE06C0 */  ori        $t6, $t6, 0x6c0
/* C665C 800EB25C 35EF0800 */  ori        $t7, $t7, 0x800
/* C6660 800EB260 AD0E0000 */  sw         $t6, ($t0)
/* C6664 800EB264 AD020004 */  sw         $v0, 4($t0)
/* C6668 800EB268 AD0F0008 */  sw         $t7, 8($t0)
/* C666C 800EB26C AD02000C */  sw         $v0, 0xc($t0)
/* C6670 800EB270 8C980014 */  lw         $t8, 0x14($a0)
/* C6674 800EB274 00C0A025 */  or         $s4, $a2, $zero
/* C6678 800EB278 00A0A825 */  or         $s5, $a1, $zero
/* C667C 800EB27C 00E0B025 */  or         $s6, $a3, $zero
/* C6680 800EB280 00809825 */  or         $s3, $a0, $zero
/* C6684 800EB284 00008025 */  or         $s0, $zero, $zero
/* C6688 800EB288 1B000010 */  blez       $t8, .L800EB2CC
/* C668C 800EB28C 25120010 */   addiu     $s2, $t0, 0x10
/* C6690 800EB290 00608825 */  or         $s1, $v1, $zero
.L800EB294:
/* C6694 800EB294 8E240000 */  lw         $a0, ($s1)
/* C6698 800EB298 AFB20010 */  sw         $s2, 0x10($sp)
/* C669C 800EB29C 02A02825 */  or         $a1, $s5, $zero
/* C66A0 800EB2A0 8C990004 */  lw         $t9, 4($a0)
/* C66A4 800EB2A4 02803025 */  or         $a2, $s4, $zero
/* C66A8 800EB2A8 02C03825 */  or         $a3, $s6, $zero
/* C66AC 800EB2AC 0320F809 */  jalr       $t9
/* C66B0 800EB2B0 00000000 */   nop
/* C66B4 800EB2B4 8E690014 */  lw         $t1, 0x14($s3)
/* C66B8 800EB2B8 26100001 */  addiu      $s0, $s0, 1
/* C66BC 800EB2BC 26310004 */  addiu      $s1, $s1, 4
/* C66C0 800EB2C0 0209082A */  slt        $at, $s0, $t1
/* C66C4 800EB2C4 1420FFF3 */  bnez       $at, .L800EB294
/* C66C8 800EB2C8 00409025 */   or        $s2, $v0, $zero
.L800EB2CC:
/* C66CC 800EB2CC 8FBF003C */  lw         $ra, 0x3c($sp)
/* C66D0 800EB2D0 02401025 */  or         $v0, $s2, $zero
/* C66D4 800EB2D4 8FB20028 */  lw         $s2, 0x28($sp)
/* C66D8 800EB2D8 8FB00020 */  lw         $s0, 0x20($sp)
/* C66DC 800EB2DC 8FB10024 */  lw         $s1, 0x24($sp)
/* C66E0 800EB2E0 8FB3002C */  lw         $s3, 0x2c($sp)
/* C66E4 800EB2E4 8FB40030 */  lw         $s4, 0x30($sp)
/* C66E8 800EB2E8 8FB50034 */  lw         $s5, 0x34($sp)
/* C66EC 800EB2EC 8FB60038 */  lw         $s6, 0x38($sp)
/* C66F0 800EB2F0 03E00008 */  jr         $ra
/* C66F4 800EB2F4 27BD0040 */   addiu     $sp, $sp, 0x40
/* C66F8 800EB2F8 00000000 */  nop
/* C66FC 800EB2FC 00000000 */  nop
