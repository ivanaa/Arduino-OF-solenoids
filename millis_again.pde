

const int LED = 13; // Analog output pin that the LED is attached to
const int solenoid = 8; // Analog output pin that the LED is attached to

int state = LOW;
long previousMillis = 0;
long interval = 150;

long delayOn = 20;



void setup() {

  Serial.begin(9600); 

  pinMode(LED, OUTPUT); 
  pinMode(solenoid, OUTPUT);
}




void loop() {   
  
  unsigned long currentMillis = millis();
  
 
    
    if (Serial.available() ) {
         
       int thisChar = Serial.read();//solenoid on
           if (currentMillis - previousMillis > interval){
              previousMillis = currentMillis;
    
        if(isUpperCase(thisChar) && state == LOW ) {

          long unsigned long solenoidStart = millis();
          boolean solenoidOn = true;
       state = HIGH;
      if (solenoidOn ==true && millis() - solenoidStart >delayOn)
              
                  state = 
           solenoidOn = false       
               // digitalWrite(LED, HIGH);
                //digitalWrite(solenoid, HIGH);
                Serial.println("sending");

         } 
          else {
            state = LOW;
           // digitalWrite(LED, LOW);
            //digitalWrite(solenoid, LOW);
            Serial.println("stopping");

}
  }
  
 
                
 }
 
   digitalWrite(LED, state);
   digitalWrite(solenoid, state);
                
              }
  
  

  
  
  
  
  
/*  
sensorValue = analogRead(analogInPin);            


if (sensorValue<=25){
  sensorValue = 25;
} 


 if (sensorValue>180 && solState ==LOW){
delay(500);
solState =HIGH;
}

else{
solState = LOW;
}



digitalWrite(LED, solState);
digitalWrite(solenoid, solState);


Serial.println(sensorValue); 


*/


 

