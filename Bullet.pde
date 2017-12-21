class Bullet extends Floater
{
  public Bullet(Spaceship pilot) {
    myColor = 160;
    myCenterX = pilot.getX();
    myCenterY = pilot.getY();
    myPointDirection = pilot.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + pilot.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + pilot.getDirectionY();
  }
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
  public void show(){
    fill(250, 250, 20);
    ellipse((float)myCenterX, (float)myCenterY, 6, 6);
  }
}