float circleX;
float circleY;

void setup() {
  size(640, 360);
  circleX = width/2;
  background(50);
}

void draw() { 
  circleX = random(width);
  circleY = random(height);
  

  fill(255);
  ellipse(circleX, circleY, 24, 24);
  // circleX = circleX + random(-2, 2); // creates wiggle effect because moving randomly
}