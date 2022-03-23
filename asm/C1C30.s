.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E6830
/* C1C30 800E6830 40085000 */  mfc0       $t0, $10
/* C1C34 800E6834 310900FF */  andi       $t1, $t0, 0xff
/* C1C38 800E6838 2401E000 */  addiu      $at, $zero, -0x2000
/* C1C3C 800E683C 00815024 */  and        $t2, $a0, $at
/* C1C40 800E6840 012A4825 */  or         $t1, $t1, $t2
/* C1C44 800E6844 40895000 */  mtc0       $t1, $10
/* C1C48 800E6848 00000000 */  nop
/* C1C4C 800E684C 00000000 */  nop
/* C1C50 800E6850 00000000 */  nop
/* C1C54 800E6854 42000008 */  tlbp
/* C1C58 800E6858 00000000 */  nop
/* C1C5C 800E685C 00000000 */  nop
/* C1C60 800E6860 400B0000 */  mfc0       $t3, $0
/* C1C64 800E6864 3C018000 */  lui        $at, 0x8000
/* C1C68 800E6868 01615824 */  and        $t3, $t3, $at
/* C1C6C 800E686C 1560001A */  bnez       $t3, .L800E68D8
/* C1C70 800E6870 00000000 */   nop
/* C1C74 800E6874 42000001 */  tlbr
/* C1C78 800E6878 00000000 */  nop
/* C1C7C 800E687C 00000000 */  nop
/* C1C80 800E6880 00000000 */  nop
/* C1C84 800E6884 400B2800 */  mfc0       $t3, $5
/* C1C88 800E6888 216B2000 */  addi       $t3, $t3, 0x2000
/* C1C8C 800E688C 000B5842 */  srl        $t3, $t3, 1
/* C1C90 800E6890 01646024 */  and        $t4, $t3, $a0
/* C1C94 800E6894 15800004 */  bnez       $t4, .L800E68A8
/* C1C98 800E6898 216BFFFF */   addi      $t3, $t3, -1
/* C1C9C 800E689C 40021000 */  mfc0       $v0, $2
/* C1CA0 800E68A0 10000002 */  b          .L800E68AC
/* C1CA4 800E68A4 00000000 */   nop
.L800E68A8:
/* C1CA8 800E68A8 40021800 */  mfc0       $v0, $3
.L800E68AC:
/* C1CAC 800E68AC 304D0002 */  andi       $t5, $v0, 2
/* C1CB0 800E68B0 11A00009 */  beqz       $t5, .L800E68D8
/* C1CB4 800E68B4 00000000 */   nop
/* C1CB8 800E68B8 3C013FFF */  lui        $at, 0x3fff
/* C1CBC 800E68BC 3421FFC0 */  ori        $at, $at, 0xffc0
/* C1CC0 800E68C0 00411024 */  and        $v0, $v0, $at
/* C1CC4 800E68C4 00021180 */  sll        $v0, $v0, 6
/* C1CC8 800E68C8 008B6824 */  and        $t5, $a0, $t3
/* C1CCC 800E68CC 004D1020 */  add        $v0, $v0, $t5
/* C1CD0 800E68D0 10000002 */  b          .L800E68DC
/* C1CD4 800E68D4 00000000 */   nop
.L800E68D8:
/* C1CD8 800E68D8 2402FFFF */  addiu      $v0, $zero, -1
.L800E68DC:
/* C1CDC 800E68DC 40885000 */  mtc0       $t0, $10
/* C1CE0 800E68E0 03E00008 */  jr         $ra
/* C1CE4 800E68E4 00000000 */   nop
/* C1CE8 800E68E8 00000000 */  nop
/* C1CEC 800E68EC 00000000 */  nop
