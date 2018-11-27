/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLbelPSm.aml, Tue Nov 13 21:19:00 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000016C (364)
 *     Revision         0x02
 *     Checksum         0x41
 *     OEM ID           "hack"
 *     OEM Table ID     "GPUC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "GPUC", 0x00000000)
{
    External (_SB_.GGII, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.GPUC, DeviceObj)
    External (_SB_.SGII, MethodObj)    // 2 Arguments
    External (GGIV, MethodObj)    // 1 Arguments
    External (OSDW, MethodObj)    // 0 Arguments
    External (SGII, MethodObj)    // 2 Arguments

    Device (GPUC)
    {
        Name (_HID, EisaId ("APP000B"))  // _HID: Hardware ID
        Name (_CID, "gpuc")  // _CID: Compatible ID
        Name (_STA, 0x0B)  // _STA: Status
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadWrite,
                0xFE0B0200,         // Address Base
                0x00000008,         // Address Length
                )
        })
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (OSDW ())
            {
                Return (Package (0x02)
                {
                    0x15, 
                    0x03
                })
            }

            Return (Package (0x02)
            {
                0x15, 
                0x03
            })
        }

        Scope (\_GPE)
        {
            Method (_L15, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (OSDW ())
                {
                    Notify (\_SB.PCI0.LPCB.GPUC, 0x80) // Status Change
                }
                ElseIf ((\_SB.GGII (0x03000015) == One))
                {
                    \_SB.SGII (0x03000015, Zero)
                }
                Else
                {
                    \_SB.SGII (0x03000015, One)
                }
            }
        }

        Name (GMGP, 0x15)
        Method (GMSP, 1, NotSerialized)
        {
            If ((Arg0 <= One))
            {
                SGII (0x03000015, Arg0)
            }
        }

        Method (GMLV, 0, NotSerialized)
        {
            Return (GGIV (0x03000015))
        }
    }
}

