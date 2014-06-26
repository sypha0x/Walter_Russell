//Sphere Psphere[] = new Sphere[4];
Sphere[] Psphere = new Sphere[] { 
  new Sphere(1, 2), new Sphere(16, 4), 
  new Sphere(32, 6), new Sphere(64, 8)
  };

void setup() {
    size(500, 500);

    smooth();
    strokeWeight(1);
    stroke(255);
    noFill();
  }

void draw() {
  background(0);

  for (int i=0; i < Psphere.length; i++) {
    Psphere[i].display();
  }

  //saveFrame("tmp/####.png");
}

class Sphere {
  int r; //radius
  int speed;

  Sphere (int rad, int tspeed) {
    r=rad;
    speed=tspeed;
  }

  void display() {
    pushMatrix();
    translate(height/2, width/2); //yscr, xscr
    pushStyle();
    strokeWeight(1);
    ellipse(0, 0, height, width); //ypos, xpos
    popStyle();

    r=(r<width)?r+speed:r*-1; //xpos

    for (int i=0, x=18; i<=17; i++, x--) {
      //xpos
      if (r<=i*(width/16) && r>=-i*(width/16)) {
        strokeWeight(x);
        break;
      }
    }

    ellipse(0, 0, r, r);
    popMatrix();
  }
}
