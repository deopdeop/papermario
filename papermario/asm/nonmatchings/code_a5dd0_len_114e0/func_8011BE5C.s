.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_8011BE5C
/* 0B255C 8011BE5C 3C018015 */  lui   $at, 0x8015
/* 0B2560 8011BE60 A024B74D */  sb    $a0, -0x48b3($at)
/* 0B2564 8011BE64 3C018015 */  lui   $at, 0x8015
/* 0B2568 8011BE68 A025B74E */  sb    $a1, -0x48b2($at)
/* 0B256C 8011BE6C 3C018015 */  lui   $at, 0x8015
/* 0B2570 8011BE70 A026B74F */  sb    $a2, -0x48b1($at)
/* 0B2574 8011BE74 3C018015 */  lui   $at, 0x8015
/* 0B2578 8011BE78 03E00008 */  jr    $ra
/* 0B257C 8011BE7C A027B74C */   sb    $a3, -0x48b4($at)

