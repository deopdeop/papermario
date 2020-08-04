.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel _Genld
/* 0474B4 8006C0B4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0474B8 8006C0B8 AFB20018 */  sw    $s2, 0x18($sp)
/* 0474BC 8006C0BC 00C09021 */  addu  $s2, $a2, $zero
/* 0474C0 8006C0C0 8FA60040 */  lw    $a2, 0x40($sp)
/* 0474C4 8006C0C4 AFB10014 */  sw    $s1, 0x14($sp)
/* 0474C8 8006C0C8 00808821 */  addu  $s1, $a0, $zero
/* 0474CC 8006C0CC AFB3001C */  sw    $s3, 0x1c($sp)
/* 0474D0 8006C0D0 00A09821 */  addu  $s3, $a1, $zero
/* 0474D4 8006C0D4 AFB50024 */  sw    $s5, 0x24($sp)
/* 0474D8 8006C0D8 00E0A821 */  addu  $s5, $a3, $zero
/* 0474DC 8006C0DC 00073C00 */  sll   $a3, $a3, 0x10
/* 0474E0 8006C0E0 AFBF0028 */  sw    $ra, 0x28($sp)
/* 0474E4 8006C0E4 AFB40020 */  sw    $s4, 0x20($sp)
/* 0474E8 8006C0E8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0474EC 8006C0EC 1CE00004 */  bgtz  $a3, .L8006C100
/* 0474F0 8006C0F0 00C0A021 */   addu  $s4, $a2, $zero
/* 0474F4 8006C0F4 24150001 */  addiu $s5, $zero, 1
/* 0474F8 8006C0F8 3C12800A */  lui   $s2, 0x800a
/* 0474FC 8006C0FC 26529E30 */  addiu $s2, $s2, -0x61d0
.L8006C100:
/* 047500 8006C100 00051600 */  sll   $v0, $a1, 0x18
/* 047504 8006C104 00022603 */  sra   $a0, $v0, 0x18
/* 047508 8006C108 24050066 */  addiu $a1, $zero, 0x66
/* 04750C 8006C10C 1085000F */  beq   $a0, $a1, .L8006C14C
/* 047510 8006C110 38830067 */   xori  $v1, $a0, 0x67
/* 047514 8006C114 2C630001 */  sltiu $v1, $v1, 1
/* 047518 8006C118 38820047 */  xori  $v0, $a0, 0x47
/* 04751C 8006C11C 2C420001 */  sltiu $v0, $v0, 1
/* 047520 8006C120 00621825 */  or    $v1, $v1, $v0
/* 047524 8006C124 106000B4 */  beqz  $v1, .L8006C3F8
/* 047528 8006C128 00061400 */   sll   $v0, $a2, 0x10
/* 04752C 8006C12C 00021C03 */  sra   $v1, $v0, 0x10
/* 047530 8006C130 2862FFFC */  slti  $v0, $v1, -4
/* 047534 8006C134 1440009B */  bnez  $v0, .L8006C3A4
/* 047538 8006C138 00131600 */   sll   $v0, $s3, 0x18
/* 04753C 8006C13C 8E220024 */  lw    $v0, 0x24($s1)
/* 047540 8006C140 0062102A */  slt   $v0, $v1, $v0
/* 047544 8006C144 10400097 */  beqz  $v0, .L8006C3A4
/* 047548 8006C148 00131600 */   sll   $v0, $s3, 0x18
.L8006C14C:
/* 04754C 8006C14C 10850011 */  beq   $a0, $a1, .L8006C194
/* 047550 8006C150 24D40001 */   addiu $s4, $a2, 1
/* 047554 8006C154 8E220030 */  lw    $v0, 0x30($s1)
/* 047558 8006C158 30420008 */  andi  $v0, $v0, 8
/* 04755C 8006C15C 14400006 */  bnez  $v0, .L8006C178
/* 047560 8006C160 00151C00 */   sll   $v1, $s5, 0x10
/* 047564 8006C164 8E220024 */  lw    $v0, 0x24($s1)
/* 047568 8006C168 00031C03 */  sra   $v1, $v1, 0x10
/* 04756C 8006C16C 0062102A */  slt   $v0, $v1, $v0
/* 047570 8006C170 54400001 */  bnel  $v0, $zero, .L8006C178
/* 047574 8006C174 AE230024 */   sw    $v1, 0x24($s1)
.L8006C178:
/* 047578 8006C178 8E230024 */  lw    $v1, 0x24($s1)
/* 04757C 8006C17C 00141400 */  sll   $v0, $s4, 0x10
/* 047580 8006C180 00021403 */  sra   $v0, $v0, 0x10
/* 047584 8006C184 00621823 */  subu  $v1, $v1, $v0
/* 047588 8006C188 04610002 */  bgez  $v1, .L8006C194
/* 04758C 8006C18C AE230024 */   sw    $v1, 0x24($s1)
/* 047590 8006C190 AE200024 */  sw    $zero, 0x24($s1)
.L8006C194:
/* 047594 8006C194 00141400 */  sll   $v0, $s4, 0x10
/* 047598 8006C198 00029C03 */  sra   $s3, $v0, 0x10
/* 04759C 8006C19C 1E600036 */  bgtz  $s3, .L8006C278
/* 0475A0 8006C1A0 00151400 */   sll   $v0, $s5, 0x10
/* 0475A4 8006C1A4 8E240014 */  lw    $a0, 0x14($s1)
/* 0475A8 8006C1A8 8E230008 */  lw    $v1, 8($s1)
/* 0475AC 8006C1AC 24820001 */  addiu $v0, $a0, 1
/* 0475B0 8006C1B0 00641821 */  addu  $v1, $v1, $a0
/* 0475B4 8006C1B4 AE220014 */  sw    $v0, 0x14($s1)
/* 0475B8 8006C1B8 24020030 */  addiu $v0, $zero, 0x30
/* 0475BC 8006C1BC A0620000 */  sb    $v0, ($v1)
/* 0475C0 8006C1C0 8E220024 */  lw    $v0, 0x24($s1)
/* 0475C4 8006C1C4 1C400005 */  bgtz  $v0, .L8006C1DC
/* 0475C8 8006C1C8 00000000 */   nop   
/* 0475CC 8006C1CC 8E220030 */  lw    $v0, 0x30($s1)
/* 0475D0 8006C1D0 30420008 */  andi  $v0, $v0, 8
/* 0475D4 8006C1D4 10400009 */  beqz  $v0, .L8006C1FC
/* 0475D8 8006C1D8 00141400 */   sll   $v0, $s4, 0x10
.L8006C1DC:
/* 0475DC 8006C1DC 8E240014 */  lw    $a0, 0x14($s1)
/* 0475E0 8006C1E0 8E230008 */  lw    $v1, 8($s1)
/* 0475E4 8006C1E4 24820001 */  addiu $v0, $a0, 1
/* 0475E8 8006C1E8 00641821 */  addu  $v1, $v1, $a0
/* 0475EC 8006C1EC AE220014 */  sw    $v0, 0x14($s1)
/* 0475F0 8006C1F0 2402002E */  addiu $v0, $zero, 0x2e
/* 0475F4 8006C1F4 A0620000 */  sb    $v0, ($v1)
/* 0475F8 8006C1F8 00141400 */  sll   $v0, $s4, 0x10
.L8006C1FC:
/* 0475FC 8006C1FC 8E230024 */  lw    $v1, 0x24($s1)
/* 047600 8006C200 00021403 */  sra   $v0, $v0, 0x10
/* 047604 8006C204 00021023 */  negu  $v0, $v0
/* 047608 8006C208 0062102A */  slt   $v0, $v1, $v0
/* 04760C 8006C20C 54400001 */  bnel  $v0, $zero, .L8006C214
/* 047610 8006C210 0003A023 */   negu  $s4, $v1
.L8006C214:
/* 047614 8006C214 00141400 */  sll   $v0, $s4, 0x10
/* 047618 8006C218 8E240024 */  lw    $a0, 0x24($s1)
/* 04761C 8006C21C 00021403 */  sra   $v0, $v0, 0x10
/* 047620 8006C220 00021823 */  negu  $v1, $v0
/* 047624 8006C224 AE230018 */  sw    $v1, 0x18($s1)
/* 047628 8006C228 00822021 */  addu  $a0, $a0, $v0
/* 04762C 8006C22C 00151400 */  sll   $v0, $s5, 0x10
/* 047630 8006C230 00021403 */  sra   $v0, $v0, 0x10
/* 047634 8006C234 0082102A */  slt   $v0, $a0, $v0
/* 047638 8006C238 10400002 */  beqz  $v0, .L8006C244
/* 04763C 8006C23C AE240024 */   sw    $a0, 0x24($s1)
/* 047640 8006C240 0080A821 */  addu  $s5, $a0, $zero
.L8006C244:
/* 047644 8006C244 02402821 */  addu  $a1, $s2, $zero
/* 047648 8006C248 8E220008 */  lw    $v0, 8($s1)
/* 04764C 8006C24C 8E240014 */  lw    $a0, 0x14($s1)
/* 047650 8006C250 00158400 */  sll   $s0, $s5, 0x10
/* 047654 8006C254 00108403 */  sra   $s0, $s0, 0x10
/* 047658 8006C258 02003021 */  addu  $a2, $s0, $zero
/* 04765C 8006C25C AE30001C */  sw    $s0, 0x1c($s1)
/* 047660 8006C260 0C01929D */  jal   memcpy
/* 047664 8006C264 00442021 */   addu  $a0, $v0, $a0
/* 047668 8006C268 8E220024 */  lw    $v0, 0x24($s1)
/* 04766C 8006C26C 00501023 */  subu  $v0, $v0, $s0
/* 047670 8006C270 0801B17B */  j     .L8006C5EC
/* 047674 8006C274 AE220020 */   sw    $v0, 0x20($s1)

.L8006C278:
/* 047678 8006C278 00028403 */  sra   $s0, $v0, 0x10
/* 04767C 8006C27C 0213102A */  slt   $v0, $s0, $s3
/* 047680 8006C280 1040001C */  beqz  $v0, .L8006C2F4
/* 047684 8006C284 02402821 */   addu  $a1, $s2, $zero
/* 047688 8006C288 8E220008 */  lw    $v0, 8($s1)
/* 04768C 8006C28C 8E240014 */  lw    $a0, 0x14($s1)
/* 047690 8006C290 02003021 */  addu  $a2, $s0, $zero
/* 047694 8006C294 0C01929D */  jal   memcpy
/* 047698 8006C298 00442021 */   addu  $a0, $v0, $a0
/* 04769C 8006C29C 8E230014 */  lw    $v1, 0x14($s1)
/* 0476A0 8006C2A0 8E240024 */  lw    $a0, 0x24($s1)
/* 0476A4 8006C2A4 02701023 */  subu  $v0, $s3, $s0
/* 0476A8 8006C2A8 AE220018 */  sw    $v0, 0x18($s1)
/* 0476AC 8006C2AC 00701821 */  addu  $v1, $v1, $s0
/* 0476B0 8006C2B0 1C800005 */  bgtz  $a0, .L8006C2C8
/* 0476B4 8006C2B4 AE230014 */   sw    $v1, 0x14($s1)
/* 0476B8 8006C2B8 8E220030 */  lw    $v0, 0x30($s1)
/* 0476BC 8006C2BC 30420008 */  andi  $v0, $v0, 8
/* 0476C0 8006C2C0 10400009 */  beqz  $v0, .L8006C2E8
/* 0476C4 8006C2C4 00000000 */   nop   
.L8006C2C8:
/* 0476C8 8006C2C8 8E220008 */  lw    $v0, 8($s1)
/* 0476CC 8006C2CC 8E230014 */  lw    $v1, 0x14($s1)
/* 0476D0 8006C2D0 00431021 */  addu  $v0, $v0, $v1
/* 0476D4 8006C2D4 2403002E */  addiu $v1, $zero, 0x2e
/* 0476D8 8006C2D8 A0430000 */  sb    $v1, ($v0)
/* 0476DC 8006C2DC 8E22001C */  lw    $v0, 0x1c($s1)
/* 0476E0 8006C2E0 24420001 */  addiu $v0, $v0, 1
/* 0476E4 8006C2E4 AE22001C */  sw    $v0, 0x1c($s1)
.L8006C2E8:
/* 0476E8 8006C2E8 8E220024 */  lw    $v0, 0x24($s1)
/* 0476EC 8006C2EC 0801B17B */  j     .L8006C5EC
/* 0476F0 8006C2F0 AE220020 */   sw    $v0, 0x20($s1)

.L8006C2F4:
/* 0476F4 8006C2F4 8E220008 */  lw    $v0, 8($s1)
/* 0476F8 8006C2F8 8E240014 */  lw    $a0, 0x14($s1)
/* 0476FC 8006C2FC 02603021 */  addu  $a2, $s3, $zero
/* 047700 8006C300 0C01929D */  jal   memcpy
/* 047704 8006C304 00442021 */   addu  $a0, $v0, $a0
/* 047708 8006C308 8E220014 */  lw    $v0, 0x14($s1)
/* 04770C 8006C30C 8E230024 */  lw    $v1, 0x24($s1)
/* 047710 8006C310 02B4A823 */  subu  $s5, $s5, $s4
/* 047714 8006C314 00533021 */  addu  $a2, $v0, $s3
/* 047718 8006C318 1C600005 */  bgtz  $v1, .L8006C330
/* 04771C 8006C31C AE260014 */   sw    $a2, 0x14($s1)
/* 047720 8006C320 8E220030 */  lw    $v0, 0x30($s1)
/* 047724 8006C324 30420008 */  andi  $v0, $v0, 8
/* 047728 8006C328 10400007 */  beqz  $v0, .L8006C348
/* 04772C 8006C32C 00000000 */   nop   
.L8006C330:
/* 047730 8006C330 8E220008 */  lw    $v0, 8($s1)
/* 047734 8006C334 24C30001 */  addiu $v1, $a2, 1
/* 047738 8006C338 AE230014 */  sw    $v1, 0x14($s1)
/* 04773C 8006C33C 2403002E */  addiu $v1, $zero, 0x2e
/* 047740 8006C340 00461021 */  addu  $v0, $v0, $a2
/* 047744 8006C344 A0430000 */  sb    $v1, ($v0)
.L8006C348:
/* 047748 8006C348 8E230024 */  lw    $v1, 0x24($s1)
/* 04774C 8006C34C 00151400 */  sll   $v0, $s5, 0x10
/* 047750 8006C350 00021403 */  sra   $v0, $v0, 0x10
/* 047754 8006C354 0062102A */  slt   $v0, $v1, $v0
/* 047758 8006C358 54400001 */  bnel  $v0, $zero, .L8006C360
/* 04775C 8006C35C 0060A821 */   addu  $s5, $v1, $zero
.L8006C360:
/* 047760 8006C360 00142C00 */  sll   $a1, $s4, 0x10
/* 047764 8006C364 00052C03 */  sra   $a1, $a1, 0x10
/* 047768 8006C368 02452821 */  addu  $a1, $s2, $a1
/* 04776C 8006C36C 8E220008 */  lw    $v0, 8($s1)
/* 047770 8006C370 8E240014 */  lw    $a0, 0x14($s1)
/* 047774 8006C374 00158400 */  sll   $s0, $s5, 0x10
/* 047778 8006C378 00108403 */  sra   $s0, $s0, 0x10
/* 04777C 8006C37C 02003021 */  addu  $a2, $s0, $zero
/* 047780 8006C380 0C01929D */  jal   memcpy
/* 047784 8006C384 00442021 */   addu  $a0, $v0, $a0
/* 047788 8006C388 8E220014 */  lw    $v0, 0x14($s1)
/* 04778C 8006C38C 8E230024 */  lw    $v1, 0x24($s1)
/* 047790 8006C390 00501021 */  addu  $v0, $v0, $s0
/* 047794 8006C394 00701823 */  subu  $v1, $v1, $s0
/* 047798 8006C398 AE220014 */  sw    $v0, 0x14($s1)
/* 04779C 8006C39C 0801B17B */  j     .L8006C5EC
/* 0477A0 8006C3A0 AE230018 */   sw    $v1, 0x18($s1)

.L8006C3A4:
/* 0477A4 8006C3A4 00021603 */  sra   $v0, $v0, 0x18
/* 0477A8 8006C3A8 38430067 */  xori  $v1, $v0, 0x67
/* 0477AC 8006C3AC 2C640001 */  sltiu $a0, $v1, 1
/* 0477B0 8006C3B0 38420047 */  xori  $v0, $v0, 0x47
/* 0477B4 8006C3B4 2C420001 */  sltiu $v0, $v0, 1
/* 0477B8 8006C3B8 00821025 */  or    $v0, $a0, $v0
/* 0477BC 8006C3BC 1040000E */  beqz  $v0, .L8006C3F8
/* 0477C0 8006C3C0 00151C00 */   sll   $v1, $s5, 0x10
/* 0477C4 8006C3C4 8E220024 */  lw    $v0, 0x24($s1)
/* 0477C8 8006C3C8 00031C03 */  sra   $v1, $v1, 0x10
/* 0477CC 8006C3CC 0062102A */  slt   $v0, $v1, $v0
/* 0477D0 8006C3D0 54400001 */  bnel  $v0, $zero, .L8006C3D8
/* 0477D4 8006C3D4 AE230024 */   sw    $v1, 0x24($s1)
.L8006C3D8:
/* 0477D8 8006C3D8 8E220024 */  lw    $v0, 0x24($s1)
/* 0477DC 8006C3DC 2442FFFF */  addiu $v0, $v0, -1
/* 0477E0 8006C3E0 04410002 */  bgez  $v0, .L8006C3EC
/* 0477E4 8006C3E4 AE220024 */   sw    $v0, 0x24($s1)
/* 0477E8 8006C3E8 AE200024 */  sw    $zero, 0x24($s1)
.L8006C3EC:
/* 0477EC 8006C3EC 00041023 */  negu  $v0, $a0
/* 0477F0 8006C3F0 30420065 */  andi  $v0, $v0, 0x65
/* 0477F4 8006C3F4 34530045 */  ori   $s3, $v0, 0x45
.L8006C3F8:
/* 0477F8 8006C3F8 8E240014 */  lw    $a0, 0x14($s1)
/* 0477FC 8006C3FC 24820001 */  addiu $v0, $a0, 1
/* 047800 8006C400 AE220014 */  sw    $v0, 0x14($s1)
/* 047804 8006C404 8E220008 */  lw    $v0, 8($s1)
/* 047808 8006C408 92430000 */  lbu   $v1, ($s2)
/* 04780C 8006C40C 00441021 */  addu  $v0, $v0, $a0
/* 047810 8006C410 A0430000 */  sb    $v1, ($v0)
/* 047814 8006C414 8E220024 */  lw    $v0, 0x24($s1)
/* 047818 8006C418 1C400005 */  bgtz  $v0, .L8006C430
/* 04781C 8006C41C 26520001 */   addiu $s2, $s2, 1
/* 047820 8006C420 8E220030 */  lw    $v0, 0x30($s1)
/* 047824 8006C424 30420008 */  andi  $v0, $v0, 8
/* 047828 8006C428 10400008 */  beqz  $v0, .L8006C44C
/* 04782C 8006C42C 00000000 */   nop   
.L8006C430:
/* 047830 8006C430 8E240014 */  lw    $a0, 0x14($s1)
/* 047834 8006C434 8E230008 */  lw    $v1, 8($s1)
/* 047838 8006C438 24820001 */  addiu $v0, $a0, 1
/* 04783C 8006C43C 00641821 */  addu  $v1, $v1, $a0
/* 047840 8006C440 AE220014 */  sw    $v0, 0x14($s1)
/* 047844 8006C444 2402002E */  addiu $v0, $zero, 0x2e
/* 047848 8006C448 A0620000 */  sb    $v0, ($v1)
.L8006C44C:
/* 04784C 8006C44C 8E230024 */  lw    $v1, 0x24($s1)
/* 047850 8006C450 18600015 */  blez  $v1, .L8006C4A8
/* 047854 8006C454 26A2FFFF */   addiu $v0, $s5, -1
/* 047858 8006C458 0040A821 */  addu  $s5, $v0, $zero
/* 04785C 8006C45C 00021400 */  sll   $v0, $v0, 0x10
/* 047860 8006C460 00021403 */  sra   $v0, $v0, 0x10
/* 047864 8006C464 0062102A */  slt   $v0, $v1, $v0
/* 047868 8006C468 54400001 */  bnel  $v0, $zero, .L8006C470
/* 04786C 8006C46C 0060A821 */   addu  $s5, $v1, $zero
.L8006C470:
/* 047870 8006C470 02402821 */  addu  $a1, $s2, $zero
/* 047874 8006C474 8E220008 */  lw    $v0, 8($s1)
/* 047878 8006C478 8E240014 */  lw    $a0, 0x14($s1)
/* 04787C 8006C47C 00158400 */  sll   $s0, $s5, 0x10
/* 047880 8006C480 00108403 */  sra   $s0, $s0, 0x10
/* 047884 8006C484 02003021 */  addu  $a2, $s0, $zero
/* 047888 8006C488 0C01929D */  jal   memcpy
/* 04788C 8006C48C 00442021 */   addu  $a0, $v0, $a0
/* 047890 8006C490 8E220014 */  lw    $v0, 0x14($s1)
/* 047894 8006C494 8E230024 */  lw    $v1, 0x24($s1)
/* 047898 8006C498 00501021 */  addu  $v0, $v0, $s0
/* 04789C 8006C49C 00701823 */  subu  $v1, $v1, $s0
/* 0478A0 8006C4A0 AE220014 */  sw    $v0, 0x14($s1)
/* 0478A4 8006C4A4 AE230018 */  sw    $v1, 0x18($s1)
.L8006C4A8:
/* 0478A8 8006C4A8 8E220008 */  lw    $v0, 8($s1)
/* 0478AC 8006C4AC 8E230014 */  lw    $v1, 0x14($s1)
/* 0478B0 8006C4B0 00439021 */  addu  $s2, $v0, $v1
/* 0478B4 8006C4B4 A2530000 */  sb    $s3, ($s2)
/* 0478B8 8006C4B8 00141400 */  sll   $v0, $s4, 0x10
/* 0478BC 8006C4BC 04400005 */  bltz  $v0, .L8006C4D4
/* 0478C0 8006C4C0 26520001 */   addiu $s2, $s2, 1
/* 0478C4 8006C4C4 2402002B */  addiu $v0, $zero, 0x2b
/* 0478C8 8006C4C8 A2420000 */  sb    $v0, ($s2)
/* 0478CC 8006C4CC 0801B139 */  j     .L8006C4E4
/* 0478D0 8006C4D0 26520001 */   addiu $s2, $s2, 1

.L8006C4D4:
/* 0478D4 8006C4D4 2402002D */  addiu $v0, $zero, 0x2d
/* 0478D8 8006C4D8 A2420000 */  sb    $v0, ($s2)
/* 0478DC 8006C4DC 26520001 */  addiu $s2, $s2, 1
/* 0478E0 8006C4E0 0014A023 */  negu  $s4, $s4
.L8006C4E4:
/* 0478E4 8006C4E4 00142C00 */  sll   $a1, $s4, 0x10
/* 0478E8 8006C4E8 00052403 */  sra   $a0, $a1, 0x10
/* 0478EC 8006C4EC 28820064 */  slti  $v0, $a0, 0x64
/* 0478F0 8006C4F0 14400027 */  bnez  $v0, .L8006C590
/* 0478F4 8006C4F4 3C036666 */   lui   $v1, 0x6666
/* 0478F8 8006C4F8 288203E8 */  slti  $v0, $a0, 0x3e8
/* 0478FC 8006C4FC 14400012 */  bnez  $v0, .L8006C548
/* 047900 8006C500 3C0351EB */   lui   $v1, 0x51eb
/* 047904 8006C504 3C021062 */  lui   $v0, 0x1062
/* 047908 8006C508 34424DD3 */  ori   $v0, $v0, 0x4dd3
/* 04790C 8006C50C 00820018 */  mult  $a0, $v0
/* 047910 8006C510 000517C3 */  sra   $v0, $a1, 0x1f
/* 047914 8006C514 00004010 */  mfhi  $t0
/* 047918 8006C518 00081983 */  sra   $v1, $t0, 6
/* 04791C 8006C51C 00621823 */  subu  $v1, $v1, $v0
/* 047920 8006C520 24620030 */  addiu $v0, $v1, 0x30
/* 047924 8006C524 A2420000 */  sb    $v0, ($s2)
/* 047928 8006C528 26520001 */  addiu $s2, $s2, 1
/* 04792C 8006C52C 00031140 */  sll   $v0, $v1, 5
/* 047930 8006C530 00431023 */  subu  $v0, $v0, $v1
/* 047934 8006C534 00021080 */  sll   $v0, $v0, 2
/* 047938 8006C538 00431021 */  addu  $v0, $v0, $v1
/* 04793C 8006C53C 000210C0 */  sll   $v0, $v0, 3
/* 047940 8006C540 0082A023 */  subu  $s4, $a0, $v0
/* 047944 8006C544 3C0351EB */  lui   $v1, 0x51eb
.L8006C548:
/* 047948 8006C548 3463851F */  ori   $v1, $v1, 0x851f
/* 04794C 8006C54C 00141400 */  sll   $v0, $s4, 0x10
/* 047950 8006C550 00022403 */  sra   $a0, $v0, 0x10
/* 047954 8006C554 00830018 */  mult  $a0, $v1
/* 047958 8006C558 000217C3 */  sra   $v0, $v0, 0x1f
/* 04795C 8006C55C 00004010 */  mfhi  $t0
/* 047960 8006C560 00081943 */  sra   $v1, $t0, 5
/* 047964 8006C564 00621823 */  subu  $v1, $v1, $v0
/* 047968 8006C568 24620030 */  addiu $v0, $v1, 0x30
/* 04796C 8006C56C A2420000 */  sb    $v0, ($s2)
/* 047970 8006C570 26520001 */  addiu $s2, $s2, 1
/* 047974 8006C574 00031040 */  sll   $v0, $v1, 1
/* 047978 8006C578 00431021 */  addu  $v0, $v0, $v1
/* 04797C 8006C57C 000210C0 */  sll   $v0, $v0, 3
/* 047980 8006C580 00431021 */  addu  $v0, $v0, $v1
/* 047984 8006C584 00021080 */  sll   $v0, $v0, 2
/* 047988 8006C588 0082A023 */  subu  $s4, $a0, $v0
/* 04798C 8006C58C 3C036666 */  lui   $v1, 0x6666
.L8006C590:
/* 047990 8006C590 34636667 */  ori   $v1, $v1, 0x6667
/* 047994 8006C594 00141400 */  sll   $v0, $s4, 0x10
/* 047998 8006C598 00022403 */  sra   $a0, $v0, 0x10
/* 04799C 8006C59C 00830018 */  mult  $a0, $v1
/* 0479A0 8006C5A0 000217C3 */  sra   $v0, $v0, 0x1f
/* 0479A4 8006C5A4 00004010 */  mfhi  $t0
/* 0479A8 8006C5A8 00081883 */  sra   $v1, $t0, 2
/* 0479AC 8006C5AC 00621823 */  subu  $v1, $v1, $v0
/* 0479B0 8006C5B0 24620030 */  addiu $v0, $v1, 0x30
/* 0479B4 8006C5B4 A2420000 */  sb    $v0, ($s2)
/* 0479B8 8006C5B8 26520001 */  addiu $s2, $s2, 1
/* 0479BC 8006C5BC 00031080 */  sll   $v0, $v1, 2
/* 0479C0 8006C5C0 00431021 */  addu  $v0, $v0, $v1
/* 0479C4 8006C5C4 00021040 */  sll   $v0, $v0, 1
/* 0479C8 8006C5C8 00822023 */  subu  $a0, $a0, $v0
/* 0479CC 8006C5CC 24840030 */  addiu $a0, $a0, 0x30
/* 0479D0 8006C5D0 A2440000 */  sb    $a0, ($s2)
/* 0479D4 8006C5D4 8E220008 */  lw    $v0, 8($s1)
/* 0479D8 8006C5D8 8E230014 */  lw    $v1, 0x14($s1)
/* 0479DC 8006C5DC 26520001 */  addiu $s2, $s2, 1
/* 0479E0 8006C5E0 00431021 */  addu  $v0, $v0, $v1
/* 0479E4 8006C5E4 02421023 */  subu  $v0, $s2, $v0
/* 0479E8 8006C5E8 AE22001C */  sw    $v0, 0x1c($s1)
.L8006C5EC:
/* 0479EC 8006C5EC 8E220030 */  lw    $v0, 0x30($s1)
/* 0479F0 8006C5F0 24030010 */  addiu $v1, $zero, 0x10
/* 0479F4 8006C5F4 30420014 */  andi  $v0, $v0, 0x14
/* 0479F8 8006C5F8 1443000F */  bne   $v0, $v1, .L8006C638
/* 0479FC 8006C5FC 00000000 */   nop   
/* 047A00 8006C600 8E22000C */  lw    $v0, 0xc($s1)
/* 047A04 8006C604 8E230014 */  lw    $v1, 0x14($s1)
/* 047A08 8006C608 8E240018 */  lw    $a0, 0x18($s1)
/* 047A0C 8006C60C 00431021 */  addu  $v0, $v0, $v1
/* 047A10 8006C610 00441021 */  addu  $v0, $v0, $a0
/* 047A14 8006C614 8E23001C */  lw    $v1, 0x1c($s1)
/* 047A18 8006C618 8E240020 */  lw    $a0, 0x20($s1)
/* 047A1C 8006C61C 8E250028 */  lw    $a1, 0x28($s1)
/* 047A20 8006C620 00431021 */  addu  $v0, $v0, $v1
/* 047A24 8006C624 00441821 */  addu  $v1, $v0, $a0
/* 047A28 8006C628 0065102A */  slt   $v0, $v1, $a1
/* 047A2C 8006C62C 10400002 */  beqz  $v0, .L8006C638
/* 047A30 8006C630 00A31023 */   subu  $v0, $a1, $v1
/* 047A34 8006C634 AE220010 */  sw    $v0, 0x10($s1)
.L8006C638:
/* 047A38 8006C638 8FBF0028 */  lw    $ra, 0x28($sp)
/* 047A3C 8006C63C 8FB50024 */  lw    $s5, 0x24($sp)
/* 047A40 8006C640 8FB40020 */  lw    $s4, 0x20($sp)
/* 047A44 8006C644 8FB3001C */  lw    $s3, 0x1c($sp)
/* 047A48 8006C648 8FB20018 */  lw    $s2, 0x18($sp)
/* 047A4C 8006C64C 8FB10014 */  lw    $s1, 0x14($sp)
/* 047A50 8006C650 8FB00010 */  lw    $s0, 0x10($sp)
/* 047A54 8006C654 03E00008 */  jr    $ra
/* 047A58 8006C658 27BD0030 */   addiu $sp, $sp, 0x30

/* 047A5C 8006C65C 00000000 */  nop   
