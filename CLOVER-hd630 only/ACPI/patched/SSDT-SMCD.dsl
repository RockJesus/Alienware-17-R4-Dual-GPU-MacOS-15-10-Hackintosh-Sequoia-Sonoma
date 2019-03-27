/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL9fD9r3.aml, Sun Dec  9 09:42:29 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000E6A (3690)
 *     Revision         0x02
 *     Checksum         0x52
 *     OEM ID           "hack"
 *     OEM Table ID     "SMCD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "SMCD", 0x00000000)
{
    External (_SB_.AC0F, FieldUnitObj)
    External (_SB_.AMBD, FieldUnitObj)
    External (_SB_.AMWM.RETB, MethodObj)    // 3 Arguments
    External (_SB_.CPUS, FieldUnitObj)
    External (_SB_.FND1, FieldUnitObj)
    External (_SB_.MEMD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.A0AC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.B0AC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BACV, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BAL0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BAM0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BLAC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BMFN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CLED, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CPUJ, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CPUP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CRTT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CTHL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CTML, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.CTMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DGPU, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DSPM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.DUTY, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.EGPU, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ENDD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ENIB, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ERBD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ERIB, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FA00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FA01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FA02, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FA03, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FAN2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANG, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANU, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANW, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FB00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FB01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FC00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FC01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FD00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FD01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FE00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FE01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FF00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FF01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FFEN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FFST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FG00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FG01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FH00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FH01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FI00, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FI01, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FI02, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FI03, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FSSN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FTT_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.IGT0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.IGT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.MEMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.MEMT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.NTMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.NVT0, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.NVT1, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.NVTP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ORRF, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PCHP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PCVL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PTVL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SDTM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SKTA, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SMPR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TCNL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.THEN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.THLT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.THTL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TSTS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TTHM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TTHR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.ECOK, MethodObj)    // 0 Arguments
    External (_TZ_.TZ00._TMP, FieldUnitObj)
    External (_TZ_.TZ01._TMP, FieldUnitObj)

    Method (B1B2, 2, NotSerialized)
    {
        Return ((Arg0 | (Arg1 << 0x08)))
    }

    Method (B1B4, 4, NotSerialized)
    {
        Local0 = Arg3
        Local0 = (Arg2 | (Local0 << 0x08))
        Local0 = (Arg1 | (Local0 << 0x08))
        Local0 = (Arg0 | (Local0 << 0x08))
        Return (Local0)
    }

    ThermalZone (\_TZ.TZ00)
    {
        Name (_CID, "thermal-zone")  // _CID: Compatible ID
        Method (TZT0, 0, NotSerialized)
        {
            Local0 = \_TZ.TZ00._TMP /* External reference */
            Return (Local0)
        }
    }

    ThermalZone (\_TZ.TZ01)
    {
        Name (_CID, "thermal-zone")  // _CID: Compatible ID
        Method (TZT1, 0, NotSerialized)
        {
            Local0 = \_TZ.TZ01._TMP /* External reference */
            Return (Local0)
        }
    }

    Device (SMCD)
    {
        Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
        Name (_CID, "MON00000")  // _CID: Compatible ID
        Method (WMBB, 3, Serialized)
        {
            \_SB.AMWM.RETB (Arg0, Arg1, Arg2)
        }

        Name (TACH, Package (0x04)
        {
            "CPU Fan", 
            "FAN1", 
            "GPU Fan #1", 
            "FAN2"
        })
        Method (FAN1, 0, Serialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FA01, \_SB.PCI0.LPCB.EC.FA00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN2, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FB01, \_SB.PCI0.LPCB.EC.FB00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN3, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FC01, \_SB.PCI0.LPCB.EC.FC00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN4, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FD01, \_SB.PCI0.LPCB.EC.FD00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN5, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FE01, \_SB.PCI0.LPCB.EC.FE00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN6, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FF01, \_SB.PCI0.LPCB.EC.FF00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN7, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FG01, \_SB.PCI0.LPCB.EC.FG00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN8, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B2 (\_SB.PCI0.LPCB.EC.FH01, \_SB.PCI0.LPCB.EC.FH00)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (FAN9, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B4 (\_SB.PCI0.LPCB.EC.FI01, \_SB.PCI0.LPCB.EC.FI00, \_SB.PCI0.LPCB.EC.FI02, \_SB.PCI0.LPCB.EC.FI03)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (TCPU, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC.CTMP /* External reference */
            Return (Local0)
        }

        Method (TAMB, 0, NotSerialized)
        {
            If (\_SB.PCI0.LPCB.ECOK ())
            {
                Local0 = B1B4 (\_SB.PCI0.LPCB.EC.FA00, \_SB.PCI0.LPCB.EC.FA01, \_SB.PCI0.LPCB.EC.FA02, \_SB.PCI0.LPCB.EC.FA03)
                If ((Local0 <= Zero))
                {
                    Return (Zero)
                }

                Local0 = (0x0020E6BC / Local0)
                Return (Local0)
            }

            Return (Zero)
        }

        Method (TCPP, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC.TTHR /* External reference */
            Return (Local0)
        }

        Method (TSYS, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC.BMFN /* External reference */
            Return (Local0)
        }

        Method (VCPU, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC.THTL /* External reference */
            Return (Local0)
        }

        Method (VMEM, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC.TTHM /* External reference */
            Return (Local0)
        }
    }
}

