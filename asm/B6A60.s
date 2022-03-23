.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800DB660
/* B6A60 800DB660 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6A64 800DB664 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6A68 800DB668 AFA40020 */  sw         $a0, 0x20($sp)
/* B6A6C 800DB66C AFA50024 */  sw         $a1, 0x24($sp)
/* B6A70 800DB670 AFA60028 */  sw         $a2, 0x28($sp)
/* B6A74 800DB674 0C038398 */  jal        func_800E0E60
/* B6A78 800DB678 AFA0001C */   sw        $zero, 0x1c($sp)
/* B6A7C 800DB67C 8FA40020 */  lw         $a0, 0x20($sp)
/* B6A80 800DB680 0C036DC5 */  jal        func_800DB714
/* B6A84 800DB684 8FA50028 */   lw        $a1, 0x28($sp)
/* B6A88 800DB688 0C0383A9 */  jal        func_800E0EA4
/* B6A8C 800DB68C AFA2001C */   sw        $v0, 0x1c($sp)
/* B6A90 800DB690 8FAE001C */  lw         $t6, 0x1c($sp)
/* B6A94 800DB694 11C00003 */  beqz       $t6, .L800DB6A4
/* B6A98 800DB698 00000000 */   nop
/* B6A9C 800DB69C 10000019 */  b          .L800DB704
/* B6AA0 800DB6A0 01C01025 */   or        $v0, $t6, $zero
.L800DB6A4:
/* B6AA4 800DB6A4 8FAF0020 */  lw         $t7, 0x20($sp)
/* B6AA8 800DB6A8 8FB80024 */  lw         $t8, 0x24($sp)
/* B6AAC 800DB6AC AF0F0004 */  sw         $t7, 4($t8)
/* B6AB0 800DB6B0 8FA80024 */  lw         $t0, 0x24($sp)
/* B6AB4 800DB6B4 8FB90028 */  lw         $t9, 0x28($sp)
/* B6AB8 800DB6B8 AD190008 */  sw         $t9, 8($t0)
/* B6ABC 800DB6BC 8FA90024 */  lw         $t1, 0x24($sp)
/* B6AC0 800DB6C0 AD200000 */  sw         $zero, ($t1)
/* B6AC4 800DB6C4 0C039181 */  jal        func_800E4604
/* B6AC8 800DB6C8 8FA40024 */   lw        $a0, 0x24($sp)
/* B6ACC 800DB6CC AFA2001C */  sw         $v0, 0x1c($sp)
/* B6AD0 800DB6D0 8FAA001C */  lw         $t2, 0x1c($sp)
/* B6AD4 800DB6D4 11400003 */  beqz       $t2, .L800DB6E4
/* B6AD8 800DB6D8 00000000 */   nop
/* B6ADC 800DB6DC 10000009 */  b          .L800DB704
/* B6AE0 800DB6E0 01401025 */   or        $v0, $t2, $zero
.L800DB6E4:
/* B6AE4 800DB6E4 0C03933C */  jal        func_800E4CF0
/* B6AE8 800DB6E8 8FA40024 */   lw        $a0, 0x24($sp)
/* B6AEC 800DB6EC 8FAB0024 */  lw         $t3, 0x24($sp)
/* B6AF0 800DB6F0 AFA2001C */  sw         $v0, 0x1c($sp)
/* B6AF4 800DB6F4 8D6C0000 */  lw         $t4, ($t3)
/* B6AF8 800DB6F8 358D0001 */  ori        $t5, $t4, 1
/* B6AFC 800DB6FC AD6D0000 */  sw         $t5, ($t3)
/* B6B00 800DB700 8FA2001C */  lw         $v0, 0x1c($sp)
.L800DB704:
/* B6B04 800DB704 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6B08 800DB708 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6B0C 800DB70C 03E00008 */  jr         $ra
/* B6B10 800DB710 00000000 */   nop

glabel func_800DB714
/* B6B14 800DB714 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B6B18 800DB718 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6B1C 800DB71C AFA40038 */  sw         $a0, 0x38($sp)
/* B6B20 800DB720 AFA5003C */  sw         $a1, 0x3c($sp)
/* B6B24 800DB724 AFA00034 */  sw         $zero, 0x34($sp)
/* B6B28 800DB728 0C038310 */  jal        func_800E0C40
/* B6B2C 800DB72C 00002025 */   or        $a0, $zero, $zero
/* B6B30 800DB730 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* B6B34 800DB734 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* B6B38 800DB738 0C0383B4 */  jal        func_800E0ED0
/* B6B3C 800DB73C 24040001 */   addiu     $a0, $zero, 1
/* B6B40 800DB740 AFA20034 */  sw         $v0, 0x34($sp)
/* B6B44 800DB744 8FA40038 */  lw         $a0, 0x38($sp)
/* B6B48 800DB748 27A50030 */  addiu      $a1, $sp, 0x30
/* B6B4C 800DB74C 0C036988 */  jal        func_800DA620
/* B6B50 800DB750 24060001 */   addiu     $a2, $zero, 1
/* B6B54 800DB754 3C058025 */  lui        $a1, %hi(D_8024B1E0)
/* B6B58 800DB758 24A5B1E0 */  addiu      $a1, $a1, %lo(D_8024B1E0)
/* B6B5C 800DB75C 0C0383B4 */  jal        func_800E0ED0
/* B6B60 800DB760 00002025 */   or        $a0, $zero, $zero
/* B6B64 800DB764 AFA20034 */  sw         $v0, 0x34($sp)
/* B6B68 800DB768 8FA40038 */  lw         $a0, 0x38($sp)
/* B6B6C 800DB76C 27A50030 */  addiu      $a1, $sp, 0x30
/* B6B70 800DB770 0C036988 */  jal        func_800DA620
/* B6B74 800DB774 24060001 */   addiu     $a2, $zero, 1
/* B6B78 800DB778 27A4002F */  addiu      $a0, $sp, 0x2f
/* B6B7C 800DB77C 0C03834F */  jal        func_800E0D3C
/* B6B80 800DB780 27A5001C */   addiu     $a1, $sp, 0x1c
/* B6B84 800DB784 8FAE003C */  lw         $t6, 0x3c($sp)
/* B6B88 800DB788 000E7880 */  sll        $t7, $t6, 2
/* B6B8C 800DB78C 03AFC021 */  addu       $t8, $sp, $t7
/* B6B90 800DB790 9318001E */  lbu        $t8, 0x1e($t8)
/* B6B94 800DB794 33190001 */  andi       $t9, $t8, 1
/* B6B98 800DB798 13200006 */  beqz       $t9, .L800DB7B4
/* B6B9C 800DB79C 00000000 */   nop
/* B6BA0 800DB7A0 33080002 */  andi       $t0, $t8, 2
/* B6BA4 800DB7A4 11000003 */  beqz       $t0, .L800DB7B4
/* B6BA8 800DB7A8 00000000 */   nop
/* B6BAC 800DB7AC 10000018 */  b          .L800DB810
/* B6BB0 800DB7B0 24020002 */   addiu     $v0, $zero, 2
.L800DB7B4:
/* B6BB4 800DB7B4 8FA9003C */  lw         $t1, 0x3c($sp)
/* B6BB8 800DB7B8 27AB001C */  addiu      $t3, $sp, 0x1c
/* B6BBC 800DB7BC 00095080 */  sll        $t2, $t1, 2
/* B6BC0 800DB7C0 014B6021 */  addu       $t4, $t2, $t3
/* B6BC4 800DB7C4 918D0003 */  lbu        $t5, 3($t4)
/* B6BC8 800DB7C8 15A00005 */  bnez       $t5, .L800DB7E0
/* B6BCC 800DB7CC 00000000 */   nop
/* B6BD0 800DB7D0 918E0002 */  lbu        $t6, 2($t4)
/* B6BD4 800DB7D4 31CF0001 */  andi       $t7, $t6, 1
/* B6BD8 800DB7D8 15E00003 */  bnez       $t7, .L800DB7E8
/* B6BDC 800DB7DC 00000000 */   nop
.L800DB7E0:
/* B6BE0 800DB7E0 1000000B */  b          .L800DB810
/* B6BE4 800DB7E4 24020001 */   addiu     $v0, $zero, 1
.L800DB7E8:
/* B6BE8 800DB7E8 8FB9003C */  lw         $t9, 0x3c($sp)
/* B6BEC 800DB7EC 0019C080 */  sll        $t8, $t9, 2
/* B6BF0 800DB7F0 03B84021 */  addu       $t0, $sp, $t8
/* B6BF4 800DB7F4 9108001E */  lbu        $t0, 0x1e($t0)
/* B6BF8 800DB7F8 31090004 */  andi       $t1, $t0, 4
/* B6BFC 800DB7FC 11200003 */  beqz       $t1, .L800DB80C
/* B6C00 800DB800 00000000 */   nop
/* B6C04 800DB804 10000002 */  b          .L800DB810
/* B6C08 800DB808 24020004 */   addiu     $v0, $zero, 4
.L800DB80C:
/* B6C0C 800DB80C 8FA20034 */  lw         $v0, 0x34($sp)
.L800DB810:
/* B6C10 800DB810 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6C14 800DB814 27BD0038 */  addiu      $sp, $sp, 0x38
/* B6C18 800DB818 03E00008 */  jr         $ra
/* B6C1C 800DB81C 00000000 */   nop

glabel func_800DB820
/* B6C20 800DB820 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6C24 800DB824 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6C28 800DB828 AFA40020 */  sw         $a0, 0x20($sp)
/* B6C2C 800DB82C 0C038398 */  jal        func_800E0E60
/* B6C30 800DB830 AFA0001C */   sw        $zero, 0x1c($sp)
/* B6C34 800DB834 3C0E8025 */  lui        $t6, %hi(D_8024B140)
/* B6C38 800DB838 91CEB140 */  lbu        $t6, %lo(D_8024B140)($t6)
/* B6C3C 800DB83C 24010001 */  addiu      $at, $zero, 1
/* B6C40 800DB840 11C1000C */  beq        $t6, $at, .L800DB874
/* B6C44 800DB844 00000000 */   nop
/* B6C48 800DB848 0C036E63 */  jal        func_800DB98C
/* B6C4C 800DB84C 00000000 */   nop
/* B6C50 800DB850 3C058025 */  lui        $a1, %hi(D_8024B100)
/* B6C54 800DB854 24A5B100 */  addiu      $a1, $a1, %lo(D_8024B100)
/* B6C58 800DB858 0C0383B4 */  jal        func_800E0ED0
/* B6C5C 800DB85C 24040001 */   addiu     $a0, $zero, 1
/* B6C60 800DB860 AFA2001C */  sw         $v0, 0x1c($sp)
/* B6C64 800DB864 8FA40020 */  lw         $a0, 0x20($sp)
/* B6C68 800DB868 00002825 */  or         $a1, $zero, $zero
/* B6C6C 800DB86C 0C036988 */  jal        func_800DA620
/* B6C70 800DB870 24060001 */   addiu     $a2, $zero, 1
.L800DB874:
/* B6C74 800DB874 AFA00018 */  sw         $zero, 0x18($sp)
.L800DB878:
/* B6C78 800DB878 8FB80018 */  lw         $t8, 0x18($sp)
/* B6C7C 800DB87C 8FA80018 */  lw         $t0, 0x18($sp)
/* B6C80 800DB880 3C018025 */  lui        $at, %hi(D_8024B100)
/* B6C84 800DB884 0018C880 */  sll        $t9, $t8, 2
/* B6C88 800DB888 00390821 */  addu       $at, $at, $t9
/* B6C8C 800DB88C 240F00FF */  addiu      $t7, $zero, 0xff
/* B6C90 800DB890 AC2FB100 */  sw         $t7, %lo(D_8024B100)($at)
/* B6C94 800DB894 25090001 */  addiu      $t1, $t0, 1
/* B6C98 800DB898 29210010 */  slti       $at, $t1, 0x10
/* B6C9C 800DB89C 1420FFF6 */  bnez       $at, .L800DB878
/* B6CA0 800DB8A0 AFA90018 */   sw        $t1, 0x18($sp)
/* B6CA4 800DB8A4 3C018025 */  lui        $at, %hi(D_8024B13C)
/* B6CA8 800DB8A8 3C058025 */  lui        $a1, %hi(D_8024B100)
/* B6CAC 800DB8AC AC20B13C */  sw         $zero, %lo(D_8024B13C)($at)
/* B6CB0 800DB8B0 24A5B100 */  addiu      $a1, $a1, %lo(D_8024B100)
/* B6CB4 800DB8B4 0C0383B4 */  jal        func_800E0ED0
/* B6CB8 800DB8B8 00002025 */   or        $a0, $zero, $zero
/* B6CBC 800DB8BC 240A0001 */  addiu      $t2, $zero, 1
/* B6CC0 800DB8C0 3C018025 */  lui        $at, %hi(D_8024B140)
/* B6CC4 800DB8C4 AFA2001C */  sw         $v0, 0x1c($sp)
/* B6CC8 800DB8C8 0C0383A9 */  jal        func_800E0EA4
/* B6CCC 800DB8CC A02AB140 */   sb        $t2, %lo(D_8024B140)($at)
/* B6CD0 800DB8D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6CD4 800DB8D4 8FA2001C */  lw         $v0, 0x1c($sp)
/* B6CD8 800DB8D8 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6CDC 800DB8DC 03E00008 */  jr         $ra
/* B6CE0 800DB8E0 00000000 */   nop

glabel func_800DB8E4
/* B6CE4 800DB8E4 3C0F8025 */  lui        $t7, %hi(D_8024B141)
/* B6CE8 800DB8E8 91EFB141 */  lbu        $t7, %lo(D_8024B141)($t7)
/* B6CEC 800DB8EC 3C0E8025 */  lui        $t6, %hi(D_8024B100)
/* B6CF0 800DB8F0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B6CF4 800DB8F4 25CEB100 */  addiu      $t6, $t6, %lo(D_8024B100)
/* B6CF8 800DB8F8 AFAE000C */  sw         $t6, 0xc($sp)
/* B6CFC 800DB8FC 19E00021 */  blez       $t7, .L800DB984
/* B6D00 800DB900 AFA00000 */   sw        $zero, ($sp)
.L800DB904:
/* B6D04 800DB904 8FB9000C */  lw         $t9, 0xc($sp)
/* B6D08 800DB908 27B80004 */  addiu      $t8, $sp, 4
/* B6D0C 800DB90C 8B210000 */  lwl        $at, ($t9)
/* B6D10 800DB910 9B210003 */  lwr        $at, 3($t9)
/* B6D14 800DB914 AF010000 */  sw         $at, ($t8)
/* B6D18 800DB918 8B290004 */  lwl        $t1, 4($t9)
/* B6D1C 800DB91C 9B290007 */  lwr        $t1, 7($t9)
/* B6D20 800DB920 AF090004 */  sw         $t1, 4($t8)
/* B6D24 800DB924 93AA0006 */  lbu        $t2, 6($sp)
/* B6D28 800DB928 314B00C0 */  andi       $t3, $t2, 0xc0
/* B6D2C 800DB92C 000B6103 */  sra        $t4, $t3, 4
/* B6D30 800DB930 A08C0004 */  sb         $t4, 4($a0)
/* B6D34 800DB934 908D0004 */  lbu        $t5, 4($a0)
/* B6D38 800DB938 15A00007 */  bnez       $t5, .L800DB958
/* B6D3C 800DB93C 00000000 */   nop
/* B6D40 800DB940 97AE0008 */  lhu        $t6, 8($sp)
/* B6D44 800DB944 A48E0000 */  sh         $t6, ($a0)
/* B6D48 800DB948 83AF000A */  lb         $t7, 0xa($sp)
/* B6D4C 800DB94C A08F0002 */  sb         $t7, 2($a0)
/* B6D50 800DB950 83A8000B */  lb         $t0, 0xb($sp)
/* B6D54 800DB954 A0880003 */  sb         $t0, 3($a0)
.L800DB958:
/* B6D58 800DB958 8FB80000 */  lw         $t8, ($sp)
/* B6D5C 800DB95C 3C0B8025 */  lui        $t3, %hi(D_8024B141)
/* B6D60 800DB960 916BB141 */  lbu        $t3, %lo(D_8024B141)($t3)
/* B6D64 800DB964 8FA9000C */  lw         $t1, 0xc($sp)
/* B6D68 800DB968 27190001 */  addiu      $t9, $t8, 1
/* B6D6C 800DB96C 032B082A */  slt        $at, $t9, $t3
/* B6D70 800DB970 252A0008 */  addiu      $t2, $t1, 8
/* B6D74 800DB974 AFAA000C */  sw         $t2, 0xc($sp)
/* B6D78 800DB978 AFB90000 */  sw         $t9, ($sp)
/* B6D7C 800DB97C 1420FFE1 */  bnez       $at, .L800DB904
/* B6D80 800DB980 24840006 */   addiu     $a0, $a0, 6
.L800DB984:
/* B6D84 800DB984 03E00008 */  jr         $ra
/* B6D88 800DB988 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_800DB98C
/* B6D8C 800DB98C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* B6D90 800DB990 3C0E8025 */  lui        $t6, %hi(D_8024B100)
/* B6D94 800DB994 25CEB100 */  addiu      $t6, $t6, %lo(D_8024B100)
/* B6D98 800DB998 AFAE000C */  sw         $t6, 0xc($sp)
/* B6D9C 800DB99C AFA00000 */  sw         $zero, ($sp)
.L800DB9A0:
/* B6DA0 800DB9A0 8FAF0000 */  lw         $t7, ($sp)
/* B6DA4 800DB9A4 8FB90000 */  lw         $t9, ($sp)
/* B6DA8 800DB9A8 3C018025 */  lui        $at, %hi(D_8024B100)
/* B6DAC 800DB9AC 000FC080 */  sll        $t8, $t7, 2
/* B6DB0 800DB9B0 00380821 */  addu       $at, $at, $t8
/* B6DB4 800DB9B4 AC20B100 */  sw         $zero, %lo(D_8024B100)($at)
/* B6DB8 800DB9B8 27280001 */  addiu      $t0, $t9, 1
/* B6DBC 800DB9BC 29010010 */  slti       $at, $t0, 0x10
/* B6DC0 800DB9C0 1420FFF7 */  bnez       $at, .L800DB9A0
/* B6DC4 800DB9C4 AFA80000 */   sw        $t0, ($sp)
/* B6DC8 800DB9C8 3C198025 */  lui        $t9, %hi(D_8024B141)
/* B6DCC 800DB9CC 9339B141 */  lbu        $t9, %lo(D_8024B141)($t9)
/* B6DD0 800DB9D0 24090001 */  addiu      $t1, $zero, 1
/* B6DD4 800DB9D4 3C018025 */  lui        $at, 0x8025
/* B6DD8 800DB9D8 240A00FF */  addiu      $t2, $zero, 0xff
/* B6DDC 800DB9DC 240B0001 */  addiu      $t3, $zero, 1
/* B6DE0 800DB9E0 240C0004 */  addiu      $t4, $zero, 4
/* B6DE4 800DB9E4 240D0001 */  addiu      $t5, $zero, 1
/* B6DE8 800DB9E8 340EFFFF */  ori        $t6, $zero, 0xffff
/* B6DEC 800DB9EC 240FFFFF */  addiu      $t7, $zero, -1
/* B6DF0 800DB9F0 2418FFFF */  addiu      $t8, $zero, -1
/* B6DF4 800DB9F4 AC29B13C */  sw         $t1, -0x4ec4($at)
/* B6DF8 800DB9F8 A3AA0004 */  sb         $t2, 4($sp)
/* B6DFC 800DB9FC A3AB0005 */  sb         $t3, 5($sp)
/* B6E00 800DBA00 A3AC0006 */  sb         $t4, 6($sp)
/* B6E04 800DBA04 A3AD0007 */  sb         $t5, 7($sp)
/* B6E08 800DBA08 A7AE0008 */  sh         $t6, 8($sp)
/* B6E0C 800DBA0C A3AF000A */  sb         $t7, 0xa($sp)
/* B6E10 800DBA10 A3B8000B */  sb         $t8, 0xb($sp)
/* B6E14 800DBA14 1B200013 */  blez       $t9, .L800DBA64
/* B6E18 800DBA18 AFA00000 */   sw        $zero, ($sp)
.L800DBA1C:
/* B6E1C 800DBA1C 27A90004 */  addiu      $t1, $sp, 4
/* B6E20 800DBA20 8D210000 */  lw         $at, ($t1)
/* B6E24 800DBA24 8FA8000C */  lw         $t0, 0xc($sp)
/* B6E28 800DBA28 3C188025 */  lui        $t8, 0x8025
/* B6E2C 800DBA2C A9010000 */  swl        $at, ($t0)
/* B6E30 800DBA30 B9010003 */  swr        $at, 3($t0)
/* B6E34 800DBA34 8D2B0004 */  lw         $t3, 4($t1)
/* B6E38 800DBA38 A90B0004 */  swl        $t3, 4($t0)
/* B6E3C 800DBA3C B90B0007 */  swr        $t3, 7($t0)
/* B6E40 800DBA40 8FAE0000 */  lw         $t6, ($sp)
/* B6E44 800DBA44 9318B141 */  lbu        $t8, -0x4ebf($t8)
/* B6E48 800DBA48 8FAC000C */  lw         $t4, 0xc($sp)
/* B6E4C 800DBA4C 25CF0001 */  addiu      $t7, $t6, 1
/* B6E50 800DBA50 01F8082A */  slt        $at, $t7, $t8
/* B6E54 800DBA54 258D0008 */  addiu      $t5, $t4, 8
/* B6E58 800DBA58 AFAF0000 */  sw         $t7, ($sp)
/* B6E5C 800DBA5C 1420FFEF */  bnez       $at, .L800DBA1C
/* B6E60 800DBA60 AFAD000C */   sw        $t5, 0xc($sp)
.L800DBA64:
/* B6E64 800DBA64 8FAA000C */  lw         $t2, 0xc($sp)
/* B6E68 800DBA68 241900FE */  addiu      $t9, $zero, 0xfe
/* B6E6C 800DBA6C 27BD0010 */  addiu      $sp, $sp, 0x10
/* B6E70 800DBA70 03E00008 */  jr         $ra
/* B6E74 800DBA74 A1590000 */   sb        $t9, ($t2)
/* B6E78 800DBA78 00000000 */  nop
/* B6E7C 800DBA7C 00000000 */  nop
