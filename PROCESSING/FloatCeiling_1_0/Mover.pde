class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector perlinVec;
  PVector mouse;
  PVector sizeMod;
  float topSpeed = 10;
  float anything = 20;
  float throw1;
  float lifespan;
  float z1;
  float zScalar = 70;
  float angle1 = 0;


  Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    sizeMod = new PVector(-0.01, 0.07);
    topSpeed = 10;
    lifespan = 253.0;
  }

  void update (float tx, float ty, int zScalar) {

    PVector target = new PVector(tx, ty);
    PVector acceleration = PVector.sub(target, location);

    acceleration.setMag(1);
    acceleration.normalize();
    acceleration.mult(0.1);

    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);

    lifespan -= 2.0;

    z1 = (zScalar * sin(radians(angle1)));
    angle1++;
  }

  void display(float tx, float ty) {
    PVector target = new PVector(tx, ty);
    PVector sizeMod = PVector.sub(target, location);
    sizeMod.mult(0.5);

    float throw1 = map(sizeMod.y, -80, 80, 0, 150);
    float throw2 = map(sizeMod.x, -80, 80, 0, 150);


    noStroke();
    //stroke(255);
    strokeWeight(1);
    //noFill();
    fill(throw1, 0, throw2);

    push();
    translate(location.x, location.y, z1);
    sphere(z1);
    //ellipse(width / 2, height / 2, location.x, location.y);
    pop();
    

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
