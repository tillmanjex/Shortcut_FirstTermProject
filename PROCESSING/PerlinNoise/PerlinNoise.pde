float tx = 0;
float ty = 500;

void setup() {
size(400,400);
smooth(8);
}

void draw (){
 float n = noise(tx); // variable accesses the noise value at a given point in time
 float m = noise(ty);
 tx += 0.01;
 ty += 0.01;
 float randN = map(n, 0.0, 1.0, 0, 400);
 float randM = map(m, 0.0, 1.0, 0, 400);
 
 
 ellipse(randN, randM, 50, 50);
}
