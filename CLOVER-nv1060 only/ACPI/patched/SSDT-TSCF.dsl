/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLa8aaNb.aml, Sat Oct 27 12:35:17 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000139 (313)
 *     Revision         0x02
 *     Checksum         0xA5
 *     OEM ID           "hack"
 *     OEM Table ID     "TSCF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "TSCF", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (TSCF)
        {
            Name (_ADR, 0x00140002)  // _ADR: Address
            Name (TSCF, One)
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x0C)
                {
                    "AAPL,slot-name", 
                    Buffer (0x0C)
                    {
                        "PCI-Express"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "name", 
                    Buffer (0x23)
                    {
                        "Intel 100 Series Thermal Subsystem"
                    }, 

                    "model", 
                    Buffer (0x23)
                    {
                        "Intel 100 Series Thermal Subsystem"
                    }, 

                    "device_type", 
                    Buffer (0x13)
                    {
                        "Thermal Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci8086,a2a1"
                    }
                })
            }
        }
    }
}

