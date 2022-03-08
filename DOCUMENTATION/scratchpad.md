    for (int i = 1; i < root.length; i++) {
      if (root[0].collisionDetect() == true) {
        root[i].noEdges();
        root[i].update();
        root[i].display(root[0].location.x, root[0].location.y);
        root[i].collisionDetect();
      }
    }

    Still To Do:


  - add ui for teleportation
  - record video
  - prepare documentation
  - redo recursive sketch
  -     - change footsteps sound for basement


  -  make sure to collect my own scripting for documentation

asset dependencies for exported package
xr interaction toolkit
input manager
terrain tools
unity ui
input system
xr core utilities

coding game: https://www.youtube.com/watch?v=kb5SsFWZAto

