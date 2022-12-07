PImage photo1;
PImage photo2;
PImage photo3;
PImage photo4;
PImage photo5;
PImage photo6;
PImage photo7;
PImage photo8;
int x=0;

PGraphics pg;
void setup() {
  size(800, 800);
  photo1 = loadImage("1.png");
  photo1.resize(500, 500);
  photo2 = loadImage("2.png");
  photo2.resize(500, 500);
  photo3 = loadImage("3.png");
  photo3.resize(500, 500);
  photo4 = loadImage("4.png");
  photo4.resize(500, 500);
  photo5 = loadImage("5.png");
  photo5.resize(500, 500);
  photo6 = loadImage("6.png");
  photo6.resize(500, 500);
  photo7 = loadImage("7.png");
  photo7.resize(500, 500);
  photo8 = loadImage("8.png");
  photo8.resize(500, 500);
}

void draw() {
  imageMode(CENTER);
  //image( photo1, width/2, height/2, 500, 500);
  background(255);
  for (int i=0; i<140; i++) {
    copy(photo1, i*16, 0, 2, height, i*16+150, 0+150, 2, height);
    stroke(255);
    noFill();
  }
  for (int i=0; i<140; i++) {
    copy(photo2, i*16-2, 0, 2, height, i*16+150-2, 0+150, 2, height);
    stroke(255);
    noFill();
  }
  for (int i=0; i<140; i++) {
    copy(photo3, i*16-4, 0, 2, height, i*16+150-4, 0+150, 2, height);
    stroke(255);
    noFill();
  }
  for (int i=0; i<140; i++) {
    copy(photo4, i*16-6, 0, 2, height, i*16+150-6, 0+150, 2, height);
    stroke(255);
    noFill();
  }

  for (int i=0; i<140; i++) {
    copy(photo5, i*16-8, 0, 2, height, i*16+150-8, 0+150, 2, height);
    stroke(255);
    noFill();
  }
  for (int i=0; i<140; i++) {
    copy(photo6, i*16-10, 0, 2, height, i*16+150-10, 0+150, 2, height);
    stroke(255);
    noFill();
  }
  for (int i=0; i<140; i++) {
    copy(photo7, i*16-12, 0, 2, height, i*16+150-12, 0+150, 2, height);
    stroke(255);
    noFill();
  }
  for (int i=0; i<140; i++) {
    copy(photo8, i*16-14, 0, 2, height, i*16+150-14, 0+150, 2, height);
    stroke(255);
    noFill();
  }




  x=x+1;
  for (int i=-200; i<200; i++) {
    fill(0, 0, 0);
    noStroke();
    rect(i*16+mouseX, 0, 14, height);
  }
}
