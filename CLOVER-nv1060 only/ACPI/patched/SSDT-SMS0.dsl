/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL3PvbXn.aml, Mon Oct 22 12:28:25 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000090 (144)
 *     Revision         0x02
 *     Checksum         0xB2
 *     OEM ID           "hack"
 *     OEM Table ID     "SMS0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SMS0", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)

    Scope (_SB.PCI0.LPCB)
    {
        Device (SMC)
        {
            Name (_HID, EisaId ("APP0001"))  // _HID: Hardware ID
            Name (_CID, "smc-huronriver")  // _CID: Compatible ID
            Device (SMS0)
            {
                Name (_HID, EisaId ("APP0003"))  // _HID: Hardware ID
                Name (_CID, "smc-sms")  // _CID: Compatible ID
            }
        }
    }
}

