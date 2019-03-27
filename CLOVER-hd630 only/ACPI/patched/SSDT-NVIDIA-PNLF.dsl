/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLjnXjNm.aml, Sat Dec 15 00:21:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000DA (218)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "hack"
 *     OEM Table ID     "NV-PNLF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "NV-PNLF", 0x00000000)
{
    Method (_SB.PCI0.PEG0.GFX0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x0A)
        {
            "@1,AAPL,boot-display", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "@1,backlight-control", 
            Buffer (0x04)
            {
                 0x01, 0x00, 0x00, 0x00                           // ....
            }, 

            "@1,built-in", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "@1,use-backlight-blanking", 
            Buffer (One)
            {
                 0x01                                             // .
            }, 

            "@1,pwm-info", 
            Buffer (0x14)
            {
                /* 0000 */  0x01, 0x14, 0x00, 0x64, 0xA8, 0x61, 0x00, 0x00,  // ...d.a..
                /* 0008 */  0x1E, 0x02, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00,  // ....,...
                /* 0010 */  0x00, 0x04, 0x00, 0x00                           // ....
            }
        })
    }
}

