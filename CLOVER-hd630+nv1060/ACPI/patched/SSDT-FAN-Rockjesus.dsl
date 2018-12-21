/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLIz34kp.aml, Thu Dec  6 08:28:14 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000057E (1406)
 *     Revision         0x02
 *     Checksum         0x5B
 *     OEM ID           "hack"
 *     OEM Table ID     "FAN"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "FAN", 0x00000000)
{
    External (_SB_.AMBD, FieldUnitObj)
    External (_SB_.CPUS, FieldUnitObj)
    External (_SB_.LPMV, FieldUnitObj)
    External (_SB_.MEMD, FieldUnitObj)
    External (_SB_.OSYS, FieldUnitObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
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
    External (_SB_.PCI0.LPCB.EC__.FAN2, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANG, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANU, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FANW, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FFEN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FFST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FSSN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FTT_, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.MEMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.MEMT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.NTMP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PCHP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.PCVL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SDTM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SKTA, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TCNL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.THLT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.THTL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TTHM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.TTHR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.CFAN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.FANG, FieldUnitObj)
    External (_SB_.PRM0, FieldUnitObj)
    External (_SB_.TCGP, FieldUnitObj)
    External (_SB_.VFN0, FieldUnitObj)

    Device (SMCD)
    {
        Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
        Name (_CID, "MON00000")  // _CID: Compatible ID
        Method (FAN0, 0, NotSerialized)
        {
            Local0 = \_SB.LPMV /* External reference */
            Return (Local0)
        }

        Method (FAN1, 0, NotSerialized)
        {
            Local0 = \_SB.PRM0 /* External reference */
            Return (Local0)
        }

        Method (FAN2, 0, NotSerialized)
        {
            Local0 = \_SB.VFN0 /* External reference */
            Return (Local0)
        }

        Method (FAN3, 0, NotSerialized)
        {
            Local0 = \_SB.OSYS /* External reference */
            Return (Local0)
        }

        Method (TAMB, 0, NotSerialized)
        {
            Local0 = \_SB.AMBD /* External reference */
            Return (Local0)
        }

        Method (TCPU, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC.CTMP /* External reference */
            Return (Local0)
        }

        Method (TCPP, 0, NotSerialized)
        {
            Local0 = \_SB.TCGP /* External reference */
            Return (Local0)
        }

        Method (TSYS, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPCB.EC.PCHP /* External reference */
            Return (Local0)
        }

        Method (VCPU, 0, NotSerialized)
        {
            Local0 = \_SB.CPUS /* External reference */
            Return (Local0)
        }

        Method (VMEM, 0, NotSerialized)
        {
            Local0 = \_SB.MEMD /* External reference */
            Return (Local0)
        }
    }
}

