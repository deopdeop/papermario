.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8013C3F0
/* 0D2AF0 8013C3F0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0D2AF4 8013C3F4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0D2AF8 8013C3F8 0080902D */  daddu $s2, $a0, $zero
/* 0D2AFC 8013C3FC AFB70034 */  sw    $s7, 0x34($sp)
/* 0D2B00 8013C400 0000B82D */  daddu $s7, $zero, $zero
/* 0D2B04 8013C404 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0D2B08 8013C408 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0D2B0C 8013C40C AFB60030 */  sw    $s6, 0x30($sp)
/* 0D2B10 8013C410 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0D2B14 8013C414 AFB40028 */  sw    $s4, 0x28($sp)
/* 0D2B18 8013C418 AFB30024 */  sw    $s3, 0x24($sp)
/* 0D2B1C 8013C41C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0D2B20 8013C420 AFB00018 */  sw    $s0, 0x18($sp)
/* 0D2B24 8013C424 C640003C */  lwc1  $f0, 0x3c($s2)
/* 0D2B28 8013C428 8E540020 */  lw    $s4, 0x20($s2)
/* 0D2B2C 8013C42C 4600028D */  trunc.w.s $f10, $f0
/* 0D2B30 8013C430 44165000 */  mfc1  $s6, $f10
/* 0D2B34 8013C434 8E4D0024 */  lw    $t5, 0x24($s2)
/* 0D2B38 8013C438 0C04F088 */  jal   func_8013C220
/* 0D2B3C 8013C43C AFAD0014 */   sw    $t5, 0x14($sp)
/* 0D2B40 8013C440 0040982D */  daddu $s3, $v0, $zero
/* 0D2B44 8013C444 126002CC */  beqz  $s3, .L8013CF78
/* 0D2B48 8013C448 00000000 */   nop   
/* 0D2B4C 8013C44C 8E430014 */  lw    $v1, 0x14($s2)
/* 0D2B50 8013C450 30620200 */  andi  $v0, $v1, 0x200
/* 0D2B54 8013C454 1040000C */  beqz  $v0, .L8013C488
/* 0D2B58 8013C458 2402FDFF */   addiu $v0, $zero, -0x201
/* 0D2B5C 8013C45C 00621024 */  and   $v0, $v1, $v0
/* 0D2B60 8013C460 AE420014 */  sw    $v0, 0x14($s2)
/* 0D2B64 8013C464 30620100 */  andi  $v0, $v1, 0x100
/* 0D2B68 8013C468 10400007 */  beqz  $v0, .L8013C488
/* 0D2B6C 8013C46C 00000000 */   nop   
/* 0D2B70 8013C470 9662000C */  lhu   $v0, 0xc($s3)
/* 0D2B74 8013C474 2442FFFF */  addiu $v0, $v0, -1
/* 0D2B78 8013C478 44820000 */  mtc1  $v0, $f0
/* 0D2B7C 8013C47C 00000000 */  nop   
/* 0D2B80 8013C480 46800020 */  cvt.s.w $f0, $f0
/* 0D2B84 8013C484 E6400040 */  swc1  $f0, 0x40($s2)
.L8013C488:
/* 0D2B88 8013C488 C6400040 */  lwc1  $f0, 0x40($s2)
/* 0D2B8C 8013C48C 8E430014 */  lw    $v1, 0x14($s2)
/* 0D2B90 8013C490 4600028D */  trunc.w.s $f10, $f0
/* 0D2B94 8013C494 44115000 */  mfc1  $s1, $f10
/* 0D2B98 8013C498 06810002 */  bgez  $s4, .L8013C4A4
/* 0D2B9C 8013C49C 0280682D */   daddu $t5, $s4, $zero
/* 0D2BA0 8013C4A0 000D6823 */  negu  $t5, $t5
.L8013C4A4:
/* 0D2BA4 8013C4A4 30624000 */  andi  $v0, $v1, 0x4000
/* 0D2BA8 8013C4A8 10400003 */  beqz  $v0, .L8013C4B8
/* 0D2BAC 8013C4AC AFAD0010 */   sw    $t5, 0x10($sp)
/* 0D2BB0 8013C4B0 0804F13F */  j     .L8013C4FC
/* 0D2BB4 8013C4B4 0220802D */   daddu $s0, $s1, $zero

.L8013C4B8:
/* 0D2BB8 8013C4B8 30620100 */  andi  $v0, $v1, 0x100
/* 0D2BBC 8013C4BC 10400008 */  beqz  $v0, .L8013C4E0
/* 0D2BC0 8013C4C0 2630FFFF */   addiu $s0, $s1, -1
/* 0D2BC4 8013C4C4 0601000D */  bgez  $s0, .L8013C4FC
/* 0D2BC8 8013C4C8 30620080 */   andi  $v0, $v1, 0x80
/* 0D2BCC 8013C4CC 1040000B */  beqz  $v0, .L8013C4FC
/* 0D2BD0 8013C4D0 0220802D */   daddu $s0, $s1, $zero
/* 0D2BD4 8013C4D4 9662000C */  lhu   $v0, 0xc($s3)
/* 0D2BD8 8013C4D8 0804F13F */  j     .L8013C4FC
/* 0D2BDC 8013C4DC 2450FFFF */   addiu $s0, $v0, -1

.L8013C4E0:
/* 0D2BE0 8013C4E0 9662000C */  lhu   $v0, 0xc($s3)
/* 0D2BE4 8013C4E4 26300001 */  addiu $s0, $s1, 1
/* 0D2BE8 8013C4E8 16020004 */  bne   $s0, $v0, .L8013C4FC
/* 0D2BEC 8013C4EC 30620080 */   andi  $v0, $v1, 0x80
/* 0D2BF0 8013C4F0 10400002 */  beqz  $v0, .L8013C4FC
/* 0D2BF4 8013C4F4 0220802D */   daddu $s0, $s1, $zero
/* 0D2BF8 8013C4F8 0000802D */  daddu $s0, $zero, $zero
.L8013C4FC:
/* 0D2BFC 8013C4FC 96620008 */  lhu   $v0, 8($s3)
/* 0D2C00 8013C500 00022040 */  sll   $a0, $v0, 1
/* 0D2C04 8013C504 00822021 */  addu  $a0, $a0, $v0
/* 0D2C08 8013C508 0C00AB39 */  jal   heap_malloc
/* 0D2C0C 8013C50C 00042080 */   sll   $a0, $a0, 2
/* 0D2C10 8013C510 0040F02D */  daddu $fp, $v0, $zero
/* 0D2C14 8013C514 96670008 */  lhu   $a3, 8($s3)
/* 0D2C18 8013C518 03C0302D */  daddu $a2, $fp, $zero
/* 0D2C1C 8013C51C 02270018 */  mult  $s1, $a3
/* 0D2C20 8013C520 3C150025 */  lui   $s5, 0x25
/* 0D2C24 8013C524 26B5B7F0 */  addiu $s5, $s5, -0x4810
/* 0D2C28 8013C528 00072840 */  sll   $a1, $a3, 1
/* 0D2C2C 8013C52C 00A72821 */  addu  $a1, $a1, $a3
/* 0D2C30 8013C530 00052880 */  sll   $a1, $a1, 2
/* 0D2C34 8013C534 00001812 */  mflo  $v1
/* 0D2C38 8013C538 00031040 */  sll   $v0, $v1, 1
/* 0D2C3C 8013C53C 00431021 */  addu  $v0, $v0, $v1
/* 0D2C40 8013C540 00021080 */  sll   $v0, $v0, 2
/* 0D2C44 8013C544 8E630000 */  lw    $v1, ($s3)
/* 0D2C48 8013C548 00551021 */  addu  $v0, $v0, $s5
/* 0D2C4C 8013C54C 00622021 */  addu  $a0, $v1, $v0
/* 0D2C50 8013C550 0C00A5CF */  jal   dma_copy
/* 0D2C54 8013C554 00852821 */   addu  $a1, $a0, $a1
/* 0D2C58 8013C558 2A820002 */  slti  $v0, $s4, 2
/* 0D2C5C 8013C55C 14400017 */  bnez  $v0, .L8013C5BC
/* 0D2C60 8013C560 0000502D */   daddu $t2, $zero, $zero
/* 0D2C64 8013C564 96620008 */  lhu   $v0, 8($s3)
/* 0D2C68 8013C568 00022040 */  sll   $a0, $v0, 1
/* 0D2C6C 8013C56C 00822021 */  addu  $a0, $a0, $v0
/* 0D2C70 8013C570 0C00AB39 */  jal   heap_malloc
/* 0D2C74 8013C574 00042080 */   sll   $a0, $a0, 2
/* 0D2C78 8013C578 96670008 */  lhu   $a3, 8($s3)
/* 0D2C7C 8013C57C 0040B82D */  daddu $s7, $v0, $zero
/* 0D2C80 8013C580 02070018 */  mult  $s0, $a3
/* 0D2C84 8013C584 02E0302D */  daddu $a2, $s7, $zero
/* 0D2C88 8013C588 00072840 */  sll   $a1, $a3, 1
/* 0D2C8C 8013C58C 00A72821 */  addu  $a1, $a1, $a3
/* 0D2C90 8013C590 00052880 */  sll   $a1, $a1, 2
/* 0D2C94 8013C594 00001812 */  mflo  $v1
/* 0D2C98 8013C598 00031040 */  sll   $v0, $v1, 1
/* 0D2C9C 8013C59C 00431021 */  addu  $v0, $v0, $v1
/* 0D2CA0 8013C5A0 00021080 */  sll   $v0, $v0, 2
/* 0D2CA4 8013C5A4 8E630000 */  lw    $v1, ($s3)
/* 0D2CA8 8013C5A8 00551021 */  addu  $v0, $v0, $s5
/* 0D2CAC 8013C5AC 00622021 */  addu  $a0, $v1, $v0
/* 0D2CB0 8013C5B0 0C00A5CF */  jal   dma_copy
/* 0D2CB4 8013C5B4 00852821 */   addu  $a1, $a0, $a1
/* 0D2CB8 8013C5B8 0000502D */  daddu $t2, $zero, $zero
.L8013C5BC:
/* 0D2CBC 8013C5BC 44960000 */  mtc1  $s6, $f0
/* 0D2CC0 8013C5C0 00000000 */  nop   
/* 0D2CC4 8013C5C4 46800020 */  cvt.s.w $f0, $f0
/* 0D2CC8 8013C5C8 44941000 */  mtc1  $s4, $f2
/* 0D2CCC 8013C5CC 00000000 */  nop   
/* 0D2CD0 8013C5D0 468010A0 */  cvt.s.w $f2, $f2
/* 0D2CD4 8013C5D4 96620008 */  lhu   $v0, 8($s3)
/* 0D2CD8 8013C5D8 104001EE */  beqz  $v0, .L8013CD94
/* 0D2CDC 8013C5DC 46020103 */   div.s $f4, $f0, $f2
/* 0D2CE0 8013C5E0 3C098007 */  lui   $t1, 0x8007
/* 0D2CE4 8013C5E4 252941F4 */  addiu $t1, $t1, 0x41f4
/* 0D2CE8 8013C5E8 3C0B8015 */  lui   $t3, 0x8015
/* 0D2CEC 8013C5EC 256BEE10 */  addiu $t3, $t3, -0x11f0
/* 0D2CF0 8013C5F0 3C0C8000 */  lui   $t4, 0x8000
/* 0D2CF4 8013C5F4 03C0302D */  daddu $a2, $fp, $zero
/* 0D2CF8 8013C5F8 0140382D */  daddu $a3, $t2, $zero
/* 0D2CFC 8013C5FC 02E0402D */  daddu $t0, $s7, $zero
/* 0D2D00 8013C600 3C018015 */  lui   $at, 0x8015
/* 0D2D04 8013C604 D42610E8 */  ldc1  $f6, 0x10e8($at)
/* 0D2D08 8013C608 3C0141E0 */  lui   $at, 0x41e0
/* 0D2D0C 8013C60C 44814800 */  mtc1  $at, $f9
/* 0D2D10 8013C610 44804000 */  mtc1  $zero, $f8
.L8013C614:
/* 0D2D14 8013C614 92430001 */  lbu   $v1, 1($s2)
/* 0D2D18 8013C618 24020002 */  addiu $v0, $zero, 2
/* 0D2D1C 8013C61C 14620256 */  bne   $v1, $v0, .L8013CF78
/* 0D2D20 8013C620 0282102A */   slt   $v0, $s4, $v0
/* 0D2D24 8013C624 14400108 */  bnez  $v0, .L8013CA48
/* 0D2D28 8013C628 00000000 */   nop   
/* 0D2D2C 8013C62C 9662000E */  lhu   $v0, 0xe($s3)
/* 0D2D30 8013C630 30420001 */  andi  $v0, $v0, 1
/* 0D2D34 8013C634 10400039 */  beqz  $v0, .L8013C71C
/* 0D2D38 8013C638 00000000 */   nop   
/* 0D2D3C 8013C63C 84C30000 */  lh    $v1, ($a2)
/* 0D2D40 8013C640 85020000 */  lh    $v0, ($t0)
/* 0D2D44 8013C644 8D240000 */  lw    $a0, ($t1)
/* 0D2D48 8013C648 00431023 */  subu  $v0, $v0, $v1
/* 0D2D4C 8013C64C 44821000 */  mtc1  $v0, $f2
/* 0D2D50 8013C650 00000000 */  nop   
/* 0D2D54 8013C654 468010A0 */  cvt.s.w $f2, $f2
/* 0D2D58 8013C658 46041082 */  mul.s $f2, $f2, $f4
/* 0D2D5C 8013C65C 00000000 */  nop   
/* 0D2D60 8013C660 00042080 */  sll   $a0, $a0, 2
/* 0D2D64 8013C664 02442021 */  addu  $a0, $s2, $a0
/* 0D2D68 8013C668 44830000 */  mtc1  $v1, $f0
/* 0D2D6C 8013C66C 00000000 */  nop   
/* 0D2D70 8013C670 46800020 */  cvt.s.w $f0, $f0
/* 0D2D74 8013C674 8C820068 */  lw    $v0, 0x68($a0)
/* 0D2D78 8013C678 46020000 */  add.s $f0, $f0, $f2
/* 0D2D7C 8013C67C 00E21021 */  addu  $v0, $a3, $v0
/* 0D2D80 8013C680 4600028D */  trunc.w.s $f10, $f0
/* 0D2D84 8013C684 44035000 */  mfc1  $v1, $f10
/* 0D2D88 8013C688 00000000 */  nop   
/* 0D2D8C 8013C68C A4430000 */  sh    $v1, ($v0)
/* 0D2D90 8013C690 84C30002 */  lh    $v1, 2($a2)
/* 0D2D94 8013C694 85020002 */  lh    $v0, 2($t0)
/* 0D2D98 8013C698 00431023 */  subu  $v0, $v0, $v1
/* 0D2D9C 8013C69C 44820000 */  mtc1  $v0, $f0
/* 0D2DA0 8013C6A0 00000000 */  nop   
/* 0D2DA4 8013C6A4 46800020 */  cvt.s.w $f0, $f0
/* 0D2DA8 8013C6A8 46040002 */  mul.s $f0, $f0, $f4
/* 0D2DAC 8013C6AC 00000000 */  nop   
/* 0D2DB0 8013C6B0 44831000 */  mtc1  $v1, $f2
/* 0D2DB4 8013C6B4 00000000 */  nop   
/* 0D2DB8 8013C6B8 468010A0 */  cvt.s.w $f2, $f2
/* 0D2DBC 8013C6BC 8C820068 */  lw    $v0, 0x68($a0)
/* 0D2DC0 8013C6C0 46001080 */  add.s $f2, $f2, $f0
/* 0D2DC4 8013C6C4 00E21021 */  addu  $v0, $a3, $v0
/* 0D2DC8 8013C6C8 4600128D */  trunc.w.s $f10, $f2
/* 0D2DCC 8013C6CC 44035000 */  mfc1  $v1, $f10
/* 0D2DD0 8013C6D0 00000000 */  nop   
/* 0D2DD4 8013C6D4 A4430002 */  sh    $v1, 2($v0)
/* 0D2DD8 8013C6D8 84C30004 */  lh    $v1, 4($a2)
/* 0D2DDC 8013C6DC 85020004 */  lh    $v0, 4($t0)
/* 0D2DE0 8013C6E0 00431023 */  subu  $v0, $v0, $v1
/* 0D2DE4 8013C6E4 44820000 */  mtc1  $v0, $f0
/* 0D2DE8 8013C6E8 00000000 */  nop   
/* 0D2DEC 8013C6EC 46800020 */  cvt.s.w $f0, $f0
/* 0D2DF0 8013C6F0 46040002 */  mul.s $f0, $f0, $f4
/* 0D2DF4 8013C6F4 00000000 */  nop   
/* 0D2DF8 8013C6F8 44831000 */  mtc1  $v1, $f2
/* 0D2DFC 8013C6FC 00000000 */  nop   
/* 0D2E00 8013C700 468010A0 */  cvt.s.w $f2, $f2
/* 0D2E04 8013C704 8C820068 */  lw    $v0, 0x68($a0)
/* 0D2E08 8013C708 46001080 */  add.s $f2, $f2, $f0
/* 0D2E0C 8013C70C 4600128D */  trunc.w.s $f10, $f2
/* 0D2E10 8013C710 44035000 */  mfc1  $v1, $f10
/* 0D2E14 8013C714 0804F233 */  j     .L8013C8CC
/* 0D2E18 8013C718 00E21021 */   addu  $v0, $a3, $v0

.L8013C71C:
/* 0D2E1C 8013C71C 84C30000 */  lh    $v1, ($a2)
/* 0D2E20 8013C720 85020000 */  lh    $v0, ($t0)
/* 0D2E24 8013C724 00431023 */  subu  $v0, $v0, $v1
/* 0D2E28 8013C728 44821000 */  mtc1  $v0, $f2
/* 0D2E2C 8013C72C 00000000 */  nop   
/* 0D2E30 8013C730 468010A0 */  cvt.s.w $f2, $f2
/* 0D2E34 8013C734 46041082 */  mul.s $f2, $f2, $f4
/* 0D2E38 8013C738 00000000 */  nop   
/* 0D2E3C 8013C73C 44830000 */  mtc1  $v1, $f0
/* 0D2E40 8013C740 00000000 */  nop   
/* 0D2E44 8013C744 46800020 */  cvt.s.w $f0, $f0
/* 0D2E48 8013C748 46020000 */  add.s $f0, $f0, $f2
/* 0D2E4C 8013C74C 4600028D */  trunc.w.s $f10, $f0
/* 0D2E50 8013C750 44025000 */  mfc1  $v0, $f10
/* 0D2E54 8013C754 00000000 */  nop   
/* 0D2E58 8013C758 00021400 */  sll   $v0, $v0, 0x10
/* 0D2E5C 8013C75C 00021403 */  sra   $v0, $v0, 0x10
/* 0D2E60 8013C760 44821000 */  mtc1  $v0, $f2
/* 0D2E64 8013C764 00000000 */  nop   
/* 0D2E68 8013C768 468010A1 */  cvt.d.w $f2, $f2
/* 0D2E6C 8013C76C 46261082 */  mul.d $f2, $f2, $f6
/* 0D2E70 8013C770 00000000 */  nop   
/* 0D2E74 8013C774 8D650000 */  lw    $a1, ($t3)
/* 0D2E78 8013C778 94A20008 */  lhu   $v0, 8($a1)
/* 0D2E7C 8013C77C 44820000 */  mtc1  $v0, $f0
/* 0D2E80 8013C780 00000000 */  nop   
/* 0D2E84 8013C784 46800021 */  cvt.d.w $f0, $f0
/* 0D2E88 8013C788 46201082 */  mul.d $f2, $f2, $f0
/* 0D2E8C 8013C78C 00000000 */  nop   
/* 0D2E90 8013C790 8D240000 */  lw    $a0, ($t1)
/* 0D2E94 8013C794 00042080 */  sll   $a0, $a0, 2
/* 0D2E98 8013C798 02442021 */  addu  $a0, $s2, $a0
/* 0D2E9C 8013C79C 8C820068 */  lw    $v0, 0x68($a0)
/* 0D2EA0 8013C7A0 00E21021 */  addu  $v0, $a3, $v0
/* 0D2EA4 8013C7A4 4620128D */  trunc.w.d $f10, $f2
/* 0D2EA8 8013C7A8 44035000 */  mfc1  $v1, $f10
/* 0D2EAC 8013C7AC 00000000 */  nop   
/* 0D2EB0 8013C7B0 A4430000 */  sh    $v1, ($v0)
/* 0D2EB4 8013C7B4 84C30002 */  lh    $v1, 2($a2)
/* 0D2EB8 8013C7B8 85020002 */  lh    $v0, 2($t0)
/* 0D2EBC 8013C7BC 00431023 */  subu  $v0, $v0, $v1
/* 0D2EC0 8013C7C0 44821000 */  mtc1  $v0, $f2
/* 0D2EC4 8013C7C4 00000000 */  nop   
/* 0D2EC8 8013C7C8 468010A0 */  cvt.s.w $f2, $f2
/* 0D2ECC 8013C7CC 46041082 */  mul.s $f2, $f2, $f4
/* 0D2ED0 8013C7D0 00000000 */  nop   
/* 0D2ED4 8013C7D4 44830000 */  mtc1  $v1, $f0
/* 0D2ED8 8013C7D8 00000000 */  nop   
/* 0D2EDC 8013C7DC 46800020 */  cvt.s.w $f0, $f0
/* 0D2EE0 8013C7E0 46020000 */  add.s $f0, $f0, $f2
/* 0D2EE4 8013C7E4 4600028D */  trunc.w.s $f10, $f0
/* 0D2EE8 8013C7E8 44025000 */  mfc1  $v0, $f10
/* 0D2EEC 8013C7EC 00000000 */  nop   
/* 0D2EF0 8013C7F0 00021400 */  sll   $v0, $v0, 0x10
/* 0D2EF4 8013C7F4 00021403 */  sra   $v0, $v0, 0x10
/* 0D2EF8 8013C7F8 44821000 */  mtc1  $v0, $f2
/* 0D2EFC 8013C7FC 00000000 */  nop   
/* 0D2F00 8013C800 468010A1 */  cvt.d.w $f2, $f2
/* 0D2F04 8013C804 46261082 */  mul.d $f2, $f2, $f6
/* 0D2F08 8013C808 00000000 */  nop   
/* 0D2F0C 8013C80C 94A2000A */  lhu   $v0, 0xa($a1)
/* 0D2F10 8013C810 44820000 */  mtc1  $v0, $f0
/* 0D2F14 8013C814 00000000 */  nop   
/* 0D2F18 8013C818 46800021 */  cvt.d.w $f0, $f0
/* 0D2F1C 8013C81C 46201082 */  mul.d $f2, $f2, $f0
/* 0D2F20 8013C820 00000000 */  nop   
/* 0D2F24 8013C824 8C820068 */  lw    $v0, 0x68($a0)
/* 0D2F28 8013C828 00E21021 */  addu  $v0, $a3, $v0
/* 0D2F2C 8013C82C 4620128D */  trunc.w.d $f10, $f2
/* 0D2F30 8013C830 44035000 */  mfc1  $v1, $f10
/* 0D2F34 8013C834 00000000 */  nop   
/* 0D2F38 8013C838 A4430002 */  sh    $v1, 2($v0)
/* 0D2F3C 8013C83C 84C30004 */  lh    $v1, 4($a2)
/* 0D2F40 8013C840 85020004 */  lh    $v0, 4($t0)
/* 0D2F44 8013C844 00431023 */  subu  $v0, $v0, $v1
/* 0D2F48 8013C848 44821000 */  mtc1  $v0, $f2
/* 0D2F4C 8013C84C 00000000 */  nop   
/* 0D2F50 8013C850 468010A0 */  cvt.s.w $f2, $f2
/* 0D2F54 8013C854 46041082 */  mul.s $f2, $f2, $f4
/* 0D2F58 8013C858 00000000 */  nop   
/* 0D2F5C 8013C85C 44830000 */  mtc1  $v1, $f0
/* 0D2F60 8013C860 00000000 */  nop   
/* 0D2F64 8013C864 46800020 */  cvt.s.w $f0, $f0
/* 0D2F68 8013C868 46020000 */  add.s $f0, $f0, $f2
/* 0D2F6C 8013C86C 4600028D */  trunc.w.s $f10, $f0
/* 0D2F70 8013C870 44025000 */  mfc1  $v0, $f10
/* 0D2F74 8013C874 00000000 */  nop   
/* 0D2F78 8013C878 00021400 */  sll   $v0, $v0, 0x10
/* 0D2F7C 8013C87C 00021403 */  sra   $v0, $v0, 0x10
/* 0D2F80 8013C880 44821000 */  mtc1  $v0, $f2
/* 0D2F84 8013C884 00000000 */  nop   
/* 0D2F88 8013C888 468010A1 */  cvt.d.w $f2, $f2
/* 0D2F8C 8013C88C 46261082 */  mul.d $f2, $f2, $f6
/* 0D2F90 8013C890 00000000 */  nop   
/* 0D2F94 8013C894 94A3000A */  lhu   $v1, 0xa($a1)
/* 0D2F98 8013C898 94A20008 */  lhu   $v0, 8($a1)
/* 0D2F9C 8013C89C 00431021 */  addu  $v0, $v0, $v1
/* 0D2FA0 8013C8A0 00021043 */  sra   $v0, $v0, 1
/* 0D2FA4 8013C8A4 44820000 */  mtc1  $v0, $f0
/* 0D2FA8 8013C8A8 00000000 */  nop   
/* 0D2FAC 8013C8AC 46800021 */  cvt.d.w $f0, $f0
/* 0D2FB0 8013C8B0 46201082 */  mul.d $f2, $f2, $f0
/* 0D2FB4 8013C8B4 00000000 */  nop   
/* 0D2FB8 8013C8B8 8C820068 */  lw    $v0, 0x68($a0)
/* 0D2FBC 8013C8BC 00E21021 */  addu  $v0, $a3, $v0
/* 0D2FC0 8013C8C0 4620128D */  trunc.w.d $f10, $f2
/* 0D2FC4 8013C8C4 44035000 */  mfc1  $v1, $f10
/* 0D2FC8 8013C8C8 00000000 */  nop   
.L8013C8CC:
/* 0D2FCC 8013C8CC A4430004 */  sh    $v1, 4($v0)
/* 0D2FD0 8013C8D0 8E420014 */  lw    $v0, 0x14($s2)
/* 0D2FD4 8013C8D4 3042A000 */  andi  $v0, $v0, 0xa000
/* 0D2FD8 8013C8D8 10400040 */  beqz  $v0, .L8013C9DC
/* 0D2FDC 8013C8DC 00000000 */   nop   
/* 0D2FE0 8013C8E0 80C30008 */  lb    $v1, 8($a2)
/* 0D2FE4 8013C8E4 81020008 */  lb    $v0, 8($t0)
/* 0D2FE8 8013C8E8 00431023 */  subu  $v0, $v0, $v1
/* 0D2FEC 8013C8EC 44821000 */  mtc1  $v0, $f2
/* 0D2FF0 8013C8F0 00000000 */  nop   
/* 0D2FF4 8013C8F4 468010A0 */  cvt.s.w $f2, $f2
/* 0D2FF8 8013C8F8 46041082 */  mul.s $f2, $f2, $f4
/* 0D2FFC 8013C8FC 00000000 */  nop   
/* 0D3000 8013C900 8D220000 */  lw    $v0, ($t1)
/* 0D3004 8013C904 44830000 */  mtc1  $v1, $f0
/* 0D3008 8013C908 00000000 */  nop   
/* 0D300C 8013C90C 46800020 */  cvt.s.w $f0, $f0
/* 0D3010 8013C910 00021080 */  sll   $v0, $v0, 2
/* 0D3014 8013C914 02421021 */  addu  $v0, $s2, $v0
/* 0D3018 8013C918 8C420068 */  lw    $v0, 0x68($v0)
/* 0D301C 8013C91C 46020000 */  add.s $f0, $f0, $f2
/* 0D3020 8013C920 00E21021 */  addu  $v0, $a3, $v0
/* 0D3024 8013C924 4600028D */  trunc.w.s $f10, $f0
/* 0D3028 8013C928 44035000 */  mfc1  $v1, $f10
/* 0D302C 8013C92C 00000000 */  nop   
/* 0D3030 8013C930 A043000C */  sb    $v1, 0xc($v0)
/* 0D3034 8013C934 80C30009 */  lb    $v1, 9($a2)
/* 0D3038 8013C938 81020009 */  lb    $v0, 9($t0)
/* 0D303C 8013C93C 00431023 */  subu  $v0, $v0, $v1
/* 0D3040 8013C940 44821000 */  mtc1  $v0, $f2
/* 0D3044 8013C944 00000000 */  nop   
/* 0D3048 8013C948 468010A0 */  cvt.s.w $f2, $f2
/* 0D304C 8013C94C 46041082 */  mul.s $f2, $f2, $f4
/* 0D3050 8013C950 00000000 */  nop   
/* 0D3054 8013C954 8D220000 */  lw    $v0, ($t1)
/* 0D3058 8013C958 44830000 */  mtc1  $v1, $f0
/* 0D305C 8013C95C 00000000 */  nop   
/* 0D3060 8013C960 46800020 */  cvt.s.w $f0, $f0
/* 0D3064 8013C964 00021080 */  sll   $v0, $v0, 2
/* 0D3068 8013C968 02421021 */  addu  $v0, $s2, $v0
/* 0D306C 8013C96C 8C420068 */  lw    $v0, 0x68($v0)
/* 0D3070 8013C970 46020000 */  add.s $f0, $f0, $f2
/* 0D3074 8013C974 00E21021 */  addu  $v0, $a3, $v0
/* 0D3078 8013C978 4600028D */  trunc.w.s $f10, $f0
/* 0D307C 8013C97C 44035000 */  mfc1  $v1, $f10
/* 0D3080 8013C980 00000000 */  nop   
/* 0D3084 8013C984 A043000D */  sb    $v1, 0xd($v0)
/* 0D3088 8013C988 80C3000A */  lb    $v1, 0xa($a2)
/* 0D308C 8013C98C 8102000A */  lb    $v0, 0xa($t0)
/* 0D3090 8013C990 00431023 */  subu  $v0, $v0, $v1
/* 0D3094 8013C994 44821000 */  mtc1  $v0, $f2
/* 0D3098 8013C998 00000000 */  nop   
/* 0D309C 8013C99C 468010A0 */  cvt.s.w $f2, $f2
/* 0D30A0 8013C9A0 46041082 */  mul.s $f2, $f2, $f4
/* 0D30A4 8013C9A4 00000000 */  nop   
/* 0D30A8 8013C9A8 8D220000 */  lw    $v0, ($t1)
/* 0D30AC 8013C9AC 44830000 */  mtc1  $v1, $f0
/* 0D30B0 8013C9B0 00000000 */  nop   
/* 0D30B4 8013C9B4 46800020 */  cvt.s.w $f0, $f0
/* 0D30B8 8013C9B8 00021080 */  sll   $v0, $v0, 2
/* 0D30BC 8013C9BC 02421021 */  addu  $v0, $s2, $v0
/* 0D30C0 8013C9C0 8C420068 */  lw    $v0, 0x68($v0)
/* 0D30C4 8013C9C4 46020000 */  add.s $f0, $f0, $f2
/* 0D30C8 8013C9C8 00E21021 */  addu  $v0, $a3, $v0
/* 0D30CC 8013C9CC 4600028D */  trunc.w.s $f10, $f0
/* 0D30D0 8013C9D0 44035000 */  mfc1  $v1, $f10
/* 0D30D4 8013C9D4 0804F321 */  j     .L8013CC84
/* 0D30D8 8013C9D8 A043000E */   sb    $v1, 0xe($v0)

.L8013C9DC:
/* 0D30DC 8013C9DC 90C30006 */  lbu   $v1, 6($a2)
/* 0D30E0 8013C9E0 90C20007 */  lbu   $v0, 7($a2)
/* 0D30E4 8013C9E4 3C018015 */  lui   $at, 0x8015
/* 0D30E8 8013C9E8 D42210F0 */  ldc1  $f2, 0x10f0($at)
/* 0D30EC 8013C9EC 00621821 */  addu  $v1, $v1, $v0
/* 0D30F0 8013C9F0 44830000 */  mtc1  $v1, $f0
/* 0D30F4 8013C9F4 00000000 */  nop   
/* 0D30F8 8013C9F8 46800021 */  cvt.d.w $f0, $f0
/* 0D30FC 8013C9FC 46220002 */  mul.d $f0, $f0, $f2
/* 0D3100 8013CA00 00000000 */  nop   
/* 0D3104 8013CA04 8D220000 */  lw    $v0, ($t1)
/* 0D3108 8013CA08 00021080 */  sll   $v0, $v0, 2
/* 0D310C 8013CA0C 02421021 */  addu  $v0, $s2, $v0
/* 0D3110 8013CA10 8C420068 */  lw    $v0, 0x68($v0)
/* 0D3114 8013CA14 3C01406E */  lui   $at, 0x406e
/* 0D3118 8013CA18 44811800 */  mtc1  $at, $f3
/* 0D311C 8013CA1C 44801000 */  mtc1  $zero, $f2
/* 0D3120 8013CA20 00E21021 */  addu  $v0, $a3, $v0
/* 0D3124 8013CA24 2445000C */  addiu $a1, $v0, 0xc
/* 0D3128 8013CA28 46201001 */  sub.d $f0, $f2, $f0
/* 0D312C 8013CA2C 2444000D */  addiu $a0, $v0, 0xd
/* 0D3130 8013CA30 4620403E */  c.le.d $f8, $f0
/* 0D3134 8013CA34 00000000 */  nop   
/* 0D3138 8013CA38 45000086 */  bc1f  .L8013CC54
/* 0D313C 8013CA3C 2442000E */   addiu $v0, $v0, 0xe
/* 0D3140 8013CA40 0804F31A */  j     .L8013CC68
/* 0D3144 8013CA44 46280001 */   sub.d $f0, $f0, $f8

.L8013CA48:
/* 0D3148 8013CA48 9662000E */  lhu   $v0, 0xe($s3)
/* 0D314C 8013CA4C 30420001 */  andi  $v0, $v0, 1
/* 0D3150 8013CA50 10400010 */  beqz  $v0, .L8013CA94
/* 0D3154 8013CA54 00000000 */   nop   
/* 0D3158 8013CA58 8D230000 */  lw    $v1, ($t1)
/* 0D315C 8013CA5C 00031880 */  sll   $v1, $v1, 2
/* 0D3160 8013CA60 02431821 */  addu  $v1, $s2, $v1
/* 0D3164 8013CA64 8C620068 */  lw    $v0, 0x68($v1)
/* 0D3168 8013CA68 94C40000 */  lhu   $a0, ($a2)
/* 0D316C 8013CA6C 00E21021 */  addu  $v0, $a3, $v0
/* 0D3170 8013CA70 A4440000 */  sh    $a0, ($v0)
/* 0D3174 8013CA74 8C620068 */  lw    $v0, 0x68($v1)
/* 0D3178 8013CA78 94C40002 */  lhu   $a0, 2($a2)
/* 0D317C 8013CA7C 00E21021 */  addu  $v0, $a3, $v0
/* 0D3180 8013CA80 A4440002 */  sh    $a0, 2($v0)
/* 0D3184 8013CA84 8C620068 */  lw    $v0, 0x68($v1)
/* 0D3188 8013CA88 94C30004 */  lhu   $v1, 4($a2)
/* 0D318C 8013CA8C 0804F2E1 */  j     .L8013CB84
/* 0D3190 8013CA90 00E21021 */   addu  $v0, $a3, $v0

.L8013CA94:
/* 0D3194 8013CA94 84C20000 */  lh    $v0, ($a2)
/* 0D3198 8013CA98 44821000 */  mtc1  $v0, $f2
/* 0D319C 8013CA9C 00000000 */  nop   
/* 0D31A0 8013CAA0 468010A1 */  cvt.d.w $f2, $f2
/* 0D31A4 8013CAA4 46261082 */  mul.d $f2, $f2, $f6
/* 0D31A8 8013CAA8 00000000 */  nop   
/* 0D31AC 8013CAAC 8D650000 */  lw    $a1, ($t3)
/* 0D31B0 8013CAB0 94A20008 */  lhu   $v0, 8($a1)
/* 0D31B4 8013CAB4 44820000 */  mtc1  $v0, $f0
/* 0D31B8 8013CAB8 00000000 */  nop   
/* 0D31BC 8013CABC 46800021 */  cvt.d.w $f0, $f0
/* 0D31C0 8013CAC0 46201082 */  mul.d $f2, $f2, $f0
/* 0D31C4 8013CAC4 00000000 */  nop   
/* 0D31C8 8013CAC8 8D240000 */  lw    $a0, ($t1)
/* 0D31CC 8013CACC 00042080 */  sll   $a0, $a0, 2
/* 0D31D0 8013CAD0 02442021 */  addu  $a0, $s2, $a0
/* 0D31D4 8013CAD4 8C820068 */  lw    $v0, 0x68($a0)
/* 0D31D8 8013CAD8 00E21021 */  addu  $v0, $a3, $v0
/* 0D31DC 8013CADC 4620128D */  trunc.w.d $f10, $f2
/* 0D31E0 8013CAE0 44035000 */  mfc1  $v1, $f10
/* 0D31E4 8013CAE4 00000000 */  nop   
/* 0D31E8 8013CAE8 A4430000 */  sh    $v1, ($v0)
/* 0D31EC 8013CAEC 84C20002 */  lh    $v0, 2($a2)
/* 0D31F0 8013CAF0 44821000 */  mtc1  $v0, $f2
/* 0D31F4 8013CAF4 00000000 */  nop   
/* 0D31F8 8013CAF8 468010A1 */  cvt.d.w $f2, $f2
/* 0D31FC 8013CAFC 46261082 */  mul.d $f2, $f2, $f6
/* 0D3200 8013CB00 00000000 */  nop   
/* 0D3204 8013CB04 94A2000A */  lhu   $v0, 0xa($a1)
/* 0D3208 8013CB08 44820000 */  mtc1  $v0, $f0
/* 0D320C 8013CB0C 00000000 */  nop   
/* 0D3210 8013CB10 46800021 */  cvt.d.w $f0, $f0
/* 0D3214 8013CB14 46201082 */  mul.d $f2, $f2, $f0
/* 0D3218 8013CB18 00000000 */  nop   
/* 0D321C 8013CB1C 8C820068 */  lw    $v0, 0x68($a0)
/* 0D3220 8013CB20 00E21021 */  addu  $v0, $a3, $v0
/* 0D3224 8013CB24 4620128D */  trunc.w.d $f10, $f2
/* 0D3228 8013CB28 44035000 */  mfc1  $v1, $f10
/* 0D322C 8013CB2C 00000000 */  nop   
/* 0D3230 8013CB30 A4430002 */  sh    $v1, 2($v0)
/* 0D3234 8013CB34 84C20004 */  lh    $v0, 4($a2)
/* 0D3238 8013CB38 44821000 */  mtc1  $v0, $f2
/* 0D323C 8013CB3C 00000000 */  nop   
/* 0D3240 8013CB40 468010A1 */  cvt.d.w $f2, $f2
/* 0D3244 8013CB44 46261082 */  mul.d $f2, $f2, $f6
/* 0D3248 8013CB48 00000000 */  nop   
/* 0D324C 8013CB4C 94A3000A */  lhu   $v1, 0xa($a1)
/* 0D3250 8013CB50 94A20008 */  lhu   $v0, 8($a1)
/* 0D3254 8013CB54 00431021 */  addu  $v0, $v0, $v1
/* 0D3258 8013CB58 00021043 */  sra   $v0, $v0, 1
/* 0D325C 8013CB5C 44820000 */  mtc1  $v0, $f0
/* 0D3260 8013CB60 00000000 */  nop   
/* 0D3264 8013CB64 46800021 */  cvt.d.w $f0, $f0
/* 0D3268 8013CB68 46201082 */  mul.d $f2, $f2, $f0
/* 0D326C 8013CB6C 00000000 */  nop   
/* 0D3270 8013CB70 8C820068 */  lw    $v0, 0x68($a0)
/* 0D3274 8013CB74 00E21021 */  addu  $v0, $a3, $v0
/* 0D3278 8013CB78 4620128D */  trunc.w.d $f10, $f2
/* 0D327C 8013CB7C 44035000 */  mfc1  $v1, $f10
/* 0D3280 8013CB80 00000000 */  nop   
.L8013CB84:
/* 0D3284 8013CB84 A4430004 */  sh    $v1, 4($v0)
/* 0D3288 8013CB88 8E420014 */  lw    $v0, 0x14($s2)
/* 0D328C 8013CB8C 3042A000 */  andi  $v0, $v0, 0xa000
/* 0D3290 8013CB90 10400017 */  beqz  $v0, .L8013CBF0
/* 0D3294 8013CB94 00000000 */   nop   
/* 0D3298 8013CB98 8D220000 */  lw    $v0, ($t1)
/* 0D329C 8013CB9C 00021080 */  sll   $v0, $v0, 2
/* 0D32A0 8013CBA0 02421021 */  addu  $v0, $s2, $v0
/* 0D32A4 8013CBA4 8C420068 */  lw    $v0, 0x68($v0)
/* 0D32A8 8013CBA8 90C30008 */  lbu   $v1, 8($a2)
/* 0D32AC 8013CBAC 00E21021 */  addu  $v0, $a3, $v0
/* 0D32B0 8013CBB0 A043000C */  sb    $v1, 0xc($v0)
/* 0D32B4 8013CBB4 8D220000 */  lw    $v0, ($t1)
/* 0D32B8 8013CBB8 00021080 */  sll   $v0, $v0, 2
/* 0D32BC 8013CBBC 02421021 */  addu  $v0, $s2, $v0
/* 0D32C0 8013CBC0 8C420068 */  lw    $v0, 0x68($v0)
/* 0D32C4 8013CBC4 90C30009 */  lbu   $v1, 9($a2)
/* 0D32C8 8013CBC8 00E21021 */  addu  $v0, $a3, $v0
/* 0D32CC 8013CBCC A043000D */  sb    $v1, 0xd($v0)
/* 0D32D0 8013CBD0 8D220000 */  lw    $v0, ($t1)
/* 0D32D4 8013CBD4 00021080 */  sll   $v0, $v0, 2
/* 0D32D8 8013CBD8 02421021 */  addu  $v0, $s2, $v0
/* 0D32DC 8013CBDC 8C420068 */  lw    $v0, 0x68($v0)
/* 0D32E0 8013CBE0 90C3000A */  lbu   $v1, 0xa($a2)
/* 0D32E4 8013CBE4 00E21021 */  addu  $v0, $a3, $v0
/* 0D32E8 8013CBE8 0804F321 */  j     .L8013CC84
/* 0D32EC 8013CBEC A043000E */   sb    $v1, 0xe($v0)

.L8013CBF0:
/* 0D32F0 8013CBF0 90C30006 */  lbu   $v1, 6($a2)
/* 0D32F4 8013CBF4 90C20007 */  lbu   $v0, 7($a2)
/* 0D32F8 8013CBF8 3C018015 */  lui   $at, 0x8015
/* 0D32FC 8013CBFC D42210F8 */  ldc1  $f2, 0x10f8($at)
/* 0D3300 8013CC00 00621821 */  addu  $v1, $v1, $v0
/* 0D3304 8013CC04 44830000 */  mtc1  $v1, $f0
/* 0D3308 8013CC08 00000000 */  nop   
/* 0D330C 8013CC0C 46800021 */  cvt.d.w $f0, $f0
/* 0D3310 8013CC10 46220002 */  mul.d $f0, $f0, $f2
/* 0D3314 8013CC14 00000000 */  nop   
/* 0D3318 8013CC18 8D220000 */  lw    $v0, ($t1)
/* 0D331C 8013CC1C 00021080 */  sll   $v0, $v0, 2
/* 0D3320 8013CC20 02421021 */  addu  $v0, $s2, $v0
/* 0D3324 8013CC24 8C420068 */  lw    $v0, 0x68($v0)
/* 0D3328 8013CC28 3C01406E */  lui   $at, 0x406e
/* 0D332C 8013CC2C 44811800 */  mtc1  $at, $f3
/* 0D3330 8013CC30 44801000 */  mtc1  $zero, $f2
/* 0D3334 8013CC34 00E21021 */  addu  $v0, $a3, $v0
/* 0D3338 8013CC38 2445000C */  addiu $a1, $v0, 0xc
/* 0D333C 8013CC3C 46201001 */  sub.d $f0, $f2, $f0
/* 0D3340 8013CC40 2444000D */  addiu $a0, $v0, 0xd
/* 0D3344 8013CC44 4620403E */  c.le.d $f8, $f0
/* 0D3348 8013CC48 00000000 */  nop   
/* 0D334C 8013CC4C 45010005 */  bc1t  .L8013CC64
/* 0D3350 8013CC50 2442000E */   addiu $v0, $v0, 0xe
.L8013CC54:
/* 0D3354 8013CC54 4620028D */  trunc.w.d $f10, $f0
/* 0D3358 8013CC58 44035000 */  mfc1  $v1, $f10
/* 0D335C 8013CC5C 0804F31F */  j     .L8013CC7C
/* 0D3360 8013CC60 A0430000 */   sb    $v1, ($v0)

.L8013CC64:
/* 0D3364 8013CC64 46280001 */  sub.d $f0, $f0, $f8
.L8013CC68:
/* 0D3368 8013CC68 4620028D */  trunc.w.d $f10, $f0
/* 0D336C 8013CC6C 44035000 */  mfc1  $v1, $f10
/* 0D3370 8013CC70 00000000 */  nop   
/* 0D3374 8013CC74 006C1825 */  or    $v1, $v1, $t4
/* 0D3378 8013CC78 A0430000 */  sb    $v1, ($v0)
.L8013CC7C:
/* 0D337C 8013CC7C A0830000 */  sb    $v1, ($a0)
/* 0D3380 8013CC80 A0A30000 */  sb    $v1, ($a1)
.L8013CC84:
/* 0D3384 8013CC84 9662000E */  lhu   $v0, 0xe($s3)
/* 0D3388 8013CC88 30420001 */  andi  $v0, $v0, 1
/* 0D338C 8013CC8C 1040000E */  beqz  $v0, .L8013CCC8
/* 0D3390 8013CC90 00000000 */   nop   
/* 0D3394 8013CC94 8D240000 */  lw    $a0, ($t1)
/* 0D3398 8013CC98 90C20006 */  lbu   $v0, 6($a2)
/* 0D339C 8013CC9C 00042080 */  sll   $a0, $a0, 2
/* 0D33A0 8013CCA0 02442021 */  addu  $a0, $s2, $a0
/* 0D33A4 8013CCA4 24420100 */  addiu $v0, $v0, 0x100
/* 0D33A8 8013CCA8 8C830068 */  lw    $v1, 0x68($a0)
/* 0D33AC 8013CCAC 00021140 */  sll   $v0, $v0, 5
/* 0D33B0 8013CCB0 00E31821 */  addu  $v1, $a3, $v1
/* 0D33B4 8013CCB4 A4620008 */  sh    $v0, 8($v1)
/* 0D33B8 8013CCB8 8C830068 */  lw    $v1, 0x68($a0)
/* 0D33BC 8013CCBC 90C20007 */  lbu   $v0, 7($a2)
/* 0D33C0 8013CCC0 0804F35B */  j     .L8013CD6C
/* 0D33C4 8013CCC4 00E31821 */   addu  $v1, $a3, $v1

.L8013CCC8:
/* 0D33C8 8013CCC8 90C20006 */  lbu   $v0, 6($a2)
/* 0D33CC 8013CCCC 44821000 */  mtc1  $v0, $f2
/* 0D33D0 8013CCD0 00000000 */  nop   
/* 0D33D4 8013CCD4 468010A1 */  cvt.d.w $f2, $f2
/* 0D33D8 8013CCD8 46261082 */  mul.d $f2, $f2, $f6
/* 0D33DC 8013CCDC 00000000 */  nop   
/* 0D33E0 8013CCE0 8D650000 */  lw    $a1, ($t3)
/* 0D33E4 8013CCE4 94A20008 */  lhu   $v0, 8($a1)
/* 0D33E8 8013CCE8 44820000 */  mtc1  $v0, $f0
/* 0D33EC 8013CCEC 00000000 */  nop   
/* 0D33F0 8013CCF0 46800021 */  cvt.d.w $f0, $f0
/* 0D33F4 8013CCF4 46201082 */  mul.d $f2, $f2, $f0
/* 0D33F8 8013CCF8 00000000 */  nop   
/* 0D33FC 8013CCFC 8D240000 */  lw    $a0, ($t1)
/* 0D3400 8013CD00 00042080 */  sll   $a0, $a0, 2
/* 0D3404 8013CD04 02442021 */  addu  $a0, $s2, $a0
/* 0D3408 8013CD08 8C830068 */  lw    $v1, 0x68($a0)
/* 0D340C 8013CD0C 00E31821 */  addu  $v1, $a3, $v1
/* 0D3410 8013CD10 4620128D */  trunc.w.d $f10, $f2
/* 0D3414 8013CD14 44025000 */  mfc1  $v0, $f10
/* 0D3418 8013CD18 00000000 */  nop   
/* 0D341C 8013CD1C 24420100 */  addiu $v0, $v0, 0x100
/* 0D3420 8013CD20 00021140 */  sll   $v0, $v0, 5
/* 0D3424 8013CD24 A4620008 */  sh    $v0, 8($v1)
/* 0D3428 8013CD28 90C20007 */  lbu   $v0, 7($a2)
/* 0D342C 8013CD2C 44821000 */  mtc1  $v0, $f2
/* 0D3430 8013CD30 00000000 */  nop   
/* 0D3434 8013CD34 468010A1 */  cvt.d.w $f2, $f2
/* 0D3438 8013CD38 46261082 */  mul.d $f2, $f2, $f6
/* 0D343C 8013CD3C 00000000 */  nop   
/* 0D3440 8013CD40 94A2000A */  lhu   $v0, 0xa($a1)
/* 0D3444 8013CD44 44820000 */  mtc1  $v0, $f0
/* 0D3448 8013CD48 00000000 */  nop   
/* 0D344C 8013CD4C 46800021 */  cvt.d.w $f0, $f0
/* 0D3450 8013CD50 46201082 */  mul.d $f2, $f2, $f0
/* 0D3454 8013CD54 00000000 */  nop   
/* 0D3458 8013CD58 8C830068 */  lw    $v1, 0x68($a0)
/* 0D345C 8013CD5C 00E31821 */  addu  $v1, $a3, $v1
/* 0D3460 8013CD60 4620128D */  trunc.w.d $f10, $f2
/* 0D3464 8013CD64 44025000 */  mfc1  $v0, $f10
/* 0D3468 8013CD68 00000000 */  nop   
.L8013CD6C:
/* 0D346C 8013CD6C 24420100 */  addiu $v0, $v0, 0x100
/* 0D3470 8013CD70 00021140 */  sll   $v0, $v0, 5
/* 0D3474 8013CD74 A462000A */  sh    $v0, 0xa($v1)
/* 0D3478 8013CD78 24C6000C */  addiu $a2, $a2, 0xc
/* 0D347C 8013CD7C 24E70010 */  addiu $a3, $a3, 0x10
/* 0D3480 8013CD80 96620008 */  lhu   $v0, 8($s3)
/* 0D3484 8013CD84 254A0001 */  addiu $t2, $t2, 1
/* 0D3488 8013CD88 0142102A */  slt   $v0, $t2, $v0
/* 0D348C 8013CD8C 1440FE21 */  bnez  $v0, .L8013C614
/* 0D3490 8013CD90 2508000C */   addiu $t0, $t0, 0xc
.L8013CD94:
/* 0D3494 8013CD94 A6400008 */  sh    $zero, 8($s2)
/* 0D3498 8013CD98 96620008 */  lhu   $v0, 8($s3)
/* 0D349C 8013CD9C 03C0202D */  daddu $a0, $fp, $zero
/* 0D34A0 8013CDA0 2442FFFF */  addiu $v0, $v0, -1
/* 0D34A4 8013CDA4 0C00AB4B */  jal   heap_free
/* 0D34A8 8013CDA8 A642000A */   sh    $v0, 0xa($s2)
/* 0D34AC 8013CDAC 12E00003 */  beqz  $s7, .L8013CDBC
/* 0D34B0 8013CDB0 00000000 */   nop   
/* 0D34B4 8013CDB4 0C00AB4B */  jal   heap_free
/* 0D34B8 8013CDB8 02E0202D */   daddu $a0, $s7, $zero
.L8013CDBC:
/* 0D34BC 8013CDBC 8FAD0014 */  lw    $t5, 0x14($sp)
/* 0D34C0 8013CDC0 11A0006D */  beqz  $t5, .L8013CF78
/* 0D34C4 8013CDC4 00000000 */   nop   
/* 0D34C8 8013CDC8 3C028007 */  lui   $v0, 0x8007
/* 0D34CC 8013CDCC 8C42419C */  lw    $v0, 0x419c($v0)
/* 0D34D0 8013CDD0 94420134 */  lhu   $v0, 0x134($v0)
/* 0D34D4 8013CDD4 15A00002 */  bnez  $t5, .L8013CDE0
/* 0D34D8 8013CDD8 004D001A */   div   $zero, $v0, $t5
/* 0D34DC 8013CDDC 0007000D */  break 7
.L8013CDE0:
/* 0D34E0 8013CDE0 2401FFFF */  addiu $at, $zero, -1
/* 0D34E4 8013CDE4 15A10004 */  bne   $t5, $at, .L8013CDF8
/* 0D34E8 8013CDE8 3C018000 */   lui   $at, 0x8000
/* 0D34EC 8013CDEC 14410002 */  bne   $v0, $at, .L8013CDF8
/* 0D34F0 8013CDF0 00000000 */   nop   
/* 0D34F4 8013CDF4 0006000D */  break 6
.L8013CDF8:
/* 0D34F8 8013CDF8 00001810 */  mfhi  $v1
/* 0D34FC 8013CDFC 1460005E */  bnez  $v1, .L8013CF78
/* 0D3500 8013CE00 00000000 */   nop   
/* 0D3504 8013CE04 1A800027 */  blez  $s4, .L8013CEA4
/* 0D3508 8013CE08 00000000 */   nop   
/* 0D350C 8013CE0C 26D60001 */  addiu $s6, $s6, 1
/* 0D3510 8013CE10 02D4102A */  slt   $v0, $s6, $s4
/* 0D3514 8013CE14 14400050 */  bnez  $v0, .L8013CF58
/* 0D3518 8013CE18 00000000 */   nop   
/* 0D351C 8013CE1C 8E430014 */  lw    $v1, 0x14($s2)
/* 0D3520 8013CE20 30620100 */  andi  $v0, $v1, 0x100
/* 0D3524 8013CE24 5040000E */  beql  $v0, $zero, .L8013CE60
/* 0D3528 8013CE28 26310001 */   addiu $s1, $s1, 1
/* 0D352C 8013CE2C 2631FFFF */  addiu $s1, $s1, -1
/* 0D3530 8013CE30 06230049 */  bgezl $s1, .L8013CF58
/* 0D3534 8013CE34 0000B02D */   daddu $s6, $zero, $zero
/* 0D3538 8013CE38 30620080 */  andi  $v0, $v1, 0x80
/* 0D353C 8013CE3C 10400004 */  beqz  $v0, .L8013CE50
/* 0D3540 8013CE40 30620800 */   andi  $v0, $v1, 0x800
/* 0D3544 8013CE44 9662000C */  lhu   $v0, 0xc($s3)
/* 0D3548 8013CE48 0804F3A7 */  j     .L8013CE9C
/* 0D354C 8013CE4C 2451FFFF */   addiu $s1, $v0, -1

.L8013CE50:
/* 0D3550 8013CE50 10400010 */  beqz  $v0, .L8013CE94
/* 0D3554 8013CE54 34624000 */   ori   $v0, $v1, 0x4000
/* 0D3558 8013CE58 0804F3A6 */  j     .L8013CE98
/* 0D355C 8013CE5C 0000882D */   daddu $s1, $zero, $zero

.L8013CE60:
/* 0D3560 8013CE60 9662000C */  lhu   $v0, 0xc($s3)
/* 0D3564 8013CE64 0222102A */  slt   $v0, $s1, $v0
/* 0D3568 8013CE68 1440003B */  bnez  $v0, .L8013CF58
/* 0D356C 8013CE6C 0000B02D */   daddu $s6, $zero, $zero
/* 0D3570 8013CE70 30620080 */  andi  $v0, $v1, 0x80
/* 0D3574 8013CE74 10400003 */  beqz  $v0, .L8013CE84
/* 0D3578 8013CE78 30620800 */   andi  $v0, $v1, 0x800
/* 0D357C 8013CE7C 0804F3D6 */  j     .L8013CF58
/* 0D3580 8013CE80 0000882D */   daddu $s1, $zero, $zero

.L8013CE84:
/* 0D3584 8013CE84 10400003 */  beqz  $v0, .L8013CE94
/* 0D3588 8013CE88 34624000 */   ori   $v0, $v1, 0x4000
/* 0D358C 8013CE8C 0804F3A6 */  j     .L8013CE98
/* 0D3590 8013CE90 2631FFFF */   addiu $s1, $s1, -1

.L8013CE94:
/* 0D3594 8013CE94 34621000 */  ori   $v0, $v1, 0x1000
.L8013CE98:
/* 0D3598 8013CE98 AE420014 */  sw    $v0, 0x14($s2)
.L8013CE9C:
/* 0D359C 8013CE9C 0804F3D6 */  j     .L8013CF58
/* 0D35A0 8013CEA0 0000B02D */   daddu $s6, $zero, $zero

.L8013CEA4:
/* 0D35A4 8013CEA4 0681002C */  bgez  $s4, .L8013CF58
/* 0D35A8 8013CEA8 00000000 */   nop   
/* 0D35AC 8013CEAC 8E440014 */  lw    $a0, 0x14($s2)
/* 0D35B0 8013CEB0 30820100 */  andi  $v0, $a0, 0x100
/* 0D35B4 8013CEB4 1040000E */  beqz  $v0, .L8013CEF0
/* 0D35B8 8013CEB8 00000000 */   nop   
/* 0D35BC 8013CEBC 8FAD0010 */  lw    $t5, 0x10($sp)
/* 0D35C0 8013CEC0 022D8823 */  subu  $s1, $s1, $t5
/* 0D35C4 8013CEC4 06210024 */  bgez  $s1, .L8013CF58
/* 0D35C8 8013CEC8 30820080 */   andi  $v0, $a0, 0x80
/* 0D35CC 8013CECC 10400004 */  beqz  $v0, .L8013CEE0
/* 0D35D0 8013CED0 30820800 */   andi  $v0, $a0, 0x800
/* 0D35D4 8013CED4 9662000C */  lhu   $v0, 0xc($s3)
/* 0D35D8 8013CED8 0804F3D6 */  j     .L8013CF58
/* 0D35DC 8013CEDC 02228821 */   addu  $s1, $s1, $v0

.L8013CEE0:
/* 0D35E0 8013CEE0 1040001B */  beqz  $v0, .L8013CF50
/* 0D35E4 8013CEE4 34824000 */   ori   $v0, $a0, 0x4000
/* 0D35E8 8013CEE8 0804F3D5 */  j     .L8013CF54
/* 0D35EC 8013CEEC 0000882D */   daddu $s1, $zero, $zero

.L8013CEF0:
/* 0D35F0 8013CEF0 8FAD0010 */  lw    $t5, 0x10($sp)
/* 0D35F4 8013CEF4 9663000C */  lhu   $v1, 0xc($s3)
/* 0D35F8 8013CEF8 022D8821 */  addu  $s1, $s1, $t5
/* 0D35FC 8013CEFC 0223102A */  slt   $v0, $s1, $v1
/* 0D3600 8013CF00 14400015 */  bnez  $v0, .L8013CF58
/* 0D3604 8013CF04 30820080 */   andi  $v0, $a0, 0x80
/* 0D3608 8013CF08 1040000D */  beqz  $v0, .L8013CF40
/* 0D360C 8013CF0C 30820800 */   andi  $v0, $a0, 0x800
/* 0D3610 8013CF10 14600002 */  bnez  $v1, .L8013CF1C
/* 0D3614 8013CF14 0223001A */   div   $zero, $s1, $v1
/* 0D3618 8013CF18 0007000D */  break 7
.L8013CF1C:
/* 0D361C 8013CF1C 2401FFFF */  addiu $at, $zero, -1
/* 0D3620 8013CF20 14610004 */  bne   $v1, $at, .L8013CF34
/* 0D3624 8013CF24 3C018000 */   lui   $at, 0x8000
/* 0D3628 8013CF28 16210002 */  bne   $s1, $at, .L8013CF34
/* 0D362C 8013CF2C 00000000 */   nop   
/* 0D3630 8013CF30 0006000D */  break 6
.L8013CF34:
/* 0D3634 8013CF34 00008810 */  mfhi  $s1
/* 0D3638 8013CF38 0804F3D6 */  j     .L8013CF58
/* 0D363C 8013CF3C 00000000 */   nop   

.L8013CF40:
/* 0D3640 8013CF40 10400003 */  beqz  $v0, .L8013CF50
/* 0D3644 8013CF44 34824000 */   ori   $v0, $a0, 0x4000
/* 0D3648 8013CF48 0804F3D5 */  j     .L8013CF54
/* 0D364C 8013CF4C 2471FFFF */   addiu $s1, $v1, -1

.L8013CF50:
/* 0D3650 8013CF50 34821000 */  ori   $v0, $a0, 0x1000
.L8013CF54:
/* 0D3654 8013CF54 AE420014 */  sw    $v0, 0x14($s2)
.L8013CF58:
/* 0D3658 8013CF58 44960000 */  mtc1  $s6, $f0
/* 0D365C 8013CF5C 00000000 */  nop   
/* 0D3660 8013CF60 46800020 */  cvt.s.w $f0, $f0
/* 0D3664 8013CF64 E640003C */  swc1  $f0, 0x3c($s2)
/* 0D3668 8013CF68 44910000 */  mtc1  $s1, $f0
/* 0D366C 8013CF6C 00000000 */  nop   
/* 0D3670 8013CF70 46800020 */  cvt.s.w $f0, $f0
/* 0D3674 8013CF74 E6400040 */  swc1  $f0, 0x40($s2)
.L8013CF78:
/* 0D3678 8013CF78 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0D367C 8013CF7C 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0D3680 8013CF80 8FB70034 */  lw    $s7, 0x34($sp)
/* 0D3684 8013CF84 8FB60030 */  lw    $s6, 0x30($sp)
/* 0D3688 8013CF88 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0D368C 8013CF8C 8FB40028 */  lw    $s4, 0x28($sp)
/* 0D3690 8013CF90 8FB30024 */  lw    $s3, 0x24($sp)
/* 0D3694 8013CF94 8FB20020 */  lw    $s2, 0x20($sp)
/* 0D3698 8013CF98 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0D369C 8013CF9C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D36A0 8013CFA0 03E00008 */  jr    $ra
/* 0D36A4 8013CFA4 27BD0040 */   addiu $sp, $sp, 0x40

