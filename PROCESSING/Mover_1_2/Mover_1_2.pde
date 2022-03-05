Mover[] movers = new Mover[300];
Target targetC;
Target targetTL;
Target targetTR;
Target targetBL;
Target targetBR;

float angle = 0;



void setup() {
  frameRate(60);
  size(800, 800, P2D);
  smooth();
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
  targetC = new Target(width / 2, height / 2);
  targetTL = new Target(200, 200);
  targetTR = new Target(width - 100, 100);
  targetBL = new Target(100, height -100);
  targetBR = new Target(width - 100, height - 100);
}

void draw() {
  background(0);


  targetC.update();
  targetC.checkEdges();
  targetC.display();



  for (int i = 0; i < movers.length; i++) {
    movers[i].update(targetC.location.x, targetC.location.y);
  movers[i].checkEdges();
    movers[i].display(targetC.location.x, targetC.location.y);

  }
}
