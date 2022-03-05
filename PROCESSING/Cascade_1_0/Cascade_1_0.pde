
int gradLength = 400;

Line[] line = new Line[20];
Gradient[] gradient = new Gradient[20];
Gradient[] gradient1 = new Gradient[20];




void setup () {
  size ( 800, 800, P2D);
  colorMode(HSB);
  smooth();



  for (int i = 0; i < line.length; i++) {
    line[i] = new Line();
    gradient[i] = new Gradient();
    gradient1[i] = new Gradient();
  }
}
void draw () {
  //background(255);

  for (int i = 0; i < line.length; i++) {
    line[i].update(2 + i);
    line[i].display();
    line[i].checkEdges();
    gradient[i].display(0, line[i].location.y + 10, width, line[i].location.y + 10);
    gradient1[i].display(0, line[i].location.y + 20, width, line[i].location.y + 20);
  }




}
