class Branch {
  PVector begin;
  PVector end;
  PVector newEndR;
  PVector newEndL;
  PVector right;
  PVector dir;



  Branch(PVector begin, PVector end) {
    this.begin = begin;
    this.end = end;
  }

  void display() {
    stroke(0);
    line(begin.x, begin.y, end.x, end.y);
  }

PVector[] brancheA() {
    dir = PVector.sub(end, begin);
    push();
    dir.rotate(PI / 4);
    pop();
    newEndR = PVector.add(end, dir);
    //Branch br =  new Branch(end, newEndR);

    push();
    dir.rotate(-PI / 4);
    pop();
    newEndL = PVector.add(end, dir);
    //Branch bl = new Branch(end, newEndL);

    PVector[] branches = new PVector[3]; 
    branches[0] = end;
    branches[1] = newEndL;
    branches[2] = newEndR;
    
      return branches;
  }
}
