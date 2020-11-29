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
DefinitionBlock ("", "SSDT", 2, "ACDT", "TPD0", 0x00000000)
{
    External (_SB_.PCI0.HIDG, BuffObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0._SB_.PCI0.I2C0, UnknownObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0._Y45._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.I2C0.TPD0._Y45._SPE, MethodObj)    // 0 Arguments
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
    External (INUM, MethodObj)
    External (TPDM, FieldUnitObj)
    External (TPDH, FieldUnitObj)
    External (TPDB, FieldUnitObj)
    External (TPDS, FieldUnitObj)
    
    Scope (_SB.PCI0.I2C0)
    {
        Name (I2CN, Zero)
        Name (I2CX, Zero)
        I2CN = SDS0 /* \SDS0 */
        I2CX = Zero
        Device (TPD0)
        {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "NULL",
                    0x00, ResourceConsumer, _Y43, Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y44)
                {
                    0x00000000,
                }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y43._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y43._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
            CreateDWordField (SBFI, \_SB.PCI0.I2C0.TPD0._Y44._INT, INT2)  // _INT: Interrupts
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((OSYS < 0x07DC))
                {
                    SRXO (GPDI, One)
                }

                INT1 = GNUM (GPDI)
                INT2 = INUM (GPDI)
                If ((TPDM == Zero))
                {
                    SHPO (GPDI, One)
                }

                If ((TPDT == One))
                {
                    _HID = "SYNA2393"
                    HID2 = 0x20
                    Return (Zero)
                }

                If ((TPDT == 0x02))
                {
                    _HID = "06CB2846"
                    HID2 = 0x20
                    Return (Zero)
                }

                If ((TPDT == 0x06))
                {
                    _HID = "ALPS0000"
                    HID2 = 0x20
                    BADR = 0x2C
                    Return (Zero)
                }

                If ((TPDT == 0x07))
                {
                    _HID = "HTIX5288"
                    HID2 = 0x20
                    BADR = 0x2C
                    Return (Zero)
                }

                If ((TPDT == 0x05))
                {
                    _HID = "CUST0001"
                    HID2 = TPDH /* \TPDH */
                    BADR = TPDB /* \TPDB */
                    If ((TPDS == Zero))
                    {
                        SPED = 0x000186A0
                    }

                    If ((TPDS == One))
                    {
                        SPED = 0x00061A80
                    }

                    If ((TPDS == 0x02))
                    {
                        SPED = 0x000F4240
                    }

                    Return (Zero)
                }
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
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
                If (((TPDT != Zero) && (I2CN & One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If ((OSYS < 0x07DC))
                {
                    Return (SBFI) /* \_SB_.PCI0.I2C0.TPD0.SBFI */
                }

                If ((TPDM == Zero))
                {
                    Return (ConcatenateResTemplate (I2CM (I2CX, BADR, SPED), SBFG))
                }

                Return (ConcatenateResTemplate (I2CM (I2CX, BADR, SPED), SBFI))
            }
        }
    }
}

