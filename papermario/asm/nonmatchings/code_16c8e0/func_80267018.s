.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80267018
/* 1958F8 80267018 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1958FC 8026701C AFBF001C */  sw    $ra, 0x1c($sp)
/* 195900 80267020 AFB20018 */  sw    $s2, 0x18($sp)
/* 195904 80267024 AFB10014 */  sw    $s1, 0x14($sp)
/* 195908 80267028 AFB00010 */  sw    $s0, 0x10($sp)
/* 19590C 8026702C 8C9001F4 */  lw    $s0, 0x1f4($a0)
/* 195910 80267030 12000014 */  beqz  $s0, .L80267084
/* 195914 80267034 00A0902D */   daddu $s2, $a1, $zero
/* 195918 80267038 3C110010 */  lui   $s1, 0x10
/* 19591C 8026703C 36310001 */  ori   $s1, $s1, 1
.L80267040:
/* 195920 80267040 8E030000 */  lw    $v1, ($s0)
/* 195924 80267044 00711024 */  and   $v0, $v1, $s1
/* 195928 80267048 1440000B */  bnez  $v0, .L80267078
/* 19592C 8026704C 00000000 */   nop   
/* 195930 80267050 8E0200C0 */  lw    $v0, 0xc0($s0)
/* 195934 80267054 10400008 */  beqz  $v0, .L80267078
/* 195938 80267058 30620002 */   andi  $v0, $v1, 2
/* 19593C 8026705C 14400006 */  bnez  $v0, .L80267078
/* 195940 80267060 00000000 */   nop   
/* 195944 80267064 8E020094 */  lw    $v0, 0x94($s0)
/* 195948 80267068 10400003 */  beqz  $v0, .L80267078
/* 19594C 8026706C 0200202D */   daddu $a0, $s0, $zero
/* 195950 80267070 0C099BF6 */  jal   func_80266FD8
/* 195954 80267074 0240282D */   daddu $a1, $s2, $zero
.L80267078:
/* 195958 80267078 8E10000C */  lw    $s0, 0xc($s0)
/* 19595C 8026707C 1600FFF0 */  bnez  $s0, .L80267040
/* 195960 80267080 00000000 */   nop   
.L80267084:
/* 195964 80267084 8FBF001C */  lw    $ra, 0x1c($sp)
/* 195968 80267088 8FB20018 */  lw    $s2, 0x18($sp)
/* 19596C 8026708C 8FB10014 */  lw    $s1, 0x14($sp)
/* 195970 80267090 8FB00010 */  lw    $s0, 0x10($sp)
/* 195974 80267094 03E00008 */  jr    $ra
/* 195978 80267098 27BD0020 */   addiu $sp, $sp, 0x20

