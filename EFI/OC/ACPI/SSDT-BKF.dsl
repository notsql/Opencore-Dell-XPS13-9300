/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20211217 (32-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of C:/Users/ozkzh/Downloads/SSDT-RMCF-PS2Map-xps9300.aml, Mon Dec 27 22:32:57 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000008B (139)
 *     Revision         0x02
 *     Checksum         0xFE
 *     OEM ID           "ACDT"
 *     OEM Table ID     "RMCF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200528 (538969384)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "RMCF", 0x00000000)
{
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)

    Scope (_SB.PCI0.LPCB.PS2K)
    {
        Name (RMCF, Package (0x02)
        {
            "Keyboard", 
            Package (0x02)
            {
                "Custom PS2 Map", 
                Package (0x03)
                {
                    Package (0x00){}, 
                    "40=65", 
                    "41=66"
                }
            }
        })
    }
}

