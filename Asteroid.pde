class Asteroid extends Floater
{
  public Asteroid() {
    rotSpeed = (int)(Math.random()*3) + 1;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    
    
    myColor = 160;
    myCenterX = 0;
    myCenterY = (int)(Math.random()*600);
    myDirectionX = (Math.random()*4 - 2);
    myDirectionY = (Math.random()*4 - 2);
  }
  private int rotSpeed;
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}     
  public void setY(int y){myCenterY = y;}    
  public int getY(){return (int)myCenterY;} 
  public void setDirectionX(double x){myDirectionX = x;}  
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;};  
  public double getDirectionY(){return myDirectionY;}  
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
