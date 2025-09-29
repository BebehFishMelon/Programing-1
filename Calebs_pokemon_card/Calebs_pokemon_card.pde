String name = "pibble";
PImage character;
PImage logo;
PImage frog;
void setup(){
     size(500,700);
     background(#0A11C1);
   character = loadImage("pibble.jpg");
   logo = loadImage("rose.jpg");
   frog = loadImage("frog.jpg");
 }
void draw(){
  fill(#FCFCFC);
     rect(25,10,450,300);
     fill(#C11241); 
     textSize(50);
   text(name,70,350);
   textSize(30);
   text("sausage luancher",10,500);
   text("kibble poop",10,450);
   text("-67676767", 300,450);
   text("-0",300,500);
   image(character,25,10,450,300);
   image(logo,450,10,20,30);
   image(frog,300,650,20,20);
 }
 
