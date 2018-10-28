/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLIufHJX.aml, Wed Oct 10 13:41:53 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007E (126)
 *     Revision         0x02
 *     Checksum         0xCC
 *     OEM ID           "hack"
 *     OEM Table ID     "MEM2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SLPB", 0x00000000)
{
    External (_SB_, DeviceObj)

    Scope (_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }
}

