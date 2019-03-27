/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLlkVCmh.aml, Wed Oct 10 13:46:21 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004B (75)
 *     Revision         0x02
 *     Checksum         0x1C
 *     OEM ID           "hack"
 *     OEM Table ID     "SBS0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SMB0", 0x00000000)
{
    External (_SB_, DeviceObj)

    Scope (_SB)
    {
        Device (SMB0)
        {
            Name (_HID, "ACPI0001" /* Smart Battery Subsystem */)  // _HID: Hardware ID
        }
    }
}

