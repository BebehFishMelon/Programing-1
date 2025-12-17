String scene = "Start";
  void setup (){
    size(600,400);
    textAlign(CENTER,CENTER);
    textSize(10);}
    void draw(){
      background(#FFFFFC);
      if(scene.equals("Start")){
        drawScene("you wake up in an empty macdonalds with a bug furry puppy chasing you, you have nothing on you go and escape before he gets you","basement"," 1st floor");
      }
       else if(scene.equals("1st floor")){
        drawScene("If choose 1st floor you find a whiteboard and a chair what do you pick *hint if one of these might be useful in the future","whiteboard", "chair");
      } else if(scene.equals("basement")){
    drawEnd("If you choose basement you get trapped down there and the puppy finds you you try to hide but he sniffs you out GAME OVER!!!");
 
      }else if (scene.equals("whiteboard")){
     drawScene("If you chooses the whiteboard you smash it open and find a key code with 6 numbers on it 639710", "Check around","stay put");
     
      }else if(scene.equals("stay put")){
     drawScene("You stay around and wait for something or someone to help you. You here some shuffiling near the kitchen you have hope that someone is here and going to help you.... But its nothing", "smashing whiteboard to get key code", "Open the door");
    
    }else if (scene.equals("check around")){
     drawEnd("You choose chair you see an escape hatch you try get get to it but you fall and the noise attracts the dog and he eats you!! GAMEOVER");
     
    }else if(scene.equals("smashing whiteboard to get key code")){
     drawEnd("You look around and stubble upon a door with a 6 digit key lock on it you go to open it but you hear rubbiling you immediately stop in your tracks and think should I open it you open it and there it is the Puppy GAME OVER YOU GET EATEN!!!");
     
     }else if(scene.equals("Open the door")){
      drawScene("If you open the door you give a sigh of reilf as its only and squirl you look around and find a key and a taser you pick both of them up","Go outside and fight this monster","Stay put and find more gear");
      
     }else if(scene.equals("Dont and keep looking around")){
      drawEnd("If you keep looking around with no weapons or gear you stubble upon a food door your starving and eat it without even thinking, as soon as you finish one burger you realize that ITS MADE OF PUPPY POOP GAME OVER!!!");
      
      }else if(scene.equals("Stay put and find more gear")){
      drawEnd("you try to find more gear but the Puppy come out fomr behind you and Eats you GAME OVER!!!!");
      
      }else if(scene.equals("Go outside and fight this monster")){
     drawScene("You go and find it you see his big teeth and daring eyes his salivia is acid you suck it up and fight him you can either use","taser","hands");
     
    }else if(scene.equals("taser")){
     drawEnd("You choose the taser, the puupy lunges at you but you somehow dodge by locking in you use the taser to stun him and grab a chair and hit him over the head you do it 4 times..... He's dead you sigh in reilf its over finally hes the puppy spits out a key you walk to the front door and you see that it takes to keys you remember that you have a key in your bag so you use it and you escape.. YOU WIN CONCRAGULATIONS!!! :)'");
   }else if(scene.equals("fists")){
      drawEnd("You lunge at him very quickly you land a perfect hit you think you did great but you look back at him and hes standing there even more mad he lundges at you and scratches you with his 9inch claws you get eaten GAME OVER!!!!");

}
    }
    
     void drawEnd (String story){
        fill(#C8CB08);
        text(story,width/2,height/2);
        text("\n(click to restart)", width/2, height/2 + 80);}
      void drawScene(String story, String option1, String option2){
       fill(#B6B71C);
       text(story, width/2,120);
       
       fill(#434305);
       rect(150,250,150,60,10);
       fill(#9B915E);
       text(option1,255,280);
       
       fill(#434305);
       rect(350,250,150,60,10);
       fill(#9B915E);
       text(option2,375,280);
      }
      void mousePressed(){
        if(scene.equals("basement")|| scene.equals("stay around")|| scene.equals("chair")|| scene.equals("Dont and keep looking around")|| scene.equals("Stay put and find more gear") || scene.equals("fists") || scene.equals("taser")){
          scene = "start";
          return;
        
    }
        boolean clickedLeft = mouseX > 150 && mouseX < 300 && mouseY > 250 && mouseY < 310;
        boolean clickedRight = mouseX > 350 && mouseX < 500 && mouseY > 250 && mouseY < 310 ;
                      if(scene.equals("start")){
                           if(clickedLeft) scene = "basement";
                           if(clickedRight) scene = "1st floor";
                     }
                        else if(scene.equals("1st floor")){
                           if(clickedLeft) scene = "whiteboard";
                           if(clickedRight) scene = "chair";
                       }
                        else if(scene.equals("whiteboard")){
                          if(clickedLeft) scene = "stay put";
                          if(clickedRight) scene = "Check around";
                        }
                        else if(scene.equals("stay put")){
                          if(clickedLeft) scene = "smashing whiteboard to get key code";
                           if(clickedLeft) scene = "Open the door";
                        }
                           else if(scene.equals("Open the door")){
                             if(clickedLeft) scene = ("Go outside and fight this monster");
                             if(clickedRight) scene = ("Stay put and find more gear");
                           }
                          else if (scene.equals("Go outside and fight this monster")){
                           if(clickedLeft) scene = ("taser");
                           if(clickedRight) scene = ("fists");
                          }
      }
       
       
   
