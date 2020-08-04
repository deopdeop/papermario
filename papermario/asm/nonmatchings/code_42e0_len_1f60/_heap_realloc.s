.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel _heap_realloc
/* 0046C4 800292C4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0046C8 800292C8 AFB3001C */  sw    $s3, 0x1c($sp)
/* 0046CC 800292CC 0080982D */  daddu $s3, $a0, $zero
/* 0046D0 800292D0 AFB20018 */  sw    $s2, 0x18($sp)
/* 0046D4 800292D4 00A0902D */  daddu $s2, $a1, $zero
/* 0046D8 800292D8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0046DC 800292DC 2651FFF0 */  addiu $s1, $s2, -0x10
/* 0046E0 800292E0 24C6000F */  addiu $a2, $a2, 0xf
/* 0046E4 800292E4 2402FFF0 */  addiu $v0, $zero, -0x10
/* 0046E8 800292E8 AFBF0020 */  sw    $ra, 0x20($sp)
/* 0046EC 800292EC AFB00010 */  sw    $s0, 0x10($sp)
/* 0046F0 800292F0 9643FFF8 */  lhu   $v1, -8($s2)
/* 0046F4 800292F4 10600016 */  beqz  $v1, .L80029350
/* 0046F8 800292F8 00C28024 */   and   $s0, $a2, $v0
/* 0046FC 800292FC 8E45FFF0 */  lw    $a1, -0x10($s2)
/* 004700 80029300 8E44FFF4 */  lw    $a0, -0xc($s2)
/* 004704 80029304 00A0182D */  daddu $v1, $a1, $zero
/* 004708 80029308 10600009 */  beqz  $v1, .L80029330
/* 00470C 8002930C 0090102B */   sltu  $v0, $a0, $s0
/* 004710 80029310 94620008 */  lhu   $v0, 8($v1)
/* 004714 80029314 14400006 */  bnez  $v0, .L80029330
/* 004718 80029318 0090102B */   sltu  $v0, $a0, $s0
/* 00471C 8002931C 8C650000 */  lw    $a1, ($v1)
/* 004720 80029320 8C630004 */  lw    $v1, 4($v1)
/* 004724 80029324 24820010 */  addiu $v0, $a0, 0x10
/* 004728 80029328 00432021 */  addu  $a0, $v0, $v1
/* 00472C 8002932C 0090102B */  sltu  $v0, $a0, $s0
.L80029330:
/* 004730 80029330 10400011 */  beqz  $v0, .L80029378
/* 004734 80029334 0220182D */   daddu $v1, $s1, $zero
/* 004738 80029338 0260202D */  daddu $a0, $s3, $zero
/* 00473C 8002933C 0C00A41B */  jal   _heap_malloc
/* 004740 80029340 0200282D */   daddu $a1, $s0, $zero
/* 004744 80029344 0040882D */  daddu $s1, $v0, $zero
/* 004748 80029348 16200003 */  bnez  $s1, .L80029358
/* 00474C 8002934C 0220202D */   daddu $a0, $s1, $zero
.L80029350:
/* 004750 80029350 0800A4EE */  j     .L800293B8
/* 004754 80029354 0000102D */   daddu $v0, $zero, $zero

.L80029358:
/* 004758 80029358 0240282D */  daddu $a1, $s2, $zero
/* 00475C 8002935C 0C01929D */  jal   memcpy
/* 004760 80029360 0200302D */   daddu $a2, $s0, $zero
/* 004764 80029364 0260202D */  daddu $a0, $s3, $zero
/* 004768 80029368 0C00A487 */  jal   _heap_free
/* 00476C 8002936C 0240282D */   daddu $a1, $s2, $zero
/* 004770 80029370 0800A4EE */  j     .L800293B8
/* 004774 80029374 0220102D */   daddu $v0, $s1, $zero

.L80029378:
/* 004778 80029378 26020010 */  addiu $v0, $s0, 0x10
/* 00477C 8002937C 0044102B */  sltu  $v0, $v0, $a0
/* 004780 80029380 1040000A */  beqz  $v0, .L800293AC
/* 004784 80029384 02501021 */   addu  $v0, $s2, $s0
/* 004788 80029388 AC620000 */  sw    $v0, ($v1)
/* 00478C 8002938C AC700004 */  sw    $s0, 4($v1)
/* 004790 80029390 0040182D */  daddu $v1, $v0, $zero
/* 004794 80029394 00901023 */  subu  $v0, $a0, $s0
/* 004798 80029398 2442FFF0 */  addiu $v0, $v0, -0x10
/* 00479C 8002939C AC650000 */  sw    $a1, ($v1)
/* 0047A0 800293A0 AC620004 */  sw    $v0, 4($v1)
/* 0047A4 800293A4 0800A4ED */  j     .L800293B4
/* 0047A8 800293A8 A4600008 */   sh    $zero, 8($v1)

.L800293AC:
/* 0047AC 800293AC AC650000 */  sw    $a1, ($v1)
/* 0047B0 800293B0 AC640004 */  sw    $a0, 4($v1)
.L800293B4:
/* 0047B4 800293B4 0240102D */  daddu $v0, $s2, $zero
.L800293B8:
/* 0047B8 800293B8 8FBF0020 */  lw    $ra, 0x20($sp)
/* 0047BC 800293BC 8FB3001C */  lw    $s3, 0x1c($sp)
/* 0047C0 800293C0 8FB20018 */  lw    $s2, 0x18($sp)
/* 0047C4 800293C4 8FB10014 */  lw    $s1, 0x14($sp)
/* 0047C8 800293C8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0047CC 800293CC 03E00008 */  jr    $ra
/* 0047D0 800293D0 27BD0028 */   addiu $sp, $sp, 0x28

