# Enclosure panels

This subdirectory contains the source files for the various panels used on the V-Core 3.

# Electronics panels

Multiple versions of the electronics panel have been made available, covering a wide range of electronics combinations:

| File name                             | Electronics Supported                                      |
| ------------------------------------- | ---------------------------------------------------------- |
| panel_electronics_btt_octopus_rpi     | BIGTREETECH Octopus & Optional Raspberry Pi                |
| panel_electronics_btt_skr_pro_1_2_rpi | BIGTREETECH SKR Pro v1.2 & Optional Raspberry Pi           |
| panel_electronics_duet3_mb6hc         | Duet3D Duet 3 MB6HC in Standalone mode                     |
| panel_electronics_duet3_mb6hc_sbc     | Duet3D Duet 3 MB6HC in SBC mode with a Raspberry Pi        |
| panel_electronics_duet3_mini5         | Duet3D Duet 3 Mini 5+ in Standalone mode                   |
| panel_electronics_duet3_mini5_sbc     | Duet3D Duet 3 Mini 5+ in SBC mode with a Raspberry Pi      |
| panel_electronics_plain               | No pre-drilled holes, allowing mounting of any electronics |

# Formats
## DXF
For laser cutting, industry standard DXF files are provided. Both metric (millimeters) and imperial (inches) versions are available.

> **Please note:** The dimensions in the DXF files are exact. No provision for laser kerf has been provided as this varies greatly depending on the material being cut, the laser cutter being used, and / or the operator of the machine.

## STEP
For CNC routing, or CAD applications, industry standard STEP files are provided. Both metric (millimeters) and imperial (inches) versions are available.