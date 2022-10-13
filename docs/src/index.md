---
title: Intro
hide:
  - navigation
---
# V-Core 3

The V-Core 3 is a premium DIY kit for a CoreXY 3D Printer with no compromises. 
![](assets/3_1_00.jpg)

<iframe width="1120" height="630" src="https://www.youtube.com/embed/bPxlbfAeEq0" title="Introducing V-Core 3.1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<center>[Order the V-Core 3.1](https://www.ratrig.com/3d-printing-cnc/3d-printer-kits/complete-kits/v-core3configurable.html){: .md-button .md-button--primary target=_blank }</center>
<div
    class="cloudimage-360"
    data-folder="assets/360/main/"
    data-filename="V3_{index}.jpg"
    data-amount="24">
</div>

This kit is the culmination of Rat Rig's accumulated years of experience designing, producing and distributing DIY 3D Printer kits worldwide. Originally introduced in 2017, the V-Core went through several iterations and multiple variants over time, through a process of continuously seeking user feedback to drive product development. The lessons learned over the years allowed us to understand what works and what doesn't, what features are most valued by users, and what choices ensure both quality and affordability. We've distilled all this knowledge into the V-Core 3, which was designed in partnership with Pawel Kucmus, a long time member of our on-line community and one of the most prolific contributors to the V-Core platform.

## Precision

- [x] 3 Point Kinematic Bed
![](assets/bed_tilt.png)

Bed plates expand as they heat up. If their mounting points are unmovable, the bed will have no room to expand to the sides, and it will be forced to bow (either upwards or downwards). The V-Core 3 bed plate is not rigidly connected to the machine's frame. Instead, 3 steel balls connected to the bed sit on low friction dowel pins. The pins act like a pair of rails for the steel balls, guiding their movement as the bed expands and ensuring that only radial movement is possible - there's zero margin for lateral movement. This means that while your plate is firmly in place, it can still remain perfectly flat as it expands.

Since the bed only has 3 mounting points, which are connected to 3 independently driven Z motors, bed-levelling is exclusively determined by motor position and can be done 100% electronically - simple and instantaneous.

<center><iframe width="1000" height="600" src="https://www.youtube.com/embed/bgkK7Fez8VU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>

- [x] 6mm Cast Tooling Plate for Print bed
![](assets/bed.png)

<p>&nbsp;</p>

- [x] Bi-material Decouplers on Z arms ensure that any inconsistencies on the drivetrain won't be transmitted to the print surface
![](assets/decouplers.jpg)

- [x] XY Kinematics built to last
![](assets/XY_joiner.png)

<p>&nbsp;</p>

- [x] All movement guided by MGN12 Linear Rails
![](assets/MGN.png)

<p>&nbsp;</p>

- [x] Doubled Z resolution with TR8x4 Lead Screws instead of TR8x8
![](assets/leadcomp.png)

The V-Core 3 uses 3 lead screws to drive the Z axis of the machine. They move the bed down in small increments, at the end of each complete layer. The Z axis moves very slowly, so speed is not the priority - precision and resolution are. 
The V-Core 3 uses TR8X4mm lead screws instead of the TR8x8mm used in previous machines, effectively halving the pitch of the lead screw - this means that each rotation of the motor, now moves the bed half as much.
This both doubles the Z resolution of your layers and multiplies the holding torque - always helpful when you're moving such a heavy bed, especially on the larger variants.

## Robustness

While previous V-Core versions, like many other printers on the market, relied solely on 20 Series profiles, the V-Core 3 is fully built on a 30 Series aluminium frame. From screws and nuts to brackets and plates, everything is bigger, stronger and tougher.  
![](assets/30vs20.png)

- [x] Frame made with 30x30mm T-Slot aluminium with a beautiful black anodization
- [x] 4mm thick anodized aluminium plates
- [x] 9mm Belts
- [x] Weight of Z drivetrain and bed is distributed across the Z motor mounts - not on the motors themselves
![](assets/pillow_block.jpg)


## Customization

- [x] Available both as a complete kit and a configurable kit (for those who want to select their own electronics)
- [x] Configurable options include LDO motors, Keenovo Heatpads, and multiple controller board options (from Duet3D, SKR, etc) 
- [x] 4 build volumes available as standard option: 200, 300, 400 and 500 mm3
![](assets/allsizes.png)

- [x] Full End Stop solutions
- [x] EVA 3 Carriage System provides mounts for most popular extruder and hot end choices on the market
- [x] Shipping with EVA 3.0.2
![](assets/feature_eva.png)
![](assets/eva3.jpg)

!!! tip end "What is EVA?"
    EVA is an independently developed and maintained project that aims to be a single platform for many extrusion types.

    Note that not all print head types (due to their physical dimensions) can achieve the full 300x300 print space.

<img align="left" alt="EVA Logo" width="200" src="assets/eva_logo.png">
EVA 3 is the next iteration of the EVA platform with which V-Core 3 is fully compatible. 

Read more about EVA on: [EVA 3 Documentation](https://main.eva-3d.page/)

## Support

- [x] Fully comprehensive step by step build guide (Both static and video)
- [x] Fully comprehensive wiring and electronics guide for multiple controller boards
- [x] Support configuration files for several firmware choices (Reprap, Marlin, Klipper)
- [x] Join our <a href="https://www.facebook.com/groups/ratrig3dprintercommunity" target="_blank">Facebook 3D Printer Community</a> to connect with other V-Core users, share builds, knowledge, mods, and stay posted on all V-Core 3 developments.

## Safety

- [x] Wiring design includes multiple cable management parts, for cable clamping, guiding and strain relief
- [x] Custom Keenovo Heat Pad with pre-wired 157ºC Thermal Fuse for extra safety (Optional). The wiring comes out of the pad slightly off-center, so it's neatly guided to the back of the machine without interfering with the bed mounting point at the back.
![](assets/pad.png)

- [x] For 120/220V Heat pad users, grounding point at the bed and fully isolated bed from the rest of the printer means that the printer frame is never conducting any dangerous voltages. 
![](assets/bed_arm.png)

## Convenience

- [x] Designed for a far easier and quicker assembly than previous versions
- [x] Separate chamber for electronics ensures heat insulation, short motor cable path, easy access to all wiring, and a very clean installation.
![](assets/backpanel.jpg)

:warning: Panel for mounting electronics is not supplied, user is meant to source it locally. A 4mm thick polycarbonate sheet is suggested. Mounting screws and nuts are included as part of the base kit. DXF files with size, shape and hole patterns for the panels are provided on the project documentation.

:warning: Electronics Panel should not be thicker than 4mm, otherwise it will not fit in the available space.

## Enclose Your V-Core 3
### Enclosure Kit

The V-Core 3 was designed from the ground up with full enclosing in mind, with no need for an external enclosure. The design ensures that all motors and electronics are safely placed outside the printing chamber, so they are shielded from high temperatures, and no machine elements protrude from the frame, ensuring that the frame can be directly covered with panels from all sides.

The enclosure kit is the perfect solution for users who want to:
- Use filaments that require high temperatures
- Shield their printer from humidity, dust, drafts, etc
- Shield their environment from printer noises and smells

<center><iframe width="1000" height="600" src="https://www.youtube.com/embed/xSd5vlLNMl8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></center>

### Extended "Full Frame" for a fully enclosed work area

![](assets/enclosure_kit_1.png)

### Double door access
Top and front easy access doors with foam seals

![](assets/enclosure_kit_2.png)

### Magnetically latched doors with double handles
Easily remove the most convenient door depending on your printer position

![](assets/enclosure_kit_3.png)

### New printed spool holder
The new printed spool holder can be assembled outside the enclosure

![](assets/enclosure_kit_4.png)

### Suggested Filament Routing (Using PTFE Tube)
![](assets/enclosure_kit_9.png)

### All motors outside the heated chamber

![](assets/enclosure_kit_5.png)

### New full metal front idler mounts
Easier installation and maintenance

![](assets/enclosure_kit_6.png)

### Optional "Split Panel" files and kit available for bigger printer sizes
![](assets/enclosure_kit_7.png)

### Y-Axis bumpers for optional Y-axis sensorless homing
![](assets/enclosure_kit_8.png)

### Not included
* The enclosing panels themselves are not supplied, the user is meant to source them locally. A 4mm thick polycarbonate sheet is suggested. DXF files with size, shape and hole patterns for the panels are provided on the project documentation.
* Printed parts are required and are also not supplied at the moment, the user will need to self-source them. More information on the printed part section below.

<center>[Order the Enclosure 2.0 Kit](https://ratrig.com/3d-printing-cnc/all-kits-and-bundles/v-core-3-enclosure-kit.html){: .md-button .md-button--primary target=_blank }</center>

## Dimensions
![](assets/dimensions.png)

## Modding

The V-Core 3 is the perfect printer for advanced users who like to tweak and tinker with their machine:

- [x] Fully open-source design, with downloadable 3D models and part libraries freely available
- [x] Frame is built on a modular platform of T-Slot and V-Slot profiles, which allow for endless possibilites when it comes to mounting all types of parts 
- [x] Vast catalog of stand-alone parts available for infinite upgradeability: screws, nuts, connectors, brackets, pulleys, belts, electronics, etc
- [x] For some inspiration, check out the <a href="https://photos.app.goo.gl/kfevYUU9f1RaxHxh9" target="_blank">V-Core 3 Gallery</a> with builds from users worldwide

## Sample Prints / Parts
These images showcase 3D prints produced by V-Core 3 machines belonging to members of our community. Clicking any image will open the full size version.

[![](/assets/samples/01_thumb.png)](/assets/samples/01.png){ target=_blank }
[![](/assets/samples/02_thumb.png)](/assets/samples/02.png){ target=_blank }
[![](/assets/samples/03_thumb.png)](/assets/samples/03.png){ target=_blank }
[![](/assets/samples/04_thumb.png)](/assets/samples/04.png){ target=_blank }

## Acknowledgments

As an Open-source project, the V-Core 3 design is the result of prolonged brainstorming, testing, and collaboration between many active members of the international 3D Printer Community, who shared their knowledge and experience with our design team. As such, the machine inevitably draws inspiration from and builds upon many existing design elements that have been developed, shared, tested, modded, and iterated by the community at large. The nature of the open-source movement makes it often difficult to trace back where each idea was originally generated, making it hard to produce a comprehensive list of acknowledgments. Nevertheless, below we list a few names and projects that we would like to credit for their direct or indirect contribution/inspiration to the V-Core 3 platform (in no particular order):

- Hypercube by Tech2c
- Voron
- BLV
- Jubilee
- Simon Davie
- João Barros
- Detlev Rackow
- Márcio Pereira
- Eduardo Oliveira
- Mikkel Schmidt
- Harald Wagener
- Antonios Antzoulatos
- Lukas Sinitsch
- Tomasz Paluszkiewicz
- Special thanks to thingiverse user TheInternets, for inspiring the community towards the Full Frame enclosure design

## License
<a rel="license" href="https://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a>

This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International</a>

You may share, remix and mod the design. By default, you may not use the design and its derivatives for commercial purposes, but if you request a commercial license from us, we may (and most likely will) grant you one, as long as we deem your goals are aligned with the best interests of the project and its users. 

The spirit of the project is to remove barriers to innovation and focus on pushing the technology, working as a collective, inspiring each other and experimenting with new ideas. We are happy to foster a rich ecosystem of suppliers and services that empowers users by offering them more options and alternatives.

[:material-link-box-variant: Request a Commercial License](https://forms.gle/g8QWjqNmytDGKZLj7){: .md-button .md-button--primary target=_blank }
