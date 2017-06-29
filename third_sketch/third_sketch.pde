// set window size, an INITIALIZATION CONDITION
void setup() {
  size(1280, 740);
  background(50);
}

void draw() {
  // a rectangle
  fill(150);
  stroke(255);
  rectMode(CENTER);
  rect(mouseX, height-mouseY, 180, 100, 50);
}

void mousePressed() {
  // only happens once in the moment of the event-- when the mouse is pressed
  background(50);
}

void keyPressed() {
  background(0, 255, 0);
}