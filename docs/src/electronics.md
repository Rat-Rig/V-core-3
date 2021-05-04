---
title: Electronics
hide:
  - navigation
---

??? info "Identifying Motor phases"

    If your motors were acquired at Rat Rig, you don’t need to worry about motor pinout, simply follow our wiring diagrams.

    If you sourced your motors elsewhere, you need to identify their pinout to avoid damage to the board.

    You can identify the motor pinout using either a LED diode or a piece of wire. Short two pins like on the example below and then rotate the shaft by hand. When shorting a phase the LED will light up or - if you’re using the wire method - rotating the shaft will become much harder.

    ![](../assets/motor_phases.png)

    A very detailed article on the matter is provided in [Duet 3D's documentation](https://duet3d.dozuki.com/Wiki/Choosing_and_connecting_stepper_motors#Section_Using_the_internal_drivers).

## Duet 3 Mini 5+ with Duet 3 Expansion Mini 2+

V-Core 3 runs on 6 drives which means a board able to handle 6 or more drives is required. Duet 3 Mini 5+ with the Mini 2+ expansion provides 7 drives which is more than enough. The following diagram presents a wiring example for V-Core 3 with that board configuration.
<figure>
  <a href="../assets/wiring_huge.png" target="_blank">
      <img src="../assets/wiring.png"/>
  </a>
  <figcaption>(click to enlarge)</figcaption>
</figure>

??? question "Zoom to endstop switch connection"

    ![](../assets/wiring_endstop.png)

??? question "Zoom fan connection"

    ![](../assets/wiring_fans.png)

??? question "Zoom to bed probe connections"

    ![](../assets/wiring_probes.png)

## SKR Pro 1.2

!!! attention "This section is stil a work in progress"

<figure>
  <a href="../assets/skr_wiring_huge.png" target="_blank">
      <img src="../assets/skr_wiring.png"/>
  </a>
  <figcaption>(click to enlarge)</figcaption>
</figure>

!!! info "X/Y Stepper driver pins"

    To use physical endstops on the SKR Pro you need to cut the diag pins from your X and Y stepper drivers.
    This will prevent you from using sensorless homing. If you later change your mind, you can swap X and Y
    with 2 of the Z steppers.

    ![](../assets/SKR Pro V1.2 Stepper Pins.png)
    ![](../assets/SKR Pro V1.2 Stepper Pins Alternate.png)

??? question "Zoom to jumpers"

    ![](../assets/skr_wiring_jumpers.png)

??? question "Zoom to endstop switch and bed probe connection"

    There is an option to use an inductive probe, in that case the `bl-touch` pins can be used as shown. 6V - 36V probes will require custom wiring - **do not plug more than 5V into the signal pin on the board**.

    ![](../assets/skr_wiring_endstops.png)

??? question "Zoom to VIN connections"

    ![](../assets/skr_wiring_vin.png)


