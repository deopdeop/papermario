.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel clamp_angle
/* 004F24 80029B24 3C014561 */  lui   $at, 0x4561
/* 004F28 80029B28 44811000 */  mtc1  $at, $f2
/* 004F2C 80029B2C 46006005 */  abs.s $f0, $f12
/* 004F30 80029B30 4600103C */  c.lt.s $f2, $f0
/* 004F34 80029B34 00000000 */  nop   
/* 004F38 80029B38 45000026 */  bc1f  .L80029BD4
/* 004F3C 80029B3C 00000000 */   nop   
/* 004F40 80029B40 4600610D */  trunc.w.s $f4, $f12
/* 004F44 80029B44 44042000 */  mfc1  $a0, $f4
/* 004F48 80029B48 00000000 */  nop   
/* 004F4C 80029B4C 0480000F */  bltz  $a0, .L80029B8C
/* 004F50 80029B50 3C02B60B */   lui   $v0, 0xb60b
/* 004F54 80029B54 344260B7 */  ori   $v0, $v0, 0x60b7
/* 004F58 80029B58 00820018 */  mult  $a0, $v0
/* 004F5C 80029B5C 00041FC3 */  sra   $v1, $a0, 0x1f
/* 004F60 80029B60 00002810 */  mfhi  $a1
/* 004F64 80029B64 00A41021 */  addu  $v0, $a1, $a0
/* 004F68 80029B68 00021203 */  sra   $v0, $v0, 8
/* 004F6C 80029B6C 00431023 */  subu  $v0, $v0, $v1
/* 004F70 80029B70 00021840 */  sll   $v1, $v0, 1
/* 004F74 80029B74 00621821 */  addu  $v1, $v1, $v0
/* 004F78 80029B78 00031100 */  sll   $v0, $v1, 4
/* 004F7C 80029B7C 00431023 */  subu  $v0, $v0, $v1
/* 004F80 80029B80 000210C0 */  sll   $v0, $v0, 3
/* 004F84 80029B84 0800A6F1 */  j     .L80029BC4
/* 004F88 80029B88 00822023 */   subu  $a0, $a0, $v0

.L80029B8C:
/* 004F8C 80029B8C 00042023 */  negu  $a0, $a0
/* 004F90 80029B90 344260B7 */  ori   $v0, $v0, 0x60b7
/* 004F94 80029B94 00820018 */  mult  $a0, $v0
/* 004F98 80029B98 00041FC3 */  sra   $v1, $a0, 0x1f
/* 004F9C 80029B9C 00002810 */  mfhi  $a1
/* 004FA0 80029BA0 00A41021 */  addu  $v0, $a1, $a0
/* 004FA4 80029BA4 00021203 */  sra   $v0, $v0, 8
/* 004FA8 80029BA8 00431023 */  subu  $v0, $v0, $v1
/* 004FAC 80029BAC 00021840 */  sll   $v1, $v0, 1
/* 004FB0 80029BB0 00621821 */  addu  $v1, $v1, $v0
/* 004FB4 80029BB4 00031100 */  sll   $v0, $v1, 4
/* 004FB8 80029BB8 00431023 */  subu  $v0, $v0, $v1
/* 004FBC 80029BBC 000210C0 */  sll   $v0, $v0, 3
/* 004FC0 80029BC0 00442023 */  subu  $a0, $v0, $a0
.L80029BC4:
/* 004FC4 80029BC4 44840000 */  mtc1  $a0, $f0
/* 004FC8 80029BC8 00000000 */  nop   
/* 004FCC 80029BCC 03E00008 */  jr    $ra
/* 004FD0 80029BD0 46800020 */   cvt.s.w $f0, $f0

.L80029BD4:
/* 004FD4 80029BD4 44801000 */  mtc1  $zero, $f2
/* 004FD8 80029BD8 3C0143B4 */  lui   $at, 0x43b4
/* 004FDC 80029BDC 44810000 */  mtc1  $at, $f0
.L80029BE0:
/* 004FE0 80029BE0 4602603C */  c.lt.s $f12, $f2
/* 004FE4 80029BE4 00000000 */  nop   
/* 004FE8 80029BE8 45030001 */  bc1tl .L80029BF0
/* 004FEC 80029BEC 46006300 */   add.s $f12, $f12, $f0
.L80029BF0:
/* 004FF0 80029BF0 460C003E */  c.le.s $f0, $f12
/* 004FF4 80029BF4 00000000 */  nop   
/* 004FF8 80029BF8 45030001 */  bc1tl .L80029C00
/* 004FFC 80029BFC 46006301 */   sub.s $f12, $f12, $f0
.L80029C00:
/* 005000 80029C00 460C103E */  c.le.s $f2, $f12
/* 005004 80029C04 00000000 */  nop   
/* 005008 80029C08 4500FFF5 */  bc1f  .L80029BE0
/* 00500C 80029C0C 00000000 */   nop   
/* 005010 80029C10 4600603C */  c.lt.s $f12, $f0
/* 005014 80029C14 00000000 */  nop   
/* 005018 80029C18 4500FFF1 */  bc1f  .L80029BE0
/* 00501C 80029C1C 00000000 */   nop   
/* 005020 80029C20 03E00008 */  jr    $ra
/* 005024 80029C24 46006006 */   mov.s $f0, $f12

