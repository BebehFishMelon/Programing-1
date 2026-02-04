float[] xPositions = new float[9];
float[] yPositions = new float[9];
boolean[] isMoleUp = new boolean[9];
int score = 0;
int timer = 0;
void setup(){
 size(600,600);
 int index = 0;
 for(int row = 0; row < 3; row++){
   for(int col = 0; col < 3; col++){
     xPositions[index] = 100 + col * 200;
     yPositions[index] = 100 + row * 200;
     isMoleUp[index] = false;
        index++;
   }
 }
}
   void draw(){
     background(#35BF1B);
     for(int i = 0; i < 9; i++){
       fill(50,25,0);
       ellipse(xPositions[i], yPositions[i], 120,60);
       if(isMoleUp[i]){
        fill(150,100,50);
        ellipse(xPositions[i], yPositions[i] - 20,80,80);
       }
     }
   
   if(frameCount % 60 == 0){
     int randomIndex = (int)random(9);
     isMoleUp[randomIndex] = ! isMoleUp[randomIndex];
   }
   fill(#1C1B1B);
   textSize(32);
   text(score, 20,40);
  }
      void mousePressed(){
        for(int i = 0; i < 9; i++){
          float d = dist(mouseX, mouseY, xPositions[i], yPositions[i]);
          if(isMoleUp[i] && d < 40){
            isMoleUp[i] = false;
            score ++;
          }
        }
      }
            
          
