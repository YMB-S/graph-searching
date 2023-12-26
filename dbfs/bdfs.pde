Bfs bfs;
Dfs dfs;

String startValue = "A";
String targetValue = "M";

public void setup() {
  size(500, 800); // For some reason Processing can't deal with variables for the screen size, it needs magic numbers... 
  background(255);
  frameRate(1f);
  
  bfs = new Bfs();
  bfs.setStartValue(startValue);

  dfs = new Dfs();
  dfs.setStartValue(startValue);
}

public void draw() {
  background(100);
  bfs.doDraw(targetValue);
  dfs.doDraw(targetValue);
}

void keyPressed() {
  if (key == 'r') { setup(); }
  if (key == 'p') { if (looping) noLoop(); else loop(); }
}
