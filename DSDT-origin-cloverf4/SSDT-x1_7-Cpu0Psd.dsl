/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-x1_7-Cpu0Psd.aml, Sat Oct 17 08:14:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000F4 (244)
 *     Revision         0x02
 *     Checksum         0x31
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Psd"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180927 (538446119)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Psd", 0x00003000)
{
    External (_SB_.CFGD, FieldUnitObj)    // (from opcode)
    External (_SB_.PR00, DeviceObj)    // (from opcode)
    External (PC00, IntObj)    // (from opcode)
    External (TCNT, FieldUnitObj)    // (from opcode)

    Scope (\_SB.PR00)
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
                Store (Zero, Index (DerefOf (Index (HPSD, Zero)), 0x02))
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

