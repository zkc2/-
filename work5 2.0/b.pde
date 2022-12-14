PImage img;
float bright;
ArrayList<Circle> circles;
float d;
void setup() {
  size(600, 818);
  background(255);
  img = loadImage("portrait02.png");
  img.resize(width, height);
  circles = new ArrayList<Circle>();

  for (int j=0; j<height; j+=8) {
    for (int i=0; i<width; i+=8) {

      int loc = i + j*img.width;
      float bright=brightness(img.pixels[loc]);
      if ((bright<150)&&(bright>120)) {
        fill(255);
        d=2;
      }
      if ((bright<120)&&(bright>90)) {
        fill(255);
        d=3;
      }
      if ((bright<90)&&(bright>60)) {
        fill(255);
        d=4;
      }
      if ((bright<60)&&(bright>30)) {
        fill(255);
        d=5;
      }
      if ((bright<30)&&(bright>0)) {
        fill(255);
        d=6;
      }
      ellipse(i, j, d, d);
      PVector pp = new PVector(i, j);
      Circle p = new Circle(pp, d);
      circles.add(p);
    }
  }
}




void draw() {
  background(255);
  stroke(100);
  move();
}



void move() {

  for (int i = 0; i <circles.size(); i ++) {
    circles.get(i).move();
    circles.get(i).edgeProcess();
    circles.get(i).collision();
    circles.get(i).display();
  }
}


void initiate() {

  circles = new ArrayList<Circle>();

  for (int j=0; j<height; j+=8) {
    for (int i=0; i<width; i+=8) {

      int loc = i + j*img.width;
      float bright=brightness(img.pixels[loc]);
      if ((bright<150)&&(bright>120)) {
        fill(255);
        d=2;
      }
      if ((bright<120)&&(bright>90)) {
        fill(255);
        d=3;
      }
      if ((bright<90)&&(bright>60)) {
        fill(255);
        d=4;
      }
      if ((bright<60)&&(bright>30)) {
        fill(255);
        d=5;
      }
      if ((bright<30)&&(bright>0)) {
        fill(255);
        d=6;
      }
      ellipse(i, j, d, d);
      PVector pp = new PVector(i, j);
      Circle p = new Circle(pp, d);
      circles.add(p);
    }
  }
}


void keyPressed() {
  if (key == 'r') {
    initiate();
  }
}
