class Gradient {
  PVector lineStart;
  PVector lineEnd;

  float gradLength = 200;


  Gradient() {

  }
  void update() {
  }

  void display(int x1, float y1, int x2, float y2) {
    PVector lineStart = new PVector(x1, y1);
    PVector lineEnd = new PVector(x2, y2);
    
    
    push();
    stroke(RGB, random(360), random(250), 100);
    strokeWeight(40);
    line(lineStart.x, lineStart.y + 200, lineEnd.x, lineEnd.y + 200);

    pop();
  }
}
