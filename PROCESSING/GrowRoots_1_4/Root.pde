class Root {

  ArrayList<PVector> drawn = new ArrayList<PVector>();

  PVector target;
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector direction;
  PVector wiggle;
  PVector colorMod;



  float t;
  float radius = 1;
  float tx;
  float ty;
  float tz;
  float ta;

  int topSpeed = 1;
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
    tz += 0.03; // used in display()
    ta += 0.001; // used in display()
  }

  void display() {
    PVector colorMod = new PVector(noise(tx), noise(ty), noise(tz));
    float r = map(colorMod.x, 0.0, 1.0, 0, 255);
    float g = map(colorMod.y, 0.0, 1.0, 0, 255);
    float b = map(colorMod.z, 0.0, 1.0, 0, 255);
    float a = map(noise(ta), 0.0, 1.0, 100, 255);
    fill(r, g, b, a);
    ellipse(location.x, location.y, radius, radius);
    storeDrawn();
    println(storeDrawn());
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
  }

  void sphereRap() {
    if (location.x > width / 2) {
      location.x = 0;
    } else if (location.x < width / 2) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
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
      //println(direction.x);
    }
    if ((location.y > height) || (location.y < 0)) {
      direction.y = direction.y * -1;
      //println("in function x:", velocity.y);
    }
    println(direction.y);
  }
}
