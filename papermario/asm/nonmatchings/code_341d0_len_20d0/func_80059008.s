.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80059008
/* 034408 80059008 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03440C 8005900C 00071400 */  sll   $v0, $a3, 0x10
/* 034410 80059010 AFBF0010 */  sw    $ra, 0x10($sp)
/* 034414 80059014 A4850006 */  sh    $a1, 6($a0)
/* 034418 80059018 10400008 */  beqz  $v0, .L8005903C
/* 03441C 8005901C A4860008 */   sh    $a2, 8($a0)
/* 034420 80059020 8C820010 */  lw    $v0, 0x10($a0)
/* 034424 80059024 AC82000C */  sw    $v0, 0xc($a0)
/* 034428 80059028 A4470000 */  sh    $a3, ($v0)
/* 03442C 8005902C 0C016374 */  jal   func_80058DD0
/* 034430 80059030 8C84000C */   lw    $a0, 0xc($a0)
/* 034434 80059034 08016410 */  j     .L80059040
/* 034438 80059038 00000000 */   nop   

.L8005903C:
/* 03443C 8005903C AC80000C */  sw    $zero, 0xc($a0)
.L80059040:
/* 034440 80059040 8FBF0010 */  lw    $ra, 0x10($sp)
/* 034444 80059044 03E00008 */  jr    $ra
/* 034448 80059048 27BD0018 */   addiu $sp, $sp, 0x18
