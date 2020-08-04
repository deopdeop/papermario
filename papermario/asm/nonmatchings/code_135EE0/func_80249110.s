.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80249110
.L80249110:
/* 13C450 80249110 00002812 */  mflo  $a1
/* 13C454 80249114 00004010 */  mfhi  $t0
/* 13C458 80249118 30628000 */  andi  $v0, $v1, 0x8000
/* 13C45C 8024911C 1040003F */  beqz  $v0, .L8024921C
/* 13C460 80249120 00000000 */   nop   
/* 13C464 80249124 3C128027 */  lui   $s2, 0x8027
/* 13C468 80249128 265203A0 */  addiu $s2, $s2, 0x3a0
/* 13C46C 8024912C 8E420000 */  lw    $v0, ($s2)
/* 13C470 80249130 10400003 */  beqz  $v0, .L80249140
/* 13C474 80249134 00000000 */   nop   
/* 13C478 80249138 08092581 */  j     func_80249604
/* 13C47C 8024913C AE400000 */   sw    $zero, ($s2)

.L80249140:
/* 13C480 80249140 3C048027 */  lui   $a0, 0x8027
/* 13C484 80249144 24840398 */  addiu $a0, $a0, 0x398
/* 13C488 80249148 8C820000 */  lw    $v0, ($a0)
/* 13C48C 8024914C 14400010 */  bnez  $v0, .L80249190
/* 13C490 80249150 00091040 */   sll   $v0, $t1, 1
/* 13C494 80249154 3C038027 */  lui   $v1, 0x8027
/* 13C498 80249158 00621821 */  addu  $v1, $v1, $v0
/* 13C49C 8024915C 84630180 */  lh    $v1, 0x180($v1)
/* 13C4A0 80249160 24027FFE */  addiu $v0, $zero, 0x7ffe
/* 13C4A4 80249164 14620005 */  bne   $v1, $v0, .L8024917C
/* 13C4A8 80249168 24020001 */   addiu $v0, $zero, 1
/* 13C4AC 8024916C 0C05272D */  jal   play_sound
/* 13C4B0 80249170 2404021D */   addiu $a0, $zero, 0x21d
/* 13C4B4 80249174 08092581 */  j     func_80249604
/* 13C4B8 80249178 00000000 */   nop   

.L8024917C:
/* 13C4BC 8024917C AC820000 */  sw    $v0, ($a0)
/* 13C4C0 80249180 0C05272D */  jal   play_sound
/* 13C4C4 80249184 240400C9 */   addiu $a0, $zero, 0xc9
/* 13C4C8 80249188 08092581 */  j     func_80249604
/* 13C4CC 8024918C 00000000 */   nop   

.L80249190:
/* 13C4D0 80249190 3C118027 */  lui   $s1, 0x8027
/* 13C4D4 80249194 02228821 */  addu  $s1, $s1, $v0
/* 13C4D8 80249198 86310180 */  lh    $s1, 0x180($s1)
/* 13C4DC 8024919C 0C091CCE */  jal   func_80247338
/* 13C4E0 802491A0 0220202D */   daddu $a0, $s1, $zero
/* 13C4E4 802491A4 0040802D */  daddu $s0, $v0, $zero
/* 13C4E8 802491A8 24020001 */  addiu $v0, $zero, 1
/* 13C4EC 802491AC 12020013 */  beq   $s0, $v0, .L802491FC
/* 13C4F0 802491B0 2A020002 */   slti  $v0, $s0, 2
/* 13C4F4 802491B4 50400005 */  beql  $v0, $zero, .L802491CC
/* 13C4F8 802491B8 24020002 */   addiu $v0, $zero, 2
/* 13C4FC 802491BC 12000009 */  beqz  $s0, .L802491E4
/* 13C500 802491C0 00000000 */   nop   
/* 13C504 802491C4 08092581 */  j     func_80249604
/* 13C508 802491C8 00000000 */   nop   

.L802491CC:
/* 13C50C 802491CC 1202000B */  beq   $s0, $v0, .L802491FC
/* 13C510 802491D0 24020003 */   addiu $v0, $zero, 3
/* 13C514 802491D4 1202000D */  beq   $s0, $v0, .L8024920C
/* 13C518 802491D8 00000000 */   nop   
/* 13C51C 802491DC 08092581 */  j     func_80249604
/* 13C520 802491E0 00000000 */   nop   

.L802491E4:
/* 13C524 802491E4 0C05272D */  jal   play_sound
/* 13C528 802491E8 24040006 */   addiu $a0, $zero, 6
/* 13C52C 802491EC 0C091CAC */  jal   func_802472B0
/* 13C530 802491F0 0220202D */   daddu $a0, $s1, $zero
/* 13C534 802491F4 08092581 */  j     func_80249604
/* 13C538 802491F8 00000000 */   nop   

.L802491FC:
/* 13C53C 802491FC 0C05272D */  jal   play_sound
/* 13C540 80249200 2404021D */   addiu $a0, $zero, 0x21d
/* 13C544 80249204 08092581 */  j     func_80249604
/* 13C548 80249208 AE500000 */   sw    $s0, ($s2)

.L8024920C:
/* 13C54C 8024920C 0C05272D */  jal   play_sound
/* 13C550 80249210 24040005 */   addiu $a0, $zero, 5
/* 13C554 80249214 08092581 */  j     func_80249604
/* 13C558 80249218 00000000 */   nop   

.L8024921C:
/* 13C55C 8024921C 14600005 */  bnez  $v1, .L80249234
/* 13C560 80249220 00000000 */   nop   
/* 13C564 80249224 3C028027 */  lui   $v0, 0x8027
/* 13C568 80249228 8C4200C0 */  lw    $v0, 0xc0($v0)
/* 13C56C 8024922C 10400003 */  beqz  $v0, .L8024923C
/* 13C570 80249230 00000000 */   nop   
.L80249234:
/* 13C574 80249234 3C018027 */  lui   $at, 0x8027
/* 13C578 80249238 AC2003A0 */  sw    $zero, 0x3a0($at)
.L8024923C:
/* 13C57C 8024923C 3C028027 */  lui   $v0, 0x8027
/* 13C580 80249240 84420384 */  lh    $v0, 0x384($v0)
/* 13C584 80249244 104000B1 */  beqz  $v0, .L8024950C
/* 13C588 80249248 00000000 */   nop   
/* 13C58C 8024924C 3C028027 */  lui   $v0, 0x8027
/* 13C590 80249250 8C420398 */  lw    $v0, 0x398($v0)
/* 13C594 80249254 14400015 */  bnez  $v0, .L802492AC
/* 13C598 80249258 3C020001 */   lui   $v0, 1
/* 13C59C 8024925C 3C108027 */  lui   $s0, 0x8027
/* 13C5A0 80249260 2610039C */  addiu $s0, $s0, 0x39c
/* 13C5A4 80249264 3C028027 */  lui   $v0, 0x8027
/* 13C5A8 80249268 8C4200C0 */  lw    $v0, 0xc0($v0)
/* 13C5AC 8024926C 3C030003 */  lui   $v1, 3
/* 13C5B0 80249270 00431024 */  and   $v0, $v0, $v1
