.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80242BA0
/* 163400 80242BA0 2882F581 */  slti  $v0, $a0, -0xa7f
/* 163404 80242BA4 8FA90014 */  lw    $t1, 0x14($sp)
/* 163408 80242BA8 8FAA0018 */  lw    $t2, 0x18($sp)
/* 16340C 80242BAC 8FAB001C */  lw    $t3, 0x1c($sp)
/* 163410 80242BB0 8FAC0020 */  lw    $t4, 0x20($sp)
/* 163414 80242BB4 14400075 */  bnez  $v0, .L80242D8C
/* 163418 80242BB8 28A2F581 */   slti  $v0, $a1, -0xa7f
/* 16341C 80242BBC 14400073 */  bnez  $v0, .L80242D8C
/* 163420 80242BC0 00000000 */   nop   
/* 163424 80242BC4 18C00071 */  blez  $a2, .L80242D8C
/* 163428 80242BC8 00000000 */   nop   
/* 16342C 80242BCC 18E0006F */  blez  $a3, .L80242D8C
/* 163430 80242BD0 28820500 */   slti  $v0, $a0, 0x500
/* 163434 80242BD4 1040006D */  beqz  $v0, .L80242D8C
/* 163438 80242BD8 28A203C0 */   slti  $v0, $a1, 0x3c0
/* 16343C 80242BDC 1040006B */  beqz  $v0, .L80242D8C
/* 163440 80242BE0 28C20A80 */   slti  $v0, $a2, 0xa80
/* 163444 80242BE4 10400069 */  beqz  $v0, .L80242D8C
/* 163448 80242BE8 28E20A80 */   slti  $v0, $a3, 0xa80
/* 16344C 80242BEC 10400067 */  beqz  $v0, .L80242D8C
/* 163450 80242BF0 00000000 */   nop   
/* 163454 80242BF4 3C02800A */  lui   $v0, 0x800a
/* 163458 80242BF8 2442A66C */  addiu $v0, $v0, -0x5994
/* 16345C 80242BFC 8C480000 */  lw    $t0, ($v0)
/* 163460 80242C00 25030008 */  addiu $v1, $t0, 8
/* 163464 80242C04 AC430000 */  sw    $v1, ($v0)
/* 163468 80242C08 00061400 */  sll   $v0, $a2, 0x10
/* 16346C 80242C0C 00021403 */  sra   $v0, $v0, 0x10
/* 163470 80242C10 18400005 */  blez  $v0, .L80242C28
/* 163474 80242C14 30420FFF */   andi  $v0, $v0, 0xfff
/* 163478 80242C18 00021300 */  sll   $v0, $v0, 0xc
/* 16347C 80242C1C 3C03E400 */  lui   $v1, 0xe400
/* 163480 80242C20 08090B0B */  j     .L80242C2C
/* 163484 80242C24 00431825 */   or    $v1, $v0, $v1

.L80242C28:
/* 163488 80242C28 3C03E400 */  lui   $v1, 0xe400
.L80242C2C:
/* 16348C 80242C2C 00071400 */  sll   $v0, $a3, 0x10
/* 163490 80242C30 00021403 */  sra   $v0, $v0, 0x10
/* 163494 80242C34 18400004 */  blez  $v0, .L80242C48
/* 163498 80242C38 AD030000 */   sw    $v1, ($t0)
/* 16349C 80242C3C 30420FFF */  andi  $v0, $v0, 0xfff
/* 1634A0 80242C40 00621025 */  or    $v0, $v1, $v0
/* 1634A4 80242C44 AD020000 */  sw    $v0, ($t0)
.L80242C48:
/* 1634A8 80242C48 8FA20010 */  lw    $v0, 0x10($sp)
/* 1634AC 80242C4C 30420007 */  andi  $v0, $v0, 7
/* 1634B0 80242C50 00021E00 */  sll   $v1, $v0, 0x18
/* 1634B4 80242C54 00041400 */  sll   $v0, $a0, 0x10
/* 1634B8 80242C58 00023403 */  sra   $a2, $v0, 0x10
/* 1634BC 80242C5C 18C00003 */  blez  $a2, .L80242C6C
/* 1634C0 80242C60 30C20FFF */   andi  $v0, $a2, 0xfff
/* 1634C4 80242C64 00021300 */  sll   $v0, $v0, 0xc
/* 1634C8 80242C68 00621825 */  or    $v1, $v1, $v0
.L80242C6C:
/* 1634CC 80242C6C 00051400 */  sll   $v0, $a1, 0x10
/* 1634D0 80242C70 00021403 */  sra   $v0, $v0, 0x10
/* 1634D4 80242C74 18400004 */  blez  $v0, .L80242C88
/* 1634D8 80242C78 AD030004 */   sw    $v1, 4($t0)
/* 1634DC 80242C7C 30420FFF */  andi  $v0, $v0, 0xfff
/* 1634E0 80242C80 00621025 */  or    $v0, $v1, $v0
/* 1634E4 80242C84 AD020004 */  sw    $v0, 4($t0)
.L80242C88:
/* 1634E8 80242C88 3C03800A */  lui   $v1, 0x800a
/* 1634EC 80242C8C 2463A66C */  addiu $v1, $v1, -0x5994
/* 1634F0 80242C90 8C620000 */  lw    $v0, ($v1)
/* 1634F4 80242C94 0040202D */  daddu $a0, $v0, $zero
/* 1634F8 80242C98 24420008 */  addiu $v0, $v0, 8
/* 1634FC 80242C9C AC620000 */  sw    $v0, ($v1)
/* 163500 80242CA0 3C02E100 */  lui   $v0, 0xe100
/* 163504 80242CA4 AC820000 */  sw    $v0, ($a0)
/* 163508 80242CA8 04C10012 */  bgez  $a2, .L80242CF4
/* 16350C 80242CAC 24840004 */   addiu $a0, $a0, 4
/* 163510 80242CB0 000B1400 */  sll   $v0, $t3, 0x10
/* 163514 80242CB4 00021403 */  sra   $v0, $v0, 0x10
/* 163518 80242CB8 04410007 */  bgez  $v0, .L80242CD8
/* 16351C 80242CBC 00C20018 */   mult  $a2, $v0
/* 163520 80242CC0 00006812 */  mflo  $t5
/* 163524 80242CC4 000D11C3 */  sra   $v0, $t5, 7
/* 163528 80242CC8 04410008 */  bgez  $v0, .L80242CEC
/* 16352C 80242CCC 01221023 */   subu  $v0, $t1, $v0
/* 163530 80242CD0 08090B3A */  j     .L80242CE8
/* 163534 80242CD4 0000102D */   daddu $v0, $zero, $zero

.L80242CD8:
/* 163538 80242CD8 00006812 */  mflo  $t5
/* 16353C 80242CDC 000D11C3 */  sra   $v0, $t5, 7
/* 163540 80242CE0 5C400001 */  bgtzl $v0, .L80242CE8
/* 163544 80242CE4 0000102D */   daddu $v0, $zero, $zero
.L80242CE8:
/* 163548 80242CE8 01221023 */  subu  $v0, $t1, $v0
.L80242CEC:
/* 16354C 80242CEC 08090B3E */  j     .L80242CF8
/* 163550 80242CF0 00023400 */   sll   $a2, $v0, 0x10

.L80242CF4:
/* 163554 80242CF4 00093400 */  sll   $a2, $t1, 0x10
.L80242CF8:
/* 163558 80242CF8 04A10016 */  bgez  $a1, .L80242D54
/* 16355C 80242CFC 3142FFFF */   andi  $v0, $t2, 0xffff
/* 163560 80242D00 000C1400 */  sll   $v0, $t4, 0x10
/* 163564 80242D04 00021C03 */  sra   $v1, $v0, 0x10
/* 163568 80242D08 0461000A */  bgez  $v1, .L80242D34
/* 16356C 80242D0C 00051400 */   sll   $v0, $a1, 0x10
/* 163570 80242D10 00021403 */  sra   $v0, $v0, 0x10
/* 163574 80242D14 00430018 */  mult  $v0, $v1
/* 163578 80242D18 00006812 */  mflo  $t5
/* 16357C 80242D1C 000D11C3 */  sra   $v0, $t5, 7
/* 163580 80242D20 04420001 */  bltzl $v0, .L80242D28
/* 163584 80242D24 0000102D */   daddu $v0, $zero, $zero
.L80242D28:
/* 163588 80242D28 01421023 */  subu  $v0, $t2, $v0
/* 16358C 80242D2C 08090B55 */  j     .L80242D54
/* 163590 80242D30 3042FFFF */   andi  $v0, $v0, 0xffff

.L80242D34:
/* 163594 80242D34 00021403 */  sra   $v0, $v0, 0x10
/* 163598 80242D38 00430018 */  mult  $v0, $v1
/* 16359C 80242D3C 00006812 */  mflo  $t5
/* 1635A0 80242D40 000D11C3 */  sra   $v0, $t5, 7
/* 1635A4 80242D44 5C400001 */  bgtzl $v0, .L80242D4C
/* 1635A8 80242D48 0000102D */   daddu $v0, $zero, $zero
.L80242D4C:
/* 1635AC 80242D4C 01421023 */  subu  $v0, $t2, $v0
/* 1635B0 80242D50 3042FFFF */  andi  $v0, $v0, 0xffff
.L80242D54:
/* 1635B4 80242D54 00C21025 */  or    $v0, $a2, $v0
/* 1635B8 80242D58 AC820000 */  sw    $v0, ($a0)
/* 1635BC 80242D5C 3C03800A */  lui   $v1, 0x800a
/* 1635C0 80242D60 2463A66C */  addiu $v1, $v1, -0x5994
/* 1635C4 80242D64 8C620000 */  lw    $v0, ($v1)
/* 1635C8 80242D68 0040202D */  daddu $a0, $v0, $zero
/* 1635CC 80242D6C 24420008 */  addiu $v0, $v0, 8
/* 1635D0 80242D70 AC620000 */  sw    $v0, ($v1)
/* 1635D4 80242D74 3C02F100 */  lui   $v0, 0xf100
/* 1635D8 80242D78 AC820000 */  sw    $v0, ($a0)
/* 1635DC 80242D7C 000B1400 */  sll   $v0, $t3, 0x10
/* 1635E0 80242D80 3183FFFF */  andi  $v1, $t4, 0xffff
/* 1635E4 80242D84 00431025 */  or    $v0, $v0, $v1
/* 1635E8 80242D88 AC820004 */  sw    $v0, 4($a0)
.L80242D8C:
/* 1635EC 80242D8C 03E00008 */  jr    $ra
/* 1635F0 80242D90 00000000 */   nop   

