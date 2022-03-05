// sketch for sphere. (Width / 2, 0) is the top central point of the sphere.
// the canvas wraps around the sphere horizontally.

// int nObjects = 1;
Root[] root = new Root[1];


void setup() {
  size (800, 800);

  for (int i = 0; i < root.length; i++) {
    root[i] = new Root(random(-200, 200), random(-200, 200));
  }
}

void draw() {

  for (int i = 0; i < root.length; i++) {
    root[i].update();
    root[i].display();
    root[i].noEdges();
    root[i].collisionDetect();
    
  }

 

//println(root[0].location.x, root[0].storeDrawn());

  // saveFrame("out/frame####.png");
}
