float[] sun=new float [3];
float[] mercury=new float[5];
float[] venus  =new float[5];
float[] earth  =new float[5];
float[] mars  =new float[5];
float[] jupiter  =new float[5];
float[] saturn  =new float[5];
float[] uranus  =new float[5];
float[] neptune  =new float[5];

int[] mod = new int[5];
boolean[] keys= new boolean[26];

float dismod=6000000;
float sizemod=150000;
boolean centered;

int x = 1;
int y = 0;
float T;


void setup(){
mod[x]=0;
mod[y]=0;
size(1800,900,P2D);
//surface.setResizable(false);
centered = false;
//fullScreen();
T=0;
plan();
sun[x]=width/2;
sun[y]=height/2;
mod[2]=5;
}

void draw(){
//sun
background(255);
ellipse(sun[x], sun[y], sun[2], sun[2]);
ellipse(sun[x]+venus[x], sun[y]+venus[y], venus[4], venus[4]);
ellipse(sun[x]+earth[x], sun[y]+earth[y], earth[4], earth[4]);
ellipse(sun[x]+mars[x], sun[y]+mars[y], mars[4], mars[4]);
ellipse(sun[x]+mercury[x], sun[y]+mercury[y], mercury[4], mercury[4]);
ellipse(sun[x]+jupiter[x], sun[y]+jupiter[y], jupiter[4], jupiter[4]);
ellipse(sun[x]+saturn[x], sun[y]+saturn[y], saturn[4], saturn[4]);
ellipse(sun[x]+uranus[x], sun[y]+uranus[y], uranus[4], uranus[4]);
ellipse(sun[x]+neptune[x], sun[y]+neptune[y], neptune[4], neptune[4]);



T++;
plan();
mod();
}


void centerWindow()
{
  if(frame != null && centered == false)
  {
    frame.setLocation(displayWidth/2-width/2,displayHeight/2-height/2);
    centered = true;
  }
}

void plan(){
//sun
sun[x]=(width/2)+mod[x];
sun[y]=(height/2)+mod[y];

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

//saturn
saturn[3]=  (1429000000 /dismod);
saturn[2]=365*29;
saturn[4]= 58232/sizemod;
saturn[x]=saturn[3]*cos((T/saturn[2])*2);
saturn[y]=saturn[3]*sin((T/saturn[2])*2);


//uranus
uranus[3]=  (2877000000.0 /dismod);
uranus[2]=365*84;
uranus[4]=25362/sizemod;
uranus[x]=uranus[3]*cos((T/uranus[2])*2);
uranus[y]=uranus[3]*sin((T/uranus[2])*2);


//neptune
neptune[3]=  (4498000000.0 /dismod);
neptune[2]=365*84;
neptune[4]=24622/sizemod;
neptune[x]=neptune[3]*cos((T/neptune[2])*2);
neptune[y]=neptune[3]*sin((T/neptune[2])*2);


}



void keyPressed()
{
  if(key=='a')
    keys[0]=true;
  if(key=='w')
    keys[22]=true;
  if(key=='s')
    keys[18]=true;
  if(key=='d')
    keys[2]=true;
  if(key=='z'){
    keys[25]=true;
  }
  if(key=='x'){
    keys[23]=true;
  }
}

void keyReleased()
{
  if(key=='a')
    keys[0]=false;
  if(key=='w')
    keys[22]=false;
  if(key=='s')
    keys[18]=false;
  if(key=='d')
    keys[2]=false;
  if(key=='z'){
    keys[25]=false;
  }
  if(key=='x'){
    keys[23]=false;
  }
} 

void mod(){
  
  if(keys[0]){
    mod[x]-=mod[2];
  }
  if(keys[22]){
    mod[y]-=mod[2];
  }
  if( keys[18]){
    mod[y]+=mod[2];
  }
  if(keys[2]){
    mod[x]+=mod[2];
  }
  if(keys[25]){
    mod[3]=mod[3]-100000;
    mod[4]=mod[4]-1000;
    if(dismod<0){
      dismod=1;
    }
    if(sizemod<0){
      sizemod=1;
    }
  }
  if(keys[23]){
    mod[3]=mod[3]+100000;
    mod[4]=mod[4]+1000;
  }
  dismod=sizemod*40;
  sizemod=150000+mod[4];
}