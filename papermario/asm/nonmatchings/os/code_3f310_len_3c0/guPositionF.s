.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel guPositionF
/* 03F310 80063F10 3C018009 */  lui   $at, 0x8009
/* 03F314 80063F14 C4203DC0 */  lwc1  $f0, 0x3dc0($at)
/* 03F318 80063F18 44859000 */  mtc1  $a1, $f18
/* 03F31C 80063F1C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 03F320 80063F20 F7BC0040 */  sdc1  $f28, 0x40($sp)
/* 03F324 80063F24 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 03F328 80063F28 46009502 */  mul.s $f20, $f18, $f0
/* 03F32C 80063F2C C7BC0060 */  lwc1  $f28, 0x60($sp)
/* 03F330 80063F30 44869000 */  mtc1  $a2, $f18
/* 03F334 80063F34 AFB00010 */  sw    $s0, 0x10($sp)
/* 03F338 80063F38 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 03F33C 80063F3C 46009582 */  mul.s $f22, $f18, $f0
/* 03F340 80063F40 44879000 */  mtc1  $a3, $f18
/* 03F344 80063F44 00808021 */  addu  $s0, $a0, $zero
/* 03F348 80063F48 AFBF0018 */  sw    $ra, 0x18($sp)
/* 03F34C 80063F4C AFB10014 */  sw    $s1, 0x14($sp)
/* 03F350 80063F50 F7BE0048 */  sdc1  $f30, 0x48($sp)
/* 03F354 80063F54 F7BA0038 */  sdc1  $f26, 0x38($sp)
/* 03F358 80063F58 F7B80030 */  sdc1  $f24, 0x30($sp)
/* 03F35C 80063F5C 46009602 */  mul.s $f24, $f18, $f0
/* 03F360 80063F60 0C00A85B */  jal   sin_rad
/* 03F364 80063F64 4600A306 */   mov.s $f12, $f20
/* 03F368 80063F68 44110000 */  mfc1  $s1, $f0
/* 03F36C 80063F6C 00000000 */  nop   
/* 03F370 80063F70 0C00A874 */  jal   cos_rad
/* 03F374 80063F74 4600A306 */   mov.s $f12, $f20
/* 03F378 80063F78 46000686 */  mov.s $f26, $f0
/* 03F37C 80063F7C 0C00A85B */  jal   sin_rad
/* 03F380 80063F80 4600B306 */   mov.s $f12, $f22
/* 03F384 80063F84 4600B306 */  mov.s $f12, $f22
/* 03F388 80063F88 0C00A874 */  jal   cos_rad
/* 03F38C 80063F8C 46000506 */   mov.s $f20, $f0
/* 03F390 80063F90 46000786 */  mov.s $f30, $f0
/* 03F394 80063F94 0C00A85B */  jal   sin_rad
/* 03F398 80063F98 4600C306 */   mov.s $f12, $f24
/* 03F39C 80063F9C 4600C306 */  mov.s $f12, $f24
/* 03F3A0 80063FA0 0C00A874 */  jal   cos_rad
/* 03F3A4 80063FA4 46000586 */   mov.s $f22, $f0
/* 03F3A8 80063FA8 00000000 */  nop   
/* 03F3AC 80063FAC 4600F382 */  mul.s $f14, $f30, $f0
/* 03F3B0 80063FB0 00000000 */  nop   
/* 03F3B4 80063FB4 4616F402 */  mul.s $f16, $f30, $f22
/* 03F3B8 80063FB8 00000000 */  nop   
/* 03F3BC 80063FBC 4616D082 */  mul.s $f2, $f26, $f22
/* 03F3C0 80063FC0 00000000 */  nop   
/* 03F3C4 80063FC4 4600D182 */  mul.s $f6, $f26, $f0
/* 03F3C8 80063FC8 44919000 */  mtc1  $s1, $f18
/* 03F3CC 80063FCC 00000000 */  nop   
/* 03F3D0 80063FD0 46149102 */  mul.s $f4, $f18, $f20
/* 03F3D4 80063FD4 4600A307 */  neg.s $f12, $f20
/* 03F3D8 80063FD8 461C6302 */  mul.s $f12, $f12, $f28
/* 03F3DC 80063FDC 00000000 */  nop   
/* 03F3E0 80063FE0 4614D502 */  mul.s $f20, $f26, $f20
/* 03F3E4 80063FE4 00000000 */  nop   
/* 03F3E8 80063FE8 461E9282 */  mul.s $f10, $f18, $f30
/* 03F3EC 80063FEC 00000000 */  nop   
/* 03F3F0 80063FF0 461ED682 */  mul.s $f26, $f26, $f30
/* 03F3F4 80063FF4 00000000 */  nop   
/* 03F3F8 80063FF8 461C7382 */  mul.s $f14, $f14, $f28
/* 03F3FC 80063FFC 00000000 */  nop   
/* 03F400 80064000 461C8402 */  mul.s $f16, $f16, $f28
/* 03F404 80064004 00000000 */  nop   
/* 03F408 80064008 46002202 */  mul.s $f8, $f4, $f0
/* 03F40C 8006400C 00000000 */  nop   
/* 03F410 80064010 46162102 */  mul.s $f4, $f4, $f22
/* 03F414 80064014 00000000 */  nop   
/* 03F418 80064018 461C5282 */  mul.s $f10, $f10, $f28
/* 03F41C 8006401C 00000000 */  nop   
/* 03F420 80064020 461CD682 */  mul.s $f26, $f26, $f28
/* 03F424 80064024 46062100 */  add.s $f4, $f4, $f6
/* 03F428 80064028 4600A182 */  mul.s $f6, $f20, $f0
/* 03F42C 8006402C 46024201 */  sub.s $f8, $f8, $f2
/* 03F430 80064030 46169082 */  mul.s $f2, $f18, $f22
/* 03F434 80064034 00000000 */  nop   
/* 03F438 80064038 4616A502 */  mul.s $f20, $f20, $f22
/* 03F43C 8006403C 00000000 */  nop   
/* 03F440 80064040 46009482 */  mul.s $f18, $f18, $f0
/* 03F444 80064044 3C013F80 */  lui   $at, 0x3f80
/* 03F448 80064048 44810000 */  mtc1  $at, $f0
/* 03F44C 8006404C 461C4202 */  mul.s $f8, $f8, $f28
/* 03F450 80064050 AE00000C */  sw    $zero, 0xc($s0)
/* 03F454 80064054 AE00001C */  sw    $zero, 0x1c($s0)
/* 03F458 80064058 AE00002C */  sw    $zero, 0x2c($s0)
/* 03F45C 8006405C 44119000 */  mfc1  $s1, $f18
/* 03F460 80064060 C7B20064 */  lwc1  $f18, 0x64($sp)
/* 03F464 80064064 461C2102 */  mul.s $f4, $f4, $f28
/* 03F468 80064068 E6120030 */  swc1  $f18, 0x30($s0)
/* 03F46C 8006406C C7B20068 */  lwc1  $f18, 0x68($sp)
/* 03F470 80064070 46023180 */  add.s $f6, $f6, $f2
/* 03F474 80064074 E6120034 */  swc1  $f18, 0x34($s0)
/* 03F478 80064078 C7B2006C */  lwc1  $f18, 0x6c($sp)
/* 03F47C 8006407C 461C3182 */  mul.s $f6, $f6, $f28
/* 03F480 80064080 E6120038 */  swc1  $f18, 0x38($s0)
/* 03F484 80064084 44919000 */  mtc1  $s1, $f18
/* 03F488 80064088 00000000 */  nop   
/* 03F48C 8006408C 4612A501 */  sub.s $f20, $f20, $f18
/* 03F490 80064090 E600003C */  swc1  $f0, 0x3c($s0)
/* 03F494 80064094 E60C0008 */  swc1  $f12, 8($s0)
/* 03F498 80064098 E60E0000 */  swc1  $f14, ($s0)
/* 03F49C 8006409C 461CA502 */  mul.s $f20, $f20, $f28
/* 03F4A0 800640A0 E6100004 */  swc1  $f16, 4($s0)
/* 03F4A4 800640A4 E60A0018 */  swc1  $f10, 0x18($s0)
/* 03F4A8 800640A8 E61A0028 */  swc1  $f26, 0x28($s0)
/* 03F4AC 800640AC E6080010 */  swc1  $f8, 0x10($s0)
/* 03F4B0 800640B0 E6040014 */  swc1  $f4, 0x14($s0)
/* 03F4B4 800640B4 E6060020 */  swc1  $f6, 0x20($s0)
/* 03F4B8 800640B8 E6140024 */  swc1  $f20, 0x24($s0)
/* 03F4BC 800640BC 8FBF0018 */  lw    $ra, 0x18($sp)
/* 03F4C0 800640C0 8FB10014 */  lw    $s1, 0x14($sp)
/* 03F4C4 800640C4 8FB00010 */  lw    $s0, 0x10($sp)
/* 03F4C8 800640C8 D7BE0048 */  ldc1  $f30, 0x48($sp)
/* 03F4CC 800640CC D7BC0040 */  ldc1  $f28, 0x40($sp)
/* 03F4D0 800640D0 D7BA0038 */  ldc1  $f26, 0x38($sp)
/* 03F4D4 800640D4 D7B80030 */  ldc1  $f24, 0x30($sp)
/* 03F4D8 800640D8 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 03F4DC 800640DC D7B40020 */  ldc1  $f20, 0x20($sp)
/* 03F4E0 800640E0 03E00008 */  jr    $ra
/* 03F4E4 800640E4 27BD0050 */   addiu $sp, $sp, 0x50

