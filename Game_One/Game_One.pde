int[][] grid;
Player player;
float[] cctrl;
ArrayList<Agent> agents;
Agent testAgent;

int movecount = 0;

void setup(){
  size(1280, 720);
  player = new Player();
  testAgent = new Agent();
  pickColor();
  agents = new ArrayList<Agent>();
  for(int i = 0; i < random(1, 10); i++) {
    agents.add(new Agent()); }
    noStroke();
}

void draw ()
{
  background(0);
  grid = new int[32][18];//number of squares x and y
    for(int i = 0; i < 64; i++){
      for(int j = 0; j < 36; j++){
        
          fill(cctrl[0],cctrl[1],cctrl[2],cctrl[3]);
          rect(40*i, 40*j, 50, 50); //size of those squares has to equal 1280, 720;
          
          
        
      }
    }
  player.draw();
  
  for (Agent a : agents) {
    a.drawAgent();
  }
  

  testAgent.setupAgent();
  testAgent.drawAgent();

  
  
}
