int cols, rows;
int scale = 20;
int width = 600;
int height = 600;
float flying = 0;
float[][] terrain;

void setup() {
  size(600, 600, P3D);
  cols = width / scale;
  rows = height / scale;
  terrain = new float[cols][rows];
} 

void draw() {
  
  flying -= 0.01;
  
  float yoff = flying;
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff += 0.2;
    }
    yoff += 0.1;
  }
  
  background(0);
  stroke(255);
  noFill();

  translate(width/2, height/2 + 50);
  rotateX(PI/3);
  frameRate(1);
  translate(-width/2, -height/2);
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x*scale, y*scale, terrain[x][y]); // rect(x * scale, y * scale, scale, scale);
      vertex(x*scale, (y+1)*scale, terrain[x][y+1]);
    }
    endShape();
  }
}