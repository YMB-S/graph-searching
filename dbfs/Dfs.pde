//import java.util.Collections; 

public class Dfs extends SearchBase {
  
  public Dfs() {
    super();
    super.graph = new Graph(-150, 350);
  }
  
  public void step(String targetValue) {
    super.step();

    // Get the next node from the queue
    int index = toVisit.size() - 1;
    Node currentNode = toVisit.remove(index);
    currentNode.state = NodeState.CURRENT;
    
    if (currentNode.value == targetValue) {
      // We no longer have to visit any nodes - clear the queue and exit
      toVisit.clear();
      outputPathTaken(targetValue);
      return;
    }
    
    for (Node adj : currentNode.adjacencies) {
      if (!visited.contains(adj)) {
        toVisit.add(adj);        
        previousNodes.put(adj, currentNode);
      }
    }
    
    visited.add(currentNode);
  }
  
  void outputPathTaken(String targetValue) {
    print("DFS:");
    super.outputPathTaken(targetValue);
  }
  
  public void doDraw(String targetValue) {
    // Perform one step of DFS, as long as we're not done searching
    if (toVisit.size() > 0) {    
      step(targetValue);
    }
    else {
      //print("Found target: " + targetValue);
      //super.graph.getForValue(targetValue).state = NodeState.FOUND;
    }
    
    // Draw the updated graph
    super.graph.doDraw();
  }
  
  
}
