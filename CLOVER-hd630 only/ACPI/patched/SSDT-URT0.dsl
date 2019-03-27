/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL6QYD7P.aml, Mon Oct 22 13:07:33 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000050 (80)
 *     Revision         0x02
 *     Checksum         0x3D
 *     OEM ID           "hack"
 *     OEM Table ID     "URT0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "URT0", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (URT0)
        {
            Name (_ADR, 0x001E0000)  // _ADR: Address
        }
        Device (URT1)
        {
            Name (_ADR, 0x001E0001)  // _ADR: Address
        }
        Device (URT2)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
        }
    }
}

