import controlP5.*;

ControlP5 cp5;

String text;

void setup() {
  size(700, 700);

  cp5 = new ControlP5(this);

  cp5.addTextfield("a").setPosition(400, 400).setSize(100, 50).setAutoClear(false);

  cp5.addBang("Submit").setPosition(500, 400).setSize(100, 50);
}

void draw() {
  background(150);
}

void Submit() {
  println();
  print("this is the text you typed :");
  text=cp5.get(Textfield.class, "a").getText();

  print(text);
}