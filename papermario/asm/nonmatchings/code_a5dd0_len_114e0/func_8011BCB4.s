.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8011BCB4
/* 0B23B4 8011BCB4 3C028015 */  lui   $v0, 0x8015
/* 0B23B8 8011BCB8 8C4212E8 */  lw    $v0, 0x12e8($v0)
/* 0B23BC 8011BCBC 000420C0 */  sll   $a0, $a0, 3
/* 0B23C0 8011BCC0 00822021 */  addu  $a0, $a0, $v0
/* 0B23C4 8011BCC4 AC850000 */  sw    $a1, ($a0)
/* 0B23C8 8011BCC8 03E00008 */  jr    $ra
/* 0B23CC 8011BCCC AC860004 */   sw    $a2, 4($a0)

