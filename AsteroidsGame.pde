int lives = 5;
int points = 13;
Stars[] theSky = new Stars[300];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> poo = new ArrayList <Bullet>();
public void keyPressed(){
  if (key == 'w'){ballJet.accelerate(.3);}
  if (key == 'a'){ballJet.turn(-30);}    
  if (key == 'd'){ballJet.turn(30);}
  if (key == ' '){poo.add(new Bullet(ballJet));}
  if (key == 's'){
    ballJet.setX((int)(Math.random()*600)); 
    ballJet.setY((int)(Math.random()*600));
    ballJet.setDirectionX(0);
    ballJet.setDirectionY(0);
   }
}
Spaceship ballJet = new Spaceship();
public void setup() 
{
  size(600, 600);
  for(int i = 0; i < theSky.length; i++){
    theSky[i] = new Stars();
  }  
  for(int i = 0; i < 13; i++){
    rocks.add(i, new Asteroid());
  } 
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < theSky.length; i++){
    theSky[i].show();
  }  
  for(int i = 0; i < poo.size(); i++){
    poo.get(i).move();
    poo.get(i).show();
    if(poo.get(i).getX() < 1 || poo.get(i).getX() > 599){
      poo.remove(i);
      i--;
    }
  else if(poo.get(i).getY() < 1 || poo.get(i).getY() > 599){
      poo.remove(i);
      i--;
    }
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    if(dist(ballJet.getX(), ballJet.getY(), rocks.get(i).getX(), rocks.get(i).getY()) <= 20) {
      rocks.remove(i);
      i--;
      lives--;
      points--;
      break;
    }
    for(int a = 0; a < poo.size(); a++){
      if((dist(poo.get(a).getX(), poo.get(a).getY(), rocks.get(i).getX(), rocks.get(i).getY()) <= 25)) {
        rocks.remove(i);
        i--;
        points--;
        poo.remove(a);
        break;
      }
    } 
  }
  ballJet.move();
  ballJet.show();  
  textSize(12);
  fill(200, 20, 20);
  text("Lives: " + lives,30,560);
  
  if(lives <= 0){
    fill(0);
    rect(0, 0, 600, 600);
    textSize(25);
    fill(220, 20, 20);
    text("GAME OVER. PLEASE REFRESH",128,300);    
  }
    if(points == 0 && lives > 0){
    fill(200);
    rect(0, 0, 600, 600);
    textSize(35);
    fill(255);
    text("WOO HOOOO YOU BROKE THE GAME!!!",20,300);    
    }
}