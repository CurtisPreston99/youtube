import controlP5.*;

ControlP5 cp5;

int slider = 100;

void setup(){
  size(800,800);
  cp5 = new ControlP5(this);
  
  cp5.addSlider("slider").setPosition(400,400).setRange(0,255);
}

void draw(){
  background(slider);
}