/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLiV3rrz.aml, Mon Oct 22 13:04:45 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000050 (80)
 *     Revision         0x02
 *     Checksum         0x56
 *     OEM ID           "hack"
 *     OEM Table ID     "SPI1"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SPI1", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (SPI0)
        {
            Name (_ADR, 0x001E0002)  // _ADR: Address
        }
        Device (SPI1)
        {
            Name (_ADR, 0x001E0003)  // _ADR: Address
        }
    }
}

