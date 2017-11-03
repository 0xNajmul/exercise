int buttonState = 0;

void setup() {
  pinMode(8, OUTPUT);
  pinMode(2, INPUT);
}
void loop(){  
  
  buttonState = digitalRead(2);
    
  if (buttonState == HIGH)
{
    digitalWrite(8, HIGH);
  }
  else 
  {
    digitalWrite(8, LOW);
  }
}