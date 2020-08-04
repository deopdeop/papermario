.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel calculate_model_sizes
/* 0AC82C 8011612C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0AC830 80116130 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 0AC834 80116134 3C013FE0 */  lui   $at, 0x3fe0
/* 0AC838 80116138 4481A800 */  mtc1  $at, $f21
/* 0AC83C 8011613C 4480A000 */  mtc1  $zero, $f20
/* 0AC840 80116140 AFB10014 */  sw    $s1, 0x14($sp)
/* 0AC844 80116144 0000882D */  daddu $s1, $zero, $zero
/* 0AC848 80116148 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0AC84C 8011614C AFB00010 */  sw    $s0, 0x10($sp)
.L80116150:
/* 0AC850 80116150 3C038015 */  lui   $v1, 0x8015
/* 0AC854 80116154 8C6312CC */  lw    $v1, 0x12cc($v1)
/* 0AC858 80116158 00111080 */  sll   $v0, $s1, 2
/* 0AC85C 8011615C 00431021 */  addu  $v0, $v0, $v1
/* 0AC860 80116160 8C500000 */  lw    $s0, ($v0)
/* 0AC864 80116164 52000020 */  beql  $s0, $zero, .L801161E8
/* 0AC868 80116168 26310001 */   addiu $s1, $s1, 1
/* 0AC86C 8011616C 8E040008 */  lw    $a0, 8($s0)
/* 0AC870 80116170 0C0456C3 */  jal   get_model_property
/* 0AC874 80116174 24050061 */   addiu $a1, $zero, 0x61
/* 0AC878 80116178 C444002C */  lwc1  $f4, 0x2c($v0)
/* 0AC87C 8011617C C4400008 */  lwc1  $f0, 8($v0)
/* 0AC880 80116180 46002101 */  sub.s $f4, $f4, $f0
/* 0AC884 80116184 46002121 */  cvt.d.s $f4, $f4
/* 0AC888 80116188 46342102 */  mul.d $f4, $f4, $f20
/* 0AC88C 8011618C 00000000 */  nop   
/* 0AC890 80116190 C4420038 */  lwc1  $f2, 0x38($v0)
/* 0AC894 80116194 C4400014 */  lwc1  $f0, 0x14($v0)
/* 0AC898 80116198 46001081 */  sub.s $f2, $f2, $f0
/* 0AC89C 8011619C 460010A1 */  cvt.d.s $f2, $f2
/* 0AC8A0 801161A0 46341082 */  mul.d $f2, $f2, $f20
/* 0AC8A4 801161A4 00000000 */  nop   
/* 0AC8A8 801161A8 C4460020 */  lwc1  $f6, 0x20($v0)
/* 0AC8AC 801161AC C4400044 */  lwc1  $f0, 0x44($v0)
/* 0AC8B0 801161B0 46060001 */  sub.s $f0, $f0, $f6
/* 0AC8B4 801161B4 46000021 */  cvt.d.s $f0, $f0
/* 0AC8B8 801161B8 46340002 */  mul.d $f0, $f0, $f20
/* 0AC8BC 801161BC 00000000 */  nop   
/* 0AC8C0 801161C0 4620220D */  trunc.w.d $f8, $f4
/* 0AC8C4 801161C4 E4480004 */  swc1  $f8, 4($v0)
/* 0AC8C8 801161C8 4620120D */  trunc.w.d $f8, $f2
/* 0AC8CC 801161CC E4480010 */  swc1  $f8, 0x10($v0)
/* 0AC8D0 801161D0 4620020D */  trunc.w.d $f8, $f0
/* 0AC8D4 801161D4 E448001C */  swc1  $f8, 0x1c($v0)
/* 0AC8D8 801161D8 96020000 */  lhu   $v0, ($s0)
/* 0AC8DC 801161DC 34421000 */  ori   $v0, $v0, 0x1000
/* 0AC8E0 801161E0 A6020000 */  sh    $v0, ($s0)
/* 0AC8E4 801161E4 26310001 */  addiu $s1, $s1, 1
.L801161E8:
/* 0AC8E8 801161E8 2A220100 */  slti  $v0, $s1, 0x100
/* 0AC8EC 801161EC 1440FFD8 */  bnez  $v0, .L80116150
/* 0AC8F0 801161F0 00000000 */   nop   
/* 0AC8F4 801161F4 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0AC8F8 801161F8 8FB10014 */  lw    $s1, 0x14($sp)
/* 0AC8FC 801161FC 8FB00010 */  lw    $s0, 0x10($sp)
/* 0AC900 80116200 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 0AC904 80116204 03E00008 */  jr    $ra
/* 0AC908 80116208 27BD0028 */   addiu $sp, $sp, 0x28

