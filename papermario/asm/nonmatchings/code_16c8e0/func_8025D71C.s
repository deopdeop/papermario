.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8025D71C
/* 18BFFC 8025D71C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 18C000 8025D720 AFBF0024 */  sw    $ra, 0x24($sp)
/* 18C004 8025D724 AFB20020 */  sw    $s2, 0x20($sp)
/* 18C008 8025D728 AFB1001C */  sw    $s1, 0x1c($sp)
/* 18C00C 8025D72C AFB00018 */  sw    $s0, 0x18($sp)
/* 18C010 8025D730 8C9000C0 */  lw    $s0, 0xc0($a0)
/* 18C014 8025D734 00A0882D */  daddu $s1, $a1, $zero
/* 18C018 8025D738 02119021 */  addu  $s2, $s0, $s1
/* 18C01C 8025D73C 824308BC */  lb    $v1, 0x8bc($s2)
/* 18C020 8025D740 10600005 */  beqz  $v1, .L8025D758
/* 18C024 8025D744 24020001 */   addiu $v0, $zero, 1
/* 18C028 8025D748 10620015 */  beq   $v1, $v0, .L8025D7A0
/* 18C02C 8025D74C 00111080 */   sll   $v0, $s1, 2
/* 18C030 8025D750 080975FE */  j     .L8025D7F8
/* 18C034 8025D754 00000000 */   nop   

.L8025D758:
/* 18C038 8025D758 3C013F80 */  lui   $at, 0x3f80
/* 18C03C 8025D75C 44810000 */  mtc1  $at, $f0
/* 18C040 8025D760 AFA00014 */  sw    $zero, 0x14($sp)
/* 18C044 8025D764 E7A00010 */  swc1  $f0, 0x10($sp)
/* 18C048 8025D768 8C850058 */  lw    $a1, 0x58($a0)
/* 18C04C 8025D76C 8C86005C */  lw    $a2, 0x5c($a0)
/* 18C050 8025D770 8C870060 */  lw    $a3, 0x60($a0)
/* 18C054 8025D774 0C01C79C */  jal   func_80071E70
/* 18C058 8025D778 24040002 */   addiu $a0, $zero, 2
/* 18C05C 8025D77C 00111880 */  sll   $v1, $s1, 2
/* 18C060 8025D780 02031821 */  addu  $v1, $s0, $v1
/* 18C064 8025D784 AC6208B0 */  sw    $v0, 0x8b0($v1)
/* 18C068 8025D788 00111100 */  sll   $v0, $s1, 4
/* 18C06C 8025D78C 02021021 */  addu  $v0, $s0, $v0
/* 18C070 8025D790 24030001 */  addiu $v1, $zero, 1
/* 18C074 8025D794 A44308C6 */  sh    $v1, 0x8c6($v0)
/* 18C078 8025D798 080975FE */  j     .L8025D7F8
/* 18C07C 8025D79C A24308BC */   sb    $v1, 0x8bc($s2)

.L8025D7A0:
/* 18C080 8025D7A0 02021021 */  addu  $v0, $s0, $v0
/* 18C084 8025D7A4 8C4308B0 */  lw    $v1, 0x8b0($v0)
/* 18C088 8025D7A8 C4800058 */  lwc1  $f0, 0x58($a0)
/* 18C08C 8025D7AC 8C62000C */  lw    $v0, 0xc($v1)
/* 18C090 8025D7B0 E4400038 */  swc1  $f0, 0x38($v0)
/* 18C094 8025D7B4 8C62000C */  lw    $v0, 0xc($v1)
/* 18C098 8025D7B8 C480005C */  lwc1  $f0, 0x5c($a0)
/* 18C09C 8025D7BC E440003C */  swc1  $f0, 0x3c($v0)
/* 18C0A0 8025D7C0 8C62000C */  lw    $v0, 0xc($v1)
/* 18C0A4 8025D7C4 C4800060 */  lwc1  $f0, 0x60($a0)
/* 18C0A8 8025D7C8 E4400040 */  swc1  $f0, 0x40($v0)
/* 18C0AC 8025D7CC 00111100 */  sll   $v0, $s1, 4
/* 18C0B0 8025D7D0 02021021 */  addu  $v0, $s0, $v0
/* 18C0B4 8025D7D4 844208C6 */  lh    $v0, 0x8c6($v0)
/* 18C0B8 8025D7D8 3C0142C8 */  lui   $at, 0x42c8
/* 18C0BC 8025D7DC 44811000 */  mtc1  $at, $f2
/* 18C0C0 8025D7E0 44820000 */  mtc1  $v0, $f0
/* 18C0C4 8025D7E4 00000000 */  nop   
/* 18C0C8 8025D7E8 46800020 */  cvt.s.w $f0, $f0
/* 18C0CC 8025D7EC 8C62000C */  lw    $v0, 0xc($v1)
/* 18C0D0 8025D7F0 46020003 */  div.s $f0, $f0, $f2
/* 18C0D4 8025D7F4 E4400034 */  swc1  $f0, 0x34($v0)
.L8025D7F8:
/* 18C0D8 8025D7F8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 18C0DC 8025D7FC 8FB20020 */  lw    $s2, 0x20($sp)
/* 18C0E0 8025D800 8FB1001C */  lw    $s1, 0x1c($sp)
/* 18C0E4 8025D804 8FB00018 */  lw    $s0, 0x18($sp)
/* 18C0E8 8025D808 03E00008 */  jr    $ra
/* 18C0EC 8025D80C 27BD0028 */   addiu $sp, $sp, 0x28

