class pewpew extends Floater{
  //private double myCenterX,myCenterY,myXspeed,myYspeed,myPointDirection;
  // bc i re-declared the inhearated var's my floater function know nothing abt them
  //so the accel fun. didnt work bc speed was basiclly blank to floater 
  public pewpew(Spaceship steph){
    myCenterX=steph.getX();
    myCenterY=steph.getY();
    myXspeed=steph.getXspeed();
    myYspeed=steph.getYspeed();
    myPointDirection=steph.getMyPointDirection();
    accelerate(1);
    
  }
  public void show(){
   noStroke();
   fill(57,255,20);
    ellipse((float)myCenterX,(float)myCenterY,6,3);
   
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
   return myCenterY; 
  }
  
}
