int n=100;
float[] gra=new float[n];


void setup(){
  size(800,800,P2D);
}

void draw(){
  graph();
  dline();
}


void graph(){
  int i=0;
  while(i<n){
    gra[i]=sin(i)*10+100;
    i++;
  }
}

void dline(){
  int i=0;
  while(i<(n-1)){
    line(i*8,gra[i],(i+1)*8,gra[i+1]);
    i++;
  }
}