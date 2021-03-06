.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel _heap_malloc
/* 446C 8002906C 24A5000F */  addiu     $a1, $a1, 0xf
/* 4470 80029070 2402FFF0 */  addiu     $v0, $zero, -0x10
/* 4474 80029074 00A22824 */  and       $a1, $a1, $v0
/* 4478 80029078 14A00003 */  bnez      $a1, .L80029088
/* 447C 8002907C 0000382D */   daddu    $a3, $zero, $zero
/* 4480 80029080 03E00008 */  jr        $ra
/* 4484 80029084 00E0102D */   daddu    $v0, $a3, $zero
.L80029088:
/* 4488 80029088 0000402D */  daddu     $t0, $zero, $zero
/* 448C 8002908C 0100502D */  daddu     $t2, $t0, $zero
/* 4490 80029090 0080302D */  daddu     $a2, $a0, $zero
.L80029094:
/* 4494 80029094 94C20008 */  lhu       $v0, 8($a2)
/* 4498 80029098 1440000C */  bnez      $v0, .L800290CC
/* 449C 8002909C 00000000 */   nop      
/* 44A0 800290A0 8CC30004 */  lw        $v1, 4($a2)
/* 44A4 800290A4 0065102B */  sltu      $v0, $v1, $a1
/* 44A8 800290A8 14400008 */  bnez      $v0, .L800290CC
/* 44AC 800290AC 0068102B */   sltu     $v0, $v1, $t0
/* 44B0 800290B0 54400004 */  bnel      $v0, $zero, .L800290C4
/* 44B4 800290B4 00C0382D */   daddu    $a3, $a2, $zero
/* 44B8 800290B8 15000004 */  bnez      $t0, .L800290CC
/* 44BC 800290BC 00000000 */   nop      
/* 44C0 800290C0 00C0382D */  daddu     $a3, $a2, $zero
.L800290C4:
/* 44C4 800290C4 0060402D */  daddu     $t0, $v1, $zero
/* 44C8 800290C8 8CEA0000 */  lw        $t2, ($a3)
.L800290CC:
/* 44CC 800290CC 8CC40000 */  lw        $a0, ($a2)
/* 44D0 800290D0 5480FFF0 */  bnel      $a0, $zero, .L80029094
/* 44D4 800290D4 0080302D */   daddu    $a2, $a0, $zero
/* 44D8 800290D8 11000020 */  beqz      $t0, .L8002915C
/* 44DC 800290DC 24A90010 */   addiu    $t1, $a1, 0x10
/* 44E0 800290E0 0109102B */  sltu      $v0, $t0, $t1
/* 44E4 800290E4 54400012 */  bnel      $v0, $zero, .L80029130
/* 44E8 800290E8 ACEA0000 */   sw       $t2, ($a3)
/* 44EC 800290EC 00E91021 */  addu      $v0, $a3, $t1
/* 44F0 800290F0 ACE20000 */  sw        $v0, ($a3)
/* 44F4 800290F4 0040302D */  daddu     $a2, $v0, $zero
/* 44F8 800290F8 3C038007 */  lui       $v1, 0x8007
/* 44FC 800290FC 24634270 */  addiu     $v1, $v1, 0x4270
/* 4500 80029100 ACE50004 */  sw        $a1, 4($a3)
/* 4504 80029104 94640000 */  lhu       $a0, ($v1)
/* 4508 80029108 24020001 */  addiu     $v0, $zero, 1
/* 450C 8002910C A4E20008 */  sh        $v0, 8($a3)
/* 4510 80029110 24820001 */  addiu     $v0, $a0, 1
/* 4514 80029114 A4620000 */  sh        $v0, ($v1)
/* 4518 80029118 01091023 */  subu      $v0, $t0, $t1
/* 451C 8002911C A4E4000A */  sh        $a0, 0xa($a3)
/* 4520 80029120 ACCA0000 */  sw        $t2, ($a2)
/* 4524 80029124 ACC20004 */  sw        $v0, 4($a2)
/* 4528 80029128 0800A455 */  j         .L80029154
/* 452C 8002912C A4C00008 */   sh       $zero, 8($a2)
.L80029130:
/* 4530 80029130 3C038007 */  lui       $v1, 0x8007
/* 4534 80029134 24634270 */  addiu     $v1, $v1, 0x4270
/* 4538 80029138 ACE80004 */  sw        $t0, 4($a3)
/* 453C 8002913C 94640000 */  lhu       $a0, ($v1)
/* 4540 80029140 24020001 */  addiu     $v0, $zero, 1
/* 4544 80029144 A4E20008 */  sh        $v0, 8($a3)
/* 4548 80029148 24820001 */  addiu     $v0, $a0, 1
/* 454C 8002914C A4620000 */  sh        $v0, ($v1)
/* 4550 80029150 A4E4000A */  sh        $a0, 0xa($a3)
.L80029154:
/* 4554 80029154 03E00008 */  jr        $ra
/* 4558 80029158 24E20010 */   addiu    $v0, $a3, 0x10
.L8002915C:
/* 455C 8002915C 03E00008 */  jr        $ra
/* 4560 80029160 0000102D */   daddu    $v0, $zero, $zero
