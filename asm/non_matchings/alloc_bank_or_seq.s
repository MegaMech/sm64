glabel alloc_bank_or_seq
/* 0D13DC 803163DC 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0D13E0 803163E0 AFB00020 */  sw    $s0, 0x20($sp)
/* 0D13E4 803163E4 00808025 */  move  $s0, $a0
/* 0D13E8 803163E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0D13EC 803163EC AFA5007C */  sw    $a1, 0x7c($sp)
/* 0D13F0 803163F0 14E000CC */  bnez  $a3, .L80316724
/* 0D13F4 803163F4 AFA60080 */   sw    $a2, 0x80($sp)
/* 0D13F8 803163F8 3C0E8022 */  lui   $t6, %hi(gSeqLoadedPool) # $t6, 0x8022
/* 0D13FC 803163FC 25CE1328 */  addiu $t6, %lo(gSeqLoadedPool) # addiu $t6, $t6, 0x1328
/* 0D1400 80316400 148E0006 */  bne   $a0, $t6, .L8031641C
/* 0D1404 80316404 26030194 */   addiu $v1, $s0, 0x194
/* 0D1408 80316408 3C0A8022 */  lui   $t2, %hi(gSeqLoadStatus) # $t2, 0x8022
/* 0D140C 8031640C 254A1910 */  addiu $t2, %lo(gSeqLoadStatus) # addiu $t2, $t2, 0x1910
/* 0D1410 80316410 AFAA005C */  sw    $t2, 0x5c($sp)
/* 0D1414 80316414 10000009 */  b     .L8031643C
/* 0D1418 80316418 A3A0005B */   sb    $zero, 0x5b($sp)
.L8031641C:
/* 0D141C 8031641C 3C0F8022 */  lui   $t7, %hi(gBankLoadedPool) # $t7, 0x8022
/* 0D1420 80316420 25EF14F8 */  addiu $t7, %lo(gBankLoadedPool) # addiu $t7, $t7, 0x14f8
/* 0D1424 80316424 160F0005 */  bne   $s0, $t7, .L8031643C
/* 0D1428 80316428 3C0A8022 */   lui   $t2, %hi(gBankLoadStatus) # $t2, 0x8022
/* 0D142C 8031642C 254A18D0 */  addiu $t2, %lo(gBankLoadStatus) # addiu $t2, $t2, 0x18d0
/* 0D1430 80316430 240C0001 */  li    $t4, 1
/* 0D1434 80316434 A3AC005B */  sb    $t4, 0x5b($sp)
/* 0D1438 80316438 AFAA005C */  sw    $t2, 0x5c($sp)
.L8031643C:
/* 0D143C 8031643C 8C62001C */  lw    $v0, 0x1c($v1)
/* 0D1440 80316440 240BFFFF */  li    $t3, -1
/* 0D1444 80316444 8FAA005C */  lw    $t2, 0x5c($sp)
/* 0D1448 80316448 15620003 */  bne   $t3, $v0, .L80316458
/* 0D144C 8031644C 93AC005B */   lbu   $t4, 0x5b($sp)
/* 0D1450 80316450 10000003 */  b     .L80316460
/* 0D1454 80316454 00003825 */   move  $a3, $zero
.L80316458:
/* 0D1458 80316458 004AC021 */  addu  $t8, $v0, $t2
/* 0D145C 8031645C 93070000 */  lbu   $a3, ($t8)
.L80316460:
/* 0D1460 80316460 8C620028 */  lw    $v0, 0x28($v1)
/* 0D1464 80316464 24090003 */  li    $t1, 3
/* 0D1468 80316468 01274026 */  xor   $t0, $t1, $a3
/* 0D146C 8031646C 15620003 */  bne   $t3, $v0, .L8031647C
/* 0D1470 80316470 2D080001 */   sltiu $t0, $t0, 1
/* 0D1474 80316474 10000003 */  b     .L80316484
/* 0D1478 80316478 00002825 */   move  $a1, $zero
.L8031647C:
/* 0D147C 8031647C 004AC821 */  addu  $t9, $v0, $t2
/* 0D1480 80316480 93250000 */  lbu   $a1, ($t9)
.L80316484:
/* 0D1484 80316484 0008202B */  sltu  $a0, $zero, $t0
/* 0D1488 80316488 10800005 */  beqz  $a0, .L803164A0
/* 0D148C 8031648C 00E03025 */   move  $a2, $a3
/* 0D1490 80316490 01252026 */  xor   $a0, $t1, $a1
/* 0D1494 80316494 2C840001 */  sltiu $a0, $a0, 1
/* 0D1498 80316498 0004682B */  sltu  $t5, $zero, $a0
/* 0D149C 8031649C 01A02025 */  move  $a0, $t5
.L803164A0:
/* 0D14A0 803164A0 2CCE0001 */  sltiu $t6, $a2, 1
/* 0D14A4 803164A4 11C00004 */  beqz  $t6, .L803164B8
/* 0D14A8 803164A8 2CAF0001 */   sltiu $t7, $a1, 1
/* 0D14AC 803164AC AC600000 */  sw    $zero, ($v1)
/* 0D14B0 803164B0 10000020 */  b     .L80316534
/* 0D14B4 803164B4 24080001 */   li    $t0, 1
.L803164B8:
/* 0D14B8 803164B8 11E00005 */  beqz  $t7, .L803164D0
/* 0D14BC 803164BC 00A01025 */   move  $v0, $a1
/* 0D14C0 803164C0 24180001 */  li    $t8, 1
/* 0D14C4 803164C4 AC780000 */  sw    $t8, ($v1)
/* 0D14C8 803164C8 1000001A */  b     .L80316534
/* 0D14CC 803164CC 24080001 */   li    $t0, 1
.L803164D0:
/* 0D14D0 803164D0 10800003 */  beqz  $a0, .L803164E0
/* 0D14D4 803164D4 00000000 */   nop   
/* 0D14D8 803164D8 10000016 */  b     .L80316534
/* 0D14DC 803164DC 24080001 */   li    $t0, 1
.L803164E0:
/* 0D14E0 803164E0 11000004 */  beqz  $t0, .L803164F4
/* 0D14E4 803164E4 00000000 */   nop   
/* 0D14E8 803164E8 AC600000 */  sw    $zero, ($v1)
/* 0D14EC 803164EC 10000011 */  b     .L80316534
/* 0D14F0 803164F0 24080001 */   li    $t0, 1
.L803164F4:
/* 0D14F4 803164F4 15220005 */  bne   $t1, $v0, .L8031650C
/* 0D14F8 803164F8 24080001 */   li    $t0, 1
/* 0D14FC 803164FC 240D0001 */  li    $t5, 1
/* 0D1500 80316500 AC6D0000 */  sw    $t5, ($v1)
/* 0D1504 80316504 1000000B */  b     .L80316534
/* 0D1508 80316508 24080001 */   li    $t0, 1
.L8031650C:
/* 0D150C 8031650C 11060003 */  beq   $t0, $a2, .L8031651C
/* 0D1510 80316510 00000000 */   nop   
/* 0D1514 80316514 10000007 */  b     .L80316534
/* 0D1518 80316518 AC600000 */   sw    $zero, ($v1)
.L8031651C:
/* 0D151C 8031651C 11020003 */  beq   $t0, $v0, .L8031652C
/* 0D1520 80316520 24180001 */   li    $t8, 1
/* 0D1524 80316524 10000003 */  b     .L80316534
/* 0D1528 80316528 AC780000 */   sw    $t8, ($v1)
.L8031652C:
/* 0D152C 8031652C 100000B2 */  b     .L803167F8
/* 0D1530 80316530 00001025 */   move  $v0, $zero
.L80316534:
/* 0D1534 80316534 8C790000 */  lw    $t9, ($v1)
/* 0D1538 80316538 2405000C */  li    $a1, 12
/* 0D153C 8031653C 03250019 */  multu $t9, $a1
/* 0D1540 80316540 00006812 */  mflo  $t5
/* 0D1544 80316544 006D7021 */  addu  $t6, $v1, $t5
/* 0D1548 80316548 8DC2001C */  lw    $v0, 0x1c($t6)
/* 0D154C 8031654C 11620010 */  beq   $t3, $v0, .L80316590
/* 0D1550 80316550 01427821 */   addu  $t7, $t2, $v0
/* 0D1554 80316554 150C000E */  bne   $t0, $t4, .L80316590
/* 0D1558 80316558 A1E00000 */   sb    $zero, ($t7)
/* 0D155C 8031655C 8C780000 */  lw    $t8, ($v1)
/* 0D1560 80316560 03050019 */  multu $t8, $a1
/* 0D1564 80316564 0000C812 */  mflo  $t9
/* 0D1568 80316568 00796821 */  addu  $t5, $v1, $t9
/* 0D156C 8031656C 8DA4001C */  lw    $a0, 0x1c($t5)
/* 0D1570 80316570 A3AC005B */  sb    $t4, 0x5b($sp)
/* 0D1574 80316574 AFAA005C */  sw    $t2, 0x5c($sp)
/* 0D1578 80316578 0C0C57A9 */  jal   discard_bank
/* 0D157C 8031657C AFA30030 */   sw    $v1, 0x30($sp)
/* 0D1580 80316580 8FA30030 */  lw    $v1, 0x30($sp)
/* 0D1584 80316584 24080001 */  li    $t0, 1
/* 0D1588 80316588 8FAA005C */  lw    $t2, 0x5c($sp)
/* 0D158C 8031658C 93AC005B */  lbu   $t4, 0x5b($sp)
.L80316590:
/* 0D1590 80316590 8C640000 */  lw    $a0, ($v1)
/* 0D1594 80316594 24010001 */  li    $at, 1
/* 0D1598 80316598 26050198 */  addiu $a1, $s0, 0x198
/* 0D159C 8031659C 50800006 */  beql  $a0, $zero, .L803165B8
/* 0D15A0 803165A0 8CAE0000 */   lw    $t6, ($a1)
/* 0D15A4 803165A4 10810032 */  beq   $a0, $at, .L80316670
/* 0D15A8 803165A8 26050198 */   addiu $a1, $s0, 0x198
/* 0D15AC 803165AC 10000092 */  b     .L803167F8
/* 0D15B0 803165B0 00001025 */   move  $v0, $zero
/* 0D15B4 803165B4 8CAE0000 */  lw    $t6, ($a1)
.L803165B8:
/* 0D15B8 803165B8 AC6E0014 */  sw    $t6, 0x14($v1)
/* 0D15BC 803165BC 8FAF0088 */  lw    $t7, 0x88($sp)
/* 0D15C0 803165C0 AC6F001C */  sw    $t7, 0x1c($v1)
/* 0D15C4 803165C4 8FB80080 */  lw    $t8, 0x80($sp)
/* 0D15C8 803165C8 AC780018 */  sw    $t8, 0x18($v1)
/* 0D15CC 803165CC 8FAD0080 */  lw    $t5, 0x80($sp)
/* 0D15D0 803165D0 8CB90000 */  lw    $t9, ($a1)
/* 0D15D4 803165D4 032D1021 */  addu  $v0, $t9, $t5
/* 0D15D8 803165D8 ACA20004 */  sw    $v0, 4($a1)
/* 0D15DC 803165DC 8C6E0020 */  lw    $t6, 0x20($v1)
/* 0D15E0 803165E0 01C2082B */  sltu  $at, $t6, $v0
/* 0D15E4 803165E4 5020001D */  beql  $at, $zero, .L8031665C
/* 0D15E8 803165E8 8C640014 */   lw    $a0, 0x14($v1)
/* 0D15EC 803165EC 8C6F0028 */  lw    $t7, 0x28($v1)
/* 0D15F0 803165F0 014FC021 */  addu  $t8, $t2, $t7
/* 0D15F4 803165F4 11800005 */  beqz  $t4, .L8031660C
/* 0D15F8 803165F8 A3000000 */   sb    $zero, ($t8)
/* 0D15FC 803165FC 5188000B */  beql  $t4, $t0, .L8031662C
/* 0D1600 80316600 8C640028 */   lw    $a0, 0x28($v1)
/* 0D1604 80316604 1000000F */  b     .L80316644
/* 0D1608 80316608 2419FFFF */   li    $t9, -1
.L8031660C:
/* 0D160C 8031660C 8C640028 */  lw    $a0, 0x28($v1)
/* 0D1610 80316610 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0D1614 80316614 0C0C57E5 */  jal   discard_sequence
/* 0D1618 80316618 AFA30030 */   sw    $v1, 0x30($sp)
/* 0D161C 8031661C 8FA30030 */  lw    $v1, 0x30($sp)
/* 0D1620 80316620 10000007 */  b     .L80316640
/* 0D1624 80316624 8FA5002C */   lw    $a1, 0x2c($sp)
/* 0D1628 80316628 8C640028 */  lw    $a0, 0x28($v1)
.L8031662C:
/* 0D162C 8031662C AFA5002C */  sw    $a1, 0x2c($sp)
/* 0D1630 80316630 0C0C57A9 */  jal   discard_bank
/* 0D1634 80316634 AFA30030 */   sw    $v1, 0x30($sp)
/* 0D1638 80316638 8FA30030 */  lw    $v1, 0x30($sp)
/* 0D163C 8031663C 8FA5002C */  lw    $a1, 0x2c($sp)
.L80316640:
/* 0D1640 80316640 2419FFFF */  li    $t9, -1
.L80316644:
/* 0D1644 80316644 AC790028 */  sw    $t9, 0x28($v1)
/* 0D1648 80316648 8CAE0000 */  lw    $t6, ($a1)
/* 0D164C 8031664C 8CAD0008 */  lw    $t5, 8($a1)
/* 0D1650 80316650 01AE7821 */  addu  $t7, $t5, $t6
/* 0D1654 80316654 AC6F0020 */  sw    $t7, 0x20($v1)
/* 0D1658 80316658 8C640014 */  lw    $a0, 0x14($v1)
.L8031665C:
/* 0D165C 8031665C 8C780000 */  lw    $t8, ($v1)
/* 0D1660 80316660 00801025 */  move  $v0, $a0
/* 0D1664 80316664 3B190001 */  xori  $t9, $t8, 1
/* 0D1668 80316668 10000063 */  b     .L803167F8
/* 0D166C 8031666C AC790000 */   sw    $t9, ($v1)
.L80316670:
/* 0D1670 80316670 8CAD0008 */  lw    $t5, 8($a1)
/* 0D1674 80316674 8CAE0000 */  lw    $t6, ($a1)
/* 0D1678 80316678 8FB80080 */  lw    $t8, 0x80($sp)
/* 0D167C 8031667C 01AE7821 */  addu  $t7, $t5, $t6
/* 0D1680 80316680 01F8C823 */  subu  $t9, $t7, $t8
/* 0D1684 80316684 2722FFF0 */  addiu $v0, $t9, -0x10
/* 0D1688 80316688 AC620020 */  sw    $v0, 0x20($v1)
/* 0D168C 8031668C 8FAE0088 */  lw    $t6, 0x88($sp)
/* 0D1690 80316690 AC6E0028 */  sw    $t6, 0x28($v1)
/* 0D1694 80316694 8FAF0080 */  lw    $t7, 0x80($sp)
/* 0D1698 80316698 AC6F0024 */  sw    $t7, 0x24($v1)
/* 0D169C 8031669C 8CB80004 */  lw    $t8, 4($a1)
/* 0D16A0 803166A0 0058082B */  sltu  $at, $v0, $t8
/* 0D16A4 803166A4 1020001B */  beqz  $at, .L80316714
/* 0D16A8 803166A8 00000000 */   nop   
/* 0D16AC 803166AC 8C79001C */  lw    $t9, 0x1c($v1)
/* 0D16B0 803166B0 01596821 */  addu  $t5, $t2, $t9
/* 0D16B4 803166B4 11800005 */  beqz  $t4, .L803166CC
/* 0D16B8 803166B8 A1A00000 */   sb    $zero, ($t5)
/* 0D16BC 803166BC 5188000B */  beql  $t4, $t0, .L803166EC
/* 0D16C0 803166C0 8C64001C */   lw    $a0, 0x1c($v1)
/* 0D16C4 803166C4 1000000F */  b     .L80316704
/* 0D16C8 803166C8 240EFFFF */   li    $t6, -1
.L803166CC:
/* 0D16CC 803166CC 8C64001C */  lw    $a0, 0x1c($v1)
/* 0D16D0 803166D0 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0D16D4 803166D4 0C0C57E5 */  jal   discard_sequence
/* 0D16D8 803166D8 AFA30030 */   sw    $v1, 0x30($sp)
/* 0D16DC 803166DC 8FA30030 */  lw    $v1, 0x30($sp)
/* 0D16E0 803166E0 10000007 */  b     .L80316700
/* 0D16E4 803166E4 8FA5002C */   lw    $a1, 0x2c($sp)
/* 0D16E8 803166E8 8C64001C */  lw    $a0, 0x1c($v1)
.L803166EC:
/* 0D16EC 803166EC AFA5002C */  sw    $a1, 0x2c($sp)
/* 0D16F0 803166F0 0C0C57A9 */  jal   discard_bank
/* 0D16F4 803166F4 AFA30030 */   sw    $v1, 0x30($sp)
/* 0D16F8 803166F8 8FA30030 */  lw    $v1, 0x30($sp)
/* 0D16FC 803166FC 8FA5002C */  lw    $a1, 0x2c($sp)
.L80316700:
/* 0D1700 80316700 240EFFFF */  li    $t6, -1
.L80316704:
/* 0D1704 80316704 AC6E001C */  sw    $t6, 0x1c($v1)
/* 0D1708 80316708 8CAF0000 */  lw    $t7, ($a1)
/* 0D170C 8031670C ACAF0004 */  sw    $t7, 4($a1)
/* 0D1710 80316710 8C620020 */  lw    $v0, 0x20($v1)
.L80316714:
/* 0D1714 80316714 1000FFD1 */  b     .L8031665C
/* 0D1718 80316718 00402025 */   move  $a0, $v0
/* 0D171C 8031671C 10000036 */  b     .L803167F8
/* 0D1720 80316720 00001025 */   move  $v0, $zero
.L80316724:
/* 0D1724 80316724 8FB8007C */  lw    $t8, 0x7c($sp)
/* 0D1728 80316728 8FB90080 */  lw    $t9, 0x80($sp)
/* 0D172C 8031672C 26040004 */  addiu $a0, $s0, 4
/* 0D1730 80316730 AFA70084 */  sw    $a3, 0x84($sp)
/* 0D1734 80316734 03190019 */  multu $t8, $t9
/* 0D1738 80316738 00002812 */  mflo  $a1
/* 0D173C 8031673C 0C0C5808 */  jal   soundAlloc
/* 0D1740 80316740 00000000 */   nop   
/* 0D1744 80316744 8E0D0000 */  lw    $t5, ($s0)
/* 0D1748 80316748 2405000C */  li    $a1, 12
/* 0D174C 8031674C 8FA70084 */  lw    $a3, 0x84($sp)
/* 0D1750 80316750 01A50019 */  multu $t5, $a1
/* 0D1754 80316754 24080001 */  li    $t0, 1
/* 0D1758 80316758 00007012 */  mflo  $t6
/* 0D175C 8031675C 020E7821 */  addu  $t7, $s0, $t6
/* 0D1760 80316760 ADE20014 */  sw    $v0, 0x14($t7)
/* 0D1764 80316764 8E180000 */  lw    $t8, ($s0)
/* 0D1768 80316768 8FAF0088 */  lw    $t7, 0x88($sp)
/* 0D176C 8031676C 03050019 */  multu $t8, $a1
/* 0D1770 80316770 0000C812 */  mflo  $t9
/* 0D1774 80316774 02191821 */  addu  $v1, $s0, $t9
/* 0D1778 80316778 8C6D0014 */  lw    $t5, 0x14($v1)
/* 0D177C 8031677C 55A00010 */  bnezl $t5, .L803167C0
/* 0D1780 80316780 AC6F001C */   sw    $t7, 0x1c($v1)
/* 0D1784 80316784 10E8000B */  beq   $a3, $t0, .L803167B4
/* 0D1788 80316788 24010002 */   li    $at, 2
/* 0D178C 8031678C 14E1000B */  bne   $a3, $at, .L803167BC
/* 0D1790 80316790 02002025 */   move  $a0, $s0
/* 0D1794 80316794 8FAE0088 */  lw    $t6, 0x88($sp)
/* 0D1798 80316798 8FA5007C */  lw    $a1, 0x7c($sp)
/* 0D179C 8031679C 8FA60080 */  lw    $a2, 0x80($sp)
/* 0D17A0 803167A0 00003825 */  move  $a3, $zero
/* 0D17A4 803167A4 0C0C58F7 */  jal   alloc_bank_or_seq
/* 0D17A8 803167A8 AFAE0010 */   sw    $t6, 0x10($sp)
/* 0D17AC 803167AC 10000013 */  b     .L803167FC
/* 0D17B0 803167B0 8FBF0024 */   lw    $ra, 0x24($sp)
.L803167B4:
/* 0D17B4 803167B4 10000010 */  b     .L803167F8
/* 0D17B8 803167B8 00001025 */   move  $v0, $zero
.L803167BC:
/* 0D17BC 803167BC AC6F001C */  sw    $t7, 0x1c($v1)
.L803167C0:
/* 0D17C0 803167C0 8E190000 */  lw    $t9, ($s0)
/* 0D17C4 803167C4 8FB80080 */  lw    $t8, 0x80($sp)
/* 0D17C8 803167C8 03250019 */  multu $t9, $a1
/* 0D17CC 803167CC 00006812 */  mflo  $t5
/* 0D17D0 803167D0 020D7021 */  addu  $t6, $s0, $t5
/* 0D17D4 803167D4 ADD80018 */  sw    $t8, 0x18($t6)
/* 0D17D8 803167D8 8E0F0000 */  lw    $t7, ($s0)
/* 0D17DC 803167DC 25F90001 */  addiu $t9, $t7, 1
/* 0D17E0 803167E0 0019C080 */  sll   $t8, $t9, 2
/* 0D17E4 803167E4 0319C023 */  subu  $t8, $t8, $t9
/* 0D17E8 803167E8 0018C080 */  sll   $t8, $t8, 2
/* 0D17EC 803167EC 02187021 */  addu  $t6, $s0, $t8
/* 0D17F0 803167F0 AE190000 */  sw    $t9, ($s0)
/* 0D17F4 803167F4 8DC20008 */  lw    $v0, 8($t6)
.L803167F8:
/* 0D17F8 803167F8 8FBF0024 */  lw    $ra, 0x24($sp)
.L803167FC:
/* 0D17FC 803167FC 8FB00020 */  lw    $s0, 0x20($sp)
/* 0D1800 80316800 27BD0078 */  addiu $sp, $sp, 0x78
/* 0D1804 80316804 03E00008 */  jr    $ra
/* 0D1808 80316808 00000000 */   nop   
