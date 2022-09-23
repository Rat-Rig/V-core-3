---
title: Files & Printing
hide:
  - navigation
---

## CAD Models

CAD models for all V-Core 3.1 sizes are made available via the Rat Rig Fusion 360 online viewer.

| Size | Configuration ||
| ---- | ------------- ||
| 200x200 | [:fontawesome-solid-folder-open: Without Enclosure](https://a360.co/3a4GbWn){ target="_blank" } | [:fontawesome-solid-folder-open: With Enclosure](https://a360.co/3S7HwN3){ target="_blank" } |
| 300x300 | [:fontawesome-solid-folder-open: Without Enclosure](https://a360.co/3y3wEHd){ target="_blank" } | [:fontawesome-solid-folder-open: With Enclosure](https://a360.co/3C5QViE){ target="_blank" } |
| 400x400 | [:fontawesome-solid-folder-open: Without Enclosure](https://a360.co/39ZnFi3){ target="_blank" } | [:fontawesome-solid-folder-open: With Enclosure](https://a360.co/3LA7Htb){ target="_blank" } |
| 500x500 | [:fontawesome-solid-folder-open: Without Enclosure](https://a360.co/3I2I4Q7){ target="_blank" } | [:fontawesome-solid-folder-open: With Enclosure](https://a360.co/3xLmwnc){ target="_blank" } |

## Printed Parts
STL and STEP files are provided for all printed parts used on the V-Core 3.1. Each is listed below, organised by category. Alternatively you can download the an archive containing all DXF, STEP and STL files [:material-archive-arrow-down: by clicking here](https://github.com/Rat-Rig/V-core-3/raw/main/cad/vcore_3_1_parts_and_panels.zip).

!!! attention "Downloading STL or STEP files"
    To download individual STL or STEP files, please right click on the appropriate download link in the list and choose "Save link as..."

### Core
These printed parts are required to build the V-Core 3.1

{{ printed_parts_bom_31("bom/printed_parts_core.csv") }}

### Electronics
These printed parts are designed for use with the optional electronics panel

{{ printed_parts_bom_31("bom/printed_parts_electronics.csv") }}

### Enclosure
These printed parts are required when building the V-Core 3.1 enclosure

{{ printed_parts_bom_31("bom/printed_parts_enclosure.csv") }}

### EVA 3.0.2
These printed parts are necessary to build EVA3

{{ printed_parts_bom_31("bom/printed_parts_eva3_0_2.csv") }}

## Recommended print settings

All files are provided in the correct orientation for printing on a standard FDM 3D printer. In general the printed parts are quite forgiving, but are also quite large. If you suffer from drafts and/or poor bed adhesion you may need to use brims/rafts for some parts to prevent warping.

The following table shows the recommended print settings when printing any of the parts provided.

| Setting      | Value        |
| ------------ | ------------ |
| Perimeters   | 4 x 0.45mm   |
| Layer height | 0.2 - 0.3 mm |
| Infill       | 25%          |
| Supports     | None         |

## Sacrificial layers

When slicing the files you will notice that some of the holes are covered. This is intentional, to simplify the printing process - those layers are there to trick the slicer into building a bridge there. Once printed those need to be poked out with a screw, screwdriver, Allen key or even a matching size screw.

![](/assets/holes.png)
