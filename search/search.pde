import java.util.Collections;
import java.util.LinkedList;
import java.util.Random;

final static int AMT_OF_ELEMENTS = 300;
final static int SCREEN_WIDTH = 1000;
final static int SCREEN_HEIGHT = (SCREEN_WIDTH / 100) * 80;

LinkedList<Integer> toSearch;
ListDisplay display;


public void setup() {
  windowResize(SCREEN_WIDTH, SCREEN_HEIGHT);
  toSearch = generateElements(AMT_OF_ELEMENTS);
  
  display = new ListDisplay(toSearch);
  
  print(toSearch);
  frameRate(0.5f);
}

public void draw() {
  background(0);
  display.doDraw();
  
  Collections.shuffle(toSearch);
}

LinkedList<Integer> generateElements(int amtOfElements) {
  LinkedList<Integer> generated = new LinkedList<>();
  
  for (int i = 0; i < amtOfElements; i++) {
    generated.add(i);
  }
  
  Collections.shuffle(generated);
  return generated;
}
