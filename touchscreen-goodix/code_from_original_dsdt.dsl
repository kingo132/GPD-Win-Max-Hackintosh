/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL4FStpx.aml, Tue Nov 24 09:42:35 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000552 (1362)
 *     Revision         0x02
 *     Checksum         0xE4
 *     OEM ID           "ACDT"
 *     OEM Table ID     "TPD1"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "TPL1", 0x00000000)
{
    External (_SB_.PCI0.HIDG, BuffObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1._SB_.PCI0.I2C1, UnknownObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1._Y45._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.I2C1.TPL1._Y45._SPE, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.TP7G, BuffObj)
    External (SDS1, FieldUnitObj)
    External (FMD0, FieldUnitObj)
    External (FMH0, FieldUnitObj)
    External (FML0, FieldUnitObj)
    External (GNUM, MethodObj)    // 1 Arguments
    External (GPDI, FieldUnitObj)
    External (GPHD, FieldUnitObj)
    External (GPI0, UnknownObj)
    External (OSYS, FieldUnitObj)
    External (SDS0, FieldUnitObj)
    External (SGOV, MethodObj)    // 2 Arguments
    External (SRXO, MethodObj)    // 2 Arguments
    External (SHPO, MethodObj)    // 2 Arguments
    External (HIDD, MethodObj)    // 2 Arguments
    External (TP7D, MethodObj)    // 2 Arguments
    External (I2CM, MethodObj)    // 2 Arguments
    External (SSD0, FieldUnitObj)
    External (SSH0, FieldUnitObj)
    External (SSL0, FieldUnitObj)
    External (TPDT, FieldUnitObj)
    External (GPLI, FieldUnitObj)
    External (TPLM, FieldUnitObj)
    External (TPLT, FieldUnitObj)
    External (TPLS, FieldUnitObj)
    External (TPLB, FieldUnitObj)
    External (TPLH, FieldUnitObj)
    
    Scope (_SB.PCI0.I2C1)
    {
        Name (I2CN, Zero)
        Name (I2CX, Zero)
        I2CN = SDS1 /* \SDS1 */
        I2CX = One
        Device (TPL1)
        {
            Name (HID2, Zero)
            Name (_ADR, Zero)  // _ADR: Address
            Name (IOST, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPI0, 
                I2C1
            })
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0014, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "NULL",
                    0x00, ResourceConsumer, _Y45, Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveLow, Exclusive, PullDefault, 0x0000,
                    "\\_SB.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C1.TPL1._Y45._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C1.TPL1._Y45._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
            CreateWordField (SBFG, 0x3A, TRST)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((OSYS < 0x07DC))
                {
                    SRXO (GPLI, One)
                }

                INT1 = GNUM (0x0607000F)
                TRST = GNUM (0x0607000E)
                If ((TPLM == Zero))
                {
                    SHPO (GPLI, One)
                }

                If ((TPLT == One))
                {
                    _HID = "ATML3432"
                    HID2 = Zero
                    BADR = 0x4C
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((TPLT == 0x02))
                {
                    _HID = "ATML2952"
                    HID2 = Zero
                    BADR = 0x4A
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((TPLT == 0x03))
                {
                    _HID = "ELAN2097"
                    HID2 = One
                    BADR = 0x10
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((TPLT == 0x04))
                {
                    _HID = "NTRG0001"
                    HID2 = One
                    BADR = 0x07
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((TPLT == 0x05))
                {
                    _HID = "NTRG0002"
                    HID2 = One
                    BADR = 0x64
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((TPLT == 0x06))
                {
                    _HID = "WCOM508E"
                    HID2 = One
                    BADR = 0x0A
                    If ((TPLS == Zero))
                    {
                        SPED = 0x00061A80
                    }

                    If ((TPLS == One))
                    {
                        SPED = 0x00061A80
                    }

                    If ((TPLS == 0x02))
                    {
                        SPED = 0x000F4240
                    }

                    Return (Zero)
                }

                If ((TPLT == 0x08))
                {
                    _HID = "GDIX1002"
                    _CID = "GDIX1002"
                    HID2 = One
                    BADR = 0x14
                    SPED = 0x00061A80
                    Return (Zero)
                }

                If ((TPLT == 0x07))
                {
                    _HID = "CUST0000"
                    HID2 = TPLH /* \TPLH */
                    BADR = TPLB /* \TPLB */
                    If ((TPLS == Zero))
                    {
                        SPED = 0x000186A0
                    }

                    If ((TPLS == One))
                    {
                        SPED = 0x00061A80
                    }

                    If ((TPLS == 0x02))
                    {
                        SPED = 0x000F4240
                    }

                    Return (Zero)
                }
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                If ((Arg0 == TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((TPLT != Zero) && (I2CN & 0x02)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (I2CM (I2CX, BADR, SPED), SBFG))
            }

            OperationRegion (IADR, SystemMemory, 0xFD6D06F0, 0x08)
            Field (IADR, DWordAcc, NoLock, Preserve)
            {
                CNF0,   32, 
                CNF1,   32
            }

            OperationRegion (RSTS, SystemMemory, 0xFD6D06E0, 0x04)
            Field (RSTS, DWordAcc, NoLock, Preserve)
            {
                RST0,   32
            }

            Method (INTI, 0, Serialized)
            {
                CNF0 = 0x42000102
                CNF1 = 0x301F
                IOST = Zero
            }

            Method (INTO, 1, Serialized)
            {
                If ((Arg0 == One))
                {
                    CNF0 = 0x44000201
                    CNF1 = 0x301F
                    IOST = One
                }
                ElseIf ((Arg0 == Zero))
                {
                    CNF0 = 0x44000200
                    CNF1 = 0x301F
                    IOST = One
                }
            }

            Method (INTS, 0, Serialized)
            {
                If ((IOST == Zero))
                {
                    If ((CNF0 == 0x42000102))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                ElseIf ((IOST == One))
                {
                    If ((CNF0 == 0x44000201))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }

            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                CNF0 = 0x44000200
                CNF1 = 0x301F
                IOST = One
                Sleep (One)
                SGOV (0x0607000E, Zero)
                Sleep (0x0B)
                CNF0 = 0x44000201
                CNF1 = 0x301F
                IOST = One
                Sleep (One)
                SGOV (0x0607000E, One)
                Sleep (0x06)
                CNF0 = 0x44000200
                CNF1 = 0x301F
                IOST = One
                Sleep (0x41)
                CNF0 = 0x42000102
                CNF1 = 0x301F
                IOST = Zero
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                SGOV (0x0607000E, Zero)
            }
        }
    }
}

