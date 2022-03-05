Mover[] movers = new Mover[100];
Target target;



void setup() {
  frameRate(30);
  size(800,800);
  smooth();
  for (int i = 0; i < movers.length; i++){
  movers[i] = new Mover(); 
  }
  target = new Target();

}

void draw() {
  background(255);
  
  target.update();
  target.checkEdges();
  target.display();
  
  for (int i = 0; i < movers.length; i++){
  movers[i].update(target.location.x, target.location.y);
  movers[i].checkEdges();
  movers[i].display(); 
  }
}
