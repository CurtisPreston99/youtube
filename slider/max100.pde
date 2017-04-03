import controlP5.*;

ControlP5 cp5;

int slider = 100;
int one=100;
int two=0;
int three=0;

void setup(){
  size(800,800);
  cp5 = new ControlP5(this);

  cp5.addSlider("one").setPosition(400,400).setRange(0,100);
  
  cp5.addSlider("two").setPosition(500,400).setRange(0,100);
  
  cp5.addSlider("three").setPosition(600,400).setRange(0,100);
}

void draw(){
  background(255);
  fill(0);
  text(one,100,100);
  text(two,200,100);
  text(three,300,100);
  up100();
}


void up100(){
while(one+two+three>100){
  if(one>two && one>three){
    two=two-1;
    three=three-1;
  }
  if(two>one&&two>three){
    one=one-1;
    three=three-1;
  }
  if(three>one&&three>two){
  one=one-1;
  two=two-1;
  }
}
if(one<0){one=0;}
if(two<0){two=0;}
if(three<0){three=0;}
cp5.getController("one").setValue(one);
cp5.getController("two").setValue(two);
cp5.getController("three").setValue(three);
}
