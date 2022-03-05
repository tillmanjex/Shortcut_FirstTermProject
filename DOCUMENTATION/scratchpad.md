    for (int i = 1; i < root.length; i++) {
      if (root[0].collisionDetect() == true) {
        root[i].noEdges();
        root[i].update();
        root[i].display(root[0].location.x, root[0].location.y);
        root[i].collisionDetect();
      }
    }