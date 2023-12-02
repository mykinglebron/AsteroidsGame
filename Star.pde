class Star //note that this class does NOT extend Floater
{
  int mySize;
  int myColor;
  float myX;
  float myY;

  public Star() {
    mySize= (int)(Math.random()*4)+1;
    myColor= color((int)(Math.random()*141)+121, (int)(Math.random()*119), 
      (int)(Math.random()*220)+129);
    myX=(float)(Math.random()*400);
    myY=(float)(Math.random()*400);
  }


  public void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
