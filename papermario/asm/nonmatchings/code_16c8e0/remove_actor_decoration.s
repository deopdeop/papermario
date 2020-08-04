.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel remove_actor_decoration
/* 195B14 80267234 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 195B18 80267238 AFBF001C */  sw    $ra, 0x1c($sp)
/* 195B1C 8026723C AFB20018 */  sw    $s2, 0x18($sp)
/* 195B20 80267240 AFB10014 */  sw    $s1, 0x14($sp)
/* 195B24 80267244 AFB00010 */  sw    $s0, 0x10($sp)
/* 195B28 80267248 8C9001F4 */  lw    $s0, 0x1f4($a0)
/* 195B2C 8026724C 12000011 */  beqz  $s0, .L80267294
/* 195B30 80267250 00A0902D */   daddu $s2, $a1, $zero
/* 195B34 80267254 3C110010 */  lui   $s1, 0x10
/* 195B38 80267258 36310001 */  ori   $s1, $s1, 1
.L8026725C:
/* 195B3C 8026725C 8E030000 */  lw    $v1, ($s0)
/* 195B40 80267260 00711024 */  and   $v0, $v1, $s1
/* 195B44 80267264 14400008 */  bnez  $v0, .L80267288
/* 195B48 80267268 00000000 */   nop   
/* 195B4C 8026726C 8E020094 */  lw    $v0, 0x94($s0)
/* 195B50 80267270 10400005 */  beqz  $v0, .L80267288
/* 195B54 80267274 30620002 */   andi  $v0, $v1, 2
/* 195B58 80267278 14400003 */  bnez  $v0, .L80267288
/* 195B5C 8026727C 0200202D */   daddu $a0, $s0, $zero
/* 195B60 80267280 0C099C86 */  jal   remove_part_decoration
/* 195B64 80267284 0240282D */   daddu $a1, $s2, $zero
.L80267288:
/* 195B68 80267288 8E10000C */  lw    $s0, 0xc($s0)
/* 195B6C 8026728C 1600FFF3 */  bnez  $s0, .L8026725C
/* 195B70 80267290 00000000 */   nop   
.L80267294:
/* 195B74 80267294 8FBF001C */  lw    $ra, 0x1c($sp)
/* 195B78 80267298 8FB20018 */  lw    $s2, 0x18($sp)
/* 195B7C 8026729C 8FB10014 */  lw    $s1, 0x14($sp)
/* 195B80 802672A0 8FB00010 */  lw    $s0, 0x10($sp)
/* 195B84 802672A4 03E00008 */  jr    $ra
/* 195B88 802672A8 27BD0020 */   addiu $sp, $sp, 0x20

