.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80070C10
/* 04C010 80070C10 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04C014 80070C14 AFA40010 */  sw    $a0, 0x10($sp)
/* 04C018 80070C18 AFA50014 */  sw    $a1, 0x14($sp)
/* 04C01C 80070C1C AFA60018 */  sw    $a2, 0x18($sp)
/* 04C020 80070C20 AFA7001C */  sw    $a3, 0x1c($sp)
/* 04C024 80070C24 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 04C028 80070C28 E7AE0024 */  swc1  $f14, 0x24($sp)
/* 04C02C 80070C2C E7B00028 */  swc1  $f16, 0x28($sp)
/* 04C030 80070C30 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04C034 80070C34 0C016959 */  jal   play_effect
/* 04C038 80070C38 24040034 */   addiu $a0, $zero, 0x34
/* 04C03C 80070C3C 8FA40010 */  lw    $a0, 0x10($sp)
/* 04C040 80070C40 8FA50014 */  lw    $a1, 0x14($sp)
/* 04C044 80070C44 8FA60018 */  lw    $a2, 0x18($sp)
/* 04C048 80070C48 8FA7001C */  lw    $a3, 0x1c($sp)
/* 04C04C 80070C4C C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 04C050 80070C50 C7AE0024 */  lwc1  $f14, 0x24($sp)
/* 04C054 80070C54 C7B00028 */  lwc1  $f16, 0x28($sp)
/* 04C058 80070C58 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04C05C 80070C5C 27BD0030 */  addiu $sp, $sp, 0x30
/* 04C060 80070C60 3C018008 */  lui   $at, 0x8008
/* 04C064 80070C64 8C21F6F0 */  lw    $at, -0x910($at)
/* 04C068 80070C68 00200008 */  jr    $at
/* 04C06C 80070C6C 00000000 */   nop   
