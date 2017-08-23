# MATLAB to Arduino pH Sensor
A student project for ENGR114 at Portland Community College. Uses MATLAB connected to an Arudino over serial to read a pH sensor

## Problem Statement
The team was required to build the hardware and code to control a pH sensor, in order to
measure the pH of the water in a fish tank water.
We had to complete the following tasks to achieve our final goal:
1. Build the hardware.
2. Connect the hardware to Arduino.
3. Read the Arduino code in MATLAB.
4. Modify the codes to:
   * Measure the pH in real time, within the time limit set by the user.
   * Record the data, and produce a plot of pH against time.
5. Refine collected data by conducting multiples tests, putting the sensor in solutions of
different pH, collecting the resulting data, and producing a plot corresponding to the data.
(Steps listed above appear a lot easier than they actually are.)

## Hardware Setup

### Bill of Materials
|component|vendor|
|---|---|
|Arduino|[SparkFun RedBoard - Programmed with Arduino](https://www.sparkfun.com/products/13975)|
|pH Sensor|[Vernier pH Sensor PH-BTA](https://www.sparkfun.com/products/12872)|
|Sensor Shield|[SparkFun Vernier Interface Shield](https://www.sparkfun.com/products/12858)|
|Breadboard|[Breadboard - Self-Adhesive (White)](https://www.sparkfun.com/products/12002)|
|Breadboard Base|[Arduino and Breadboard Holder](https://www.sparkfun.com/products/11235)|
|Mini-B USB cable|[SparkFun USB Mini-B Cable - 6 Foot](https://www.sparkfun.com/products/11301)|
|ph 4 solution|Standard Buffered pH 4 Solution - from PCC Engineering Lab|
|ph 7 solution|Standard Buffered pH 7 Solution - from PCC Engineering Lab|
|ph 10 solution|Standard Buffered pH 10 Solution - from PCC Engineering Lab|

### Hookup Guide
The pH sensor (Vernier part# PH-BTA) was connected to the Vernier Interface Shield (Sparkfun part# DEV-12858) using the white British Telecom Analog (BTA) connector at the end of the pH sensor. The Vernier Interface Shield was placed on top of the Arduino (Sparkfun part# DEV-13975) and carefully seated so that all the pins connected. The Arduino was powered and connected to a laptop computer running MATLAB using a red Mini-B USB cable (Sparkfun part# CAB-11301).
![Alt Title](/doc/pH_sensor1.JPG "Alt Text")
![Alt Title](/doc/pH_setup.png "Alt Text")

## Arduino Code

The [pH_sensor.ino](pH_sensor.ino) sketch was uploaded on the Arduino using the Arduino IDE.

## MATLAB Code

The [pH_sensor.m](pH_sensor.m) script was run in MATLAB. **Ensure the Port is set correctly.** This may be `COM4` but check the device manager to see which Port the Adruino is connected to.

## Results

### pH 4 solution
![Alt Title](/doc/pH_results1.png "Alt Text")

### pH 7 solution
![Alt Title](/doc/pH_results2.png "Alt Text")

### pH 10 solution
![Alt Title](/doc/pH_results3.png "Alt Text")

## Future Work
Teams that intend to carry out projects that are similar to ours, in the future, can utilize our code,
and maybe improve on the commenting part, or probably on the plot-creating section of the code
(we have done our best though). They can also work on collecting more accurate pH samples,
and from different solutions, just to show that the hardware setup, and the code works without
errors.
The websites that will be helpful for them include:
i. https://www.mathworks.com/discovery/arduino-programming-matlab-simulink.html
ii. https://learn.sparkfun.com/tutorials/sik-experiment-guide-for-arduino---v33/introduction-
the-arduino-software-ide-and-code
iii. https://learn.sparkfun.com/tutorials/sik-experiment-guide-for-arduino---v33/experiment-
7-reading-a-temperature-sensor

## License
GNU General Public License v3.0
