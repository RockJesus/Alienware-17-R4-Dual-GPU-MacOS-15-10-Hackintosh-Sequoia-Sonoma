/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLETf1K4.aml, Mon Oct 22 12:37:48 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008C (140)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "hack"
 *     OEM Table ID     "SBS0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SBS0", 0x00000000)
{
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)

    Scope (_SB.PCI0.LPCB.H_EC)
    {
        Device (SMB0)
        {
            Name (_HID, "ACPI0001" /* SMBus 1.0 Host Controller */)  // _HID: Hardware ID
            Name (_EC, 0x2010)  // _EC_: Embedded Controller
            Device (SBS0)
            {
                Name (_HID, "ACPI0002" /* Smart Battery Subsystem */)  // _HID: Hardware ID
                Name (_SBS, One)  // _SBS: Smart Battery Subsystem
            }
        }
    }
}

