import java.util.Queue;
import java.util.LinkedList;

public class SearchBase {
  
  Queue<Node> toVisit;
  LinkedList<Node> visited;
  
  Graph graph;
  
  public SearchBase() {
    toVisit = new LinkedList<>();  // LinkedList implements the Queue interface
    visited = new LinkedList<>();
  }
  
  public void step() {
    // Mark the previously visited nodes as visited for display purposes
    for (Node node : visited) {
      node.state = NodeState.VISITED;
    }
  }
  
  public void doDraw() {
    
  }
  
  public void setStartValue(String startValue) {
    toVisit.add(graph.getForValue(startValue)); 
  }
}
