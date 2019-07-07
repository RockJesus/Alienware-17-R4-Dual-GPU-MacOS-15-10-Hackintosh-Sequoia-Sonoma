/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190215 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL15aYbM.aml, Mon Apr  8 11:50:31 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006A (106)
 *     Revision         0x02
 *     Checksum         0x65
 *     OEM ID           "hack"
 *     OEM Table ID     "PNLF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PNLF", 0x00000000)
{
    External (_SB_, DeviceObj)

    Scope (_SB)
    {
        Device (PNLF)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x10)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }
}

