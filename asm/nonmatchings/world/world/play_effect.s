.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel play_effect
/* 35964 8005A564 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 35968 8005A568 AFB20020 */  sw        $s2, 0x20($sp)
/* 3596C 8005A56C 0080902D */  daddu     $s2, $a0, $zero
/* 35970 8005A570 3C038008 */  lui       $v1, 0x8008
/* 35974 8005A574 2463F210 */  addiu     $v1, $v1, -0xdf0
/* 35978 8005A578 00121040 */  sll       $v0, $s2, 1
/* 3597C 8005A57C 00521021 */  addu      $v0, $v0, $s2
/* 35980 8005A580 000210C0 */  sll       $v0, $v0, 3
/* 35984 8005A584 AFB1001C */  sw        $s1, 0x1c($sp)
/* 35988 8005A588 00438821 */  addu      $s1, $v0, $v1
/* 3598C 8005A58C 0000202D */  daddu     $a0, $zero, $zero
/* 35990 8005A590 AFB00018 */  sw        $s0, 0x18($sp)
/* 35994 8005A594 3C10800A */  lui       $s0, 0x800a
/* 35998 8005A598 26104000 */  addiu     $s0, $s0, 0x4000
/* 3599C 8005A59C AFBF0024 */  sw        $ra, 0x24($sp)
.L8005A5A0:
/* 359A0 8005A5A0 8E020000 */  lw        $v0, ($s0)
/* 359A4 8005A5A4 30420001 */  andi      $v0, $v0, 1
/* 359A8 8005A5A8 50400005 */  beql      $v0, $zero, .L8005A5C0
/* 359AC 8005A5AC 24840001 */   addiu    $a0, $a0, 1
/* 359B0 8005A5B0 8E020004 */  lw        $v0, 4($s0)
/* 359B4 8005A5B4 10520006 */  beq       $v0, $s2, .L8005A5D0
/* 359B8 8005A5B8 2882000F */   slti     $v0, $a0, 0xf
/* 359BC 8005A5BC 24840001 */  addiu     $a0, $a0, 1
.L8005A5C0:
/* 359C0 8005A5C0 2882000F */  slti      $v0, $a0, 0xf
/* 359C4 8005A5C4 1440FFF6 */  bnez      $v0, .L8005A5A0
/* 359C8 8005A5C8 26100020 */   addiu    $s0, $s0, 0x20
/* 359CC 8005A5CC 2882000F */  slti      $v0, $a0, 0xf
.L8005A5D0:
/* 359D0 8005A5D0 14400030 */  bnez      $v0, .L8005A694
/* 359D4 8005A5D4 24020001 */   addiu    $v0, $zero, 1
/* 359D8 8005A5D8 0000202D */  daddu     $a0, $zero, $zero
/* 359DC 8005A5DC 3C10800A */  lui       $s0, 0x800a
/* 359E0 8005A5E0 26104000 */  addiu     $s0, $s0, 0x4000
.L8005A5E4:
/* 359E4 8005A5E4 8E020000 */  lw        $v0, ($s0)
/* 359E8 8005A5E8 30420001 */  andi      $v0, $v0, 1
/* 359EC 8005A5EC 10400006 */  beqz      $v0, .L8005A608
/* 359F0 8005A5F0 2882000F */   slti     $v0, $a0, 0xf
/* 359F4 8005A5F4 24840001 */  addiu     $a0, $a0, 1
/* 359F8 8005A5F8 2882000F */  slti      $v0, $a0, 0xf
/* 359FC 8005A5FC 1440FFF9 */  bnez      $v0, .L8005A5E4
/* 35A00 8005A600 26100020 */   addiu    $s0, $s0, 0x20
/* 35A04 8005A604 2882000F */  slti      $v0, $a0, 0xf
.L8005A608:
/* 35A08 8005A608 14400003 */  bnez      $v0, .L8005A618
/* 35A0C 8005A60C 3C0700FF */   lui      $a3, 0xff
.L8005A610:
/* 35A10 8005A610 08016984 */  j         .L8005A610
/* 35A14 8005A614 00000000 */   nop      
.L8005A618:
/* 35A18 8005A618 34E7FFFF */  ori       $a3, $a3, 0xffff
/* 35A1C 8005A61C 0000282D */  daddu     $a1, $zero, $zero
/* 35A20 8005A620 2402FFFF */  addiu     $v0, $zero, -1
/* 35A24 8005A624 3C038019 */  lui       $v1, 0x8019
/* 35A28 8005A628 24637000 */  addiu     $v1, $v1, 0x7000
/* 35A2C 8005A62C AFA20010 */  sw        $v0, 0x10($sp)
/* 35A30 8005A630 AFA20014 */  sw        $v0, 0x14($sp)
/* 35A34 8005A634 00041300 */  sll       $v0, $a0, 0xc
/* 35A38 8005A638 00431021 */  addu      $v0, $v0, $v1
/* 35A3C 8005A63C 8E26000C */  lw        $a2, 0xc($s1)
/* 35A40 8005A640 0C0199E8 */  jal       osMapTLB
/* 35A44 8005A644 00473824 */   and      $a3, $v0, $a3
/* 35A48 8005A648 8E240004 */  lw        $a0, 4($s1)
/* 35A4C 8005A64C 8E250008 */  lw        $a1, 8($s1)
/* 35A50 8005A650 0C00A5CF */  jal       dma_copy
/* 35A54 8005A654 8E26000C */   lw       $a2, 0xc($s1)
/* 35A58 8005A658 8E220010 */  lw        $v0, 0x10($s1)
/* 35A5C 8005A65C 5040000D */  beql      $v0, $zero, .L8005A694
/* 35A60 8005A660 24020001 */   addiu    $v0, $zero, 1
/* 35A64 8005A664 8E240014 */  lw        $a0, 0x14($s1)
/* 35A68 8005A668 0C00AB0A */  jal       general_heap_malloc
/* 35A6C 8005A66C 00822023 */   subu     $a0, $a0, $v0
/* 35A70 8005A670 14400003 */  bnez      $v0, .L8005A680
/* 35A74 8005A674 AE02001C */   sw       $v0, 0x1c($s0)
.L8005A678:
/* 35A78 8005A678 0801699E */  j         .L8005A678
/* 35A7C 8005A67C 00000000 */   nop      
.L8005A680:
/* 35A80 8005A680 8E240010 */  lw        $a0, 0x10($s1)
/* 35A84 8005A684 8E250014 */  lw        $a1, 0x14($s1)
/* 35A88 8005A688 0C00A5CF */  jal       dma_copy
/* 35A8C 8005A68C 8E06001C */   lw       $a2, 0x1c($s0)
/* 35A90 8005A690 24020001 */  addiu     $v0, $zero, 1
.L8005A694:
/* 35A94 8005A694 0040182D */  daddu     $v1, $v0, $zero
/* 35A98 8005A698 AE120004 */  sw        $s2, 4($s0)
/* 35A9C 8005A69C AE000008 */  sw        $zero, 8($s0)
/* 35AA0 8005A6A0 AE030000 */  sw        $v1, ($s0)
/* 35AA4 8005A6A4 8FBF0024 */  lw        $ra, 0x24($sp)
/* 35AA8 8005A6A8 8FB20020 */  lw        $s2, 0x20($sp)
/* 35AAC 8005A6AC 8FB1001C */  lw        $s1, 0x1c($sp)
/* 35AB0 8005A6B0 8FB00018 */  lw        $s0, 0x18($sp)
/* 35AB4 8005A6B4 03E00008 */  jr        $ra
/* 35AB8 8005A6B8 27BD0028 */   addiu    $sp, $sp, 0x28
/* 35ABC 8005A6BC 00000000 */  nop       
