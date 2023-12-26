import java.util.Queue;
import java.util.LinkedList;
import java.util.Map;

public class SearchBase {
  
  LinkedList<Node> toVisit;
  LinkedList<Node> visited;
  LinkedList<Node> pathTaken;
  Map<Node, Node> previousNodes;
  
  Graph graph;
  
  public SearchBase() {
    toVisit = new LinkedList<>();
    visited = new LinkedList<>();
    pathTaken = new LinkedList<>();
    previousNodes = new HashMap<>();
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
  
  void outputPathTaken(String targetValue) {
    Node endNode = graph.getForValue(targetValue);

    endNode.state = NodeState.FOUND;
    while (endNode != null) {  // Traverse the nodes back from the target up to the end, to reproduce the shortest path between them
      if (!pathTaken.contains(endNode))
      {
        pathTaken.add(endNode);
        endNode.state = NodeState.PATH_TAKEN;
      }
      endNode = previousNodes.get(endNode);
    }
    
    graph.getForValue(targetValue).state = NodeState.FOUND;
    print("Path taken: " + pathTaken.toString());
    print(" | Amount of steps: " + (pathTaken.size() - 1));
    print("\n\n");
  }
  
}
