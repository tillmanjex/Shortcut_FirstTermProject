class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector perlinVec;
  PVector mouse;
  PVector sizeMod;
  float topSpeed = 10;
  float anything = 20;


  Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
  
    sizeMod = new PVector(-0.01, 0.07);
    topSpeed = 10;
  }

  void update (float tx, float ty) {

    PVector target = new PVector(tx, ty);
    PVector acceleration = PVector.sub(target, location);
    


    // Set magnitude of acceleration
    acceleration.setMag(1);
    acceleration.normalize();
    acceleration.mult(0.2);

    // Velocity changes according to acceleration
    velocity.add(acceleration);

    // Limit the velocity by topspeed
    velocity.limit(topSpeed);

    // Location changes by velocity
    location.add(velocity);
  }

  void display(float tx, float ty) {
    PVector target = new PVector(tx, ty);
    PVector sizeMod = PVector.sub(target, location);
    sizeMod.mult(0.5);
    
    stroke(0);
    strokeWeight(0);
    fill(255);
    ellipse(location.x, location.y, sizeMod.x, sizeMod.y);
    fill(0, 0, 0);
    ellipse(location.x, location.y, sizeMod.y, sizeMod.x);
    println(sizeMod);
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
