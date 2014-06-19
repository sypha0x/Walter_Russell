//Sphere Psphere[] = new Sphere[4];
Sphere[] Psphere = new Sphere[] { 
new Sphere(1,2), new Sphere(16,4), 
new Sphere(32,6), new Sphere(64,8)
};

void setup() {
  size(500, 500);
  
  textSize(14);
  smooth();
  strokeWeight(1);
  stroke(255);
  noFill();
/*
  Psphere[0] = new Sphere(1, 2);
  Psphere[1] = new Sphere(16, 4);
  Psphere[2] = new Sphere(32, 6);
  Psphere[3] = new Sphere(64, 8);
  */
  /*
  for(int i=0; i<=width; i+=(int)(width/16)){
    println(i); }
  */
  println(Psphere.length);
  //println("::p ", 2*(width/16));
  //println("::n ", -2*(width/16));
}

void draw() {
  background(0);
  
  for(int i=0; i < Psphere.length; i++){
    Psphere[i].display();
  }

  /*pushStyle();
  fill(250);
  text("radius: "+r, 20, height-20);
  popStyle();
  */
  //saveFrame("tmp/####.png");
}

class Sphere {
  int r; //radius
  int speed;
  
  Sphere (int rad, int tspeed){
    r=rad;
    speed=tspeed;
  }
  
  void display(){
  pushMatrix();
  translate(height/2, width/2);
  pushStyle();
  strokeWeight(1);
  ellipse(0, 0, height, width);
  popStyle();
  
  r=(r<width)?r+speed:r*-1;
  
  for(int i=0, x=18; i<=17; i++, x--){
    if (r<=i*(width/16) && r>=-i*(width/16)){
    strokeWeight(x);
    break; }
  }
  
  ellipse(0, 0, r, r);
  popMatrix();
  }
}
