.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80121140
/* 0B7840 80121140 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B7844 80121144 AFB00010 */  sw    $s0, 0x10($sp)
/* 0B7848 80121148 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B784C 8012114C 0C019D28 */  jal   guMtxIdentF
/* 0B7850 80121150 0080802D */   daddu $s0, $a0, $zero
/* 0B7854 80121154 3C013F80 */  lui   $at, 0x3f80
/* 0B7858 80121158 44810000 */  mtc1  $at, $f0
/* 0B785C 8012115C 3C01BF80 */  lui   $at, 0xbf80
/* 0B7860 80121160 44811000 */  mtc1  $at, $f2
/* 0B7864 80121164 E6000000 */  swc1  $f0, ($s0)
/* 0B7868 80121168 E6000014 */  swc1  $f0, 0x14($s0)
/* 0B786C 8012116C E6020028 */  swc1  $f2, 0x28($s0)
/* 0B7870 80121170 E600003C */  swc1  $f0, 0x3c($s0)
/* 0B7874 80121174 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B7878 80121178 8FB00010 */  lw    $s0, 0x10($sp)
/* 0B787C 8012117C 03E00008 */  jr    $ra
/* 0B7880 80121180 27BD0018 */   addiu $sp, $sp, 0x18

/* 0B7884 80121184 27BDFF08 */  addiu $sp, $sp, -0xf8
/* 0B7888 80121188 AFB200F0 */  sw    $s2, 0xf0($sp)
/* 0B788C 8012118C 0080902D */  daddu $s2, $a0, $zero
/* 0B7890 80121190 3C020001 */  lui   $v0, 1
/* 0B7894 80121194 34421630 */  ori   $v0, $v0, 0x1630
/* 0B7898 80121198 26450018 */  addiu $a1, $s2, 0x18
/* 0B789C 8012119C 3C038007 */  lui   $v1, 0x8007
/* 0B78A0 801211A0 946341F0 */  lhu   $v1, 0x41f0($v1)
/* 0B78A4 801211A4 3C04800A */  lui   $a0, 0x800a
/* 0B78A8 801211A8 8C84A674 */  lw    $a0, -0x598c($a0)
/* 0B78AC 801211AC 26460058 */  addiu $a2, $s2, 0x58
/* 0B78B0 801211B0 AFBF00F4 */  sw    $ra, 0xf4($sp)
/* 0B78B4 801211B4 AFB100EC */  sw    $s1, 0xec($sp)
/* 0B78B8 801211B8 AFB000E8 */  sw    $s0, 0xe8($sp)
/* 0B78BC 801211BC 00031980 */  sll   $v1, $v1, 6
/* 0B78C0 801211C0 00832021 */  addu  $a0, $a0, $v1
/* 0B78C4 801211C4 00822021 */  addu  $a0, $a0, $v0
.L801211C8:
/* 0B78C8 801211C8 8CAE0000 */  lw    $t6, ($a1)
/* 0B78CC 801211CC 8CAF0004 */  lw    $t7, 4($a1)
/* 0B78D0 801211D0 8CB80008 */  lw    $t8, 8($a1)
/* 0B78D4 801211D4 8CB9000C */  lw    $t9, 0xc($a1)
/* 0B78D8 801211D8 AC8E0000 */  sw    $t6, ($a0)
/* 0B78DC 801211DC AC8F0004 */  sw    $t7, 4($a0)
/* 0B78E0 801211E0 AC980008 */  sw    $t8, 8($a0)
/* 0B78E4 801211E4 AC99000C */  sw    $t9, 0xc($a0)
/* 0B78E8 801211E8 24A50010 */  addiu $a1, $a1, 0x10
/* 0B78EC 801211EC 14A6FFF6 */  bne   $a1, $a2, .L801211C8
/* 0B78F0 801211F0 24840010 */   addiu $a0, $a0, 0x10
/* 0B78F4 801211F4 3C02DA38 */  lui   $v0, 0xda38
/* 0B78F8 801211F8 34420002 */  ori   $v0, $v0, 2
/* 0B78FC 801211FC 3C070001 */  lui   $a3, 1
/* 0B7900 80121200 3C0D800A */  lui   $t5, 0x800a
/* 0B7904 80121204 25ADA66C */  addiu $t5, $t5, -0x5994
/* 0B7908 80121208 34E71630 */  ori   $a3, $a3, 0x1630
/* 0B790C 8012120C 3C068007 */  lui   $a2, 0x8007
/* 0B7910 80121210 24C641F0 */  addiu $a2, $a2, 0x41f0
/* 0B7914 80121214 8DAC0000 */  lw    $t4, ($t5)
/* 0B7918 80121218 94C40000 */  lhu   $a0, ($a2)
/* 0B791C 8012121C 0180282D */  daddu $a1, $t4, $zero
/* 0B7920 80121220 258C0008 */  addiu $t4, $t4, 8
/* 0B7924 80121224 ADAC0000 */  sw    $t4, ($t5)
/* 0B7928 80121228 ACA20000 */  sw    $v0, ($a1)
/* 0B792C 8012122C 3082FFFF */  andi  $v0, $a0, 0xffff
/* 0B7930 80121230 00021180 */  sll   $v0, $v0, 6
/* 0B7934 80121234 3C03800A */  lui   $v1, 0x800a
/* 0B7938 80121238 8C63A674 */  lw    $v1, -0x598c($v1)
/* 0B793C 8012123C 00471021 */  addu  $v0, $v0, $a3
/* 0B7940 80121240 00621821 */  addu  $v1, $v1, $v0
/* 0B7944 80121244 ACA30004 */  sw    $v1, 4($a1)
/* 0B7948 80121248 8E430000 */  lw    $v1, ($s2)
/* 0B794C 8012124C 24840001 */  addiu $a0, $a0, 1
/* 0B7950 80121250 30620400 */  andi  $v0, $v1, 0x400
/* 0B7954 80121254 14400232 */  bnez  $v0, .L80121B20
/* 0B7958 80121258 A4C40000 */   sh    $a0, ($a2)
/* 0B795C 8012125C 3C020001 */  lui   $v0, 1
/* 0B7960 80121260 00621024 */  and   $v0, $v1, $v0
/* 0B7964 80121264 144001B1 */  bnez  $v0, .L8012192C
/* 0B7968 80121268 3C04E200 */   lui   $a0, 0xe200
/* 0B796C 8012126C 3484001C */  ori   $a0, $a0, 0x1c
/* 0B7970 80121270 3C030F0A */  lui   $v1, 0xf0a
/* 0B7974 80121274 34637008 */  ori   $v1, $v1, 0x7008
/* 0B7978 80121278 3C06FC11 */  lui   $a2, 0xfc11
/* 0B797C 8012127C 34C69623 */  ori   $a2, $a2, 0x9623
/* 0B7980 80121280 3C05FF2F */  lui   $a1, 0xff2f
/* 0B7984 80121284 34A5FFFF */  ori   $a1, $a1, 0xffff
/* 0B7988 80121288 3C07E200 */  lui   $a3, 0xe200
/* 0B798C 8012128C 34E71E01 */  ori   $a3, $a3, 0x1e01
/* 0B7990 80121290 3C08E300 */  lui   $t0, 0xe300
/* 0B7994 80121294 35080A11 */  ori   $t0, $t0, 0xa11
/* 0B7998 80121298 0000482D */  daddu $t1, $zero, $zero
/* 0B799C 8012129C 25820008 */  addiu $v0, $t4, 8
/* 0B79A0 801212A0 ADA20000 */  sw    $v0, ($t5)
/* 0B79A4 801212A4 3C02E700 */  lui   $v0, 0xe700
/* 0B79A8 801212A8 AD820000 */  sw    $v0, ($t4)
/* 0B79AC 801212AC 25820010 */  addiu $v0, $t4, 0x10
/* 0B79B0 801212B0 AD800004 */  sw    $zero, 4($t4)
/* 0B79B4 801212B4 ADA20000 */  sw    $v0, ($t5)
/* 0B79B8 801212B8 25820018 */  addiu $v0, $t4, 0x18
/* 0B79BC 801212BC AD840008 */  sw    $a0, 8($t4)
/* 0B79C0 801212C0 AD83000C */  sw    $v1, 0xc($t4)
/* 0B79C4 801212C4 ADA20000 */  sw    $v0, ($t5)
/* 0B79C8 801212C8 3C02FA00 */  lui   $v0, 0xfa00
/* 0B79CC 801212CC AD820010 */  sw    $v0, 0x10($t4)
/* 0B79D0 801212D0 2402FFFF */  addiu $v0, $zero, -1
/* 0B79D4 801212D4 AD820014 */  sw    $v0, 0x14($t4)
/* 0B79D8 801212D8 25820020 */  addiu $v0, $t4, 0x20
/* 0B79DC 801212DC ADA20000 */  sw    $v0, ($t5)
/* 0B79E0 801212E0 25820028 */  addiu $v0, $t4, 0x28
/* 0B79E4 801212E4 AD860018 */  sw    $a2, 0x18($t4)
/* 0B79E8 801212E8 AD85001C */  sw    $a1, 0x1c($t4)
/* 0B79EC 801212EC ADA20000 */  sw    $v0, ($t5)
/* 0B79F0 801212F0 25820030 */  addiu $v0, $t4, 0x30
/* 0B79F4 801212F4 AD870020 */  sw    $a3, 0x20($t4)
/* 0B79F8 801212F8 AD800024 */  sw    $zero, 0x24($t4)
/* 0B79FC 801212FC ADA20000 */  sw    $v0, ($t5)
/* 0B7A00 80121300 3C038015 */  lui   $v1, 0x8015
/* 0B7A04 80121304 8C634378 */  lw    $v1, 0x4378($v1)
/* 0B7A08 80121308 24020CF0 */  addiu $v0, $zero, 0xcf0
/* 0B7A0C 8012130C AD880028 */  sw    $t0, 0x28($t4)
/* 0B7A10 80121310 10600004 */  beqz  $v1, .L80121324
/* 0B7A14 80121314 AD82002C */   sw    $v0, 0x2c($t4)
/* 0B7A18 80121318 8E420000 */  lw    $v0, ($s2)
/* 0B7A1C 8012131C 30420800 */  andi  $v0, $v0, 0x800
/* 0B7A20 80121320 2C490001 */  sltiu $t1, $v0, 1
.L80121324:
/* 0B7A24 80121324 11200005 */  beqz  $t1, .L8012133C
/* 0B7A28 80121328 24020001 */   addiu $v0, $zero, 1
/* 0B7A2C 8012132C 112200C3 */  beq   $t1, $v0, .L8012163C
/* 0B7A30 80121330 3C02D9FD */   lui   $v0, 0xd9fd
/* 0B7A34 80121334 0804862C */  j     .L801218B0
/* 0B7A38 80121338 00000000 */   nop   

.L8012133C:
/* 0B7A3C 8012133C 92420004 */  lbu   $v0, 4($s2)
/* 0B7A40 80121340 2442FFFF */  addiu $v0, $v0, -1
/* 0B7A44 80121344 00021600 */  sll   $v0, $v0, 0x18
/* 0B7A48 80121348 00021E03 */  sra   $v1, $v0, 0x18
/* 0B7A4C 8012134C 2C62002D */  sltiu $v0, $v1, 0x2d
/* 0B7A50 80121350 10400156 */  beqz  $v0, .L801218AC
/* 0B7A54 80121354 00031080 */   sll   $v0, $v1, 2
/* 0B7A58 80121358 3C018015 */  lui   $at, 0x8015
/* 0B7A5C 8012135C 00220821 */  addu  $at, $at, $v0
/* 0B7A60 80121360 8C2200D0 */  lw    $v0, 0xd0($at)
/* 0B7A64 80121364 00400008 */  jr    $v0
/* 0B7A68 80121368 00000000 */   nop   
/* 0B7A6C 8012136C 3C03800A */  lui   $v1, 0x800a
/* 0B7A70 80121370 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7A74 80121374 8C620000 */  lw    $v0, ($v1)
/* 0B7A78 80121378 0040202D */  daddu $a0, $v0, $zero
/* 0B7A7C 8012137C 24420008 */  addiu $v0, $v0, 8
/* 0B7A80 80121380 AC620000 */  sw    $v0, ($v1)
/* 0B7A84 80121384 3C02DE00 */  lui   $v0, 0xde00
/* 0B7A88 80121388 AC820000 */  sw    $v0, ($a0)
/* 0B7A8C 8012138C 3C028015 */  lui   $v0, 0x8015
/* 0B7A90 80121390 2442B7F8 */  addiu $v0, $v0, -0x4808
/* 0B7A94 80121394 0804862B */  j     .L801218AC
/* 0B7A98 80121398 AC820004 */   sw    $v0, 4($a0)

/* 0B7A9C 8012139C 3C03800A */  lui   $v1, 0x800a
/* 0B7AA0 801213A0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7AA4 801213A4 8C620000 */  lw    $v0, ($v1)
/* 0B7AA8 801213A8 0040202D */  daddu $a0, $v0, $zero
/* 0B7AAC 801213AC 24420008 */  addiu $v0, $v0, 8
/* 0B7AB0 801213B0 AC620000 */  sw    $v0, ($v1)
/* 0B7AB4 801213B4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7AB8 801213B8 AC820000 */  sw    $v0, ($a0)
/* 0B7ABC 801213BC 3C028015 */  lui   $v0, 0x8015
/* 0B7AC0 801213C0 2442B820 */  addiu $v0, $v0, -0x47e0
/* 0B7AC4 801213C4 0804862B */  j     .L801218AC
/* 0B7AC8 801213C8 AC820004 */   sw    $v0, 4($a0)

/* 0B7ACC 801213CC 3C03800A */  lui   $v1, 0x800a
/* 0B7AD0 801213D0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7AD4 801213D4 8C620000 */  lw    $v0, ($v1)
/* 0B7AD8 801213D8 0040202D */  daddu $a0, $v0, $zero
/* 0B7ADC 801213DC 24420008 */  addiu $v0, $v0, 8
/* 0B7AE0 801213E0 AC620000 */  sw    $v0, ($v1)
/* 0B7AE4 801213E4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7AE8 801213E8 AC820000 */  sw    $v0, ($a0)
/* 0B7AEC 801213EC 3C028015 */  lui   $v0, 0x8015
/* 0B7AF0 801213F0 2442B848 */  addiu $v0, $v0, -0x47b8
/* 0B7AF4 801213F4 0804862B */  j     .L801218AC
/* 0B7AF8 801213F8 AC820004 */   sw    $v0, 4($a0)

/* 0B7AFC 801213FC 3C03800A */  lui   $v1, 0x800a
/* 0B7B00 80121400 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7B04 80121404 8C620000 */  lw    $v0, ($v1)
/* 0B7B08 80121408 0040202D */  daddu $a0, $v0, $zero
/* 0B7B0C 8012140C 24420008 */  addiu $v0, $v0, 8
/* 0B7B10 80121410 AC620000 */  sw    $v0, ($v1)
/* 0B7B14 80121414 3C02DE00 */  lui   $v0, 0xde00
/* 0B7B18 80121418 AC820000 */  sw    $v0, ($a0)
/* 0B7B1C 8012141C 3C028015 */  lui   $v0, 0x8015
/* 0B7B20 80121420 2442B870 */  addiu $v0, $v0, -0x4790
/* 0B7B24 80121424 0804862B */  j     .L801218AC
/* 0B7B28 80121428 AC820004 */   sw    $v0, 4($a0)

/* 0B7B2C 8012142C 3C03800A */  lui   $v1, 0x800a
/* 0B7B30 80121430 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7B34 80121434 8C620000 */  lw    $v0, ($v1)
/* 0B7B38 80121438 0040202D */  daddu $a0, $v0, $zero
/* 0B7B3C 8012143C 24420008 */  addiu $v0, $v0, 8
/* 0B7B40 80121440 AC620000 */  sw    $v0, ($v1)
/* 0B7B44 80121444 3C02DE00 */  lui   $v0, 0xde00
/* 0B7B48 80121448 AC820000 */  sw    $v0, ($a0)
/* 0B7B4C 8012144C 3C028015 */  lui   $v0, 0x8015
/* 0B7B50 80121450 2442B898 */  addiu $v0, $v0, -0x4768
/* 0B7B54 80121454 0804862B */  j     .L801218AC
/* 0B7B58 80121458 AC820004 */   sw    $v0, 4($a0)

/* 0B7B5C 8012145C 3C03800A */  lui   $v1, 0x800a
/* 0B7B60 80121460 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7B64 80121464 8C620000 */  lw    $v0, ($v1)
/* 0B7B68 80121468 0040202D */  daddu $a0, $v0, $zero
/* 0B7B6C 8012146C 24420008 */  addiu $v0, $v0, 8
/* 0B7B70 80121470 AC620000 */  sw    $v0, ($v1)
/* 0B7B74 80121474 3C02DE00 */  lui   $v0, 0xde00
/* 0B7B78 80121478 AC820000 */  sw    $v0, ($a0)
/* 0B7B7C 8012147C 3C028015 */  lui   $v0, 0x8015
/* 0B7B80 80121480 2442B9B0 */  addiu $v0, $v0, -0x4650
/* 0B7B84 80121484 0804862B */  j     .L801218AC
/* 0B7B88 80121488 AC820004 */   sw    $v0, 4($a0)

/* 0B7B8C 8012148C 3C03800A */  lui   $v1, 0x800a
/* 0B7B90 80121490 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7B94 80121494 8C620000 */  lw    $v0, ($v1)
/* 0B7B98 80121498 0040202D */  daddu $a0, $v0, $zero
/* 0B7B9C 8012149C 24420008 */  addiu $v0, $v0, 8
/* 0B7BA0 801214A0 AC620000 */  sw    $v0, ($v1)
/* 0B7BA4 801214A4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7BA8 801214A8 AC820000 */  sw    $v0, ($a0)
/* 0B7BAC 801214AC 3C028015 */  lui   $v0, 0x8015
/* 0B7BB0 801214B0 2442B8C0 */  addiu $v0, $v0, -0x4740
/* 0B7BB4 801214B4 0804862B */  j     .L801218AC
/* 0B7BB8 801214B8 AC820004 */   sw    $v0, 4($a0)

/* 0B7BBC 801214BC 3C03800A */  lui   $v1, 0x800a
/* 0B7BC0 801214C0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7BC4 801214C4 8C620000 */  lw    $v0, ($v1)
/* 0B7BC8 801214C8 0040202D */  daddu $a0, $v0, $zero
/* 0B7BCC 801214CC 24420008 */  addiu $v0, $v0, 8
/* 0B7BD0 801214D0 AC620000 */  sw    $v0, ($v1)
/* 0B7BD4 801214D4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7BD8 801214D8 AC820000 */  sw    $v0, ($a0)
/* 0B7BDC 801214DC 3C028015 */  lui   $v0, 0x8015
/* 0B7BE0 801214E0 2442B9D8 */  addiu $v0, $v0, -0x4628
/* 0B7BE4 801214E4 0804862B */  j     .L801218AC
/* 0B7BE8 801214E8 AC820004 */   sw    $v0, 4($a0)

/* 0B7BEC 801214EC 3C03800A */  lui   $v1, 0x800a
/* 0B7BF0 801214F0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7BF4 801214F4 8C620000 */  lw    $v0, ($v1)
/* 0B7BF8 801214F8 0040202D */  daddu $a0, $v0, $zero
/* 0B7BFC 801214FC 24420008 */  addiu $v0, $v0, 8
/* 0B7C00 80121500 AC620000 */  sw    $v0, ($v1)
/* 0B7C04 80121504 3C02DE00 */  lui   $v0, 0xde00
/* 0B7C08 80121508 AC820000 */  sw    $v0, ($a0)
/* 0B7C0C 8012150C 3C028015 */  lui   $v0, 0x8015
/* 0B7C10 80121510 2442B8E8 */  addiu $v0, $v0, -0x4718
/* 0B7C14 80121514 0804862B */  j     .L801218AC
/* 0B7C18 80121518 AC820004 */   sw    $v0, 4($a0)

/* 0B7C1C 8012151C 3C03800A */  lui   $v1, 0x800a
/* 0B7C20 80121520 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7C24 80121524 8C620000 */  lw    $v0, ($v1)
/* 0B7C28 80121528 0040202D */  daddu $a0, $v0, $zero
/* 0B7C2C 8012152C 24420008 */  addiu $v0, $v0, 8
/* 0B7C30 80121530 AC620000 */  sw    $v0, ($v1)
/* 0B7C34 80121534 3C02DE00 */  lui   $v0, 0xde00
/* 0B7C38 80121538 AC820000 */  sw    $v0, ($a0)
/* 0B7C3C 8012153C 3C028015 */  lui   $v0, 0x8015
/* 0B7C40 80121540 2442BA00 */  addiu $v0, $v0, -0x4600
/* 0B7C44 80121544 0804862B */  j     .L801218AC
/* 0B7C48 80121548 AC820004 */   sw    $v0, 4($a0)

/* 0B7C4C 8012154C 3C03800A */  lui   $v1, 0x800a
/* 0B7C50 80121550 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7C54 80121554 8C620000 */  lw    $v0, ($v1)
/* 0B7C58 80121558 0040202D */  daddu $a0, $v0, $zero
/* 0B7C5C 8012155C 24420008 */  addiu $v0, $v0, 8
/* 0B7C60 80121560 AC620000 */  sw    $v0, ($v1)
/* 0B7C64 80121564 3C02DE00 */  lui   $v0, 0xde00
/* 0B7C68 80121568 AC820000 */  sw    $v0, ($a0)
/* 0B7C6C 8012156C 3C028015 */  lui   $v0, 0x8015
/* 0B7C70 80121570 2442B988 */  addiu $v0, $v0, -0x4678
/* 0B7C74 80121574 0804862B */  j     .L801218AC
/* 0B7C78 80121578 AC820004 */   sw    $v0, 4($a0)

/* 0B7C7C 8012157C 3C03800A */  lui   $v1, 0x800a
/* 0B7C80 80121580 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7C84 80121584 8C620000 */  lw    $v0, ($v1)
/* 0B7C88 80121588 0040202D */  daddu $a0, $v0, $zero
/* 0B7C8C 8012158C 24420008 */  addiu $v0, $v0, 8
/* 0B7C90 80121590 AC620000 */  sw    $v0, ($v1)
/* 0B7C94 80121594 3C02DE00 */  lui   $v0, 0xde00
/* 0B7C98 80121598 AC820000 */  sw    $v0, ($a0)
/* 0B7C9C 8012159C 3C028015 */  lui   $v0, 0x8015
/* 0B7CA0 801215A0 2442BA48 */  addiu $v0, $v0, -0x45b8
/* 0B7CA4 801215A4 0804862B */  j     .L801218AC
/* 0B7CA8 801215A8 AC820004 */   sw    $v0, 4($a0)

/* 0B7CAC 801215AC 3C03800A */  lui   $v1, 0x800a
/* 0B7CB0 801215B0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7CB4 801215B4 8C620000 */  lw    $v0, ($v1)
/* 0B7CB8 801215B8 0040202D */  daddu $a0, $v0, $zero
/* 0B7CBC 801215BC 24420008 */  addiu $v0, $v0, 8
/* 0B7CC0 801215C0 AC620000 */  sw    $v0, ($v1)
/* 0B7CC4 801215C4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7CC8 801215C8 AC820000 */  sw    $v0, ($a0)
/* 0B7CCC 801215CC 3C028015 */  lui   $v0, 0x8015
/* 0B7CD0 801215D0 2442BA70 */  addiu $v0, $v0, -0x4590
/* 0B7CD4 801215D4 0804862B */  j     .L801218AC
/* 0B7CD8 801215D8 AC820004 */   sw    $v0, 4($a0)

/* 0B7CDC 801215DC 3C03800A */  lui   $v1, 0x800a
/* 0B7CE0 801215E0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7CE4 801215E4 8C620000 */  lw    $v0, ($v1)
/* 0B7CE8 801215E8 0040202D */  daddu $a0, $v0, $zero
/* 0B7CEC 801215EC 24420008 */  addiu $v0, $v0, 8
/* 0B7CF0 801215F0 AC620000 */  sw    $v0, ($v1)
/* 0B7CF4 801215F4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7CF8 801215F8 AC820000 */  sw    $v0, ($a0)
/* 0B7CFC 801215FC 3C028015 */  lui   $v0, 0x8015
/* 0B7D00 80121600 2442BA98 */  addiu $v0, $v0, -0x4568
/* 0B7D04 80121604 0804862B */  j     .L801218AC
/* 0B7D08 80121608 AC820004 */   sw    $v0, 4($a0)

/* 0B7D0C 8012160C 3C03800A */  lui   $v1, 0x800a
/* 0B7D10 80121610 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7D14 80121614 8C620000 */  lw    $v0, ($v1)
/* 0B7D18 80121618 0040202D */  daddu $a0, $v0, $zero
/* 0B7D1C 8012161C 24420008 */  addiu $v0, $v0, 8
/* 0B7D20 80121620 AC620000 */  sw    $v0, ($v1)
/* 0B7D24 80121624 3C02DE00 */  lui   $v0, 0xde00
/* 0B7D28 80121628 AC820000 */  sw    $v0, ($a0)
/* 0B7D2C 8012162C 3C028015 */  lui   $v0, 0x8015
/* 0B7D30 80121630 2442BAE8 */  addiu $v0, $v0, -0x4518
/* 0B7D34 80121634 0804862B */  j     .L801218AC
/* 0B7D38 80121638 AC820004 */   sw    $v0, 4($a0)

.L8012163C:
/* 0B7D3C 8012163C 92420004 */  lbu   $v0, 4($s2)
/* 0B7D40 80121640 2442FFFF */  addiu $v0, $v0, -1
/* 0B7D44 80121644 00021600 */  sll   $v0, $v0, 0x18
/* 0B7D48 80121648 00021E03 */  sra   $v1, $v0, 0x18
/* 0B7D4C 8012164C 2C620026 */  sltiu $v0, $v1, 0x26
/* 0B7D50 80121650 10400059 */  beqz  $v0, .L801217B8
/* 0B7D54 80121654 00031080 */   sll   $v0, $v1, 2
/* 0B7D58 80121658 3C018015 */  lui   $at, 0x8015
/* 0B7D5C 8012165C 00220821 */  addu  $at, $at, $v0
/* 0B7D60 80121660 8C220188 */  lw    $v0, 0x188($at)
/* 0B7D64 80121664 00400008 */  jr    $v0
/* 0B7D68 80121668 00000000 */   nop   
/* 0B7D6C 8012166C 3C03800A */  lui   $v1, 0x800a
/* 0B7D70 80121670 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7D74 80121674 8C620000 */  lw    $v0, ($v1)
/* 0B7D78 80121678 0040202D */  daddu $a0, $v0, $zero
/* 0B7D7C 8012167C 24420008 */  addiu $v0, $v0, 8
/* 0B7D80 80121680 AC620000 */  sw    $v0, ($v1)
/* 0B7D84 80121684 3C02DE00 */  lui   $v0, 0xde00
/* 0B7D88 80121688 AC820000 */  sw    $v0, ($a0)
/* 0B7D8C 8012168C 3C028015 */  lui   $v0, 0x8015
/* 0B7D90 80121690 2442BE78 */  addiu $v0, $v0, -0x4188
/* 0B7D94 80121694 080485EE */  j     .L801217B8
/* 0B7D98 80121698 AC820004 */   sw    $v0, 4($a0)

/* 0B7D9C 8012169C 3C03800A */  lui   $v1, 0x800a
/* 0B7DA0 801216A0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7DA4 801216A4 8C620000 */  lw    $v0, ($v1)
/* 0B7DA8 801216A8 0040202D */  daddu $a0, $v0, $zero
/* 0B7DAC 801216AC 24420008 */  addiu $v0, $v0, 8
/* 0B7DB0 801216B0 AC620000 */  sw    $v0, ($v1)
/* 0B7DB4 801216B4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7DB8 801216B8 AC820000 */  sw    $v0, ($a0)
/* 0B7DBC 801216BC 3C028015 */  lui   $v0, 0x8015
/* 0B7DC0 801216C0 2442BEA0 */  addiu $v0, $v0, -0x4160
/* 0B7DC4 801216C4 080485EE */  j     .L801217B8
/* 0B7DC8 801216C8 AC820004 */   sw    $v0, 4($a0)

/* 0B7DCC 801216CC 3C03800A */  lui   $v1, 0x800a
/* 0B7DD0 801216D0 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7DD4 801216D4 8C620000 */  lw    $v0, ($v1)
/* 0B7DD8 801216D8 0040202D */  daddu $a0, $v0, $zero
/* 0B7DDC 801216DC 24420008 */  addiu $v0, $v0, 8
/* 0B7DE0 801216E0 AC620000 */  sw    $v0, ($v1)
/* 0B7DE4 801216E4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7DE8 801216E8 AC820000 */  sw    $v0, ($a0)
/* 0B7DEC 801216EC 3C028015 */  lui   $v0, 0x8015
/* 0B7DF0 801216F0 2442BEC8 */  addiu $v0, $v0, -0x4138
/* 0B7DF4 801216F4 080485EE */  j     .L801217B8
/* 0B7DF8 801216F8 AC820004 */   sw    $v0, 4($a0)

/* 0B7DFC 801216FC 3C03800A */  lui   $v1, 0x800a
/* 0B7E00 80121700 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7E04 80121704 8C620000 */  lw    $v0, ($v1)
/* 0B7E08 80121708 0040202D */  daddu $a0, $v0, $zero
/* 0B7E0C 8012170C 24420008 */  addiu $v0, $v0, 8
/* 0B7E10 80121710 AC620000 */  sw    $v0, ($v1)
/* 0B7E14 80121714 3C02DE00 */  lui   $v0, 0xde00
/* 0B7E18 80121718 AC820000 */  sw    $v0, ($a0)
/* 0B7E1C 8012171C 3C028015 */  lui   $v0, 0x8015
/* 0B7E20 80121720 2442BEF0 */  addiu $v0, $v0, -0x4110
/* 0B7E24 80121724 080485EE */  j     .L801217B8
/* 0B7E28 80121728 AC820004 */   sw    $v0, 4($a0)

/* 0B7E2C 8012172C 3C03800A */  lui   $v1, 0x800a
/* 0B7E30 80121730 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7E34 80121734 8C620000 */  lw    $v0, ($v1)
/* 0B7E38 80121738 0040202D */  daddu $a0, $v0, $zero
/* 0B7E3C 8012173C 24420008 */  addiu $v0, $v0, 8
/* 0B7E40 80121740 AC620000 */  sw    $v0, ($v1)
/* 0B7E44 80121744 3C02DE00 */  lui   $v0, 0xde00
/* 0B7E48 80121748 AC820000 */  sw    $v0, ($a0)
/* 0B7E4C 8012174C 3C028015 */  lui   $v0, 0x8015
/* 0B7E50 80121750 2442BF18 */  addiu $v0, $v0, -0x40e8
/* 0B7E54 80121754 080485EE */  j     .L801217B8
/* 0B7E58 80121758 AC820004 */   sw    $v0, 4($a0)

/* 0B7E5C 8012175C 3C03800A */  lui   $v1, 0x800a
/* 0B7E60 80121760 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7E64 80121764 8C620000 */  lw    $v0, ($v1)
/* 0B7E68 80121768 0040202D */  daddu $a0, $v0, $zero
/* 0B7E6C 8012176C 24420008 */  addiu $v0, $v0, 8
/* 0B7E70 80121770 AC620000 */  sw    $v0, ($v1)
/* 0B7E74 80121774 3C02DE00 */  lui   $v0, 0xde00
/* 0B7E78 80121778 AC820000 */  sw    $v0, ($a0)
/* 0B7E7C 8012177C 3C028015 */  lui   $v0, 0x8015
/* 0B7E80 80121780 2442BF40 */  addiu $v0, $v0, -0x40c0
/* 0B7E84 80121784 080485EE */  j     .L801217B8
/* 0B7E88 80121788 AC820004 */   sw    $v0, 4($a0)

/* 0B7E8C 8012178C 3C03800A */  lui   $v1, 0x800a
/* 0B7E90 80121790 2463A66C */  addiu $v1, $v1, -0x5994
/* 0B7E94 80121794 8C620000 */  lw    $v0, ($v1)
/* 0B7E98 80121798 0040202D */  daddu $a0, $v0, $zero
/* 0B7E9C 8012179C 24420008 */  addiu $v0, $v0, 8
/* 0B7EA0 801217A0 AC620000 */  sw    $v0, ($v1)
/* 0B7EA4 801217A4 3C02DE00 */  lui   $v0, 0xde00
/* 0B7EA8 801217A8 AC820000 */  sw    $v0, ($a0)
/* 0B7EAC 801217AC 3C028015 */  lui   $v0, 0x8015
/* 0B7EB0 801217B0 2442BF68 */  addiu $v0, $v0, -0x4098
/* 0B7EB4 801217B4 AC820004 */  sw    $v0, 4($a0)
.L801217B8:
/* 0B7EB8 801217B8 3C070001 */  lui   $a3, 1
/* 0B7EBC 801217BC 3C028015 */  lui   $v0, 0x8015
/* 0B7EC0 801217C0 8C424390 */  lw    $v0, 0x4390($v0)
/* 0B7EC4 801217C4 3C038015 */  lui   $v1, 0x8015
/* 0B7EC8 801217C8 8C63438C */  lw    $v1, 0x438c($v1)
/* 0B7ECC 801217CC 34E7F400 */  ori   $a3, $a3, 0xf400
/* 0B7ED0 801217D0 00431023 */  subu  $v0, $v0, $v1
/* 0B7ED4 801217D4 14400002 */  bnez  $v0, .L801217E0
/* 0B7ED8 801217D8 00E2001A */   div   $zero, $a3, $v0
/* 0B7EDC 801217DC 0007000D */  break 7
.L801217E0:
/* 0B7EE0 801217E0 2401FFFF */  addiu $at, $zero, -1
/* 0B7EE4 801217E4 14410004 */  bne   $v0, $at, .L801217F8
/* 0B7EE8 801217E8 3C018000 */   lui   $at, 0x8000
/* 0B7EEC 801217EC 14E10002 */  bne   $a3, $at, .L801217F8
/* 0B7EF0 801217F0 00000000 */   nop   
/* 0B7EF4 801217F4 0006000D */  break 6
.L801217F8:
/* 0B7EF8 801217F8 00003812 */  mflo  $a3
/* 0B7EFC 801217FC 240501F4 */  addiu $a1, $zero, 0x1f4
/* 0B7F00 80121800 00A32823 */  subu  $a1, $a1, $v1
/* 0B7F04 80121804 00052A00 */  sll   $a1, $a1, 8
/* 0B7F08 80121808 14400002 */  bnez  $v0, .L80121814
/* 0B7F0C 8012180C 00A2001A */   div   $zero, $a1, $v0
/* 0B7F10 80121810 0007000D */  break 7
.L80121814:
/* 0B7F14 80121814 2401FFFF */  addiu $at, $zero, -1
/* 0B7F18 80121818 14410004 */  bne   $v0, $at, .L8012182C
/* 0B7F1C 8012181C 3C018000 */   lui   $at, 0x8000
/* 0B7F20 80121820 14A10002 */  bne   $a1, $at, .L8012182C
/* 0B7F24 80121824 00000000 */   nop   
/* 0B7F28 80121828 0006000D */  break 6
.L8012182C:
/* 0B7F2C 8012182C 00002812 */  mflo  $a1
/* 0B7F30 80121830 3C08800A */  lui   $t0, 0x800a
/* 0B7F34 80121834 2508A66C */  addiu $t0, $t0, -0x5994
/* 0B7F38 80121838 8D060000 */  lw    $a2, ($t0)
/* 0B7F3C 8012183C 00C0482D */  daddu $t1, $a2, $zero
/* 0B7F40 80121840 24C60008 */  addiu $a2, $a2, 8
/* 0B7F44 80121844 3C02F800 */  lui   $v0, 0xf800
/* 0B7F48 80121848 AD060000 */  sw    $a2, ($t0)
/* 0B7F4C 8012184C AD220000 */  sw    $v0, ($t1)
/* 0B7F50 80121850 3C028015 */  lui   $v0, 0x8015
/* 0B7F54 80121854 9042437F */  lbu   $v0, 0x437f($v0)
/* 0B7F58 80121858 3C038015 */  lui   $v1, 0x8015
/* 0B7F5C 8012185C 90634383 */  lbu   $v1, 0x4383($v1)
/* 0B7F60 80121860 3C048015 */  lui   $a0, 0x8015
/* 0B7F64 80121864 90844387 */  lbu   $a0, 0x4387($a0)
/* 0B7F68 80121868 00021600 */  sll   $v0, $v0, 0x18
/* 0B7F6C 8012186C 00031C00 */  sll   $v1, $v1, 0x10
/* 0B7F70 80121870 00431025 */  or    $v0, $v0, $v1
/* 0B7F74 80121874 00042200 */  sll   $a0, $a0, 8
/* 0B7F78 80121878 3C038015 */  lui   $v1, 0x8015
/* 0B7F7C 8012187C 9063438B */  lbu   $v1, 0x438b($v1)
/* 0B7F80 80121880 00441025 */  or    $v0, $v0, $a0
/* 0B7F84 80121884 00431025 */  or    $v0, $v0, $v1
/* 0B7F88 80121888 AD220004 */  sw    $v0, 4($t1)
/* 0B7F8C 8012188C 24C20008 */  addiu $v0, $a2, 8
/* 0B7F90 80121890 AD020000 */  sw    $v0, ($t0)
/* 0B7F94 80121894 3C02DB08 */  lui   $v0, 0xdb08
/* 0B7F98 80121898 ACC20000 */  sw    $v0, ($a2)
/* 0B7F9C 8012189C 00073C00 */  sll   $a3, $a3, 0x10
/* 0B7FA0 801218A0 30A5FFFF */  andi  $a1, $a1, 0xffff
/* 0B7FA4 801218A4 00E53825 */  or    $a3, $a3, $a1
/* 0B7FA8 801218A8 ACC70004 */  sw    $a3, 4($a2)
.L801218AC:
/* 0B7FAC 801218AC 3C02D9FD */  lui   $v0, 0xd9fd
.L801218B0:
/* 0B7FB0 801218B0 3C06800A */  lui   $a2, 0x800a
/* 0B7FB4 801218B4 24C6A66C */  addiu $a2, $a2, -0x5994
/* 0B7FB8 801218B8 3442FFFF */  ori   $v0, $v0, 0xffff
/* 0B7FBC 801218BC 8CC50000 */  lw    $a1, ($a2)
/* 0B7FC0 801218C0 3C048015 */  lui   $a0, 0x8015
/* 0B7FC4 801218C4 8C844378 */  lw    $a0, 0x4378($a0)
/* 0B7FC8 801218C8 00A0182D */  daddu $v1, $a1, $zero
/* 0B7FCC 801218CC 24A50008 */  addiu $a1, $a1, 8
/* 0B7FD0 801218D0 ACC50000 */  sw    $a1, ($a2)
/* 0B7FD4 801218D4 AC620000 */  sw    $v0, ($v1)
/* 0B7FD8 801218D8 10800005 */  beqz  $a0, .L801218F0
/* 0B7FDC 801218DC AC600004 */   sw    $zero, 4($v1)
/* 0B7FE0 801218E0 8E420000 */  lw    $v0, ($s2)
/* 0B7FE4 801218E4 30420800 */  andi  $v0, $v0, 0x800
/* 0B7FE8 801218E8 1040000A */  beqz  $v0, .L80121914
/* 0B7FEC 801218EC 3C02FC12 */   lui   $v0, 0xfc12
.L801218F0:
/* 0B7FF0 801218F0 3C04FC12 */  lui   $a0, 0xfc12
/* 0B7FF4 801218F4 34841824 */  ori   $a0, $a0, 0x1824
/* 0B7FF8 801218F8 3C03FF33 */  lui   $v1, 0xff33
/* 0B7FFC 801218FC 3463FFFF */  ori   $v1, $v1, 0xffff
/* 0B8000 80121900 24A20008 */  addiu $v0, $a1, 8
/* 0B8004 80121904 ACC20000 */  sw    $v0, ($a2)
/* 0B8008 80121908 ACA40000 */  sw    $a0, ($a1)
/* 0B800C 8012190C 0804864B */  j     .L8012192C
/* 0B8010 80121910 ACA30004 */   sw    $v1, 4($a1)

.L80121914:
/* 0B8014 80121914 34421E04 */  ori   $v0, $v0, 0x1e04
/* 0B8018 80121918 24A30008 */  addiu $v1, $a1, 8
/* 0B801C 8012191C ACC30000 */  sw    $v1, ($a2)
/* 0B8020 80121920 ACA20000 */  sw    $v0, ($a1)
/* 0B8024 80121924 2402F3F8 */  addiu $v0, $zero, -0xc08
/* 0B8028 80121928 ACA20004 */  sw    $v0, 4($a1)
.L8012192C:
/* 0B802C 8012192C 8E42005C */  lw    $v0, 0x5c($s2)
/* 0B8030 80121930 10400012 */  beqz  $v0, .L8012197C
/* 0B8034 80121934 00000000 */   nop   
/* 0B8038 80121938 3C04800A */  lui   $a0, 0x800a
/* 0B803C 8012193C 2484A66C */  addiu $a0, $a0, -0x5994
/* 0B8040 80121940 8C830000 */  lw    $v1, ($a0)
/* 0B8044 80121944 3C028015 */  lui   $v0, 0x8015
/* 0B8048 80121948 8C424374 */  lw    $v0, 0x4374($v0)
/* 0B804C 8012194C 0060282D */  daddu $a1, $v1, $zero
/* 0B8050 80121950 24630008 */  addiu $v1, $v1, 8
/* 0B8054 80121954 00021080 */  sll   $v0, $v0, 2
/* 0B8058 80121958 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0B805C 8012195C AC830000 */  sw    $v1, ($a0)
/* 0B8060 80121960 3C03DB06 */  lui   $v1, 0xdb06
/* 0B8064 80121964 00431025 */  or    $v0, $v0, $v1
/* 0B8068 80121968 ACA20000 */  sw    $v0, ($a1)
/* 0B806C 8012196C 8E42005C */  lw    $v0, 0x5c($s2)
/* 0B8070 80121970 3C038000 */  lui   $v1, 0x8000
/* 0B8074 80121974 00431021 */  addu  $v0, $v0, $v1
/* 0B8078 80121978 ACA20004 */  sw    $v0, 4($a1)
.L8012197C:
/* 0B807C 8012197C 3C10800A */  lui   $s0, 0x800a
/* 0B8080 80121980 2610A66C */  addiu $s0, $s0, -0x5994
/* 0B8084 80121984 8E020000 */  lw    $v0, ($s0)
/* 0B8088 80121988 3C11E700 */  lui   $s1, 0xe700
/* 0B808C 8012198C 0040182D */  daddu $v1, $v0, $zero
/* 0B8090 80121990 AC710000 */  sw    $s1, ($v1)
/* 0B8094 80121994 AC600004 */  sw    $zero, 4($v1)
/* 0B8098 80121998 8E430060 */  lw    $v1, 0x60($s2)
/* 0B809C 8012199C 24420008 */  addiu $v0, $v0, 8
/* 0B80A0 801219A0 10600004 */  beqz  $v1, .L801219B4
/* 0B80A4 801219A4 AE020000 */   sw    $v0, ($s0)
/* 0B80A8 801219A8 8E440064 */  lw    $a0, 0x64($s2)
/* 0B80AC 801219AC 0060F809 */  jalr  $v1
/* 0B80B0 801219B0 00000000 */  nop   
.L801219B4:
/* 0B80B4 801219B4 3C05D838 */  lui   $a1, 0xd838
/* 0B80B8 801219B8 8E020000 */  lw    $v0, ($s0)
/* 0B80BC 801219BC 34A50002 */  ori   $a1, $a1, 2
/* 0B80C0 801219C0 0040182D */  daddu $v1, $v0, $zero
/* 0B80C4 801219C4 24420008 */  addiu $v0, $v0, 8
/* 0B80C8 801219C8 AE020000 */  sw    $v0, ($s0)
/* 0B80CC 801219CC AC710000 */  sw    $s1, ($v1)
/* 0B80D0 801219D0 AC600004 */  sw    $zero, 4($v1)
/* 0B80D4 801219D4 24430008 */  addiu $v1, $v0, 8
/* 0B80D8 801219D8 AE030000 */  sw    $v1, ($s0)
/* 0B80DC 801219DC 3C03DE00 */  lui   $v1, 0xde00
/* 0B80E0 801219E0 AC430000 */  sw    $v1, ($v0)
/* 0B80E4 801219E4 8E440014 */  lw    $a0, 0x14($s2)
/* 0B80E8 801219E8 24430010 */  addiu $v1, $v0, 0x10
/* 0B80EC 801219EC AE030000 */  sw    $v1, ($s0)
/* 0B80F0 801219F0 24030040 */  addiu $v1, $zero, 0x40
/* 0B80F4 801219F4 AC450008 */  sw    $a1, 8($v0)
/* 0B80F8 801219F8 AC43000C */  sw    $v1, 0xc($v0)
/* 0B80FC 801219FC AC510010 */  sw    $s1, 0x10($v0)
/* 0B8100 80121A00 AC400014 */  sw    $zero, 0x14($v0)
/* 0B8104 80121A04 AC440004 */  sw    $a0, 4($v0)
/* 0B8108 80121A08 8E430000 */  lw    $v1, ($s2)
/* 0B810C 80121A0C 24420018 */  addiu $v0, $v0, 0x18
/* 0B8110 80121A10 30630200 */  andi  $v1, $v1, 0x200
/* 0B8114 80121A14 106000AE */  beqz  $v1, .L80121CD0
/* 0B8118 80121A18 AE020000 */   sw    $v0, ($s0)
/* 0B811C 80121A1C 27A40010 */  addiu $a0, $sp, 0x10
/* 0B8120 80121A20 26510018 */  addiu $s1, $s2, 0x18
/* 0B8124 80121A24 0C019D60 */  jal   guMtxL2F
/* 0B8128 80121A28 0220282D */   daddu $a1, $s1, $zero
/* 0B812C 80121A2C 27B00050 */  addiu $s0, $sp, 0x50
/* 0B8130 80121A30 0C048450 */  jal   func_80121140
/* 0B8134 80121A34 0200202D */   daddu $a0, $s0, $zero
/* 0B8138 80121A38 27A40010 */  addiu $a0, $sp, 0x10
/* 0B813C 80121A3C 0200282D */  daddu $a1, $s0, $zero
/* 0B8140 80121A40 0C019D80 */  jal   guMtxCatF
/* 0B8144 80121A44 0080302D */   daddu $a2, $a0, $zero
/* 0B8148 80121A48 27A40010 */  addiu $a0, $sp, 0x10
/* 0B814C 80121A4C 0C019D40 */  jal   guMtxF2L
/* 0B8150 80121A50 0220282D */   daddu $a1, $s1, $zero
/* 0B8154 80121A54 3C040001 */  lui   $a0, 1
/* 0B8158 80121A58 34841630 */  ori   $a0, $a0, 0x1630
/* 0B815C 80121A5C 26450058 */  addiu $a1, $s2, 0x58
/* 0B8160 80121A60 3C028007 */  lui   $v0, 0x8007
/* 0B8164 80121A64 944241F0 */  lhu   $v0, 0x41f0($v0)
/* 0B8168 80121A68 3C03800A */  lui   $v1, 0x800a
/* 0B816C 80121A6C 8C63A674 */  lw    $v1, -0x598c($v1)
/* 0B8170 80121A70 00021180 */  sll   $v0, $v0, 6
/* 0B8174 80121A74 00621821 */  addu  $v1, $v1, $v0
/* 0B8178 80121A78 00641821 */  addu  $v1, $v1, $a0
.L80121A7C:
/* 0B817C 80121A7C 8E2E0000 */  lw    $t6, ($s1)
/* 0B8180 80121A80 8E2F0004 */  lw    $t7, 4($s1)
/* 0B8184 80121A84 8E380008 */  lw    $t8, 8($s1)
/* 0B8188 80121A88 8E39000C */  lw    $t9, 0xc($s1)
/* 0B818C 80121A8C AC6E0000 */  sw    $t6, ($v1)
/* 0B8190 80121A90 AC6F0004 */  sw    $t7, 4($v1)
/* 0B8194 80121A94 AC780008 */  sw    $t8, 8($v1)
/* 0B8198 80121A98 AC79000C */  sw    $t9, 0xc($v1)
/* 0B819C 80121A9C 26310010 */  addiu $s1, $s1, 0x10
/* 0B81A0 80121AA0 1625FFF6 */  bne   $s1, $a1, .L80121A7C
/* 0B81A4 80121AA4 24630010 */   addiu $v1, $v1, 0x10
/* 0B81A8 80121AA8 3C03DA38 */  lui   $v1, 0xda38
/* 0B81AC 80121AAC 34630002 */  ori   $v1, $v1, 2
/* 0B81B0 80121AB0 3C080001 */  lui   $t0, 1
/* 0B81B4 80121AB4 3C06800A */  lui   $a2, 0x800a
/* 0B81B8 80121AB8 24C6A66C */  addiu $a2, $a2, -0x5994
/* 0B81BC 80121ABC 35081630 */  ori   $t0, $t0, 0x1630
/* 0B81C0 80121AC0 3C058007 */  lui   $a1, 0x8007
/* 0B81C4 80121AC4 24A541F0 */  addiu $a1, $a1, 0x41f0
/* 0B81C8 80121AC8 8CC40000 */  lw    $a0, ($a2)
/* 0B81CC 80121ACC 94A20000 */  lhu   $v0, ($a1)
/* 0B81D0 80121AD0 0080382D */  daddu $a3, $a0, $zero
/* 0B81D4 80121AD4 24840008 */  addiu $a0, $a0, 8
/* 0B81D8 80121AD8 ACC40000 */  sw    $a0, ($a2)
/* 0B81DC 80121ADC ACE30000 */  sw    $v1, ($a3)
/* 0B81E0 80121AE0 24430001 */  addiu $v1, $v0, 1
/* 0B81E4 80121AE4 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0B81E8 80121AE8 00021180 */  sll   $v0, $v0, 6
/* 0B81EC 80121AEC A4A30000 */  sh    $v1, ($a1)
/* 0B81F0 80121AF0 3C03800A */  lui   $v1, 0x800a
/* 0B81F4 80121AF4 8C63A674 */  lw    $v1, -0x598c($v1)
/* 0B81F8 80121AF8 00481021 */  addu  $v0, $v0, $t0
/* 0B81FC 80121AFC 00621821 */  addu  $v1, $v1, $v0
/* 0B8200 80121B00 3C02DE00 */  lui   $v0, 0xde00
/* 0B8204 80121B04 ACE30004 */  sw    $v1, 4($a3)
/* 0B8208 80121B08 AC820000 */  sw    $v0, ($a0)
/* 0B820C 80121B0C 8E430014 */  lw    $v1, 0x14($s2)
/* 0B8210 80121B10 24820008 */  addiu $v0, $a0, 8
/* 0B8214 80121B14 ACC20000 */  sw    $v0, ($a2)
/* 0B8218 80121B18 08048724 */  j     .L80121C90
/* 0B821C 80121B1C AC830004 */   sw    $v1, 4($a0)

.L80121B20:
/* 0B8220 80121B20 3C03D9C0 */  lui   $v1, 0xd9c0
/* 0B8224 80121B24 3463F9FA */  ori   $v1, $v1, 0xf9fa
/* 0B8228 80121B28 3C05D9FF */  lui   $a1, 0xd9ff
/* 0B822C 80121B2C 34A5FFFF */  ori   $a1, $a1, 0xffff
/* 0B8230 80121B30 3C040022 */  lui   $a0, 0x22
/* 0B8234 80121B34 34840005 */  ori   $a0, $a0, 5
/* 0B8238 80121B38 3C06DC08 */  lui   $a2, 0xdc08
/* 0B823C 80121B3C 34C6060A */  ori   $a2, $a2, 0x60a
/* 0B8240 80121B40 3C07DC08 */  lui   $a3, 0xdc08
/* 0B8244 80121B44 34E7090A */  ori   $a3, $a3, 0x90a
/* 0B8248 80121B48 3C08D700 */  lui   $t0, 0xd700
/* 0B824C 80121B4C 35080002 */  ori   $t0, $t0, 2
/* 0B8250 80121B50 3C0AE200 */  lui   $t2, 0xe200
/* 0B8254 80121B54 354A1E01 */  ori   $t2, $t2, 0x1e01
/* 0B8258 80121B58 3C0BE300 */  lui   $t3, 0xe300
/* 0B825C 80121B5C 356B0A11 */  ori   $t3, $t3, 0xa11
/* 0B8260 80121B60 3C090008 */  lui   $t1, 8
/* 0B8264 80121B64 35292CF0 */  ori   $t1, $t1, 0x2cf0
/* 0B8268 80121B68 25820008 */  addiu $v0, $t4, 8
/* 0B826C 80121B6C ADA20000 */  sw    $v0, ($t5)
/* 0B8270 80121B70 3C02E700 */  lui   $v0, 0xe700
/* 0B8274 80121B74 AD820000 */  sw    $v0, ($t4)
/* 0B8278 80121B78 25820010 */  addiu $v0, $t4, 0x10
/* 0B827C 80121B7C AD800004 */  sw    $zero, 4($t4)
/* 0B8280 80121B80 ADA20000 */  sw    $v0, ($t5)
/* 0B8284 80121B84 25820018 */  addiu $v0, $t4, 0x18
/* 0B8288 80121B88 AD830008 */  sw    $v1, 8($t4)
/* 0B828C 80121B8C AD80000C */  sw    $zero, 0xc($t4)
/* 0B8290 80121B90 ADA20000 */  sw    $v0, ($t5)
/* 0B8294 80121B94 25820020 */  addiu $v0, $t4, 0x20
/* 0B8298 80121B98 AD850010 */  sw    $a1, 0x10($t4)
/* 0B829C 80121B9C AD840014 */  sw    $a0, 0x14($t4)
/* 0B82A0 80121BA0 ADA20000 */  sw    $v0, ($t5)
/* 0B82A4 80121BA4 3C02DB02 */  lui   $v0, 0xdb02
/* 0B82A8 80121BA8 AD820018 */  sw    $v0, 0x18($t4)
/* 0B82AC 80121BAC 24020018 */  addiu $v0, $zero, 0x18
/* 0B82B0 80121BB0 AD82001C */  sw    $v0, 0x1c($t4)
/* 0B82B4 80121BB4 25820028 */  addiu $v0, $t4, 0x28
/* 0B82B8 80121BB8 ADA20000 */  sw    $v0, ($t5)
/* 0B82BC 80121BBC 3C028015 */  lui   $v0, 0x8015
/* 0B82C0 80121BC0 2442C270 */  addiu $v0, $v0, -0x3d90
/* 0B82C4 80121BC4 AD820024 */  sw    $v0, 0x24($t4)
/* 0B82C8 80121BC8 2442FFF8 */  addiu $v0, $v0, -8
/* 0B82CC 80121BCC AD82002C */  sw    $v0, 0x2c($t4)
/* 0B82D0 80121BD0 2402FFFF */  addiu $v0, $zero, -1
/* 0B82D4 80121BD4 AD860020 */  sw    $a2, 0x20($t4)
/* 0B82D8 80121BD8 AD870028 */  sw    $a3, 0x28($t4)
/* 0B82DC 80121BDC AD880030 */  sw    $t0, 0x30($t4)
/* 0B82E0 80121BE0 AD820034 */  sw    $v0, 0x34($t4)
/* 0B82E4 80121BE4 AD8A0038 */  sw    $t2, 0x38($t4)
/* 0B82E8 80121BE8 AD80003C */  sw    $zero, 0x3c($t4)
/* 0B82EC 80121BEC AD8B0040 */  sw    $t3, 0x40($t4)
/* 0B82F0 80121BF0 AD890044 */  sw    $t1, 0x44($t4)
/* 0B82F4 80121BF4 8E460014 */  lw    $a2, 0x14($s2)
/* 0B82F8 80121BF8 25820030 */  addiu $v0, $t4, 0x30
/* 0B82FC 80121BFC ADA20000 */  sw    $v0, ($t5)
/* 0B8300 80121C00 25820038 */  addiu $v0, $t4, 0x38
/* 0B8304 80121C04 8CC30000 */  lw    $v1, ($a2)
/* 0B8308 80121C08 27B000A8 */  addiu $s0, $sp, 0xa8
/* 0B830C 80121C0C ADA20000 */  sw    $v0, ($t5)
/* 0B8310 80121C10 AFA30090 */  sw    $v1, 0x90($sp)
/* 0B8314 80121C14 8CC30004 */  lw    $v1, 4($a2)
/* 0B8318 80121C18 25820040 */  addiu $v0, $t4, 0x40
/* 0B831C 80121C1C ADA20000 */  sw    $v0, ($t5)
/* 0B8320 80121C20 AFA30094 */  sw    $v1, 0x94($sp)
/* 0B8324 80121C24 94C3000A */  lhu   $v1, 0xa($a2)
/* 0B8328 80121C28 25820048 */  addiu $v0, $t4, 0x48
/* 0B832C 80121C2C ADA20000 */  sw    $v0, ($t5)
/* 0B8330 80121C30 A7A30098 */  sh    $v1, 0x98($sp)
/* 0B8334 80121C34 94C2000E */  lhu   $v0, 0xe($a2)
/* 0B8338 80121C38 0200202D */  daddu $a0, $s0, $zero
/* 0B833C 80121C3C A7A2009A */  sh    $v0, 0x9a($sp)
/* 0B8340 80121C40 8CC20008 */  lw    $v0, 8($a2)
/* 0B8344 80121C44 26450018 */  addiu $a1, $s2, 0x18
/* 0B8348 80121C48 00021023 */  negu  $v0, $v0
/* 0B834C 80121C4C 00021FC2 */  srl   $v1, $v0, 0x1f
/* 0B8350 80121C50 00431021 */  addu  $v0, $v0, $v1
/* 0B8354 80121C54 00021043 */  sra   $v0, $v0, 1
/* 0B8358 80121C58 A7A2009C */  sh    $v0, 0x9c($sp)
/* 0B835C 80121C5C 8CC2000C */  lw    $v0, 0xc($a2)
/* 0B8360 80121C60 240300FF */  addiu $v1, $zero, 0xff
/* 0B8364 80121C64 A3A300A0 */  sb    $v1, 0xa0($sp)
/* 0B8368 80121C68 00021FC2 */  srl   $v1, $v0, 0x1f
/* 0B836C 80121C6C 00431021 */  addu  $v0, $v0, $v1
/* 0B8370 80121C70 00021043 */  sra   $v0, $v0, 1
/* 0B8374 80121C74 0C019D60 */  jal   guMtxL2F
/* 0B8378 80121C78 A7A2009E */   sh    $v0, 0x9e($sp)
/* 0B837C 80121C7C 0000202D */  daddu $a0, $zero, $zero
/* 0B8380 80121C80 27A50090 */  addiu $a1, $sp, 0x90
/* 0B8384 80121C84 0080302D */  daddu $a2, $a0, $zero
/* 0B8388 80121C88 0C04EBDC */  jal   func_8013AF70
/* 0B838C 80121C8C 0200382D */   daddu $a3, $s0, $zero
.L80121C90:
/* 0B8390 80121C90 3C03D838 */  lui   $v1, 0xd838
/* 0B8394 80121C94 3C04800A */  lui   $a0, 0x800a
/* 0B8398 80121C98 2484A66C */  addiu $a0, $a0, -0x5994
/* 0B839C 80121C9C 8C820000 */  lw    $v0, ($a0)
/* 0B83A0 80121CA0 34630002 */  ori   $v1, $v1, 2
/* 0B83A4 80121CA4 0040282D */  daddu $a1, $v0, $zero
/* 0B83A8 80121CA8 24420008 */  addiu $v0, $v0, 8
/* 0B83AC 80121CAC AC820000 */  sw    $v0, ($a0)
/* 0B83B0 80121CB0 ACA30000 */  sw    $v1, ($a1)
/* 0B83B4 80121CB4 24030040 */  addiu $v1, $zero, 0x40
/* 0B83B8 80121CB8 ACA30004 */  sw    $v1, 4($a1)
/* 0B83BC 80121CBC 24430008 */  addiu $v1, $v0, 8
/* 0B83C0 80121CC0 AC830000 */  sw    $v1, ($a0)
/* 0B83C4 80121CC4 3C03E700 */  lui   $v1, 0xe700
/* 0B83C8 80121CC8 AC430000 */  sw    $v1, ($v0)
/* 0B83CC 80121CCC AC400004 */  sw    $zero, 4($v0)
.L80121CD0:
/* 0B83D0 80121CD0 8FBF00F4 */  lw    $ra, 0xf4($sp)
/* 0B83D4 80121CD4 8FB200F0 */  lw    $s2, 0xf0($sp)
/* 0B83D8 80121CD8 8FB100EC */  lw    $s1, 0xec($sp)
/* 0B83DC 80121CDC 8FB000E8 */  lw    $s0, 0xe8($sp)
/* 0B83E0 80121CE0 03E00008 */  jr    $ra
/* 0B83E4 80121CE4 27BD00F8 */   addiu $sp, $sp, 0xf8

