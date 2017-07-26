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
  i. Measure the pH in real time, within the time limit set by the user.
  ii. Record the data, and produce a plot of pH against time.
5. Refine collected data by conducting multiples tests, putting the sensor in solutions of
different pH, collecting the resulting data, and producing a plot corresponding to the data.
(Steps listed above appear a lot easier than they actually are.)

## Hardware Setup
![Alt Title](/doc/pH_sensor1.JPG "Alt Text")
![Alt Title](/doc/pH_setup.png "Alt Text")

## Arduino Code

The [pH_sensor.ino](pH_sensor.ino) sketch was uploaded on the Arduino using the Arduino IDE.

## MATLAB Code

The [pH_sensor.m](pH_sensor.m) script was run in MATLAB.

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
