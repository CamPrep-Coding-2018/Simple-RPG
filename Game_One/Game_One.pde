int[][] grid;
Player player;
float[] cctrl;
ArrayList<Agent> agents;
Agent testAgent;
int movecount = 0;
Animation attack_ani;
String face = "naught";

boolean w_key = false;
boolean a_key = false;
boolean s_key = false;
boolean d_key = false;
boolean space_key = false;

void setup(){
  size(1280, 720);
  frameRate(24);
  player = new Player();
  testAgent = new Agent();
  agents = new ArrayList<Agent>();
  attack_ani = new Animation("attackanimation", 28);
  for(int i = 0; i < random(15, 25); i++) {
    agents.add(new Agent()); }

}

void draw ()
{
  background(0);
  grid = new int[32][18];//number of squares x and y
    for(int i = 0; i < 64; i++){
      for(int j = 0; j < 36; j++){
        
          fill(255,255);
          rect(40*i, 40*j, 50, 50); //size of those squares has to equal 1280, 720;
 
      }
    }
         fill(0,255,0);
         rect(40, 600, 50, player.playerHealth * 30);
         textSize(20);
         text("Health", 40, 590);
  
  for (Agent a : agents) {
    a.drawAgent();

    
      player.draw();
  }
  

  

  
  
}
