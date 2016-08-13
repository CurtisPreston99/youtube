void setup (){
  size(800,800);
}

void draw(){
  background(255);
  squ(233,305,127,299,228,367,327,218); 
}

void squ(int x1,int y1,int x2,int y2,int x3,int y3, int x4, int y4){
  line(x1,y1,x2,y2);
  line(x2,y2,x3,y3);
  line(x3,y3,x4,y4);
  line(x4,y4,x1,y1);
}