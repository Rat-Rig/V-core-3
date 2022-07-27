---
title: Electronics
hide:
  - navigation
---

??? info "Identifying Motor phases"

    If your motors were acquired at Rat Rig, you don’t need to worry about motor pinout, simply follow our wiring diagrams.

    If you sourced your motors elsewhere, you need to identify their pinout to avoid damage to the board.

    You can identify the motor pinout using either a LED diode or a piece of wire. Short two pins like on the example below and then rotate the shaft by hand. When shorting a phase the LED will light up or - if you’re using the wire method - rotating the shaft will become much harder.

    ![](/assets/motor_phases.png)

    A very detailed article on the matter is provided in [Duet 3D's documentation](https://duet3d.dozuki.com/Wiki/Choosing_and_connecting_stepper_motors#Section_Using_the_internal_drivers).

## BIGTREETECH Octopus v1.1 Wiring Diagram

The BIGTREETECH Octopus v1.1 is the preferred configuration for the V-Core 3 as it is fully supported by RatOS. Rat Rig provides a detailed wiring diagram for this configuration.
<figure>
  <a href="/assets/octopus_wiring_huge.png" target="_blank">
      <img src="/assets/octopus_wiring.png"/>
  </a>
  <figcaption>(click to enlarge)</figcaption>
</figure>

## Connecting a 4028 Fan

!!! danger "WARNING! RAT RIG 4028 FANS ARE 12V"

    Fully read the instructions linked below. Plugging a 12v fan into a 24v printer will destroy your fan.

EVA3 uses a more powerful 4028 fan for improved part cooling. To accurately control the fan, additional wiring is required beyond the normal 12/24V and ground.
The following article on the RatOS site covers all aspects of using these fans:

[:material-link-box-variant: RatOS - Connecting a 4028 fan](https://os.ratrig.com/docs/guides/4028/){: .md-button .md-button--primary target=_blank}

## Duet 3 Mini 5+ with Duet 3 Expansion Mini 2+

V-Core 3 runs on 6 drives which means a board able to handle 6 or more drives is required. Duet 3 Mini 5+ with the Mini 2+ expansion provides 7 drives which is more than enough. The following diagram presents a wiring example for V-Core 3 with that board configuration.
<figure>
  <a href="/assets/wiring_huge.png" target="_blank">
      <img src="/assets/wiring.png"/>
  </a>
  <figcaption>(click to enlarge)</figcaption>
</figure>

??? question "Zoom to BL-Touch connector"

    Please notice how the two ground wires (black and ground) are connected to the same pin in the connector

    ![](/assets/wiring_bl_touch.png)

??? question "Zoom to endstop switch connection"

    ![](/assets/wiring_endstop.png)

??? question "Zoom fan connection"

    ![](/assets/wiring_fans.png)

??? question "Zoom to bed probe connections"

    ![](/assets/wiring_probes.png)

## Duet 3 6HC

Duet 3 6HC is another 6 drive board able to power a V-Core 3. Make sure to **check the jumpers section** bellow.

<figure>
  <a href="/assets/duet_3_6hc_wiring_huge.png" target="_blank">
      <img src="/assets/duet_3_6hc_wiring.png"/>
  </a>
  <figcaption>(click to enlarge)</figcaption>
</figure>

??? question "Zoom to BL-Touch connector"

    Please notice how the two ground wires (black and ground) are connected to the same pin in the connector

    ![](/assets/duet_3_6hc_wiring_bl_touch.png)

??? question "Zoom to endstop switch connection"

    ![](/assets/duet_3_6hc_wiring_endstops.png)

??? warning "Zoom to jumpers"

    Duet 3 6HC allows you to choose the voltage provided to the fans between VIN (usually 24V) and 12V. Make sure to check if the default setting suits your needs. **Wrong setting may destroy your fans**. For more information refer to [Duet's Hardware overview](https://duet3d.dozuki.com/Wiki/Duet_3_Mainboard_6HC_Hardware_Overview#Section_Power_distribution).

    ![](/assets/duet_3_6hc_wiring_jumpers.png)

??? question "Zoom to bed probe connections"

    ![](/assets/duet_3_6hc_wiring_probes.png)

## SKR Pro 1.2

<figure>
  <a href="/assets/skr_wiring_huge.png" target="_blank">
      <img src="/assets/skr_wiring.png"/>
  </a>
  <figcaption>(click to enlarge)</figcaption>
</figure>

!!! info "X/Y Stepper driver pins"

    To use physical endstops on the SKR Pro you need to cut the diag pins from your X and Y stepper drivers.
    This will prevent you from using sensorless homing. If you later change your mind, you can swap X and Y
    with 2 of the Z steppers.

    ![](/assets/SKR Pro V1.2 Stepper Pins.png)
    ![](/assets/SKR Pro V1.2 Stepper Pins Alternate.png)

??? question "Zoom to jumpers"

    ![](/assets/skr_wiring_jumpers.png)

??? question "Zoom to endstop switch and bed probe connection"

    There is an option to use an inductive probe, in that case the `bl-touch` pins can be used as shown. 6V - 36V probes will require custom wiring - **do not plug more than 5V into the signal pin on the board**.

    ![](/assets/skr_wiring_endstops.png)

??? question "Zoom to VIN connections"

    ![](/assets/skr_wiring_vin.png)

??? question "ADXL345 Wiring"

    In Klipper you can use an ADXL345 accelerometer chip to automatically tune your Input Shaper settings. This works out of the box in VCoreOS if you wire it to the SPI port on the far right side of the SKR Pro 1.2.

    ![](/assets/SKR_Pro_1.2_ADXL345_angled.png)
    ![](/assets/SKR_Pro_1.2_ADXL345_top_down.png)


