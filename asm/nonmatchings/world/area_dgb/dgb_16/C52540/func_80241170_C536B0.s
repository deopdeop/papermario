.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241170_C536B0
/* C536B0 80241170 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* C536B4 80241174 AFB20038 */  sw        $s2, 0x38($sp)
/* C536B8 80241178 0080902D */  daddu     $s2, $a0, $zero
/* C536BC 8024117C AFBF0048 */  sw        $ra, 0x48($sp)
/* C536C0 80241180 AFB50044 */  sw        $s5, 0x44($sp)
/* C536C4 80241184 AFB40040 */  sw        $s4, 0x40($sp)
/* C536C8 80241188 AFB3003C */  sw        $s3, 0x3c($sp)
/* C536CC 8024118C AFB10034 */  sw        $s1, 0x34($sp)
/* C536D0 80241190 AFB00030 */  sw        $s0, 0x30($sp)
/* C536D4 80241194 8E510148 */  lw        $s1, 0x148($s2)
/* C536D8 80241198 86240008 */  lh        $a0, 8($s1)
/* C536DC 8024119C 0C00EABB */  jal       get_npc_unsafe
/* C536E0 802411A0 00A0802D */   daddu    $s0, $a1, $zero
/* C536E4 802411A4 8E43000C */  lw        $v1, 0xc($s2)
/* C536E8 802411A8 0240202D */  daddu     $a0, $s2, $zero
/* C536EC 802411AC 8C650000 */  lw        $a1, ($v1)
/* C536F0 802411B0 0C0B1EAF */  jal       get_variable
/* C536F4 802411B4 0040A82D */   daddu    $s5, $v0, $zero
/* C536F8 802411B8 AFA00010 */  sw        $zero, 0x10($sp)
/* C536FC 802411BC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C53700 802411C0 8C630030 */  lw        $v1, 0x30($v1)
/* C53704 802411C4 AFA30014 */  sw        $v1, 0x14($sp)
/* C53708 802411C8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C5370C 802411CC 8C63001C */  lw        $v1, 0x1c($v1)
/* C53710 802411D0 AFA30018 */  sw        $v1, 0x18($sp)
/* C53714 802411D4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C53718 802411D8 8C630024 */  lw        $v1, 0x24($v1)
/* C5371C 802411DC AFA3001C */  sw        $v1, 0x1c($sp)
/* C53720 802411E0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C53724 802411E4 8C630028 */  lw        $v1, 0x28($v1)
/* C53728 802411E8 27B40010 */  addiu     $s4, $sp, 0x10
/* C5372C 802411EC AFA30020 */  sw        $v1, 0x20($sp)
/* C53730 802411F0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C53734 802411F4 3C014282 */  lui       $at, 0x4282
/* C53738 802411F8 44810000 */  mtc1      $at, $f0
/* C5373C 802411FC 8C63002C */  lw        $v1, 0x2c($v1)
/* C53740 80241200 0040982D */  daddu     $s3, $v0, $zero
/* C53744 80241204 E7A00028 */  swc1      $f0, 0x28($sp)
/* C53748 80241208 A7A0002C */  sh        $zero, 0x2c($sp)
/* C5374C 8024120C 16000005 */  bnez      $s0, .L80241224
/* C53750 80241210 AFA30024 */   sw       $v1, 0x24($sp)
/* C53754 80241214 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C53758 80241218 30420004 */  andi      $v0, $v0, 4
/* C5375C 8024121C 10400020 */  beqz      $v0, .L802412A0
/* C53760 80241220 00000000 */   nop      
.L80241224:
/* C53764 80241224 2404F7FF */  addiu     $a0, $zero, -0x801
/* C53768 80241228 AE400070 */  sw        $zero, 0x70($s2)
/* C5376C 8024122C A6A0008E */  sh        $zero, 0x8e($s5)
/* C53770 80241230 8E2200CC */  lw        $v0, 0xcc($s1)
/* C53774 80241234 8EA30000 */  lw        $v1, ($s5)
/* C53778 80241238 8C420000 */  lw        $v0, ($v0)
/* C5377C 8024123C 00641824 */  and       $v1, $v1, $a0
/* C53780 80241240 AEA30000 */  sw        $v1, ($s5)
/* C53784 80241244 AEA20028 */  sw        $v0, 0x28($s5)
/* C53788 80241248 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C5378C 8024124C 8C420034 */  lw        $v0, 0x34($v0)
/* C53790 80241250 54400005 */  bnel      $v0, $zero, .L80241268
/* C53794 80241254 2402FDFF */   addiu    $v0, $zero, -0x201
/* C53798 80241258 34620200 */  ori       $v0, $v1, 0x200
/* C5379C 8024125C 2403FFF7 */  addiu     $v1, $zero, -9
/* C537A0 80241260 0809049C */  j         .L80241270
/* C537A4 80241264 00431024 */   and      $v0, $v0, $v1
.L80241268:
/* C537A8 80241268 00621024 */  and       $v0, $v1, $v0
/* C537AC 8024126C 34420008 */  ori       $v0, $v0, 8
.L80241270:
/* C537B0 80241270 AEA20000 */  sw        $v0, ($s5)
/* C537B4 80241274 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C537B8 80241278 30420004 */  andi      $v0, $v0, 4
/* C537BC 8024127C 10400007 */  beqz      $v0, .L8024129C
/* C537C0 80241280 24020063 */   addiu    $v0, $zero, 0x63
/* C537C4 80241284 AE420070 */  sw        $v0, 0x70($s2)
/* C537C8 80241288 AE400074 */  sw        $zero, 0x74($s2)
/* C537CC 8024128C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C537D0 80241290 2403FFFB */  addiu     $v1, $zero, -5
/* C537D4 80241294 00431024 */  and       $v0, $v0, $v1
/* C537D8 80241298 AE2200B0 */  sw        $v0, 0xb0($s1)
.L8024129C:
/* C537DC 8024129C AE20006C */  sw        $zero, 0x6c($s1)
.L802412A0:
/* C537E0 802412A0 8E420070 */  lw        $v0, 0x70($s2)
/* C537E4 802412A4 2842001E */  slti      $v0, $v0, 0x1e
/* C537E8 802412A8 10400009 */  beqz      $v0, .L802412D0
/* C537EC 802412AC 00000000 */   nop      
/* C537F0 802412B0 8E22006C */  lw        $v0, 0x6c($s1)
/* C537F4 802412B4 14400006 */  bnez      $v0, .L802412D0
/* C537F8 802412B8 00000000 */   nop      
/* C537FC 802412BC 0C090082 */  jal       func_80240208_C52748
/* C53800 802412C0 0240202D */   daddu    $a0, $s2, $zero
/* C53804 802412C4 10400002 */  beqz      $v0, .L802412D0
/* C53808 802412C8 2402001E */   addiu    $v0, $zero, 0x1e
/* C5380C 802412CC AE420070 */  sw        $v0, 0x70($s2)
.L802412D0:
/* C53810 802412D0 8E430070 */  lw        $v1, 0x70($s2)
/* C53814 802412D4 2C620064 */  sltiu     $v0, $v1, 0x64
/* C53818 802412D8 10400048 */  beqz      $v0, .L802413FC
/* C5381C 802412DC 00031080 */   sll      $v0, $v1, 2
/* C53820 802412E0 3C018024 */  lui       $at, 0x8024
/* C53824 802412E4 00220821 */  addu      $at, $at, $v0
/* C53828 802412E8 8C223390 */  lw        $v0, 0x3390($at)
/* C5382C 802412EC 00400008 */  jr        $v0
/* C53830 802412F0 00000000 */   nop      
/* C53834 802412F4 0240202D */  daddu     $a0, $s2, $zero
/* C53838 802412F8 0260282D */  daddu     $a1, $s3, $zero
/* C5383C 802412FC 0C012568 */  jal       func_800495A0
/* C53840 80241300 0280302D */   daddu    $a2, $s4, $zero
/* C53844 80241304 0240202D */  daddu     $a0, $s2, $zero
/* C53848 80241308 0260282D */  daddu     $a1, $s3, $zero
/* C5384C 8024130C 0C0125AE */  jal       func_800496B8
/* C53850 80241310 0280302D */   daddu    $a2, $s4, $zero
/* C53854 80241314 080904FF */  j         .L802413FC
/* C53858 80241318 00000000 */   nop      
/* C5385C 8024131C 0240202D */  daddu     $a0, $s2, $zero
/* C53860 80241320 0260282D */  daddu     $a1, $s3, $zero
/* C53864 80241324 0C0126D1 */  jal       func_80049B44
/* C53868 80241328 0280302D */   daddu    $a2, $s4, $zero
/* C5386C 8024132C 0240202D */  daddu     $a0, $s2, $zero
/* C53870 80241330 0260282D */  daddu     $a1, $s3, $zero
/* C53874 80241334 0C012701 */  jal       func_80049C04
/* C53878 80241338 0280302D */   daddu    $a2, $s4, $zero
/* C5387C 8024133C 080904FF */  j         .L802413FC
/* C53880 80241340 00000000 */   nop      
/* C53884 80241344 0240202D */  daddu     $a0, $s2, $zero
/* C53888 80241348 0260282D */  daddu     $a1, $s3, $zero
/* C5388C 8024134C 0C01278F */  jal       func_80049E3C
/* C53890 80241350 0280302D */   daddu    $a2, $s4, $zero
/* C53894 80241354 0240202D */  daddu     $a0, $s2, $zero
/* C53898 80241358 0260282D */  daddu     $a1, $s3, $zero
/* C5389C 8024135C 0C0127B3 */  jal       func_80049ECC
/* C538A0 80241360 0280302D */   daddu    $a2, $s4, $zero
/* C538A4 80241364 080904FF */  j         .L802413FC
/* C538A8 80241368 00000000 */   nop      
/* C538AC 8024136C 0240202D */  daddu     $a0, $s2, $zero
/* C538B0 80241370 0260282D */  daddu     $a1, $s3, $zero
/* C538B4 80241374 0C0127DF */  jal       func_80049F7C
/* C538B8 80241378 0280302D */   daddu    $a2, $s4, $zero
/* C538BC 8024137C 0240202D */  daddu     $a0, $s2, $zero
/* C538C0 80241380 0260282D */  daddu     $a1, $s3, $zero
/* C538C4 80241384 0C012849 */  jal       func_8004A124
/* C538C8 80241388 0280302D */   daddu    $a2, $s4, $zero
/* C538CC 8024138C 080904FF */  j         .L802413FC
/* C538D0 80241390 00000000 */   nop      
/* C538D4 80241394 0240202D */  daddu     $a0, $s2, $zero
/* C538D8 80241398 0260282D */  daddu     $a1, $s3, $zero
/* C538DC 8024139C 0C0128FA */  jal       func_8004A3E8
/* C538E0 802413A0 0280302D */   daddu    $a2, $s4, $zero
/* C538E4 802413A4 080904FF */  j         .L802413FC
/* C538E8 802413A8 00000000 */   nop      
/* C538EC 802413AC 0C090000 */  jal       UnkNpcAIFunc6
/* C538F0 802413B0 0240202D */   daddu    $a0, $s2, $zero
/* C538F4 802413B4 0C09001B */  jal       UnkNpcAIFunc7
/* C538F8 802413B8 0240202D */   daddu    $a0, $s2, $zero
/* C538FC 802413BC 8E430070 */  lw        $v1, 0x70($s2)
/* C53900 802413C0 24020020 */  addiu     $v0, $zero, 0x20
/* C53904 802413C4 1462000D */  bne       $v1, $v0, .L802413FC
/* C53908 802413C8 00000000 */   nop      
/* C5390C 802413CC 0C090037 */  jal       func_802400DC_C5261C
/* C53910 802413D0 0240202D */   daddu    $a0, $s2, $zero
/* C53914 802413D4 8E430070 */  lw        $v1, 0x70($s2)
/* C53918 802413D8 24020021 */  addiu     $v0, $zero, 0x21
/* C5391C 802413DC 14620007 */  bne       $v1, $v0, .L802413FC
/* C53920 802413E0 00000000 */   nop      
/* C53924 802413E4 0C09006D */  jal       UnkNpcAIFunc5
/* C53928 802413E8 0240202D */   daddu    $a0, $s2, $zero
/* C5392C 802413EC 080904FF */  j         .L802413FC
/* C53930 802413F0 00000000 */   nop      
/* C53934 802413F4 0C0129CF */  jal       func_8004A73C
/* C53938 802413F8 0240202D */   daddu    $a0, $s2, $zero
.L802413FC:
/* C5393C 802413FC 8FBF0048 */  lw        $ra, 0x48($sp)
/* C53940 80241400 8FB50044 */  lw        $s5, 0x44($sp)
/* C53944 80241404 8FB40040 */  lw        $s4, 0x40($sp)
/* C53948 80241408 8FB3003C */  lw        $s3, 0x3c($sp)
/* C5394C 8024140C 8FB20038 */  lw        $s2, 0x38($sp)
/* C53950 80241410 8FB10034 */  lw        $s1, 0x34($sp)
/* C53954 80241414 8FB00030 */  lw        $s0, 0x30($sp)
/* C53958 80241418 0000102D */  daddu     $v0, $zero, $zero
/* C5395C 8024141C 03E00008 */  jr        $ra
/* C53960 80241420 27BD0050 */   addiu    $sp, $sp, 0x50
/* C53964 80241424 00000000 */  nop       
/* C53968 80241428 00000000 */  nop       
/* C5396C 8024142C 00000000 */  nop       
