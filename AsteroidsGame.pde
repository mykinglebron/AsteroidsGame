Spaceship steph= new Spaceship();
ArrayList <Asteroid> kaboom= new ArrayList<Asteroid>();
ArrayList<Bullet> shot= new ArrayList<Bullet>();
Star [] starry = new Star [120];
boolean turnLeft, turnRight, moveForward, moveBackward;
public void setup() 
{
  size(400,400);
  for(int i = 0; i < starry.length; i++){
    starry[i] = new Star();
  }
  for(int i = 0; i <50; i++){
    kaboom.add(0, new Asteroid());
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < starry.length; i++){
   starry[i].show();  
  }
  for(int i = 0; i < kaboom.size(); i++){
   kaboom.get(i).move();
   kaboom.get(i).show();
   float dShip = dist((float)steph.getX(), (float)steph.getY(), (float)kaboom.get(i).getX(), (float)kaboom.get(i).getY());
   if(dShip < 30){
     kaboom.remove(i);
   }
  }
  if(turnRight == true){
    steph.turn(5);
  } else {
    steph.turn(0);
  }
  if(turnLeft == true){
    steph.turn(-5);
  } else {
    steph.turn(0);
  }
  if(moveForward == true){
    steph.accelerate(0.1);
  } else {
    steph.accelerate(0);
  }
  if(moveBackward == true){
    steph.accelerate(-0.1);
  } else {
    steph.accelerate(0);
  }
  steph.move();
  steph.show();
  for(int i = 0; i < shot.size(); i++){
    shot.get(i).move();
    shot.get(i).show();
  }
  for(int i = 0; i < shot.size(); i++){
    for(int j = 0; j < kaboom.size(); j++){
      float dBullet = dist((float)shot.get(i).getX(), (float)shot.get(i).getY(), (float)kaboom.get(j).getX(), (float)kaboom.get(j).getY());
      if(dBullet < 25){
        shot.remove(i);
        kaboom.remove(j);
        break;
      }
    }
  }
}

public void keyPressed(){
 if(key == 'h'){
   steph.setSpeed(0, 0);
    steph.accelerate(0);
    steph.setPosition();
 }
 if(key == 'd'){
   turnRight = true;
 }
 if(key == 'a'){
   turnLeft = true;
 }
 if(key == 'w'){
   moveForward = true;
 }
 if(key == 's'){
   moveBackward = true;
 }
 if(key == ' '){
   shot.add(new Bullet(steph));
 }
}

public void keyReleased(){
  if(key == 'd'){
    turnRight = false;
  }
  if(key == 'a'){
    turnLeft = false;
  }
  if(key == 'w'){
    moveForward = false;
  }
  if(key == 's'){
    moveBackward = false;
  }
}
