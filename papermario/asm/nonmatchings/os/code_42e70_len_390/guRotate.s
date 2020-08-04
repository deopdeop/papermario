.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel guRotate
/* 043080 80067C80 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 043084 80067C84 C7A000B8 */  lwc1  $f0, 0xb8($sp)
/* 043088 80067C88 AFB1006C */  sw    $s1, 0x6c($sp)
/* 04308C 80067C8C 00808821 */  addu  $s1, $a0, $zero
/* 043090 80067C90 27A40058 */  addiu $a0, $sp, 0x58
/* 043094 80067C94 F7B40078 */  sdc1  $f20, 0x78($sp)
/* 043098 80067C98 4485A000 */  mtc1  $a1, $f20
/* 04309C 80067C9C 27A5005C */  addiu $a1, $sp, 0x5c
/* 0430A0 80067CA0 AFA60058 */  sw    $a2, 0x58($sp)
/* 0430A4 80067CA4 27A60060 */  addiu $a2, $sp, 0x60
/* 0430A8 80067CA8 AFBF0070 */  sw    $ra, 0x70($sp)
/* 0430AC 80067CAC AFB00068 */  sw    $s0, 0x68($sp)
/* 0430B0 80067CB0 F7BE00A0 */  sdc1  $f30, 0xa0($sp)
/* 0430B4 80067CB4 F7BC0098 */  sdc1  $f28, 0x98($sp)
/* 0430B8 80067CB8 F7BA0090 */  sdc1  $f26, 0x90($sp)
/* 0430BC 80067CBC F7B80088 */  sdc1  $f24, 0x88($sp)
/* 0430C0 80067CC0 F7B60080 */  sdc1  $f22, 0x80($sp)
/* 0430C4 80067CC4 AFA7005C */  sw    $a3, 0x5c($sp)
/* 0430C8 80067CC8 0C01B2F0 */  jal   guNormalize
/* 0430CC 80067CCC E7A00060 */   swc1  $f0, 0x60($sp)
/* 0430D0 80067CD0 3C018009 */  lui   $at, 0x8009
/* 0430D4 80067CD4 C42058C0 */  lwc1  $f0, 0x58c0($at)
/* 0430D8 80067CD8 4600A502 */  mul.s $f20, $f20, $f0
/* 0430DC 80067CDC 0C00A85B */  jal   sin_rad
/* 0430E0 80067CE0 4600A306 */   mov.s $f12, $f20
/* 0430E4 80067CE4 4600A306 */  mov.s $f12, $f20
/* 0430E8 80067CE8 0C00A874 */  jal   cos_rad
/* 0430EC 80067CEC 46000786 */   mov.s $f30, $f0
/* 0430F0 80067CF0 C7A20058 */  lwc1  $f2, 0x58($sp)
/* 0430F4 80067CF4 C7B6005C */  lwc1  $f22, 0x5c($sp)
/* 0430F8 80067CF8 46161702 */  mul.s $f28, $f2, $f22
/* 0430FC 80067CFC C7B40060 */  lwc1  $f20, 0x60($sp)
/* 043100 80067D00 4614B582 */  mul.s $f22, $f22, $f20
/* 043104 80067D04 3C013F80 */  lui   $at, 0x3f80
/* 043108 80067D08 4481D000 */  mtc1  $at, $f26
/* 04310C 80067D0C 4602A502 */  mul.s $f20, $f20, $f2
/* 043110 80067D10 46000606 */  mov.s $f24, $f0
/* 043114 80067D14 4618D301 */  sub.s $f12, $f26, $f24
/* 043118 80067D18 460CE702 */  mul.s $f28, $f28, $f12
/* 04311C 80067D1C 00000000 */  nop   
/* 043120 80067D20 460CB582 */  mul.s $f22, $f22, $f12
/* 043124 80067D24 00000000 */  nop   
/* 043128 80067D28 460CA502 */  mul.s $f20, $f20, $f12
/* 04312C 80067D2C 27B00010 */  addiu $s0, $sp, 0x10
/* 043130 80067D30 0C019D28 */  jal   guMtxIdentF
/* 043134 80067D34 02002021 */   addu  $a0, $s0, $zero
/* 043138 80067D38 C7A00058 */  lwc1  $f0, 0x58($sp)
/* 04313C 80067D3C 46000302 */  mul.s $f12, $f0, $f0
/* 043140 80067D40 460CD181 */  sub.s $f6, $f26, $f12
/* 043144 80067D44 4606C182 */  mul.s $f6, $f24, $f6
/* 043148 80067D48 C7A2005C */  lwc1  $f2, 0x5c($sp)
/* 04314C 80067D4C 46066180 */  add.s $f6, $f12, $f6
/* 043150 80067D50 46021302 */  mul.s $f12, $f2, $f2
/* 043154 80067D54 00000000 */  nop   
/* 043158 80067D58 461E0002 */  mul.s $f0, $f0, $f30
/* 04315C 80067D5C 460CD101 */  sub.s $f4, $f26, $f12
/* 043160 80067D60 4604C102 */  mul.s $f4, $f24, $f4
/* 043164 80067D64 4600B281 */  sub.s $f10, $f22, $f0
/* 043168 80067D68 461E1082 */  mul.s $f2, $f2, $f30
/* 04316C 80067D6C 4600B580 */  add.s $f22, $f22, $f0
/* 043170 80067D70 C7A00060 */  lwc1  $f0, 0x60($sp)
/* 043174 80067D74 46046100 */  add.s $f4, $f12, $f4
/* 043178 80067D78 46000302 */  mul.s $f12, $f0, $f0
/* 04317C 80067D7C 4602A200 */  add.s $f8, $f20, $f2
/* 043180 80067D80 4602A501 */  sub.s $f20, $f20, $f2
/* 043184 80067D84 461E0002 */  mul.s $f0, $f0, $f30
/* 043188 80067D88 460CD681 */  sub.s $f26, $f26, $f12
/* 04318C 80067D8C 02002021 */  addu  $a0, $s0, $zero
/* 043190 80067D90 02202821 */  addu  $a1, $s1, $zero
/* 043194 80067D94 4600E081 */  sub.s $f2, $f28, $f0
/* 043198 80067D98 461AC602 */  mul.s $f24, $f24, $f26
/* 04319C 80067D9C E7AA0034 */  swc1  $f10, 0x34($sp)
/* 0431A0 80067DA0 E7B60028 */  swc1  $f22, 0x28($sp)
/* 0431A4 80067DA4 4600E700 */  add.s $f28, $f28, $f0
/* 0431A8 80067DA8 E7A60010 */  swc1  $f6, 0x10($sp)
/* 0431AC 80067DAC E7A80030 */  swc1  $f8, 0x30($sp)
/* 0431B0 80067DB0 E7B40018 */  swc1  $f20, 0x18($sp)
/* 0431B4 80067DB4 46186600 */  add.s $f24, $f12, $f24
/* 0431B8 80067DB8 E7A40024 */  swc1  $f4, 0x24($sp)
/* 0431BC 80067DBC E7A20020 */  swc1  $f2, 0x20($sp)
/* 0431C0 80067DC0 E7BC0014 */  swc1  $f28, 0x14($sp)
/* 0431C4 80067DC4 0C019D40 */  jal   guMtxF2L
/* 0431C8 80067DC8 E7B80038 */   swc1  $f24, 0x38($sp)
/* 0431CC 80067DCC 8FBF0070 */  lw    $ra, 0x70($sp)
/* 0431D0 80067DD0 8FB1006C */  lw    $s1, 0x6c($sp)
/* 0431D4 80067DD4 8FB00068 */  lw    $s0, 0x68($sp)
/* 0431D8 80067DD8 D7BE00A0 */  ldc1  $f30, 0xa0($sp)
/* 0431DC 80067DDC D7BC0098 */  ldc1  $f28, 0x98($sp)
/* 0431E0 80067DE0 D7BA0090 */  ldc1  $f26, 0x90($sp)
/* 0431E4 80067DE4 D7B80088 */  ldc1  $f24, 0x88($sp)
/* 0431E8 80067DE8 D7B60080 */  ldc1  $f22, 0x80($sp)
/* 0431EC 80067DEC D7B40078 */  ldc1  $f20, 0x78($sp)
/* 0431F0 80067DF0 03E00008 */  jr    $ra
/* 0431F4 80067DF4 27BD00A8 */   addiu $sp, $sp, 0xa8

/* 0431F8 80067DF8 00000000 */  nop   
/* 0431FC 80067DFC 00000000 */  nop   

.set reorder
