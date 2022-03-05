class Target {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector perlinVec;
  PVector mouse;
  PVector dir;
  float topSpeed = 10;
  float anything = 20;


  Target(int x, int y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    //acceleration = new PVector(-0.01, 0.0001);
    topSpeed = 10;
  }

  void update () {

    // Set magnitude of acceleration
    //acceleration.setMag(0.2);
    acceleration = PVector.random2D();
    acceleration.normalize();
    acceleration.mult(0.2);

    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topSpeed);
    // Location changes by velocity
    //location.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(255, 0, 0);
    ellipse(location.x, location.y, 48, 48);
    

  }


  void checkEdges() {

    if (location.x > width || location.x < 0) {
      velocity.x = velocity.x * -1;
    }

    if (location.y > height || location.y < 0) {
      velocity.y = velocity.y * -1;
    }
  }
}
