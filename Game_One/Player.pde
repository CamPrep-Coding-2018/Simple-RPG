PVector pos;
boolean safe = false;
int movedelay;
boolean collide = false;
PImage image;

class Player{

  // Initialize

  Player() {
    pos = new PVector(60, 60);

  }
  
  void draw(){
    fill(255);
    ellipse(pos.x, pos.y, 40, 40);
  

 
  // ******** M O V E M E N T ********

    if (keyPressed){
      if (!safe){
        if (key == 'w' &&  pos.y > 0 + 40 ){
          pos.y -= 40;  
        }
        if (key == 'd' && pos.x < width - 40){
          pos.x += 40;
        }
        if (key == 'a' &&  pos.x > 0 + 40 ){
          pos.x -= 40;
        }
        if (key == 's' &&  pos.y < height - 40){
          pos.y += 40;
        } 
        movedelay = millis();
        movecount++;
        safe = true;
        
   }
   else if(safe && millis() >= movedelay + 500){
        
        safe = false;
      }
    }
  }
    
}
