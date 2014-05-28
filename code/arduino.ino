
const int analogInPin = A0; 

int sensorValue = 0;        
double outputValue = 0; 

void setup() {
  Serial.begin(9600); 
}

void loop() {
  sensorValue = analogRead(analogInPin);
  outputValue = 5.0/1024*sensorValue;                            
  Serial.print(outputValue);
  delay(20);                     
