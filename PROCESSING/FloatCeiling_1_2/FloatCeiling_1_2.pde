Mover[] movers = new Mover[30];
Target targetC;
Target targetTL;
Target targetTR;
Target targetBL;
Target targetBR;

float angle = 0;



void setup() {
  frameRate(60);
  size(3000, 1000, P3D);
  camera(width/2.0, height/2.0, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover();
  }
  targetC = new Target(width / 2, height / 2);
}

void draw() {
  background(0);

  //targetC.display();
 
  for (int i = 0; i < movers.length; i++) {
    movers[i].update(targetC.location.x, targetC.location.y, i + 40);
    movers[i].checkEdges();
    movers[i].display(targetC.location.x, targetC.location.y);
  }
  

  //saveFrame("out/frame#####.png");
}
