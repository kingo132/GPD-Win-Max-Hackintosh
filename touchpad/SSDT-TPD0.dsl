/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200528 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLFhvDcF.aml, Fri Nov 27 08:04:22 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000021B (539)
 *     Revision         0x02
 *     Checksum         0x09
 *     OEM ID           "ACDT"
 *     OEM Table ID     "TPD0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "TPD0", 0x00000000)
{
    External (_SB_.GNUM, UnknownObj)
    External (_SB_.INUM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.HIDD, MethodObj)    // 5 Arguments
    External (_SB_.PCI0.HIDG, BuffObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C0.TPD0, DeviceObj)
    External (_SB_.PCI0.TP7D, MethodObj)    // 6 Arguments
    External (_SB_.PCI0.TP7G, BuffObj)
    External (GNUM, IntObj)
    External (GPDI, MethodObj)    // 0 Arguments
    External (GPI0, UnknownObj)
    External (HID2, BuffObj)
    External (HIDD, MethodObj)    // 5 Arguments
    External (SBFB, BuffObj)
    External (SBFI, BuffObj)
    External (TP7D, MethodObj)    // 6 Arguments

    Scope (_SB.PCI0.I2C0)
    {
        Device (TPD0)
        {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0000, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "NULL",
                    0x00, ResourceConsumer, _Y00, Exclusive,
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
                Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y01)
                {
                    0x00000000,
                }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y00._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y00._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
            CreateDWordField (SBFI, \_SB.PCI0.I2C0.TPD0._Y01._INT, INT2)  // _INT: Interrupts
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                INT2 = INUM (GPDI ())
                HID2 = 0x20
                BADR = 0x2C
                Return (Zero)
            }

            Name (_HID, "HTIX5288")  // _HID: Hardware ID
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
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ConcatenateResTemplate (SBFB, SBFI))
            }
        }
    }
}

