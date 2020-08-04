.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80125C84
/* 0BC384 80125C84 288200F0 */  slti  $v0, $a0, 0xf0
/* 0BC388 80125C88 44871000 */  mtc1  $a3, $f2
/* 0BC38C 80125C8C 8FA70010 */  lw    $a3, 0x10($sp)
/* 0BC390 80125C90 93A30017 */  lbu   $v1, 0x17($sp)
/* 0BC394 80125C94 14400004 */  bnez  $v0, .L80125CA8
/* 0BC398 80125C98 2482FF09 */   addiu $v0, $a0, -0xf7
/* 0BC39C 80125C9C 2C420003 */  sltiu $v0, $v0, 3
/* 0BC3A0 80125CA0 10400036 */  beqz  $v0, .L80125D7C
/* 0BC3A4 80125CA4 0000102D */   daddu $v0, $zero, $zero
.L80125CA8:
/* 0BC3A8 80125CA8 10E00005 */  beqz  $a3, .L80125CC0
/* 0BC3AC 80125CAC 240200F7 */   addiu $v0, $zero, 0xf7
/* 0BC3B0 80125CB0 44870000 */  mtc1  $a3, $f0
/* 0BC3B4 80125CB4 00000000 */  nop   
/* 0BC3B8 80125CB8 08049754 */  j     .L80125D50
/* 0BC3BC 80125CBC 46800020 */   cvt.s.w $f0, $f0

.L80125CC0:
/* 0BC3C0 80125CC0 10600015 */  beqz  $v1, .L80125D18
/* 0BC3C4 80125CC4 00051880 */   sll   $v1, $a1, 2
/* 0BC3C8 80125CC8 00061040 */  sll   $v0, $a2, 1
/* 0BC3CC 80125CCC 3C01802F */  lui   $at, 0x802f
/* 0BC3D0 80125CD0 00230821 */  addu  $at, $at, $v1
/* 0BC3D4 80125CD4 8C23B5A8 */  lw    $v1, -0x4a58($at)
/* 0BC3D8 80125CD8 00461021 */  addu  $v0, $v0, $a2
/* 0BC3DC 80125CDC 8C630008 */  lw    $v1, 8($v1)
/* 0BC3E0 80125CE0 00021080 */  sll   $v0, $v0, 2
/* 0BC3E4 80125CE4 00431021 */  addu  $v0, $v0, $v1
/* 0BC3E8 80125CE8 8C430004 */  lw    $v1, 4($v0)
/* 0BC3EC 80125CEC 1060000A */  beqz  $v1, .L80125D18
/* 0BC3F0 80125CF0 240200F7 */   addiu $v0, $zero, 0xf7
/* 0BC3F4 80125CF4 10820008 */  beq   $a0, $v0, .L80125D18
/* 0BC3F8 80125CF8 240200F8 */   addiu $v0, $zero, 0xf8
/* 0BC3FC 80125CFC 10820006 */  beq   $a0, $v0, .L80125D18
/* 0BC400 80125D00 240200F9 */   addiu $v0, $zero, 0xf9
/* 0BC404 80125D04 10820004 */  beq   $a0, $v0, .L80125D18
/* 0BC408 80125D08 00641021 */   addu  $v0, $v1, $a0
/* 0BC40C 80125D0C 90420000 */  lbu   $v0, ($v0)
/* 0BC410 80125D10 08049750 */  j     .L80125D40
/* 0BC414 80125D14 00000000 */   nop   

.L80125D18:
/* 0BC418 80125D18 00051880 */  sll   $v1, $a1, 2
/* 0BC41C 80125D1C 00061040 */  sll   $v0, $a2, 1
/* 0BC420 80125D20 3C01802F */  lui   $at, 0x802f
/* 0BC424 80125D24 00230821 */  addu  $at, $at, $v1
/* 0BC428 80125D28 8C23B5A8 */  lw    $v1, -0x4a58($at)
/* 0BC42C 80125D2C 00461021 */  addu  $v0, $v0, $a2
/* 0BC430 80125D30 8C630008 */  lw    $v1, 8($v1)
/* 0BC434 80125D34 00021080 */  sll   $v0, $v0, 2
/* 0BC438 80125D38 00431021 */  addu  $v0, $v0, $v1
/* 0BC43C 80125D3C 90420008 */  lbu   $v0, 8($v0)
.L80125D40:
/* 0BC440 80125D40 44820000 */  mtc1  $v0, $f0
/* 0BC444 80125D44 00000000 */  nop   
/* 0BC448 80125D48 46800020 */  cvt.s.w $f0, $f0
/* 0BC44C 80125D4C 240200F7 */  addiu $v0, $zero, 0xf7
.L80125D50:
/* 0BC450 80125D50 1482000C */  bne   $a0, $v0, .L80125D84
/* 0BC454 80125D54 240200F8 */   addiu $v0, $zero, 0xf8
/* 0BC458 80125D58 46020002 */  mul.s $f0, $f0, $f2
/* 0BC45C 80125D5C 00000000 */  nop   
/* 0BC460 80125D60 3C018015 */  lui   $at, 0x8015
/* 0BC464 80125D64 D4220578 */  ldc1  $f2, 0x578($at)
/* 0BC468 80125D68 46000021 */  cvt.d.s $f0, $f0
.L80125D6C:
/* 0BC46C 80125D6C 46220002 */  mul.d $f0, $f0, $f2
/* 0BC470 80125D70 00000000 */  nop   
/* 0BC474 80125D74 4620010D */  trunc.w.d $f4, $f0
/* 0BC478 80125D78 44022000 */  mfc1  $v0, $f4
.L80125D7C:
/* 0BC47C 80125D7C 03E00008 */  jr    $ra
/* 0BC480 80125D80 00000000 */   nop   

.L80125D84:
/* 0BC484 80125D84 14820008 */  bne   $a0, $v0, .L80125DA8
/* 0BC488 80125D88 240200F9 */   addiu $v0, $zero, 0xf9
/* 0BC48C 80125D8C 46020002 */  mul.s $f0, $f0, $f2
/* 0BC490 80125D90 00000000 */  nop   
/* 0BC494 80125D94 46000021 */  cvt.d.s $f0, $f0
/* 0BC498 80125D98 4620010D */  trunc.w.d $f4, $f0
/* 0BC49C 80125D9C 44022000 */  mfc1  $v0, $f4
/* 0BC4A0 80125DA0 03E00008 */  jr    $ra
/* 0BC4A4 80125DA4 00000000 */   nop   

.L80125DA8:
/* 0BC4A8 80125DA8 14820008 */  bne   $a0, $v0, .L80125DCC
/* 0BC4AC 80125DAC 288200F0 */   slti  $v0, $a0, 0xf0
/* 0BC4B0 80125DB0 46020002 */  mul.s $f0, $f0, $f2
/* 0BC4B4 80125DB4 00000000 */  nop   
/* 0BC4B8 80125DB8 3C013FE0 */  lui   $at, 0x3fe0
/* 0BC4BC 80125DBC 44811800 */  mtc1  $at, $f3
/* 0BC4C0 80125DC0 44801000 */  mtc1  $zero, $f2
/* 0BC4C4 80125DC4 0804975B */  j     .L80125D6C
/* 0BC4C8 80125DC8 46000021 */   cvt.d.s $f0, $f0

.L80125DCC:
/* 0BC4CC 80125DCC 10400007 */  beqz  $v0, .L80125DEC
/* 0BC4D0 80125DD0 00000000 */   nop   
/* 0BC4D4 80125DD4 46020002 */  mul.s $f0, $f0, $f2
/* 0BC4D8 80125DD8 00000000 */  nop   
/* 0BC4DC 80125DDC 4600010D */  trunc.w.s $f4, $f0
/* 0BC4E0 80125DE0 44022000 */  mfc1  $v0, $f4
/* 0BC4E4 80125DE4 03E00008 */  jr    $ra
/* 0BC4E8 80125DE8 00000000 */   nop   

.L80125DEC:
/* 0BC4EC 80125DEC 03E00008 */  jr    $ra
/* 0BC4F0 80125DF0 0000102D */   daddu $v0, $zero, $zero

