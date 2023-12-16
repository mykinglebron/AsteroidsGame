//private double myCenterX,myCenterY,myXspeed,myYspeed,myPointDirection;
  // bc i re-declared the inhearated var's my floater function know nothing abt them
  //so the accel fun. didnt work bc speed was basiclly blank to floater 
  class Bullet extends Floater{
  public Bullet(Spaceship steph){
    myCenterX = steph.getX();
    myCenterY = steph.getY();
    myXspeed = steph.getXspeed();
    myYspeed = steph.getYspeed();
    myPointDirection = steph.getMyPointDirection();
    accelerate(10);
  }
  public void show(){
    fill(124,252,0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    //doesn't wrap around screen
    myCenterX += myXspeed;   
    myCenterY += myYspeed;     
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
