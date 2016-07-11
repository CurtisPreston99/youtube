PImage photo;

void setup() {
  size(100, 100);
  photo = loadImage("player.png");
}

void draw() {
  image(photo, 0, 0);
}