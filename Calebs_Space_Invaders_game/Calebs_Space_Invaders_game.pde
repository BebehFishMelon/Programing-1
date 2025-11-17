import processing.sound.*;
SoundFile file;
 int score = 0;
 int[] alienX = {50,110,170,230,290};
 boolean[] isAlive = {true,true,true,true,true};
PImage spaceship;
PImage alien;
PImage bullets;
int spaceshipX;
int bulletX = -10;
int bulletY = -10;
boolean bulletFired = false;
void setup(){
     size(1000,500);
     spaceshipX = width/2;
     spaceship = loadImage("tung.png");
     alien = loadImage("speed.png");
     bullets = loadImage("poop.png");
       file = new SoundFile(this, "loud.mp3");
}
void draw(){
  background(0);
  fill(0,255,0);
  spaceship.resize(100,40);
  image(spaceship, spaceshipX, height -40);
  alien.resize(50,50);
  
fill(255,0,0);
for(int i = 0; i < 5; i++){  
    if(isAlive[i]){
       image(alien[i], i * 60 + 375,50);
  }
}
  if(bulletFired){
    fill(255);
    image(bullets, bulletX, bulletY,100,100);
    bulletY -=50;
    if(bulletY < 0){
      bulletFired = false;
    }
    for(int i = 0; i < 5; i++)
        if(isAlive[i]){
        if(bulletX > alienX[i] && bulletX < alienX[i] + 40 && bulletY > 50 && bulletY < 90){
          isAlive[i] = false;
          bulletFired = false;
          score += 1;
        }
        }
  }
}
void keyPressed(){
  if(keyCode == LEFT && spaceshipX > 0){
    spaceshipX -= 10;
}  else if(keyCode == RIGHT && spaceshipX < width - 40){
  spaceshipX += 10;
} else if(key == ' '){
  if(!bulletFired){
    bulletFired = true;
    file.play();
    bulletX = spaceshipX + 20;
    bulletY = height -40;
  }
  }
}
