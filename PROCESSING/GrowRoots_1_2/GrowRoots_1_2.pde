// sketch for sphere. (Width / 2, 0) is the top central point of the sphere.
// the canvas wraps around the sphere horizontally.


ArrayList<Root> roots;

void setup() {
  size (800, 800, P2D);

  roots = new ArrayList<Root>();
  roots.add(new Root(width / 2, 0));
}
  void draw() {



    root[0].noEdges();
    root[0].update();
    root[0].display();
    root[0].collisionDetect();

    println(root[0].collisionDetect());

    for (int i = 1; i < root.length; i++) {
      if (root[0].collisionDetect() == true) {
        root[i].noEdges();
        root[i].update();
        root[i].display(root[0].location.x, root[0].location.y);
        root[i].collisionDetect();
      }
    }
  }
