.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8004C884
/* 027C84 8004C884 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 027C88 8004C888 AFB20018 */  sw    $s2, 0x18($sp)
/* 027C8C 8004C88C 0080902D */  daddu $s2, $a0, $zero
/* 027C90 8004C890 AFB00010 */  sw    $s0, 0x10($sp)
/* 027C94 8004C894 00A0802D */  daddu $s0, $a1, $zero
/* 027C98 8004C898 AFB10014 */  sw    $s1, 0x14($sp)
/* 027C9C 8004C89C 00C0882D */  daddu $s1, $a2, $zero
/* 027CA0 8004C8A0 AFB3001C */  sw    $s3, 0x1c($sp)
/* 027CA4 8004C8A4 0000982D */  daddu $s3, $zero, $zero
/* 027CA8 8004C8A8 AFB40020 */  sw    $s4, 0x20($sp)
/* 027CAC 8004C8AC AFBF0028 */  sw    $ra, 0x28($sp)
/* 027CB0 8004C8B0 AFB50024 */  sw    $s5, 0x24($sp)
/* 027CB4 8004C8B4 920300A9 */  lbu   $v1, 0xa9($s0)
/* 027CB8 8004C8B8 24020001 */  addiu $v0, $zero, 1
/* 027CBC 8004C8BC 14620008 */  bne   $v1, $v0, .L8004C8E0
/* 027CC0 8004C8C0 00E0A02D */   daddu $s4, $a3, $zero
/* 027CC4 8004C8C4 A20000A9 */  sb    $zero, 0xa9($s0)
/* 027CC8 8004C8C8 92230045 */  lbu   $v1, 0x45($s1)
/* 027CCC 8004C8CC 924200BC */  lbu   $v0, 0xbc($s2)
/* 027CD0 8004C8D0 14620003 */  bne   $v1, $v0, .L8004C8E0
/* 027CD4 8004C8D4 0220202D */   daddu $a0, $s1, $zero
/* 027CD8 8004C8D8 0C014E31 */  jal   func_800538C4
/* 027CDC 8004C8DC 328500FF */   andi  $a1, $s4, 0xff
.L8004C8E0:
/* 027CE0 8004C8E0 8E030080 */  lw    $v1, 0x80($s0)
/* 027CE4 8004C8E4 10600008 */  beqz  $v1, .L8004C908
/* 027CE8 8004C8E8 24020001 */   addiu $v0, $zero, 1
/* 027CEC 8004C8EC 92040085 */  lbu   $a0, 0x85($s0)
/* 027CF0 8004C8F0 14820005 */  bne   $a0, $v0, .L8004C908
/* 027CF4 8004C8F4 00000000 */   nop   
/* 027CF8 8004C8F8 AE030000 */  sw    $v1, ($s0)
/* 027CFC 8004C8FC AE000080 */  sw    $zero, 0x80($s0)
/* 027D00 8004C900 A2000085 */  sb    $zero, 0x85($s0)
/* 027D04 8004C904 A604008E */  sh    $a0, 0x8e($s0)
.L8004C908:
/* 027D08 8004C908 92030085 */  lbu   $v1, 0x85($s0)
/* 027D0C 8004C90C 24020002 */  addiu $v0, $zero, 2
/* 027D10 8004C910 14620004 */  bne   $v1, $v0, .L8004C924
/* 027D14 8004C914 24020001 */   addiu $v0, $zero, 1
/* 027D18 8004C918 9603005E */  lhu   $v1, 0x5e($s0)
/* 027D1C 8004C91C A2020055 */  sb    $v0, 0x55($s0)
/* 027D20 8004C920 A603005C */  sh    $v1, 0x5c($s0)
.L8004C924:
/* 027D24 8004C924 9602008E */  lhu   $v0, 0x8e($s0)
/* 027D28 8004C928 2442FFFF */  addiu $v0, $v0, -1
/* 027D2C 8004C92C A602008E */  sh    $v0, 0x8e($s0)
/* 027D30 8004C930 3042FFFF */  andi  $v0, $v0, 0xffff
/* 027D34 8004C934 14400090 */  bnez  $v0, .L8004CB78
/* 027D38 8004C938 00000000 */   nop   
/* 027D3C 8004C93C 3C158008 */  lui   $s5, 0x8008
/* 027D40 8004C940 26B58400 */  addiu $s5, $s5, -0x7c00
.L8004C944:
/* 027D44 8004C944 8E040000 */  lw    $a0, ($s0)
/* 027D48 8004C948 90860000 */  lbu   $a2, ($a0)
/* 027D4C 8004C94C 24840001 */  addiu $a0, $a0, 1
/* 027D50 8004C950 00061600 */  sll   $v0, $a2, 0x18
/* 027D54 8004C954 0440001D */  bltz  $v0, .L8004C9CC
/* 027D58 8004C958 AE040000 */   sw    $a0, ($s0)
/* 027D5C 8004C95C 30C200FF */  andi  $v0, $a2, 0xff
/* 027D60 8004C960 1440000D */  bnez  $v0, .L8004C998
/* 027D64 8004C964 2C420078 */   sltiu $v0, $v0, 0x78
/* 027D68 8004C968 92230045 */  lbu   $v1, 0x45($s1)
/* 027D6C 8004C96C 924200BC */  lbu   $v0, 0xbc($s2)
/* 027D70 8004C970 54620005 */  bnel  $v1, $v0, .L8004C988
/* 027D74 8004C974 AE000000 */   sw    $zero, ($s0)
/* 027D78 8004C978 0220202D */  daddu $a0, $s1, $zero
/* 027D7C 8004C97C 0C014E31 */  jal   func_800538C4
/* 027D80 8004C980 328500FF */   andi  $a1, $s4, 0xff
/* 027D84 8004C984 AE000000 */  sw    $zero, ($s0)
.L8004C988:
/* 027D88 8004C988 A6000096 */  sh    $zero, 0x96($s0)
/* 027D8C 8004C98C A2000098 */  sb    $zero, 0x98($s0)
/* 027D90 8004C990 0801335C */  j     .L8004CD70
/* 027D94 8004C994 A2000099 */   sb    $zero, 0x99($s0)

.L8004C998:
/* 027D98 8004C998 1440000A */  bnez  $v0, .L8004C9C4
/* 027D9C 8004C99C 30C200FF */   andi  $v0, $a2, 0xff
/* 027DA0 8004C9A0 90830000 */  lbu   $v1, ($a0)
/* 027DA4 8004C9A4 24820001 */  addiu $v0, $a0, 1
/* 027DA8 8004C9A8 AE020000 */  sw    $v0, ($s0)
/* 027DAC 8004C9AC 30C20007 */  andi  $v0, $a2, 7
/* 027DB0 8004C9B0 00021200 */  sll   $v0, $v0, 8
/* 027DB4 8004C9B4 00621821 */  addu  $v1, $v1, $v0
/* 027DB8 8004C9B8 24630078 */  addiu $v1, $v1, 0x78
/* 027DBC 8004C9BC 080132DB */  j     .L8004CB6C
/* 027DC0 8004C9C0 A603008E */   sh    $v1, 0x8e($s0)

.L8004C9C4:
/* 027DC4 8004C9C4 080132DB */  j     .L8004CB6C
/* 027DC8 8004C9C8 A602008E */   sh    $v0, 0x8e($s0)

.L8004C9CC:
/* 027DCC 8004C9CC 30C300FF */  andi  $v1, $a2, 0xff
/* 027DD0 8004C9D0 2C6200D8 */  sltiu $v0, $v1, 0xd8
/* 027DD4 8004C9D4 1040005D */  beqz  $v0, .L8004CB4C
/* 027DD8 8004C9D8 0240202D */   daddu $a0, $s2, $zero
/* 027DDC 8004C9DC 920200A1 */  lbu   $v0, 0xa1($s0)
/* 027DE0 8004C9E0 1040000B */  beqz  $v0, .L8004CA10
/* 027DE4 8004C9E4 0040282D */   daddu $a1, $v0, $zero
/* 027DE8 8004C9E8 30C2007F */  andi  $v0, $a2, 0x7f
/* 027DEC 8004C9EC 00023040 */  sll   $a2, $v0, 1
/* 027DF0 8004C9F0 00C23021 */  addu  $a2, $a2, $v0
/* 027DF4 8004C9F4 000630C0 */  sll   $a2, $a2, 3
/* 027DF8 8004C9F8 00C23021 */  addu  $a2, $a2, $v0
/* 027DFC 8004C9FC 8E440060 */  lw    $a0, 0x60($s2)
/* 027E00 8004CA00 0C01350A */  jal   func_8004D428
/* 027E04 8004CA04 00063080 */   sll   $a2, $a2, 2
/* 027E08 8004CA08 0801328A */  j     .L8004CA28
/* 027E0C 8004CA0C 00021400 */   sll   $v0, $v0, 0x10

.L8004CA10:
/* 027E10 8004CA10 30C3007F */  andi  $v1, $a2, 0x7f
/* 027E14 8004CA14 00031040 */  sll   $v0, $v1, 1
/* 027E18 8004CA18 00431021 */  addu  $v0, $v0, $v1
/* 027E1C 8004CA1C 000210C0 */  sll   $v0, $v0, 3
/* 027E20 8004CA20 00431021 */  addu  $v0, $v0, $v1
/* 027E24 8004CA24 00021480 */  sll   $v0, $v0, 0x12
.L8004CA28:
/* 027E28 8004CA28 AE020060 */  sw    $v0, 0x60($s0)
/* 027E2C 8004CA2C 920200A2 */  lbu   $v0, 0xa2($s0)
/* 027E30 8004CA30 10400009 */  beqz  $v0, .L8004CA58
/* 027E34 8004CA34 00000000 */   nop   
/* 027E38 8004CA38 8E020000 */  lw    $v0, ($s0)
/* 027E3C 8004CA3C 8E440060 */  lw    $a0, 0x60($s2)
/* 027E40 8004CA40 90460000 */  lbu   $a2, ($v0)
/* 027E44 8004CA44 920500A2 */  lbu   $a1, 0xa2($s0)
/* 027E48 8004CA48 0C013521 */  jal   func_8004D484
/* 027E4C 8004CA4C 30C6007F */   andi  $a2, $a2, 0x7f
/* 027E50 8004CA50 0801329A */  j     .L8004CA68
/* 027E54 8004CA54 A202009F */   sb    $v0, 0x9f($s0)

.L8004CA58:
/* 027E58 8004CA58 8E020000 */  lw    $v0, ($s0)
/* 027E5C 8004CA5C 90420000 */  lbu   $v0, ($v0)
/* 027E60 8004CA60 3042007F */  andi  $v0, $v0, 0x7f
/* 027E64 8004CA64 A202009F */  sb    $v0, 0x9f($s0)
.L8004CA68:
/* 027E68 8004CA68 8E040000 */  lw    $a0, ($s0)
/* 027E6C 8004CA6C 90850001 */  lbu   $a1, 1($a0)
/* 027E70 8004CA70 2CA200C0 */  sltiu $v0, $a1, 0xc0
/* 027E74 8004CA74 14400009 */  bnez  $v0, .L8004CA9C
/* 027E78 8004CA78 24820002 */   addiu $v0, $a0, 2
/* 027E7C 8004CA7C 90830002 */  lbu   $v1, 2($a0)
/* 027E80 8004CA80 24820003 */  addiu $v0, $a0, 3
/* 027E84 8004CA84 AE020000 */  sw    $v0, ($s0)
/* 027E88 8004CA88 30A2003F */  andi  $v0, $a1, 0x3f
/* 027E8C 8004CA8C 00021200 */  sll   $v0, $v0, 8
/* 027E90 8004CA90 00621821 */  addu  $v1, $v1, $v0
/* 027E94 8004CA94 080132A8 */  j     .L8004CAA0
/* 027E98 8004CA98 246500C0 */   addiu $a1, $v1, 0xc0

.L8004CA9C:
/* 027E9C 8004CA9C AE020000 */  sw    $v0, ($s0)
.L8004CAA0:
/* 027EA0 8004CAA0 A6050090 */  sh    $a1, 0x90($s0)
/* 027EA4 8004CAA4 92230045 */  lbu   $v1, 0x45($s1)
/* 027EA8 8004CAA8 924200BC */  lbu   $v0, 0xbc($s2)
/* 027EAC 8004CAAC 0043102B */  sltu  $v0, $v0, $v1
/* 027EB0 8004CAB0 1440002E */  bnez  $v0, .L8004CB6C
/* 027EB4 8004CAB4 0220202D */   daddu $a0, $s1, $zero
/* 027EB8 8004CAB8 0C014E22 */  jal   func_80053888
/* 027EBC 8004CABC 328500FF */   andi  $a1, $s4, 0xff
/* 027EC0 8004CAC0 9202009A */  lbu   $v0, 0x9a($s0)
/* 027EC4 8004CAC4 30420008 */  andi  $v0, $v0, 8
/* 027EC8 8004CAC8 14400004 */  bnez  $v0, .L8004CADC
/* 027ECC 8004CACC 00000000 */   nop   
/* 027ED0 8004CAD0 920200A8 */  lbu   $v0, 0xa8($s0)
/* 027ED4 8004CAD4 54400003 */  bnel  $v0, $zero, .L8004CAE4
/* 027ED8 8004CAD8 A222000E */   sb    $v0, 0xe($s1)
.L8004CADC:
/* 027EDC 8004CADC 9202009B */  lbu   $v0, 0x9b($s0)
/* 027EE0 8004CAE0 A222000E */  sb    $v0, 0xe($s1)
.L8004CAE4:
/* 027EE4 8004CAE4 0220202D */  daddu $a0, $s1, $zero
/* 027EE8 8004CAE8 0240282D */  daddu $a1, $s2, $zero
/* 027EEC 8004CAEC 9202009C */  lbu   $v0, 0x9c($s0)
/* 027EF0 8004CAF0 0200302D */  daddu $a2, $s0, $zero
/* 027EF4 8004CAF4 0C013365 */  jal   func_8004CD94
/* 027EF8 8004CAF8 A222000F */   sb    $v0, 0xf($s1)
/* 027EFC 8004CAFC 8E020018 */  lw    $v0, 0x18($s0)
/* 027F00 8004CB00 54400003 */  bnel  $v0, $zero, .L8004CB10
/* 027F04 8004CB04 AE220014 */   sw    $v0, 0x14($s1)
/* 027F08 8004CB08 8E020010 */  lw    $v0, 0x10($s0)
/* 027F0C 8004CB0C AE220014 */  sw    $v0, 0x14($s1)
.L8004CB10:
/* 027F10 8004CB10 8E020014 */  lw    $v0, 0x14($s0)
/* 027F14 8004CB14 AE220018 */  sw    $v0, 0x18($s1)
/* 027F18 8004CB18 8E02001C */  lw    $v0, 0x1c($s0)
/* 027F1C 8004CB1C AE220000 */  sw    $v0, ($s1)
/* 027F20 8004CB20 924200BE */  lbu   $v0, 0xbe($s2)
/* 027F24 8004CB24 A2220010 */  sb    $v0, 0x10($s1)
/* 027F28 8004CB28 924300BC */  lbu   $v1, 0xbc($s2)
/* 027F2C 8004CB2C 24020002 */  addiu $v0, $zero, 2
/* 027F30 8004CB30 A2220043 */  sb    $v0, 0x43($s1)
/* 027F34 8004CB34 A2230045 */  sb    $v1, 0x45($s1)
/* 027F38 8004CB38 924200BC */  lbu   $v0, 0xbc($s2)
/* 027F3C 8004CB3C 24130001 */  addiu $s3, $zero, 1
/* 027F40 8004CB40 A2220044 */  sb    $v0, 0x44($s1)
/* 027F44 8004CB44 080132DB */  j     .L8004CB6C
/* 027F48 8004CB48 A2130054 */   sb    $s3, 0x54($s0)

.L8004CB4C:
/* 027F4C 8004CB4C 2462FF20 */  addiu $v0, $v1, -0xe0
/* 027F50 8004CB50 00021080 */  sll   $v0, $v0, 2
/* 027F54 8004CB54 00551021 */  addu  $v0, $v0, $s5
/* 027F58 8004CB58 8C420000 */  lw    $v0, ($v0)
/* 027F5C 8004CB5C 3C01800A */  lui   $at, 0x800a
/* 027F60 8004CB60 AC22A5D4 */  sw    $v0, -0x5a2c($at)
/* 027F64 8004CB64 0040F809 */  jalr  $v0
/* 027F68 8004CB68 0200282D */  daddu $a1, $s0, $zero
.L8004CB6C:
/* 027F6C 8004CB6C 9602008E */  lhu   $v0, 0x8e($s0)
/* 027F70 8004CB70 1040FF74 */  beqz  $v0, .L8004C944
/* 027F74 8004CB74 00000000 */   nop   
.L8004CB78:
/* 027F78 8004CB78 86020074 */  lh    $v0, 0x74($s0)
/* 027F7C 8004CB7C 96030074 */  lhu   $v1, 0x74($s0)
/* 027F80 8004CB80 1040000E */  beqz  $v0, .L8004CBBC
/* 027F84 8004CB84 2462FFFF */   addiu $v0, $v1, -1
/* 027F88 8004CB88 A6020074 */  sh    $v0, 0x74($s0)
/* 027F8C 8004CB8C 00021400 */  sll   $v0, $v0, 0x10
/* 027F90 8004CB90 10400005 */  beqz  $v0, .L8004CBA8
/* 027F94 8004CB94 00000000 */   nop   
/* 027F98 8004CB98 8E02006C */  lw    $v0, 0x6c($s0)
/* 027F9C 8004CB9C 8E030070 */  lw    $v1, 0x70($s0)
/* 027FA0 8004CBA0 080132EC */  j     .L8004CBB0
/* 027FA4 8004CBA4 00431021 */   addu  $v0, $v0, $v1

.L8004CBA8:
/* 027FA8 8004CBA8 86020076 */  lh    $v0, 0x76($s0)
/* 027FAC 8004CBAC 00021400 */  sll   $v0, $v0, 0x10
.L8004CBB0:
/* 027FB0 8004CBB0 AE02006C */  sw    $v0, 0x6c($s0)
/* 027FB4 8004CBB4 24020001 */  addiu $v0, $zero, 1
/* 027FB8 8004CBB8 A2020055 */  sb    $v0, 0x55($s0)
.L8004CBBC:
/* 027FBC 8004CBBC 16600031 */  bnez  $s3, .L8004CC84
/* 027FC0 8004CBC0 00000000 */   nop   
/* 027FC4 8004CBC4 96020090 */  lhu   $v0, 0x90($s0)
/* 027FC8 8004CBC8 1040000C */  beqz  $v0, .L8004CBFC
/* 027FCC 8004CBCC 2442FFFF */   addiu $v0, $v0, -1
/* 027FD0 8004CBD0 A6020090 */  sh    $v0, 0x90($s0)
/* 027FD4 8004CBD4 3042FFFF */  andi  $v0, $v0, 0xffff
/* 027FD8 8004CBD8 14400008 */  bnez  $v0, .L8004CBFC
/* 027FDC 8004CBDC 00000000 */   nop   
/* 027FE0 8004CBE0 92230045 */  lbu   $v1, 0x45($s1)
/* 027FE4 8004CBE4 924200BC */  lbu   $v0, 0xbc($s2)
/* 027FE8 8004CBE8 14620004 */  bne   $v1, $v0, .L8004CBFC
/* 027FEC 8004CBEC 00000000 */   nop   
/* 027FF0 8004CBF0 9222003D */  lbu   $v0, 0x3d($s1)
/* 027FF4 8004CBF4 34420010 */  ori   $v0, $v0, 0x10
/* 027FF8 8004CBF8 A222003D */  sb    $v0, 0x3d($s1)
.L8004CBFC:
/* 027FFC 8004CBFC 86020068 */  lh    $v0, 0x68($s0)
/* 028000 8004CC00 96030068 */  lhu   $v1, 0x68($s0)
/* 028004 8004CC04 1040000E */  beqz  $v0, .L8004CC40
/* 028008 8004CC08 2462FFFF */   addiu $v0, $v1, -1
/* 02800C 8004CC0C A6020068 */  sh    $v0, 0x68($s0)
/* 028010 8004CC10 00021400 */  sll   $v0, $v0, 0x10
/* 028014 8004CC14 10400005 */  beqz  $v0, .L8004CC2C
/* 028018 8004CC18 00000000 */   nop   
/* 02801C 8004CC1C 8E020060 */  lw    $v0, 0x60($s0)
/* 028020 8004CC20 8E030064 */  lw    $v1, 0x64($s0)
/* 028024 8004CC24 0801330D */  j     .L8004CC34
/* 028028 8004CC28 00431021 */   addu  $v0, $v0, $v1

.L8004CC2C:
/* 02802C 8004CC2C 8602006A */  lh    $v0, 0x6a($s0)
/* 028030 8004CC30 00021400 */  sll   $v0, $v0, 0x10
.L8004CC34:
/* 028034 8004CC34 AE020060 */  sw    $v0, 0x60($s0)
/* 028038 8004CC38 24020001 */  addiu $v0, $zero, 1
/* 02803C 8004CC3C A2020054 */  sb    $v0, 0x54($s0)
.L8004CC40:
/* 028040 8004CC40 96020056 */  lhu   $v0, 0x56($s0)
/* 028044 8004CC44 1040000F */  beqz  $v0, .L8004CC84
/* 028048 8004CC48 00000000 */   nop   
/* 02804C 8004CC4C 9202009A */  lbu   $v0, 0x9a($s0)
/* 028050 8004CC50 30420008 */  andi  $v0, $v0, 8
/* 028054 8004CC54 14400004 */  bnez  $v0, .L8004CC68
/* 028058 8004CC58 00000000 */   nop   
/* 02805C 8004CC5C 920200A8 */  lbu   $v0, 0xa8($s0)
/* 028060 8004CC60 54400003 */  bnel  $v0, $zero, .L8004CC70
/* 028064 8004CC64 A222000E */   sb    $v0, 0xe($s1)
.L8004CC68:
/* 028068 8004CC68 9202009B */  lbu   $v0, 0x9b($s0)
/* 02806C 8004CC6C A222000E */  sb    $v0, 0xe($s1)
.L8004CC70:
/* 028070 8004CC70 92220043 */  lbu   $v0, 0x43($s1)
/* 028074 8004CC74 34420010 */  ori   $v0, $v0, 0x10
/* 028078 8004CC78 A2220043 */  sb    $v0, 0x43($s1)
/* 02807C 8004CC7C 9202009C */  lbu   $v0, 0x9c($s0)
/* 028080 8004CC80 A222000F */  sb    $v0, 0xf($s1)
.L8004CC84:
/* 028084 8004CC84 92020055 */  lbu   $v0, 0x55($s0)
/* 028088 8004CC88 1040000B */  beqz  $v0, .L8004CCB8
/* 02808C 8004CC8C 00000000 */   nop   
/* 028090 8004CC90 92230045 */  lbu   $v1, 0x45($s1)
/* 028094 8004CC94 924200BC */  lbu   $v0, 0xbc($s2)
/* 028098 8004CC98 14620007 */  bne   $v1, $v0, .L8004CCB8
/* 02809C 8004CC9C 0220202D */   daddu $a0, $s1, $zero
/* 0280A0 8004CCA0 0240282D */  daddu $a1, $s2, $zero
/* 0280A4 8004CCA4 0C013365 */  jal   func_8004CD94
/* 0280A8 8004CCA8 0200302D */   daddu $a2, $s0, $zero
/* 0280AC 8004CCAC 9222003D */  lbu   $v0, 0x3d($s1)
/* 0280B0 8004CCB0 34420020 */  ori   $v0, $v0, 0x20
/* 0280B4 8004CCB4 A222003D */  sb    $v0, 0x3d($s1)
.L8004CCB8:
/* 0280B8 8004CCB8 92020054 */  lbu   $v0, 0x54($s0)
/* 0280BC 8004CCBC 5040002C */  beql  $v0, $zero, .L8004CD70
/* 0280C0 8004CCC0 AE000054 */   sw    $zero, 0x54($s0)
/* 0280C4 8004CCC4 9202009A */  lbu   $v0, 0x9a($s0)
/* 0280C8 8004CCC8 30420010 */  andi  $v0, $v0, 0x10
/* 0280CC 8004CCCC 10400009 */  beqz  $v0, .L8004CCF4
/* 0280D0 8004CCD0 00000000 */   nop   
/* 0280D4 8004CCD4 86020092 */  lh    $v0, 0x92($s0)
/* 0280D8 8004CCD8 86030060 */  lh    $v1, 0x60($s0)
/* 0280DC 8004CCDC 8E04001C */  lw    $a0, 0x1c($s0)
/* 0280E0 8004CCE0 00431021 */  addu  $v0, $v0, $v1
/* 0280E4 8004CCE4 9483001E */  lhu   $v1, 0x1e($a0)
/* 0280E8 8004CCE8 82040094 */  lb    $a0, 0x94($s0)
/* 0280EC 8004CCEC 08013346 */  j     .L8004CD18
/* 0280F0 8004CCF0 00431023 */   subu  $v0, $v0, $v1

.L8004CCF4:
/* 0280F4 8004CCF4 86020092 */  lh    $v0, 0x92($s0)
/* 0280F8 8004CCF8 8E03001C */  lw    $v1, 0x1c($s0)
/* 0280FC 8004CCFC 86040060 */  lh    $a0, 0x60($s0)
/* 028100 8004CD00 9463001E */  lhu   $v1, 0x1e($v1)
/* 028104 8004CD04 00441021 */  addu  $v0, $v0, $a0
/* 028108 8004CD08 00431023 */  subu  $v0, $v0, $v1
/* 02810C 8004CD0C 82030094 */  lb    $v1, 0x94($s0)
/* 028110 8004CD10 860400A4 */  lh    $a0, 0xa4($s0)
/* 028114 8004CD14 00431021 */  addu  $v0, $v0, $v1
.L8004CD18:
/* 028118 8004CD18 0C014E3E */  jal   func_800538F8
/* 02811C 8004CD1C 00442021 */   addu  $a0, $v0, $a0
/* 028120 8004CD20 8E02001C */  lw    $v0, 0x1c($s0)
/* 028124 8004CD24 C4420020 */  lwc1  $f2, 0x20($v0)
/* 028128 8004CD28 46020082 */  mul.s $f2, $f0, $f2
/* 02812C 8004CD2C 00000000 */  nop   
/* 028130 8004CD30 E6020058 */  swc1  $f2, 0x58($s0)
/* 028134 8004CD34 92230045 */  lbu   $v1, 0x45($s1)
/* 028138 8004CD38 924200BC */  lbu   $v0, 0xbc($s2)
/* 02813C 8004CD3C 5462000C */  bnel  $v1, $v0, .L8004CD70
/* 028140 8004CD40 AE000054 */   sw    $zero, 0x54($s0)
/* 028144 8004CD44 C6200004 */  lwc1  $f0, 4($s1)
/* 028148 8004CD48 46020032 */  c.eq.s $f0, $f2
/* 02814C 8004CD4C 00000000 */  nop   
/* 028150 8004CD50 45030007 */  bc1tl .L8004CD70
/* 028154 8004CD54 AE000054 */   sw    $zero, 0x54($s0)
/* 028158 8004CD58 92220043 */  lbu   $v0, 0x43($s1)
/* 02815C 8004CD5C 34420008 */  ori   $v0, $v0, 8
/* 028160 8004CD60 A2220043 */  sb    $v0, 0x43($s1)
/* 028164 8004CD64 C6000058 */  lwc1  $f0, 0x58($s0)
/* 028168 8004CD68 E6200004 */  swc1  $f0, 4($s1)
/* 02816C 8004CD6C AE000054 */  sw    $zero, 0x54($s0)
.L8004CD70:
/* 028170 8004CD70 8FBF0028 */  lw    $ra, 0x28($sp)
/* 028174 8004CD74 8FB50024 */  lw    $s5, 0x24($sp)
/* 028178 8004CD78 8FB40020 */  lw    $s4, 0x20($sp)
/* 02817C 8004CD7C 8FB3001C */  lw    $s3, 0x1c($sp)
/* 028180 8004CD80 8FB20018 */  lw    $s2, 0x18($sp)
/* 028184 8004CD84 8FB10014 */  lw    $s1, 0x14($sp)
/* 028188 8004CD88 8FB00010 */  lw    $s0, 0x10($sp)
/* 02818C 8004CD8C 03E00008 */  jr    $ra
/* 028190 8004CD90 27BD0030 */   addiu $sp, $sp, 0x30

