Ball basketball;
smileyFace face;
void setup(){
  size(600,600);
basketball = new Ball(100,100);
face = new smileyFace(200,400);
}
  void draw(){
  background(0);
  basketball.display();
  face.display();
  }


class Ball{
float x, y;
 Ball(float startX, float startY){
   x = startX;
   y = startY;
 }
 void display(){
   ellipse(x,y, 20,20);
 }
}
  class smileyFace{
  float x, y;
  smileyFace(float startX, float startY){
    x = startX;
    y = startY;
  }
  void display(){
    ellipse(x,y,85,50);
    ellipse(x*2,y,85,50);
    arc(300,500, 120, 120, 0, PI+QUARTER_PI, CHORD);
  }
  }
