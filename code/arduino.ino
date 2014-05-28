
const int analogInPin = A0; 
int servopin=7;
int sensorValue = 0;        
double outputValue = 0; 
int integer;
int decimal;
int i = 0;
int j=0;
void setup() {
  Serial.begin(9600);
  pinMode(servopin,OUTPUT); 
}

void loop() {
	delay(5000);
for(j=0;j<2;j++)
{
  for(i=1;i<360;i++)//left
 {digitalWrite(servopin,HIGH);
  delayMicroseconds(1900);
  digitalWrite(servopin,LOW);
  delay(17.00);
  sensorValue = analogRead(analogInPin);
  outputValue = 5.0/1024*sensorValue;                            
  //Serial.println(outputValue);
  decimal=int(outputValue*100)%100;
  integer=int(outputValue*100)-decimal;
  Serial.write(255);//start sign
  Serial.write(integer);
  Serial.write(decimal);
};

delay(1000);
  for(i=0;i<59;i++)//left
 {digitalWrite(servopin,HIGH);
  delayMicroseconds(1300);
  digitalWrite(servopin,LOW);
  delay(18.1);
};

delay(1000);
};
while(1){
                // statement
            };            
}