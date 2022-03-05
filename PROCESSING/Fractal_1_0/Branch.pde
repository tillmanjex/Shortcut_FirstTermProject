class Branch {
  PVector begin;
  PVector end;
  PVector newEnd;
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

  Branch branchA() {
    dir = PVector.sub(end, begin);
    push();
    dir.rotate(PI / 4);
    pop();
    newEnd = PVector.add(end, dir);

    Branch b =  new Branch(end, newEnd);
    return b;
  }
}
