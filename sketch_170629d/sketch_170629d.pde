float circleX;
float circleY;

void setup() {
  size(640, 360);
  circleX = width/2;
}

void draw() { 
  background(50);

  fill(255);
  ellipse(circleX, 180, 24, 24);

  circleX = circleX + random(-2, 2); // creates wiggle effect because moving randomly
}