import java.util.Collections;
import java.util.LinkedList;
import java.util.Random;

final static int AMT_OF_ELEMENTS = 400;
final static int SCREEN_WIDTH = 1000;
final static int SCREEN_HEIGHT = (SCREEN_WIDTH / 100) * 80;

LinkedList<Integer> toSearch;
ListDisplay display, display2, display3, display4;


public void setup() {
  windowResize(SCREEN_WIDTH, SCREEN_HEIGHT);
  toSearch = generateElements(AMT_OF_ELEMENTS);
  Collections.sort(toSearch);

  display  = new ListDisplay(50, 300, generateElements(AMT_OF_ELEMENTS));
  display2 = new ListDisplay(50, 700, generateElements(AMT_OF_ELEMENTS));
  display3 = new ListDisplay(SCREEN_WIDTH - 50 - (ListDisplay.SPACE_BETWEEN_LINES * AMT_OF_ELEMENTS), 300, generateElements(AMT_OF_ELEMENTS));
  display4 = new ListDisplay(SCREEN_WIDTH - 50 - (ListDisplay.SPACE_BETWEEN_LINES * AMT_OF_ELEMENTS), 700, generateElements(AMT_OF_ELEMENTS));
  
  print(toSearch);
  frameRate(0.5f);
}

public void draw() {
  background(0);
  display.doDraw();
  display2.doDraw();
  display3.doDraw();
  display4.doDraw();
  
  //Collections.shuffle(toSearch);
}

LinkedList<Integer> generateElements(int amtOfElements) {
  LinkedList<Integer> generated = new LinkedList<>();
  
  for (int i = 0; i < amtOfElements; i++) {
    generated.add(i);
  }
  
  Collections.shuffle(generated);
  return generated;
}
