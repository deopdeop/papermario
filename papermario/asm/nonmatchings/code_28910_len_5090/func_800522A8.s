.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800522A8
/* 02D6A8 800522A8 24A901D4 */  addiu $t1, $a1, 0x1d4
/* 02D6AC 800522AC 8CA70030 */  lw    $a3, 0x30($a1)
/* 02D6B0 800522B0 8CA20034 */  lw    $v0, 0x34($a1)
/* 02D6B4 800522B4 00E2102B */  sltu  $v0, $a3, $v0
/* 02D6B8 800522B8 1040001A */  beqz  $v0, .L80052324
/* 02D6BC 800522BC 0000402D */   daddu $t0, $zero, $zero
/* 02D6C0 800522C0 24A601D6 */  addiu $a2, $a1, 0x1d6
.L800522C4:
/* 02D6C4 800522C4 8CA20030 */  lw    $v0, 0x30($a1)
/* 02D6C8 800522C8 00E21023 */  subu  $v0, $a3, $v0
/* 02D6CC 800522CC 000210C0 */  sll   $v0, $v0, 3
/* 02D6D0 800522D0 244207B4 */  addiu $v0, $v0, 0x7b4
/* 02D6D4 800522D4 00821821 */  addu  $v1, $a0, $v0
/* 02D6D8 800522D8 90620007 */  lbu   $v0, 7($v1)
/* 02D6DC 800522DC 1040000C */  beqz  $v0, .L80052310
/* 02D6E0 800522E0 00000000 */   nop   
/* 02D6E4 800522E4 90620001 */  lbu   $v0, 1($v1)
/* 02D6E8 800522E8 A1220000 */  sb    $v0, ($t1)
/* 02D6EC 800522EC 90620002 */  lbu   $v0, 2($v1)
/* 02D6F0 800522F0 25080001 */  addiu $t0, $t0, 1
/* 02D6F4 800522F4 A0C2FFFF */  sb    $v0, -1($a2)
/* 02D6F8 800522F8 90620006 */  lbu   $v0, 6($v1)
/* 02D6FC 800522FC 25290004 */  addiu $t1, $t1, 4
/* 02D700 80052300 A0C20000 */  sb    $v0, ($a2)
/* 02D704 80052304 2D020004 */  sltiu $v0, $t0, 4
/* 02D708 80052308 10400006 */  beqz  $v0, .L80052324
/* 02D70C 8005230C 24C60004 */   addiu $a2, $a2, 4
.L80052310:
/* 02D710 80052310 8CA20034 */  lw    $v0, 0x34($a1)
/* 02D714 80052314 24E70001 */  addiu $a3, $a3, 1
/* 02D718 80052318 00E2102B */  sltu  $v0, $a3, $v0
/* 02D71C 8005231C 1440FFE9 */  bnez  $v0, .L800522C4
/* 02D720 80052320 00000000 */   nop   
.L80052324:
/* 02D724 80052324 03E00008 */  jr    $ra
/* 02D728 80052328 00000000 */   nop   

