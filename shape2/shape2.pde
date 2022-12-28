import geomerative.*;

RShape shp;
RShape polyshp;

RPoint[] points;

int first = 0;

String str1 = "设计:";
String str2 = "明月几时有，把酒问青天。但愿人长久，千里共婵娟";
String str3= "——《水调歌头》";

PFont myFont1;


RFont f;
RShape grp;



void setup() {
  size(900, 900);
  smooth();
  RG.init(this);

  shp = RG.loadShape("ALL.svg");
  shp = RG.centerIn(shp, g, 100);

  myFont1=createFont("楷体", 32);

  grp = RG.getText("Zhang Kai", "FreeSans.ttf", 36, CENTER);
}

void draw() {
  background(255);
  textFont(myFont1);
  text(str1, 100, 200);
  text(str2, 100, 90, 400, 250);
  text(str3, 480, 135, 400, 250);

  pushMatrix();
  // We decided the separation between the polygon points dependent of the mouseX
  float pointSeparation = map(constrain(mouseX, 100, width-100), 100, width-100, 5, 100);
  //pointSeparation=radiusu_Value;

  // We create the polygonized version
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(pointSeparation);

  polyshp = RG.polygonize(shp);

  // We move ourselves to the mouse position
  translate(width/2, height/2+90);

  // We draw the polygonized group with the SVG styles
  RG.shape(polyshp);


  float PolygonizerLength=map(mouseY, 0, height, 3, 200);
  //PolygonizerLength=radiusu_Value;
  RG.setPolygonizerLength(PolygonizerLength);
  points =shp.getPoints();


  if (points != null) {
    noFill();
    stroke(200, 200, 200);
    beginShape();
    for (int i=0; i<points.length; i++) {
      vertex(points[i].x, points[i].y);
    }
    endShape();

    fill(0);
    stroke(0);
    for (int i=0; i<points.length; i++) {
      ellipse(points[i].x, points[i].y, 5, 5);
    }
  }


  float t = map(mouseX, 0, width, 0, 1);
  RShape[] splittedGroups = shp.splitPaths(t);
  RG.shape(splittedGroups[first]);
  popMatrix();



  pushMatrix();
  noStroke();
  translate(width/2-180, height/2-250);
  fill(255, 102, 0);
  grp.children[0].rotate(PI/20, grp.children[0].getCenter());
  grp.draw();
  popMatrix();
  fill( 0);
}

void mousePressed() {
  first = (first + 1) % 2;
}
