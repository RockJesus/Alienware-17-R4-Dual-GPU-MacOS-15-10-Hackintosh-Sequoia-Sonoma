/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASL3XqyF0.aml, Fri Aug 10 16:43:07 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008B (139)
 *     Revision         0x01
 *     Checksum         0x47
 *     OEM ID           "toleda"
 *     OEM Table ID     "ami8arpt"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20141107 (538185991)
 */
DefinitionBlock ("", "SSDT", 1, "toleda", "LPCB", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)    // Warning: Unknown object
    

    Scope (\_SB.PCI0)
    {
        

        Device (LPCB)
        {
            Name (_ADR, 0x001f0000)  // _ADR: Address
            
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg2, Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                           
                    })
                }

                Return (Package (0x02)
                {
                    "compatible", 
                    "pci8086,9cc1"
                })
            }
        }
    }
}

