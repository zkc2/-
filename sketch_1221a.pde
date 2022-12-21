float[] xLocs;
float[] yLocs;
float[] xVels;
float[] yVels;
float[] alphas;

color[] c;
float yAcce;
float gravity; 

int pCount; 
int counter;

import controlP5.*;
ControlP5 cp5;
int radiusu_Value = 30;
float speed_Value = 0.5;

boolean toggleValue = false;
ColorPicker cp;


void setup() {
  size(1200, 900, P2D);
  colorMode(HSB);
  pCount = 30;
  xLocs = new float[pCount];
  yLocs = new float[pCount];
  xVels = new float[pCount];
  yVels = new float[pCount];
  alphas = new float[pCount];
  c = new color[pCount];
  gravity = 0.5;


  for (int i=0; i<pCount; i++) {
    xLocs[i] = width / 2;
    yLocs[i] = height  /2;
    xVels[i] = random(-5, 5);
    yVels[i] = random(-5, 5);   

    c[i] = color(random(255), random(255), random(255));
    alphas[i] = 100;
  }

  cp5 = new ControlP5(this);
  // create a toggle
  cp5.addSlider("speed_Value")
    .setPosition(20, 50)
    .setRange(0.1, 2)
    .setSize(100, 15)
    ;

  cp5.addToggle("toggleValue")
    .setPosition(20, 80)
    .setSize(100, 15)
    ;


  cp = cp5.addColorPicker("picker")
    .setPosition(930, 20)
    .setColorValue(color(255, 255, 255, 255))
    ;

  cp5.addSlider("radiusu_Value")
    .setPosition(20, 20)
    .setRange(10, 90)
    .setSize(100, 15)
    ;
}

void draw() {
  fill(0, 5);
  rect(0, 0, width, height);

  xLocs[counter] = mouseX;
  yLocs[counter] = mouseY;
  xVels[counter] = random(-5, 5);           
  yVels[counter] = random(-5, 5);

  alphas[counter] = 255;

  if (frameCount % 5 ==0) {
    counter = (counter + 1) % pCount;
  }
  noFill();
  strokeWeight(6);

  for (int i=0; i<pCount; i++) {

    if (toggleValue==true) {
      xLocs[i] += xVels[i];
      yVels[i] += gravity;
      yLocs[i] += yVels[i];
    } 


    if (yLocs[i]+30 >= height) {
      yVels[i] = -yVels[i];
    } 
    if (xLocs[i]+30 > width || xLocs[i] - 30 <0) {
      xVels[i] = -xVels[i];
    }
    alphas[i] *= 0.99;


    gravity=speed_Value;
    noStroke();
    if (mousePressed==true&&mouseY>60) {
      fill(random(255), random(255), random(255));
    } else {

      fill(cp.getColorValue(), 150);
    }
    ellipse(xLocs[i], yLocs[i], radiusu_Value, radiusu_Value);
  }
}
