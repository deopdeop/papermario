.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240320_831B20
/* 831B20 80240320 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 831B24 80240324 AFB20018 */  sw        $s2, 0x18($sp)
/* 831B28 80240328 0080902D */  daddu     $s2, $a0, $zero
/* 831B2C 8024032C AFBF0028 */  sw        $ra, 0x28($sp)
/* 831B30 80240330 AFB50024 */  sw        $s5, 0x24($sp)
/* 831B34 80240334 AFB40020 */  sw        $s4, 0x20($sp)
/* 831B38 80240338 AFB3001C */  sw        $s3, 0x1c($sp)
/* 831B3C 8024033C AFB10014 */  sw        $s1, 0x14($sp)
/* 831B40 80240340 AFB00010 */  sw        $s0, 0x10($sp)
/* 831B44 80240344 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 831B48 80240348 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 831B4C 8024034C F7B40030 */  sdc1      $f20, 0x30($sp)
/* 831B50 80240350 8E50000C */  lw        $s0, 0xc($s2)
/* 831B54 80240354 8E140000 */  lw        $s4, ($s0)
/* 831B58 80240358 26100004 */  addiu     $s0, $s0, 4
/* 831B5C 8024035C 0C0B1EAF */  jal       get_variable
/* 831B60 80240360 0280282D */   daddu    $a1, $s4, $zero
/* 831B64 80240364 0040982D */  daddu     $s3, $v0, $zero
/* 831B68 80240368 8E150000 */  lw        $s5, ($s0)
/* 831B6C 8024036C 26100004 */  addiu     $s0, $s0, 4
/* 831B70 80240370 8E050000 */  lw        $a1, ($s0)
/* 831B74 80240374 26100004 */  addiu     $s0, $s0, 4
/* 831B78 80240378 0C0B210B */  jal       get_float_variable
/* 831B7C 8024037C 0240202D */   daddu    $a0, $s2, $zero
/* 831B80 80240380 8E050000 */  lw        $a1, ($s0)
/* 831B84 80240384 26100004 */  addiu     $s0, $s0, 4
/* 831B88 80240388 0240202D */  daddu     $a0, $s2, $zero
/* 831B8C 8024038C 0C0B210B */  jal       get_float_variable
/* 831B90 80240390 46000606 */   mov.s    $f24, $f0
/* 831B94 80240394 8E050000 */  lw        $a1, ($s0)
/* 831B98 80240398 26100004 */  addiu     $s0, $s0, 4
/* 831B9C 8024039C 0240202D */  daddu     $a0, $s2, $zero
/* 831BA0 802403A0 0C0B1EAF */  jal       get_variable
/* 831BA4 802403A4 46000506 */   mov.s    $f20, $f0
/* 831BA8 802403A8 8E050000 */  lw        $a1, ($s0)
/* 831BAC 802403AC 26100004 */  addiu     $s0, $s0, 4
/* 831BB0 802403B0 0240202D */  daddu     $a0, $s2, $zero
/* 831BB4 802403B4 0C0B1EAF */  jal       get_variable
/* 831BB8 802403B8 0040882D */   daddu    $s1, $v0, $zero
/* 831BBC 802403BC 0240202D */  daddu     $a0, $s2, $zero
/* 831BC0 802403C0 8E050000 */  lw        $a1, ($s0)
/* 831BC4 802403C4 0C0B210B */  jal       get_float_variable
/* 831BC8 802403C8 0040802D */   daddu    $s0, $v0, $zero
/* 831BCC 802403CC 3C014334 */  lui       $at, 0x4334
/* 831BD0 802403D0 44811000 */  mtc1      $at, $f2
/* 831BD4 802403D4 3C014049 */  lui       $at, 0x4049
/* 831BD8 802403D8 34210FD8 */  ori       $at, $at, 0xfd8
/* 831BDC 802403DC 44812000 */  mtc1      $at, $f4
/* 831BE0 802403E0 46020003 */  div.s     $f0, $f0, $f2
/* 831BE4 802403E4 46040582 */  mul.s     $f22, $f0, $f4
/* 831BE8 802403E8 00000000 */  nop       
/* 831BEC 802403EC 4618A501 */  sub.s     $f20, $f20, $f24
/* 831BF0 802403F0 3C013F00 */  lui       $at, 0x3f00
/* 831BF4 802403F4 44810000 */  mtc1      $at, $f0
/* 831BF8 802403F8 00000000 */  nop       
/* 831BFC 802403FC 4600A502 */  mul.s     $f20, $f20, $f0
/* 831C00 80240400 00000000 */  nop       
/* 831C04 80240404 12000007 */  beqz      $s0, .L80240424
/* 831C08 80240408 0233102A */   slt      $v0, $s1, $s3
/* 831C0C 8024040C 10400005 */  beqz      $v0, .L80240424
/* 831C10 80240410 0240202D */   daddu    $a0, $s2, $zero
/* 831C14 80240414 0220982D */  daddu     $s3, $s1, $zero
/* 831C18 80240418 0280282D */  daddu     $a1, $s4, $zero
/* 831C1C 8024041C 0C0B2026 */  jal       set_variable
/* 831C20 80240420 0220302D */   daddu    $a2, $s1, $zero
.L80240424:
/* 831C24 80240424 3C014049 */  lui       $at, 0x4049
/* 831C28 80240428 34210FD8 */  ori       $at, $at, 0xfd8
/* 831C2C 8024042C 44810000 */  mtc1      $at, $f0
/* 831C30 80240430 44936000 */  mtc1      $s3, $f12
/* 831C34 80240434 00000000 */  nop       
/* 831C38 80240438 46806320 */  cvt.s.w   $f12, $f12
/* 831C3C 8024043C 46006302 */  mul.s     $f12, $f12, $f0
/* 831C40 80240440 00000000 */  nop       
/* 831C44 80240444 44910000 */  mtc1      $s1, $f0
/* 831C48 80240448 00000000 */  nop       
/* 831C4C 8024044C 46800020 */  cvt.s.w   $f0, $f0
/* 831C50 80240450 46006303 */  div.s     $f12, $f12, $f0
/* 831C54 80240454 0C00A874 */  jal       cos_rad
/* 831C58 80240458 46166300 */   add.s    $f12, $f12, $f22
/* 831C5C 8024045C 4600A002 */  mul.s     $f0, $f20, $f0
/* 831C60 80240460 00000000 */  nop       
/* 831C64 80240464 4614C080 */  add.s     $f2, $f24, $f20
/* 831C68 80240468 46001081 */  sub.s     $f2, $f2, $f0
/* 831C6C 8024046C 0240202D */  daddu     $a0, $s2, $zero
/* 831C70 80240470 44061000 */  mfc1      $a2, $f2
/* 831C74 80240474 0C0B2190 */  jal       set_float_variable
/* 831C78 80240478 02A0282D */   daddu    $a1, $s5, $zero
/* 831C7C 8024047C 8FBF0028 */  lw        $ra, 0x28($sp)
/* 831C80 80240480 8FB50024 */  lw        $s5, 0x24($sp)
/* 831C84 80240484 8FB40020 */  lw        $s4, 0x20($sp)
/* 831C88 80240488 8FB3001C */  lw        $s3, 0x1c($sp)
/* 831C8C 8024048C 8FB20018 */  lw        $s2, 0x18($sp)
/* 831C90 80240490 8FB10014 */  lw        $s1, 0x14($sp)
/* 831C94 80240494 8FB00010 */  lw        $s0, 0x10($sp)
/* 831C98 80240498 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 831C9C 8024049C D7B60038 */  ldc1      $f22, 0x38($sp)
/* 831CA0 802404A0 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 831CA4 802404A4 24020002 */  addiu     $v0, $zero, 2
/* 831CA8 802404A8 03E00008 */  jr        $ra
/* 831CAC 802404AC 27BD0048 */   addiu    $sp, $sp, 0x48
