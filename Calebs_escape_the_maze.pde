int playerX = 0;
int playerY = 0;
int goalX = 4;
int goalY = 4;
boolean gameWon = false;
    void setup(){
      size(400,400);
      textSize(20);}
      void draw(){
        background(#FAEFED);
        for(int i = 0; i < 5; i++){
              for(int k = 0; k < 5; k++){
                stroke(0);
                  fill(255);
                  rect(i * 80, k * 80,80,80);
                  
                  
              }
            }
            
            fill(#179295);
                  rect(playerX * 80, playerY * 80, 80, 80);
                  
                  fill(#179295);
                  rect(goalX * 80, goalY * 80, 80, 80);
                  
                  if(gameWon){
                    text("You Won", 200,200);
                    noLoop();
                  
                  }
                  
            }
        void keyPressed(){
          if(keyCode == UP && playerY > 0){
          playerY--;
          }else if(keyCode == DOWN && playerY < 4){
          playerY++;
          }else if(keyCode == LEFT && playerX > 0){
            playerX--;
          }else if(keyCode == RIGHT && playerX < 4){
            playerX++;
          }
            if(playerX == goalX && playerY == goalY){
              gameWon = true;
            for(int i = 0; i < 5; i++){
              for(int k = 0; k < 5; k++){
                stroke(0);
                  fill(255);
                  rect(i * 80, k * 80,80,80);
              }
            }
            }
        }
      
