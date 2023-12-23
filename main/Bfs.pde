public class Bfs extends SearchBase {
  
  public Bfs() {
    super();
    super.graph = new Graph(-150, -50);
  }

  public void step(String targetValue) {
    super.step();
    
    // Get the next node from the queue
    Node currentNode = toVisit.remove();
    currentNode.state = NodeState.CURRENT;
    
    if (currentNode.value == targetValue) {
      // We no longer have to visit any nodes - clear the queue and exit
      toVisit.clear();
      outputPathTaken(targetValue);
      return;
    }
    
    // Add the current node's adjacencies to the list of nodes to visit
    for (Node adj : currentNode.adjacencies) {
      if (!visited.contains(adj)) {
        toVisit.add(adj);
        previousNodes.put(adj, currentNode);
      }
    }
    
    // Make sure we don't visit this node again ad infinitum
    visited.add(currentNode);
  }
  
  void outputPathTaken(String targetValue) {
    print("BFS:");
    super.outputPathTaken(targetValue);
  }
  
  public void doDraw(String targetValue) {
    // Perform one step of BFS, as long as we're not done searching
    if (toVisit.size() > 0) {    
      step(targetValue);
    }
    else {
      //print("Found target: " + targetValue);
      
      
    }
    
    // Draw the updated graph
    super.graph.doDraw();
  }
}
