import java.util.List;


public class ListDisplay {
  
   List<Integer> numbers;
   int xStart = 50;
   int yStart = SCREEN_HEIGHT - 100;
   
   int spaceBetweenLines = 2;
   
   public ListDisplay(List<Integer> numbers) {
     this.numbers = numbers;
   }
  
  
   public void doDraw() {
     drawLines();
     drawFooterLine();
     
   }
   
   private void drawLines() {
     for (int i = 0; i < this.numbers.size(); i++) {

       int xPos = xStart + (i * spaceBetweenLines);
       int yPos = yStart;
       
       int lineLength = this.numbers.get(i);
       int oldRange = AMT_OF_ELEMENTS;
       int newRange = (yStart);
       lineLength = ((lineLength * newRange) / oldRange); 
       strokeWeight(1);
       stroke(255);
       line(xPos,  yPos,
         xPos, yPos - lineLength);  // we draw from down to up, so we subtract the value here instead of adding it
     }
   }
   
   
   private void drawFooterLine(){
     strokeWeight(5);
     stroke(255, 255, 0);
     line(xStart, yStart, (xStart + AMT_OF_ELEMENTS * spaceBetweenLines), yStart);
   }
}
