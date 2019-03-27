/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLjp39ag.aml, Mon Dec  3 08:26:01 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000096 (150)
 *     Revision         0x02
 *     Checksum         0x1C
 *     OEM ID           "HACK"
 *     OEM Table ID     "BAT1"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "BAT1", 0x00000000)
{
    External (_SB_.BAT1, DeviceObj)

    Name (_SB.BAT1.RMCF, Package (0x04)
    {
        "UseExtendedBatteryInformationMethod", 
        ">n", 
        "UseExtraBatteryInformationMethod", 
        ">n"
    })
}

