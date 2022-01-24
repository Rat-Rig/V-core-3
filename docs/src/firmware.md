---
title: Firmware
hide:
  - navigation
  # - toc
---

## RatOS
RatOS is developed and maintained by Mikkel Schmidt (a member of Rat Rig's Beta/Dev team). It combines the power of the Klipper firmware, as well as several other open-source projects, to provide a stable and easy-to-use operating system for all your printing needs.
![](/assets/ratos_logo.png)

<center>[:material-link-box-variant: Official RatOS documentation](https://os.ratrig.com/){: .md-button .md-button--primary}</center>

## Duet - RepRap Firmware

> This guide was prepared against the RepRap Firmware [version 3.2.2](https://github.com/Duet3D/RepRapFirmware/releases/tag/3.2.2){target=_blank}.
> For an official guide from Duet you can go [here](https://duet3d.dozuki.com/Wiki/Getting_Started_with_Duet_3_Mini_5plus#Section_Introduction){target=_blank} which is a very good introduction.

!!! warning "Please read"

    Both this guide, as well as the provided configuration package, are designed for use with the Duet 3 Mini 5+. Modifications to the configuration will be required to use these files on other boards supported by the RepRap Firmware, such as the Duet 3 MB6HC.

!!! info "Download"

    Bellow you will find pieces of Duet configuration files with comment. All files with a boilerplate setup for the V-Core 3 can be downloaded as a ZIP package [:fontawesome-solid-archive: here](Duet_RRF.zip).

### config.g

!!! warning "Please read"

    Neither the files in the package or this guide is a complete - copy and paste configuration, please read and make sure to execute operations like PID tuning mentioned bellow.

Start with setting up absolute coordinates but relative extruder moves. Here you also specify the printer name and it's CoreXY kinematic system:

{{ gcode("firmware/Duet_RRF/config.g", 2, 7) }}

Specify the IP address of your printer (if connected to a network) and define which network protocols should it handle. If you don't know what those are leave only HTTP enabled:

{{ gcode("firmware/Duet_RRF/config.g", 9, 13) }}

Here you define the direction of the motors (`S`) and their mode of operation (`D2` for more powerfull SpreadCycle, `D3` for quiet stealthChop):

!!! info "Motor direction"

    The motor direction and the `S` parameter depends on many things, you may find the motors going in the wrong directions - you may need to switch the `S` parameter and/or swap a pair of wires leading to a motor.

{{ gcode("firmware/Duet_RRF/config.g", 15, 24) }}

Define steps per mm of travel for X, Y and Z axis (the following are for 1.8 deg motors and a Tr8x4 leadscrew):

{{ gcode("firmware/Duet_RRF/config.g", 24, 27) }}

Bellow is where you define what influences the maximum speed of the printer:

{{ gcode("firmware/Duet_RRF/config.g", 28, 31) }}

Define where the nozzle is when hitting an endstop:

??? tip "Bigger printer?"

    Here is where you would change the `maxima` for bigger V-Core 3 sizes

{{ gcode("firmware/Duet_RRF/config.g", 33, 35) }}

Configure endstops, here the X endstop defines *Xmin* and the Y endstop *Ymax*

{{ gcode("firmware/Duet_RRF/config.g", 37, 39) }}

Define lead screw position for true bed leveling

??? tip "Bigger printer?"

    Those values will be different for bigger printers, take a close look how those are defined `X-4.5:150:304.5 Y-4.52:305:-4.52` meaning that the first lead is at `X-4.5` and `-4.52`, the second at `X150`, `Y305` and so on. Naturally the first (left) lead screw position is the same for all size variants but, taking the second as an example it will land at `X250`, `Y505` for the 500x500x500 version of V-Core 3.

{{ gcode("firmware/Duet_RRF/config.g", 40, 42) }}

!!! warning "Caution!"

    The following step defines settings for the **heating elements**, refer to [Duet's documentation](https://duet3d.dozuki.com/Wiki/Tuning_the_heater_temperature_control) for guidance.

    The actuall PID settings are commented out here only to show where those can be set.

{{ gcode("firmware/Duet_RRF/config.g", 44, 52) }}

Configure the hotend fan and layer fan.

??? info "Duet3 6HC users"

    For the older Duet3 6HC you can use the `M950 F0 C"out7" Q500` and `M950 F1 C"out4" Q500` ports for fans

{{ gcode("firmware/Duet_RRF/config.g", 54, 58) }}

Define the Tool (which is the print head):

{{ gcode("firmware/Duet_RRF/config.g", 60, 67) }}

Configure the chosen carriage, the example bellow is to EVA 2 / BMG with an E3D V6 hotend.

!!! warning "Caution!"

    The following step defines settings for the **heating elements**, refer to [Duet's documentation](https://duet3d.dozuki.com/Wiki/Tuning_the_heater_temperature_control) for guidance.
    
    The actuall PID settings are commented out here only to show where those can be set.

{{ gcode("firmware/Duet_RRF/config.g", 70, 76) }}

Z-probe setting, **uncomment** the lines with your probe of choice:

!!! info "BLTouch"

    If you plan to use BLTouch you will also need to uncomment a few lines in `homeall.g` and `homez.g`

{{ gcode("firmware/Duet_RRF/config.g", 78, 85) }}

Finally you can calibrate pressure advance, read more about it [here](https://duet3d.dozuki.com/Wiki/Pressure_advance){target="_blank"}.

{{ gcode("firmware/Duet_RRF/config.g", 88) }}

### homeall.g

This file defines the sequence of actions for the printer to take on the `G28` - "Home All" request. This example moves the carriage diagnonally to reach the XY endstops and homes Z in the middle of the build surface:

??? tip "Bigger printer?"

    The following home files are prepared for the 300x300x300 variant, you will need to modify those for bigger printers to reach the endstops.

{{ gcode("firmware/Duet_RRF/homeall.g") }}

### homex.g
{{ gcode("firmware/Duet_RRF/homex.g") }}

### homey.g
{{ gcode("firmware/Duet_RRF/homey.g") }}

### homez.g
{{ gcode("firmware/Duet_RRF/homez.g") }}

### bed.g
{{ gcode("firmware/Duet_RRF/bed.g") }}

### deployprobe.g

!!! info "BLTouch"

    Required only for BLTouch

{{ gcode("firmware/Duet_RRF/deployprobe.g") }}

### retractprobe.g

!!! info "BLTouch"

    Required only for BLTouch

{{ gcode("firmware/Duet_RRF/retractprobe.g") }}
