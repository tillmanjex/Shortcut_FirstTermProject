

PVector rootBott;
PVector rootEnd;

Branch[] tree = new Branch[4];

Branch root;
Branch branchL;
Branch branchR;


void setup() {
  size (800, 800, P2D);

  PVector rootBott = new PVector(width / 2, height);
  PVector rootTop = new PVector(width / 2, height - 100);
  root = new Branch(rootBott, rootTop);
  tree[0] = root;
  branchL = root.branch(-PI / 4);
  branchR = root.branch(PI / 4);

tree[1] = branchL;
tree[2] = branchR;
  
}



void draw() {
  background(255);

    for(int i = 0; i < tree.length; i++){
    tree[i].display();
  }

  
}
