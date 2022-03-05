Mover[] movers = new Mover[300];
Target target;



void setup() {
  frameRate(60);
  size(800, 800, P2D);
  smooth();
  for (int i = 0; i < movers.length; i++){
  movers[i] = new Mover(); 
  }
  target = new Target();

}

void draw() {
  background(0);
  
  target.update();
  target.checkEdges();
  target.display();
  
  for (int i = 0; i < movers.length; i++){
  movers[i].update(target.location.x, target.location.y);
  movers[i].checkEdges();
  movers[i].display(target.location.x, target.location.y); 
  }
}
