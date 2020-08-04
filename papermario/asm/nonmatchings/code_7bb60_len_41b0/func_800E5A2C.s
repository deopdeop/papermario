.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_800E5A2C
/* 07EEDC 800E5A2C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 07EEE0 800E5A30 3C04800B */  lui   $a0, 0x800b
/* 07EEE4 800E5A34 24841D80 */  addiu $a0, $a0, 0x1d80
/* 07EEE8 800E5A38 AFB40020 */  sw    $s4, 0x20($sp)
/* 07EEEC 800E5A3C 3C148011 */  lui   $s4, 0x8011
/* 07EEF0 800E5A40 2694EBB0 */  addiu $s4, $s4, -0x1450
/* 07EEF4 800E5A44 AFB00010 */  sw    $s0, 0x10($sp)
/* 07EEF8 800E5A48 3C108011 */  lui   $s0, 0x8011
/* 07EEFC 800E5A4C 2610EFC8 */  addiu $s0, $s0, -0x1038
/* 07EF00 800E5A50 AFB10014 */  sw    $s1, 0x14($sp)
/* 07EF04 800E5A54 3C118011 */  lui   $s1, 0x8011
/* 07EF08 800E5A58 2631F250 */  addiu $s1, $s1, -0xdb0
/* 07EF0C 800E5A5C AFBF0024 */  sw    $ra, 0x24($sp)
/* 07EF10 800E5A60 AFB3001C */  sw    $s3, 0x1c($sp)
/* 07EF14 800E5A64 AFB20018 */  sw    $s2, 0x18($sp)
/* 07EF18 800E5A68 8E030000 */  lw    $v1, ($s0)
/* 07EF1C 800E5A6C 3C020004 */  lui   $v0, 4
/* 07EF20 800E5A70 00621024 */  and   $v0, $v1, $v0
/* 07EF24 800E5A74 14400004 */  bnez  $v0, .L800E5A88
/* 07EF28 800E5A78 3C02DFFF */   lui   $v0, 0xdfff
/* 07EF2C 800E5A7C 3442FFFF */  ori   $v0, $v0, 0xffff
/* 07EF30 800E5A80 00621024 */  and   $v0, $v1, $v0
/* 07EF34 800E5A84 AE020000 */  sw    $v0, ($s0)
.L800E5A88:
/* 07EF38 800E5A88 8E020004 */  lw    $v0, 4($s0)
/* 07EF3C 800E5A8C 30421000 */  andi  $v0, $v0, 0x1000
/* 07EF40 800E5A90 10400005 */  beqz  $v0, .L800E5AA8
/* 07EF44 800E5A94 00000000 */   nop   
/* 07EF48 800E5A98 0C03971E */  jal   func_800E5C78
/* 07EF4C 800E5A9C 00000000 */   nop   
/* 07EF50 800E5AA0 08039716 */  j     .L800E5C58
/* 07EF54 800E5AA4 00000000 */   nop   

.L800E5AA8:
/* 07EF58 800E5AA8 820200C5 */  lb    $v0, 0xc5($s0)
/* 07EF5C 800E5AAC 920300C5 */  lbu   $v1, 0xc5($s0)
/* 07EF60 800E5AB0 10400008 */  beqz  $v0, .L800E5AD4
/* 07EF64 800E5AB4 2462FFFF */   addiu $v0, $v1, -1
/* 07EF68 800E5AB8 A20200C5 */  sb    $v0, 0xc5($s0)
/* 07EF6C 800E5ABC 00021600 */  sll   $v0, $v0, 0x18
/* 07EF70 800E5AC0 14400004 */  bnez  $v0, .L800E5AD4
/* 07EF74 800E5AC4 00000000 */   nop   
/* 07EF78 800E5AC8 94820002 */  lhu   $v0, 2($a0)
/* 07EF7C 800E5ACC 34420004 */  ori   $v0, $v0, 4
/* 07EF80 800E5AD0 A4820002 */  sh    $v0, 2($a0)
.L800E5AD4:
/* 07EF84 800E5AD4 860200C0 */  lh    $v0, 0xc0($s0)
/* 07EF88 800E5AD8 10400011 */  beqz  $v0, .L800E5B20
/* 07EF8C 800E5ADC 960300C0 */   lhu   $v1, 0xc0($s0)
/* 07EF90 800E5AE0 C6000070 */  lwc1  $f0, 0x70($s0)
/* 07EF94 800E5AE4 44801000 */  mtc1  $zero, $f2
/* 07EF98 800E5AE8 00000000 */  nop   
/* 07EF9C 800E5AEC 4602003E */  c.le.s $f0, $f2
/* 07EFA0 800E5AF0 00000000 */  nop   
/* 07EFA4 800E5AF4 45000008 */  bc1f  .L800E5B18
/* 07EFA8 800E5AF8 00000000 */   nop   
/* 07EFAC 800E5AFC 3C01800F */  lui   $at, 0x800f
/* 07EFB0 800E5B00 C4207B90 */  lwc1  $f0, 0x7b90($at)
/* 07EFB4 800E5B04 4600103C */  c.lt.s $f2, $f0
/* 07EFB8 800E5B08 00000000 */  nop   
/* 07EFBC 800E5B0C 45030001 */  bc1tl .L800E5B14
/* 07EFC0 800E5B10 A60300C2 */   sh    $v1, 0xc2($s0)
.L800E5B14:
/* 07EFC4 800E5B14 C6000070 */  lwc1  $f0, 0x70($s0)
.L800E5B18:
/* 07EFC8 800E5B18 3C01800F */  lui   $at, 0x800f
/* 07EFCC 800E5B1C E4207B90 */  swc1  $f0, 0x7b90($at)
.L800E5B20:
/* 07EFD0 800E5B20 0C03893E */  jal   func_800E24F8
/* 07EFD4 800E5B24 00000000 */   nop   
/* 07EFD8 800E5B28 82220000 */  lb    $v0, ($s1)
/* 07EFDC 800E5B2C 92230000 */  lbu   $v1, ($s1)
/* 07EFE0 800E5B30 1040000E */  beqz  $v0, .L800E5B6C
/* 07EFE4 800E5B34 2462FFFF */   addiu $v0, $v1, -1
/* 07EFE8 800E5B38 A2220000 */  sb    $v0, ($s1)
/* 07EFEC 800E5B3C 00021600 */  sll   $v0, $v0, 0x18
/* 07EFF0 800E5B40 1440000B */  bnez  $v0, .L800E5B70
/* 07EFF4 800E5B44 3C138000 */   lui   $s3, 0x8000
/* 07EFF8 800E5B48 3C03FFFE */  lui   $v1, 0xfffe
/* 07EFFC 800E5B4C 3463FFFF */  ori   $v1, $v1, 0xffff
/* 07F000 800E5B50 8E020004 */  lw    $v0, 4($s0)
/* 07F004 800E5B54 8E240030 */  lw    $a0, 0x30($s1)
/* 07F008 800E5B58 00431024 */  and   $v0, $v0, $v1
/* 07F00C 800E5B5C 10800004 */  beqz  $a0, .L800E5B70
/* 07F010 800E5B60 AE020004 */   sw    $v0, 4($s0)
/* 07F014 800E5B64 0C05271B */  jal   stop_sound
/* 07F018 800E5B68 00000000 */   nop   
.L800E5B6C:
/* 07F01C 800E5B6C 3C138000 */  lui   $s3, 0x8000
.L800E5B70:
/* 07F020 800E5B70 3C11800F */  lui   $s1, 0x800f
/* 07F024 800E5B74 26317C8C */  addiu $s1, $s1, 0x7c8c
/* 07F028 800E5B78 3C128011 */  lui   $s2, 0x8011
/* 07F02C 800E5B7C 2652C924 */  addiu $s2, $s2, -0x36dc
.L800E5B80:
/* 07F030 800E5B80 820200B4 */  lb    $v0, 0xb4($s0)
/* 07F034 800E5B84 2C420003 */  sltiu $v0, $v0, 3
/* 07F038 800E5B88 10400015 */  beqz  $v0, .L800E5BE0
/* 07F03C 800E5B8C 00000000 */   nop   
/* 07F040 800E5B90 8E020000 */  lw    $v0, ($s0)
/* 07F044 800E5B94 30422000 */  andi  $v0, $v0, 0x2000
/* 07F048 800E5B98 14400004 */  bnez  $v0, .L800E5BAC
/* 07F04C 800E5B9C 0000182D */   daddu $v1, $zero, $zero
/* 07F050 800E5BA0 0C010C77 */  jal   func_800431DC
/* 07F054 800E5BA4 00000000 */   nop   
/* 07F058 800E5BA8 0040182D */  daddu $v1, $v0, $zero
.L800E5BAC:
/* 07F05C 800E5BAC 82820000 */  lb    $v0, ($s4)
/* 07F060 800E5BB0 14400009 */  bnez  $v0, .L800E5BD8
/* 07F064 800E5BB4 00000000 */   nop   
/* 07F068 800E5BB8 8E020000 */  lw    $v0, ($s0)
/* 07F06C 800E5BBC 30420020 */  andi  $v0, $v0, 0x20
/* 07F070 800E5BC0 14400005 */  bnez  $v0, .L800E5BD8
/* 07F074 800E5BC4 00000000 */   nop   
/* 07F078 800E5BC8 10600003 */  beqz  $v1, .L800E5BD8
/* 07F07C 800E5BCC 00000000 */   nop   
/* 07F080 800E5BD0 0C039769 */  jal   set_action_state
/* 07F084 800E5BD4 2404000C */   addiu $a0, $zero, 0xc
.L800E5BD8:
/* 07F088 800E5BD8 0C03989A */  jal   check_input_spin
/* 07F08C 800E5BDC 00000000 */   nop   
.L800E5BE0:
/* 07F090 800E5BE0 8E020000 */  lw    $v0, ($s0)
/* 07F094 800E5BE4 00531024 */  and   $v0, $v0, $s3
/* 07F098 800E5BE8 10400011 */  beqz  $v0, .L800E5C30
/* 07F09C 800E5BEC 00000000 */   nop   
/* 07F0A0 800E5BF0 820200B4 */  lb    $v0, 0xb4($s0)
/* 07F0A4 800E5BF4 00021100 */  sll   $v0, $v0, 4
/* 07F0A8 800E5BF8 00511021 */  addu  $v0, $v0, $s1
/* 07F0AC 800E5BFC 8C440004 */  lw    $a0, 4($v0)
/* 07F0B0 800E5C00 1080000B */  beqz  $a0, .L800E5C30
/* 07F0B4 800E5C04 00000000 */   nop   
/* 07F0B8 800E5C08 8E420000 */  lw    $v0, ($s2)
/* 07F0BC 800E5C0C 10820008 */  beq   $a0, $v0, .L800E5C30
/* 07F0C0 800E5C10 3C06802B */   lui   $a2, 0x802b
/* 07F0C4 800E5C14 820200B4 */  lb    $v0, 0xb4($s0)
/* 07F0C8 800E5C18 00021100 */  sll   $v0, $v0, 4
/* 07F0CC 800E5C1C 00511021 */  addu  $v0, $v0, $s1
/* 07F0D0 800E5C20 8C450008 */  lw    $a1, 8($v0)
/* 07F0D4 800E5C24 34C66000 */  ori   $a2, $a2, 0x6000
/* 07F0D8 800E5C28 0C00A5CF */  jal   dma_copy
/* 07F0DC 800E5C2C AE440000 */   sw    $a0, ($s2)
.L800E5C30:
/* 07F0E0 800E5C30 820200B4 */  lb    $v0, 0xb4($s0)
/* 07F0E4 800E5C34 00021100 */  sll   $v0, $v0, 4
/* 07F0E8 800E5C38 00511021 */  addu  $v0, $v0, $s1
/* 07F0EC 800E5C3C 8C420000 */  lw    $v0, ($v0)
/* 07F0F0 800E5C40 0040F809 */  jalr  $v0
/* 07F0F4 800E5C44 00000000 */  nop   
/* 07F0F8 800E5C48 8E020000 */  lw    $v0, ($s0)
/* 07F0FC 800E5C4C 00531024 */  and   $v0, $v0, $s3
/* 07F100 800E5C50 1440FFCB */  bnez  $v0, .L800E5B80
/* 07F104 800E5C54 00000000 */   nop   
.L800E5C58:
/* 07F108 800E5C58 8FBF0024 */  lw    $ra, 0x24($sp)
/* 07F10C 800E5C5C 8FB40020 */  lw    $s4, 0x20($sp)
/* 07F110 800E5C60 8FB3001C */  lw    $s3, 0x1c($sp)
/* 07F114 800E5C64 8FB20018 */  lw    $s2, 0x18($sp)
/* 07F118 800E5C68 8FB10014 */  lw    $s1, 0x14($sp)
/* 07F11C 800E5C6C 8FB00010 */  lw    $s0, 0x10($sp)
/* 07F120 800E5C70 03E00008 */  jr    $ra
/* 07F124 800E5C74 27BD0028 */   addiu $sp, $sp, 0x28

