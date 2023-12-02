class Asteroid extends Floater{
  private double rotationSpeed;
  public Asteroid(){
    corners=8;
    xCorners= new int [corners];
    yCorners= new int[corners];
    xCorners[0]= -6;   
    yCorners[0]= -6; 
    xCorners[1]= -2;   
    yCorners[1]=-8; 
    xCorners[2]= 2;   
    yCorners[2]= -4; 
    xCorners[3]= 6;   
    yCorners[3]= -4; 
    xCorners[4]=4 ;   
    yCorners[4]=2 ; 
    xCorners[5]= 2;   
    yCorners[5]= 6; 
    xCorners[6]= -2;   
    yCorners[6]= 2; 
    xCorners[7]= -4;   
    yCorners[7]= 2; 
     myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);  
    myXspeed = (int)(Math.random()*5)-3;  
    myYspeed = (int)(Math.random()*5)-3;  
   myPointDirection=(Math.random()*360);
   rotationSpeed= (int)(Math.random()*7)-4;
   myColor =color (169,169,169);
    
    
  }
  public void move(){
    turn (rotationSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  
}
