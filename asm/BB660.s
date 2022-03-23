.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800E0260
/* BB660 800E0260 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB664 800E0264 AFBF0014 */  sw         $ra, 0x14($sp)
/* BB668 800E0268 AFA5001C */  sw         $a1, 0x1c($sp)
/* BB66C 800E026C AFA60020 */  sw         $a2, 0x20($sp)
/* BB670 800E0270 AFA70024 */  sw         $a3, 0x24($sp)
/* BB674 800E0274 0C036A30 */  jal        func_800DA8C0
/* BB678 800E0278 AFA40018 */   sw        $a0, 0x18($sp)
/* BB67C 800E027C C7A40020 */  lwc1       $f4, 0x20($sp)
/* BB680 800E0280 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* BB684 800E0284 3C014000 */  lui        $at, 0x4000
/* BB688 800E0288 44814000 */  mtc1       $at, $f8
/* BB68C 800E028C 46062001 */  sub.s      $f0, $f4, $f6
/* BB690 800E0290 8FA20018 */  lw         $v0, 0x18($sp)
/* BB694 800E0294 C7AE0028 */  lwc1       $f14, 0x28($sp)
/* BB698 800E0298 C7B00030 */  lwc1       $f16, 0x30($sp)
/* BB69C 800E029C 46004283 */  div.s      $f10, $f8, $f0
/* BB6A0 800E02A0 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* BB6A4 800E02A4 44813000 */  mtc1       $at, $f6
/* BB6A8 800E02A8 3C01C000 */  lui        $at, 0xc000
/* BB6AC 800E02AC 46128301 */  sub.s      $f12, $f16, $f18
/* BB6B0 800E02B0 00001825 */  or         $v1, $zero, $zero
/* BB6B4 800E02B4 24040004 */  addiu      $a0, $zero, 4
/* BB6B8 800E02B8 E44A0000 */  swc1       $f10, ($v0)
/* BB6BC 800E02BC C7A40024 */  lwc1       $f4, 0x24($sp)
/* BB6C0 800E02C0 44815000 */  mtc1       $at, $f10
/* BB6C4 800E02C4 3C013F80 */  lui        $at, 0x3f80
/* BB6C8 800E02C8 46047081 */  sub.s      $f2, $f14, $f4
/* BB6CC 800E02CC 460C5103 */  div.s      $f4, $f10, $f12
/* BB6D0 800E02D0 46023203 */  div.s      $f8, $f6, $f2
/* BB6D4 800E02D4 E4440028 */  swc1       $f4, 0x28($v0)
/* BB6D8 800E02D8 E4480014 */  swc1       $f8, 0x14($v0)
/* BB6DC 800E02DC C7A8001C */  lwc1       $f8, 0x1c($sp)
/* BB6E0 800E02E0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* BB6E4 800E02E4 46083280 */  add.s      $f10, $f6, $f8
/* BB6E8 800E02E8 46005107 */  neg.s      $f4, $f10
/* BB6EC 800E02EC 46002183 */  div.s      $f6, $f4, $f0
/* BB6F0 800E02F0 E4460030 */  swc1       $f6, 0x30($v0)
/* BB6F4 800E02F4 C7A80024 */  lwc1       $f8, 0x24($sp)
/* BB6F8 800E02F8 46087280 */  add.s      $f10, $f14, $f8
/* BB6FC 800E02FC 46128200 */  add.s      $f8, $f16, $f18
/* BB700 800E0300 46005107 */  neg.s      $f4, $f10
/* BB704 800E0304 46004287 */  neg.s      $f10, $f8
/* BB708 800E0308 46022183 */  div.s      $f6, $f4, $f2
/* BB70C 800E030C 460C5103 */  div.s      $f4, $f10, $f12
/* BB710 800E0310 E4460034 */  swc1       $f6, 0x34($v0)
/* BB714 800E0314 44813000 */  mtc1       $at, $f6
/* BB718 800E0318 00000000 */  nop
/* BB71C 800E031C E446003C */  swc1       $f6, 0x3c($v0)
/* BB720 800E0320 E4440038 */  swc1       $f4, 0x38($v0)
/* BB724 800E0324 C7A00034 */  lwc1       $f0, 0x34($sp)
/* BB728 800E0328 C4480000 */  lwc1       $f8, ($v0)
/* BB72C 800E032C 24630001 */  addiu      $v1, $v1, 1
/* BB730 800E0330 C4520004 */  lwc1       $f18, 4($v0)
/* BB734 800E0334 46004302 */  mul.s      $f12, $f8, $f0
/* BB738 800E0338 C44E0008 */  lwc1       $f14, 8($v0)
/* BB73C 800E033C 10640010 */  beq        $v1, $a0, .L800E0380
/* BB740 800E0340 C450000C */   lwc1      $f16, 0xc($v0)
.L800E0344:
/* BB744 800E0344 46009282 */  mul.s      $f10, $f18, $f0
/* BB748 800E0348 C4480010 */  lwc1       $f8, 0x10($v0)
/* BB74C 800E034C C4520014 */  lwc1       $f18, 0x14($v0)
/* BB750 800E0350 46007182 */  mul.s      $f6, $f14, $f0
/* BB754 800E0354 C44E0018 */  lwc1       $f14, 0x18($v0)
/* BB758 800E0358 24630001 */  addiu      $v1, $v1, 1
/* BB75C 800E035C 46008102 */  mul.s      $f4, $f16, $f0
/* BB760 800E0360 C450001C */  lwc1       $f16, 0x1c($v0)
/* BB764 800E0364 E44C0000 */  swc1       $f12, ($v0)
/* BB768 800E0368 46004302 */  mul.s      $f12, $f8, $f0
/* BB76C 800E036C E44A0004 */  swc1       $f10, 4($v0)
/* BB770 800E0370 E4460008 */  swc1       $f6, 8($v0)
/* BB774 800E0374 24420010 */  addiu      $v0, $v0, 0x10
/* BB778 800E0378 1464FFF2 */  bne        $v1, $a0, .L800E0344
/* BB77C 800E037C E444FFFC */   swc1      $f4, -4($v0)
.L800E0380:
/* BB780 800E0380 46009282 */  mul.s      $f10, $f18, $f0
/* BB784 800E0384 24420010 */  addiu      $v0, $v0, 0x10
/* BB788 800E0388 E44CFFF0 */  swc1       $f12, -0x10($v0)
/* BB78C 800E038C 46007182 */  mul.s      $f6, $f14, $f0
/* BB790 800E0390 00000000 */  nop
/* BB794 800E0394 46008102 */  mul.s      $f4, $f16, $f0
/* BB798 800E0398 E44AFFF4 */  swc1       $f10, -0xc($v0)
/* BB79C 800E039C E446FFF8 */  swc1       $f6, -8($v0)
/* BB7A0 800E03A0 E444FFFC */  swc1       $f4, -4($v0)
/* BB7A4 800E03A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB7A8 800E03A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* BB7AC 800E03AC 03E00008 */  jr         $ra
/* BB7B0 800E03B0 00000000 */   nop

glabel func_800E03B4
/* BB7B4 800E03B4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* BB7B8 800E03B8 44856000 */  mtc1       $a1, $f12
/* BB7BC 800E03BC 44867000 */  mtc1       $a2, $f14
/* BB7C0 800E03C0 44878000 */  mtc1       $a3, $f16
/* BB7C4 800E03C4 C7A40078 */  lwc1       $f4, 0x78($sp)
/* BB7C8 800E03C8 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* BB7CC 800E03CC C7A80080 */  lwc1       $f8, 0x80($sp)
/* BB7D0 800E03D0 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* BB7D4 800E03D4 AFBF0024 */  sw         $ra, 0x24($sp)
/* BB7D8 800E03D8 AFA40068 */  sw         $a0, 0x68($sp)
/* BB7DC 800E03DC 44056000 */  mfc1       $a1, $f12
/* BB7E0 800E03E0 44067000 */  mfc1       $a2, $f14
/* BB7E4 800E03E4 44078000 */  mfc1       $a3, $f16
/* BB7E8 800E03E8 27A40028 */  addiu      $a0, $sp, 0x28
/* BB7EC 800E03EC E7A40010 */  swc1       $f4, 0x10($sp)
/* BB7F0 800E03F0 E7A60014 */  swc1       $f6, 0x14($sp)
/* BB7F4 800E03F4 E7A80018 */  swc1       $f8, 0x18($sp)
/* BB7F8 800E03F8 0C038098 */  jal        func_800E0260
/* BB7FC 800E03FC E7AA001C */   swc1      $f10, 0x1c($sp)
/* BB800 800E0400 27A40028 */  addiu      $a0, $sp, 0x28
/* BB804 800E0404 0C0369F0 */  jal        func_800DA7C0
/* BB808 800E0408 8FA50068 */   lw        $a1, 0x68($sp)
/* BB80C 800E040C 8FBF0024 */  lw         $ra, 0x24($sp)
/* BB810 800E0410 27BD0068 */  addiu      $sp, $sp, 0x68
/* BB814 800E0414 03E00008 */  jr         $ra
/* BB818 800E0418 00000000 */   nop
/* BB81C 800E041C 00000000 */  nop
