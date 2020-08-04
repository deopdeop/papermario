.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel load_model_textures
/* 0AC324 80115C24 3C028007 */  lui   $v0, 0x8007
/* 0AC328 80115C28 8C42419C */  lw    $v0, 0x419c($v0)
/* 0AC32C 80115C2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AC330 80115C30 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0AC334 80115C34 80420070 */  lb    $v0, 0x70($v0)
/* 0AC338 80115C38 3C038015 */  lui   $v1, 0x8015
/* 0AC33C 80115C3C 8C63B748 */  lw    $v1, -0x48b8($v1)
/* 0AC340 80115C40 0002102B */  sltu  $v0, $zero, $v0
/* 0AC344 80115C44 00021440 */  sll   $v0, $v0, 0x11
/* 0AC348 80115C48 00621821 */  addu  $v1, $v1, $v0
/* 0AC34C 80115C4C 3C018015 */  lui   $at, 0x8015
/* 0AC350 80115C50 AC233368 */  sw    $v1, 0x3368($at)
/* 0AC354 80115C54 10800011 */  beqz  $a0, .L80115C9C
/* 0AC358 80115C58 00000000 */   nop   
/* 0AC35C 80115C5C 10A0000F */  beqz  $a1, .L80115C9C
/* 0AC360 80115C60 00000000 */   nop   
/* 0AC364 80115C64 10C0000D */  beqz  $a2, .L80115C9C
/* 0AC368 80115C68 2403007F */   addiu $v1, $zero, 0x7f
/* 0AC36C 80115C6C 3C028016 */  lui   $v0, 0x8016
/* 0AC370 80115C70 2442C74C */  addiu $v0, $v0, -0x38b4
.L80115C74:
/* 0AC374 80115C74 AC400000 */  sw    $zero, ($v0)
/* 0AC378 80115C78 2463FFFF */  addiu $v1, $v1, -1
/* 0AC37C 80115C7C 0461FFFD */  bgez  $v1, .L80115C74
/* 0AC380 80115C80 2442FFBC */   addiu $v0, $v0, -0x44
/* 0AC384 80115C84 3C018015 */  lui   $at, 0x8015
/* 0AC388 80115C88 AC203224 */  sw    $zero, 0x3224($at)
/* 0AC38C 80115C8C 10800003 */  beqz  $a0, .L80115C9C
/* 0AC390 80115C90 00000000 */   nop   
/* 0AC394 80115C94 0C0456D1 */  jal   _load_model_textures
/* 0AC398 80115C98 00000000 */   nop   
.L80115C9C:
/* 0AC39C 80115C9C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0AC3A0 80115CA0 03E00008 */  jr    $ra
/* 0AC3A4 80115CA4 27BD0018 */   addiu $sp, $sp, 0x18

