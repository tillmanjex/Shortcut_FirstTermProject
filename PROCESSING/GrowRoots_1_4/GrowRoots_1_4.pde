// sketch for sphere. (Width / 2, 0) is the top central point of the sphere.
// the canvas wraps around the sphere horizontally.

float subRootXdir = random(-20, 20);
float subRootYdir = -1;

ArrayList<Root> roots;

void setup() {
  size (800, 800, P2D);

  roots = new ArrayList<Root>();
  roots.add(new Root(width / 2, width / 2, -1, 1));
}
void draw() {

  Root mainRoot = roots.get(0);

  mainRoot.noEdges();
  mainRoot.update();
  mainRoot.display();
  mainRoot.collisionDetect();




  if (mainRoot.collisionDetect()) {
    roots.add(new Root(mainRoot.location.x, mainRoot.location.y, subRootXdir, subRootYdir));
    for (int i = 0; i < roots.size(); i++) {
      Root subRoot = roots.get(i);
      subRoot.noEdges();
      subRoot.update();
      subRoot.display();
      subRoot.collisionDetect();
        if (roots.size() >= 1000){ // limits the amount of roots to be drawn
          roots.remove(i);
        }
    }
  }


  //saveFrame("out3/#####.png");
}
