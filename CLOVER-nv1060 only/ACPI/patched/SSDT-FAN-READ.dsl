// SSDT for FAN readings for ASUS laptops

// Copyright, black.dragon74 <www.osxlatitude.com>

// fan/temperature readings only (fan behavior is BIOS)

DefinitionBlock("", "SSDT", 2, "hack", "_FANREAD", 0)
{
    External(\_SB.PCI0, DeviceObj)
    External(\_SB.PCI0.LPCB, DeviceObj)
    External(\_SB.PCI0.LPCB.EC, DeviceObj)
    External(\_SB.PCI0.LPCB.EC.ECMX, MutexObj)
    External(\_SB.PCI0.LPCB.EC.FAMX, MutexObj)
    External(\_SB.PCI0.LPCB.EC.CRZN, FieldUnitObj)
    External(\_SB.PCI0.LPCB.EC.ERIB, FieldUnitObj)
    External(\_SB.PCI0.LPCB.EC.TEMP, FieldUnitObj)
    External(\_SB.PCI0.LPCB.EC.FRDC, FieldUnitObj)
    External(\_SB.PCI0.LPCB.EC.DTMP, FieldUnitObj)    
    External(\_SB.PCI0.LPCB.EC.ERBD, FieldUnitObj)  
    External(\_SB.PCI0.LPCB.EC.ECRG, IntObj)

    // This is created by 04c_FanSpeed.txt
    Device (SMCD)
    {
        Name (_HID, "FAN00000") // _HID: Hardware ID
        // ACPISensors.kext configuration
        Name (TACH, Package()
        {
            "System Fan", "FANG",
            "Graphic Fan", "FAN1",
        })
        Name (TEMP, Package()
        {
            "CPU Heatsink", "TCPU",
            "Ambient", "TAMB",
            "Mainboard", "TSYS",
            "CPU Proximity", "TCPP",
        })
        // Actual methods to implement fan/temp readings/control
        Method (FANG, 0, Serialized)
        {
            Acquire (\_SB.PCI0.LPCB.EC.FAMX, 0xFFFF)
                \_SB.PCI0.LPCB.EC.ERIB = 0x03
                Local0 = \_SB.PCI0.LPCB.EC.ERBD /* \_SB_.PCI0.LPCB.EC__.ERBD */
                Release (\_SB.PCI0.LPCB.EC.FAMX)
                Return (Local0)
        }
        Method (FAN1, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG) { Return(0) }
            Local0 = \_SB.PCI0.LPCB.EC.FRDC
            If (Local0) { Local0 = (0x3C000 + (Local0 >> 1)) / Local0 }
            If (0x03C4 == Local0) { Return (0) }
            Return (Local0)
        }
        Method (TCPU, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG) { Return(0) }
            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC.CRZN = 1
            Local0 = \_SB.PCI0.LPCB.EC.DTMP
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }
        Method (TCPP, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG) { Return(0) }
            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC.CRZN = 1
            Local0 = \_SB.PCI0.LPCB.EC.DTMP
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }
        Method (TSYS, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG) { Return(0) }
            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC.CRZN = 1
            Local0 = \_SB.PCI0.LPCB.EC.DTMP
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }
        Method (TAMB, 0, Serialized)
        {
            If (!\_SB.PCI0.LPCB.EC.ECRG) { Return(0) }
            Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
            \_SB.PCI0.LPCB.EC.CRZN = 4
            Local0 = \_SB.PCI0.LPCB.EC.TEMP
            Release (\_SB.PCI0.LPCB.EC.ECMX)
            Return (Local0)
        }
    }
}