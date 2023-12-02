//your variable declarations here
Spaceship steph= new Spaceship();
ArrayList <Asteroid> kaboom= new ArrayList<Asteroid>();
Star [] starry = new Star [120];
public void setup()
{
  size(400, 400);
  background(0);
  //bob.turn(90);
  //bob.accelerate(0.5);
  for ( int i= 0; i<starry.length; i++) {
    starry[i]= new Star();
  }
  for ( int i= 0; i<25; i++) {
    kaboom.add(new Asteroid());
  }
}
public void draw()
{
  background(0);


  for (int i=0; i<starry.length; i++) {

    starry[i].show();
  }
  
  for (int i=0; i<kaboom.size(); i++) {
   kaboom.get(i).move();
   kaboom.get(i).show();
   float myDist = dist((float)kaboom.get(i).getX(), (float)kaboom.get(i).getY(), (float)steph.getX(), (float)steph.getY());
    if (myDist < 30) {
      kaboom.remove(i);
    }
   
  }
  steph.show();
  steph.move();
}

void keyPressed() {
  if ( key == 'a' || key =='A') {
    steph.turn(-20);
  }
  if ( key == 'd' || key =='D') {
    steph.turn(20);
  }
  if ( key == 'w' || key =='W') {
    steph.accelerate(.25);
  }
  if ( key == 'h' || key =='H') {
    steph.setSpeed(0, 0);
    steph.accelerate(0);
    steph.setPosition();
  }
}
