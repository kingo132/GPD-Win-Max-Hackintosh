/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3-xh_icud4.aml, Sat Oct 17 08:14:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000BA5 (2981)
 *     Revision         0x02
 *     Checksum         0xE0
 *     OEM ID           "INTEL"
 *     OEM Table ID     "xh_icud4"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180927 (538446119)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "xh_icud4", 0x00000000)
{
    External (_SB_.PCI0.CNIP, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP03.PXSX.WIST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.TXHC.RHUB.SS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.TXHC.RHUB.SS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.TXHC.RHUB.SS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.TXHC.RHUB.SS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)    // (from opcode)
    External (_SB_.UBTC.RUCC, MethodObj)    // 2 Arguments (from opcode)
    External (ATDV, UnknownObj)    // (from opcode)
    External (BED2, UnknownObj)    // (from opcode)
    External (BED3, UnknownObj)    // (from opcode)
    External (BTBR, UnknownObj)    // (from opcode)
    External (BTL2, UnknownObj)    // (from opcode)
    External (BTLE, UnknownObj)    // (from opcode)
    External (BTLL, UnknownObj)    // (from opcode)
    External (BTSE, UnknownObj)    // (from opcode)
    External (SXI1, IntObj)    // (from opcode)
    External (SXI2, IntObj)    // (from opcode)
    External (SXP1, IntObj)    // (from opcode)
    External (SXP2, IntObj)    // (from opcode)

    Method (GPLD, 2, Serialized)
    {
        Name (PCKG, Package (0x01)
        {
            Buffer (0x10){}
        })
        CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
        Store (0x02, REV)
        CreateField (DerefOf (Index (PCKG, Zero)), 0x07, One, RGB)
        Store (One, RGB)
        CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
        Store (Arg0, VISI)
        CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
        Store (Arg1, GPOS)
        Return (PCKG)
    }

    Method (GUPC, 2, Serialized)
    {
        Name (PCKG, Package (0x04)
        {
            0xFF, 
            0xFF, 
            Zero, 
            Zero
        })
        Store (Arg0, Index (PCKG, Zero))
        Store (Arg1, Index (PCKG, One))
        Return (PCKG)
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (One, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x02, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x02, 0x02))
        }
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x03, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x03, 0x02))
        }
    }

    Scope (\_SB.PCI0.TXHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x04, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x04, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x05))
        }

        If (LAnd (CondRefOf (SXI1), CondRefOf (SXP1)))
        {
            If (LAnd (LGreater (SXI1, Zero), LEqual (SXP1, One)))
            {
                Device (CIR)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (One, SXI1))
                    }
                }
            }
        }

        If (LAnd (CondRefOf (SXI2), CondRefOf (SXP2)))
        {
            If (LAnd (LGreater (SXI2, Zero), LEqual (SXP2, One)))
            {
                Device (CIR2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (One, SXI2))
                    }
                }
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (0xFF, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (0xFF, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x03))
        }
    }

    If (\_SB.PCI0.RP03.PXSX.WIST ())
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS03)
        {
            Name (SADX, Package (0x03)
            {
                Zero, 
                Package (0x02)
                {
                    0x07, 
                    0x80000000
                }, 

                Package (0x02)
                {
                    0x12, 
                    0x80000000
                }
            })
            Method (SADS, 0, Serialized)
            {
                Store (\ATDV, Index (DerefOf (Index (SADX, One)), One))
                Store (\ATDV, Index (DerefOf (Index (SADX, 0x02)), One))
                Return (SADX)
            }

            Name (BRDY, Package (0x02)
            {
                Zero, 
                Package (0x08)
                {
                    0x12, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80
                }
            })
            Method (BRDS, 0, Serialized)
            {
                Store (\BTSE, Index (DerefOf (Index (BRDY, One)), One))
                Store (\BTBR, Index (DerefOf (Index (BRDY, One)), 0x02))
                Store (\BED2, Index (DerefOf (Index (BRDY, One)), 0x03))
                Store (\BED3, Index (DerefOf (Index (BRDY, One)), 0x04))
                Store (\BTLE, Index (DerefOf (Index (BRDY, One)), 0x05))
                Store (\BTL2, Index (DerefOf (Index (BRDY, One)), 0x06))
                Store (\BTLL, Index (DerefOf (Index (BRDY, One)), 0x07))
                Return (BRDY)
            }

            Name (GPCX, Package (0x03)
            {
                Zero, 
                Package (0x02)
                {
                    0x07, 
                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    }
                }, 

                Package (0x02)
                {
                    0x12, 
                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    }
                }
            })
            Method (GPC, 0, Serialized)
            {
                Return (GPCX)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (One, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (0xFF, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x05))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x03, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x03, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x04, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x04, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x06))
        }

        If (LAnd (CondRefOf (SXI1), CondRefOf (SXP1)))
        {
            If (LAnd (LGreater (SXI1, Zero), LEqual (SXP1, 0x08)))
            {
                Device (CIR)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (0x08, SXI1))
                    }
                }
            }
        }

        If (LAnd (CondRefOf (SXI2), CondRefOf (SXP2)))
        {
            If (LAnd (LGreater (SXI2, Zero), LEqual (SXP2, 0x08)))
            {
                Device (CIR2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (0x08, SXI2))
                    }
                }
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x07))
        }

        If (LAnd (CondRefOf (SXI1), CondRefOf (SXP1)))
        {
            If (LAnd (LGreater (SXI1, Zero), LEqual (SXP1, 0x09)))
            {
                Device (CIR)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (0x09, SXI1))
                    }
                }
            }
        }

        If (LAnd (CondRefOf (SXI2), CondRefOf (SXP2)))
        {
            If (LAnd (LGreater (SXI2, Zero), LEqual (SXP2, 0x09)))
            {
                Device (CIR2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (0x09, SXI2))
                    }
                }
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If (\_SB.PCI0.CNIP ())
            {
                Return (GUPC (Zero, 0xFF))
            }
            Else
            {
                Return (GUPC (One, Zero))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If (\_SB.PCI0.CNIP ())
            {
                Return (GPLD (Zero, 0x0A))
            }
            Else
            {
                Return (GPLD (One, 0x0A))
            }
        }

        If (LAnd (CondRefOf (SXI1), CondRefOf (SXP1)))
        {
            If (LAnd (LGreater (SXI1, Zero), LEqual (SXP1, 0x0A)))
            {
                Device (CIR)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (0x0A, SXI1))
                    }
                }
            }
        }

        If (LAnd (CondRefOf (SXI2), CondRefOf (SXP2)))
        {
            If (LAnd (LGreater (SXI2, Zero), LEqual (SXP2, 0x0A)))
            {
                Device (CIR2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return (Add (0x0A, SXI2))
                    }
                }
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (0xFF, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (0xFF, 0x03))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (0xFF, 0x03))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x06))
        }
    }
}

