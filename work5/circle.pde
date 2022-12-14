class Circle {
  PVector pos;//PVector(x, y);
  float d;
  PVector speed;
  color pColor;


  Circle(PVector p, float d_) {
    pos = p;
    d = d_;
    speed = PVector.random2D().mult(random(0.05));
    pColor = color(255);
  }

  void display() {
    fill(pColor);
    ellipse(pos.x, pos.y, d, d);
    PVector nS = speed;
    nS.normalize().mult(speed.mag()*5);
    //PVector arrowHead = PVector.add(pos, nS);
    //stroke(100);
    //line(pos.x, pos.y, arrowHead.x, arrowHead.y);
  }


  void move() {
    speed.limit(2);
    pos.add(speed);
  }

  void edgeProcess() {//edgeCollision(){}
    if (pos.x >= width - d/2) {
      pos.x = width - d/2;
      speed.x *= -1;
    }
    if (pos.x <= d/2) {
      pos.x = d/2;
      speed.x *= -1;
    }

    if (pos.y >= height - d/2) {
      pos.y = height - d/2;
      speed.y *= -1;
    }
    if (pos.y <= d/2) {
      pos.y = d/2;
      speed.y *= -1;
    }
  }

  void collision() {
    for (int i = 0; i < circles.size(); i ++) {
      if (circles.get(i) != this) {
        float dDist = dist(pos.x, pos.y, circles.get(i).pos.x, circles.get(i).pos.y);
        if (dDist <= d/2 + circles.get(i).d/2) {
          PVector a = PVector.sub(pos, circles.get(i).pos);
          a.normalize();//mult();
          speed.add(a);
        }
      }
    }
  }
}
