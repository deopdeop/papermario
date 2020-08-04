.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel LoadBattleDmaData
/* 181F04 80253624 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 181F08 80253628 AFBF0010 */  sw    $ra, 0x10($sp)
/* 181F0C 8025362C 8C82000C */  lw    $v0, 0xc($a0)
/* 181F10 80253630 0C0B1EAF */  jal   get_variable
/* 181F14 80253634 8C450000 */   lw    $a1, ($v0)
/* 181F18 80253638 00021840 */  sll   $v1, $v0, 1
/* 181F1C 8025363C 3C04800E */  lui   $a0, 0x800e
/* 181F20 80253640 9084C4EA */  lbu   $a0, -0x3b16($a0)
/* 181F24 80253644 00621821 */  addu  $v1, $v1, $v0
/* 181F28 80253648 00042140 */  sll   $a0, $a0, 5
/* 181F2C 8025364C 3C028009 */  lui   $v0, 0x8009
/* 181F30 80253650 00441021 */  addu  $v0, $v0, $a0
/* 181F34 80253654 8C425A4C */  lw    $v0, 0x5a4c($v0)
/* 181F38 80253658 00031880 */  sll   $v1, $v1, 2
/* 181F3C 8025365C 00431021 */  addu  $v0, $v0, $v1
/* 181F40 80253660 5040000E */  beql  $v0, $zero, .L8025369C
/* 181F44 80253664 24020002 */   addiu $v0, $zero, 2
/* 181F48 80253668 3C068028 */  lui   $a2, 0x8028
/* 181F4C 8025366C 8CC64000 */  lw    $a2, 0x4000($a2)
/* 181F50 80253670 14C00005 */  bnez  $a2, .L80253688
/* 181F54 80253674 00000000 */   nop   
/* 181F58 80253678 8C440000 */  lw    $a0, ($v0)
/* 181F5C 8025367C 8C450004 */  lw    $a1, 4($v0)
/* 181F60 80253680 08094DA4 */  j     .L80253690
/* 181F64 80253684 8C460008 */   lw    $a2, 8($v0)

.L80253688:
/* 181F68 80253688 8C440000 */  lw    $a0, ($v0)
/* 181F6C 8025368C 8C450004 */  lw    $a1, 4($v0)
.L80253690:
/* 181F70 80253690 0C00A5CF */  jal   dma_copy
/* 181F74 80253694 00000000 */   nop   
/* 181F78 80253698 24020002 */  addiu $v0, $zero, 2
.L8025369C:
/* 181F7C 8025369C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 181F80 802536A0 03E00008 */  jr    $ra
/* 181F84 802536A4 27BD0018 */   addiu $sp, $sp, 0x18

/* 181F88 802536A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 181F8C 802536AC AFBF0018 */  sw    $ra, 0x18($sp)
/* 181F90 802536B0 AFB10014 */  sw    $s1, 0x14($sp)
/* 181F94 802536B4 AFB00010 */  sw    $s0, 0x10($sp)
/* 181F98 802536B8 8C82000C */  lw    $v0, 0xc($a0)
/* 181F9C 802536BC 3C10800E */  lui   $s0, 0x800e
/* 181FA0 802536C0 2610C070 */  addiu $s0, $s0, -0x3f90
/* 181FA4 802536C4 8C450000 */  lw    $a1, ($v0)
/* 181FA8 802536C8 0C0B1EAF */  jal   get_variable
/* 181FAC 802536CC 0200882D */   daddu $s1, $s0, $zero
/* 181FB0 802536D0 1040000A */  beqz  $v0, .L802536FC
/* 181FB4 802536D4 2403FF7F */   addiu $v1, $zero, -0x81
/* 181FB8 802536D8 3C02800A */  lui   $v0, 0x800a
/* 181FBC 802536DC 2442A650 */  addiu $v0, $v0, -0x59b0
/* 181FC0 802536E0 92030092 */  lbu   $v1, 0x92($s0)
/* 181FC4 802536E4 8C440000 */  lw    $a0, ($v0)
/* 181FC8 802536E8 34630001 */  ori   $v1, $v1, 1
/* 181FCC 802536EC 34840080 */  ori   $a0, $a0, 0x80
/* 181FD0 802536F0 A2030092 */  sb    $v1, 0x92($s0)
/* 181FD4 802536F4 08094DC7 */  j     .L8025371C
/* 181FD8 802536F8 AC440000 */   sw    $a0, ($v0)

.L802536FC:
/* 181FDC 802536FC 92220092 */  lbu   $v0, 0x92($s1)
/* 181FE0 80253700 3C04800A */  lui   $a0, 0x800a
/* 181FE4 80253704 2484A650 */  addiu $a0, $a0, -0x59b0
/* 181FE8 80253708 304200FE */  andi  $v0, $v0, 0xfe
/* 181FEC 8025370C A2220092 */  sb    $v0, 0x92($s1)
/* 181FF0 80253710 8C820000 */  lw    $v0, ($a0)
/* 181FF4 80253714 00431024 */  and   $v0, $v0, $v1
/* 181FF8 80253718 AC820000 */  sw    $v0, ($a0)
.L8025371C:
/* 181FFC 8025371C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 182000 80253720 8FB10014 */  lw    $s1, 0x14($sp)
/* 182004 80253724 8FB00010 */  lw    $s0, 0x10($sp)
/* 182008 80253728 24020002 */  addiu $v0, $zero, 2
/* 18200C 8025372C 03E00008 */  jr    $ra
/* 182010 80253730 27BD0020 */   addiu $sp, $sp, 0x20

/* 182014 80253734 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 182018 80253738 AFBF0014 */  sw    $ra, 0x14($sp)
/* 18201C 8025373C AFB00010 */  sw    $s0, 0x10($sp)
/* 182020 80253740 8C82000C */  lw    $v0, 0xc($a0)
/* 182024 80253744 0C0B1EAF */  jal   get_variable
/* 182028 80253748 8C450000 */   lw    $a1, ($v0)
/* 18202C 8025374C 3C10800E */  lui   $s0, 0x800e
/* 182030 80253750 2610C070 */  addiu $s0, $s0, -0x3f90
/* 182034 80253754 0040182D */  daddu $v1, $v0, $zero
/* 182038 80253758 24040001 */  addiu $a0, $zero, 1
/* 18203C 8025375C 10640012 */  beq   $v1, $a0, .L802537A8
/* 182040 80253760 28620002 */   slti  $v0, $v1, 2
/* 182044 80253764 10400005 */  beqz  $v0, .L8025377C
/* 182048 80253768 24020002 */   addiu $v0, $zero, 2
/* 18204C 8025376C 10600009 */  beqz  $v1, .L80253794
/* 182050 80253770 2402FFFF */   addiu $v0, $zero, -1
/* 182054 80253774 08094DEB */  j     .L802537AC
/* 182058 80253778 00000000 */   nop   

.L8025377C:
/* 18205C 8025377C 10620007 */  beq   $v1, $v0, .L8025379C
/* 182060 80253780 24020003 */   addiu $v0, $zero, 3
/* 182064 80253784 50620009 */  beql  $v1, $v0, .L802537AC
/* 182068 80253788 A2040432 */   sb    $a0, 0x432($s0)
/* 18206C 8025378C 08094DEB */  j     .L802537AC
/* 182070 80253790 00000000 */   nop   

.L80253794:
/* 182074 80253794 08094DEB */  j     .L802537AC
/* 182078 80253798 A2020432 */   sb    $v0, 0x432($s0)

.L8025379C:
/* 18207C 8025379C 2402FFFE */  addiu $v0, $zero, -2
/* 182080 802537A0 08094DEB */  j     .L802537AC
/* 182084 802537A4 A2020432 */   sb    $v0, 0x432($s0)

.L802537A8:
/* 182088 802537A8 A2040432 */  sb    $a0, 0x432($s0)
.L802537AC:
.L802537AC:
/* 18208C 802537AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 182090 802537B0 8FB00010 */  lw    $s0, 0x10($sp)
/* 182094 802537B4 24020002 */  addiu $v0, $zero, 2
/* 182098 802537B8 03E00008 */  jr    $ra
/* 18209C 802537BC 27BD0018 */   addiu $sp, $sp, 0x18

/* 1820A0 802537C0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1820A4 802537C4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1820A8 802537C8 0080882D */  daddu $s1, $a0, $zero
/* 1820AC 802537CC AFBF0028 */  sw    $ra, 0x28($sp)
/* 1820B0 802537D0 AFB30024 */  sw    $s3, 0x24($sp)
/* 1820B4 802537D4 AFB20020 */  sw    $s2, 0x20($sp)
/* 1820B8 802537D8 AFB00018 */  sw    $s0, 0x18($sp)
/* 1820BC 802537DC 8E22000C */  lw    $v0, 0xc($s1)
/* 1820C0 802537E0 8C520000 */  lw    $s2, ($v0)
/* 1820C4 802537E4 8C530004 */  lw    $s3, 4($v0)
/* 1820C8 802537E8 24040001 */  addiu $a0, $zero, 1
/* 1820CC 802537EC 27A50010 */  addiu $a1, $sp, 0x10
/* 1820D0 802537F0 0C04DF70 */  jal   func_80137DC0
/* 1820D4 802537F4 27A60014 */   addiu $a2, $sp, 0x14
/* 1820D8 802537F8 C7A20014 */  lwc1  $f2, 0x14($sp)
/* 1820DC 802537FC 3C014300 */  lui   $at, 0x4300
/* 1820E0 80253800 44810000 */  mtc1  $at, $f0
/* 1820E4 80253804 00000000 */  nop   
/* 1820E8 80253808 4600103C */  c.lt.s $f2, $f0
/* 1820EC 8025380C 00000000 */  nop   
/* 1820F0 80253810 45000002 */  bc1f  .L8025381C
/* 1820F4 80253814 24100001 */   addiu $s0, $zero, 1
/* 1820F8 80253818 0000802D */  daddu $s0, $zero, $zero
.L8025381C:
/* 1820FC 8025381C 0220202D */  daddu $a0, $s1, $zero
/* 182100 80253820 0240282D */  daddu $a1, $s2, $zero
/* 182104 80253824 0C0B2026 */  jal   set_variable
/* 182108 80253828 24060001 */   addiu $a2, $zero, 1
/* 18210C 8025382C 0220202D */  daddu $a0, $s1, $zero
/* 182110 80253830 0260282D */  daddu $a1, $s3, $zero
/* 182114 80253834 0C0B2026 */  jal   set_variable
/* 182118 80253838 0200302D */   daddu $a2, $s0, $zero
/* 18211C 8025383C 8FBF0028 */  lw    $ra, 0x28($sp)
/* 182120 80253840 8FB30024 */  lw    $s3, 0x24($sp)
/* 182124 80253844 8FB20020 */  lw    $s2, 0x20($sp)
/* 182128 80253848 8FB1001C */  lw    $s1, 0x1c($sp)
/* 18212C 8025384C 8FB00018 */  lw    $s0, 0x18($sp)
/* 182130 80253850 24020002 */  addiu $v0, $zero, 2
/* 182134 80253854 03E00008 */  jr    $ra
/* 182138 80253858 27BD0030 */   addiu $sp, $sp, 0x30

