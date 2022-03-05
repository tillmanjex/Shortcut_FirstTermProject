// sketch for sphere. (Width / 2, 0) is the top central point of the sphere.
// the canvas wraps around the sphere horizontally.
  float m1;
  float scalar = frameCount * 0.01;
  float angle1 = radians(5);

ArrayList<Root> roots;

void setup() {
  size (800, 800, P2D);

  roots = new ArrayList<Root>();
  roots.add(new Root(width / 2, height / 2, 0, 0));
}
void draw() {

  Root mainRoot = roots.get(0);

  mainRoot.noEdges();
  mainRoot.update();
  mainRoot.display(noiseMod(), 0, 0);
  mainRoot.collisionDetect();
  

  

  if (mainRoot.collisionDetect()) {
    roots.add(new Root(mainRoot.location.x, mainRoot.location.y,  0, -1));
    
    for (int i = 0; i < roots.size(); i++) {

      Root subRoot = roots.get(i);

      subRoot.noEdges();
      subRoot.update();
      subRoot.display(noiseMod(), 0, 0);
      subRoot.collisionDetect();
    }
  }
  

}

int noiseMod() {


  m1 = (scalar * sin(angle1));
  
  angle1+= 0.0001;

  return int(m1);
  
}
