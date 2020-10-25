/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-x1_8-ApPsd.aml, Sat Oct 17 08:14:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000AB0 (2736)
 *     Revision         0x02
 *     Checksum         0xA5
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApPsd"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180927 (538446119)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "ApPsd", 0x00003000)
{
    External (_SB_.CFGD, FieldUnitObj)    // (from opcode)
    External (_SB_.PR00, DeviceObj)    // (from opcode)
    External (_SB_.PR01, DeviceObj)    // (from opcode)
    External (_SB_.PR02, DeviceObj)    // (from opcode)
    External (_SB_.PR03, DeviceObj)    // (from opcode)
    External (_SB_.PR04, DeviceObj)    // (from opcode)
    External (_SB_.PR05, DeviceObj)    // (from opcode)
    External (_SB_.PR06, DeviceObj)    // (from opcode)
    External (_SB_.PR07, DeviceObj)    // (from opcode)
    External (_SB_.PR08, DeviceObj)    // (from opcode)
    External (_SB_.PR09, DeviceObj)    // (from opcode)
    External (_SB_.PR10, DeviceObj)    // (from opcode)
    External (_SB_.PR11, DeviceObj)    // (from opcode)
    External (_SB_.PR12, DeviceObj)    // (from opcode)
    External (_SB_.PR13, DeviceObj)    // (from opcode)
    External (_SB_.PR14, DeviceObj)    // (from opcode)
    External (_SB_.PR15, DeviceObj)    // (from opcode)
    External (PC00, IntObj)    // (from opcode)
    External (TCNT, FieldUnitObj)    // (from opcode)

    Scope (\_SB.PR01)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR02)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x02, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR03)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x03, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR04)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x04, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR05)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x05, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR06)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x06, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR07)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x07, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR08)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x08, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR09)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x09, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR10)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x0A, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR11)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x0B, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR12)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x0C, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR13)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x0D, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR14)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x0E, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }

    Scope (\_SB.PR15)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If (And (\_SB.CFGD, 0x02000000))
            {
                Store (0x0F, Index (DerefOf (Index (HPSD, Zero)), 0x02))
                Store (One, Index (DerefOf (Index (HPSD, Zero)), 0x04))
            }
            Else
            {
                Store (TCNT, Index (DerefOf (Index (HPSD, Zero)), 0x04))
                Store (TCNT, Index (DerefOf (Index (SPSD, Zero)), 0x04))
            }

            If (And (PC00, 0x0800))
            {
                Return (HPSD)
            }

            Return (SPSD)
        }
    }
}

