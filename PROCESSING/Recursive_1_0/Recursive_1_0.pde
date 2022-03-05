/**
 * Recursion.
 *
 * A demonstration of recursion, which means functions call themselves.
 * Notice how the drawCircle() function calls itself at the end of its block.
 * It continues to do this until the variable "level" is equal to 1.
 */

float[] modMatrix = new float[4];
// Recursive
int level;
int counter;
float x1, y1, x2, y2;
float fade = 0;

float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float scalar1 = 300;
float scalar2 = 80;
float scalar3 = 40;
float mod1;
float mod2;
float mod3;

void setup() {
  size(800, 800, P2D);
  smooth(8);
  strokeWeight(8);
}

void draw() {
 modMatrix(); // calls the function into draw so the modulations work
  background(0);
  push();
  translate(-5, -40);
  fill(255, 10);
  ellipse(width / 2, height / 2, 150, 150);
  pop();

  
  curveSetA(25, modMatrix[0], modMatrix[1], modMatrix[3], modMatrix[2]);
  
  //saveFrame("out/####.tiff");
}

void curveSetA(int level, float x1, float y1, float x2, float y2) {

  push();
  translate(width / 2, height / 2);
  stroke(255, 100, 100, 20);
  fill(modMatrix[0], 50, modMatrix[1], 40);
  beginShape();
  curveVertex(width / 2, height / 2);
  curveVertex(width / 2, height / 2);
  curveVertex(width / 4 + x1, height / 4 / y1);
  curveVertex(width - 100, 0);
  curveVertex(100, height -100);
  curveVertex(width * 0.75 * x2, height / 4 + y2);
  curveVertex(width / 2, height / 2);
  curveVertex(width / 2, height / 2);
  endShape();
  pop();

  if (level > 1) {

    level = level - 1;
    push();
    scale(0.9);
    translate(width, 0);
    rotate(radians(90));
    curveSetA(level, x1, y1, x2, y2);

    pop();
  }
}
float[] modMatrix() {

  mod1 = sin(angle1) * scalar1;
  angle1 += 0.005;
  mod2 = sin(angle2) * scalar2 + (scalar1 * 2);
  angle2 += 0.003;
  mod3 = sin(angle3) * scalar3 + (scalar2 * 2);
  angle3 = angle2 * 5;
  
  modMatrix[0] = mod1;
  modMatrix[1] = mod2;
  modMatrix[2] = mod3;

  return modMatrix;
}
