/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-6-UsbCTabl.aml, Sat Oct 17 08:14:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000015F3 (5619)
 *     Revision         0x02
 *     Checksum         0x00
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "UsbCTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180927 (538446119)
 */
DefinitionBlock ("", "SSDT", 2, "ALASKA", "UsbCTabl", 0x00001000)
{
    External (_SB_.PCI0.LPCB.H_EC.CCI0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CCI1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CCI2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CCI3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL4, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL5, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL6, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.CTL7, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI4, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI5, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI6, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI7, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI8, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGI9, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIA, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIB, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIE, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGIF, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO4, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO5, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO6, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO7, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO8, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGO9, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOA, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOB, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOD, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOE, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.MGOF, IntObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // (from opcode)
    External (P8XH, MethodObj)    // 2 Arguments (from opcode)
    External (TBTS, UnknownObj)    // (from opcode)
    External (TP1D, UnknownObj)    // (from opcode)
    External (TP1P, UnknownObj)    // (from opcode)
    External (TP1T, UnknownObj)    // (from opcode)
    External (TP2D, UnknownObj)    // (from opcode)
    External (TP2P, UnknownObj)    // (from opcode)
    External (TP2T, UnknownObj)    // (from opcode)
    External (TP3D, UnknownObj)    // (from opcode)
    External (TP3P, UnknownObj)    // (from opcode)
    External (TP3T, UnknownObj)    // (from opcode)
    External (TP4D, UnknownObj)    // (from opcode)
    External (TP4P, UnknownObj)    // (from opcode)
    External (TP4T, UnknownObj)    // (from opcode)
    External (TP5D, UnknownObj)    // (from opcode)
    External (TP5P, UnknownObj)    // (from opcode)
    External (TP5T, UnknownObj)    // (from opcode)
    External (TP6D, UnknownObj)    // (from opcode)
    External (TP6P, UnknownObj)    // (from opcode)
    External (TP6T, UnknownObj)    // (from opcode)
    External (TTUP, UnknownObj)    // (from opcode)
    External (UBCB, UnknownObj)    // (from opcode)
    External (UCMS, UnknownObj)    // (from opcode)
    External (USTC, UnknownObj)    // (from opcode)
    External (XDCE, UnknownObj)    // (from opcode)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y00._BAS, CBAS)  // _BAS: Base Address
                Store (UBCB, CBAS)
                Return (CRS)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (USTC, One))
                {
                    If (LEqual (UCMS, One))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (RUCC, 2, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (\_SB.UBTC.CR01._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR01._PLD ())
                        }
                    }
                    Case (0x02)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (\_SB.UBTC.CR02._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR02._PLD ())
                        }
                    }
                    Case (0x03)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (\_SB.UBTC.CR03._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR03._PLD ())
                        }
                    }
                    Case (0x04)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (\_SB.UBTC.CR04._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR04._PLD ())
                        }
                    }
                    Case (0x05)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (\_SB.UBTC.CR05._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR05._PLD ())
                        }
                    }
                    Case (0x06)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (\_SB.UBTC.CR06._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR06._PLD ())
                        }
                    }
                    Default
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (TUPC (Zero))
                        }
                        Else
                        {
                            Return (TPLD (Zero, Zero))
                        }
                    }

                }
            }

            Method (FPMN, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        ShiftRight (TP1D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP1D, One, Local1)
                        Store (TP1P, Local2)
                        Store (TP1T, Local3)
                    }
                    Case (0x02)
                    {
                        ShiftRight (TP2D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP2D, One, Local1)
                        Store (TP2P, Local2)
                        Store (TP2T, Local3)
                    }
                    Case (0x03)
                    {
                        ShiftRight (TP3D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP3D, One, Local1)
                        Store (TP3P, Local2)
                        Store (TP3T, Local3)
                    }
                    Case (0x04)
                    {
                        ShiftRight (TP4D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP4D, One, Local1)
                        Store (TP4P, Local2)
                        Store (TP4T, Local3)
                    }
                    Case (0x05)
                    {
                        ShiftRight (TP5D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP5D, One, Local1)
                        Store (TP5P, Local2)
                        Store (TP5T, Local3)
                    }
                    Case (0x06)
                    {
                        ShiftRight (TP6D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP6D, One, Local1)
                        Store (TP6P, Local2)
                        Store (TP6T, Local3)
                    }
                    Default
                    {
                        Store (0xFF, Local0)
                        Store (Zero, Local1)
                        Store (Zero, Local2)
                        Store (Zero, Local3)
                    }

                }

                If (LEqual (Local0, Zero))
                {
                    Return (Local2)
                }
                ElseIf (LOr (LEqual (Local0, One), LEqual (Local0, 0x02)))
                {
                    If (LEqual (Local1, One))
                    {
                        Return (Local2)
                    }
                    Else
                    {
                        Return (Local3)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TPLD, 2, Serialized)
            {
                Name (PCKG, Package (0x01)
                {
                    Buffer (0x10){}
                })
                CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
                Store (One, REV)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
                Store (Arg0, VISI)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
                Store (Arg1, GPOS)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x4A, 0x04, SHAP)
                Store (One, SHAP)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x20, 0x10, WID)
                Store (0x08, WID)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x30, 0x10, HGT)
                Store (0x03, HGT)
                Return (PCKG)
            }

            Method (TUPC, 1, Serialized)
            {
                Name (PCKG, Package (0x04)
                {
                    One, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Store (Arg0, Index (PCKG, One))
                Return (PCKG)
            }

            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (TPLD (One, FPMN (One)))
                }

                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (TUPC (0x09))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LGreaterEqual (TTUP, One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (CR02)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (TPLD (One, FPMN (0x02)))
                }

                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (TUPC (0x09))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LGreaterEqual (TTUP, 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (CR03)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (TPLD (One, FPMN (0x03)))
                }

                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (TUPC (0x09))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LGreaterEqual (TTUP, 0x03))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            Device (CR04)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (TPLD (One, FPMN (0x04)))
                }

                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (TUPC (0x09))
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (LGreaterEqual (TTUP, 0x04))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }

            If (LGreaterEqual (TTUP, 0x05))
            {
                Device (CR05)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (0x05)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            If (LGreaterEqual (TTUP, 0x06))
            {
                Device (CR06)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (TPLD (One, FPMN (0x06)))
                    }

                    Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                    {
                        Return (TUPC (0x09))
                    }
                }
            }

            OperationRegion (USBC, SystemMemory, UBCB, 0x38)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f")))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                           
                            })
                        }
                        Case (One)
                        {
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO0, RefOf (\_SB.PCI0.LPCB.H_EC.MGO0))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO1, RefOf (\_SB.PCI0.LPCB.H_EC.MGO1))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO2, RefOf (\_SB.PCI0.LPCB.H_EC.MGO2))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO3, RefOf (\_SB.PCI0.LPCB.H_EC.MGO3))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO4, RefOf (\_SB.PCI0.LPCB.H_EC.MGO4))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO5, RefOf (\_SB.PCI0.LPCB.H_EC.MGO5))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO6, RefOf (\_SB.PCI0.LPCB.H_EC.MGO6))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO7, RefOf (\_SB.PCI0.LPCB.H_EC.MGO7))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO8, RefOf (\_SB.PCI0.LPCB.H_EC.MGO8))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGO9, RefOf (\_SB.PCI0.LPCB.H_EC.MGO9))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOA, RefOf (\_SB.PCI0.LPCB.H_EC.MGOA))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOB, RefOf (\_SB.PCI0.LPCB.H_EC.MGOB))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOC, RefOf (\_SB.PCI0.LPCB.H_EC.MGOC))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOD, RefOf (\_SB.PCI0.LPCB.H_EC.MGOD))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOE, RefOf (\_SB.PCI0.LPCB.H_EC.MGOE))
                            \_SB.PCI0.LPCB.H_EC.ECWT (MGOF, RefOf (\_SB.PCI0.LPCB.H_EC.MGOF))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL0, RefOf (\_SB.PCI0.LPCB.H_EC.CTL0))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL1, RefOf (\_SB.PCI0.LPCB.H_EC.CTL1))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL2, RefOf (\_SB.PCI0.LPCB.H_EC.CTL2))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL3, RefOf (\_SB.PCI0.LPCB.H_EC.CTL3))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL4, RefOf (\_SB.PCI0.LPCB.H_EC.CTL4))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL5, RefOf (\_SB.PCI0.LPCB.H_EC.CTL5))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL6, RefOf (\_SB.PCI0.LPCB.H_EC.CTL6))
                            \_SB.PCI0.LPCB.H_EC.ECWT (CTL7, RefOf (\_SB.PCI0.LPCB.H_EC.CTL7))
                            \_SB.PCI0.LPCB.H_EC.ECMD (0xE0)
                            P8XH (Zero, 0xE0)
                        }
                        Case (0x02)
                        {
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI0)), MGI0)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI1)), MGI1)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI2)), MGI2)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI3)), MGI3)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI4)), MGI4)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI5)), MGI5)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI6)), MGI6)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI7)), MGI7)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI8)), MGI8)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGI9)), MGI9)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIA)), MGIA)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIB)), MGIB)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIC)), MGIC)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGID)), MGID)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIE)), MGIE)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.MGIF)), MGIF)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI0)), CCI0)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI1)), CCI1)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI2)), CCI2)
                            Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CCI3)), CCI3)
                        }
                        Case (0x03)
                        {
                            Return (XDCE)
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }
}

