void setup() {
  size(640, 640);
}

void draw(){
  strokeWeight(5);
  fill(255);
  rect(10,20,620,580);
  fill(255);
  rect(30,20,20,580);
  rect(590,20,20,580);
  drawline();
  colorrect();
  activerect();
  smallrect();
}

void drawline(){//画直线分割界面
  stroke(0); 
  line(10,20,630,20);
  line(10,40,630,40);
  line(10,580,630,580); 
  line(10,600,630,600);
  line(50,280,630,280);
  line(50,310,630,310);
  line(50,340,210,340);
  line(210,20,210,600);
  line(230,20,230,600);
  line(420,20,420,600);
  line(360,20,360,600);
  line(420,480,590,480);
  line(10,20,10,600);
  line(630,20,630,600);
}

void colorrect(){//添加带颜色的长方形到指定位置
  fill(255,0,0);
  rect(210,20,20,20);
  rect(50,40,160,240);
  rect(230,580,130,20);
  rect(360,580,60,20);
  rect(610,40,20,20);
  rect(10,230,20,210);
  fill(0,0,255);
  rect(10,580,20,20);
  rect(420,20,170,20);
  fill(255,255,0);
  rect(360,20,60,20);
  rect(360,40,60,260);
  rect(360,280,60,30);
  rect(210,580,20,20);
  rect(610,480,20,100);
  rect(420,480,170,100);
}

void activerect(){
  float m=millis()/200;
  fill(0,0,255);
  rect(30,260+220*sin(m),20,100);
  rect(590,260+220*sin(m),20,100);
}

void smallrect(){
  
  float t=millis()/200; 
   float x=310+270*sin(t),y=260+220*sin(t);
  fill(0);
  rect(x,y,20,20);
}
