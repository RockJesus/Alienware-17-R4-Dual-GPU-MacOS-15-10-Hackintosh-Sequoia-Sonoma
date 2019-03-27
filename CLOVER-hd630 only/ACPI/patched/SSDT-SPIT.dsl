/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL1LPUUT.aml, Mon Oct 22 13:12:37 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000078 (120)
 *     Revision         0x02
 *     Checksum         0x37
 *     OEM ID           "hack"
 *     OEM Table ID     "SPIT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SPIT", 0x00000000)
{
    External (_SB_.PCI0.SPI1, DeviceObj)

    Scope (_SB.PCI0.SPI1)
    {
        Device (SPIT)
        {
            Name (_HID, EisaId ("APP000D"))  // _HID: Hardware ID
            Name (_CID, "apple-spi-topcase")  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
        }
    }
}

