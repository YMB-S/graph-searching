import java.util.List;


public class ListDisplay {
  
   List<Integer> numbers;
   int xStart = 50;
   int yStart = SCREEN_HEIGHT - 100;
   int edgeMargin = 50;
   final static int LINE_DISPLAY_HEIGHT = 250;
   
   final static int SPACE_BETWEEN_LINES = 1;
   
   public ListDisplay(int x, int y, List<Integer> numbers) {
     this.xStart = x;
     this.yStart = y;
     this.numbers = numbers;
   }
  
  
   public void doDraw() {
     drawLines();
     drawBoundary();
   }
   
   private void drawLines() {
     for (int i = 0; i < this.numbers.size(); i++) {

       int xPos = xStart + (i * SPACE_BETWEEN_LINES);
       int yPos = yStart;
       
       int lineLength = this.numbers.get(i);
       int oldRange = AMT_OF_ELEMENTS;
       int newRange = (LINE_DISPLAY_HEIGHT);
       lineLength = ((lineLength * newRange) / (oldRange + edgeMargin)); 
       strokeWeight(1);
       stroke(255);
       line(xPos,  yPos,
         xPos, yPos - lineLength);  // we draw from down to up, so we subtract the value here instead of adding it
     }
   }
   
   
   private void drawBoundary(){
     strokeWeight(2);
     stroke(255);
     // Bottom
     line(xStart, yStart, (xStart + AMT_OF_ELEMENTS * SPACE_BETWEEN_LINES), yStart);
     // Top
     line(xStart, yStart - LINE_DISPLAY_HEIGHT, (xStart + AMT_OF_ELEMENTS * SPACE_BETWEEN_LINES), yStart - LINE_DISPLAY_HEIGHT);
     // Left
     line(xStart, yStart, xStart, yStart - LINE_DISPLAY_HEIGHT);
     // Right
     line((xStart + AMT_OF_ELEMENTS * SPACE_BETWEEN_LINES), yStart, (xStart + AMT_OF_ELEMENTS * SPACE_BETWEEN_LINES), yStart - LINE_DISPLAY_HEIGHT);
     
   }
}
