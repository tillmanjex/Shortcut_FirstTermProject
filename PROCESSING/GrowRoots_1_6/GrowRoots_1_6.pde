// sketch for sphere. (Width / 2, 0) is the top central point of the sphere.
// the canvas wraps around the sphere horizontally.

// Variables
float alpha = 0;
float alphaMin = 40;
float alphaMax = 170;

float size = 0;
float sizeMin = 1; 
float sizeMax = 5;

// Controls the spread of subsequent roots of main root
float subRootXdir = random(-10, 1);
float subRootYdir = random(-10, 0);

// Modulators
float angle = 0;
float modScalar = 1;

ArrayList<Root> roots;

void setup() {
  size (900, 900, P2D);
  frameRate(30);
  background(0);


  roots = new ArrayList<Root>();
  roots.add(new Root(width / 2, 0, 0, 1));
}
void draw() {

  size = map(alpha, alphaMin, alphaMax, sizeMin, sizeMax);
  Root mainRoot = roots.get(0);

  mainRoot.noEdges();
  mainRoot.update();
  mainRoot.display(alpha, size);
  mainRoot.collisionDetect();



  // if a collision is detected relative to mainRoot, do this:
      float mod = (sin(angle) * modScalar);
      alpha = map(mod, -1.0, 1.0, alphaMin, alphaMax);
      size = map(alpha, alphaMin, alphaMax, sizeMin, sizeMax);
      //println(roots.size(), alpha);
      angle+= 0.01;


  roots.add(new Root(mainRoot.location.x, mainRoot.location.y, subRootXdir, subRootYdir));
  for (int i = 0; i < roots.size(); i++) {

    Root subRoot = roots.get(i);

    subRoot.noEdges();
    subRoot.update();
    subRoot.display(alpha, size);
    subRoot.collisionDetect();
    if (roots.size() >= 500) { // limits the amount of roots to be drawn
      roots.remove(i);
  
    }
    
  }



  // saveFrame("out1/#####.tiff");
}
