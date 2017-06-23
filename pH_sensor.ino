// We'll use analog input 0 to measure the temperature sensor's
// signal pin.

const int temperaturePin = A0;


void setup()
{

    Serial.begin(9600); //Initialize serial port & set baud rate to 9600 bits per second (bps)
}


void loop()
{


    float voltage, pH, degreesF; //Declare 3 floating point variables

    voltage = getVoltage(temperaturePin); //Measure the voltage at the analog pin

    pH = ((1.75 - voltage) / .25) + 7 ; // Convert the voltage to pH levels

   // degreesF = degreesC * (9.0 / 5.0) + 32.0; //Convert degrees Celsius to Fahrenheit

    //Now print to the Serial monitor. Remember the baud must be 9600 on your monitor!
    // These statements will print lines of data like this:
    // "voltage: 0.73 deg C: 22.75 deg F: 72.96"

   // Serial.print("voltage: ");
   // Serial.println(voltage);
    
   // Serial.print("  deg C: ");
      Serial.println(pH);
  //  Serial.print("  deg F: ");
  //  Serial.println(degreesF);

    delay(100); // repeat once per second (change as you wish!)
}


float getVoltage(int pin)   //Function to read and return
                            //floating-point value (true voltage)
                            //on analog pin 
{

    return (analogRead(pin) * 0.004882814); 
    // This equation converts the 0 to 1023 value that analogRead()
    // returns, into a 0.0 to 5.0 value that is the true voltage
    // being read at that pin.
}

// Other things to try with this code:

//   Turn on an LED if the temperature is above or below a value.

//   Read that threshold value from a potentiometer - now you've
//   created a thermostat!
