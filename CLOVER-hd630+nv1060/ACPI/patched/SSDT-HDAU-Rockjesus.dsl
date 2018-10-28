/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLTrCvjx.aml, Tue Oct 23 18:37:38 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000078 (120)
 *     Revision         0x02
 *     Checksum         0x1D
 *     OEM ID           "hack"
 *     OEM Table ID     "HDAU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "HDAU", 0x00000000)
{
    External (_SB_.PCI0.PEG0.GFX0, DeviceObj)
    External (_SB_.PCI0.PEG0, DeviceObj)

    Method (_SB.PCI0.PEG0._PRT)
    {
        
            
            ^GFX0.NHDA = One
        
    }
    
    Scope (_SB.PCI0.PEG0.GFX0)
    {
        
            
            Name (HDAU, Zero)
            OperationRegion (PCI2, SystemMemory, 0xE0100000, 0x0500)
            Field (PCI2, DWordAcc, Lock, Preserve)
            {
                Offset (0x48B), 
                    ,   1, 
                NHDA,   1
            }
        
    }
    
    


}

