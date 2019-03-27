/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLRxPRsF.aml, Wed Oct 10 14:16:32 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000050 (80)
 *     Revision         0x02
 *     Checksum         0x5D
 *     OEM ID           "hack"
 *     OEM Table ID     "DHCP"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "THSS", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (THSS)
        {
            Name (_ADR, 0x00140002)  // _ADR: Address
            Name (THSS, One)
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x0c)
            {
                "AAPL,slot-name", 
                Buffer (0x0E)
                {
                    "PCI-Express"
                }, 

                "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "name", 
                        Buffer (0x24)
                        {
                            "Intel 100 Series Thermal Subsystem"
                        }, 

                        "model", 
                        Buffer (0x24)
                        {
                            "Intel 100 Series Thermal Subsystem"
                        }, 

                        "device_type", 
                        Buffer (0x13)
                        {
                            "Thermal-Controller"
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

