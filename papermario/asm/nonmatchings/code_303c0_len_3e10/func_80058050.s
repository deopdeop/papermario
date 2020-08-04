.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80058050
/* 033450 80058050 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 033454 80058054 AFB60050 */  sw    $s6, 0x50($sp)
/* 033458 80058058 00A0B02D */  daddu $s6, $a1, $zero
/* 03345C 8005805C AFB1003C */  sw    $s1, 0x3c($sp)
/* 033460 80058060 02C0882D */  daddu $s1, $s6, $zero
/* 033464 80058064 AFB70054 */  sw    $s7, 0x54($sp)
/* 033468 80058068 AFA40060 */  sw    $a0, 0x60($sp)
/* 03346C 8005806C 24970048 */  addiu $s7, $a0, 0x48
/* 033470 80058070 24880038 */  addiu $t0, $a0, 0x38
/* 033474 80058074 AFB20040 */  sw    $s2, 0x40($sp)
/* 033478 80058078 AFBF005C */  sw    $ra, 0x5c($sp)
/* 03347C 8005807C AFBE0058 */  sw    $fp, 0x58($sp)
/* 033480 80058080 AFB5004C */  sw    $s5, 0x4c($sp)
/* 033484 80058084 AFB40048 */  sw    $s4, 0x48($sp)
/* 033488 80058088 AFB30044 */  sw    $s3, 0x44($sp)
/* 03348C 8005808C AFB00038 */  sw    $s0, 0x38($sp)
/* 033490 80058090 AFA80020 */  sw    $t0, 0x20($sp)
/* 033494 80058094 8C830070 */  lw    $v1, 0x70($a0)
/* 033498 80058098 24020001 */  addiu $v0, $zero, 1
/* 03349C 8005809C 14620293 */  bne   $v1, $v0, .L80058AEC
/* 0334A0 800580A0 24920004 */   addiu $s2, $a0, 4
/* 0334A4 800580A4 8FA80060 */  lw    $t0, 0x60($sp)
/* 0334A8 800580A8 C500003C */  lwc1  $f0, 0x3c($t0)
/* 0334AC 800580AC 3C01800A */  lui   $at, 0x800a
/* 0334B0 800580B0 D4228930 */  ldc1  $f2, -0x76d0($at)
/* 0334B4 800580B4 46000021 */  cvt.d.s $f0, $f0
/* 0334B8 800580B8 4620103C */  c.lt.d $f2, $f0
/* 0334BC 800580BC 00000000 */  nop   
/* 0334C0 800580C0 45000007 */  bc1f  .L800580E0
/* 0334C4 800580C4 241E0170 */   addiu $fp, $zero, 0x170
/* 0334C8 800580C8 3C013FFF */  lui   $at, 0x3fff
/* 0334CC 800580CC 3421FEB0 */  ori   $at, $at, 0xfeb0
/* 0334D0 800580D0 44810000 */  mtc1  $at, $f0
/* 0334D4 800580D4 00000000 */  nop   
/* 0334D8 800580D8 E500003C */  swc1  $f0, 0x3c($t0)
/* 0334DC 800580DC 8FA80060 */  lw    $t0, 0x60($sp)
.L800580E0:
/* 0334E0 800580E0 3C014700 */  lui   $at, 0x4700
/* 0334E4 800580E4 44811000 */  mtc1  $at, $f2
/* 0334E8 800580E8 C500003C */  lwc1  $f0, 0x3c($t0)
/* 0334EC 800580EC 46020002 */  mul.s $f0, $f0, $f2
/* 0334F0 800580F0 00000000 */  nop   
/* 0334F4 800580F4 4600018D */  trunc.w.s $f6, $f0
/* 0334F8 800580F8 44023000 */  mfc1  $v0, $f6
/* 0334FC 800580FC 3C013800 */  lui   $at, 0x3800
/* 033500 80058100 44810000 */  mtc1  $at, $f0
/* 033504 80058104 44822000 */  mtc1  $v0, $f4
/* 033508 80058108 00000000 */  nop   
/* 03350C 8005810C 46802120 */  cvt.s.w $f4, $f4
/* 033510 80058110 46002102 */  mul.s $f4, $f4, $f0
/* 033514 80058114 00000000 */  nop   
/* 033518 80058118 3C014338 */  lui   $at, 0x4338
/* 03351C 8005811C 44810000 */  mtc1  $at, $f0
/* 033520 80058120 00000000 */  nop   
/* 033524 80058124 46002002 */  mul.s $f0, $f4, $f0
/* 033528 80058128 00000000 */  nop   
/* 03352C 8005812C 8FA80060 */  lw    $t0, 0x60($sp)
/* 033530 80058130 C5020040 */  lwc1  $f2, 0x40($t0)
/* 033534 80058134 46001080 */  add.s $f2, $f2, $f0
/* 033538 80058138 4600118D */  trunc.w.s $f6, $f2
/* 03353C 8005813C 44143000 */  mfc1  $s4, $f6
/* 033540 80058140 00000000 */  nop   
/* 033544 80058144 44940000 */  mtc1  $s4, $f0
/* 033548 80058148 00000000 */  nop   
/* 03354C 8005814C 46800020 */  cvt.s.w $f0, $f0
/* 033550 80058150 46001081 */  sub.s $f2, $f2, $f0
/* 033554 80058154 8FA80060 */  lw    $t0, 0x60($sp)
/* 033558 80058158 E504003C */  swc1  $f4, 0x3c($t0)
/* 03355C 8005815C 128001BA */  beqz  $s4, .L80058848
/* 033560 80058160 E5020040 */   swc1  $f2, 0x40($t0)
/* 033564 80058164 8E470014 */  lw    $a3, 0x14($s2)
/* 033568 80058168 90E20024 */  lbu   $v0, 0x24($a3)
/* 03356C 8005816C 144000F2 */  bnez  $v0, .L80058538
/* 033570 80058170 3C0300FF */   lui   $v1, 0xff
/* 033574 80058174 3463FFFF */  ori   $v1, $v1, 0xffff
/* 033578 80058178 AFA00024 */  sw    $zero, 0x24($sp)
/* 03357C 8005817C 8D02001C */  lw    $v0, 0x1c($t0)
/* 033580 80058180 3C041FFF */  lui   $a0, 0x1fff
/* 033584 80058184 00431024 */  and   $v0, $v0, $v1
/* 033588 80058188 3C030B00 */  lui   $v1, 0xb00
/* 03358C 8005818C 00431025 */  or    $v0, $v0, $v1
/* 033590 80058190 AE220000 */  sw    $v0, ($s1)
/* 033594 80058194 8E420014 */  lw    $v0, 0x14($s2)
/* 033598 80058198 3484FFFF */  ori   $a0, $a0, 0xffff
/* 03359C 8005819C 8C420018 */  lw    $v0, 0x18($v0)
/* 0335A0 800581A0 8FA50024 */  lw    $a1, 0x24($sp)
/* 0335A4 800581A4 00441024 */  and   $v0, $v0, $a0
/* 0335A8 800581A8 AE220004 */  sw    $v0, 4($s1)
/* 0335AC 800581AC 8D040028 */  lw    $a0, 0x28($t0)
/* 0335B0 800581B0 8D030010 */  lw    $v1, 0x10($t0)
/* 0335B4 800581B4 02841021 */  addu  $v0, $s4, $a0
/* 0335B8 800581B8 0062102B */  sltu  $v0, $v1, $v0
/* 0335BC 800581BC 10400003 */  beqz  $v0, .L800581CC
/* 0335C0 800581C0 26D60008 */   addiu $s6, $s6, 8
/* 0335C4 800581C4 8D020014 */  lw    $v0, 0x14($t0)
/* 0335C8 800581C8 0002282B */  sltu  $a1, $zero, $v0
.L800581CC:
/* 0335CC 800581CC 10A00002 */  beqz  $a1, .L800581D8
/* 0335D0 800581D0 0280802D */   daddu $s0, $s4, $zero
/* 0335D4 800581D4 00648023 */  subu  $s0, $v1, $a0
.L800581D8:
/* 0335D8 800581D8 8E430028 */  lw    $v1, 0x28($s2)
/* 0335DC 800581DC 10600003 */  beqz  $v1, .L800581EC
/* 0335E0 800581E0 24020010 */   addiu $v0, $zero, 0x10
/* 0335E4 800581E4 0801607C */  j     .L800581F0
/* 0335E8 800581E8 0043A823 */   subu  $s5, $v0, $v1

.L800581EC:
/* 0335EC 800581EC 0000A82D */  daddu $s5, $zero, $zero
.L800581F0:
/* 0335F0 800581F0 02153023 */  subu  $a2, $s0, $s5
/* 0335F4 800581F4 04C20001 */  bltzl $a2, .L800581FC
/* 0335F8 800581F8 0000302D */   daddu $a2, $zero, $zero
.L800581FC:
/* 0335FC 800581FC 24C2000F */  addiu $v0, $a2, 0xf
/* 033600 80058200 00028903 */  sra   $s1, $v0, 4
/* 033604 80058204 001110C0 */  sll   $v0, $s1, 3
/* 033608 80058208 10A00072 */  beqz  $a1, .L800583D4
/* 03360C 8005820C 00513821 */   addu  $a3, $v0, $s1
/* 033610 80058210 02C0202D */  daddu $a0, $s6, $zero
/* 033614 80058214 001E1400 */  sll   $v0, $fp, 0x10
/* 033618 80058218 00021403 */  sra   $v0, $v0, 0x10
/* 03361C 8005821C AFA20010 */  sw    $v0, 0x10($sp)
/* 033620 80058220 AFA00014 */  sw    $zero, 0x14($sp)
/* 033624 80058224 8E42002C */  lw    $v0, 0x2c($s2)
/* 033628 80058228 0240282D */  daddu $a1, $s2, $zero
/* 03362C 8005822C 0C0162C8 */  jal   func_80058B20
/* 033630 80058230 AFA20018 */   sw    $v0, 0x18($sp)
/* 033634 80058234 8E430028 */  lw    $v1, 0x28($s2)
/* 033638 80058238 10600005 */  beqz  $v1, .L80058250
/* 03363C 8005823C 0040B02D */   daddu $s6, $v0, $zero
/* 033640 80058240 9642002A */  lhu   $v0, 0x2a($s2)
/* 033644 80058244 00021040 */  sll   $v0, $v0, 1
/* 033648 80058248 08016095 */  j     .L80058254
/* 03364C 8005824C 03C2F021 */   addu  $fp, $fp, $v0

.L80058250:
/* 033650 80058250 27DE0020 */  addiu $fp, $fp, 0x20
.L80058254:
/* 033654 80058254 001E2C00 */  sll   $a1, $fp, 0x10
/* 033658 80058258 8E420008 */  lw    $v0, 8($s2)
/* 03365C 8005825C 00059C03 */  sra   $s3, $a1, 0x10
/* 033660 80058260 3042000F */  andi  $v0, $v0, 0xf
/* 033664 80058264 AE420028 */  sw    $v0, 0x28($s2)
/* 033668 80058268 8E420014 */  lw    $v0, 0x14($s2)
/* 03366C 8005826C 8E430008 */  lw    $v1, 8($s2)
/* 033670 80058270 8C440000 */  lw    $a0, ($v0)
/* 033674 80058274 0060102D */  daddu $v0, $v1, $zero
/* 033678 80058278 00031902 */  srl   $v1, $v1, 4
/* 03367C 8005827C 24630001 */  addiu $v1, $v1, 1
/* 033680 80058280 AE420024 */  sw    $v0, 0x24($s2)
/* 033684 80058284 000310C0 */  sll   $v0, $v1, 3
/* 033688 80058288 00431021 */  addu  $v0, $v0, $v1
/* 03368C 8005828C 00822021 */  addu  $a0, $a0, $v0
/* 033690 80058290 0214102A */  slt   $v0, $s0, $s4
/* 033694 80058294 10400042 */  beqz  $v0, .L800583A0
/* 033698 80058298 AE440030 */   sw    $a0, 0x30($s2)
/* 03369C 8005829C 0000402D */  daddu $t0, $zero, $zero
/* 0336A0 800582A0 00081400 */  sll   $v0, $t0, 0x10
/* 0336A4 800582A4 00021403 */  sra   $v0, $v0, 0x10
/* 0336A8 800582A8 AFA2002C */  sw    $v0, 0x2c($sp)
.L800582AC:
/* 0336AC 800582AC 26220001 */  addiu $v0, $s1, 1
/* 0336B0 800582B0 00021140 */  sll   $v0, $v0, 5
/* 0336B4 800582B4 02621021 */  addu  $v0, $s3, $v0
/* 0336B8 800582B8 00101840 */  sll   $v1, $s0, 1
/* 0336BC 800582BC 02639821 */  addu  $s3, $s3, $v1
/* 0336C0 800582C0 24420010 */  addiu $v0, $v0, 0x10
/* 0336C4 800582C4 2403FFE0 */  addiu $v1, $zero, -0x20
/* 0336C8 800582C8 0043A824 */  and   $s5, $v0, $v1
/* 0336CC 800582CC 8E430010 */  lw    $v1, 0x10($s2)
/* 0336D0 800582D0 2402FFFF */  addiu $v0, $zero, -1
/* 0336D4 800582D4 10620004 */  beq   $v1, $v0, .L800582E8
/* 0336D8 800582D8 0290A023 */   subu  $s4, $s4, $s0
/* 0336DC 800582DC 10600002 */  beqz  $v1, .L800582E8
/* 0336E0 800582E0 00621021 */   addu  $v0, $v1, $v0
/* 0336E4 800582E4 AE420010 */  sw    $v0, 0x10($s2)
.L800582E8:
/* 0336E8 800582E8 8E43000C */  lw    $v1, 0xc($s2)
/* 0336EC 800582EC 8E420008 */  lw    $v0, 8($s2)
/* 0336F0 800582F0 00621823 */  subu  $v1, $v1, $v0
/* 0336F4 800582F4 0283102B */  sltu  $v0, $s4, $v1
/* 0336F8 800582F8 14400002 */  bnez  $v0, .L80058304
/* 0336FC 800582FC 0280802D */   daddu $s0, $s4, $zero
/* 033700 80058300 0060802D */  daddu $s0, $v1, $zero
.L80058304:
/* 033704 80058304 8E420028 */  lw    $v0, 0x28($s2)
/* 033708 80058308 2442FFF0 */  addiu $v0, $v0, -0x10
/* 03370C 8005830C 02023021 */  addu  $a2, $s0, $v0
/* 033710 80058310 04C20001 */  bltzl $a2, .L80058318
/* 033714 80058314 0000302D */   daddu $a2, $zero, $zero
.L80058318:
/* 033718 80058318 24C2000F */  addiu $v0, $a2, 0xf
/* 03371C 8005831C 00028903 */  sra   $s1, $v0, 4
/* 033720 80058320 02C0202D */  daddu $a0, $s6, $zero
/* 033724 80058324 0240282D */  daddu $a1, $s2, $zero
/* 033728 80058328 00151400 */  sll   $v0, $s5, 0x10
/* 03372C 8005832C 00021403 */  sra   $v0, $v0, 0x10
/* 033730 80058330 8FA8002C */  lw    $t0, 0x2c($sp)
/* 033734 80058334 001138C0 */  sll   $a3, $s1, 3
/* 033738 80058338 AFA20010 */  sw    $v0, 0x10($sp)
/* 03373C 8005833C AFA80014 */  sw    $t0, 0x14($sp)
/* 033740 80058340 8E42002C */  lw    $v0, 0x2c($s2)
/* 033744 80058344 00F13821 */  addu  $a3, $a3, $s1
/* 033748 80058348 34420002 */  ori   $v0, $v0, 2
/* 03374C 8005834C 0C0162C8 */  jal   func_80058B20
/* 033750 80058350 AFA20018 */   sw    $v0, 0x18($sp)
/* 033754 80058354 0040B02D */  daddu $s6, $v0, $zero
/* 033758 80058358 02C0282D */  daddu $a1, $s6, $zero
/* 03375C 8005835C 3C0600FF */  lui   $a2, 0xff
/* 033760 80058360 34C6FFFF */  ori   $a2, $a2, 0xffff
/* 033764 80058364 00132400 */  sll   $a0, $s3, 0x10
/* 033768 80058368 00101840 */  sll   $v1, $s0, 1
/* 03376C 8005836C 3063FFFF */  andi  $v1, $v1, 0xffff
/* 033770 80058370 00832025 */  or    $a0, $a0, $v1
/* 033774 80058374 8E420028 */  lw    $v0, 0x28($s2)
/* 033778 80058378 3C030A00 */  lui   $v1, 0xa00
/* 03377C 8005837C ACA40004 */  sw    $a0, 4($a1)
/* 033780 80058380 00021040 */  sll   $v0, $v0, 1
/* 033784 80058384 02A21021 */  addu  $v0, $s5, $v0
/* 033788 80058388 00461024 */  and   $v0, $v0, $a2
/* 03378C 8005838C 00431025 */  or    $v0, $v0, $v1
/* 033790 80058390 ACA20000 */  sw    $v0, ($a1)
/* 033794 80058394 0214102A */  slt   $v0, $s0, $s4
/* 033798 80058398 1440FFC4 */  bnez  $v0, .L800582AC
/* 03379C 8005839C 26D60008 */   addiu $s6, $s6, 8
.L800583A0:
/* 0337A0 800583A0 8E420028 */  lw    $v0, 0x28($s2)
/* 0337A4 800583A4 8E430024 */  lw    $v1, 0x24($s2)
/* 0337A8 800583A8 02821021 */  addu  $v0, $s4, $v0
/* 0337AC 800583AC 3042000F */  andi  $v0, $v0, 0xf
/* 0337B0 800583B0 00741821 */  addu  $v1, $v1, $s4
/* 0337B4 800583B4 AE420028 */  sw    $v0, 0x28($s2)
/* 0337B8 800583B8 001110C0 */  sll   $v0, $s1, 3
/* 0337BC 800583BC AE430024 */  sw    $v1, 0x24($s2)
/* 0337C0 800583C0 8E430030 */  lw    $v1, 0x30($s2)
/* 0337C4 800583C4 00511021 */  addu  $v0, $v0, $s1
/* 0337C8 800583C8 00621821 */  addu  $v1, $v1, $v0
/* 0337CC 800583CC 08016212 */  j     .L80058848
/* 0337D0 800583D0 AE430030 */   sw    $v1, 0x30($s2)

.L800583D4:
/* 0337D4 800583D4 8E440014 */  lw    $a0, 0x14($s2)
/* 0337D8 800583D8 8E430030 */  lw    $v1, 0x30($s2)
/* 0337DC 800583DC 8C820000 */  lw    $v0, ($a0)
/* 0337E0 800583E0 8C840004 */  lw    $a0, 4($a0)
/* 0337E4 800583E4 00671821 */  addu  $v1, $v1, $a3
/* 0337E8 800583E8 00441021 */  addu  $v0, $v0, $a0
/* 0337EC 800583EC 00622023 */  subu  $a0, $v1, $v0
/* 0337F0 800583F0 1C800003 */  bgtz  $a0, .L80058400
/* 0337F4 800583F4 00118100 */   sll   $s0, $s1, 4
/* 0337F8 800583F8 08016101 */  j     .L80058404
/* 0337FC 800583FC 0000202D */   daddu $a0, $zero, $zero

.L80058400:
/* 033800 80058400 AEE00028 */  sw    $zero, 0x28($s7)
.L80058404:
/* 033804 80058404 3C0238E3 */  lui   $v0, 0x38e3
/* 033808 80058408 34428E39 */  ori   $v0, $v0, 0x8e39
/* 03380C 8005840C 00820018 */  mult  $a0, $v0
/* 033810 80058410 00041FC3 */  sra   $v1, $a0, 0x1f
/* 033814 80058414 00004010 */  mfhi  $t0
/* 033818 80058418 00081043 */  sra   $v0, $t0, 1
/* 03381C 8005841C 00431023 */  subu  $v0, $v0, $v1
/* 033820 80058420 00029900 */  sll   $s3, $v0, 4
/* 033824 80058424 02151821 */  addu  $v1, $s0, $s5
/* 033828 80058428 0073102A */  slt   $v0, $v1, $s3
/* 03382C 8005842C 54400001 */  bnel  $v0, $zero, .L80058434
/* 033830 80058430 0060982D */   daddu $s3, $v1, $zero
.L80058434:
/* 033834 80058434 3262000F */  andi  $v0, $s3, 0xf
/* 033838 80058438 02621023 */  subu  $v0, $s3, $v0
/* 03383C 8005843C 0054102A */  slt   $v0, $v0, $s4
/* 033840 80058440 10400020 */  beqz  $v0, .L800584C4
/* 033844 80058444 00E43823 */   subu  $a3, $a3, $a0
/* 033848 80058448 24080001 */  addiu $t0, $zero, 1
/* 03384C 8005844C 02C0202D */  daddu $a0, $s6, $zero
/* 033850 80058450 0240282D */  daddu $a1, $s2, $zero
/* 033854 80058454 001E1400 */  sll   $v0, $fp, 0x10
/* 033858 80058458 00021403 */  sra   $v0, $v0, 0x10
/* 03385C 8005845C AFA80024 */  sw    $t0, 0x24($sp)
/* 033860 80058460 AFA20010 */  sw    $v0, 0x10($sp)
/* 033864 80058464 AFA00014 */  sw    $zero, 0x14($sp)
/* 033868 80058468 8E42002C */  lw    $v0, 0x2c($s2)
/* 03386C 8005846C 02133023 */  subu  $a2, $s0, $s3
/* 033870 80058470 0C0162C8 */  jal   func_80058B20
/* 033874 80058474 AFA20018 */   sw    $v0, 0x18($sp)
/* 033878 80058478 8E430028 */  lw    $v1, 0x28($s2)
/* 03387C 8005847C 10600005 */  beqz  $v1, .L80058494
/* 033880 80058480 0040B02D */   daddu $s6, $v0, $zero
/* 033884 80058484 9642002A */  lhu   $v0, 0x2a($s2)
/* 033888 80058488 00021040 */  sll   $v0, $v0, 1
/* 03388C 8005848C 08016126 */  j     .L80058498
/* 033890 80058490 03C2F021 */   addu  $fp, $fp, $v0

.L80058494:
/* 033894 80058494 27DE0020 */  addiu $fp, $fp, 0x20
.L80058498:
/* 033898 80058498 8E420028 */  lw    $v0, 0x28($s2)
/* 03389C 8005849C 8E430024 */  lw    $v1, 0x24($s2)
/* 0338A0 800584A0 02821021 */  addu  $v0, $s4, $v0
/* 0338A4 800584A4 3042000F */  andi  $v0, $v0, 0xf
/* 0338A8 800584A8 00741821 */  addu  $v1, $v1, $s4
/* 0338AC 800584AC AE420028 */  sw    $v0, 0x28($s2)
/* 0338B0 800584B0 001110C0 */  sll   $v0, $s1, 3
/* 0338B4 800584B4 AE430024 */  sw    $v1, 0x24($s2)
/* 0338B8 800584B8 8E430030 */  lw    $v1, 0x30($s2)
/* 0338BC 800584BC 08016135 */  j     .L800584D4
/* 0338C0 800584C0 00511021 */   addu  $v0, $v0, $s1

.L800584C4:
/* 0338C4 800584C4 001110C0 */  sll   $v0, $s1, 3
/* 0338C8 800584C8 8E430030 */  lw    $v1, 0x30($s2)
/* 0338CC 800584CC 00511021 */  addu  $v0, $v0, $s1
/* 0338D0 800584D0 AE400028 */  sw    $zero, 0x28($s2)
.L800584D4:
/* 0338D4 800584D4 00621821 */  addu  $v1, $v1, $v0
/* 0338D8 800584D8 126000DB */  beqz  $s3, .L80058848
/* 0338DC 800584DC AE430030 */   sw    $v1, 0x30($s2)
/* 0338E0 800584E0 AE400028 */  sw    $zero, 0x28($s2)
/* 0338E4 800584E4 8FA80024 */  lw    $t0, 0x24($sp)
/* 0338E8 800584E8 11000004 */  beqz  $t0, .L800584FC
/* 0338EC 800584EC 02B01021 */   addu  $v0, $s5, $s0
/* 0338F0 800584F0 00531023 */  subu  $v0, $v0, $s3
/* 0338F4 800584F4 08016140 */  j     .L80058500
/* 0338F8 800584F8 00022840 */   sll   $a1, $v0, 1

.L800584FC:
/* 0338FC 800584FC 0000282D */  daddu $a1, $zero, $zero
.L80058500:
/* 033900 80058500 02C0202D */  daddu $a0, $s6, $zero
/* 033904 80058504 26D60008 */  addiu $s6, $s6, 8
/* 033908 80058508 3C0300FF */  lui   $v1, 0xff
/* 03390C 8005850C 3463FFFF */  ori   $v1, $v1, 0xffff
/* 033910 80058510 001E1400 */  sll   $v0, $fp, 0x10
/* 033914 80058514 00021403 */  sra   $v0, $v0, 0x10
/* 033918 80058518 00A21021 */  addu  $v0, $a1, $v0
/* 03391C 8005851C 00431024 */  and   $v0, $v0, $v1
/* 033920 80058520 3C030200 */  lui   $v1, 0x200
/* 033924 80058524 00431025 */  or    $v0, $v0, $v1
/* 033928 80058528 AC820000 */  sw    $v0, ($a0)
/* 03392C 8005852C 00131040 */  sll   $v0, $s3, 1
/* 033930 80058530 08016212 */  j     .L80058848
/* 033934 80058534 AC820004 */   sw    $v0, 4($a0)

.L80058538:
/* 033938 80058538 8FA80060 */  lw    $t0, 0x60($sp)
/* 03393C 8005853C 8D040028 */  lw    $a0, 0x28($t0)
/* 033940 80058540 8D030010 */  lw    $v1, 0x10($t0)
/* 033944 80058544 02841021 */  addu  $v0, $s4, $a0
/* 033948 80058548 0062102B */  sltu  $v0, $v1, $v0
/* 03394C 8005854C 10400079 */  beqz  $v0, .L80058734
/* 033950 80058550 00148040 */   sll   $s0, $s4, 1
/* 033954 80058554 8D020014 */  lw    $v0, 0x14($t0)
/* 033958 80058558 10400076 */  beqz  $v0, .L80058734
/* 03395C 8005855C 00649823 */   subu  $s3, $v1, $a0
/* 033960 80058560 1A600017 */  blez  $s3, .L800585C0
/* 033964 80058564 00138040 */   sll   $s0, $s3, 1
/* 033968 80058568 0200282D */  daddu $a1, $s0, $zero
/* 03396C 8005856C 8D040034 */  lw    $a0, 0x34($t0)
/* 033970 80058570 8D060024 */  lw    $a2, 0x24($t0)
/* 033974 80058574 90E70025 */  lbu   $a3, 0x25($a3)
/* 033978 80058578 8D020020 */  lw    $v0, 0x20($t0)
/* 03397C 8005857C 0040F809 */  jalr  $v0
/* 033980 80058580 26D60008 */  addiu $s6, $s6, 8
/* 033984 80058584 0040382D */  daddu $a3, $v0, $zero
/* 033988 80058588 30E60007 */  andi  $a2, $a3, 7
/* 03398C 8005858C 02068021 */  addu  $s0, $s0, $a2
/* 033990 80058590 3C030400 */  lui   $v1, 0x400
/* 033994 80058594 34630170 */  ori   $v1, $v1, 0x170
/* 033998 80058598 32020007 */  andi  $v0, $s0, 7
/* 03399C 8005859C 2442FFF8 */  addiu $v0, $v0, -8
/* 0339A0 800585A0 02021023 */  subu  $v0, $s0, $v0
/* 0339A4 800585A4 30420FFF */  andi  $v0, $v0, 0xfff
/* 0339A8 800585A8 00021300 */  sll   $v0, $v0, 0xc
/* 0339AC 800585AC 00431025 */  or    $v0, $v0, $v1
/* 0339B0 800585B0 AE220000 */  sw    $v0, ($s1)
/* 0339B4 800585B4 00E61023 */  subu  $v0, $a3, $a2
/* 0339B8 800585B8 08016171 */  j     .L800585C4
/* 0339BC 800585BC AE220004 */   sw    $v0, 4($s1)

.L800585C0:
/* 0339C0 800585C0 0000302D */  daddu $a2, $zero, $zero
.L800585C4:
/* 0339C4 800585C4 03C61021 */  addu  $v0, $fp, $a2
/* 0339C8 800585C8 0040F02D */  daddu $fp, $v0, $zero
/* 0339CC 800585CC 00021400 */  sll   $v0, $v0, 0x10
/* 0339D0 800585D0 0002AC03 */  sra   $s5, $v0, 0x10
/* 0339D4 800585D4 0274102A */  slt   $v0, $s3, $s4
/* 0339D8 800585D8 8E430008 */  lw    $v1, 8($s2)
/* 0339DC 800585DC 8E440014 */  lw    $a0, 0x14($s2)
/* 0339E0 800585E0 0060282D */  daddu $a1, $v1, $zero
/* 0339E4 800585E4 8C840000 */  lw    $a0, ($a0)
/* 0339E8 800585E8 00031840 */  sll   $v1, $v1, 1
/* 0339EC 800585EC AE450024 */  sw    $a1, 0x24($s2)
/* 0339F0 800585F0 00832021 */  addu  $a0, $a0, $v1
/* 0339F4 800585F4 10400047 */  beqz  $v0, .L80058714
/* 0339F8 800585F8 AE440030 */   sw    $a0, 0x30($s2)
/* 0339FC 800585FC 26D1FFFC */  addiu $s1, $s6, -4
/* 033A00 80058600 00131040 */  sll   $v0, $s3, 1
.L80058604:
/* 033A04 80058604 02A2A821 */  addu  $s5, $s5, $v0
/* 033A08 80058608 8E430010 */  lw    $v1, 0x10($s2)
/* 033A0C 8005860C 2402FFFF */  addiu $v0, $zero, -1
/* 033A10 80058610 10620004 */  beq   $v1, $v0, .L80058624
/* 033A14 80058614 0293A023 */   subu  $s4, $s4, $s3
/* 033A18 80058618 10600002 */  beqz  $v1, .L80058624
/* 033A1C 8005861C 00621021 */   addu  $v0, $v1, $v0
/* 033A20 80058620 AE420010 */  sw    $v0, 0x10($s2)
.L80058624:
/* 033A24 80058624 8E43000C */  lw    $v1, 0xc($s2)
/* 033A28 80058628 8E420008 */  lw    $v0, 8($s2)
/* 033A2C 8005862C 00621823 */  subu  $v1, $v1, $v0
/* 033A30 80058630 0283102B */  sltu  $v0, $s4, $v1
/* 033A34 80058634 14400002 */  bnez  $v0, .L80058640
/* 033A38 80058638 0280982D */   daddu $s3, $s4, $zero
/* 033A3C 8005863C 0060982D */  daddu $s3, $v1, $zero
.L80058640:
/* 033A40 80058640 00138040 */  sll   $s0, $s3, 1
/* 033A44 80058644 8E440030 */  lw    $a0, 0x30($s2)
/* 033A48 80058648 8E420014 */  lw    $v0, 0x14($s2)
/* 033A4C 8005864C 8E460020 */  lw    $a2, 0x20($s2)
/* 033A50 80058650 90470025 */  lbu   $a3, 0x25($v0)
/* 033A54 80058654 8E42001C */  lw    $v0, 0x1c($s2)
/* 033A58 80058658 0040F809 */  jalr  $v0
/* 033A5C 8005865C 0200282D */  daddu $a1, $s0, $zero
/* 033A60 80058660 0040382D */  daddu $a3, $v0, $zero
/* 033A64 80058664 30E60007 */  andi  $a2, $a3, 7
/* 033A68 80058668 32A30007 */  andi  $v1, $s5, 7
/* 033A6C 8005866C 10600004 */  beqz  $v1, .L80058680
/* 033A70 80058670 02068021 */   addu  $s0, $s0, $a2
/* 033A74 80058674 24020008 */  addiu $v0, $zero, 8
/* 033A78 80058678 080161A1 */  j     .L80058684
/* 033A7C 8005867C 00432823 */   subu  $a1, $v0, $v1

.L80058680:
/* 033A80 80058680 0000282D */  daddu $a1, $zero, $zero
.L80058684:
/* 033A84 80058684 26310008 */  addiu $s1, $s1, 8
/* 033A88 80058688 26D60008 */  addiu $s6, $s6, 8
/* 033A8C 8005868C 32020007 */  andi  $v0, $s0, 7
/* 033A90 80058690 2442FFF8 */  addiu $v0, $v0, -8
/* 033A94 80058694 02021023 */  subu  $v0, $s0, $v0
/* 033A98 80058698 30420FFF */  andi  $v0, $v0, 0xfff
/* 033A9C 8005869C 00021300 */  sll   $v0, $v0, 0xc
/* 033AA0 800586A0 02A51821 */  addu  $v1, $s5, $a1
/* 033AA4 800586A4 30630FFF */  andi  $v1, $v1, 0xfff
/* 033AA8 800586A8 3C040400 */  lui   $a0, 0x400
/* 033AAC 800586AC 00641825 */  or    $v1, $v1, $a0
/* 033AB0 800586B0 00431025 */  or    $v0, $v0, $v1
/* 033AB4 800586B4 AE22FFFC */  sw    $v0, -4($s1)
/* 033AB8 800586B8 00E61023 */  subu  $v0, $a3, $a2
/* 033ABC 800586BC 14C00003 */  bnez  $a2, .L800586CC
/* 033AC0 800586C0 AE220000 */   sw    $v0, ($s1)
/* 033AC4 800586C4 10A00011 */  beqz  $a1, .L8005870C
/* 033AC8 800586C8 0274102A */   slt   $v0, $s3, $s4
.L800586CC:
/* 033ACC 800586CC 26310008 */  addiu $s1, $s1, 8
/* 033AD0 800586D0 26D60008 */  addiu $s6, $s6, 8
/* 033AD4 800586D4 3C0300FF */  lui   $v1, 0xff
/* 033AD8 800586D8 3463FFFF */  ori   $v1, $v1, 0xffff
/* 033ADC 800586DC 02A61021 */  addu  $v0, $s5, $a2
/* 033AE0 800586E0 00451021 */  addu  $v0, $v0, $a1
/* 033AE4 800586E4 00431024 */  and   $v0, $v0, $v1
/* 033AE8 800586E8 3C030A00 */  lui   $v1, 0xa00
/* 033AEC 800586EC 00431025 */  or    $v0, $v0, $v1
/* 033AF0 800586F0 00151C00 */  sll   $v1, $s5, 0x10
/* 033AF4 800586F4 AE22FFFC */  sw    $v0, -4($s1)
/* 033AF8 800586F8 00131040 */  sll   $v0, $s3, 1
/* 033AFC 800586FC 3042FFFF */  andi  $v0, $v0, 0xffff
/* 033B00 80058700 00621825 */  or    $v1, $v1, $v0
/* 033B04 80058704 AE230000 */  sw    $v1, ($s1)
/* 033B08 80058708 0274102A */  slt   $v0, $s3, $s4
.L8005870C:
/* 033B0C 8005870C 1440FFBD */  bnez  $v0, .L80058604
/* 033B10 80058710 00131040 */   sll   $v0, $s3, 1
.L80058714:
/* 033B14 80058714 8E420024 */  lw    $v0, 0x24($s2)
/* 033B18 80058718 00541021 */  addu  $v0, $v0, $s4
/* 033B1C 8005871C AE420024 */  sw    $v0, 0x24($s2)
/* 033B20 80058720 8E420030 */  lw    $v0, 0x30($s2)
/* 033B24 80058724 00141840 */  sll   $v1, $s4, 1
/* 033B28 80058728 00431021 */  addu  $v0, $v0, $v1
/* 033B2C 8005872C 08016212 */  j     .L80058848
/* 033B30 80058730 AE420030 */   sw    $v0, 0x30($s2)

.L80058734:
/* 033B34 80058734 8E440014 */  lw    $a0, 0x14($s2)
/* 033B38 80058738 8E430030 */  lw    $v1, 0x30($s2)
/* 033B3C 8005873C 8C820000 */  lw    $v0, ($a0)
/* 033B40 80058740 8C840004 */  lw    $a0, 4($a0)
/* 033B44 80058744 00701821 */  addu  $v1, $v1, $s0
/* 033B48 80058748 00441021 */  addu  $v0, $v0, $a0
/* 033B4C 8005874C 00628823 */  subu  $s1, $v1, $v0
/* 033B50 80058750 5E200002 */  bgtzl $s1, .L8005875C
/* 033B54 80058754 AEE00028 */   sw    $zero, 0x28($s7)
/* 033B58 80058758 0000882D */  daddu $s1, $zero, $zero
.L8005875C:
/* 033B5C 8005875C 0211102A */  slt   $v0, $s0, $s1
/* 033B60 80058760 54400001 */  bnel  $v0, $zero, .L80058768
/* 033B64 80058764 0200882D */   daddu $s1, $s0, $zero
.L80058768:
/* 033B68 80058768 0230102A */  slt   $v0, $s1, $s0
/* 033B6C 8005876C 10400021 */  beqz  $v0, .L800587F4
/* 033B70 80058770 00000000 */   nop   
/* 033B74 80058774 1A80001A */  blez  $s4, .L800587E0
/* 033B78 80058778 02118023 */   subu  $s0, $s0, $s1
/* 033B7C 8005877C 8E440030 */  lw    $a0, 0x30($s2)
/* 033B80 80058780 8E420014 */  lw    $v0, 0x14($s2)
/* 033B84 80058784 8E460020 */  lw    $a2, 0x20($s2)
/* 033B88 80058788 90470025 */  lbu   $a3, 0x25($v0)
/* 033B8C 8005878C 8E42001C */  lw    $v0, 0x1c($s2)
/* 033B90 80058790 0040F809 */  jalr  $v0
/* 033B94 80058794 0200282D */  daddu $a1, $s0, $zero
/* 033B98 80058798 0040382D */  daddu $a3, $v0, $zero
/* 033B9C 8005879C 30E60007 */  andi  $a2, $a3, 7
/* 033BA0 800587A0 02068021 */  addu  $s0, $s0, $a2
/* 033BA4 800587A4 02C0282D */  daddu $a1, $s6, $zero
/* 033BA8 800587A8 26D60008 */  addiu $s6, $s6, 8
/* 033BAC 800587AC 32020007 */  andi  $v0, $s0, 7
/* 033BB0 800587B0 2442FFF8 */  addiu $v0, $v0, -8
/* 033BB4 800587B4 02021023 */  subu  $v0, $s0, $v0
/* 033BB8 800587B8 30420FFF */  andi  $v0, $v0, 0xfff
/* 033BBC 800587BC 00021300 */  sll   $v0, $v0, 0xc
/* 033BC0 800587C0 33C30FFF */  andi  $v1, $fp, 0xfff
/* 033BC4 800587C4 3C040400 */  lui   $a0, 0x400
/* 033BC8 800587C8 00641825 */  or    $v1, $v1, $a0
/* 033BCC 800587CC 00431025 */  or    $v0, $v0, $v1
/* 033BD0 800587D0 ACA20000 */  sw    $v0, ($a1)
/* 033BD4 800587D4 00E61023 */  subu  $v0, $a3, $a2
/* 033BD8 800587D8 080161F9 */  j     .L800587E4
/* 033BDC 800587DC ACA20004 */   sw    $v0, 4($a1)

.L800587E0:
/* 033BE0 800587E0 0000302D */  daddu $a2, $zero, $zero
.L800587E4:
/* 033BE4 800587E4 8E420024 */  lw    $v0, 0x24($s2)
/* 033BE8 800587E8 03C6F021 */  addu  $fp, $fp, $a2
/* 033BEC 800587EC 00541021 */  addu  $v0, $v0, $s4
/* 033BF0 800587F0 AE420024 */  sw    $v0, 0x24($s2)
.L800587F4:
/* 033BF4 800587F4 8E420030 */  lw    $v0, 0x30($s2)
/* 033BF8 800587F8 00141840 */  sll   $v1, $s4, 1
/* 033BFC 800587FC 00431021 */  addu  $v0, $v0, $v1
/* 033C00 80058800 12200011 */  beqz  $s1, .L80058848
/* 033C04 80058804 AE420030 */   sw    $v0, 0x30($s2)
/* 033C08 80058808 00141040 */  sll   $v0, $s4, 1
/* 033C0C 8005880C 00512823 */  subu  $a1, $v0, $s1
/* 033C10 80058810 04A20001 */  bltzl $a1, .L80058818
/* 033C14 80058814 0000282D */   daddu $a1, $zero, $zero
.L80058818:
/* 033C18 80058818 02C0202D */  daddu $a0, $s6, $zero
/* 033C1C 8005881C 26D60008 */  addiu $s6, $s6, 8
/* 033C20 80058820 3C0300FF */  lui   $v1, 0xff
/* 033C24 80058824 3463FFFF */  ori   $v1, $v1, 0xffff
/* 033C28 80058828 001E1400 */  sll   $v0, $fp, 0x10
/* 033C2C 8005882C 00021403 */  sra   $v0, $v0, 0x10
/* 033C30 80058830 00A21021 */  addu  $v0, $a1, $v0
/* 033C34 80058834 00431024 */  and   $v0, $v0, $v1
/* 033C38 80058838 3C030200 */  lui   $v1, 0x200
/* 033C3C 8005883C 00431025 */  or    $v0, $v0, $v1
/* 033C40 80058840 AC820000 */  sw    $v0, ($a0)
/* 033C44 80058844 AC910004 */  sw    $s1, 4($a0)
.L80058848:
/* 033C48 80058848 8FA80020 */  lw    $t0, 0x20($sp)
/* 033C4C 8005884C 3C014700 */  lui   $at, 0x4700
/* 033C50 80058850 44811000 */  mtc1  $at, $f2
/* 033C54 80058854 C5000004 */  lwc1  $f0, 4($t0)
/* 033C58 80058858 46020002 */  mul.s $f0, $f0, $f2
/* 033C5C 8005885C 00000000 */  nop   
/* 033C60 80058860 8D040000 */  lw    $a0, ($t0)
/* 033C64 80058864 4600018D */  trunc.w.s $f6, $f0
/* 033C68 80058868 44103000 */  mfc1  $s0, $f6
/* 033C6C 8005886C 0C0187A4 */  jal   osVirtualToPhysical
/* 033C70 80058870 3210FFFF */   andi  $s0, $s0, 0xffff
/* 033C74 80058874 3C0300FF */  lui   $v1, 0xff
/* 033C78 80058878 3463FFFF */  ori   $v1, $v1, 0xffff
/* 033C7C 8005887C 02C0202D */  daddu $a0, $s6, $zero
/* 033C80 80058880 00431024 */  and   $v0, $v0, $v1
/* 033C84 80058884 3C030500 */  lui   $v1, 0x500
/* 033C88 80058888 00431025 */  or    $v0, $v0, $v1
/* 033C8C 8005888C 00108380 */  sll   $s0, $s0, 0xe
/* 033C90 80058890 AC820000 */  sw    $v0, ($a0)
/* 033C94 80058894 8FA80020 */  lw    $t0, 0x20($sp)
/* 033C98 80058898 33C20FFF */  andi  $v0, $fp, 0xfff
/* 033C9C 8005889C 8D03000C */  lw    $v1, 0xc($t0)
/* 033CA0 800588A0 00021080 */  sll   $v0, $v0, 2
/* 033CA4 800588A4 00031F80 */  sll   $v1, $v1, 0x1e
/* 033CA8 800588A8 00701825 */  or    $v1, $v1, $s0
/* 033CAC 800588AC 00621825 */  or    $v1, $v1, $v0
/* 033CB0 800588B0 AC830004 */  sw    $v1, 4($a0)
/* 033CB4 800588B4 AD00000C */  sw    $zero, 0xc($t0)
/* 033CB8 800588B8 8EE20024 */  lw    $v0, 0x24($s7)
/* 033CBC 800588BC 10400069 */  beqz  $v0, .L80058A64
/* 033CC0 800588C0 26D60008 */   addiu $s6, $s6, 8
/* 033CC4 800588C4 3C028008 */  lui   $v0, 0x8008
/* 033CC8 800588C8 24428181 */  addiu $v0, $v0, -0x7e7f
/* 033CCC 800588CC 90420000 */  lbu   $v0, ($v0)
/* 033CD0 800588D0 1440000C */  bnez  $v0, .L80058904
/* 033CD4 800588D4 AEE00024 */   sw    $zero, 0x24($s7)
/* 033CD8 800588D8 3C048008 */  lui   $a0, 0x8008
/* 033CDC 800588DC 24848E60 */  addiu $a0, $a0, -0x71a0
/* 033CE0 800588E0 86E30006 */  lh    $v1, 6($s7)
/* 033CE4 800588E4 84820080 */  lh    $v0, 0x80($a0)
/* 033CE8 800588E8 00620018 */  mult  $v1, $v0
/* 033CEC 800588EC 00004012 */  mflo  $t0
/* 033CF0 800588F0 000813C3 */  sra   $v0, $t0, 0xf
/* 033CF4 800588F4 A6E20014 */  sh    $v0, 0x14($s7)
/* 033CF8 800588F8 84820080 */  lh    $v0, 0x80($a0)
/* 033CFC 800588FC 08016254 */  j     .L80058950
/* 033D00 80058900 00620018 */   mult  $v1, $v0

.L80058904:
/* 033D04 80058904 86E20004 */  lh    $v0, 4($s7)
/* 033D08 80058908 86E30006 */  lh    $v1, 6($s7)
/* 033D0C 8005890C 00021040 */  sll   $v0, $v0, 1
/* 033D10 80058910 3C018008 */  lui   $at, 0x8008
/* 033D14 80058914 00220821 */  addu  $at, $at, $v0
/* 033D18 80058918 84228E60 */  lh    $v0, -0x71a0($at)
/* 033D1C 8005891C 00620018 */  mult  $v1, $v0
/* 033D20 80058920 86E30004 */  lh    $v1, 4($s7)
/* 033D24 80058924 00004012 */  mflo  $t0
/* 033D28 80058928 000813C3 */  sra   $v0, $t0, 0xf
/* 033D2C 8005892C A6E20014 */  sh    $v0, 0x14($s7)
/* 033D30 80058930 2402007F */  addiu $v0, $zero, 0x7f
/* 033D34 80058934 00431023 */  subu  $v0, $v0, $v1
/* 033D38 80058938 00021040 */  sll   $v0, $v0, 1
/* 033D3C 8005893C 86E30006 */  lh    $v1, 6($s7)
/* 033D40 80058940 3C018008 */  lui   $at, 0x8008
/* 033D44 80058944 00220821 */  addu  $at, $at, $v0
/* 033D48 80058948 84228E60 */  lh    $v0, -0x71a0($at)
/* 033D4C 8005894C 00620018 */  mult  $v1, $v0
.L80058950:
/* 033D50 80058950 00004012 */  mflo  $t0
/* 033D54 80058954 000813C3 */  sra   $v0, $t0, 0xf
/* 033D58 80058958 A6E2001A */  sh    $v0, 0x1a($s7)
/* 033D5C 8005895C 86E30008 */  lh    $v1, 8($s7)
/* 033D60 80058960 86E40014 */  lh    $a0, 0x14($s7)
/* 033D64 80058964 8EE50020 */  lw    $a1, 0x20($s7)
/* 033D68 80058968 26E20010 */  addiu $v0, $s7, 0x10
/* 033D6C 8005896C AFA20014 */  sw    $v0, 0x14($sp)
/* 033D70 80058970 44836000 */  mtc1  $v1, $f12
/* 033D74 80058974 00000000 */  nop   
/* 033D78 80058978 46806321 */  cvt.d.w $f12, $f12
/* 033D7C 8005897C 44847000 */  mtc1  $a0, $f14
/* 033D80 80058980 00000000 */  nop   
/* 033D84 80058984 468073A1 */  cvt.d.w $f14, $f14
/* 033D88 80058988 0C01631B */  jal   func_80058C6C
/* 033D8C 8005898C AFA50010 */   sw    $a1, 0x10($sp)
/* 033D90 80058990 86E3000A */  lh    $v1, 0xa($s7)
/* 033D94 80058994 86E4001A */  lh    $a0, 0x1a($s7)
/* 033D98 80058998 8EE50020 */  lw    $a1, 0x20($s7)
/* 033D9C 8005899C A6E20012 */  sh    $v0, 0x12($s7)
/* 033DA0 800589A0 26E20016 */  addiu $v0, $s7, 0x16
/* 033DA4 800589A4 AFA20014 */  sw    $v0, 0x14($sp)
/* 033DA8 800589A8 44836000 */  mtc1  $v1, $f12
/* 033DAC 800589AC 00000000 */  nop   
/* 033DB0 800589B0 46806321 */  cvt.d.w $f12, $f12
/* 033DB4 800589B4 44847000 */  mtc1  $a0, $f14
/* 033DB8 800589B8 00000000 */  nop   
/* 033DBC 800589BC 468073A1 */  cvt.d.w $f14, $f14
/* 033DC0 800589C0 0C01631B */  jal   func_80058C6C
/* 033DC4 800589C4 AFA50010 */   sw    $a1, 0x10($sp)
/* 033DC8 800589C8 02C0202D */  daddu $a0, $s6, $zero
/* 033DCC 800589CC 26D60008 */  addiu $s6, $s6, 8
/* 033DD0 800589D0 02C0282D */  daddu $a1, $s6, $zero
/* 033DD4 800589D4 26D60008 */  addiu $s6, $s6, 8
/* 033DD8 800589D8 02C0302D */  daddu $a2, $s6, $zero
/* 033DDC 800589DC 26D60008 */  addiu $s6, $s6, 8
/* 033DE0 800589E0 3C030900 */  lui   $v1, 0x900
/* 033DE4 800589E4 A6E20018 */  sh    $v0, 0x18($s7)
/* 033DE8 800589E8 96E20014 */  lhu   $v0, 0x14($s7)
/* 033DEC 800589EC 02C0802D */  daddu $s0, $s6, $zero
/* 033DF0 800589F0 00431025 */  or    $v0, $v0, $v1
/* 033DF4 800589F4 AC820000 */  sw    $v0, ($a0)
/* 033DF8 800589F8 96E20012 */  lhu   $v0, 0x12($s7)
/* 033DFC 800589FC 96E30010 */  lhu   $v1, 0x10($s7)
/* 033E00 80058A00 00021400 */  sll   $v0, $v0, 0x10
/* 033E04 80058A04 00431025 */  or    $v0, $v0, $v1
/* 033E08 80058A08 AC820004 */  sw    $v0, 4($a0)
/* 033E0C 80058A0C 96E20008 */  lhu   $v0, 8($s7)
/* 033E10 80058A10 3C030906 */  lui   $v1, 0x906
/* 033E14 80058A14 00431025 */  or    $v0, $v0, $v1
/* 033E18 80058A18 ACA20000 */  sw    $v0, ($a1)
/* 033E1C 80058A1C 96E2000C */  lhu   $v0, 0xc($s7)
/* 033E20 80058A20 96E3000E */  lhu   $v1, 0xe($s7)
/* 033E24 80058A24 00021400 */  sll   $v0, $v0, 0x10
/* 033E28 80058A28 00431025 */  or    $v0, $v0, $v1
/* 033E2C 80058A2C ACA20004 */  sw    $v0, 4($a1)
/* 033E30 80058A30 96E2001A */  lhu   $v0, 0x1a($s7)
/* 033E34 80058A34 3C030904 */  lui   $v1, 0x904
/* 033E38 80058A38 00431025 */  or    $v0, $v0, $v1
/* 033E3C 80058A3C ACC20000 */  sw    $v0, ($a2)
/* 033E40 80058A40 96E20018 */  lhu   $v0, 0x18($s7)
/* 033E44 80058A44 96E30016 */  lhu   $v1, 0x16($s7)
/* 033E48 80058A48 00021400 */  sll   $v0, $v0, 0x10
/* 033E4C 80058A4C 00431025 */  or    $v0, $v0, $v1
/* 033E50 80058A50 ACC20004 */  sw    $v0, 4($a2)
/* 033E54 80058A54 96E2000A */  lhu   $v0, 0xa($s7)
/* 033E58 80058A58 3C030301 */  lui   $v1, 0x301
/* 033E5C 80058A5C 0801629B */  j     .L80058A6C
/* 033E60 80058A60 00431025 */   or    $v0, $v0, $v1

.L80058A64:
/* 033E64 80058A64 02C0802D */  daddu $s0, $s6, $zero
/* 033E68 80058A68 3C020300 */  lui   $v0, 0x300
.L80058A6C:
/* 033E6C 80058A6C AE020000 */  sw    $v0, ($s0)
/* 033E70 80058A70 8EE40000 */  lw    $a0, ($s7)
/* 033E74 80058A74 0C0187A4 */  jal   osVirtualToPhysical
/* 033E78 80058A78 26D60008 */   addiu $s6, $s6, 8
/* 033E7C 80058A7C AE020004 */  sw    $v0, 4($s0)
/* 033E80 80058A80 8EE2001C */  lw    $v0, 0x1c($s7)
/* 033E84 80058A84 8EE30020 */  lw    $v1, 0x20($s7)
/* 033E88 80058A88 244200B8 */  addiu $v0, $v0, 0xb8
/* 033E8C 80058A8C AEE2001C */  sw    $v0, 0x1c($s7)
/* 033E90 80058A90 0062102A */  slt   $v0, $v1, $v0
/* 033E94 80058A94 54400001 */  bnel  $v0, $zero, .L80058A9C
/* 033E98 80058A98 AEE3001C */   sw    $v1, 0x1c($s7)
.L80058A9C:
/* 033E9C 80058A9C 8EE20028 */  lw    $v0, 0x28($s7)
/* 033EA0 80058AA0 14400013 */  bnez  $v0, .L80058AF0
/* 033EA4 80058AA4 02C0102D */   daddu $v0, $s6, $zero
/* 033EA8 80058AA8 24020001 */  addiu $v0, $zero, 1
/* 033EAC 80058AAC AEE20024 */  sw    $v0, 0x24($s7)
/* 033EB0 80058AB0 A6E20006 */  sh    $v0, 6($s7)
/* 033EB4 80058AB4 8FA80020 */  lw    $t0, 0x20($sp)
/* 033EB8 80058AB8 AD000008 */  sw    $zero, 8($t0)
/* 033EBC 80058ABC AD02000C */  sw    $v0, 0xc($t0)
/* 033EC0 80058AC0 8E430014 */  lw    $v1, 0x14($s2)
/* 033EC4 80058AC4 AE400028 */  sw    $zero, 0x28($s2)
/* 033EC8 80058AC8 AE42002C */  sw    $v0, 0x2c($s2)
/* 033ECC 80058ACC AE400024 */  sw    $zero, 0x24($s2)
/* 033ED0 80058AD0 8C620000 */  lw    $v0, ($v1)
/* 033ED4 80058AD4 AE420030 */  sw    $v0, 0x30($s2)
/* 033ED8 80058AD8 8C620014 */  lw    $v0, 0x14($v1)
/* 033EDC 80058ADC AE420010 */  sw    $v0, 0x10($s2)
/* 033EE0 80058AE0 8FA80060 */  lw    $t0, 0x60($sp)
/* 033EE4 80058AE4 0C014B8C */  jal   func_80052E30
/* 033EE8 80058AE8 91040079 */   lbu   $a0, 0x79($t0)
.L80058AEC:
/* 033EEC 80058AEC 02C0102D */  daddu $v0, $s6, $zero
.L80058AF0:
/* 033EF0 80058AF0 8FBF005C */  lw    $ra, 0x5c($sp)
/* 033EF4 80058AF4 8FBE0058 */  lw    $fp, 0x58($sp)
/* 033EF8 80058AF8 8FB70054 */  lw    $s7, 0x54($sp)
/* 033EFC 80058AFC 8FB60050 */  lw    $s6, 0x50($sp)
/* 033F00 80058B00 8FB5004C */  lw    $s5, 0x4c($sp)
/* 033F04 80058B04 8FB40048 */  lw    $s4, 0x48($sp)
/* 033F08 80058B08 8FB30044 */  lw    $s3, 0x44($sp)
/* 033F0C 80058B0C 8FB20040 */  lw    $s2, 0x40($sp)
/* 033F10 80058B10 8FB1003C */  lw    $s1, 0x3c($sp)
/* 033F14 80058B14 8FB00038 */  lw    $s0, 0x38($sp)
/* 033F18 80058B18 03E00008 */  jr    $ra
/* 033F1C 80058B1C 27BD0060 */   addiu $sp, $sp, 0x60

