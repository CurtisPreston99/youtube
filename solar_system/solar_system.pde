int[] sun=new int [2];
float[] mercury=new float[5];
int x = 1;
int y = 0;
int time=1;
float T=time;
void setup(){
size(800,800,P2D);
//sun
sun[x]=width/2;
sun[y]=height/2;
//mercury

//mercury[0]=
mercury[3]=57910000/1000000;
mercury[2]=116;
mercury[4]=28.5;
mercury[x]=mercury[3]*cos(T);
mercury[y]=mercury[3]*sin(T);
}

void draw(){
//sun
background(255);
ellipse(sun[0], sun[1], 55, 55);

ellipse(sun[0]+mercury[x], sun[1]+mercury[y], mercury[4], mercury[4]);
//time+=;
T+=0.5;

}