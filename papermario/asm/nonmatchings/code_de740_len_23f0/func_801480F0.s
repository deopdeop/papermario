.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_801480F0
/* 0DE7F0 801480F0 3C028007 */  lui   $v0, 0x8007
/* 0DE7F4 801480F4 8C42419C */  lw    $v0, 0x419c($v0)
/* 0DE7F8 801480F8 80420070 */  lb    $v0, 0x70($v0)
/* 0DE7FC 801480FC 1440000B */  bnez  $v0, .L8014812C
/* 0DE800 80148100 00000000 */   nop   
/* 0DE804 80148104 3C028016 */  lui   $v0, 0x8016
/* 0DE808 80148108 244295C0 */  addiu $v0, $v0, -0x6a40
/* 0DE80C 8014810C 3C018015 */  lui   $at, 0x8015
/* 0DE810 80148110 AC221328 */  sw    $v0, 0x1328($at)
/* 0DE814 80148114 3C028016 */  lui   $v0, 0x8016
/* 0DE818 80148118 24429720 */  addiu $v0, $v0, -0x68e0
/* 0DE81C 8014811C 3C018015 */  lui   $at, 0x8015
/* 0DE820 80148120 AC2212B0 */  sw    $v0, 0x12b0($at)
/* 0DE824 80148124 03E00008 */  jr    $ra
/* 0DE828 80148128 00000000 */   nop   

.L8014812C:
/* 0DE82C 8014812C 3C028016 */  lui   $v0, 0x8016
/* 0DE830 80148130 24429670 */  addiu $v0, $v0, -0x6990
/* 0DE834 80148134 3C018015 */  lui   $at, 0x8015
/* 0DE838 80148138 AC221328 */  sw    $v0, 0x1328($at)
/* 0DE83C 8014813C 3C028016 */  lui   $v0, 0x8016
/* 0DE840 80148140 244297D0 */  addiu $v0, $v0, -0x6830
/* 0DE844 80148144 3C018015 */  lui   $at, 0x8015
/* 0DE848 80148148 AC2212B0 */  sw    $v0, 0x12b0($at)
/* 0DE84C 8014814C 03E00008 */  jr    $ra
/* 0DE850 80148150 00000000 */   nop   

/* 0DE854 80148154 2C820007 */  sltiu $v0, $a0, 7
/* 0DE858 80148158 44860000 */  mtc1  $a2, $f0
/* 0DE85C 8014815C 44871000 */  mtc1  $a3, $f2
/* 0DE860 80148160 8FA60014 */  lw    $a2, 0x14($sp)
/* 0DE864 80148164 8FA70018 */  lw    $a3, 0x18($sp)
/* 0DE868 80148168 8FA8001C */  lw    $t0, 0x1c($sp)
/* 0DE86C 8014816C 8FA90024 */  lw    $t1, 0x24($sp)
/* 0DE870 80148170 10400012 */  beqz  $v0, .L801481BC
/* 0DE874 80148174 00041040 */   sll   $v0, $a0, 1
/* 0DE878 80148178 00441021 */  addu  $v0, $v0, $a0
/* 0DE87C 8014817C 000210C0 */  sll   $v0, $v0, 3
/* 0DE880 80148180 3C038015 */  lui   $v1, 0x8015
/* 0DE884 80148184 8C631328 */  lw    $v1, 0x1328($v1)
/* 0DE888 80148188 24420004 */  addiu $v0, $v0, 4
/* 0DE88C 8014818C 00621821 */  addu  $v1, $v1, $v0
/* 0DE890 80148190 A0650000 */  sb    $a1, ($v1)
/* 0DE894 80148194 E4600004 */  swc1  $f0, 4($v1)
/* 0DE898 80148198 E4620008 */  swc1  $f2, 8($v1)
/* 0DE89C 8014819C C7A00010 */  lwc1  $f0, 0x10($sp)
/* 0DE8A0 801481A0 A0660001 */  sb    $a2, 1($v1)
/* 0DE8A4 801481A4 A0670002 */  sb    $a3, 2($v1)
/* 0DE8A8 801481A8 A0680003 */  sb    $t0, 3($v1)
/* 0DE8AC 801481AC E460000C */  swc1  $f0, 0xc($v1)
/* 0DE8B0 801481B0 C7A00020 */  lwc1  $f0, 0x20($sp)
/* 0DE8B4 801481B4 A0690014 */  sb    $t1, 0x14($v1)
/* 0DE8B8 801481B8 E4600010 */  swc1  $f0, 0x10($v1)
.L801481BC:
/* 0DE8BC 801481BC 03E00008 */  jr    $ra
/* 0DE8C0 801481C0 00000000 */   nop   

