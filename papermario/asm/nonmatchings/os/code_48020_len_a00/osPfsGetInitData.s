.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel osPfsGetInitData
/* 048960 8006D560 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 048964 8006D564 00805821 */  addu  $t3, $a0, $zero
/* 048968 8006D568 00A04821 */  addu  $t1, $a1, $zero
/* 04896C 8006D56C 00005021 */  addu  $t2, $zero, $zero
/* 048970 8006D570 3C02800A */  lui   $v0, 0x800a
/* 048974 8006D574 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 048978 8006D578 3C08800E */  lui   $t0, 0x800e
/* 04897C 8006D57C 2508A000 */  addiu $t0, $t0, -0x6000
/* 048980 8006D580 18400021 */  blez  $v0, .L8006D608
/* 048984 8006D584 00003821 */   addu  $a3, $zero, $zero
/* 048988 8006D588 240C0001 */  addiu $t4, $zero, 1
/* 04898C 8006D58C 24A60002 */  addiu $a2, $a1, 2
.L8006D590:
/* 048990 8006D590 89020000 */  lwl   $v0, ($t0)
/* 048994 8006D594 99020003 */  lwr   $v0, 3($t0)
/* 048998 8006D598 89030004 */  lwl   $v1, 4($t0)
/* 04899C 8006D59C 99030007 */  lwr   $v1, 7($t0)
/* 0489A0 8006D5A0 ABA20000 */  swl   $v0, ($sp)
/* 0489A4 8006D5A4 BBA20003 */  swr   $v0, 3($sp)
/* 0489A8 8006D5A8 ABA30004 */  swl   $v1, 4($sp)
/* 0489AC 8006D5AC BBA30007 */  swr   $v1, 7($sp)
/* 0489B0 8006D5B0 93A20002 */  lbu   $v0, 2($sp)
/* 0489B4 8006D5B4 304200C0 */  andi  $v0, $v0, 0xc0
/* 0489B8 8006D5B8 00021102 */  srl   $v0, $v0, 4
/* 0489BC 8006D5BC 1440000A */  bnez  $v0, .L8006D5E8
/* 0489C0 8006D5C0 A0C20001 */   sb    $v0, 1($a2)
/* 0489C4 8006D5C4 93A20005 */  lbu   $v0, 5($sp)
/* 0489C8 8006D5C8 93A30004 */  lbu   $v1, 4($sp)
/* 0489CC 8006D5CC 00021200 */  sll   $v0, $v0, 8
/* 0489D0 8006D5D0 00621825 */  or    $v1, $v1, $v0
/* 0489D4 8006D5D4 A5230000 */  sh    $v1, ($t1)
/* 0489D8 8006D5D8 93A30006 */  lbu   $v1, 6($sp)
/* 0489DC 8006D5DC 00EC1004 */  sllv  $v0, $t4, $a3
/* 0489E0 8006D5E0 01425025 */  or    $t2, $t2, $v0
/* 0489E4 8006D5E4 A0C30000 */  sb    $v1, ($a2)
.L8006D5E8:
/* 0489E8 8006D5E8 24E70001 */  addiu $a3, $a3, 1
/* 0489EC 8006D5EC 25080008 */  addiu $t0, $t0, 8
/* 0489F0 8006D5F0 3C02800A */  lui   $v0, 0x800a
/* 0489F4 8006D5F4 9042A606 */  lbu   $v0, -0x59fa($v0)
/* 0489F8 8006D5F8 24C60004 */  addiu $a2, $a2, 4
/* 0489FC 8006D5FC 00E2102A */  slt   $v0, $a3, $v0
/* 048A00 8006D600 1440FFE3 */  bnez  $v0, .L8006D590
/* 048A04 8006D604 25290004 */   addiu $t1, $t1, 4
.L8006D608:
/* 048A08 8006D608 A16A0000 */  sb    $t2, ($t3)
/* 048A0C 8006D60C 03E00008 */  jr    $ra
/* 048A10 8006D610 27BD0010 */   addiu $sp, $sp, 0x10

/* 048A14 8006D614 00000000 */  nop   
/* 048A18 8006D618 00000000 */  nop   
/* 048A1C 8006D61C 00000000 */  nop   

.set reorder
