---
title: Files and Printing
hide:
  - navigation
---

## Source files

STL, STEP and DXF files are neatly organized in the project repository on GitHub, navigate to [:fontawesome-brands-github: project repository]({{ config.files_url }}) to access the files. Alternatively you can download the whole project in a ZIP package [:fontawesome-solid-archive: here]({{ config.zip_download_url }}).

## CAD

For the CAD 3D Model refer to: [:fontawesome-solid-folder-open: Onshape]({{ config.onshape_public_url }}){ target="_blank" }

## Printing instructions

| Setting      | Value        |
| ------------ | ------------ |
| Perimeters   | 4 x 0.45mm   |
| Layer height | 0.2 - 0.3 mm |
| Infill       | 25%          |
| Supports     | None         |

!!! quote inline end "Designer notes" 
    The parts are in general quite forgiving but also quite big. If you suffer from drafts and/or poor bed adhesion you may need brims/rafts for parts like the bed arms.

On the 360 view bellow you will find the print orientation for the *essential* parts.


<div 
    class="cloudimage-360"
    data-folder="../assets/360/print/"
    data-filename="{index}.png"
    data-amount="36"
    data-speed="500"
    data-control-reverse="true"
    data-full-screen="true"
    data-magnifier="true"
    data-bottom-circle="true"
    data-hide-360-logo="true"
    data-index-zero-base="4"
></div>

### Sacrificial layers

When slicing the files you will notice that some of the holes are covered. This is intentional, to simplify the printing process - those layers are there to trick the slicer into building a bridge there. Once printed those need to be poked out with a screw, screwdriver, Allen key or even a matching size screw.

![](../assets/holes.png)
