.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024066C_D1172C
/* D1172C 8024066C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* D11730 80240670 AFB20038 */  sw        $s2, 0x38($sp)
/* D11734 80240674 0080902D */  daddu     $s2, $a0, $zero
/* D11738 80240678 AFBF0048 */  sw        $ra, 0x48($sp)
/* D1173C 8024067C AFB50044 */  sw        $s5, 0x44($sp)
/* D11740 80240680 AFB40040 */  sw        $s4, 0x40($sp)
/* D11744 80240684 AFB3003C */  sw        $s3, 0x3c($sp)
/* D11748 80240688 AFB10034 */  sw        $s1, 0x34($sp)
/* D1174C 8024068C AFB00030 */  sw        $s0, 0x30($sp)
/* D11750 80240690 8E510148 */  lw        $s1, 0x148($s2)
/* D11754 80240694 86240008 */  lh        $a0, 8($s1)
/* D11758 80240698 0C00EABB */  jal       get_npc_unsafe
/* D1175C 8024069C 00A0802D */   daddu    $s0, $a1, $zero
/* D11760 802406A0 8E43000C */  lw        $v1, 0xc($s2)
/* D11764 802406A4 0240202D */  daddu     $a0, $s2, $zero
/* D11768 802406A8 8C650000 */  lw        $a1, ($v1)
/* D1176C 802406AC 0C0B1EAF */  jal       get_variable
/* D11770 802406B0 0040A82D */   daddu    $s5, $v0, $zero
/* D11774 802406B4 AFA00010 */  sw        $zero, 0x10($sp)
/* D11778 802406B8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D1177C 802406BC 8C630030 */  lw        $v1, 0x30($v1)
/* D11780 802406C0 AFA30014 */  sw        $v1, 0x14($sp)
/* D11784 802406C4 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D11788 802406C8 8C63001C */  lw        $v1, 0x1c($v1)
/* D1178C 802406CC AFA30018 */  sw        $v1, 0x18($sp)
/* D11790 802406D0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D11794 802406D4 8C630024 */  lw        $v1, 0x24($v1)
/* D11798 802406D8 AFA3001C */  sw        $v1, 0x1c($sp)
/* D1179C 802406DC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D117A0 802406E0 8C630028 */  lw        $v1, 0x28($v1)
/* D117A4 802406E4 27B40010 */  addiu     $s4, $sp, 0x10
/* D117A8 802406E8 AFA30020 */  sw        $v1, 0x20($sp)
/* D117AC 802406EC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* D117B0 802406F0 3C014282 */  lui       $at, 0x4282
/* D117B4 802406F4 44810000 */  mtc1      $at, $f0
/* D117B8 802406F8 8C63002C */  lw        $v1, 0x2c($v1)
/* D117BC 802406FC 0040982D */  daddu     $s3, $v0, $zero
/* D117C0 80240700 E7A00028 */  swc1      $f0, 0x28($sp)
/* D117C4 80240704 A7A0002C */  sh        $zero, 0x2c($sp)
/* D117C8 80240708 16000005 */  bnez      $s0, .L80240720
/* D117CC 8024070C AFA30024 */   sw       $v1, 0x24($sp)
/* D117D0 80240710 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D117D4 80240714 30420004 */  andi      $v0, $v0, 4
/* D117D8 80240718 10400020 */  beqz      $v0, .L8024079C
/* D117DC 8024071C 00000000 */   nop      
.L80240720:
/* D117E0 80240720 2404F7FF */  addiu     $a0, $zero, -0x801
/* D117E4 80240724 AE400070 */  sw        $zero, 0x70($s2)
/* D117E8 80240728 A6A0008E */  sh        $zero, 0x8e($s5)
/* D117EC 8024072C 8E2200CC */  lw        $v0, 0xcc($s1)
/* D117F0 80240730 8EA30000 */  lw        $v1, ($s5)
/* D117F4 80240734 8C420000 */  lw        $v0, ($v0)
/* D117F8 80240738 00641824 */  and       $v1, $v1, $a0
/* D117FC 8024073C AEA30000 */  sw        $v1, ($s5)
/* D11800 80240740 AEA20028 */  sw        $v0, 0x28($s5)
/* D11804 80240744 8E2200D0 */  lw        $v0, 0xd0($s1)
/* D11808 80240748 8C420034 */  lw        $v0, 0x34($v0)
/* D1180C 8024074C 54400005 */  bnel      $v0, $zero, .L80240764
/* D11810 80240750 2402FDFF */   addiu    $v0, $zero, -0x201
/* D11814 80240754 34620200 */  ori       $v0, $v1, 0x200
/* D11818 80240758 2403FFF7 */  addiu     $v1, $zero, -9
/* D1181C 8024075C 080901DB */  j         .L8024076C
/* D11820 80240760 00431024 */   and      $v0, $v0, $v1
.L80240764:
/* D11824 80240764 00621024 */  and       $v0, $v1, $v0
/* D11828 80240768 34420008 */  ori       $v0, $v0, 8
.L8024076C:
/* D1182C 8024076C AEA20000 */  sw        $v0, ($s5)
/* D11830 80240770 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D11834 80240774 30420004 */  andi      $v0, $v0, 4
/* D11838 80240778 10400007 */  beqz      $v0, .L80240798
/* D1183C 8024077C 24020063 */   addiu    $v0, $zero, 0x63
/* D11840 80240780 AE420070 */  sw        $v0, 0x70($s2)
/* D11844 80240784 AE400074 */  sw        $zero, 0x74($s2)
/* D11848 80240788 8E2200B0 */  lw        $v0, 0xb0($s1)
/* D1184C 8024078C 2403FFFB */  addiu     $v1, $zero, -5
/* D11850 80240790 00431024 */  and       $v0, $v0, $v1
/* D11854 80240794 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80240798:
/* D11858 80240798 AE20006C */  sw        $zero, 0x6c($s1)
.L8024079C:
/* D1185C 8024079C 8E420070 */  lw        $v0, 0x70($s2)
/* D11860 802407A0 2842001E */  slti      $v0, $v0, 0x1e
/* D11864 802407A4 10400009 */  beqz      $v0, .L802407CC
/* D11868 802407A8 00000000 */   nop      
/* D1186C 802407AC 8E22006C */  lw        $v0, 0x6c($s1)
/* D11870 802407B0 14400006 */  bnez      $v0, .L802407CC
/* D11874 802407B4 00000000 */   nop      
/* D11878 802407B8 0C090096 */  jal       func_80240258_D11318
/* D1187C 802407BC 0240202D */   daddu    $a0, $s2, $zero
/* D11880 802407C0 10400002 */  beqz      $v0, .L802407CC
/* D11884 802407C4 2402001E */   addiu    $v0, $zero, 0x1e
/* D11888 802407C8 AE420070 */  sw        $v0, 0x70($s2)
.L802407CC:
/* D1188C 802407CC 8E430070 */  lw        $v1, 0x70($s2)
/* D11890 802407D0 2C620064 */  sltiu     $v0, $v1, 0x64
/* D11894 802407D4 10400048 */  beqz      $v0, .L802408F8
/* D11898 802407D8 00031080 */   sll      $v0, $v1, 2
/* D1189C 802407DC 3C018024 */  lui       $at, 0x8024
/* D118A0 802407E0 00220821 */  addu      $at, $at, $v0
/* D118A4 802407E4 8C222378 */  lw        $v0, 0x2378($at)
/* D118A8 802407E8 00400008 */  jr        $v0
/* D118AC 802407EC 00000000 */   nop      
/* D118B0 802407F0 0240202D */  daddu     $a0, $s2, $zero
/* D118B4 802407F4 0260282D */  daddu     $a1, $s3, $zero
/* D118B8 802407F8 0C012568 */  jal       func_800495A0
/* D118BC 802407FC 0280302D */   daddu    $a2, $s4, $zero
/* D118C0 80240800 0240202D */  daddu     $a0, $s2, $zero
/* D118C4 80240804 0260282D */  daddu     $a1, $s3, $zero
/* D118C8 80240808 0C0125AE */  jal       func_800496B8
/* D118CC 8024080C 0280302D */   daddu    $a2, $s4, $zero
/* D118D0 80240810 0809023E */  j         .L802408F8
/* D118D4 80240814 00000000 */   nop      
/* D118D8 80240818 0240202D */  daddu     $a0, $s2, $zero
/* D118DC 8024081C 0260282D */  daddu     $a1, $s3, $zero
/* D118E0 80240820 0C0126D1 */  jal       func_80049B44
/* D118E4 80240824 0280302D */   daddu    $a2, $s4, $zero
/* D118E8 80240828 0240202D */  daddu     $a0, $s2, $zero
/* D118EC 8024082C 0260282D */  daddu     $a1, $s3, $zero
/* D118F0 80240830 0C012701 */  jal       func_80049C04
/* D118F4 80240834 0280302D */   daddu    $a2, $s4, $zero
/* D118F8 80240838 0809023E */  j         .L802408F8
/* D118FC 8024083C 00000000 */   nop      
/* D11900 80240840 0240202D */  daddu     $a0, $s2, $zero
/* D11904 80240844 0260282D */  daddu     $a1, $s3, $zero
/* D11908 80240848 0C01278F */  jal       func_80049E3C
/* D1190C 8024084C 0280302D */   daddu    $a2, $s4, $zero
/* D11910 80240850 0240202D */  daddu     $a0, $s2, $zero
/* D11914 80240854 0260282D */  daddu     $a1, $s3, $zero
/* D11918 80240858 0C0127B3 */  jal       func_80049ECC
/* D1191C 8024085C 0280302D */   daddu    $a2, $s4, $zero
/* D11920 80240860 0809023E */  j         .L802408F8
/* D11924 80240864 00000000 */   nop      
/* D11928 80240868 0240202D */  daddu     $a0, $s2, $zero
/* D1192C 8024086C 0260282D */  daddu     $a1, $s3, $zero
/* D11930 80240870 0C0127DF */  jal       func_80049F7C
/* D11934 80240874 0280302D */   daddu    $a2, $s4, $zero
/* D11938 80240878 0240202D */  daddu     $a0, $s2, $zero
/* D1193C 8024087C 0260282D */  daddu     $a1, $s3, $zero
/* D11940 80240880 0C012849 */  jal       func_8004A124
/* D11944 80240884 0280302D */   daddu    $a2, $s4, $zero
/* D11948 80240888 0809023E */  j         .L802408F8
/* D1194C 8024088C 00000000 */   nop      
/* D11950 80240890 0240202D */  daddu     $a0, $s2, $zero
/* D11954 80240894 0260282D */  daddu     $a1, $s3, $zero
/* D11958 80240898 0C0128FA */  jal       func_8004A3E8
/* D1195C 8024089C 0280302D */   daddu    $a2, $s4, $zero
/* D11960 802408A0 0809023E */  j         .L802408F8
/* D11964 802408A4 00000000 */   nop      
/* D11968 802408A8 0C090014 */  jal       func_80240050_D11110
/* D1196C 802408AC 0240202D */   daddu    $a0, $s2, $zero
/* D11970 802408B0 0C09002F */  jal       func_802400BC_D1117C
/* D11974 802408B4 0240202D */   daddu    $a0, $s2, $zero
/* D11978 802408B8 8E430070 */  lw        $v1, 0x70($s2)
/* D1197C 802408BC 24020020 */  addiu     $v0, $zero, 0x20
/* D11980 802408C0 1462000D */  bne       $v1, $v0, .L802408F8
/* D11984 802408C4 00000000 */   nop      
/* D11988 802408C8 0C09004B */  jal       func_8024012C_D111EC
/* D1198C 802408CC 0240202D */   daddu    $a0, $s2, $zero
/* D11990 802408D0 8E430070 */  lw        $v1, 0x70($s2)
/* D11994 802408D4 24020021 */  addiu     $v0, $zero, 0x21
/* D11998 802408D8 14620007 */  bne       $v1, $v0, .L802408F8
/* D1199C 802408DC 00000000 */   nop      
/* D119A0 802408E0 0C090081 */  jal       func_80240204_D112C4
/* D119A4 802408E4 0240202D */   daddu    $a0, $s2, $zero
/* D119A8 802408E8 0809023E */  j         .L802408F8
/* D119AC 802408EC 00000000 */   nop      
/* D119B0 802408F0 0C0129CF */  jal       func_8004A73C
/* D119B4 802408F4 0240202D */   daddu    $a0, $s2, $zero
.L802408F8:
/* D119B8 802408F8 8FBF0048 */  lw        $ra, 0x48($sp)
/* D119BC 802408FC 8FB50044 */  lw        $s5, 0x44($sp)
/* D119C0 80240900 8FB40040 */  lw        $s4, 0x40($sp)
/* D119C4 80240904 8FB3003C */  lw        $s3, 0x3c($sp)
/* D119C8 80240908 8FB20038 */  lw        $s2, 0x38($sp)
/* D119CC 8024090C 8FB10034 */  lw        $s1, 0x34($sp)
/* D119D0 80240910 8FB00030 */  lw        $s0, 0x30($sp)
/* D119D4 80240914 0000102D */  daddu     $v0, $zero, $zero
/* D119D8 80240918 03E00008 */  jr        $ra
/* D119DC 8024091C 27BD0050 */   addiu    $sp, $sp, 0x50
