 boolean collideEnemy(String direction){

 if (direction == "south"){
   for(Agent a : agents) {
        if((a.agentPosGrid.x == player.pos.x && a.agentPosGrid.y == player.pos.y + 1)){
          return true;
     } 
   }
   }if (direction == "north"){ 
      for (Agent a : agents){ 
        if((a.agentPosGrid.x == player.pos.x && a.agentPosGrid.y == player.pos.y - 1)){
          return true;
      }
    }
   }
   if (direction == "east") {      
     for (Agent a : agents){ 
        if((a.agentPosGrid.y == player.pos.y && a.agentPosGrid.x == player.pos.x + 1)){
          return true;
      }
    }
   } if (direction == "west"){
      for (Agent a : agents){ 
        if((a.agentPosGrid.y == player.pos.y && a.agentPosGrid.x == player.pos.x -1)){
          return true;
      }
    }
   }
 
   return false;
 }
