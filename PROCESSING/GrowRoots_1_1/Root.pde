class Root {

  ArrayList<PVector> drawn = new ArrayList<PVector>();

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector direction;

  float cat1;
  float t = 0;
  float radius = 1;

  int topSpeed = 1;
  int counter = 0;

  Root(float dirX, float dirY) {
    location = new PVector(width / 2, height / 2);
    velocity = new PVector(0, 0);
    direction = new PVector(dirX, dirY);
  }

  void update () {

    acceleration = new PVector(0, 0);

    acceleration.add(direction);
    acceleration.setMag(1);
    acceleration.normalize();
    acceleration.mult(1);

    velocity.add(acceleration);
    velocity.limit(topSpeed);

    location.add(velocity);
  }

  void display() {
    ellipse(location.x, location.y, radius, radius);
    storeDrawn();
    //println(location.x, location.y, storeDrawn());
    //println("display x:", velocity.x);
    //println("display y:", velocity.y);
  }


  // store the current xy pos as a pvector and move onto next cell in arraylist
  PVector storeDrawn() {
    PVector v = new PVector(0, 0);
    drawn.add( new PVector(location.x, location.y));
    for (int i = 0; i < drawn.size(); i++) {
      v = drawn.get(i);
    }

    return v;
  }

  // check if current xy pos will collide with any previous xy pos
  void collisionDetect() {
    
      for (int i = 0; i < drawn.size(); i++) {
        if (dist(location.x, location.y, drawn.get(i).x, drawn.get(i).y) == 0) {
          
          //alterPath();
          println("collision detected");
        } // wrong, need to test this against all values in array simultaenously. Not iteratively.
      }
    
  }

  // random path variation
  void alterPath() {

    velocity.add(random(-200, 200), random(-200, 200));
    
  }




// teleport to other edge on canvas edge collision
void noEdges() {
  if (location.x > width) {
    location.x = 0;
  } else if (location.x < 0) {
    location.x = width;
    //radius += 5;
  }

  if (location.y > height) {
    location.y = 0;
  } else if (location.y < 0) {
    location.y = height;
  }
}

void growInsidePot() {
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
    //println("in function x:", velocity.x);
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
    //println("in function x:", velocity.y);
  }
}
}
