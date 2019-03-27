//
// SSDT-USBX.dsl
//
// Dell XPS 15 9560
//
// This SSDT provides USB power properties, like 
// current limits, to the system (MacBookPro13,3 SMBios).
//
// Would not have been possible without the work of RehabMan:
// https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra.222266/
//

DefinitionBlock("", "SSDT", 2, "hack", "USBX", 0)
{
    Device(_SB.USBX)
    {
        Name(_ADR, Zero)
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LNot (Arg2))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x04)
            {
                "kUSBSleepPortCurrentLimit", 
                0x0BB8, 
                "kUSBWakePortCurrentLimit", 
                0x0BB8
            })
        }
    }
}
//EOF