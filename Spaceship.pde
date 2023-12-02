class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 3 ;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -8;   
    yCorners[0]= -8; 
    xCorners[1]= 16;   
    yCorners[1]= 0; 
    xCorners[2]= -8;   
    yCorners[2]= 8; 
    myColor = 255;   
    myCenterX = 200;
    myCenterY = 200; //holds center coordinates   
    myXspeed = 0;  
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection= 0; //holds current direction the ship is pointing in degrees
  }
  //need setters and getters
public void setSpeed(double x, double y) {
    myXspeed = x;
    myYspeed = y;
  }
  
  public void setPosition(){
     myCenterX = (int)(Math.random()*400);
     myCenterY = (int)(Math.random()*400);
      myPointDirection = (int) (Math.random()*360)+1;
     
    
  }
public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }

}
