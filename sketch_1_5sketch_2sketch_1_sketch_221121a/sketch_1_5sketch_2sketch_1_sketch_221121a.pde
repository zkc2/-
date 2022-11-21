void setup(){
size(448, 451);
noStroke:
fill (35, 35,31);
rect(0,0,123,height);
fill(245,94,51);
rect(123,0,width-123,height);
fill(235,222,213);
for(int i=0;i<7;i++)
rect(223,30,width-123,height);//1111111111
fill(245,94,51);
rect(250,210,width-123,height);//2222222222
fill(235,222,213);
for(int i=0;i<8;i++)
rect(180,130+i*40,70,20);
fill(41,37,35);
for(int i=0;i<8;i++)
rect(250,210+i*40,70,20);
}
