PImage obra;

void setup() {
  size(800, 400);

  obra = loadImage("obra.jpg"); 
}

void draw() {
  background(255);

  
  image(obra, 0, 0, 400, 400);

 
  stroke(0);
  strokeWeight(4);

 
  for (int i = 0; i < 20; i++) {
    int x = 410 + i * 28;
    line(x, 400, x + 250, 0);
  }
}
