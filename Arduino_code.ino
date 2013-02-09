//int myPins[] = {2, 3, 4, 5, 6, 7, 8, 9, 10};
int testpin2 = 2;
int testpin3 = 3;
int soundPin = 11;

 
void setup() 
{
 pinMode(2, INPUT);
  pinMode(3, INPUT);
     pinMode(4, INPUT);
       pinMode(5, INPUT);
         pinMode(6, INPUT);
           pinMode(7, INPUT);
             pinMode(8, INPUT);
               pinMode(10, INPUT);
                 pinMode(soundPin,OUTPUT);
  Serial.begin(9600);
  
}
 void loop()
{
  
if((digitalRead(2) == HIGH))
{
  //testing if pin2 is HIGH by pressing switch 1 manually
  tone(soundPin,261.63); // C4 //if pin2 is High, generate tone with freq=261.63
  delay(100);
  noTone(soundPin);
}

  
//---------------------------------------  

if((digitalRead(3) == HIGH))
{
  //testing i    f pin2 is HIGH by pressing switch 1 manually
  tone(soundPin, 293.66); // C4 //if pin2 is High, generate tone with freq=261.63
  delay(100);
  noTone(soundPin);
} 
 
 
//---------------------------------------  

 
if((digitalRead(4) == HIGH))
{
  //testing if pin2 is HIGH by pressing switch 1 manually
  tone(soundPin,329.63); // C4 //if pin2 is High, generate tone with freq=261.63
   delay(100);
  noTone(soundPin);
}
  
//---------------------------------------  


if((digitalRead(5) == HIGH))
{
  //testing if pin2 is HIGH by pressing switch 1 manually
  tone(soundPin,349.23); // C4 //if pin2 is High, generate tone with freq=261.63
  delay(100);
  noTone(soundPin);
} 

//---------------------------------------  
 


if((digitalRead(6) == HIGH))
{
  //testing if pin2 is HIGH by pressing switch 1 manually
  tone(soundPin, 392.00); // C4 //if pin2 is High, generate tone with freq=261.63
  delay(100);
  noTone(soundPin);
}
 
 
//---------------------------------------  
 
if((digitalRead(7) == HIGH))
{
  //testing if pin2 is HIGH by pressing switch 1 manually
  tone(soundPin,440.00); // C4 //if pin2 is High, generate tone with freq=261.63
  delay(100);
  noTone(soundPin);
}

 


//---------------------------------------  
if((digitalRead(8) == HIGH))
{
  //testing if pin2 is HIGH by pressing switch 1 manually
  tone(soundPin,493.88); // C4 //if pin2 is High, generate tone with freq=261.63
  delay(100);
  noTone(soundPin);
  
}
 
//----------------------------------------------------------------
if((digitalRead(10) == HIGH))
{
  //testing if pin2 is HIGH by pressing switch 1 manually
  tone(soundPin,523.25); // C4 //if pin2 is High, generate tone with freq=261.63
  delay(100);
  noTone(soundPin); 
  
}
  //-----------------------------------------------------------
 Serial.print(digitalRead(2));
  Serial.print(",");
  Serial.print(digitalRead(3));
  Serial.print(",");
  Serial.print(digitalRead(4));
  Serial.print(",");
  Serial.print(digitalRead(5));
  Serial.print(",");
  Serial.print(digitalRead(6));
  Serial.print(",");
  Serial.print(digitalRead(7));
  Serial.print(",");
  Serial.print(digitalRead(8));
  Serial.print(",");
  Serial.println(digitalRead(9)); 
  
}
