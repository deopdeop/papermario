.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240084_D97914
/* D97914 80240084 00041403 */  sra       $v0, $a0, 0x10
/* D97918 80240088 304300FF */  andi      $v1, $v0, 0xff
/* D9791C 8024008C 24020006 */  addiu     $v0, $zero, 6
/* D97920 80240090 10620015 */  beq       $v1, $v0, .L802400E8
/* D97924 80240094 28620007 */   slti     $v0, $v1, 7
/* D97928 80240098 10400005 */  beqz      $v0, .L802400B0
/* D9792C 8024009C 24020001 */   addiu    $v0, $zero, 1
/* D97930 802400A0 1062000A */  beq       $v1, $v0, .L802400CC
/* D97934 802400A4 3C020100 */   lui      $v0, 0x100
/* D97938 802400A8 03E00008 */  jr        $ra
/* D9793C 802400AC 00821025 */   or       $v0, $a0, $v0
.L802400B0:
/* D97940 802400B0 2862000A */  slti      $v0, $v1, 0xa
/* D97944 802400B4 10400016 */  beqz      $v0, .L80240110
/* D97948 802400B8 28620008 */   slti     $v0, $v1, 8
/* D9794C 802400BC 14400015 */  bnez      $v0, .L80240114
/* D97950 802400C0 3C020100 */   lui      $v0, 0x100
/* D97954 802400C4 03E00008 */  jr        $ra
/* D97958 802400C8 0080102D */   daddu    $v0, $a0, $zero
.L802400CC:
/* D9795C 802400CC 3C020001 */  lui       $v0, 1
/* D97960 802400D0 3442000C */  ori       $v0, $v0, 0xc
/* D97964 802400D4 0044102A */  slt       $v0, $v0, $a0
/* D97968 802400D8 1040000E */  beqz      $v0, .L80240114
/* D9796C 802400DC 3C020100 */   lui      $v0, 0x100
.L802400E0:
/* D97970 802400E0 03E00008 */  jr        $ra
/* D97974 802400E4 0080102D */   daddu    $v0, $a0, $zero
.L802400E8:
/* D97978 802400E8 3C02FFF9 */  lui       $v0, 0xfff9
/* D9797C 802400EC 3442FFF4 */  ori       $v0, $v0, 0xfff4
/* D97980 802400F0 00821821 */  addu      $v1, $a0, $v0
/* D97984 802400F4 2C620010 */  sltiu     $v0, $v1, 0x10
/* D97988 802400F8 10400005 */  beqz      $v0, .L80240110
/* D9798C 802400FC 30620001 */   andi     $v0, $v1, 1
/* D97990 80240100 1440FFF7 */  bnez      $v0, .L802400E0
/* D97994 80240104 24820001 */   addiu    $v0, $a0, 1
/* D97998 80240108 03E00008 */  jr        $ra
/* D9799C 8024010C 00000000 */   nop      
.L80240110:
/* D979A0 80240110 3C020100 */  lui       $v0, 0x100
.L80240114:
/* D979A4 80240114 03E00008 */  jr        $ra
/* D979A8 80240118 00821025 */   or       $v0, $a0, $v0
