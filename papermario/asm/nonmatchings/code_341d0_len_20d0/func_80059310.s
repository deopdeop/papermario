.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80059310
/* 034710 80059310 27BDFF98 */  addiu $sp, $sp, -0x68
/* 034714 80059314 AFB00030 */  sw    $s0, 0x30($sp)
/* 034718 80059318 00A0802D */  daddu $s0, $a1, $zero
/* 03471C 8005931C AFB10034 */  sw    $s1, 0x34($sp)
/* 034720 80059320 00C0882D */  daddu $s1, $a2, $zero
/* 034724 80059324 AFB60048 */  sw    $s6, 0x48($sp)
/* 034728 80059328 24F60170 */  addiu $s6, $a3, 0x170
/* 03472C 8005932C 32220FFF */  andi  $v0, $s1, 0xfff
/* 034730 80059330 3C030617 */  lui   $v1, 0x617
/* 034734 80059334 00431025 */  or    $v0, $v0, $v1
/* 034738 80059338 AFBF0054 */  sw    $ra, 0x54($sp)
/* 03473C 8005933C AFBE0050 */  sw    $fp, 0x50($sp)
/* 034740 80059340 AFB7004C */  sw    $s7, 0x4c($sp)
/* 034744 80059344 AFB50044 */  sw    $s5, 0x44($sp)
/* 034748 80059348 AFB40040 */  sw    $s4, 0x40($sp)
/* 03474C 8005934C AFB3003C */  sw    $s3, 0x3c($sp)
/* 034750 80059350 AFB20038 */  sw    $s2, 0x38($sp)
/* 034754 80059354 F7B60060 */  sdc1  $f22, 0x60($sp)
/* 034758 80059358 F7B40058 */  sdc1  $f20, 0x58($sp)
/* 03475C 8005935C AFA40068 */  sw    $a0, 0x68($sp)
/* 034760 80059360 A7A70026 */  sh    $a3, 0x26($sp)
/* 034764 80059364 A7A0001E */  sh    $zero, 0x1e($sp)
/* 034768 80059368 AE020000 */  sw    $v0, ($s0)
/* 03476C 8005936C 8FA80068 */  lw    $t0, 0x68($sp)
/* 034770 80059370 26120008 */  addiu $s2, $s0, 8
/* 034774 80059374 8D040004 */  lw    $a0, 4($t0)
/* 034778 80059378 0C0187A4 */  jal   osVirtualToPhysical
/* 03477C 8005937C 24F302E0 */   addiu $s3, $a3, 0x2e0
/* 034780 80059380 0240202D */  daddu $a0, $s2, $zero
/* 034784 80059384 3C0300FF */  lui   $v1, 0xff
/* 034788 80059388 3463FFFF */  ori   $v1, $v1, 0xffff
/* 03478C 8005938C AE020004 */  sw    $v0, 4($s0)
/* 034790 80059390 00111400 */  sll   $v0, $s1, 0x10
/* 034794 80059394 00021403 */  sra   $v0, $v0, 0x10
/* 034798 80059398 00431024 */  and   $v0, $v0, $v1
/* 03479C 8005939C 3C030200 */  lui   $v1, 0x200
/* 0347A0 800593A0 00431025 */  or    $v0, $v0, $v1
/* 0347A4 800593A4 AC820000 */  sw    $v0, ($a0)
/* 0347A8 800593A8 24020170 */  addiu $v0, $zero, 0x170
/* 0347AC 800593AC AC820004 */  sw    $v0, 4($a0)
/* 0347B0 800593B0 8FA80068 */  lw    $t0, 0x68($sp)
/* 0347B4 800593B4 0000A02D */  daddu $s4, $zero, $zero
/* 0347B8 800593B8 91020010 */  lbu   $v0, 0x10($t0)
/* 0347BC 800593BC 26520008 */  addiu $s2, $s2, 8
/* 0347C0 800593C0 1040011D */  beqz  $v0, .L80059838
/* 0347C4 800593C4 A7B10028 */   sh    $s1, 0x28($sp)
/* 0347C8 800593C8 00131400 */  sll   $v0, $s3, 0x10
/* 0347CC 800593CC 3C014700 */  lui   $at, 0x4700
/* 0347D0 800593D0 4481B000 */  mtc1  $at, $f22
/* 0347D4 800593D4 00021403 */  sra   $v0, $v0, 0x10
/* 0347D8 800593D8 AFA2002C */  sw    $v0, 0x2c($sp)
.L800593DC:
/* 0347DC 800593DC 97A8001E */  lhu   $t0, 0x1e($sp)
/* 0347E0 800593E0 00081400 */  sll   $v0, $t0, 0x10
/* 0347E4 800593E4 00021403 */  sra   $v0, $v0, 0x10
/* 0347E8 800593E8 00021840 */  sll   $v1, $v0, 1
/* 0347EC 800593EC 00621821 */  addu  $v1, $v1, $v0
/* 0347F0 800593F0 8FA80068 */  lw    $t0, 0x68($sp)
/* 0347F4 800593F4 00031900 */  sll   $v1, $v1, 4
/* 0347F8 800593F8 8D02000C */  lw    $v0, 0xc($t0)
/* 0347FC 800593FC 8D040004 */  lw    $a0, 4($t0)
/* 034800 80059400 00439821 */  addu  $s3, $v0, $v1
/* 034804 80059404 8E620000 */  lw    $v0, ($s3)
/* 034808 80059408 8D030000 */  lw    $v1, ($t0)
/* 03480C 8005940C 00021040 */  sll   $v0, $v0, 1
/* 034810 80059410 0082B823 */  subu  $s7, $a0, $v0
/* 034814 80059414 02E3102B */  sltu  $v0, $s7, $v1
/* 034818 80059418 10400004 */  beqz  $v0, .L8005942C
/* 03481C 8005941C 00000000 */   nop   
/* 034820 80059420 8D020008 */  lw    $v0, 8($t0)
/* 034824 80059424 00021040 */  sll   $v0, $v0, 1
/* 034828 80059428 02E2B821 */  addu  $s7, $s7, $v0
.L8005942C:
/* 03482C 8005942C 8E620004 */  lw    $v0, 4($s3)
/* 034830 80059430 00021040 */  sll   $v0, $v0, 1
/* 034834 80059434 0082F023 */  subu  $fp, $a0, $v0
/* 034838 80059438 03C3102B */  sltu  $v0, $fp, $v1
/* 03483C 8005943C 10400005 */  beqz  $v0, .L80059454
/* 034840 80059440 00000000 */   nop   
/* 034844 80059444 8FA80068 */  lw    $t0, 0x68($sp)
/* 034848 80059448 8D020008 */  lw    $v0, 8($t0)
/* 03484C 8005944C 00021040 */  sll   $v0, $v0, 1
/* 034850 80059450 03C2F021 */  addu  $fp, $fp, $v0
.L80059454:
/* 034854 80059454 16F40005 */  bne   $s7, $s4, .L8005946C
/* 034858 80059458 0240802D */   daddu $s0, $s2, $zero
/* 03485C 8005945C 02C0102D */  daddu $v0, $s6, $zero
/* 034860 80059460 97B60026 */  lhu   $s6, 0x26($sp)
/* 034864 80059464 08016524 */  j     .L80059490
/* 034868 80059468 A7A20026 */   sh    $v0, 0x26($sp)

.L8005946C:
/* 03486C 8005946C 26520008 */  addiu $s2, $s2, 8
/* 034870 80059470 02E0202D */  daddu $a0, $s7, $zero
/* 034874 80059474 97A80026 */  lhu   $t0, 0x26($sp)
/* 034878 80059478 3C030417 */  lui   $v1, 0x417
/* 03487C 8005947C 31020FFF */  andi  $v0, $t0, 0xfff
/* 034880 80059480 00431025 */  or    $v0, $v0, $v1
/* 034884 80059484 0C0187A4 */  jal   osVirtualToPhysical
/* 034888 80059488 AE020000 */   sw    $v0, ($s0)
/* 03488C 8005948C AE020004 */  sw    $v0, 4($s0)
.L80059490:
/* 034890 80059490 8E620028 */  lw    $v0, 0x28($s3)
/* 034894 80059494 10400068 */  beqz  $v0, .L80059638
/* 034898 80059498 0260202D */   daddu $a0, $s3, $zero
/* 03489C 8005949C 8E700004 */  lw    $s0, 4($s3)
/* 0348A0 800594A0 8E620000 */  lw    $v0, ($s3)
/* 0348A4 800594A4 240500B8 */  addiu $a1, $zero, 0xb8
/* 0348A8 800594A8 0C0166F5 */  jal   func_80059BD4
/* 0348AC 800594AC 02028023 */   subu  $s0, $s0, $v0
/* 0348B0 800594B0 44901000 */  mtc1  $s0, $f2
/* 0348B4 800594B4 00000000 */  nop   
/* 0348B8 800594B8 468010A0 */  cvt.s.w $f2, $f2
/* 0348BC 800594BC 46020103 */  div.s $f4, $f0, $f2
/* 0348C0 800594C0 46162002 */  mul.s $f0, $f4, $f22
/* 0348C4 800594C4 00000000 */  nop   
/* 0348C8 800594C8 4600018D */  trunc.w.s $f6, $f0
/* 0348CC 800594CC 44023000 */  mfc1  $v0, $f6
/* 0348D0 800594D0 3C013800 */  lui   $at, 0x3800
/* 0348D4 800594D4 44810000 */  mtc1  $at, $f0
/* 0348D8 800594D8 44822000 */  mtc1  $v0, $f4
/* 0348DC 800594DC 00000000 */  nop   
/* 0348E0 800594E0 46802120 */  cvt.s.w $f4, $f4
/* 0348E4 800594E4 46002102 */  mul.s $f4, $f4, $f0
/* 0348E8 800594E8 00000000 */  nop   
/* 0348EC 800594EC 3C013FF0 */  lui   $at, 0x3ff0
/* 0348F0 800594F0 44811800 */  mtc1  $at, $f3
/* 0348F4 800594F4 44801000 */  mtc1  $zero, $f2
/* 0348F8 800594F8 46002021 */  cvt.d.s $f0, $f4
/* 0348FC 800594FC 46201081 */  sub.d $f2, $f2, $f0
/* 034900 80059500 3C014338 */  lui   $at, 0x4338
/* 034904 80059504 44812000 */  mtc1  $at, $f4
/* 034908 80059508 46201520 */  cvt.s.d $f20, $f2
/* 03490C 8005950C 4604A102 */  mul.s $f4, $f20, $f4
/* 034910 80059510 00000000 */  nop   
/* 034914 80059514 8E620028 */  lw    $v0, 0x28($s3)
/* 034918 80059518 C4400008 */  lwc1  $f0, 8($v0)
/* 03491C 8005951C 46040000 */  add.s $f0, $f0, $f4
/* 034920 80059520 4600018D */  trunc.w.s $f6, $f0
/* 034924 80059524 44143000 */  mfc1  $s4, $f6
/* 034928 80059528 00000000 */  nop   
/* 03492C 8005952C 44941000 */  mtc1  $s4, $f2
/* 034930 80059530 00000000 */  nop   
/* 034934 80059534 468010A0 */  cvt.s.w $f2, $f2
/* 034938 80059538 46020001 */  sub.s $f0, $f0, $f2
/* 03493C 8005953C E4400008 */  swc1  $f0, 8($v0)
/* 034940 80059540 8E630018 */  lw    $v1, 0x18($s3)
/* 034944 80059544 8E620004 */  lw    $v0, 4($s3)
/* 034948 80059548 8FA80068 */  lw    $t0, 0x68($sp)
/* 03494C 8005954C 00621823 */  subu  $v1, $v1, $v0
/* 034950 80059550 8D020004 */  lw    $v0, 4($t0)
/* 034954 80059554 00031840 */  sll   $v1, $v1, 1
/* 034958 80059558 00432821 */  addu  $a1, $v0, $v1
/* 03495C 8005955C 30A20007 */  andi  $v0, $a1, 7
/* 034960 80059560 00021843 */  sra   $v1, $v0, 1
/* 034964 80059564 0003A840 */  sll   $s5, $v1, 1
/* 034968 80059568 8D020000 */  lw    $v0, ($t0)
/* 03496C 8005956C 00B52823 */  subu  $a1, $a1, $s5
/* 034970 80059570 00A2102B */  sltu  $v0, $a1, $v0
/* 034974 80059574 10400004 */  beqz  $v0, .L80059588
/* 034978 80059578 00000000 */   nop   
/* 03497C 8005957C 8D020008 */  lw    $v0, 8($t0)
/* 034980 80059580 00021040 */  sll   $v0, $v0, 1
/* 034984 80059584 00A22821 */  addu  $a1, $a1, $v0
.L80059588:
/* 034988 80059588 8FA40068 */  lw    $a0, 0x68($sp)
/* 03498C 8005958C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 034990 80059590 02833821 */  addu  $a3, $s4, $v1
/* 034994 80059594 0C0166AE */  jal   func_80059AB8
/* 034998 80059598 AFB20010 */   sw    $s2, 0x10($sp)
/* 03499C 8005959C 0040902D */  daddu $s2, $v0, $zero
/* 0349A0 800595A0 4616A002 */  mul.s $f0, $f20, $f22
/* 0349A4 800595A4 00000000 */  nop   
/* 0349A8 800595A8 00168C00 */  sll   $s1, $s6, 0x10
/* 0349AC 800595AC 8E630028 */  lw    $v1, 0x28($s3)
/* 0349B0 800595B0 8C640000 */  lw    $a0, ($v1)
/* 0349B4 800595B4 4600018D */  trunc.w.s $f6, $f0
/* 0349B8 800595B8 44103000 */  mfc1  $s0, $f6
/* 0349BC 800595BC 0C0187A4 */  jal   osVirtualToPhysical
/* 0349C0 800595C0 00118E03 */   sra   $s1, $s1, 0x18
/* 0349C4 800595C4 3C0300FF */  lui   $v1, 0xff
/* 0349C8 800595C8 3463FFFF */  ori   $v1, $v1, 0xffff
/* 0349CC 800595CC 0240202D */  daddu $a0, $s2, $zero
/* 0349D0 800595D0 00431024 */  and   $v0, $v0, $v1
/* 0349D4 800595D4 3C030500 */  lui   $v1, 0x500
/* 0349D8 800595D8 00431025 */  or    $v0, $v0, $v1
/* 0349DC 800595DC 3210FFFF */  andi  $s0, $s0, 0xffff
/* 0349E0 800595E0 00108380 */  sll   $s0, $s0, 0xe
/* 0349E4 800595E4 32310003 */  andi  $s1, $s1, 3
/* 0349E8 800595E8 AC820000 */  sw    $v0, ($a0)
/* 0349EC 800595EC 8E620028 */  lw    $v0, 0x28($s3)
/* 0349F0 800595F0 8FA8002C */  lw    $t0, 0x2c($sp)
/* 0349F4 800595F4 8C43000C */  lw    $v1, 0xc($v0)
/* 0349F8 800595F8 01151021 */  addu  $v0, $t0, $s5
/* 0349FC 800595FC 30420FFF */  andi  $v0, $v0, 0xfff
/* 034A00 80059600 00021080 */  sll   $v0, $v0, 2
/* 034A04 80059604 00031F80 */  sll   $v1, $v1, 0x1e
/* 034A08 80059608 00701825 */  or    $v1, $v1, $s0
/* 034A0C 8005960C 00621825 */  or    $v1, $v1, $v0
/* 034A10 80059610 00711825 */  or    $v1, $v1, $s1
/* 034A14 80059614 AC830004 */  sw    $v1, 4($a0)
/* 034A18 80059618 8E620028 */  lw    $v0, 0x28($s3)
/* 034A1C 8005961C AC40000C */  sw    $zero, 0xc($v0)
/* 034A20 80059620 8E620018 */  lw    $v0, 0x18($s3)
/* 034A24 80059624 26520008 */  addiu $s2, $s2, 8
/* 034A28 80059628 2442FF48 */  addiu $v0, $v0, -0xb8
/* 034A2C 8005962C 00541021 */  addu  $v0, $v0, $s4
/* 034A30 80059630 08016597 */  j     .L8005965C
/* 034A34 80059634 AE620018 */   sw    $v0, 0x18($s3)

.L80059638:
/* 034A38 80059638 0240802D */  daddu $s0, $s2, $zero
/* 034A3C 8005963C 26520008 */  addiu $s2, $s2, 8
/* 034A40 80059640 03C0202D */  daddu $a0, $fp, $zero
/* 034A44 80059644 32C20FFF */  andi  $v0, $s6, 0xfff
/* 034A48 80059648 3C030417 */  lui   $v1, 0x417
/* 034A4C 8005964C 00431025 */  or    $v0, $v0, $v1
/* 034A50 80059650 0C0187A4 */  jal   osVirtualToPhysical
/* 034A54 80059654 AE020000 */   sw    $v0, ($s0)
/* 034A58 80059658 AE020004 */  sw    $v0, 4($s0)
.L8005965C:
/* 034A5C 8005965C 86620008 */  lh    $v0, 8($s3)
/* 034A60 80059660 10400018 */  beqz  $v0, .L800596C4
/* 034A64 80059664 0240282D */   daddu $a1, $s2, $zero
/* 034A68 80059668 32C4FFFF */  andi  $a0, $s6, 0xffff
/* 034A6C 8005966C 97A80026 */  lhu   $t0, 0x26($sp)
/* 034A70 80059670 96630008 */  lhu   $v1, 8($s3)
/* 034A74 80059674 00081400 */  sll   $v0, $t0, 0x10
/* 034A78 80059678 00441025 */  or    $v0, $v0, $a0
/* 034A7C 8005967C 3C080C00 */  lui   $t0, 0xc00
/* 034A80 80059680 00681825 */  or    $v1, $v1, $t0
/* 034A84 80059684 ACA20004 */  sw    $v0, 4($a1)
/* 034A88 80059688 ACA30000 */  sw    $v1, ($a1)
/* 034A8C 8005968C 8E620028 */  lw    $v0, 0x28($s3)
/* 034A90 80059690 1440000C */  bnez  $v0, .L800596C4
/* 034A94 80059694 26520008 */   addiu $s2, $s2, 8
/* 034A98 80059698 8E620020 */  lw    $v0, 0x20($s3)
/* 034A9C 8005969C 14400009 */  bnez  $v0, .L800596C4
/* 034AA0 800596A0 0240802D */   daddu $s0, $s2, $zero
/* 034AA4 800596A4 26520008 */  addiu $s2, $s2, 8
/* 034AA8 800596A8 03C0202D */  daddu $a0, $fp, $zero
/* 034AAC 800596AC 32C20FFF */  andi  $v0, $s6, 0xfff
/* 034AB0 800596B0 3C080617 */  lui   $t0, 0x617
/* 034AB4 800596B4 00481025 */  or    $v0, $v0, $t0
/* 034AB8 800596B8 0C0187A4 */  jal   osVirtualToPhysical
/* 034ABC 800596BC AE020000 */   sw    $v0, ($s0)
/* 034AC0 800596C0 AE020004 */  sw    $v0, 4($s0)
.L800596C4:
/* 034AC4 800596C4 8662000A */  lh    $v0, 0xa($s3)
/* 034AC8 800596C8 10400014 */  beqz  $v0, .L8005971C
/* 034ACC 800596CC 0240302D */   daddu $a2, $s2, $zero
/* 034AD0 800596D0 26520008 */  addiu $s2, $s2, 8
/* 034AD4 800596D4 0240802D */  daddu $s0, $s2, $zero
/* 034AD8 800596D8 26520008 */  addiu $s2, $s2, 8
/* 034ADC 800596DC 00161400 */  sll   $v0, $s6, 0x10
/* 034AE0 800596E0 3C080C00 */  lui   $t0, 0xc00
/* 034AE4 800596E4 97A50026 */  lhu   $a1, 0x26($sp)
/* 034AE8 800596E8 9663000A */  lhu   $v1, 0xa($s3)
/* 034AEC 800596EC 00451025 */  or    $v0, $v0, $a1
/* 034AF0 800596F0 00681825 */  or    $v1, $v1, $t0
/* 034AF4 800596F4 ACC20004 */  sw    $v0, 4($a2)
/* 034AF8 800596F8 ACC30000 */  sw    $v1, ($a2)
/* 034AFC 800596FC 97A80026 */  lhu   $t0, 0x26($sp)
/* 034B00 80059700 02E0202D */  daddu $a0, $s7, $zero
/* 034B04 80059704 31020FFF */  andi  $v0, $t0, 0xfff
/* 034B08 80059708 3C080617 */  lui   $t0, 0x617
/* 034B0C 8005970C 00481025 */  or    $v0, $v0, $t0
/* 034B10 80059710 0C0187A4 */  jal   osVirtualToPhysical
/* 034B14 80059714 AE020000 */   sw    $v0, ($s0)
/* 034B18 80059718 AE020004 */  sw    $v0, 4($s0)
.L8005971C:
/* 034B1C 8005971C 8E620020 */  lw    $v0, 0x20($s3)
/* 034B20 80059720 10400020 */  beqz  $v0, .L800597A4
/* 034B24 80059724 3C020B00 */   lui   $v0, 0xb00
/* 034B28 80059728 34420020 */  ori   $v0, $v0, 0x20
/* 034B2C 8005972C 0240882D */  daddu $s1, $s2, $zero
/* 034B30 80059730 00168400 */  sll   $s0, $s6, 0x10
/* 034B34 80059734 AE220000 */  sw    $v0, ($s1)
/* 034B38 80059738 8E640020 */  lw    $a0, 0x20($s3)
/* 034B3C 8005973C 00108603 */  sra   $s0, $s0, 0x18
/* 034B40 80059740 0C0187A4 */  jal   osVirtualToPhysical
/* 034B44 80059744 24840008 */   addiu $a0, $a0, 8
/* 034B48 80059748 26520008 */  addiu $s2, $s2, 8
/* 034B4C 8005974C AE220004 */  sw    $v0, 4($s1)
/* 034B50 80059750 0240882D */  daddu $s1, $s2, $zero
/* 034B54 80059754 8E620020 */  lw    $v0, 0x20($s3)
/* 034B58 80059758 3C030E00 */  lui   $v1, 0xe00
/* 034B5C 8005975C 9044002F */  lbu   $a0, 0x2f($v0)
/* 034B60 80059760 94420002 */  lhu   $v0, 2($v0)
/* 034B64 80059764 00042400 */  sll   $a0, $a0, 0x10
/* 034B68 80059768 00431025 */  or    $v0, $v0, $v1
/* 034B6C 8005976C 00822025 */  or    $a0, $a0, $v0
/* 034B70 80059770 AE240000 */  sw    $a0, ($s1)
/* 034B74 80059774 8E620020 */  lw    $v0, 0x20($s3)
/* 034B78 80059778 8C440028 */  lw    $a0, 0x28($v0)
/* 034B7C 8005977C 0C0187A4 */  jal   osVirtualToPhysical
/* 034B80 80059780 00108600 */   sll   $s0, $s0, 0x18
/* 034B84 80059784 3C0300FF */  lui   $v1, 0xff
/* 034B88 80059788 3463FFFF */  ori   $v1, $v1, 0xffff
/* 034B8C 8005978C 00431024 */  and   $v0, $v0, $v1
/* 034B90 80059790 02028025 */  or    $s0, $s0, $v0
/* 034B94 80059794 AE300004 */  sw    $s0, 4($s1)
/* 034B98 80059798 8E620020 */  lw    $v0, 0x20($s3)
/* 034B9C 8005979C 26520008 */  addiu $s2, $s2, 8
/* 034BA0 800597A0 AC40002C */  sw    $zero, 0x2c($v0)
.L800597A4:
/* 034BA4 800597A4 8E620028 */  lw    $v0, 0x28($s3)
/* 034BA8 800597A8 14400009 */  bnez  $v0, .L800597D0
/* 034BAC 800597AC 0240802D */   daddu $s0, $s2, $zero
/* 034BB0 800597B0 26520008 */  addiu $s2, $s2, 8
/* 034BB4 800597B4 03C0202D */  daddu $a0, $fp, $zero
/* 034BB8 800597B8 32C20FFF */  andi  $v0, $s6, 0xfff
/* 034BBC 800597BC 3C080617 */  lui   $t0, 0x617
/* 034BC0 800597C0 00481025 */  or    $v0, $v0, $t0
/* 034BC4 800597C4 0C0187A4 */  jal   osVirtualToPhysical
/* 034BC8 800597C8 AE020000 */   sw    $v0, ($s0)
/* 034BCC 800597CC AE020004 */  sw    $v0, 4($s0)
.L800597D0:
/* 034BD0 800597D0 8662000C */  lh    $v0, 0xc($s3)
/* 034BD4 800597D4 1040000A */  beqz  $v0, .L80059800
/* 034BD8 800597D8 0240282D */   daddu $a1, $s2, $zero
/* 034BDC 800597DC 26520008 */  addiu $s2, $s2, 8
/* 034BE0 800597E0 00161400 */  sll   $v0, $s6, 0x10
/* 034BE4 800597E4 3C080C00 */  lui   $t0, 0xc00
/* 034BE8 800597E8 97A40028 */  lhu   $a0, 0x28($sp)
/* 034BEC 800597EC 9663000C */  lhu   $v1, 0xc($s3)
/* 034BF0 800597F0 00441025 */  or    $v0, $v0, $a0
/* 034BF4 800597F4 00681825 */  or    $v1, $v1, $t0
/* 034BF8 800597F8 ACA20004 */  sw    $v0, 4($a1)
/* 034BFC 800597FC ACA30000 */  sw    $v1, ($a1)
.L80059800:
/* 034C00 80059800 97A8001E */  lhu   $t0, 0x1e($sp)
/* 034C04 80059804 25030001 */  addiu $v1, $t0, 1
/* 034C08 80059808 A7A3001E */  sh    $v1, 0x1e($sp)
/* 034C0C 8005980C 00031C00 */  sll   $v1, $v1, 0x10
/* 034C10 80059810 8FA80068 */  lw    $t0, 0x68($sp)
/* 034C14 80059814 8E620004 */  lw    $v0, 4($s3)
/* 034C18 80059818 8D040004 */  lw    $a0, 4($t0)
/* 034C1C 8005981C 00021040 */  sll   $v0, $v0, 1
/* 034C20 80059820 0082A021 */  addu  $s4, $a0, $v0
/* 034C24 80059824 91020010 */  lbu   $v0, 0x10($t0)
/* 034C28 80059828 00031C03 */  sra   $v1, $v1, 0x10
/* 034C2C 8005982C 0062182A */  slt   $v1, $v1, $v0
/* 034C30 80059830 1460FEEA */  bnez  $v1, .L800593DC
/* 034C34 80059834 00000000 */   nop   
.L80059838:
/* 034C38 80059838 8FA80068 */  lw    $t0, 0x68($sp)
/* 034C3C 8005983C 8D030004 */  lw    $v1, 4($t0)
/* 034C40 80059840 8D020008 */  lw    $v0, 8($t0)
/* 034C44 80059844 8D040000 */  lw    $a0, ($t0)
/* 034C48 80059848 24630170 */  addiu $v1, $v1, 0x170
/* 034C4C 8005984C 00021040 */  sll   $v0, $v0, 1
/* 034C50 80059850 00821021 */  addu  $v0, $a0, $v0
/* 034C54 80059854 AD030004 */  sw    $v1, 4($t0)
/* 034C58 80059858 0062182B */  sltu  $v1, $v1, $v0
/* 034C5C 8005985C 50600001 */  beql  $v1, $zero, .L80059864
/* 034C60 80059860 AD040004 */   sw    $a0, 4($t0)
.L80059864:
/* 034C64 80059864 0240102D */  daddu $v0, $s2, $zero
/* 034C68 80059868 8FBF0054 */  lw    $ra, 0x54($sp)
/* 034C6C 8005986C 8FBE0050 */  lw    $fp, 0x50($sp)
/* 034C70 80059870 8FB7004C */  lw    $s7, 0x4c($sp)
/* 034C74 80059874 8FB60048 */  lw    $s6, 0x48($sp)
/* 034C78 80059878 8FB50044 */  lw    $s5, 0x44($sp)
/* 034C7C 8005987C 8FB40040 */  lw    $s4, 0x40($sp)
/* 034C80 80059880 8FB3003C */  lw    $s3, 0x3c($sp)
/* 034C84 80059884 8FB20038 */  lw    $s2, 0x38($sp)
/* 034C88 80059888 8FB10034 */  lw    $s1, 0x34($sp)
/* 034C8C 8005988C 8FB00030 */  lw    $s0, 0x30($sp)
/* 034C90 80059890 D7B60060 */  ldc1  $f22, 0x60($sp)
/* 034C94 80059894 D7B40058 */  ldc1  $f20, 0x58($sp)
/* 034C98 80059898 03E00008 */  jr    $ra
/* 034C9C 8005989C 27BD0068 */   addiu $sp, $sp, 0x68

