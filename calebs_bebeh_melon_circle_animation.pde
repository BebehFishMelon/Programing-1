float x,y;
void setup(){
  size (1750,1750);
    x= width/2;
    y= height/2;}
void mousePressed(){
    x = mouseX;
    y = mouseY;}


void draw(){
   ellipse( x,y,176,239);}
