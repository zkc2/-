void setup(){
  size(580,416);
  
  for(int i=0;i<40;i++)
  for(int j=0; j<40; j++)
  {
  fill(random(255),random(255),random(255));
    pushMatrix();
  translate(i*35,j*35);


  
  beginShape();
  vertex(0,0+15);//1
  vertex(35,0-15);
  vertex(35,35-15);
  vertex(0,35+15);
  endShape(CLOSE);
  
  popMatrix();
}
}
void draw(){
}
  
