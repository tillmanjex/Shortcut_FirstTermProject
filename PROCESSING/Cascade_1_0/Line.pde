class Line {

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector target;

  float topSpeed;
  float fade;
  float lifeSpan = 255;


  Line () {
    location = new PVector(0, 0);
    velocity = new PVector(0, 0);
    topSpeed = 20;
  }

  void update(int topSpeed) {
    PVector target = new PVector(0, height / 2);
    PVector acceleration = PVector.sub(target, location);

    acceleration.setMag(1);
    acceleration.normalize();
    acceleration.mult(0.1);

    velocity.add(acceleration);
    velocity.limit(topSpeed);
    location.add(velocity);
    
    lifeSpan -= 2;

  }

  void display() {
    //stroke(100, lifeSpan);
    strokeWeight(4);
    line(0, location.y, width, location.y);
    
  }
  
  void collide(float y){
  if (location.y >= y - 1 && location.y <= y + 1){
    ellipse(random(width), random(height), 50, 50);
  }
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
