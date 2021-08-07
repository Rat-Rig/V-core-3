---
title: Firmware
hide:
  - navigation
  # - toc
---

## Duet - RepRap Firmware

> This guide was prepared against the RepRap Firmware [version 3.2.2](https://github.com/Duet3D/RepRapFirmware/releases/tag/3.2.2){target=_blank}.
> For an official guide from Duet you can go [here](https://duet3d.dozuki.com/Wiki/Getting_Started_with_Duet_3_Mini_5plus#Section_Introduction){target=_blank} which is a very good introduction.

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

{{ gcode("firmware/Duet_RRF/config.g", 37, 40) }}

Define lead screw position for true bed leveling

??? tip "Bigger printer?"

    Those values will be different for bigger printers, take a close look how those are defined `X-4.5:150:304.5 Y-4.52:305:-4.52` meaning that the first lead is at `X-4.5` and `-4.52`, the second at `X150`, `Y305` and so on. Naturally the first (left) lead screw position is the same for all size variants but, taking the second as an example it will land at `X250`, `Y505` for the 500x500x500 version of V-Core 3.

{{ gcode("firmware/Duet_RRF/config.g", 41, 43) }}

!!! warning "Caution!"

    The following step defines settings for the **heating elements**, refer to [Duet's documentation](https://duet3d.dozuki.com/Wiki/Tuning_the_heater_temperature_control) for guidance.

    The actuall PID settings are commented out here only to show where those can be set.

{{ gcode("firmware/Duet_RRF/config.g", 45, 53) }}

Configure the hotend fan and layer fan.

??? info "Duet3 6HC users"

    For the older Duet3 6HC you can use the `M950 F0 C"out7" Q500` and `M950 F1 C"out4" Q500` ports for fans

{{ gcode("firmware/Duet_RRF/config.g", 55, 59) }}

Define the Tool (which is the print head):

{{ gcode("firmware/Duet_RRF/config.g", 61, 68) }}

Configure the chosen carriage, the example bellow is to EVA 2 / BMG with an E3D V6 hotend.

!!! warning "Caution!"

    The following step defines settings for the **heating elements**, refer to [Duet's documentation](https://duet3d.dozuki.com/Wiki/Tuning_the_heater_temperature_control) for guidance.
    
    The actuall PID settings are commented out here only to show where those can be set.

{{ gcode("firmware/Duet_RRF/config.g", 71, 77) }}

Z-probe setting, **uncomment** the lines with your probe of choice:

!!! info "BLTouch"

    If you plan to use BLTouch you will also need to uncomment a few lines in `homeall.g` and `homez.g`

{{ gcode("firmware/Duet_RRF/config.g", 79, 86) }}

Finally you can calibrate pressure advance, read more about it [here](https://duet3d.dozuki.com/Wiki/Pressure_advance){target="_blank"}.

{{ gcode("firmware/Duet_RRF/config.g", 87) }}

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


## V-CoreOS - Klipper Firmware

!!! info 

    This guide assumes you've followed the wiring diagram for the SKR Pro 1.2 and have it connected to a Raspberry Pi 2 or newer.

### Introduction
[V-CoreOS](https://rat-rig.github.io/V-CoreOS) is a preconfigured software package for the V-Core 3, that aims to make it as painless as possible to get Klipper, Fluidd and Moonraker up and running on your printer. It is developed and maintained by Mikkel Schmidt (miklschmidt#2036 on Discord).

To run V-CoreOS on your V-Core 3 you need an SKR Pro 1.2 (check [the offical V-CoreOS docs](https://rat-rig.github.io/V-CoreOS/#/installation?id=preparing-your-control-board) for other boards) and a Raspberry Pi. The initial configuration is made to work with the official [SKR Pro 1.2 Wiring Diagram](electronics.md#skr-pro-12).

[:material-github: Download V-CoreOS](https://github.com/Rat-Rig/V-CoreOS/releases){: .md-button .md-button--primary}
### Preparing the Raspberry Pi

Download the newest release (includes a firmware.bin and a vcoreos-*.zip file under the assets dropdown) of [VCoreOS on github](https://github.com/Rat-Rig/V-CoreOS/releases).
Then follow [The offical raspberry pi guide](https://www.raspberrypi.org/documentation/installation/installing-images/) to write that image to the SD card that goes into your raspberry pi (8GB or larger) 

Note: this will destroy all data on the card!


**WIFI (Optional)**
!!! warning

    Do **NOT** use a textprocessor such as Wordpad, it will mangle the file and your pi won't boot. Notepad, Notepad++, VSCode are all fine.

When the process is complete, find the `/boot` volume / folder on the sd card. If you're having trouble finding the boot volume, try reinserting the SD card into your PC. Edit the `vcoreos-wpa-supplicant.txt` file found on the boot volume in a text editor and fill out your wifi information. Note the country code at the bottom of the file.

When that is done reinsert the SD card into the Raspberry Pi, but don't turn on your printer / Raspberry Pi just yet.

### Preparing the SKR Pro

Move the `firmware-skr-pro-12.bin` file that you downloaded in the previous step to the SD card that goes into your SKR Pro and rename it to `firmware.bin`, then reinsert the SD card in to the SKR Pro.

### Setup

With SKR Pro 1.2 connected via USB to your Raspberry Pi, turn on your printer. After a minute or two, open your browser and navigate to [http://v-coreos.local/](http://v-coreos.local)

**Configuration**

In the settings page in Fluidd, there's a list of files, among them should be a `printer.cfg`. Right click that and choose "Edit". This is where your klipper configuration lives. As you can see, it's prepopulated with some included files which are meant to get you up and running quick and easy. Follow the instructions in the file to make sure the configuration matches your setup.

**Updating**

In the settings page in Fluidd, you'll see a sheet with the title "Update Manager", if you're familiar with Fluidd or Mainsail, you'll notice a new entry called `vcore3`. This `vcore3` package will update all the config files in the v-core-3 folder, improvements, support for hotends, extruders etc, will be coming to your printer this way in the future.

### Finalizing
You'll need to adjust your endstop and probe z-offset before printing and be sure to run PID tuning for your extruder and your bed. After that it's advisable to run [Pressure Advance tuning](https://www.klipper3d.org/Pressure_Advance.html), [Input Shaper calibration](https://www.klipper3d.org/Resonance_Compensation.html) and [Skew Correction](https://www.klipper3d.org/skew_correction.html).

An easy way to do probe z-offset calibration is to home the printer, then put a piece of paper underneath. Now babystep Z through the Fluidd interface (or by issuing G0 commands through the console) until the nozzle touches the paper and there's a tiny bit of resistance when you pull on it. Then write "GET_POSITION" in the console and find the line that says `// kinematic: ...` And use the Z coordinate from that line, multiplied by -1. So if it says `// kinematic: X:0.000000 Y:0.000000 Z:-0.400000` Your probe's z_offset will be 0.4.

### Troubleshooting
If klipper won't connect, try restarting your raspberry pi. Make sure the SKR Pro is connected to the Pi via USB, that both are powered, and that the firmware.bin has been properly flashed. You can verify the last part by checking if the firmware.bin file has been changed to firmware.CUR on the SD card. If you have trouble flashing the motherboard (a green light should flash while booting, indicating the firmware has been flashed succefully), try disconnecting your endstops, if these are wired incorrectly the board will not boot properly.

If any of your axes are inverted, tripple check your wiring. It's important to note that this config is made specifically for the SKR Pro 1.2 and the 48mm LDO's that ship optionally with the V-Core 3. For other steppers, you'll have to check the stepper pinout and potentially move pins on your cable, or you can override the stepper dir_pins as needed in your printer.cfg after the steppers.cfg file has been included, like so:
```
[stepper_x]
dir_pin: PF1
```

For further support check out the v-coreos and klipper channels on the [Unnofficial RatRig Discord Community](community.md#unofficial-community-on-discord).

### (Optional) Input Shaping using an ADXL345

If you want to use an ADXL345 for automatic input shaper calibration, all the software you need is already installed on the pi, you just need to wire and map the pins for your ADXL345, and you're good to go. A default config and wiring diagram will be included in the future for connecting the ADXL directly to the SKR Pro. Read more here: https://www.klipper3d.org/Measuring_Resonances.html.

### Software Credits

V-CoreOS is based on [Klipper](https://www.klipper3d.org/), [Fluidd](https://docs.fluidd.xyz/), [MainsailOS](https://github.com/raymondh2/MainsailOS) and [FluiddPi](https://github.com/cadriel/FluiddPI), without these and the amazing people behind them, V-CoreOS would not have been possible.

### Official V-CoreOS Documentation
For the most up to date information and documentation about V-CoreOS check the [Official V-CoreOS Documentation Site](https://rat-rig.github.io/V-CoreOS)
