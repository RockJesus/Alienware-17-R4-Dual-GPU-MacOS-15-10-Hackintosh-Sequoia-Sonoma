/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLNq8uKZ.aml, Sat Dec 22 09:52:16 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000B5 (181)
 *     Revision         0x02
 *     Checksum         0x0C
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
    External (AR01, UnknownObj)
    External (PICM, UnknownObj)
    External (PR01, UnknownObj)

    Scope (_SB.PCI0.PEG0)
    {
        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            ^PEGP.NHDA = One
            If (PICM)
            {
                Return (AR01) /* External reference */
            }

            Return (PR01) /* External reference */
        }
    }
}

