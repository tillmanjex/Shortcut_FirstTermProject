class Walker {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector direction;

  float cat1;
  float t = 0;
  float radius = 1;

  int topSpeed = 1;

  Walker(float dirX, float dirY) {
    location = new PVector(width / 2, 0);
    velocity = new PVector(0, 0);
    direction = new PVector(dirX, dirY);
  }

  void update () {



    acceleration = new PVector(0, 0);

    acceleration.add(direction);
    acceleration.setMag(1);
    acceleration.normalize();
    acceleration.mult(0.05);

    velocity.add(acceleration);
    velocity.limit(topSpeed);

    location.add(velocity);
    alterPath();
    
  }

  void display() {
    ellipse(location.x, location.y, radius, radius);
  }


  void alterPath() {
    if (noise(t) < 0.2) {
      direction.add(20, 20);
      t += 0.01;
    } else if (noise(t) > 0.2 && random(1.0) < 0.4) {
      direction.add(-20, 20);
      t += 0.01;
    }
    println(noise(t));
  }

  void checkEdges() {


    if (location.x > width) {
      location.x = 0;
      radius += 5;
      rgbRand();
    } else if (location.x < 0) {
      location.x = width;
      radius += 5;
      rgbRand();
    }

    if (location.y > height) {
      location.y = 0;
      radius += 5;
      rgbRand();
    } else if (location.y < 0) {
      location.y = height;
      radius += 5;
      rgbRand();
    }
  }

  void rgbRand() {
    float r = random(255);
    float g = random(255);
    float b = random(255);
    stroke(r, g, b);
    fill( r, g, b);
  }
}
