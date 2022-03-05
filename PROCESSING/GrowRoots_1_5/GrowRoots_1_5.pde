// sketch for sphere. (Width / 2, 0) is the top central point of the sphere.
// the canvas wraps around the sphere horizontally.

PVector nothing = new PVector(0, 0);

// Controls the spread of subsequent roots of main root
float subRootXdir = random(-10, 1);
float subRootYdir = random(-10, 0);

float rot = 1;

ArrayList<Root> roots;

void setup() {
  size (800, 800, P2D);
  frameRate(90);
  background(0);

  roots = new ArrayList<Root>();
  roots.add(new Root(width / 2, 0, 0, 1));
  

}
void draw() {
  
  Root mainRoot = roots.get(0);

  mainRoot.noEdges();
  mainRoot.update();
  mainRoot.display();
  mainRoot.collisionDetect();



  // if a collision is detected relative to mainRoot, do this:
  if (mainRoot.collisionDetect()) {
 
      
      roots.add(new Root(mainRoot.location.x, mainRoot.location.y, subRootXdir, subRootYdir));
      for (int i = 0; i < roots.size(); i++) {
        
        Root subRoot = roots.get(i);
        
        subRoot.noEdges();
        subRoot.update();
        subRoot.display();
        subRoot.collisionDetect();
        if (roots.size() >= 500) { // limits the amount of roots to be drawn
         roots.remove(i);
        } 
        

    }
  }


  saveFrame("out/#####.tiff");
}
