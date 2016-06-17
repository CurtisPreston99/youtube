float[] sun=new float [3];
float[] mercury=new float[5];
float[] venus  =new float[5];
float[] earth  =new float[5];
float[] mars  =new float[5];
float[] jupiter  =new float[5];
float dismod=1500000;
float sizemod=1000;

int x = 1;
int y = 0;
float T;
void setup(){
//size(8000,8000,P2D);
fullScreen();
T=0;
plan();
}

void draw(){
//sun
background(255);
ellipse(sun[0], sun[1], sun[2], sun[2]);
ellipse(sun[0]+venus[x], sun[1]+venus[y], venus[4], venus[4]);
ellipse(sun[0]+earth[x], sun[1]+earth[y], earth[4], earth[4]);
ellipse(sun[0]+mars[x], sun[1]+mars[y], mars[4], mars[4]);
ellipse(sun[0]+mercury[x], sun[1]+mercury[y], mercury[4], mercury[4]);
ellipse(sun[0]+jupiter[x], sun[1]+jupiter[y], jupiter[4], jupiter[4]);

T++;
plan();
}

void plan(){
//sun
sun[x]=width/2;
sun[y]=height/2;

//sun[x]=10;
//sun[y]=10;
sun[2]=695700/sizemod;
//mercury

mercury[3]=(57910000/dismod);
mercury[2]=116;
mercury[4]=245/sizemod;
mercury[x]=mercury[3]*cos((T/mercury[2])*2);
mercury[y]=mercury[3]*sin((T/mercury[2])*2);

//venus
venus[3]=  (108200000/dismod);
venus[2]=225;
venus[4]=6052/sizemod;
venus[x]=venus[3]*cos((T/venus[2])*2);
venus[y]=venus[3]*sin((T/venus[2])*2);

//earth
earth[3]=  (149600000/dismod);
earth[2]=365;
earth[4]=6371/sizemod;
earth[x]=earth[3]*cos((T/earth[2])*2);
earth[y]=earth[3]*sin((T/earth[2])*2);


//mars
mars[3]=  (227900000/dismod);
mars[2]=686;
mars[4]=3390/sizemod;
mars[x]=mars[3]*cos((T/mars[2])*2);
mars[y]=mars[3]*sin((T/mars[2])*2);

//jupiter
jupiter[3]=  (778500000/dismod);
jupiter[2]=365*12;
jupiter[4]=69911/sizemod;
jupiter[x]=jupiter[3]*cos((T/jupiter[2])*2);
jupiter[y]=jupiter[3]*sin((T/jupiter[2])*2);
}