PVector rootBott;
PVector rootEnd;

Branch[] tree = new Branch[2];

Branch root;
Branch newBranch;


void setup() {
  size (800, 800, P2D);


  PVector rootBott = new PVector(width / 2, height);
  PVector rootTop = new PVector(width / 2, height - 100);
  root = new Branch(rootBott, rootTop);
  tree[0] = root;
  
  newBranch = root.branchA();
  tree[1] = newBranch;
  
}

void draw() {
  background(255);
  for (int i = 0; i < tree.length; i++){
  tree[i].display();
  }
  
}
