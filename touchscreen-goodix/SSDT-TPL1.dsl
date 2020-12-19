/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL2VxBRO.aml, Fri Nov 27 08:04:54 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003C1 (961)
 *     Revision         0x02
 *     Checksum         0xAA
 *     OEM ID           "ACDT"
 *     OEM Table ID     "TPL1"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "TPL1", 0x00000000)
{
    External (_SB_.PCI0.HIDD, MethodObj)    // 5 Arguments
    External (_SB_.PCI0.HIDG, BuffObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.I2C1.TPL1, DeviceObj)
    External (_SB_.PCI0.TP7D, MethodObj)    // 6 Arguments
    External (_SB_.PCI0.TP7G, BuffObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (GNUM, MethodObj)    // 1 Arguments
    External (GPI0, UnknownObj)

    Scope (_SB.PCI0.I2C1)
    {
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
                    0x00, ResourceConsumer, _Y00, Exclusive,
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
            CreateWordField (SBFB, \_SB.PCI0.I2C1.TPL1._Y00._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C1.TPL1._Y00._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
            CreateWordField (SBFG, 0x3A, TRST)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                INT1 = GNUM (0x0607000F)
                TRST = GNUM (0x0607000E)
                HID2 = One
                BADR = 0x14
                SPED = 0x00061A80
                Return (Zero)
            }

            Name (_HID, "GDIX1002")  // _HID: Hardware ID
            Name (_CID, "GDIX1002")  // _CID: Compatible ID
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
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
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (SBFB, SBFG))
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

