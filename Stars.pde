class Stars //note that this class does NOT extend Floater
{
  private int myX,myY;
  public Stars()
  {
    myX = (int)(Math.random()*900);
    myY = (int)(Math.random()*900);
  }
  public void show(){
    ellipse (myX, myY ,3,3);
  }
}