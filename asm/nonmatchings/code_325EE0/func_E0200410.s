.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0200410
/* 325EE0 E0200410 3C01E020 */  lui       $at, 0xe020
/* 325EE4 E0200414 8C210694 */  lw        $at, 0x694($at)
/* 325EE8 E0200418 00200008 */  jr        $at
/* 325EEC E020041C 00000000 */   nop      
