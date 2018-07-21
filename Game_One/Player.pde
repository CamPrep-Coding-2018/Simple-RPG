

class Player{
  
PVector pos;
PVector posgrid;
boolean safe = false;
int movedelay;
boolean collide = false;
PImage image;
int playerHealth = 3;

  // Initialize

  Player(){
    
  pos = new PVector(1,1);
    

}   
  void draw(){
    
    
  
    posgrid = grid_to_screen((int)pos.x, (int)pos.y);
    fill(0);
   
      
    
    if(face == "south" || face == "naught") triangle(posgrid.x, posgrid.y + 20, posgrid.x - 20, posgrid.y - 20, posgrid.x + 20, posgrid.y - 20 );
    if(face == "north") triangle(posgrid.x, posgrid.y - 20, posgrid.x - 20, posgrid.y + 20, posgrid.x + 20, posgrid.y + 20 );
    if(face == "west")  triangle(posgrid.x - 20, posgrid.y, posgrid.x + 20, posgrid.y + 20, posgrid.x + 20, posgrid.y - 20);
    if(face == "east")  triangle(posgrid.x + 20, posgrid.y, posgrid.x - 20, posgrid.y + 20, posgrid.x - 20, posgrid.y - 20);
    
    
  
   
    

 
  // ******** M O V E M E N T ********

    if (keyPressed){
      if (!safe){
        
        
        if (key == 'w' &&  posgrid.y > 0 + 1){
          if (!collideEnemy("north")){
          pos.y -= 1;  
          face = "north";
          }
        }
        if (key == 'd' && posgrid.x < width - 1){
          if(!collideEnemy("east")){
          pos.x += 1;
          face = "east";
          }
        }
        if (key == 'a' &&  posgrid.x > 0 + 1 ){
          if (!collideEnemy("west")){
          pos.x -= 1;
          face = "west";
          }
        }
        if (key == 's' &&  posgrid.y < height - 1){
          if (!collideEnemy("south")){
          pos.y += 1;
          face = "south";
          }
        }
         
        movedelay = millis();
        movecount++;
        safe = true;
        
   }
   else if(safe && millis() >= movedelay + 500){
        
        safe = false;
      }
    }
 
  
   // ******** Dying ********
    for(Agent a : agents){
          if(pos == a.agentPosGrid){
          pos.x = 16;
          pos.y = 8;
          playerHealth --;
          
    }
  }
  }
}
