/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-x1_5-ApHwp.aml, Sat Oct 17 08:14:51 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000317 (791)
 *     Revision         0x02
 *     Checksum         0xDD
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApHwp"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180927 (538446119)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "ApHwp", 0x00003000)
{
    External (_SB_.PR00, ProcessorObj)    // (from opcode)
    External (_SB_.PR00._CPC, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PR01, ProcessorObj)    // (from opcode)
    External (_SB_.PR02, ProcessorObj)    // (from opcode)
    External (_SB_.PR03, ProcessorObj)    // (from opcode)
    External (_SB_.PR04, ProcessorObj)    // (from opcode)
    External (_SB_.PR05, ProcessorObj)    // (from opcode)
    External (_SB_.PR06, ProcessorObj)    // (from opcode)
    External (_SB_.PR07, ProcessorObj)    // (from opcode)
    External (_SB_.PR08, ProcessorObj)    // (from opcode)
    External (_SB_.PR09, ProcessorObj)    // (from opcode)
    External (_SB_.PR10, ProcessorObj)    // (from opcode)
    External (_SB_.PR11, ProcessorObj)    // (from opcode)
    External (_SB_.PR12, ProcessorObj)    // (from opcode)
    External (_SB_.PR13, ProcessorObj)    // (from opcode)
    External (_SB_.PR14, ProcessorObj)    // (from opcode)
    External (_SB_.PR15, ProcessorObj)    // (from opcode)

    Scope (\_SB.PR01)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR02)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR03)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR04)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR05)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR06)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR07)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR08)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR09)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR10)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR11)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR12)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR13)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR14)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR15)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }
}

