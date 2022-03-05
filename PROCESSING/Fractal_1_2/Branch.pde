class Branch {
  PVector begin;
  PVector end;
  PVector newEnd;
  PVector dir;



  Branch(PVector begin, PVector end) {
    this.begin = begin;
    this.end = end;
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    line(begin.x, begin.y, end.x, end.y);
  }

  Branch branch(float angle) {
    dir = PVector.sub(end, begin);
    dir.mult(0.67);
    push();
    dir.rotate(angle);
    pop();
    newEnd = PVector.add(end, dir);
    Branch b = new Branch(end, newEnd);

    return b;
  }
  



}
