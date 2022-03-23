.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0420
/* BB820 800E0420 28A1000C */  slti       $at, $a1, 0xc
/* BB824 800E0424 1420001D */  bnez       $at, .L800E049C
/* BB828 800E0428 00041823 */   negu      $v1, $a0
/* BB82C 800E042C 30630003 */  andi       $v1, $v1, 3
/* BB830 800E0430 10600003 */  beqz       $v1, .L800E0440
/* BB834 800E0434 00A32823 */   subu      $a1, $a1, $v1
/* BB838 800E0438 A8800000 */  swl        $zero, ($a0)
/* BB83C 800E043C 00832021 */  addu       $a0, $a0, $v1
.L800E0440:
/* BB840 800E0440 2401FFE0 */  addiu      $at, $zero, -0x20
/* BB844 800E0444 00A13824 */  and        $a3, $a1, $at
/* BB848 800E0448 10E0000C */  beqz       $a3, .L800E047C
/* BB84C 800E044C 00A72823 */   subu      $a1, $a1, $a3
/* BB850 800E0450 00E43821 */  addu       $a3, $a3, $a0
.L800E0454:
/* BB854 800E0454 24840020 */  addiu      $a0, $a0, 0x20
/* BB858 800E0458 AC80FFE0 */  sw         $zero, -0x20($a0)
/* BB85C 800E045C AC80FFE4 */  sw         $zero, -0x1c($a0)
/* BB860 800E0460 AC80FFE8 */  sw         $zero, -0x18($a0)
/* BB864 800E0464 AC80FFEC */  sw         $zero, -0x14($a0)
/* BB868 800E0468 AC80FFF0 */  sw         $zero, -0x10($a0)
/* BB86C 800E046C AC80FFF4 */  sw         $zero, -0xc($a0)
/* BB870 800E0470 AC80FFF8 */  sw         $zero, -8($a0)
/* BB874 800E0474 1487FFF7 */  bne        $a0, $a3, .L800E0454
/* BB878 800E0478 AC80FFFC */   sw        $zero, -4($a0)
.L800E047C:
/* BB87C 800E047C 2401FFFC */  addiu      $at, $zero, -4
/* BB880 800E0480 00A13824 */  and        $a3, $a1, $at
/* BB884 800E0484 10E00005 */  beqz       $a3, .L800E049C
/* BB888 800E0488 00A72823 */   subu      $a1, $a1, $a3
/* BB88C 800E048C 00E43821 */  addu       $a3, $a3, $a0
.L800E0490:
/* BB890 800E0490 24840004 */  addiu      $a0, $a0, 4
/* BB894 800E0494 1487FFFE */  bne        $a0, $a3, .L800E0490
/* BB898 800E0498 AC80FFFC */   sw        $zero, -4($a0)
.L800E049C:
/* BB89C 800E049C 18A00005 */  blez       $a1, .L800E04B4
/* BB8A0 800E04A0 00000000 */   nop
/* BB8A4 800E04A4 00A42821 */  addu       $a1, $a1, $a0
.L800E04A8:
/* BB8A8 800E04A8 24840001 */  addiu      $a0, $a0, 1
/* BB8AC 800E04AC 1485FFFE */  bne        $a0, $a1, .L800E04A8
/* BB8B0 800E04B0 A080FFFF */   sb        $zero, -1($a0)
.L800E04B4:
/* BB8B4 800E04B4 03E00008 */  jr         $ra
/* BB8B8 800E04B8 00000000 */   nop
/* BB8BC 800E04BC 00000000 */  nop
