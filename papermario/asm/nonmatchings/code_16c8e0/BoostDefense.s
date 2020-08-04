.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel BoostDefense
/* 19EA54 80270174 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 19EA58 80270178 AFB20020 */  sw    $s2, 0x20($sp)
/* 19EA5C 8027017C 0080902D */  daddu $s2, $a0, $zero
/* 19EA60 80270180 AFBF0024 */  sw    $ra, 0x24($sp)
/* 19EA64 80270184 AFB1001C */  sw    $s1, 0x1c($sp)
/* 19EA68 80270188 AFB00018 */  sw    $s0, 0x18($sp)
/* 19EA6C 8027018C F7B80038 */  sdc1  $f24, 0x38($sp)
/* 19EA70 80270190 F7B60030 */  sdc1  $f22, 0x30($sp)
/* 19EA74 80270194 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 19EA78 80270198 8E51000C */  lw    $s1, 0xc($s2)
/* 19EA7C 8027019C 54A00001 */  bnezl $a1, .L802701A4
/* 19EA80 802701A0 AE400070 */   sw    $zero, 0x70($s2)
.L802701A4:
/* 19EA84 802701A4 8E420070 */  lw    $v0, 0x70($s2)
/* 19EA88 802701A8 1440002D */  bnez  $v0, .L80270260
/* 19EA8C 802701AC 00000000 */   nop   
/* 19EA90 802701B0 8E250000 */  lw    $a1, ($s1)
/* 19EA94 802701B4 26310004 */  addiu $s1, $s1, 4
/* 19EA98 802701B8 0C0B1EAF */  jal   get_variable
/* 19EA9C 802701BC 0240202D */   daddu $a0, $s2, $zero
/* 19EAA0 802701C0 0040802D */  daddu $s0, $v0, $zero
/* 19EAA4 802701C4 2402FF81 */  addiu $v0, $zero, -0x7f
/* 19EAA8 802701C8 16020002 */  bne   $s0, $v0, .L802701D4
/* 19EAAC 802701CC 00000000 */   nop   
/* 19EAB0 802701D0 8E500148 */  lw    $s0, 0x148($s2)
.L802701D4:
/* 19EAB4 802701D4 8E250000 */  lw    $a1, ($s1)
/* 19EAB8 802701D8 0C0B1EAF */  jal   get_variable
/* 19EABC 802701DC 0240202D */   daddu $a0, $s2, $zero
/* 19EAC0 802701E0 0040882D */  daddu $s1, $v0, $zero
/* 19EAC4 802701E4 0C09A75B */  jal   get_actor
/* 19EAC8 802701E8 0200202D */   daddu $a0, $s0, $zero
/* 19EACC 802701EC 0040802D */  daddu $s0, $v0, $zero
/* 19EAD0 802701F0 24040008 */  addiu $a0, $zero, 8
/* 19EAD4 802701F4 AE500074 */  sw    $s0, 0x74($s2)
/* 19EAD8 802701F8 0C093903 */  jal   func_8024E40C
/* 19EADC 802701FC AE510078 */   sw    $s1, 0x78($s2)
/* 19EAE0 80270200 0C093978 */  jal   set_cam_zoffset
/* 19EAE4 80270204 2404000C */   addiu $a0, $zero, 0xc
/* 19EAE8 80270208 86040192 */  lh    $a0, 0x192($s0)
/* 19EAEC 8027020C 0C09390F */  jal   cam_target_actor
/* 19EAF0 80270210 00000000 */   nop   
/* 19EAF4 80270214 0C093965 */  jal   set_cam_zoom
/* 19EAF8 80270218 240400FA */   addiu $a0, $zero, 0xfa
/* 19EAFC 8027021C 0C093936 */  jal   move_cam_over
/* 19EB00 80270220 2404000A */   addiu $a0, $zero, 0xa
/* 19EB04 80270224 0C093983 */  jal   func_8024E60C
/* 19EB08 80270228 00000000 */   nop   
/* 19EB0C 8027022C 8E020000 */  lw    $v0, ($s0)
/* 19EB10 80270230 30420800 */  andi  $v0, $v0, 0x800
/* 19EB14 80270234 10400004 */  beqz  $v0, .L80270248
/* 19EB18 80270238 24020001 */   addiu $v0, $zero, 1
/* 19EB1C 8027023C 0C093978 */  jal   set_cam_zoffset
/* 19EB20 80270240 0000202D */   daddu $a0, $zero, $zero
/* 19EB24 80270244 24020001 */  addiu $v0, $zero, 1
.L80270248:
/* 19EB28 80270248 3C01802A */  lui   $at, 0x802a
/* 19EB2C 8027024C A022FBD4 */  sb    $v0, -0x42c($at)
/* 19EB30 80270250 24020005 */  addiu $v0, $zero, 5
/* 19EB34 80270254 AE42007C */  sw    $v0, 0x7c($s2)
/* 19EB38 80270258 24020001 */  addiu $v0, $zero, 1
/* 19EB3C 8027025C AE420070 */  sw    $v0, 0x70($s2)
.L80270260:
/* 19EB40 80270260 0C09A75B */  jal   get_actor
/* 19EB44 80270264 8E440148 */   lw    $a0, 0x148($s2)
/* 19EB48 80270268 8E500074 */  lw    $s0, 0x74($s2)
/* 19EB4C 8027026C 8E510078 */  lw    $s1, 0x78($s2)
/* 19EB50 80270270 86020150 */  lh    $v0, 0x150($s0)
/* 19EB54 80270274 8E030000 */  lw    $v1, ($s0)
/* 19EB58 80270278 C6000144 */  lwc1  $f0, 0x144($s0)
/* 19EB5C 8027027C 44821000 */  mtc1  $v0, $f2
/* 19EB60 80270280 00000000 */  nop   
/* 19EB64 80270284 468010A0 */  cvt.s.w $f2, $f2
/* 19EB68 80270288 30620800 */  andi  $v0, $v1, 0x800
/* 19EB6C 8027028C 1040000E */  beqz  $v0, .L802702C8
/* 19EB70 80270290 46020280 */   add.s $f10, $f0, $f2
/* 19EB74 80270294 86020152 */  lh    $v0, 0x152($s0)
/* 19EB78 80270298 C6020148 */  lwc1  $f2, 0x148($s0)
/* 19EB7C 8027029C 44820000 */  mtc1  $v0, $f0
/* 19EB80 802702A0 00000000 */  nop   
/* 19EB84 802702A4 46800020 */  cvt.s.w $f0, $f0
/* 19EB88 802702A8 92020191 */  lbu   $v0, 0x191($s0)
/* 19EB8C 802702AC 46001080 */  add.s $f2, $f2, $f0
/* 19EB90 802702B0 00021042 */  srl   $v0, $v0, 1
/* 19EB94 802702B4 44820000 */  mtc1  $v0, $f0
/* 19EB98 802702B8 00000000 */  nop   
/* 19EB9C 802702BC 46800020 */  cvt.s.w $f0, $f0
/* 19EBA0 802702C0 0809C0CD */  j     .L80270334
/* 19EBA4 802702C4 46001181 */   sub.s $f6, $f2, $f0

.L802702C8:
/* 19EBA8 802702C8 30628000 */  andi  $v0, $v1, 0x8000
/* 19EBAC 802702CC 1440000E */  bnez  $v0, .L80270308
/* 19EBB0 802702D0 00000000 */   nop   
/* 19EBB4 802702D4 86020152 */  lh    $v0, 0x152($s0)
/* 19EBB8 802702D8 C6020148 */  lwc1  $f2, 0x148($s0)
/* 19EBBC 802702DC 44820000 */  mtc1  $v0, $f0
/* 19EBC0 802702E0 00000000 */  nop   
/* 19EBC4 802702E4 46800020 */  cvt.s.w $f0, $f0
/* 19EBC8 802702E8 92020191 */  lbu   $v0, 0x191($s0)
/* 19EBCC 802702EC 46001080 */  add.s $f2, $f2, $f0
/* 19EBD0 802702F0 00021042 */  srl   $v0, $v0, 1
/* 19EBD4 802702F4 44820000 */  mtc1  $v0, $f0
/* 19EBD8 802702F8 00000000 */  nop   
/* 19EBDC 802702FC 46800020 */  cvt.s.w $f0, $f0
/* 19EBE0 80270300 0809C0CD */  j     .L80270334
/* 19EBE4 80270304 46020180 */   add.s $f6, $f0, $f2

.L80270308:
/* 19EBE8 80270308 86020152 */  lh    $v0, 0x152($s0)
/* 19EBEC 8027030C C6000148 */  lwc1  $f0, 0x148($s0)
/* 19EBF0 80270310 44821000 */  mtc1  $v0, $f2
/* 19EBF4 80270314 00000000 */  nop   
/* 19EBF8 80270318 468010A0 */  cvt.s.w $f2, $f2
/* 19EBFC 8027031C 92020191 */  lbu   $v0, 0x191($s0)
/* 19EC00 80270320 46020000 */  add.s $f0, $f0, $f2
/* 19EC04 80270324 44821000 */  mtc1  $v0, $f2
/* 19EC08 80270328 00000000 */  nop   
/* 19EC0C 8027032C 468010A0 */  cvt.s.w $f2, $f2
/* 19EC10 80270330 46020180 */  add.s $f6, $f0, $f2
.L80270334:
/* 19EC14 80270334 86020154 */  lh    $v0, 0x154($s0)
/* 19EC18 80270338 86030150 */  lh    $v1, 0x150($s0)
/* 19EC1C 8027033C C600014C */  lwc1  $f0, 0x14c($s0)
/* 19EC20 80270340 44821000 */  mtc1  $v0, $f2
/* 19EC24 80270344 00000000 */  nop   
/* 19EC28 80270348 468010A0 */  cvt.s.w $f2, $f2
/* 19EC2C 8027034C 44832000 */  mtc1  $v1, $f4
/* 19EC30 80270350 00000000 */  nop   
/* 19EC34 80270354 46802120 */  cvt.s.w $f4, $f4
/* 19EC38 80270358 92020190 */  lbu   $v0, 0x190($s0)
/* 19EC3C 8027035C 46020000 */  add.s $f0, $f0, $f2
/* 19EC40 80270360 3C014120 */  lui   $at, 0x4120
/* 19EC44 80270364 44811000 */  mtc1  $at, $f2
/* 19EC48 80270368 8E030000 */  lw    $v1, ($s0)
/* 19EC4C 8027036C 46020200 */  add.s $f8, $f0, $f2
/* 19EC50 80270370 C6000144 */  lwc1  $f0, 0x144($s0)
/* 19EC54 80270374 00021042 */  srl   $v0, $v0, 1
/* 19EC58 80270378 46040000 */  add.s $f0, $f0, $f4
/* 19EC5C 8027037C 44821000 */  mtc1  $v0, $f2
/* 19EC60 80270380 00000000 */  nop   
/* 19EC64 80270384 468010A0 */  cvt.s.w $f2, $f2
/* 19EC68 80270388 30620800 */  andi  $v0, $v1, 0x800
/* 19EC6C 8027038C 1040000D */  beqz  $v0, .L802703C4
/* 19EC70 80270390 46020600 */   add.s $f24, $f0, $f2
/* 19EC74 80270394 86020152 */  lh    $v0, 0x152($s0)
/* 19EC78 80270398 C6000148 */  lwc1  $f0, 0x148($s0)
/* 19EC7C 8027039C 44821000 */  mtc1  $v0, $f2
/* 19EC80 802703A0 00000000 */  nop   
/* 19EC84 802703A4 468010A0 */  cvt.s.w $f2, $f2
/* 19EC88 802703A8 92020191 */  lbu   $v0, 0x191($s0)
/* 19EC8C 802703AC 46020000 */  add.s $f0, $f0, $f2
/* 19EC90 802703B0 44821000 */  mtc1  $v0, $f2
/* 19EC94 802703B4 00000000 */  nop   
/* 19EC98 802703B8 468010A0 */  cvt.s.w $f2, $f2
/* 19EC9C 802703BC 0809C10C */  j     .L80270430
/* 19ECA0 802703C0 46020501 */   sub.s $f20, $f0, $f2

.L802703C4:
/* 19ECA4 802703C4 30628000 */  andi  $v0, $v1, 0x8000
/* 19ECA8 802703C8 1440000D */  bnez  $v0, .L80270400
/* 19ECAC 802703CC 00000000 */   nop   
/* 19ECB0 802703D0 86020152 */  lh    $v0, 0x152($s0)
/* 19ECB4 802703D4 C6000148 */  lwc1  $f0, 0x148($s0)
/* 19ECB8 802703D8 44821000 */  mtc1  $v0, $f2
/* 19ECBC 802703DC 00000000 */  nop   
/* 19ECC0 802703E0 468010A0 */  cvt.s.w $f2, $f2
/* 19ECC4 802703E4 92020191 */  lbu   $v0, 0x191($s0)
/* 19ECC8 802703E8 46020000 */  add.s $f0, $f0, $f2
/* 19ECCC 802703EC 44821000 */  mtc1  $v0, $f2
/* 19ECD0 802703F0 00000000 */  nop   
/* 19ECD4 802703F4 468010A0 */  cvt.s.w $f2, $f2
/* 19ECD8 802703F8 0809C10C */  j     .L80270430
/* 19ECDC 802703FC 46001500 */   add.s $f20, $f2, $f0

.L80270400:
/* 19ECE0 80270400 86020152 */  lh    $v0, 0x152($s0)
/* 19ECE4 80270404 C6020148 */  lwc1  $f2, 0x148($s0)
/* 19ECE8 80270408 44820000 */  mtc1  $v0, $f0
/* 19ECEC 8027040C 00000000 */  nop   
/* 19ECF0 80270410 46800020 */  cvt.s.w $f0, $f0
/* 19ECF4 80270414 92020191 */  lbu   $v0, 0x191($s0)
/* 19ECF8 80270418 46001080 */  add.s $f2, $f2, $f0
/* 19ECFC 8027041C 00021040 */  sll   $v0, $v0, 1
/* 19ED00 80270420 44820000 */  mtc1  $v0, $f0
/* 19ED04 80270424 00000000 */  nop   
/* 19ED08 80270428 46800020 */  cvt.s.w $f0, $f0
/* 19ED0C 8027042C 46001500 */  add.s $f20, $f2, $f0
.L80270430:
/* 19ED10 80270430 86020154 */  lh    $v0, 0x154($s0)
/* 19ED14 80270434 C600014C */  lwc1  $f0, 0x14c($s0)
/* 19ED18 80270438 44821000 */  mtc1  $v0, $f2
/* 19ED1C 8027043C 00000000 */  nop   
/* 19ED20 80270440 468010A0 */  cvt.s.w $f2, $f2
/* 19ED24 80270444 46020000 */  add.s $f0, $f0, $f2
/* 19ED28 80270448 8E420070 */  lw    $v0, 0x70($s2)
/* 19ED2C 8027044C 3C014120 */  lui   $at, 0x4120
/* 19ED30 80270450 44811000 */  mtc1  $at, $f2
/* 19ED34 80270454 2443FFFF */  addiu $v1, $v0, -1
/* 19ED38 80270458 2C620005 */  sltiu $v0, $v1, 5
/* 19ED3C 8027045C 10400063 */  beqz  $v0, .L802705EC
/* 19ED40 80270460 46020580 */   add.s $f22, $f0, $f2
/* 19ED44 80270464 00031080 */  sll   $v0, $v1, 2
/* 19ED48 80270468 3C01802A */  lui   $at, 0x802a
/* 19ED4C 8027046C 00220821 */  addu  $at, $at, $v0
/* 19ED50 80270470 8C22D820 */  lw    $v0, -0x27e0($at)
/* 19ED54 80270474 00400008 */  jr    $v0
/* 19ED58 80270478 00000000 */   nop   
/* 19ED5C 8027047C 8E42007C */  lw    $v0, 0x7c($s2)
/* 19ED60 80270480 1440004D */  bnez  $v0, .L802705B8
/* 19ED64 80270484 2442FFFF */   addiu $v0, $v0, -1
/* 19ED68 80270488 24040002 */  addiu $a0, $zero, 2
/* 19ED6C 8027048C 44055000 */  mfc1  $a1, $f10
/* 19ED70 80270490 44063000 */  mfc1  $a2, $f6
/* 19ED74 80270494 44074000 */  mfc1  $a3, $f8
/* 19ED78 80270498 3C013F80 */  lui   $at, 0x3f80
/* 19ED7C 8027049C 44810000 */  mtc1  $at, $f0
/* 19ED80 802704A0 2410001E */  addiu $s0, $zero, 0x1e
/* 19ED84 802704A4 AFB00014 */  sw    $s0, 0x14($sp)
/* 19ED88 802704A8 0C01C2EC */  jal   func_80070BB0
/* 19ED8C 802704AC E7A00010 */   swc1  $f0, 0x10($sp)
/* 19ED90 802704B0 0C0938F6 */  jal   func_8024E3D8
/* 19ED94 802704B4 24040013 */   addiu $a0, $zero, 0x13
/* 19ED98 802704B8 24020002 */  addiu $v0, $zero, 2
/* 19ED9C 802704BC AE50007C */  sw    $s0, 0x7c($s2)
/* 19EDA0 802704C0 0809C17B */  j     .L802705EC
/* 19EDA4 802704C4 AE420070 */   sw    $v0, 0x70($s2)

/* 19EDA8 802704C8 8E42007C */  lw    $v0, 0x7c($s2)
/* 19EDAC 802704CC 1440003A */  bnez  $v0, .L802705B8
/* 19EDB0 802704D0 2442FFFF */   addiu $v0, $v0, -1
/* 19EDB4 802704D4 0200202D */  daddu $a0, $s0, $zero
/* 19EDB8 802704D8 0C09DC58 */  jal   dispatch_event_actor
/* 19EDBC 802704DC 2405003F */   addiu $a1, $zero, 0x3f
/* 19EDC0 802704E0 0C093903 */  jal   func_8024E40C
/* 19EDC4 802704E4 24040002 */   addiu $a0, $zero, 2
/* 19EDC8 802704E8 0C093936 */  jal   move_cam_over
/* 19EDCC 802704EC 2404000F */   addiu $a0, $zero, 0xf
/* 19EDD0 802704F0 92020222 */  lbu   $v0, 0x222($s0)
/* 19EDD4 802704F4 24030001 */  addiu $v1, $zero, 1
/* 19EDD8 802704F8 A2030220 */  sb    $v1, 0x220($s0)
/* 19EDDC 802704FC 00511021 */  addu  $v0, $v0, $s1
/* 19EDE0 80270500 A2020222 */  sb    $v0, 0x222($s0)
/* 19EDE4 80270504 00021600 */  sll   $v0, $v0, 0x18
/* 19EDE8 80270508 00021603 */  sra   $v0, $v0, 0x18
/* 19EDEC 8027050C 28420015 */  slti  $v0, $v0, 0x15
/* 19EDF0 80270510 14400003 */  bnez  $v0, .L80270520
/* 19EDF4 80270514 26240005 */   addiu $a0, $s1, 5
/* 19EDF8 80270518 24020014 */  addiu $v0, $zero, 0x14
/* 19EDFC 8027051C A2020222 */  sb    $v0, 0x222($s0)
.L80270520:
/* 19EE00 80270520 4405C000 */  mfc1  $a1, $f24
/* 19EE04 80270524 4406A000 */  mfc1  $a2, $f20
/* 19EE08 80270528 4407B000 */  mfc1  $a3, $f22
/* 19EE0C 8027052C 3C013F80 */  lui   $at, 0x3f80
/* 19EE10 80270530 44810000 */  mtc1  $at, $f0
/* 19EE14 80270534 2402003C */  addiu $v0, $zero, 0x3c
/* 19EE18 80270538 AFA20014 */  sw    $v0, 0x14($sp)
/* 19EE1C 8027053C 0C01C634 */  jal   func_800718D0
/* 19EE20 80270540 E7A00010 */   swc1  $f0, 0x10($sp)
/* 19EE24 80270544 2402000F */  addiu $v0, $zero, 0xf
/* 19EE28 80270548 AE42007C */  sw    $v0, 0x7c($s2)
/* 19EE2C 8027054C 24020003 */  addiu $v0, $zero, 3
/* 19EE30 80270550 0809C17B */  j     .L802705EC
/* 19EE34 80270554 AE420070 */   sw    $v0, 0x70($s2)

/* 19EE38 80270558 8E42007C */  lw    $v0, 0x7c($s2)
/* 19EE3C 8027055C 14400016 */  bnez  $v0, .L802705B8
/* 19EE40 80270560 2442FFFF */   addiu $v0, $v0, -1
/* 19EE44 80270564 2404001E */  addiu $a0, $zero, 0x1e
/* 19EE48 80270568 2405003C */  addiu $a1, $zero, 0x3c
/* 19EE4C 8027056C 0C093E81 */  jal   show_variable_battle_message
/* 19EE50 80270570 0220302D */   daddu $a2, $s1, $zero
/* 19EE54 80270574 24020004 */  addiu $v0, $zero, 4
/* 19EE58 80270578 0809C17B */  j     .L802705EC
/* 19EE5C 8027057C AE420070 */   sw    $v0, 0x70($s2)

/* 19EE60 80270580 0C093EAD */  jal   is_popup_displayed
/* 19EE64 80270584 00000000 */   nop   
/* 19EE68 80270588 14400019 */  bnez  $v0, .L802705F0
/* 19EE6C 8027058C 0000102D */   daddu $v0, $zero, $zero
/* 19EE70 80270590 0C093903 */  jal   func_8024E40C
/* 19EE74 80270594 24040002 */   addiu $a0, $zero, 2
/* 19EE78 80270598 2402000A */  addiu $v0, $zero, 0xa
/* 19EE7C 8027059C AE42007C */  sw    $v0, 0x7c($s2)
/* 19EE80 802705A0 24020005 */  addiu $v0, $zero, 5
/* 19EE84 802705A4 0809C17B */  j     .L802705EC
/* 19EE88 802705A8 AE420070 */   sw    $v0, 0x70($s2)

/* 19EE8C 802705AC 8E42007C */  lw    $v0, 0x7c($s2)
/* 19EE90 802705B0 10400003 */  beqz  $v0, .L802705C0
/* 19EE94 802705B4 2442FFFF */   addiu $v0, $v0, -1
.L802705B8:
/* 19EE98 802705B8 0809C17B */  j     .L802705EC
/* 19EE9C 802705BC AE42007C */   sw    $v0, 0x7c($s2)

.L802705C0:
/* 19EEA0 802705C0 8E0201D8 */  lw    $v0, 0x1d8($s0)
/* 19EEA4 802705C4 10400005 */  beqz  $v0, .L802705DC
/* 19EEA8 802705C8 00000000 */   nop   
/* 19EEAC 802705CC 0C0B1059 */  jal   does_script_exist
/* 19EEB0 802705D0 8E0401E8 */   lw    $a0, 0x1e8($s0)
/* 19EEB4 802705D4 14400006 */  bnez  $v0, .L802705F0
/* 19EEB8 802705D8 0000102D */   daddu $v0, $zero, $zero
.L802705DC:
/* 19EEBC 802705DC 3C01802A */  lui   $at, 0x802a
/* 19EEC0 802705E0 A020FBD4 */  sb    $zero, -0x42c($at)
/* 19EEC4 802705E4 0809C17C */  j     .L802705F0
/* 19EEC8 802705E8 24020002 */   addiu $v0, $zero, 2

.L802705EC:
.L802705EC:
/* 19EECC 802705EC 0000102D */  daddu $v0, $zero, $zero
.L802705F0:
.L802705F0:
/* 19EED0 802705F0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 19EED4 802705F4 8FB20020 */  lw    $s2, 0x20($sp)
/* 19EED8 802705F8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 19EEDC 802705FC 8FB00018 */  lw    $s0, 0x18($sp)
/* 19EEE0 80270600 D7B80038 */  ldc1  $f24, 0x38($sp)
/* 19EEE4 80270604 D7B60030 */  ldc1  $f22, 0x30($sp)
/* 19EEE8 80270608 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 19EEEC 8027060C 03E00008 */  jr    $ra
/* 19EEF0 80270610 27BD0040 */   addiu $sp, $sp, 0x40

