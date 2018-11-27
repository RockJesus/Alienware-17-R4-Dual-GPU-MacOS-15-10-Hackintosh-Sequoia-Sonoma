/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL3OWSRN.aml, Sun Nov 11 10:10:38 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008D (141)
 *     Revision         0x02
 *     Checksum         0xE2
 *     OEM ID           "hack"
 *     OEM Table ID     "HDAU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "HDAU", 0x00000000)
{
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.NHDA, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP.NHDA, FieldUnitObj)
    External (PICM, UnknownObj)
    External (AR01, UnknownObj)
    External (PR01, UnknownObj)

    Scope (_SB.PCI0.PEG0)
    {
        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            ^PEGP.NHDA = One
            If (PICM)
                    {
                        Return (AR01) /* \_SB_.AR01 */
                    }

                    Return (PR01) /* \_SB_.PR01 */
        }
    }
}

