class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector perlinVec;
  PVector mouse;
  PVector dir;
  float topSpeed = 10;
  float anything = 20;
  

  Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(-0.01, 0.07);
    mouse = new PVector(mouseX, mouseY);
    dir = PVector.sub(mouse, location);
    topSpeed = 10;
  }

  void update (float tx, float ty) {

    PVector mouse = new PVector(tx, ty);
    PVector acceleration = PVector.sub(mouse,location);
    // Set magnitude of acceleration
    acceleration.setMag(5);
    acceleration.normalize();
    acceleration.mult(0.2);
    
    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topSpeed);
    // Location changes by velocity
    location.add(velocity);

  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, 48, 48);
  }


  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
