/**
 * Recursion.
 *
 * A demonstration of recursion, which means functions call themselves.
 * Notice how the drawCircle() function calls itself at the end of its block.
 * It continues to do this until the variable "level" is equal to 1.
 */

float[] modMatrix = new float[6];

// Recursive
int level;
int counter;
float m0, m1, m2, m3, m4, m5;
float fade = 0;

// Modulation Variables
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float scalar1 = 601;
float scalar2 = 743;
float scalar3 = 457;
float mod0, mod1, mod2;
float t1 = 0.005;
float t2 = 0.050;
float t3 = 0.50;

void setup() {
  size(800, 800, P2D);
  smooth(8);
  strokeWeight(8);
}

void draw() {
  modMatrix(); // calls the function into draw so the modulations work
  background(0);
  push();
  //translate(-5, -40);

  pop();


  curveSetA(25, modMatrix[0], modMatrix[1], modMatrix[2], modMatrix[3], modMatrix[4], modMatrix[5]);

  //saveFrame("out/####.tiff");
}

void curveSetA(int level, float m0, float m1, float m2, float m3, float m4, float m5) {

  push();
  translate(width / 2, height / 2);
  fill(255, 100);
  ellipse(width / 2, height / 2, 50, 50);
  ellipse(width / 4 + m0, height / 4 - m1, 50, 50);

  stroke(255, 100, 100, 20);
  fill(m0, 50, m1, 40);
  beginShape();
  curveVertex(width / 2, height / 2);
  curveVertex(width / 2, height / 2);
  curveVertex(width / 4 + m0, height / 4 - m1);
  curveVertex(width - 107, 0);
  curveVertex(107 + m4, height - 107 - m5);
  curveVertex(width * 0.75 + m2, height / 4 - m3);
  curveVertex(width / 2, height / 2);
  curveVertex(width / 2, height / 2);
  endShape();
  pop();

  if (level > 1) {

    level = level - 1;
    scale(map(m0, -601, 601, 0.8, 0.9));
    push();
    translate(width, 0);
    rotate(radians(90));
    curveSetA(level, m0, m1, m2, m3, m4, m5);
    pop();
  }
}
float[] modMatrix() {

  mod0 = sin(angle1) * scalar1;
  angle1 += 0.005;
  mod1 = sin(angle2) * scalar2 + (scalar1 * 2);
  angle2 += 0.003;
  mod2 = sin(angle3) * scalar3 + (scalar2 * 2);
  angle3 = angle2 * 5;

  modMatrix[0] = mod0;
  modMatrix[1] = mod1;
  modMatrix[2] = mod2;
  modMatrix[3] = mod0 + mod1;
  modMatrix[4] = mod1 + mod2;
  modMatrix[5] = mod2 + mod0;

  return modMatrix;
}
