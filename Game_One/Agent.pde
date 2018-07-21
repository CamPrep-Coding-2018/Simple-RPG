
class Agent {
  PVector agentPos;
  boolean agentSafe = false;
  int agentMoveDelay;
  int moveInterval = int(random(2, 5));
  int agentHealth = 5;
  int attackSafe;

  PVector agentPosGrid = new PVector(int(random(1, 32)), int(random(1, 16)));
  
//****************** COLLISION WITH PLAYER ****************
void playerCollide() {
  if(millis() >= attackSafe + 500);
    if (player.pos.x == agentPosGrid.x && (player.pos.y == agentPosGrid.y - 1 || player.pos.y == agentPosGrid.y + 1)){
      
        agentHealth--;
        attackSafe = millis();
      
    }
    else if (player.pos.y == agentPosGrid.y && (player.pos.x == agentPosGrid.x - 1 || player.pos.x == agentPosGrid.x + 1)){
      
        agentHealth--;
        attackSafe = millis();
    
   }
}
  void drawAgent() {
  
    
    
    agentPos = grid_to_screen((int)agentPosGrid.x, (int)agentPosGrid.y);
    fill(51 * agentHealth, 0, 0);
    ellipse(agentPos.x, agentPos.y, 40, 40);
  if(agentHealth > 0){
    if (movecount > 0 && movecount % moveInterval == 0 && !agentSafe) {
      float dirChance = random(1);
      if (dirChance >= .75 && !(agentPosGrid.x + 1 >= width) ) {
        agentPosGrid.x += 1;
      } 
      if ((dirChance>= 0.5 && dirChance < .75) && !(agentPosGrid.y + 1 >= height)) {
        agentPosGrid.y += 1;
      }
      if (dirChance >= .25 && dirChance < .5 && !(agentPosGrid.y - 1 <= 0 )) {
        agentPosGrid.y -= 1;
      } else if (!(agentPosGrid.x - 1 <= 0)) {
        agentPosGrid.x -= 1;
      }
      agentMoveDelay = movecount;
      agentSafe = true;
    } else if (agentMoveDelay < movecount) {
      agentSafe = false;
    }
    fill(255,255);
    textMode(CENTER);
    text(str(movecount % moveInterval), agentPos.x, agentPos.y);
  }

    
    
    
    if(keyPressed){
      if(key == ' ') playerCollide();
    }
  }
  
}
