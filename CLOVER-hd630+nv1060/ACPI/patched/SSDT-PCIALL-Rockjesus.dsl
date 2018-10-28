/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL3z9uvp.aml, Sat Oct 27 12:42:15 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000D58 (3416)
 *     Revision         0x02
 *     Checksum         0x6E
 *     OEM ID           "hack"
 *     OEM Table ID     "AW17-RJ"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180810 (538445840)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "AW17-RJ", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.DPCH, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.I2C0.DFUD, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.IMEI, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.MCHC, DeviceObj)
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.HDAU, DeviceObj)
    External (_SB_.PCI0.PEG1.EGPU, DeviceObj)
    External (_SB_.PCI0.PEG2.TBLT, DeviceObj)
    External (_SB_.PCI0.PMCR, DeviceObj)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05.ENET, DeviceObj)
    External (_SB_.PCI0.RP06.ARPT, DeviceObj)
    External (_SB_.PCI0.RP09.NVME, DeviceObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)

    Scope (_SB.PCI0.PEG2.TBLT)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x06)
            {
                "AAPL,slot-name", 
                Buffer (0x0E)
                {
                    "PCI-Express@1"
                }, 

                "built-in", 
                Buffer (One)
                {
                     0x00                                             // .
                }, 

                "PCI-Thunderbolt", 
                One
            })
        }

        Device (TBL0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Device (NHI0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCI-Express@1"
                        }, 

                        "device_type", 
                        Buffer (0x15)
                        {
                            "Thunderbolt Ethernet"
                        }, 

                        "model", 
                        Buffer (0x2A)
                        {
                            "Thunderbolt 3 JHL6340 Ethernet controller"
                        }
                    })
                }
            }
        }

        Device (TBL1)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
            Device (TBDP)
            {
                Name (_ADR, Zero)  // _ADR: Address
            }
        }

        Device (TBL2)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address
            Device (TBLU)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x0E)
                        {
                            "PCI-Express@3"
                        }, 

                        "device_type", 
                        Buffer (0x11)
                        {
                            "Thunderbolt XHCI"
                        }, 

                        "model", 
                        Buffer (0x26)
                        {
                            "Thunderbolt 3 JHL6340 XHCI controller"
                        }
                    })
                }
            }
        }
    }

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
    
    Scope (_SB.PCI0.PEG0)
    {
        Device (HDAU)
        {
            Name (_ADR, 0x00000001)  // _ADR: Address
            
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x0E)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x10)
            {
                "HDMI controller"
            }, 

            "model", 
            Buffer (0x28)
            {
                "NVIDIA GeForce GTX 1060 HDMI controller"
            }, 

            "name", 
            "HDMI", 
            "built-in", 
            Buffer (0x04)
            {
                 0x01, 0x00, 0x00, 0x00                           // ....
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0xDE, 0x10, 0x00, 0x00                           // ....
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0xF1, 0x10, 0x00, 0x00                           // ....
            }
        })
    }
        }
    }

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x20)
            {
                "Realtek ALC298 Audio Controller"
            }, 

            "layout-id", 
            Buffer (0x04)
            {
                 0x0B, 0x00, 0x00, 0x00                           // ....
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "model", 
            Buffer (0x22)
            {
                "Intel Corporation Graphics HD 630"
            }
        })
    }

    Method (_SB.PCI0.B0D4._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
            Buffer (0x27)
            {
                "Intel Core Processor Thermal Subsystem"
            }, 

            "model", 
            Buffer (0x27)
            {
                "Intel Core Processor Thermal Subsystem"
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

    Method (_SB.PCI0.IMEI._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x10)
            {
                "IMEI controller"
            }, 

            "model", 
            Buffer (0x22)
            {
                "Intel Corporation IMEI controller"
            }
        })
    }

    Method (_SB.PCI0.LPCB._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x0E)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x10)
            {
                "LPCB controller"
            }, 

            "model", 
            Buffer (0x22)
            {
                "Intel Corporation LPCB controller"
            }, 

            "name", 
            "LPCB", 
            "built-in", 
            Buffer (One)
            {
                 0x00                                             // .
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0x54, 0xA1, 0x00, 0x00                           // T...
            }
        })
    }

    

    Method (_SB.PCI0.PMCR._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x18)
            {
                "Power Manage controller"
            }, 

            "model", 
            Buffer (0x21)
            {
                "Intel Corporation PMC controller"
            }
        })
    }

    Method (_SB.PCI0.RP05.ENET._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@5"
            }, 

            "model", 
            Buffer (0x3F)
            {
                "Qualcomm Atheros Killer E2500 PCI Express Gigabit Ethernet"
            }
        })
    }

    Method (_SB.PCI0.RP06.ARPT._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "device_type", 
            Buffer (0x14)
            {
                "Wireless controller"
            }, 

            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@6"
            }, 

            "model", 
            Buffer (0x33)
            {
                "Broadcom BCM4352 802.11ac Wireless Network Adapter"
            }
        })
    }

    Method (_SB.PCI0.RP09.NVME._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0E)
            {
                "PCI-Express@9"
            }, 

            "model", 
            Buffer (0x2E)
            {
                "Samsung Electronics NVMe SSD Controller SM961"
            }
        })
    }

    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x3A)
            {
                "Intel Corporation 100 Series Chipset AHCI SATA controller"
            }
        })
    }

    Method (_SB.PCI0.SBUS._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x0E)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x22)
            {
                "Intel Corporation SBUS controller"
            }, 

            "name", 
            "SMBUS", 
            "device_type", 
            Buffer (0x0C)
            {
                "APPLE SMBUS"
            }, 

            "built-in", 
            Buffer (0x04)
            {
                 0x01, 0x00, 0x00, 0x00                           // ....
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0x86, 0x80, 0x00, 0x00                           // ....
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0x23, 0xA1, 0x00, 0x00                           // #...
            }
        })
    }

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x45)
            {
                "Intel Corporation 100 Series Chipset Family USB xHCI Host Controller"
            }
        })
    }
}

