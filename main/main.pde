Bfs bfs;
Dfs dfs;

String startValue = "A";
String targetValue = "F";

public void setup() {
  size(500, 1000); // For some reason Processing can't deal with variables for the screen size, it needs magic numbers... 
  background(255);
  frameRate(2f);
  
  bfs = new Bfs();
  bfs.setStartValue(startValue);

}

public void draw() {
  background(100);
  bfs.doDraw(targetValue);
}
