---
title: Files & Printing
hide:
  - navigation
---

## CAD Models

CAD models for all machine sizes are made available via the RatRig Fusion 360 online viewer.

| Size | Configuration ||
| ---- | ------------- ||
| 300x300 | [:fontawesome-solid-folder-open: Without Enclosure](https://a360.co/3uB8XUG){ target="_blank" } | [:fontawesome-solid-folder-open: With Enclosure](https://a360.co/3tMpcPS){ target="_blank" } |
| 400x400 | [:fontawesome-solid-folder-open: Without Enclosure](https://a360.co/3DftKkC){ target="_blank" } | [:fontawesome-solid-folder-open: With Enclosure](https://a360.co/3iESM3c){ target="_blank" } |
| 500x500 | [:fontawesome-solid-folder-open: Without Enclosure](https://a360.co/3uFR1Zo){ target="_blank" } | [:fontawesome-solid-folder-open: With Enclosure](https://a360.co/3IOMKYm){ target="_blank" } |

## Printed Parts

STL, STEP and DXF files are neatly organized in the project repository on GitHub, navigate to [:fontawesome-brands-github: project repository]({{ config.files_url }}) to access the files. Alternatively you can download the whole project in a ZIP package [:material-archive-arrow-down: here]({{ config.zip_download_url }}).

### Core
These printed parts are required to build the V-Core 3.1

{{ printed_parts_bom_31("bom/printed_parts_core.csv") }}

### Electronics
These printed parts are designed for use with the optional electronics panel

{{ printed_parts_bom_31("bom/printed_parts_electronics.csv") }}

### Enclosure
These printed parts are required when building the V-Core 3.1 enclosure

{{ printed_parts_bom_31("bom/printed_parts_enclosure.csv") }}

### EVA3
These printed parts are necessary to build EVA3

{{ printed_parts_bom_31("bom/printed_parts_eva3_0_1.csv") }}

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
