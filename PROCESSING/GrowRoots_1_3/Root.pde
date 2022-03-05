class Root {

  ArrayList<PVector> drawn = new ArrayList<PVector>();

  PVector target;
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector direction;


  float t;
  float radius = 1;
  float tx;
  float ty;

  int topSpeed = 3;
  int counter = 0;

  Boolean collided = false;

  Root(float x, float y, float vx, float vy) {
    noStroke();
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    direction = new PVector(vx, vy);
  }

  void update () {
    acceleration = new PVector(0, 0);
    //PVector target = new PVector(width / 2, height);
    //PVector acceleration = PVector.sub(target, location);
    PVector wiggle = new PVector(noise(tx), noise(ty));

    acceleration.add(direction);
    acceleration.setMag(1);
    acceleration.normalize();
    acceleration.mult(1);

    velocity.add(acceleration);
    velocity.limit(topSpeed);

    location.add(velocity);
    location.add(wiggle);


    tx += 0.008;
    ty += -0.05;
  }

  void display(int r, int g, int b) {
    fill(r, g, b);
    ellipse(location.x, location.y, radius, radius);
    storeDrawn();
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
  Boolean collisionDetect() {

      for (int i = drawn.size() - 1; i > 0; i--) {
        if (dist(location.x, location.y, drawn.get(i).x + radius, drawn.get(i).y + radius) < 100) {

          alterPath();
          collided = true;
        
      }
    }
    return collided;
  }

  // random path variation
  void alterPath() {
    velocity.x = velocity.x * -1;
    velocity.y = velocity.y * -1;
    //stroke(random(255), random(255), random(255));
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
      direction.x = direction.x * -1;
      println(direction.x);
    }
    if ((location.y > height) || (location.y < 0)) {
      direction.y = direction.y * -1;
      //println("in function x:", velocity.y);
    }
    println(direction.y);
  }
}
