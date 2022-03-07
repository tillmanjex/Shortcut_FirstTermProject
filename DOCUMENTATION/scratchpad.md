    for (int i = 1; i < root.length; i++) {
      if (root[0].collisionDetect() == true) {
        root[i].noEdges();
        root[i].update();
        root[i].display(root[0].location.x, root[0].location.y);
        root[i].collisionDetect();
      }
    }

    Still To Do:

    - basement videos
    -     - add ui for teleportation
    - add music
    - fix up footsteps sound


  -  No wind sound in basement
  -  make sure to collect my own scripting for documentation


    - change footsteps sound for basement
    - 
    - change color scheme of recursive sketch
    
