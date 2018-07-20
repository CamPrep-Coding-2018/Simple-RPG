float moveInterval;
PVector agentpos;
boolean agentSafe = false;
int agentMoveDelay;


class Agent{
  int moveInterval = int(random(2,4));
  PVector agentpos = new PVector(40 * int(random(1,32)) - 20,  40 * int(random(1,16)) - 20);
  
  void setupAgent(){
 
  
  
}
void drawAgent(){
  if (movecount > 0 && movecount % moveInterval == 0 && !agentSafe){
    float dirChance = random(1);
    if (dirChance >= .75){
    agentpos.x += 40;
    }else if (dirChance>= 0.5 && dirChance < .75){
    agentpos.y += 40;
    }if (dirChance >= .25 && dirChance < .5){
    agentpos.y -= 40;
    }else{
    agentpos.x -= 40;
    }
    agentMoveDelay = movecount;
    agentSafe = true;
  } else if(agentMoveDelay < movecount){
    agentSafe = false;
  }
  
  
  ellipse(agentpos.x, agentpos.y, 40, 40);
  
  
}
}
