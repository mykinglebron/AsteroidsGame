//your variable declarations here
Spaceship bob= new Spaceship();
public void setup() 
{
  size(400,400);
  background(0);
  //bob.turn(90);
  //bob.accelerate(0.5);
}
public void draw() 
{
  background(0);
 
  bob.show();
  bob.move();
  
  
}

void keyPressed(){
  if( key == 'a' || key =='A'){
    bob.turn(-20);
  }
  if( key == 'd' || key =='D'){
    bob.turn(20);
  }
  if( key == 'w' || key =='W'){
    bob.accelerate(.25);
  }
   if( key == 'h' || key =='H'){
       bob.accelerate(0);
     bob.setSpeed(0,0);
    bob.setPosition();
  }
}
