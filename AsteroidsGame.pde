Spaceship ballJet = new Spaceship();
Stars[] sky = new Stars[300];
public void setup() 
{
  size(900,900);
  frameRate(60);
  for  (int i = 0; i < sky.length; i++)
  {
    sky [i] = new Stars();
  }
}
public void draw() 
{
  background(0);
  ballJet.show();
  ballJet.move();
  for  (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
   
}
public void keyPressed(){
  if ('w' == key){
    ballJet.accelerate(3);
  } 
  if ('a' == key)
  {
    ballJet.turn(-30); 
  }
  if ('d' == key){
    ballJet.turn(30);
  }
  if ('s' == key)
  {
    ballJet.setX((int)(Math.random()*900));
    ballJet.setY((int)(Math.random()*900));
  }
}