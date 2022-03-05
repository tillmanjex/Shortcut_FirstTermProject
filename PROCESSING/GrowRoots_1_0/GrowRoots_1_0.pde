// sketch for sphere. (Width / 2, 0) is the top central point of the sphere.
// the canvas wraps around the sphere horizontally. 

Walker[] walker = new Walker[5];

void setup(){
  size (800, 800);
 
 for (int i = 0; i < walker.length; i++){
  walker[i] = new Walker(random(400), random(400));
 }
}

void draw(){
  
  for (int i = 0; i < walker.length; i++){
  walker[i].update();
  walker[i].display();
  walker[i].checkEdges();
  }
  
  saveFrame("out/frame####.png");

}
