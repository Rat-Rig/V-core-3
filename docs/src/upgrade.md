---
title: 3.0 to 3.1 Upgrade
hide:
  - navigation
---

# V-Core 3.0 to 3.1 Upgrade

## Upgrade Build Guide
The V-Core 3.0 upgrade guide walks you through the disassembly steps necessary to prepare your printer for the V-Core 3.1 upgrade.
[:material-link-box-variant: V-Core 3.0 to 3.1 Upgrade Guide](https://ratrig.dozuki.com/Guide/01.+Rat+Rig+V-Core+3.0+to+3.1+Upgrade+Guide/148){: .md-button .md-button--primary}

## Upgrade BOM
The following list shows all parts contained in the V-Core 3.0 to 3.1 upgrade kit
{{ hardware_bom("bom/vcore31_upgrade_07122022_1039.csv") }}

{{ hardware_bom("bom/eva3_0_2_hardware_21102022_1548.csv") }}

## Upgrade Printed Parts
These printed parts are required to upgrade a V-Core 3 from 3.0 to 3.1. They can be downloaded individually or you can download the an archive containing all of the 3.1 upgrade files [:material-archive-arrow-down: by clicking here](https://github.com/Rat-Rig/V-core-3/raw/main/cad/vcore_3_1_upgrade_parts_and_panels.zip).

!!! attention "Downloading STL or STEP files"
    To download individual STL or STEP files, please right click on the appropriate download link in the list and choose "Save link as..."

### Core
{{ printed_parts_bom_31("bom/printed_parts_30_upgrade.csv") }}

### EVA 3.0.2
{{ printed_parts_bom_31("bom/printed_parts_eva3_0_2.csv") }}

## V-Core 3.0 panels on 3.1
All but one of the existing panels for the V-Core 3.0 enclosure fit, without modification, on the 3.1 upgrade. The base panel needs to be modified as the Z-axis motor cages changed in design with 3.1. The existing 3.0 base panel requires 3 sections to be removed, and then a modified rear motor cage trim is used to cover the remaining hole.

### Panel cutting template
The following PDF provides a printable template which can be used as a guide for removing the necessary material: [:material-link-box-variant: by clicking here](https://github.com/Rat-Rig/V-core-3/raw/main/cad/panel_base_30_to_31_cutout_template.pdf)

Position the templates, and remove the marked material from the panel, as shown in the [V-Core 3.0 to 3.1 upgrade guide](https://ratrig.dozuki.com/Guide/01.+Rat+Rig+V-Core+3.0+to+3.1+Upgrade+Guide/148#s1099)

### Rear motor cage trim
A modified trim for the rear lead screw motor cage is provided to cover the hole which remains when modifying a 3.0 base panel for 3.1. This replaces the stock lead_screw_motor_cage_back_trim_3.1 printed part

| Category | Name | QTY | STL | STEP |
| -------- | ---- | --- | --- | ---- |
| enclosure | lead_screw_motor_cage_back_trim_30_to_31 | 1 | [:material-download: Download STL](https://github.com/Rat-Rig/V-core-3/raw/main/cad/printed_parts/stl/enclosure/lead_screw_motor_cage_back_trim_30_to_31.stl) | [:material-download: Download STEP](https://github.com/Rat-Rig/V-core-3/raw/main/cad/printed_parts/step/enclosure/lead_screw_motor_cage_back_trim_30_to_31.step) | 
