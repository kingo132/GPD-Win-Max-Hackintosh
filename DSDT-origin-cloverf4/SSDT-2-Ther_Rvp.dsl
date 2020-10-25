/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2-Ther_Rvp.aml, Sat Oct 17 08:14:50 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000DE4 (3556)
 *     Revision         0x02
 *     Checksum         0x8E
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "Ther_Rvp"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180927 (538446119)
 */
DefinitionBlock ("", "SSDT", 2, "ALASKA", "Ther_Rvp", 0x00001000)
{
    External (_SB_.AAC0, UnknownObj)    // (from opcode)
    External (_SB_.ACRT, UnknownObj)    // (from opcode)
    External (_SB_.APSV, UnknownObj)    // (from opcode)
    External (_SB_.DTSE, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PECH, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PECL, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PENV, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.PLMX, FieldUnitObj)    // (from opcode)
    External (_SB_.PDTS, UnknownObj)    // (from opcode)
    External (_SB_.PKGA, UnknownObj)    // (from opcode)
    External (_SB_.PR00, UnknownObj)    // (from opcode)
    External (_SB_.PR01, UnknownObj)    // (from opcode)
    External (_SB_.PR02, UnknownObj)    // (from opcode)
    External (_SB_.PR03, UnknownObj)    // (from opcode)
    External (_SB_.PR04, UnknownObj)    // (from opcode)
    External (_SB_.PR05, UnknownObj)    // (from opcode)
    External (_SB_.PR06, UnknownObj)    // (from opcode)
    External (_SB_.PR07, UnknownObj)    // (from opcode)
    External (_SB_.PR08, UnknownObj)    // (from opcode)
    External (_SB_.PR09, UnknownObj)    // (from opcode)
    External (_SB_.PR10, UnknownObj)    // (from opcode)
    External (_SB_.PR11, UnknownObj)    // (from opcode)
    External (_SB_.PR12, UnknownObj)    // (from opcode)
    External (_SB_.PR13, UnknownObj)    // (from opcode)
    External (_SB_.PR14, UnknownObj)    // (from opcode)
    External (_SB_.PR15, UnknownObj)    // (from opcode)
    External (AC0F, IntObj)    // (from opcode)
    External (AC1F, IntObj)    // (from opcode)
    External (ACT1, IntObj)    // (from opcode)
    External (ACTT, IntObj)    // (from opcode)
    External (CRTT, IntObj)    // (from opcode)
    External (CTYP, IntObj)    // (from opcode)
    External (ECON, IntObj)    // (from opcode)
    External (PSVT, IntObj)    // (from opcode)
    External (TC1V, IntObj)    // (from opcode)
    External (TC2V, IntObj)    // (from opcode)
    External (TCNT, IntObj)    // (from opcode)
    External (TSPV, IntObj)    // (from opcode)
    External (VFN0, IntObj)    // (from opcode)
    External (VFN1, IntObj)    // (from opcode)
    External (VFN2, IntObj)    // (from opcode)
    External (VFN3, IntObj)    // (from opcode)
    External (VFN4, IntObj)    // (from opcode)

    Scope (\_TZ)
    {
        Name (ETMD, One)
        Event (FCET)
        Name (FCRN, Zero)
        Mutex (FCMT, 0x00)
        Name (CVF0, Zero)
        Name (CVF1, Zero)
        Name (CVF2, Zero)
        Name (CVF3, Zero)
        Name (CVF4, Zero)
        Mutex (FMT0, 0x00)
        Mutex (FMT1, 0x00)
        Mutex (FMT2, 0x00)
        Mutex (FMT3, 0x00)
        Mutex (FMT4, 0x00)
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT0, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF0, Local1)
                    Release (FMT0)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT0, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF0)
                    Release (FMT0)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT0, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF0)
                    Release (FMT0)
                }

                FNCL ()
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN00
            })
        }

        PowerResource (FN01, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT1, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF1, Local1)
                    Release (FMT1)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT1, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF1)
                    Release (FMT1)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT1, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF1)
                    Release (FMT1)
                }

                FNCL ()
            }
        }

        Device (FAN1)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                FN01
            })
        }

        PowerResource (FN02, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT2, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF2, Local1)
                    Release (FMT2)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT2, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF2)
                    Release (FMT2)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT2, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF2)
                    Release (FMT2)
                }

                FNCL ()
            }
        }

        PowerResource (FN03, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT3, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF3, Local1)
                    Release (FMT3)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT3, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF3)
                    Release (FMT3)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT3, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF3)
                    Release (FMT3)
                }

                FNCL ()
            }
        }

        PowerResource (FN04, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                Store (Zero, Local1)
                Store (Acquire (FMT4, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (CVF4, Local1)
                    Release (FMT4)
                }

                Return (Local1)
            }

            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                Store (Acquire (FMT4, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (One, CVF4)
                    Release (FMT4)
                }

                FNCL ()
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                Store (Acquire (FMT4, 0x03E8), Local0)
                If (LEqual (Local0, Zero))
                {
                    Store (Zero, CVF4)
                    Release (FMT4)
                }

                FNCL ()
            }
        }

        Method (FNCL, 0, NotSerialized)
        {
            Store (Zero, Local0)
            Store (Zero, Local1)
            Store (Zero, Local2)
            Store (Zero, Local3)
            Store (Zero, Local4)
            Store (Acquire (FMT0, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF0, Local0)
                Release (FMT0)
            }

            Store (Acquire (FMT1, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF1, Local1)
                Release (FMT1)
            }

            Store (Acquire (FMT2, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF2, Local2)
                Release (FMT2)
            }

            Store (Acquire (FMT3, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF3, Local3)
                Release (FMT3)
            }

            Store (Acquire (FMT4, 0x03E8), Local5)
            If (LEqual (Local5, Zero))
            {
                Store (CVF4, Local4)
                Release (FMT4)
            }

            Store (Local0, \VFN0)
            Store (Local1, \VFN1)
            Store (Local2, \VFN2)
            Store (Local3, \VFN3)
            Store (Local4, \VFN4)
            If (LAnd (\_SB.PCI0.LPCB.H_EC.ECAV, ETMD))
            {
                If (LAnd (LNotEqual (Local0, Zero), LNotEqual (Local1, Zero)))
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (AC0F, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                }
                ElseIf (LAnd (LEqual (Local0, Zero), LNotEqual (Local1, Zero)))
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (AC1F, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                }
                Else
                {
                    \_SB.PCI0.LPCB.H_EC.ECWT (Zero, RefOf (\_SB.PCI0.LPCB.H_EC.PENV))
                }

                \_SB.PCI0.LPCB.H_EC.ECMD (0x1A)
            }
        }

        ThermalZone (TZ00)
        {
            Name (PTMP, 0x0BB8)
            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                Store (Arg0, \CTYP)
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (CondRefOf (\_SB.ACRT))
                {
                    If (LNotEqual (\_SB.ACRT, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_SB.ACRT, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\CRTT, 0x0A)))
            }

            Method (_AC0, 0, Serialized)  // _ACx: Active Cooling
            {
                If (CondRefOf (\_SB.AAC0))
                {
                    If (LNotEqual (\_SB.AAC0, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_SB.AAC0, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\ACTT, 0x0A)))
            }

            Method (_AC1, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Add (0x0AAC, Multiply (\ACT1, 0x0A)))
            }

            Method (_AC2, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x32))
            }

            Method (_AC3, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x64))
            }

            Method (_AC4, 0, Serialized)  // _ACx: Active Cooling
            {
                Return (Subtract (Add (0x0AAC, Multiply (\ACT1, 0x0A)), 0x96))
            }

            Name (_AL0, Package (0x01)  // _ALx: Active List
            {
                FAN0
            })
            Name (_AL1, Package (0x01)  // _ALx: Active List
            {
                FAN1
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (LNot (ETMD))
                {
                    Return (0x0BB8)
                }

                If (CondRefOf (\_SB.DTSE))
                {
                    If (LEqual (\_SB.DTSE, 0x03))
                    {
                        Return (Add (0x0B10, Multiply (\CRTT, 0x0A)))
                    }
                }

                If (CondRefOf (\_SB.DTSE))
                {
                    If (LEqual (\_SB.DTSE, One))
                    {
                        Return (Add (0x0AAC, Multiply (\_SB.PDTS, 0x0A)))
                    }
                }

                If (\ECON)
                {
                    Store (\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.PLMX)), Local0)
                    Add (0x0AAC, Multiply (Local0, 0x0A), Local0)
                    Store (Local0, PTMP)
                    Return (Local0)
                }

                Return (0x0BC2)
            }

            Method (XPSL, 0, Serialized)
            {
                If (LEqual (\TCNT, 0x10))
                {
                    Return (Package (0x10)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13, 
                        \_SB.PR14, 
                        \_SB.PR15
                    })
                }

                If (LEqual (\TCNT, 0x0E))
                {
                    Return (Package (0x0E)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13
                    })
                }

                If (LEqual (\TCNT, 0x0C))
                {
                    Return (Package (0x0C)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11
                    })
                }

                If (LEqual (\TCNT, 0x0A))
                {
                    Return (Package (0x0A)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09
                    })
                }

                If (LEqual (\TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07
                    })
                }

                If (LEqual (\TCNT, 0x07))
                {
                    Return (Package (0x07)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06
                    })
                }

                If (LEqual (\TCNT, 0x06))
                {
                    Return (Package (0x06)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05
                    })
                }

                If (LEqual (\TCNT, 0x05))
                {
                    Return (Package (0x05)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04
                    })
                }

                If (LEqual (\TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03
                    })
                }

                If (LEqual (\TCNT, 0x03))
                {
                    Return (Package (0x03)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02
                    })
                }

                If (LEqual (\TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_SB.PR00, 
                        \_SB.PR01
                    })
                }

                Return (Package (0x01)
                {
                    \_SB.PR00
                })
            }

            Method (XPSV, 0, Serialized)
            {
                If (CondRefOf (\_SB.APSV))
                {
                    If (LNotEqual (\_SB.APSV, Zero))
                    {
                        Return (Add (0x0AAC, Multiply (\_SB.APSV, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (\PSVT, 0x0A)))
            }

            Method (XTC1, 0, Serialized)
            {
                Return (\TC1V)
            }

            Method (XTC2, 0, Serialized)
            {
                Return (\TC2V)
            }

            Method (XTSP, 0, Serialized)
            {
                Return (\TSPV)
            }
        }
    }
}

